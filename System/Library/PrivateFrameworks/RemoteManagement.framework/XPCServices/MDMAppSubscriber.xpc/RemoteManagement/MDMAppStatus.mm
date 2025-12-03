@interface MDMAppStatus
+ (id)appStatusForApp:(id)app;
+ (id)connectionForStore:(id)store;
+ (id)stringForAppState:(unint64_t)state;
+ (id)supportedStatusKeys;
- (void)queryForStatusWithKeyPaths:(id)paths store:(id)store completionHandler:(id)handler;
@end

@implementation MDMAppStatus

+ (id)supportedStatusKeys
{
  v5 = RMModelStatusItemMDMApp;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)queryForStatusWithKeyPaths:(id)paths store:(id)store completionHandler:(id)handler
{
  pathsCopy = paths;
  handlerCopy = handler;
  storeCopy = store;
  v11 = +[RMLog mDMAppStatus];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_10000151C(pathsCopy, v11);
  }

  v12 = objc_opt_new();
  [v12 setManagedAppsOnly:1];
  neededAppProperties = [objc_opt_class() neededAppProperties];
  [v12 setPropertyKeys:neededAppProperties];

  v14 = [objc_opt_class() connectionForStore:storeCopy];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000010F0;
  v17[3] = &unk_1000041A8;
  v18 = pathsCopy;
  v19 = handlerCopy;
  v17[4] = self;
  v15 = pathsCopy;
  v16 = handlerCopy;
  [v14 performRequest:v12 completion:v17];
}

+ (id)connectionForStore:(id)store
{
  scope = [store scope];
  if (scope == 1)
  {
    scope = +[DMFConnection systemConnection];
  }

  else if (!scope)
  {
    scope = +[DMFConnection currentUserConnection];
  }

  return scope;
}

+ (id)appStatusForApp:(id)app
{
  appCopy = app;
  bundleIdentifier = [appCopy bundleIdentifier];
  displayName = [appCopy displayName];
  externalVersionIdentifier = [appCopy externalVersionIdentifier];
  stringValue = [externalVersionIdentifier stringValue];
  version = [appCopy version];
  shortVersion = [appCopy shortVersion];
  managementInformation = [appCopy managementInformation];

  v12 = [self stringForAppState:{objc_msgSend(managementInformation, "state")}];
  v13 = [RMModelStatusMDMApp buildWithIdentifier:bundleIdentifier removed:0 name:displayName externalVersionId:stringValue version:version shortVersion:shortVersion state:v12];

  return v13;
}

+ (id)stringForAppState:(unint64_t)state
{
  if (state > 0x12)
  {
    v3 = &RMModelStatusMDMApp_State_unknown;
  }

  else
  {
    v3 = *(&off_1000041C8 + state);
  }

  return *v3;
}

@end