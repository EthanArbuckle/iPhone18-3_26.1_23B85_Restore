@interface RMXPCListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (RMXPCListenerDelegate)initWithPersistentContainer:(id)container allowedToRun:(BOOL)run;
@end

@implementation RMXPCListenerDelegate

- (RMXPCListenerDelegate)initWithPersistentContainer:(id)container allowedToRun:(BOOL)run
{
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = RMXPCListenerDelegate;
  v8 = [(RMXPCListenerDelegate *)&v11 init];
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
  v6 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = connectionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Evaluating new connection %{public}@", &v15, 0xCu);
  }

  allowedToRun = [(RMXPCListenerDelegate *)self allowedToRun];
  v8 = +[RMLog XPCListenerDelegate];
  v9 = v8;
  if (allowedToRun)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543362;
      v16 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Accepted new connection %{public}@ ", &v15, 0xCu);
    }

    v10 = +[RMXPCProxy newInterface];
    [connectionCopy setExportedInterface:v10];

    v11 = [RMXPCProxyHandler alloc];
    persistentContainer = [(RMXPCListenerDelegate *)self persistentContainer];
    v13 = [(RMXPCProxyHandler *)v11 initWithXPCConnection:connectionCopy persistentContainer:persistentContainer];
    [connectionCopy setExportedObject:v13];

    [connectionCopy resume];
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100093248();
    }
  }

  return allowedToRun;
}

@end