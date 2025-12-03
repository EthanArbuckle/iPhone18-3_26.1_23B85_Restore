@interface ManagementTestAdapter
- (ManagementTestAdapter)init;
- (id)_addReasons:(id)reasons toError:(id)error;
- (id)_persistedDeclarationKeysForScope:(int64_t)scope;
- (id)_userDefaultsKeyForScope:(int64_t)scope;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)configuration;
- (void)_addDeclarationKey:(id)key scope:(int64_t)scope;
- (void)_applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope reasonDescription:(id)description completionHandler:(id)handler;
- (void)_downloadAssetDataFromStore:(id)store identifier:(id)identifier reference:(id)reference completionHandler:(id)handler;
- (void)_persistDeclarationKeys:(id)keys scope:(int64_t)scope;
- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler;
- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler;
- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler;
- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler;
- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler;
@end

@implementation ManagementTestAdapter

- (ManagementTestAdapter)init
{
  v6.receiver = self;
  v6.super_class = ManagementTestAdapter;
  v2 = [(ManagementTestAdapter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lock = v2->_lock;
    v2->_lock = v3;
  }

  return v2;
}

- (id)configurationClasses
{
  v4 = objc_opt_class();
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)beginProcessingConfigurationsForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B20(v5);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)endProcessingConfigurations:(BOOL)configurations scope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B64(configurations, v7);
  }

  handlerCopy[2](handlerCopy, 0);
}

- (void)allDeclarationKeysForScope:(int64_t)scope completionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = self->_lock;
  objc_sync_enter(v6);
  v7 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:scope];
  objc_sync_exit(v6);

  handlerCopy[2](handlerCopy, v7, 0);
}

- (void)applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  keyCopy = key;
  handlerCopy = handler;
  declaration = [configurationCopy declaration];
  store = [configurationCopy store];
  payloadEchoDataAssetReference = [declaration payloadEchoDataAssetReference];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001364;
  v19[3] = &unk_1000082E8;
  v19[4] = self;
  v20 = configurationCopy;
  v22 = handlerCopy;
  scopeCopy = scope;
  v21 = keyCopy;
  v16 = handlerCopy;
  v17 = keyCopy;
  v18 = configurationCopy;
  [(ManagementTestAdapter *)self _downloadAssetDataFromStore:store identifier:payloadEchoDataAssetReference reference:v18 completionHandler:v19];
}

- (void)removeDeclarationKey:(id)key scope:(int64_t)scope completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v9 = self->_lock;
  objc_sync_enter(v9);
  v10 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:scope];
  [v10 removeObject:keyCopy];
  [(ManagementTestAdapter *)self _persistDeclarationKeys:v10 scope:scope];

  objc_sync_exit(v9);
  handlerCopy[2](handlerCopy, 0);
}

- (id)declarationKeyForConfiguration:(id)configuration
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.ManagementTestExtension" reference:configuration];

  return v3;
}

- (void)configurationUIForConfiguration:(id)configuration scope:(int64_t)scope completionHandler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v7 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    declaration = [configurationCopy declaration];
    declarationIdentifier = [declaration declarationIdentifier];
    *buf = 138543362;
    v35 = declarationIdentifier;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  declaration2 = [configurationCopy declaration];
  v28 = configurationCopy;
  v24 = [RMStoreLocalizable string:@"UI.Title"];
  v23 = [RMStoreLocalizable string:@"UI.Description"];
  v27 = [RMStoreLocalizable string:@"UI.Key.Echo"];
  v32[0] = v27;
  payloadEcho = [declaration2 payloadEcho];
  v32[1] = payloadEcho;
  v25 = [NSArray arrayWithObjects:v32 count:2];
  v33[0] = v25;
  v22 = [RMStoreLocalizable string:@"UI.Key.HasAsset"];
  v31[0] = v22;
  payloadEchoDataAssetReference = [declaration2 payloadEchoDataAssetReference];
  if (payloadEchoDataAssetReference)
  {
    v12 = @"UI.Value.Yes";
  }

  else
  {
    v12 = @"UI.Value.No";
  }

  v13 = [RMStoreLocalizable string:v12];
  v31[1] = v13;
  v14 = [NSArray arrayWithObjects:v31 count:2];
  v33[1] = v14;
  v15 = [RMStoreLocalizable string:@"UI.Key.ReturnStatus"];
  v30[0] = v15;
  payloadReturnStatus = [declaration2 payloadReturnStatus];
  v17 = payloadReturnStatus;
  v18 = RMModelManagementTestDeclaration_ReturnStatus_installed;
  if (payloadReturnStatus)
  {
    v18 = payloadReturnStatus;
  }

  v30[1] = v18;
  v19 = [NSArray arrayWithObjects:v30 count:2];
  v33[2] = v19;
  v20 = [NSArray arrayWithObjects:v33 count:3];
  v21 = [RMConfigurationUIDetails configurationUIWithTitle:v24 description:v23 details:v20];

  handlerCopy[2](handlerCopy, 1, v21, 0);
}

