@interface RMStatusPublisherServicePlugin
+ (BOOL)_validPluginWithURL:(id)l;
+ (id)loadPlugins;
- (RMStatusPublisherServicePlugin)initWithURL:(id)l;
- (RMStatusPublisherServicePlugin)initWithURL:(id)l identifier:(id)identifier statusKeysByXPCEvent:(id)event statusKeys:(id)keys;
- (id)_serviceConnection;
- (id)reportDetails;
- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier;
@end

@implementation RMStatusPublisherServicePlugin

+ (id)loadPlugins
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100067130;
  v17[3] = &unk_1000D1988;
  v17[4] = self;
  v2 = [RMPluginDiscovery discoverPluginsWithType:@"status" checkValidURL:v17];
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
        v10 = [RMStatusPublisherServicePlugin alloc];
        v11 = [(RMStatusPublisherServicePlugin *)v10 initWithURL:v9, v13];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (BOOL)_validPluginWithURL:(id)l
{
  v15 = [NSBundle bundleWithURL:l];
  infoDictionary = [v15 infoDictionary];
  v4 = [RMStatusPublisherDescription descriptionWithServiceDictionary:infoDictionary];

  v5 = +[RMModelSharedDefinitions currentPlatform];
  v6 = +[RMBundle managementScope];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  statusKeys = [v4 statusKeys];
  v8 = [statusKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(statusKeys);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [RMFeatureFlags isAllowedStatusItem:v12];
      if (!v13 || ([RMModelStatusBase isSupportedStatusItem:v12 platform:v5 scope:v6]& 1) != 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [statusKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
        LOBYTE(v13) = 0;
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (RMStatusPublisherServicePlugin)initWithURL:(id)l
{
  lCopy = l;
  v29.receiver = self;
  v29.super_class = RMStatusPublisherServicePlugin;
  v6 = [(RMStatusPublisherServicePlugin *)&v29 init];
  if (v6)
  {
    v7 = [NSBundle bundleWithURL:lCopy];
    bundleIdentifier = [v7 bundleIdentifier];
    identifier = v6->_identifier;
    v6->_identifier = bundleIdentifier;

    infoDictionary = [v7 infoDictionary];
    v11 = [RMStatusPublisherDescription descriptionWithServiceDictionary:infoDictionary];

    statusKeys = [v11 statusKeys];

    if (statusKeys)
    {
      statusKeysByXPCEvent = [v11 statusKeysByXPCEvent];
      v14 = [statusKeysByXPCEvent copy];
      statusKeysByXPCEvent = v6->_statusKeysByXPCEvent;
      v6->_statusKeysByXPCEvent = v14;

      statusKeys2 = [v11 statusKeys];
      v17 = [statusKeys2 copy];
      statusKeys = v6->_statusKeys;
      v6->_statusKeys = v17;
    }

    else
    {
      v19 = +[RMLog statusPublisherServicePlugin];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100026D8C(lCopy);
      }

      v20 = objc_opt_new();
      v21 = v6->_statusKeysByXPCEvent;
      v6->_statusKeysByXPCEvent = v20;

      v22 = objc_opt_new();
      statusKeys2 = v6->_statusKeys;
      v6->_statusKeys = v22;
    }

    objc_storeStrong(&v6->_url, l);
    v23 = +[RMLog statusPublisherServicePlugin];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      lastPathComponent = [lCopy lastPathComponent];
      v26 = v6->_identifier;
      allObjects = [(NSSet *)v6->_statusKeys allObjects];
      v28 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v31 = lastPathComponent;
      v32 = 2114;
      v33 = v26;
      v34 = 2114;
      v35 = v28;
      _os_log_debug_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Created XPC service plugin: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v6;
}

- (RMStatusPublisherServicePlugin)initWithURL:(id)l identifier:(id)identifier statusKeysByXPCEvent:(id)event statusKeys:(id)keys
{
  lCopy = l;
  identifierCopy = identifier;
  eventCopy = event;
  keysCopy = keys;
  v25.receiver = self;
  v25.super_class = RMStatusPublisherServicePlugin;
  v15 = [(RMStatusPublisherServicePlugin *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, l);
    objc_storeStrong(&v16->_identifier, identifier);
    objc_storeStrong(&v16->_statusKeysByXPCEvent, event);
    v17 = [keysCopy copy];
    statusKeys = v16->_statusKeys;
    v16->_statusKeys = v17;

    v19 = +[RMLog statusPublisherServicePlugin];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      lastPathComponent = [lCopy lastPathComponent];
      identifier = v16->_identifier;
      allObjects = [(NSSet *)v16->_statusKeys allObjects];
      v24 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543874;
      v27 = lastPathComponent;
      v28 = 2114;
      identifierCopy2 = identifier;
      v30 = 2114;
      v31 = v24;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Created XPC service plugin: %{public}@ %{public}@ %{public}@", buf, 0x20u);
    }
  }

  return v16;
}

- (void)publishStatusKeys:(id)keys storeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  keysCopy = keys;
  _serviceConnection = [(RMStatusPublisherServicePlugin *)self _serviceConnection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100067898;
  v12[3] = &unk_1000D1020;
  v12[4] = self;
  v9 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  allObjects = [keysCopy allObjects];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100067904;
  v11[3] = &unk_1000D1020;
  v11[4] = self;
  [v9 publishStatusKeys:allObjects storeIdentifier:identifierCopy scope:+[RMStoreHelper storeScope](RMStoreHelper completionHandler:{"storeScope"), v11}];

  [_serviceConnection invalidate];
}

- (id)reportDetails
{
  v11[0] = @"Location";
  v3 = [(RMStatusPublisherServicePlugin *)self url];
  path = [v3 path];
  v12[0] = path;
  v11[1] = @"Identifier";
  identifier = [(RMStatusPublisherServicePlugin *)self identifier];
  v12[1] = identifier;
  v11[2] = @"StatusItems";
  statusKeys = [(RMStatusPublisherServicePlugin *)self statusKeys];
  allObjects = [statusKeys allObjects];
  v8 = [allObjects sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v12[2] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  return v9;
}

- (id)_serviceConnection
{
  v3 = [NSXPCConnection alloc];
  identifier = [(RMStatusPublisherServicePlugin *)self identifier];
  v5 = [v3 initWithServiceName:identifier];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RMConfigurationSubscriberXPCService];
  [v5 setRemoteObjectInterface:v6];
  [v5 resume];

  return v5;
}

@end