@interface STConcreteXPCServiceProvider
+ (id)privateAgentServiceDescription;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STConcreteXPCServiceProvider)init;
- (id)_supportedMachServices;
- (id)provideAskService;
- (id)provideCommunicationService;
- (id)provideDowntimeService;
- (id)providePasscodeAuthenticationServiceWithClientListenerEndpoint:(id)endpoint;
- (id)providePasscodePromptServiceWithClientListenerEndpoint:(id)endpoint;
- (id)providePrivateAgentService;
- (id)providePublicAgentService;
- (id)provideReactorToolService;
- (id)provideSetupService;
- (void)resume;
- (void)suspend;
@end

@implementation STConcreteXPCServiceProvider

- (STConcreteXPCServiceProvider)init
{
  v24.receiver = self;
  v24.super_class = STConcreteXPCServiceProvider;
  v2 = [(STConcreteXPCServiceProvider *)&v24 init];
  v3 = objc_opt_new();
  machXpcListenersByServiceName = v2->_machXpcListenersByServiceName;
  v2->_machXpcListenersByServiceName = v3;

  v5 = objc_opt_new();
  anonymousXpcListenersByServiceName = v2->_anonymousXpcListenersByServiceName;
  v2->_anonymousXpcListenersByServiceName = v5;

  v7 = objc_opt_new();
  serviceDescriptionsByServiceName = v2->_serviceDescriptionsByServiceName;
  v2->_serviceDescriptionsByServiceName = v7;

  v9 = objc_opt_new();
  providedServicesByServiceName = v2->_providedServicesByServiceName;
  v2->_providedServicesByServiceName = v9;

  _supportedMachServices = [(STConcreteXPCServiceProvider *)v2 _supportedMachServices];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [_supportedMachServices countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(_supportedMachServices);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        serviceName = [v16 serviceName];
        [(NSMutableDictionary *)v2->_serviceDescriptionsByServiceName setObject:v16 forKeyedSubscript:serviceName];
        v18 = [[NSXPCListener alloc] initWithMachServiceName:serviceName];
        [v18 setDelegate:v2];
        [(NSMutableDictionary *)v2->_machXpcListenersByServiceName setObject:v18 forKeyedSubscript:serviceName];
      }

      v13 = [_supportedMachServices countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

  return v2;
}

- (id)_supportedMachServices
{
  v2 = objc_opt_new();
  v3 = +[STConcreteXPCServiceProvider askServiceDescription];
  v4 = +[STConcreteXPCServiceProvider setupServiceDescription];
  v5 = +[STConcreteXPCServiceProvider communicationServiceDescription];
  v6 = +[STConcreteXPCServiceProvider privateAgentServiceDescription];
  v7 = +[STConcreteXPCServiceProvider publicAgentServiceDescription];
  v8 = +[STConcreteXPCServiceProvider reactorToolServiceDescription];
  v9 = +[STConcreteXPCServiceProvider downtimeServiceDescription];
  [v2 addObject:v3];
  [v2 addObject:v4];
  [v2 addObject:v5];
  [v2 addObject:v6];
  [v2 addObject:v7];
  [v2 addObject:v8];
  [v2 addObject:v9];
  v10 = [v2 copy];

  return v10;
}

- (void)resume
{
  machXpcListenersByServiceName = [(STConcreteXPCServiceProvider *)self machXpcListenersByServiceName];
  [machXpcListenersByServiceName enumerateKeysAndObjectsUsingBlock:&stru_1001A3510];
}

- (void)suspend
{
  machXpcListenersByServiceName = [(STConcreteXPCServiceProvider *)self machXpcListenersByServiceName];
  [machXpcListenersByServiceName enumerateKeysAndObjectsUsingBlock:&stru_1001A3530];
}

+ (id)privateAgentServiceDescription
{
  v2 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STPrivateAgentServiceInterface];
  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = [v3 initWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:"deleteWebHistoryForURLs:webApplication:replyHandler:" argumentIndex:0 ofReply:0];
  [v2 setClasses:v5 forSelector:"deleteWebHistoryForURLs:webApplication:profileIdentifier:replyHandler:" argumentIndex:0 ofReply:0];
  v6 = [NSSet alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v6 initWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:"saveExpressIntroductionSettingsDefaults:completionHandler:" argumentIndex:0 ofReply:0];
  v11 = [STXPCServiceDescription machDescriptionWithServiceName:STMachServiceNameScreenTimePrivate serviceEntitlement:STEntitlementScreenTimePrivate exportedInterface:v2];

  return v11;
}