- (void)_applyConfiguration:(id)configuration replaceKey:(id)key scope:(int64_t)scope reasonDescription:(id)description completionHandler:(id)handler
{
  configurationCopy = configuration;
  keyCopy = key;
  descriptionCopy = description;
  handlerCopy = handler;
  v34 = [(ManagementTestAdapter *)self declarationKeyForConfiguration:configurationCopy];
  declaration = [configurationCopy declaration];
  if (keyCopy)
  {
    v17 = self->_lock;
    objc_sync_enter(v17);
    v18 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:scope];
    [v18 removeObject:keyCopy];
    [(ManagementTestAdapter *)self _persistDeclarationKeys:v18 scope:scope];

    objc_sync_exit(v17);
  }

  payloadEcho = [declaration payloadEcho];
  payloadReturnStatus = [declaration payloadReturnStatus];
  v21 = [payloadReturnStatus isEqualToString:RMModelManagementTestDeclaration_ReturnStatus_installed];

  if (!v21)
  {
    payloadReturnStatus2 = [declaration payloadReturnStatus];
    v26 = [payloadReturnStatus2 isEqualToString:RMModelManagementTestDeclaration_ReturnStatus_unlocked];

    if (!v26)
    {
      v24 = +[RMErrorUtilities createInternalError];
      if ([payloadEcho length] || objc_msgSend(descriptionCopy, "length"))
      {
        v30 = [RMModelStatusReason reasonWithCode:payloadEcho description:descriptionCopy underlyingError:v24];
        v35 = v30;
        v31 = [NSArray arrayWithObjects:&v35 count:1];

        v32 = [(ManagementTestAdapter *)self _addReasons:v31 toError:v24];

        v23 = 0;
        v24 = v32;
        goto LABEL_19;
      }

LABEL_18:
      v23 = 0;
      goto LABEL_19;
    }

    v27 = +[RMDevice currentDevice];
    locked = [v27 locked];

    if (locked)
    {
      v29 = [RMModelStatusReason reasonWithCode:@"Device.Locked" description:@"Device is locked" underlyingError:0];
      v37 = v29;
      v23 = [NSArray arrayWithObjects:&v37 count:1];

      v24 = +[RMErrorUtilities createInternalError];
      goto LABEL_19;
    }

    [(ManagementTestAdapter *)self _addDeclarationKey:v34 scope:scope];
    if ([payloadEcho length] || objc_msgSend(descriptionCopy, "length"))
    {
      v33 = [RMModelStatusReason reasonWithCode:payloadEcho description:descriptionCopy underlyingError:0];
      v36 = v33;
      v23 = [NSArray arrayWithObjects:&v36 count:1];

      goto LABEL_7;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  [(ManagementTestAdapter *)self _addDeclarationKey:v34 scope:scope];
  if (![payloadEcho length] && !objc_msgSend(descriptionCopy, "length"))
  {
    goto LABEL_17;
  }

  v22 = [RMModelStatusReason reasonWithCode:payloadEcho description:descriptionCopy underlyingError:0];
  v38 = v22;
  v23 = [NSArray arrayWithObjects:&v38 count:1];

LABEL_7:
  v24 = 0;
LABEL_19:
  handlerCopy[2](handlerCopy, v23, v24);
}

- (void)_downloadAssetDataFromStore:(id)store identifier:(id)identifier reference:(id)reference completionHandler:(id)handler
{
  identifierCopy = identifier;
  referenceCopy = reference;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (identifierCopy)
  {
    v12 = NSTemporaryDirectory();
    v13 = [NSURL fileURLWithPath:v12];

    v14 = objc_opt_new();
    uUIDString = [v14 UUIDString];
    v16 = [NSString stringWithFormat:@"%@.txt", uUIDString];
    v17 = [v13 URLByAppendingPathComponent:v16];

    v18 = +[RMLog managementTestAdapter];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100002BF4(v17, v18);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001D84;
    v20[3] = &unk_100008310;
    v21 = v17;
    v22 = v11;
    v19 = v17;
    [RMAssetResolverController resolveDataAsset:referenceCopy assetIdentifier:identifierCopy downloadURL:v19 completionHandler:v20];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

- (void)_addDeclarationKey:(id)key scope:(int64_t)scope
{
  keyCopy = key;
  v6 = self->_lock;
  objc_sync_enter(v6);
  v7 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:scope];
  [v7 addObject:keyCopy];
  [(ManagementTestAdapter *)self _persistDeclarationKeys:v7 scope:scope];

  objc_sync_exit(v6);
}

- (void)_persistDeclarationKeys:(id)keys scope:(int64_t)scope
{
  keysCopy = keys;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [keysCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = keysCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) key];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [(ManagementTestAdapter *)self _userDefaultsKeyForScope:scope];
  [v14 setObject:v7 forKey:v15];
}

- (id)_persistedDeclarationKeysForScope:(int64_t)scope
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(ManagementTestAdapter *)self _userDefaultsKeyForScope:scope];
  v7 = [v5 objectForKey:v6];

  v8 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v7 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [RMStoreDeclarationKey newDeclarationKey:*(*(&v16 + 1) + 8 * i), v16];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v8;
}

- (id)_userDefaultsKeyForScope:(int64_t)scope
{
  if (scope)
  {
    return @"ManagementTestAppliedSystemConfigurations";
  }

  else
  {
    return @"ManagementTestAppliedUserConfigurations";
  }
}

- (id)_addReasons:(id)reasons toError:(id)error
{
  errorCopy = error;
  reasonsCopy = reasons;
  userInfo = [errorCopy userInfo];
  v8 = userInfo;
  if (!userInfo)
  {
    userInfo = &__NSDictionary0__struct;
  }

  v9 = [userInfo mutableCopy];

  [v9 setObject:reasonsCopy forKeyedSubscript:RMSubscriberStoreNSErrorReasonsKey];
  domain = [errorCopy domain];
  code = [errorCopy code];

  v12 = [NSError errorWithDomain:domain code:code userInfo:v9];

  return v12;
}

@end