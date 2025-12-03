@interface RMStoreXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RMStoreXPCListenerDelegate)initWithPersistentContainer:(id)container allowedToRun:(BOOL)run;
@end

@implementation RMStoreXPCListenerDelegate

- (RMStoreXPCListenerDelegate)initWithPersistentContainer:(id)container allowedToRun:(BOOL)run
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = RMStoreXPCListenerDelegate;
  v8 = [(RMStoreXPCListenerDelegate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_persistentContainer, container);
    v9->_allowedToRun = run;
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[RMLog StoreXPCListenerDelegate];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Evaluating new connection %{public}@", &v15, 0xCu);
  }

  allowedToRun = [(RMStoreXPCListenerDelegate *)self allowedToRun];
  v8 = +[RMLog StoreXPCListenerDelegate];
  v9 = v8;
  if (allowedToRun)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepted new connection %{public}@ ", &v15, 0xCu);
    }

    v10 = +[RMStoreXPCProxy newInterface];
    [connectionCopy setExportedInterface:v10];

    v11 = [RMStoreXPCProxyHandler alloc];
    persistentContainer = [(RMStoreXPCListenerDelegate *)self persistentContainer];
    v13 = [(RMStoreXPCProxyHandler *)v11 initWithXPCConnection:connectionCopy persistentContainer:persistentContainer];
    [connectionCopy setExportedObject:v13];

    [connectionCopy resume];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10008B97C();
    }
  }

  return allowedToRun;
}

@end