- (id)provideAskService
{
  v3 = +[STConcreteXPCServiceProvider askServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)provideSetupService
{
  v3 = +[STConcreteXPCServiceProvider setupServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)providePasscodePromptServiceWithClientListenerEndpoint:(id)endpoint
{
  v8 = STRemoteAlertConfigurationContextKeyPasscodeMode;
  v9 = &off_1001B2128;
  endpointCopy = endpoint;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [STRemoteViewServiceDescription sharedDescriptionWithServiceName:@"com.apple.ScreenTimeUnlock" viewControllerClassName:@"STRemoteServiceViewController" configurationContextUserInfo:v4];

  v6 = [[STConcretePrimitiveRemoteViewService alloc] initWithServiceDescription:v5 listenerEndpoint:endpointCopy];

  return v6;
}

- (id)provideCommunicationService
{
  v3 = +[STConcreteXPCServiceProvider communicationServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)providePasscodeAuthenticationServiceWithClientListenerEndpoint:(id)endpoint
{
  v8 = STRemoteAlertConfigurationContextKeyPasscodeMode;
  v9 = &off_1001B2140;
  endpointCopy = endpoint;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [STRemoteViewServiceDescription sharedDescriptionWithServiceName:@"com.apple.ScreenTimeUnlock" viewControllerClassName:@"STRemoteServiceViewController" configurationContextUserInfo:v4];

  v6 = [[STConcretePrimitiveRemoteViewService alloc] initWithServiceDescription:v5 listenerEndpoint:endpointCopy];

  return v6;
}

- (id)providePrivateAgentService
{
  v3 = +[STConcreteXPCServiceProvider privateAgentServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)providePublicAgentService
{
  v3 = +[STConcreteXPCServiceProvider publicAgentServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)provideReactorToolService
{
  v3 = +[STConcreteXPCServiceProvider reactorToolServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (id)provideDowntimeService
{
  v3 = +[STConcreteXPCServiceProvider downtimeServiceDescription];
  v4 = objc_opt_new();
  providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  serviceName = [v3 serviceName];
  [providedServicesByServiceName setObject:v4 forKeyedSubscript:serviceName];

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  serviceName = [connectionCopy serviceName];
  if (!serviceName)
  {
    v9 = +[STLog xpcServiceProvider];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = connectionCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Looking for service description for anonymous connection request: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = sub_10001F4F8;
    v31 = sub_10001F508;
    v32 = 0;
    anonymousXpcListenersByServiceName = [(STConcreteXPCServiceProvider *)self anonymousXpcListenersByServiceName];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10001F510;
    v25 = &unk_1001A3558;
    v26 = listenerCopy;
    p_buf = &buf;
    [anonymousXpcListenersByServiceName enumerateKeysAndObjectsUsingBlock:&v22];

    serviceName = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  v11 = [STLog xpcServiceProvider:v22];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = serviceName;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New connection request on service: %{public}@", &buf, 0xCu);
  }

  serviceDescriptionsByServiceName = [(STConcreteXPCServiceProvider *)self serviceDescriptionsByServiceName];
  v13 = [serviceDescriptionsByServiceName objectForKeyedSubscript:serviceName];

  if (v13)
  {
    providedServicesByServiceName = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
    v15 = [providedServicesByServiceName objectForKeyedSubscript:serviceName];

    if (!v15)
    {
      serviceEntitlement = +[STLog xpcServiceProvider];
      if (os_log_type_enabled(serviceEntitlement, OS_LOG_TYPE_ERROR))
      {
        sub_100113144(serviceEntitlement);
      }

      v19 = 0;
      goto LABEL_26;
    }

    serviceEntitlement = [v13 serviceEntitlement];
    if (serviceEntitlement)
    {
      v17 = [connectionCopy valueForEntitlement:serviceEntitlement];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v17 BOOLValue]& 1) == 0)
      {
        v20 = +[STLog xpcServiceProvider];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1001130CC(serviceEntitlement, v20);
        }

        v19 = 0;
        goto LABEL_25;
      }
    }

    exportedInterface = [v13 exportedInterface];
    [connectionCopy setExportedInterface:exportedInterface];

    [connectionCopy setExportedObject:v15];
    [connectionCopy resume];
    v17 = +[STLog xpcServiceProvider];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Accepted connection", &buf, 2u);
    }

    v19 = 1;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v15 = +[STLog xpcServiceProvider];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_100113188(v15);
  }

  v19 = 0;
LABEL_27:

  return v19;
}

@end