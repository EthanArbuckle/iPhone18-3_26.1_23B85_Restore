@interface RMConfigurationSubscriberServicePlugin
+ (BOOL)_validPluginWithURL:(id)a3;
+ (id)loadPlugins;
- (RMConfigurationSubscriberServicePlugin)initWithURL:(id)a3;
- (RMConfigurationSubscriberServicePlugin)initWithURL:(id)a3 identifier:(id)a4 configurationTypes:(id)a5;
- (id)_serviceConnection;
- (id)reportDetails;
- (void)applyChangedConfigurationsTypes:(id)a3;
- (void)fetchMissingConfigurationUIs;
@end

@implementation RMConfigurationSubscriberServicePlugin

+ (id)loadPlugins
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100026174;
  v17[3] = &unk_1000D1988;
  v17[4] = a1;
  v2 = [RMPluginDiscovery discoverPluginsWithType:@"configuration" checkValidURL:v17];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [RMConfigurationSubscriberServicePlugin alloc];
        v11 = [(RMConfigurationSubscriberServicePlugin *)v10 initWithURL:v9, v13];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (BOOL)_validPluginWithURL:(id)a3
{
  v3 = [NSBundle bundleWithURL:a3];
  v4 = [v3 infoDictionary];
  v5 = [RMConfigurationSubscriberDescription descriptionWithServiceDictionary:v4];

  v6 = +[RMModelSharedDefinitions currentPlatform];
  v7 = +[RMBundle managementScope];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v5 types];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v16 = v3;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([RMFeatureFlags isAllowedDeclarationType:v13]&& ([RMModelDeclarationBase isSupportedDeclaration:v13 platform:v6 scope:v7]& 1) != 0)
        {
          v14 = 1;
          goto LABEL_12;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v14 = 0;
LABEL_12:
    v3 = v16;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (RMConfigurationSubscriberServicePlugin)initWithURL:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = RMConfigurationSubscriberServicePlugin;
  v6 = [(RMConfigurationSubscriberServicePlugin *)&v24 init];
  if (v6)
  {
    v7 = [NSBundle bundleWithURL:v5];
    v8 = [v7 bundleIdentifier];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [v7 infoDictionary];
    v11 = [RMConfigurationSubscriberDescription descriptionWithServiceDictionary:v10];

    v12 = [v11 types];

    if (v12)
    {
      v13 = [v11 types];
      v14 = [NSSet setWithArray:v13];
      configurationTypes = v6->_configurationTypes;
      v6->_configurationTypes = v14;
    }

    else
    {
      v16 = +[RMLog configurationSubscriberServicePlugin];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100026D8C(v5);
      }

      v17 = objc_opt_new();
      v13 = v6->_configurationTypes;
      v6->_configurationTypes = v17;
    }

    objc_storeStrong(&v6->_url, a3);
    v18 = +[RMLog configurationSubscriberServicePlugin];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v5 lastPathComponent];
      v21 = v6->_identifier;
      v22 = [(NSSet *)v6->_configurationTypes allObjects];
      v23 = [v22 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v26 = v20;
      v27 = 2114;
      v28 = v21;
      v29 = 2114;
      v30 = v23;
      _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Created XPC service plugin: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v6;
}

- (RMConfigurationSubscriberServicePlugin)initWithURL:(id)a3 identifier:(id)a4 configurationTypes:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = RMConfigurationSubscriberServicePlugin;
  v12 = [(RMConfigurationSubscriberServicePlugin *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_url, a3);
    objc_storeStrong(&v13->_identifier, a4);
    objc_storeStrong(&v13->_configurationTypes, a5);
    v14 = +[RMLog configurationSubscriberServicePlugin];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v9 lastPathComponent];
      identifier = v13->_identifier;
      v18 = [(NSSet *)v13->_configurationTypes allObjects];
      v19 = [v18 componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v22 = v16;
      v23 = 2114;
      v24 = identifier;
      v25 = 2114;
      v26 = v19;
      _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Created XPC service plugin: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v13;
}

- (void)applyChangedConfigurationsTypes:(id)a3
{
  v4 = [(RMConfigurationSubscriberServicePlugin *)self _serviceConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100026838;
  v7[3] = &unk_1000D1020;
  v7[4] = self;
  v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000268A4;
  v6[3] = &unk_1000D1020;
  v6[4] = self;
  [v5 fetchThenApplyConfigurationsWithScope:+[RMStoreHelper storeScope](RMStoreHelper completionHandler:{"storeScope"), v6}];
  [v4 invalidate];
}

- (void)fetchMissingConfigurationUIs
{
  v3 = [(RMConfigurationSubscriberServicePlugin *)self _serviceConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100026A30;
  v6[3] = &unk_1000D1020;
  v6[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100026A9C;
  v5[3] = &unk_1000D1020;
  v5[4] = self;
  [v4 fetchThenUpdateConfigurationUIsWithScope:+[RMStoreHelper storeScope](RMStoreHelper completionHandler:{"storeScope"), v5}];
  [v3 invalidate];
}

- (id)reportDetails
{
  v11[0] = @"Location";
  v3 = [(RMConfigurationSubscriberServicePlugin *)self url];
  v4 = [v3 path];
  v12[0] = v4;
  v11[1] = @"Identifier";
  v5 = [(RMConfigurationSubscriberServicePlugin *)self identifier];
  v12[1] = v5;
  v11[2] = @"ConfigurationTypes";
  v6 = [(RMConfigurationSubscriberServicePlugin *)self configurationTypes];
  v7 = [v6 allObjects];
  v8 = [v7 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)_serviceConnection
{
  v3 = [NSXPCConnection alloc];
  v4 = [(RMConfigurationSubscriberServicePlugin *)self identifier];
  v5 = [v3 initWithServiceName:v4];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RMConfigurationSubscriberXPCService];
  [v5 setRemoteObjectInterface:v6];
  [v5 resume];

  return v5;
}

@end