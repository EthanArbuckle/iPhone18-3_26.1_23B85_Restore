@interface STConcretePrimitiveRemoteViewService
- (STConcretePrimitiveRemoteViewService)initWithServiceDescription:(id)description listenerEndpoint:(id)endpoint;
- (void)activate;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation STConcretePrimitiveRemoteViewService

- (STConcretePrimitiveRemoteViewService)initWithServiceDescription:(id)description listenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v13.receiver = self;
  v13.super_class = STConcretePrimitiveRemoteViewService;
  descriptionCopy = description;
  v8 = [(STConcretePrimitiveRemoteViewService *)&v13 init];
  v9 = [descriptionCopy copy];

  serviceDescription = v8->_serviceDescription;
  v8->_serviceDescription = v9;

  listenerEndpoint = v8->_listenerEndpoint;
  v8->_listenerEndpoint = endpointCopy;

  return v8;
}

- (void)activate
{
  serviceDescription = [(STConcretePrimitiveRemoteViewService *)self serviceDescription];
  v3 = [SBSRemoteAlertDefinition alloc];
  serviceName = [serviceDescription serviceName];
  viewControllerClassName = [serviceDescription viewControllerClassName];
  v6 = [v3 initWithServiceName:serviceName viewControllerClassName:viewControllerClassName];

  v7 = objc_opt_new();
  configurationContextUserInfo = [serviceDescription configurationContextUserInfo];
  [v7 setUserInfo:configurationContextUserInfo];

  listenerEndpoint = [(STConcretePrimitiveRemoteViewService *)self listenerEndpoint];
  _endpoint = [listenerEndpoint _endpoint];
  [v7 setXpcEndpoint:_endpoint];

  v11 = [SBSRemoteAlertHandle newHandleWithDefinition:v6 configurationContext:v7];
  v12 = objc_opt_new();
  [v11 registerObserver:self];
  [v11 activateWithContext:v12];
  [(STConcretePrimitiveRemoteViewService *)self setRemoteAlertHandle:v11];
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = +[STLog remoteViewService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = activateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did activate service: %{public}@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  v4 = +[STLog remoteViewService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = deactivateCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Did deactivate service: %{public}@", &v5, 0xCu);
  }
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  v7 = +[STLog remoteViewService];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100113044(handleCopy, errorCopy, v7);
  }
}

@end