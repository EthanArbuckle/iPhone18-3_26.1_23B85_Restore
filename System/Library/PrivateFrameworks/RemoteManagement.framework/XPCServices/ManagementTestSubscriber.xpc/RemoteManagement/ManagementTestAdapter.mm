@interface ManagementTestAdapter
- (ManagementTestAdapter)init;
- (id)_addReasons:(id)a3 toError:(id)a4;
- (id)_persistedDeclarationKeysForScope:(int64_t)a3;
- (id)_userDefaultsKeyForScope:(int64_t)a3;
- (id)configurationClasses;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)_addDeclarationKey:(id)a3 scope:(int64_t)a4;
- (void)_applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 reasonDescription:(id)a6 completionHandler:(id)a7;
- (void)_downloadAssetDataFromStore:(id)a3 identifier:(id)a4 reference:(id)a5 completionHandler:(id)a6;
- (void)_persistDeclarationKeys:(id)a3 scope:(int64_t)a4;
- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6;
- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4;
- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5;
- (void)removeDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
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

- (void)beginProcessingConfigurationsForScope:(int64_t)a3 completionHandler:(id)a4
{
  v4 = a4;
  v5 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B20(v5);
  }

  v4[2](v4, 0);
}

- (void)endProcessingConfigurations:(BOOL)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100002B64(a3, v7);
  }

  v6[2](v6, 0);
}

- (void)allDeclarationKeysForScope:(int64_t)a3 completionHandler:(id)a4
{
  v8 = a4;
  v6 = self->_lock;
  objc_sync_enter(v6);
  v7 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:a3];
  objc_sync_exit(v6);

  v8[2](v8, v7, 0);
}

- (void)applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [v10 declaration];
  v14 = [v10 store];
  v15 = [v13 payloadEchoDataAssetReference];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100001364;
  v19[3] = &unk_1000082E8;
  v19[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = a5;
  v21 = v11;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  [(ManagementTestAdapter *)self _downloadAssetDataFromStore:v14 identifier:v15 reference:v18 completionHandler:v19];
}

- (void)removeDeclarationKey:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v8 = a5;
  v9 = self->_lock;
  objc_sync_enter(v9);
  v10 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:a4];
  [v10 removeObject:v11];
  [(ManagementTestAdapter *)self _persistDeclarationKeys:v10 scope:a4];

  objc_sync_exit(v9);
  v8[2](v8, 0);
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.ManagementTestExtension" reference:a3];

  return v3;
}

- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a3;
  v29 = a5;
  v7 = +[RMLog managementTestAdapter];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 declaration];
    v9 = [v8 declarationIdentifier];
    *buf = 138543362;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Get configuration UI for: %{public}@", buf, 0xCu);
  }

  v10 = [v6 declaration];
  v28 = v6;
  v24 = [RMStoreLocalizable string:@"UI.Title"];
  v23 = [RMStoreLocalizable string:@"UI.Description"];
  v27 = [RMStoreLocalizable string:@"UI.Key.Echo"];
  v32[0] = v27;
  v26 = [v10 payloadEcho];
  v32[1] = v26;
  v25 = [NSArray arrayWithObjects:v32 count:2];
  v33[0] = v25;
  v22 = [RMStoreLocalizable string:@"UI.Key.HasAsset"];
  v31[0] = v22;
  v11 = [v10 payloadEchoDataAssetReference];
  if (v11)
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
  v16 = [v10 payloadReturnStatus];
  v17 = v16;
  v18 = RMModelManagementTestDeclaration_ReturnStatus_installed;
  if (v16)
  {
    v18 = v16;
  }

  v30[1] = v18;
  v19 = [NSArray arrayWithObjects:v30 count:2];
  v33[2] = v19;
  v20 = [NSArray arrayWithObjects:v33 count:3];
  v21 = [RMConfigurationUIDetails configurationUIWithTitle:v24 description:v23 details:v20];

  v29[2](v29, 1, v21, 0);
}

