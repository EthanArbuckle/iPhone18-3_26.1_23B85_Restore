@interface APWebProcessPlugIn
- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4;
- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4;
- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4;
@end

@implementation APWebProcessPlugIn

- (void)webProcessPlugIn:(id)a3 initializeWithObject:(id)a4
{
  v5 = sub_5A4C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:initializeWithObject:", v7, 2u);
  }

  v6 = +[NSMapTable strongToStrongObjectsMapTable];
  [(APWebProcessPlugIn *)self setBrowserContextControllersToLoadDelegates:v6];
}

- (void)webProcessPlugIn:(id)a3 didCreateBrowserContextController:(id)a4
{
  v5 = a4;
  v6 = sub_5A4C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:didCreateBrowserContextController:", v15, 2u);
  }

  v7 = objc_alloc_init(APWebProcessPlugInLoadDelegate);
  v8 = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
  [v8 setObject:v7 forKey:v5];

  v9 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessProxyProtocol];
  v10 = [v5 _remoteObjectRegistry];
  [v10 registerExportedObject:v7 interface:v9];

  v11 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessDelegate];
  v12 = [v5 _remoteObjectRegistry];
  v13 = [v12 remoteObjectProxyWithInterface:v11];
  [(APWebProcessPlugInLoadDelegate *)v7 setWebProcessDelegate:v13];

  [v5 setLoadDelegate:v7];
  v14 = [(APWebProcessPlugInLoadDelegate *)v7 webProcessDelegate];
  [v14 webProcessPlugInDidCreateBrowserContextController];
}

- (void)webProcessPlugIn:(id)a3 willDestroyBrowserContextController:(id)a4
{
  v5 = a4;
  v6 = sub_5A4C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[APWebProcessPlugIn] webProcessPlugIn:willDestroyBrowserContextController:", v13, 2u);
  }

  v7 = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
  v8 = [v7 objectForKey:v5];

  if (v8)
  {
    v9 = [v8 webProcessDelegate];
    [v9 webProcessPlugInWillDestroyBrowserContextController];

    [v8 setWebProcessDelegate:0];
    v10 = [_WKRemoteObjectInterface remoteObjectInterfaceWithProtocol:&OBJC_PROTOCOL___APWebProcessProxyProtocol];
    v11 = [v5 _remoteObjectRegistry];
    [v11 unregisterExportedObject:v8 interface:v10];

    v12 = [(APWebProcessPlugIn *)self browserContextControllersToLoadDelegates];
    [v12 removeObjectForKey:v5];
  }

  else
  {
    v10 = sub_5A4C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_6F00(v10);
    }
  }
}

@end