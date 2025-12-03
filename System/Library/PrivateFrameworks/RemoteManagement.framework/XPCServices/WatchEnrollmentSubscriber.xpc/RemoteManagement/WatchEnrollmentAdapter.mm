@interface WatchEnrollmentAdapter
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)_applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope anchorCertificates:(id)certificates completionHandler:(id)handler;
- (void)_removeDeclarationKeyIfNeeded:(id)needed scope:(int64_t)scope completionHandler:(id)handler;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation WatchEnrollmentAdapter

- (id)configurationClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[MCProfileConnection sharedConnection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100000FA4;
  v7[3] = &unk_1000041C0;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [v5 fetchStagedMDMEnrollmentDeclarationKeysForPairingWatchWithCompletion:v7];
}

- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  keyCopy = key;
  handlerCopy = handler;
  v13 = +[RMLog watchEnrollmentAdapter];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [(WatchEnrollmentAdapter *)self declarationKeyForConfiguration:configurationCopy];
    *buf = 138543362;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Apply configuration: %{public}@", buf, 0xCu);
  }

  declaration = [configurationCopy declaration];
  payloadAnchorCertificateAssetReferences = [declaration payloadAnchorCertificateAssetReferences];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000012A4;
  v20[3] = &unk_100004210;
  v20[4] = self;
  v21 = keyCopy;
  v23 = handlerCopy;
  scopeCopy = scope;
  v22 = configurationCopy;
  v17 = configurationCopy;
  v18 = handlerCopy;
  v19 = keyCopy;
  [RMAssetResolverController resolveKeychainAssets:v17 assetIdentifiers:payloadAnchorCertificateAssetReferences accessGroup:@"com.apple.managed.watch.certificates" completionHandler:v20];
}

- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v10 = +[RMLog watchEnrollmentAdapter];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = keyCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Remove configuration: %{public}@", &v11, 0xCu);
  }

  [(WatchEnrollmentAdapter *)self _removeDeclarationKeyIfNeeded:keyCopy scope:scope completionHandler:handlerCopy];
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.WatchEnrollmentExtension" reference:configuration];

  return v3;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v8 = +[RMLog watchEnrollmentAdapter];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v22 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  v12 = [RMStoreLocalizable string:@"UI.Title"];
  v13 = [RMStoreLocalizable string:@"UI.Description"];
  v14 = [RMStoreLocalizable string:@"UI.Key.URL"];
  v19[0] = v14;
  payloadEnrollmentProfileURL = [declaration2 payloadEnrollmentProfileURL];
  v19[1] = payloadEnrollmentProfileURL;
  v16 = [NSArray arrayWithObjects:v19 count:2];
  v20 = v16;
  v17 = [NSArray arrayWithObjects:&v20 count:1];
  v18 = [RMConfigurationUIDetails configurationUIWithTitle:v12 description:v13 details:v17];

  handlerCopy[2](handlerCopy, 1, v18, 0);
}

- (void)_applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope anchorCertificates:(id)certificates completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  certificatesCopy = certificates;
  configurationCopy = configuration;
  v24 = [(WatchEnrollmentAdapter *)self declarationKeyForConfiguration:configurationCopy];
  v15 = [v24 key];
  v16 = [NSSet setWithObject:v15];

  declaration = [configurationCopy declaration];

  v18 = [declaration serializeWithType:0];
  v19 = +[MCProfileConnection sharedConnection];
  payloadEnrollmentProfileURL = [declaration payloadEnrollmentProfileURL];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000018DC;
  v25[3] = &unk_100004238;
  v25[4] = self;
  v26 = keyCopy;
  v27 = handlerCopy;
  scopeCopy = scope;
  v21 = handlerCopy;
  v22 = keyCopy;
  [v19 stageMDMEnrollmentInfoForPairingWatchWithProfileData:0 orServiceURL:payloadEnrollmentProfileURL anchorCertificates:certificatesCopy supervised:1 declarationKeys:v16 declarationConfiguration:v18 completion:v25];
}

- (void)_removeDeclarationKeyIfNeeded:(id)needed scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
  if (needed)
  {
    v8 = +[MCProfileConnection sharedConnection];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100001AD4;
    v9[3] = &unk_100004260;
    v10 = v7;
    [v8 unstageMDMEnrollmentInfoForPairingWatchWithCompletion:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end