- (void)_applyConfiguration:(id)a3 replaceKey:(id)a4 scope:(int64_t)a5 reasonDescription:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v34 = [(ManagementTestAdapter *)self declarationKeyForConfiguration:v12];
  v16 = [v12 declaration];
  if (v13)
  {
    v17 = self->_lock;
    objc_sync_enter(v17);
    v18 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:a5];
    [v18 removeObject:v13];
    [(ManagementTestAdapter *)self _persistDeclarationKeys:v18 scope:a5];

    objc_sync_exit(v17);
  }

  v19 = [v16 payloadEcho];
  v20 = [v16 payloadReturnStatus];
  v21 = [v20 isEqualToString:RMModelManagementTestDeclaration_ReturnStatus_installed];

  if (!v21)
  {
    v25 = [v16 payloadReturnStatus];
    v26 = [v25 isEqualToString:RMModelManagementTestDeclaration_ReturnStatus_unlocked];

    if (!v26)
    {
      v24 = +[RMErrorUtilities createInternalError];
      if ([v19 length] || objc_msgSend(v14, "length"))
      {
        v30 = [RMModelStatusReason reasonWithCode:v19 description:v14 underlyingError:v24];
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
    v28 = [v27 locked];

    if (v28)
    {
      v29 = [RMModelStatusReason reasonWithCode:@"Device.Locked" description:@"Device is locked" underlyingError:0];
      v37 = v29;
      v23 = [NSArray arrayWithObjects:&v37 count:1];

      v24 = +[RMErrorUtilities createInternalError];
      goto LABEL_19;
    }

    [(ManagementTestAdapter *)self _addDeclarationKey:v34 scope:a5];
    if ([v19 length] || objc_msgSend(v14, "length"))
    {
      v33 = [RMModelStatusReason reasonWithCode:v19 description:v14 underlyingError:0];
      v36 = v33;
      v23 = [NSArray arrayWithObjects:&v36 count:1];

      goto LABEL_7;
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  [(ManagementTestAdapter *)self _addDeclarationKey:v34 scope:a5];
  if (![v19 length] && !objc_msgSend(v14, "length"))
  {
    goto LABEL_17;
  }

  v22 = [RMModelStatusReason reasonWithCode:v19 description:v14 underlyingError:0];
  v38 = v22;
  v23 = [NSArray arrayWithObjects:&v38 count:1];

LABEL_7:
  v24 = 0;
LABEL_19:
  v15[2](v15, v23, v24);
}

- (void)_downloadAssetDataFromStore:(id)a3 identifier:(id)a4 reference:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  if (v8)
  {
    v12 = NSTemporaryDirectory();
    v13 = [NSURL fileURLWithPath:v12];

    v14 = objc_opt_new();
    v15 = [v14 UUIDString];
    v16 = [NSString stringWithFormat:@"%@.txt", v15];
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
    [RMAssetResolverController resolveDataAsset:v9 assetIdentifier:v8 downloadURL:v19 completionHandler:v20];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0);
  }
}

- (void)_addDeclarationKey:(id)a3 scope:(int64_t)a4
{
  v8 = a3;
  v6 = self->_lock;
  objc_sync_enter(v6);
  v7 = [(ManagementTestAdapter *)self _persistedDeclarationKeysForScope:a4];
  [v7 addObject:v8];
  [(ManagementTestAdapter *)self _persistDeclarationKeys:v7 scope:a4];

  objc_sync_exit(v6);
}

- (void)_persistDeclarationKeys:(id)a3 scope:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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
  v15 = [(ManagementTestAdapter *)self _userDefaultsKeyForScope:a4];
  [v14 setObject:v7 forKey:v15];
}

- (id)_persistedDeclarationKeysForScope:(int64_t)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(ManagementTestAdapter *)self _userDefaultsKeyForScope:a3];
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

- (id)_userDefaultsKeyForScope:(int64_t)a3
{
  if (a3)
  {
    return @"ManagementTestAppliedSystemConfigurations";
  }

  else
  {
    return @"ManagementTestAppliedUserConfigurations";
  }
}

- (id)_addReasons:(id)a3 toError:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 userInfo];
  v8 = v7;
  if (!v7)
  {
    v7 = &__NSDictionary0__struct;
  }

  v9 = [v7 mutableCopy];

  [v9 setObject:v6 forKeyedSubscript:RMSubscriberStoreNSErrorReasonsKey];
  v10 = [v5 domain];
  v11 = [v5 code];

  v12 = [NSError errorWithDomain:v10 code:v11 userInfo:v9];

  return v12;
}

@end