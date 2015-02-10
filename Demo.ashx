<%@ WebHandler Language="C#" Class="Demo" %>

using System;
using System.Web;

public class Demo : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        System.Threading.Thread.Sleep(5000);
        context.Response.Write("Hello World");
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}