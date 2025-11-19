@interface STConcretePrimitiveRemoteViewService
- (STConcretePrimitiveRemoteViewService)initWithServiceDescription:(id)a3 listenerEndpoint:(id)a4;
- (void)activate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation STConcretePrimitiveRemoteViewService

- (STConcretePrimitiveRemoteViewService)initWithServiceDescription:(id)a3 listenerEndpoint:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = STConcretePrimitiveRemoteViewService;
  v7 = a3;
  v8 = [(STConcretePrimitiveRemoteViewService *)&v13 init];
  v9 = [v7 copy];

  serviceDescription = v8->_serviceDescription;
  v8->_serviceDescription = v9;

  listenerEndpoint = v8->_listenerEndpoint;
  v8->_listenerEndpoint = v6;

  return v8;
}

- (void)activate
{
  v13 = [(STConcretePrimitiveRemoteViewService *)self serviceDescription];
  v3 = [SBSRemoteAlertDefinition alloc];
  v4 = [v13 serviceName];
  v5 = [v13 viewControllerClassName];
  v6 = [v3 initWithServiceName:v4 viewControllerClassName:v5];

  v7 = objc_opt_new();
  v8 = [v13 configurationContextUserInfo];
  [v7 setUserInfo:v8];

  v9 = [(STConcretePrimitiveRemoteViewService *)self listenerEndpoint];
  v10 = [v9 _endpoint];
  [v7 setXpcEndpoint:v10];

  v11 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  v12 = objc_opt_new();
  [v11 registerObserver:self];
  [v11 activateWithContext:v12];
  [(STConcretePrimitiveRemoteViewService *)self setRemoteAlertHandle:v11];
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v3 = a3;
  v4 = +[STLog remoteViewService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did activate service: %{public}@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v3 = a3;
  v4 = +[STLog remoteViewService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did deactivate service: %{public}@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[STLog remoteViewService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100113044(v5, v6, v7);
  }
}

@end