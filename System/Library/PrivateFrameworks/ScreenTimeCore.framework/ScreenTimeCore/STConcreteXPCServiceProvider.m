@interface STConcreteXPCServiceProvider
+ (id)privateAgentServiceDescription;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STConcreteXPCServiceProvider)init;
- (id)_supportedMachServices;
- (id)provideAskService;
- (id)provideCommunicationService;
- (id)provideDowntimeService;
- (id)providePasscodeAuthenticationServiceWithClientListenerEndpoint:(id)a3;
- (id)providePasscodePromptServiceWithClientListenerEndpoint:(id)a3;
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

  v11 = [(STConcreteXPCServiceProvider *)v2 _supportedMachServices];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * i);
        v17 = [v16 serviceName];
        [(NSMutableDictionary *)v2->_serviceDescriptionsByServiceName setObject:v16 forKeyedSubscript:v17];
        v18 = [[NSXPCListener alloc] initWithMachServiceName:v17];
        [v18 setDelegate:v2];
        [(NSMutableDictionary *)v2->_machXpcListenersByServiceName setObject:v18 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
  v2 = [(STConcreteXPCServiceProvider *)self machXpcListenersByServiceName];
  [v2 enumerateKeysAndObjectsUsingBlock:&stru_1001A3510];
}

- (void)suspend
{
  v2 = [(STConcreteXPCServiceProvider *)self machXpcListenersByServiceName];
  [v2 enumerateKeysAndObjectsUsingBlock:&stru_1001A3530];
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
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)provideSetupService
{
  v3 = +[STConcreteXPCServiceProvider setupServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)providePasscodePromptServiceWithClientListenerEndpoint:(id)a3
{
  v8 = STRemoteAlertConfigurationContextKeyPasscodeMode;
  v9 = &off_1001B2128;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [STRemoteViewServiceDescription sharedDescriptionWithServiceName:@"com.apple.ScreenTimeUnlock" viewControllerClassName:@"STRemoteServiceViewController" configurationContextUserInfo:v4];

  v6 = [[STConcretePrimitiveRemoteViewService alloc] initWithServiceDescription:v5 listenerEndpoint:v3];

  return v6;
}

- (id)provideCommunicationService
{
  v3 = +[STConcreteXPCServiceProvider communicationServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)providePasscodeAuthenticationServiceWithClientListenerEndpoint:(id)a3
{
  v8 = STRemoteAlertConfigurationContextKeyPasscodeMode;
  v9 = &off_1001B2140;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v5 = [STRemoteViewServiceDescription sharedDescriptionWithServiceName:@"com.apple.ScreenTimeUnlock" viewControllerClassName:@"STRemoteServiceViewController" configurationContextUserInfo:v4];

  v6 = [[STConcretePrimitiveRemoteViewService alloc] initWithServiceDescription:v5 listenerEndpoint:v3];

  return v6;
}

- (id)providePrivateAgentService
{
  v3 = +[STConcreteXPCServiceProvider privateAgentServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)providePublicAgentService
{
  v3 = +[STConcreteXPCServiceProvider publicAgentServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)provideReactorToolService
{
  v3 = +[STConcreteXPCServiceProvider reactorToolServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (id)provideDowntimeService
{
  v3 = +[STConcreteXPCServiceProvider downtimeServiceDescription];
  v4 = objc_opt_new();
  v5 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
  v6 = [v3 serviceName];
  [v5 setObject:v4 forKeyedSubscript:v6];

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 serviceName];
  if (!v8)
  {
    v9 = +[STLog xpcServiceProvider];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Looking for service description for anonymous connection request: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v29 = 0x3032000000;
    v30 = sub_10001F4F8;
    v31 = sub_10001F508;
    v32 = 0;
    v10 = [(STConcreteXPCServiceProvider *)self anonymousXpcListenersByServiceName];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10001F510;
    v25 = &unk_1001A3558;
    v26 = v6;
    p_buf = &buf;
    [v10 enumerateKeysAndObjectsUsingBlock:&v22];

    v8 = *(*(&buf + 1) + 40);
    _Block_object_dispose(&buf, 8);
  }

  v11 = [STLog xpcServiceProvider:v22];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "New connection request on service: %{public}@", &buf, 0xCu);
  }

  v12 = [(STConcreteXPCServiceProvider *)self serviceDescriptionsByServiceName];
  v13 = [v12 objectForKeyedSubscript:v8];

  if (v13)
  {
    v14 = [(STConcreteXPCServiceProvider *)self providedServicesByServiceName];
    v15 = [v14 objectForKeyedSubscript:v8];

    if (!v15)
    {
      v16 = +[STLog xpcServiceProvider];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100113144(v16);
      }

      v19 = 0;
      goto LABEL_26;
    }

    v16 = [v13 serviceEntitlement];
    if (v16)
    {
      v17 = [v7 valueForEntitlement:v16];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v17 BOOLValue]& 1) == 0)
      {
        v20 = +[STLog xpcServiceProvider];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_1001130CC(v16, v20);
        }

        v19 = 0;
        goto LABEL_25;
      }
    }

    v18 = [v13 exportedInterface];
    [v7 setExportedInterface:v18];

    [v7 setExportedObject:v15];
    [v7 resume];
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