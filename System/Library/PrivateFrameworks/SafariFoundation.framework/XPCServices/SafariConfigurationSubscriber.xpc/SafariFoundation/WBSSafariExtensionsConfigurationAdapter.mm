@interface WBSSafariExtensionsConfigurationAdapter
- (BOOL)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 returningReasons:(id *)a6 error:(id *)a7;
- (BOOL)removeCombinedConfigurationForScope:(int64_t)a3 error:(id *)a4;
- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4;
- (id)declarationKeyForConfiguration:(id)a3;
- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5;
@end

@implementation WBSSafariExtensionsConfigurationAdapter

- (id)allDeclarationKeysForScope:(int64_t)a3 error:(id *)a4
{
  v4 = sub_100000F14();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Getting applied extensions configurations", v11, 2u);
  }

  v5 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5];

  if (v6)
  {
    v7 = [v6 safari_arrayForKey:WBSManagedExtensionsDeclarationKeysKey];
    v8 = [v7 safari_mapAndFilterObjectsUsingBlock:&stru_1000082A0];
    v9 = [NSSet setWithArray:v8];
  }

  else
  {
    v9 = +[NSSet set];
  }

  return v9;
}

- (BOOL)applyCombinedConfiguration:(id)a3 declarationKeys:(id)a4 scope:(int64_t)a5 returningReasons:(id *)a6 error:(id *)a7
{
  v9 = a4;
  v10 = a3;
  v11 = sub_100000F14();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Applying extensions configuration", v22, 2u);
  }

  v12 = [v10 serializeWithType:0];

  v13 = &__NSDictionary0__struct;
  if (v12)
  {
    v13 = v12;
  }

  v14 = v13;

  v15 = +[NSMutableDictionary dictionary];
  [v15 setObject:v14 forKeyedSubscript:WBSManagedExtensionSettingsKey];

  v16 = [v9 allObjects];

  v17 = [v16 safari_mapAndFilterObjectsUsingBlock:&stru_1000082E0];
  [v15 setObject:v17 forKeyedSubscript:WBSManagedExtensionsDeclarationKeysKey];

  v18 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  v19 = [v15 writeToURL:v18 error:a7];

  v20 = +[NSDistributedNotificationCenter defaultCenter];
  [v20 postNotificationName:WBSManagedExtensionsConfigurationDidChangeNotification object:0 userInfo:0 deliverImmediately:1];

  return v19;
}

- (BOOL)removeCombinedConfigurationForScope:(int64_t)a3 error:(id *)a4
{
  v5 = sub_100000F14();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing extensions configuration", buf, 2u);
  }

  v6 = +[NSFileManager defaultManager];
  v7 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
  v8 = [v7 path];
  v9 = [v6 fileExistsAtPath:v8];

  if (v9)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = +[WBSManagedExtensionsController managedExtensionsConfigurationURL];
    v12 = [v10 removeItemAtURL:v11 error:a4];

    v13 = +[NSDistributedNotificationCenter defaultCenter];
    [v13 postNotificationName:WBSManagedExtensionsConfigurationDidChangeNotification object:0 userInfo:0 deliverImmediately:1];
  }

  else
  {
    v14 = sub_100000F14();
    v12 = 1;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Configuration doesn't exist, removal succeeded", v16, 2u);
    }
  }

  return v12;
}

- (id)declarationKeyForConfiguration:(id)a3
{
  v3 = [RMStoreDeclarationKey newDeclarationKeyWithSubscriberIdentifier:@"com.apple.RemoteManagement.SafariExtension" reference:a3];

  return v3;
}

- (void)configurationUIForConfiguration:(id)a3 scope:(int64_t)a4 completionHandler:(id)a5
{
  v6 = a5;
  v7 = [a3 declaration];
  v8 = sub_100000F14();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v7 declarationIdentifier];
    *buf = 138543362;
    v46 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Getting extensions configuration UI for: %{public}@", buf, 0xCu);
  }

  +[NSMutableArray array];
  v37 = v36 = v7;
  v11 = [v7 payloadManagedExtensions];
  v12 = [v11 payloadDictionary];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
  v15 = v13;
  if (!v14)
  {
    goto LABEL_19;
  }

  v16 = v14;
  v35 = v6;
  v17 = 0;
  v18 = *v39;
  do
  {
    for (i = 0; i != v16; i = i + 1)
    {
      if (*v39 != v18)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(*(&v38 + 1) + 8 * i);
      v21 = [v13 objectForKeyedSubscript:v20];
      v22 = [v21 payloadState];
      v23 = sub_1000017FC(v22);

      if (v23)
      {
        if ([v20 isEqualToString:@"*"])
        {
          v17 = 1;
        }

        else
        {
          v24 = [v20 componentsSeparatedByString:@" "];
          v25 = [v24 firstObject];

          v43[0] = v25;
          v43[1] = v23;
          v26 = [NSArray arrayWithObjects:v43 count:2];
          [v37 addObject:v26];
        }
      }
    }

    v16 = [v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
  }

  while (v16);

  v6 = v35;
  if (v17)
  {
    if ([v37 count])
    {
      WBSManagedExtensionsConfigurationDisplayAllOtherExtensionsText();
    }

    else
    {
      WBSManagedExtensionsConfigurationDisplayAllExtensionsText();
    }
    v15 = ;
    v27 = [v13 objectForKeyedSubscript:@"*"];
    v28 = [v27 payloadState];
    v29 = sub_1000017FC(v28);

    v42[0] = v15;
    v42[1] = v29;
    v30 = [NSArray arrayWithObjects:v42 count:2];
    [v37 addObject:v30];

LABEL_19:
  }

  v31 = WBSManagedExtensionsConfigurationDisplayTitle();
  v32 = WBSManagedExtensionsConfigurationDisplayDescription();
  v33 = [v37 copy];
  v34 = [RMConfigurationUIDetails configurationUIWithTitle:v31 description:v32 details:v33];

  v6[2](v6, 1, v34, 0);
}

@end