@interface RMStoreXPCListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (RMStoreXPCListenerDelegate)initWithPersistentContainer:(id)a3 allowedToRun:(BOOL)a4;
@end

@implementation RMStoreXPCListenerDelegate

- (RMStoreXPCListenerDelegate)initWithPersistentContainer:(id)a3 allowedToRun:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RMStoreXPCListenerDelegate;
  v8 = [(RMStoreXPCListenerDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_persistentContainer, a3);
    v9->_allowedToRun = a4;
  }

  return v9;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[RMLog StoreXPCListenerDelegate];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Evaluating new connection %{public}@", &v15, 0xCu);
  }

  v7 = [(RMStoreXPCListenerDelegate *)self allowedToRun];
  v8 = +[RMLog StoreXPCListenerDelegate];
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepted new connection %{public}@ ", &v15, 0xCu);
    }

    v10 = +[RMStoreXPCProxy newInterface];
    [v5 setExportedInterface:v10];

    v11 = [RMStoreXPCProxyHandler alloc];
    v12 = [(RMStoreXPCListenerDelegate *)self persistentContainer];
    v13 = [(RMStoreXPCProxyHandler *)v11 initWithXPCConnection:v5 persistentContainer:v12];
    [v5 setExportedObject:v13];

    [v5 resume];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008B97C();
    }
  }

  return v7;
}

@end