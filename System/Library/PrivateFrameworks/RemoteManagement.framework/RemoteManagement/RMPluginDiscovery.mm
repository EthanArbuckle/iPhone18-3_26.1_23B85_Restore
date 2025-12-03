@interface RMPluginDiscovery
+ (id)_discoverJSONFilesInDirectory:(id)directory;
+ (id)_searchPaths;
+ (id)discoverPluginsWithType:(id)type checkValidURL:(id)l;
+ (void)loadDynamicSchemasInPlugins;
@end

@implementation RMPluginDiscovery

+ (id)discoverPluginsWithType:(id)type checkValidURL:(id)l
{
  typeCopy = type;
  lCopy = l;
  v40 = objc_opt_new();
  v6 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [self _searchPaths];
  v37 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v37)
  {
    v36 = *v49;
    v7 = @"xpc";
    v8 = &DeviceIdentityIssueClientCertificateWithCompletion_ptr;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = v9;
        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = +[NSFileManager defaultManager];
        path = [v10 path];
        v13 = [v11 contentsOfDirectoryAtPath:path error:0];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v43 = v13;
        v14 = [v43 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v45;
          v42 = v10;
          do
          {
            for (i = 0; i != v15; i = i + 1)
            {
              if (*v45 != v16)
              {
                objc_enumerationMutation(v43);
              }

              v18 = *(*(&v44 + 1) + 8 * i);
              pathExtension = [v18 pathExtension];
              v20 = [pathExtension isEqualToString:v7];

              if (v20)
              {
                v21 = v8[230];
                stringByDeletingPathExtension = [v18 stringByDeletingPathExtension];
                LODWORD(v21) = [v21 isAllowedXPCServiceName:stringByDeletingPathExtension];

                if (v21)
                {
                  v23 = [v10 URLByAppendingPathComponent:v18];
                  if ([v6 containsObject:v18])
                  {
                    v24 = +[RMLog pluginDiscovery];
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                    {
                      path2 = [v23 path];
                      *buf = 138543618;
                      v53 = typeCopy;
                      v54 = 2114;
                      v55 = path2;
                      _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Ignoring duplicate XPC service (%{public}@) plugin: %{public}@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v25 = v7;
                    v26 = v8;
                    v27 = v6;
                    v28 = lCopy[2](lCopy, v23);
                    v29 = +[RMLog pluginDiscovery];
                    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
                    if (v28)
                    {
                      if (v30)
                      {
                        path3 = [v23 path];
                        *buf = 138543618;
                        v53 = typeCopy;
                        v54 = 2114;
                        v55 = path3;
                        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Found XPC service (%{public}@) plugin: %{public}@", buf, 0x16u);
                      }

                      [v40 addObject:v23];
                      v6 = v27;
                      [v27 addObject:v18];
                    }

                    else
                    {
                      if (v30)
                      {
                        path4 = [v23 path];
                        *buf = 138543618;
                        v53 = typeCopy;
                        v54 = 2114;
                        v55 = path4;
                        _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Ignoring XPC service (%{public}@) plugin: %{public}@", buf, 0x16u);
                      }

                      v6 = v27;
                    }

                    v8 = v26;
                    v7 = v25;
                    v10 = v42;
                  }
                }
              }
            }

            v15 = [v43 countByEnumeratingWithState:&v44 objects:v56 count:16];
          }

          while (v15);
        }

        v9 = v38 + 1;
      }

      while ((v38 + 1) != v37);
      v37 = [obj countByEnumeratingWithState:&v48 objects:v57 count:16];
    }

    while (v37);
  }

  return v40;
}

+ (id)_searchPaths
{
  v2 = +[RMLocations xpcServiceDirectoryURL];
  v3 = [NSMutableArray arrayWithObject:v2];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 URLForResource:@"XPCServices" withExtension:0];
  [v3 insertObject:v5 atIndex:0];

  return v3;
}

+ (void)loadDynamicSchemasInPlugins
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005BA84;
  v8[3] = &unk_1000D27A0;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  v6 = v4;
  v10 = v6;
  v7 = [self discoverPluginsWithType:@"Schema" checkValidURL:v8];
  if ([v5 count])
  {
    [RMModelConfigurationSchema loadDynamicSchemaFromFiles:v5];
  }

  if ([v6 count])
  {
    [RMModelStatusSchema loadDynamicSchemaFromFiles:v6];
  }
}

+ (id)_discoverJSONFilesInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = objc_opt_new();
  v5 = +[NSFileManager defaultManager];
  path = [directoryCopy path];
  v7 = [v5 contentsOfDirectoryAtPath:path error:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        pathExtension = [v13 pathExtension];
        v15 = [pathExtension isEqualToString:@"json"];

        if (v15)
        {
          v16 = [directoryCopy URLByAppendingPathComponent:v13];
          [v4 addObject:v16];
          v17 = +[RMLog pluginDiscovery];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            sub_10005BE1C(v23, v16, &v24, v17);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  return v4;
}

@end