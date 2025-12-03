@interface UAFConfigurationManager
+ (id)defaultManager;
+ (id)getAssetNameFromPath:(id)path;
+ (id)getConfigurationDirURL:(id)l;
+ (id)getDeprecatedUsageAliasNameFromPath:(id)path;
- (BOOL)isUsageLimitExceeded:(id)exceeded;
- (UAFConfigurationManager)initWithURLs:(id)ls;
- (id)applySubscriptions:(id)subscriptions;
- (id)getAllAssetSets;
- (id)getAssetSet:(id)set;
- (id)getMinVersion:(id)version provider:(id)provider;
- (id)getPrestage:(id)prestage;
- (id)getUsageAlias:(id)alias includeDeprecatedValues:(BOOL)values;
- (id)minVersions:(id)versions;
- (void)assetSetCacheMiss:(id)miss;
- (void)invalidateCache;
@end

@implementation UAFConfigurationManager

+ (id)defaultManager
{
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_10);
  }

  v3 = qword_1ED7D1150;

  return v3;
}

void __41__UAFConfigurationManager_defaultManager__block_invoke()
{
  v0 = [[UAFConfigurationManager alloc] initWithURLs:0];
  v1 = qword_1ED7D1150;
  qword_1ED7D1150 = v0;
}

- (id)getAllAssetSets
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v4 = os_signpost_id_generate(v3);

  v5 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v6 = v5;
  spid = v4;
  v36 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "AssetSet Configuration", "", buf, 2u);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v40 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  v7 = 0;
  if (v40)
  {
    v39 = *v50;
    v38 = *MEMORY[0x1E695DBB8];
    v8 = &UAFLogContextConfiguration;
    v9 = @"plist";
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 URLByAppendingPathComponent:@"AssetSets"];
        if (v12)
        {
          v42 = i;
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v54 = v38;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
          v41 = v12;
          v15 = [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:0 errorHandler:0];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v16 = v15;
          v44 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v44)
          {
            v17 = *v46;
            v43 = *v46;
            do
            {
              for (j = 0; j != v44; ++j)
              {
                if (*v46 != v17)
                {
                  objc_enumerationMutation(v16);
                }

                v19 = *(*(&v45 + 1) + 8 * j);
                pathExtension = [(__CFString *)v19 pathExtension];
                v21 = [pathExtension isEqualToString:v9];

                if (v21)
                {
                  v22 = [objc_opt_class() getAssetNameFromPath:v19];
                  v23 = [(UAFConfigurationManager *)self getAssetSet:v22];
                  if (v23)
                  {
                    if (!v7)
                    {
                      v7 = objc_opt_new();
                    }

                    if (([v7 containsObject:v23] & 1) == 0)
                    {
                      [v7 addObject:v23];
                    }
                  }

                  else
                  {
                    v24 = v16;
                    selfCopy = self;
                    v26 = v9;
                    v27 = v7;
                    v28 = v8;
                    v29 = UAFGetLogCategory(v8);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v56 = "[UAFConfigurationManager getAllAssetSets]";
                      v57 = 2112;
                      v58 = v22;
                      v59 = 2112;
                      v60 = v19;
                      _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Asset with name %@ could not be loaded from %@.", buf, 0x20u);
                    }

                    v8 = v28;
                    v7 = v27;
                    v9 = v26;
                    self = selfCopy;
                    v16 = v24;
                    v17 = v43;
                  }
                }

                else
                {
                  v22 = UAFGetLogCategory(v8);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v56 = "[UAFConfigurationManager getAllAssetSets]";
                    v57 = 2112;
                    v58 = v19;
                    _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Not trying to load %@ as an asset set configuration file as it lacks the plist extension", buf, 0x16u);
                  }
                }
              }

              v44 = [v16 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v44);
          }

          v12 = v41;
          i = v42;
        }

        else
        {
          v16 = UAFGetLogCategory(v8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v56 = "[UAFConfigurationManager getAllAssetSets]";
            v57 = 2112;
            v58 = v11;
            v59 = 2112;
            v60 = @"AssetSets";
            _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Could not create URL from %@ by appending %@", buf, 0x20u);
          }
        }
      }

      v40 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v40);
  }

  v30 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v31 = v30;
  if (v36 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v31, OS_SIGNPOST_INTERVAL_END, spid, "AssetSet Configuration", "", buf, 2u);
  }

  allObjects = [v7 allObjects];

  v33 = *MEMORY[0x1E69E9840];

  return allObjects;
}

+ (id)getConfigurationDirURL:(id)l
{
  lCopy = l;
  v4 = +[UAFCommonUtilities rootDirectory];
  v5 = [v4 stringByAppendingString:lCopy];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1 relativeToURL:0];

  return v6;
}

+ (id)getAssetNameFromPath:(id)path
{
  uRLByDeletingPathExtension = [path URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  if (lastPathComponent)
  {
    v5 = lastPathComponent;
  }

  else
  {
    v5 = &stru_1F3B6B510;
  }

  return v5;
}

+ (id)getDeprecatedUsageAliasNameFromPath:(id)path
{
  uRLByDeletingPathExtension = [path URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  if (lastPathComponent && (v5 = [lastPathComponent rangeOfString:@".deprecated"], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [lastPathComponent substringWithRange:{0, v5}];
  }

  else
  {
    v6 = &stru_1F3B6B510;
  }

  return v6;
}

- (UAFConfigurationManager)initWithURLs:(id)ls
{
  lsCopy = ls;
  v16.receiver = self;
  v16.super_class = UAFConfigurationManager;
  v5 = [(UAFConfigurationManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetCache = v5->_assetSetCache;
    v5->_assetSetCache = v6;

    if (lsCopy)
    {
      v8 = lsCopy;
      baseURLs = v5->_baseURLs;
      v5->_baseURLs = v8;
    }

    else
    {
      v10 = objc_opt_new();
      v11 = objc_autoreleasePoolPush();
      if (+[UAFCommonUtilities isInternalInstall])
      {
        v12 = [UAFConfigurationManager getConfigurationDirURL:@"/AppleInternal/Library/UnifiedAssetFramework"];
        if (v12)
        {
          [(NSArray *)v10 addObject:v12];
        }
      }

      v13 = [UAFConfigurationManager getConfigurationDirURL:@"/System/Library/UnifiedAssetFramework"];
      if (v13)
      {
        [(NSArray *)v10 addObject:v13];
      }

      objc_autoreleasePoolPop(v11);
      baseURLs = v5->_baseURLs;
      v5->_baseURLs = v10;
    }

    v14 = v5;
  }

  return v5;
}

- (void)invalidateCache
{
  obj = [(UAFConfigurationManager *)self assetSetCache];
  objc_sync_enter(obj);
  v3 = objc_opt_new();
  [(UAFConfigurationManager *)self setAssetSetCache:v3];

  objc_sync_exit(obj);
}

- (void)assetSetCacheMiss:(id)miss
{
  v41 = *MEMORY[0x1E69E9840];
  missCopy = miss;
  selfCopy = self;
  context = objc_autoreleasePoolPush();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v5 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v25 = *v29;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v28 + 1) + 8 * i) URLByAppendingPathComponent:@"AssetSets"];

        v10 = missCopy;
        v11 = [v9 URLByAppendingPathComponent:missCopy];

        v7 = [v11 URLByAppendingPathExtension:@"plist"];

        v27 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v7 absoluteURL];
        path = [absoluteURL path];
        v15 = [defaultManager fileExistsAtPath:path isDirectory:&v27];
        v16 = v27;

        if (v15 && (v16 & 1) == 0)
        {
          v26 = 0;
          v17 = [UAFAssetSetConfiguration fromContentsOfURL:v7 error:&v26];
          v18 = v26;
          missCopy = v10;
          if (!v17)
          {
            v19 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v33 = "[UAFConfigurationManager assetSetCacheMiss:]";
              v34 = 2114;
              v35 = v10;
              v36 = 2114;
              v37 = v7;
              v38 = 2114;
              v39 = v18;
              _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Could not load asset set %{public}@ from URL %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          objc_autoreleasePoolPop(context);
          assetSetCache = [(UAFConfigurationManager *)selfCopy assetSetCache];
          [assetSetCache setValue:v17 forKey:v10];
          goto LABEL_16;
        }

        missCopy = v10;
      }

      v6 = [obj countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(context);
  v17 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    assetSetCache = [(UAFConfigurationManager *)selfCopy baseURLs];
    *buf = 136315650;
    v33 = "[UAFConfigurationManager assetSetCacheMiss:]";
    v34 = 2112;
    v35 = missCopy;
    v36 = 2112;
    v37 = assetSetCache;
    _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s '%@' does not exist in %@", buf, 0x20u);
LABEL_16:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)getAssetSet:(id)set
{
  v22 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v6 = os_signpost_id_generate(v5);

  v7 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v20 = 138543362;
    v21 = setCopy;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AssetSet Configuration", "%{public}@", &v20, 0xCu);
  }

  assetSetCache = [(UAFConfigurationManager *)self assetSetCache];
  objc_sync_enter(assetSetCache);
  assetSetCache2 = [(UAFConfigurationManager *)self assetSetCache];
  v12 = [assetSetCache2 objectForKey:setCopy];

  if (v12)
  {
    v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
    v14 = v13;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v20 = 138543362;
      v21 = setCopy;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_END, v6, "AssetSet Configuration", "%{public}@", &v20, 0xCu);
    }
  }

  else
  {
    [(UAFConfigurationManager *)self assetSetCacheMiss:setCopy];
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    v14 = v15;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v20 = 138543362;
      v21 = setCopy;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_END, v6, "AssetSet Configuration", "%{public}@", &v20, 0xCu);
    }
  }

  assetSetCache3 = [(UAFConfigurationManager *)self assetSetCache];
  v17 = [assetSetCache3 objectForKey:setCopy];

  objc_sync_exit(assetSetCache);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)getUsageAlias:(id)alias includeDeprecatedValues:(BOOL)values
{
  valuesCopy = values;
  v76 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  context = objc_autoreleasePoolPush();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  selfCopy = self;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v6 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v53 = *v62;
    v47 = *MEMORY[0x1E695DBB8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v62 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v61 + 1) + 8 * i);
        v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v12 = os_signpost_id_generate(v11);

        v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v14 = v13;
        spid = v12;
        v51 = v12 - 1;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UsageAlias Configuration", "", buf, 2u);
        }

        v15 = [v10 URLByAppendingPathComponent:@"UsageAliases"];

        v16 = [v15 URLByAppendingPathComponent:aliasCopy];

        v8 = [v16 URLByAppendingPathExtension:@"plist"];

        v60 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v8 absoluteURL];
        path = [absoluteURL path];
        v20 = [defaultManager fileExistsAtPath:path isDirectory:&v60];
        v21 = v60;

        if (v20 && (v21 & 1) == 0)
        {
          v54 = [UAFUsageAliasConfiguration fromContentsOfURL:v8 assetSetManager:selfCopy error:0];
          if (valuesCopy)
          {
            v25 = [v10 URLByAppendingPathComponent:@"UsageAliases"];

            v26 = [v25 URLByAppendingPathComponent:@"Deprecated"];

            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v74 = v47;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v74 count:1];
            v29 = [defaultManager2 enumeratorAtURL:v26 includingPropertiesForKeys:v28 options:1 errorHandler:0];

            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v30 = v29;
            v31 = [v30 countByEnumeratingWithState:&v56 objects:v73 count:16];
            v32 = aliasCopy;
            if (v31)
            {
              v33 = v31;
              v34 = *v57;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  v36 = v26;
                  if (*v57 != v34)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v26 = *(*(&v56 + 1) + 8 * j);

                  pathExtension = [v26 pathExtension];
                  v38 = [pathExtension isEqualToString:@"plist"];

                  if (v38)
                  {
                    v39 = [UAFConfigurationManager getDeprecatedUsageAliasNameFromPath:v26];
                    if ([v32 isEqualToString:v39])
                    {
                      v40 = [UAFUsageAliasConfiguration fromContentsOfURL:v26 assetSetManager:selfCopy error:0];
                      if (([v54 addDeprecatedValues:v40] & 1) == 0)
                      {
                        v41 = UAFGetLogCategory(&UAFLogContextConfiguration);
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v66 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                          v67 = 2114;
                          v68 = v26;
                          _os_log_error_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_ERROR, "%s Failed to add deprecated values from %{public}@", buf, 0x16u);
                        }

                        v32 = aliasCopy;
                      }
                    }

                    else
                    {
                      v40 = UAFGetLogCategory(&UAFLogContextConfiguration);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315906;
                        v66 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                        v67 = 2112;
                        v68 = v26;
                        v69 = 2114;
                        v70 = v39;
                        v71 = 2114;
                        v72 = v32;
                        _os_log_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_INFO, "%s Not trying to load %@ as a deprecated usage alias configuration file as it for usage alias %{public}@, not %{public}@", buf, 0x2Au);
                      }
                    }
                  }

                  else
                  {
                    v39 = UAFGetLogCategory(&UAFLogContextConfiguration);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v66 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                      v67 = 2112;
                      v68 = v26;
                      _os_log_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_DEFAULT, "%s Not trying to load %@ as a deprecated usage alias configuration file as it lacks the plist extension", buf, 0x16u);
                    }
                  }
                }

                v33 = [v30 countByEnumeratingWithState:&v56 objects:v73 count:16];
              }

              while (v33);
            }

            v8 = 0;
          }

          else
          {
            v32 = aliasCopy;
          }

          v43 = UAFGetLogCategory(&UAFLogContextConfiguration);
          v44 = v43;
          if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v44, OS_SIGNPOST_INTERVAL_END, spid, "UsageAlias Configuration", "", buf, 2u);
          }

          v42 = v54;
          objc_autoreleasePoolPop(context);

          goto LABEL_46;
        }

        v22 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v66 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
          v67 = 2112;
          v68 = v8;
          _os_log_debug_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEBUG, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }

        v23 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v24 = v23;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v24, OS_SIGNPOST_INTERVAL_END, spid, "UsageAlias Configuration", "", buf, 2u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(context);
  v42 = 0;
  v32 = aliasCopy;
LABEL_46:

  v45 = *MEMORY[0x1E69E9840];

  return v42;
}

- (id)getPrestage:(id)prestage
{
  v47 = *MEMORY[0x1E69E9840];
  prestageCopy = prestage;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v4 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v35 = *v39;
    v34 = *MEMORY[0x1E696A3D8];
    v32 = *MEMORY[0x1E696A3E8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v10 = os_signpost_id_generate(v9);

        v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v12 = v11;
        v13 = v10 - 1;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Prestage Configuration", "", buf, 2u);
        }

        v14 = [v8 URLByAppendingPathComponent:@"Prestage"];

        v15 = [v14 URLByAppendingPathComponent:prestageCopy];

        v6 = [v15 URLByAppendingPathExtension:@"plist"];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v6 path];
        v37 = 0;
        v18 = [defaultManager attributesOfItemAtPath:path error:&v37];
        v19 = v37;

        if (v18)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          v21 = [v18 objectForKeyedSubscript:v34];
          if (v21)
          {
            v22 = v21;
            v23 = [v18 objectForKeyedSubscript:v34];

            if (v23 == v32)
            {
              v27 = [UAFPrestageConfiguration fromContentsOfURL:v6 error:0];
              v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
              v29 = v28;
              if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v29, OS_SIGNPOST_INTERVAL_END, v10, "Prestage Configuration", "", buf, 2u);
              }

              goto LABEL_30;
            }
          }
        }

        v24 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v43 = "[UAFConfigurationManager getPrestage:]";
          v44 = 2112;
          v45 = v6;
          _os_log_debug_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEBUG, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }

        v25 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v26 = v25;
        if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v26, OS_SIGNPOST_INTERVAL_END, v10, "Prestage Configuration", "", buf, 2u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v27 = 0;
LABEL_30:

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)minVersions:(id)versions
{
  v88 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  context = objc_autoreleasePoolPush();
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v49 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
  v4 = 0;
  if (v49)
  {
    v47 = *v75;
    v5 = *MEMORY[0x1E695DBB8];
    v54 = *MEMORY[0x1E695DBB8];
    do
    {
      v6 = 0;
      do
      {
        if (*v75 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v6;
        v7 = *(*(&v74 + 1) + 8 * v6);
        v8 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v9 = os_signpost_id_generate(v8);

        v10 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v11 = v10;
        spid = v9;
        v52 = v9 - 1;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MinVersion Configuration", "", buf, 2u);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", versionsCopy, @".minversion."];
        v13 = [v7 URLByAppendingPathComponent:@"MinVersions"];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v86 = v5;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v86 count:1];
        v51 = v13;
        v16 = [defaultManager enumeratorAtURL:v13 includingPropertiesForKeys:v15 options:0 errorHandler:0];

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v58 = v16;
        v60 = [v58 countByEnumeratingWithState:&v70 objects:v85 count:16];
        if (v60)
        {
          v59 = *v71;
          v56 = v12;
          do
          {
            for (i = 0; i != v60; ++i)
            {
              if (*v71 != v59)
              {
                objc_enumerationMutation(v58);
              }

              v61 = i;
              v18 = *(*(&v70 + 1) + 8 * i);
              path = [v18 path];
              lastPathComponent = [path lastPathComponent];
              v21 = [lastPathComponent hasPrefix:v12];

              if (v21)
              {
                path2 = [v18 path];
                pathExtension = [path2 pathExtension];
                v24 = [pathExtension isEqualToString:@"plist"];

                if (v24)
                {
                  v68 = 0;
                  v69 = 0;
                  v25 = [v18 getResourceValue:&v69 forKey:v5 error:&v68];
                  v26 = v69;
                  v27 = v68;
                  if (v25 && !v27)
                  {
                    if ([v26 BOOLValue])
                    {
                      v67 = 0;
                      v28 = [UAFMinVersionConfiguration fromContentsOfURL:v18 error:&v67];
                      v57 = v67;
                      if (v28)
                      {
                        v65 = 0u;
                        v66 = 0u;
                        v63 = 0u;
                        v64 = 0u;
                        minVersions = [v28 minVersions];
                        v29 = [minVersions countByEnumeratingWithState:&v63 objects:v78 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v55 = v26;
                          v31 = *v64;
                          do
                          {
                            for (j = 0; j != v30; ++j)
                            {
                              if (*v64 != v31)
                              {
                                objc_enumerationMutation(minVersions);
                              }

                              v33 = *(*(&v63 + 1) + 8 * j);
                              if (!v4)
                              {
                                v4 = objc_opt_new();
                              }

                              v34 = [v4 objectForKeyedSubscript:v33];

                              if (!v34)
                              {
                                goto LABEL_29;
                              }

                              v35 = [v4 objectForKeyedSubscript:v33];
                              minVersions2 = [v28 minVersions];
                              v37 = [minVersions2 objectForKeyedSubscript:v33];
                              v38 = [UAFPlatform compareVersion:v35 with:v37];

                              if (v38 == 1)
                              {
LABEL_29:
                                minVersions3 = [v28 minVersions];
                                v40 = [minVersions3 objectForKeyedSubscript:v33];
                                [v4 setObject:v40 forKeyedSubscript:v33];
                              }
                            }

                            v30 = [minVersions countByEnumeratingWithState:&v63 objects:v78 count:16];
                          }

                          while (v30);
                          v5 = v54;
                          v26 = v55;
                        }
                      }

                      else
                      {
                        minVersions = UAFGetLogCategory(&UAFLogContextConfiguration);
                        if (os_log_type_enabled(minVersions, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          v80 = "[UAFConfigurationManager minVersions:]";
                          v81 = 2112;
                          v82 = v18;
                          v83 = 2112;
                          v84 = v57;
                          _os_log_error_impl(&dword_1BCF2C000, minVersions, OS_LOG_TYPE_ERROR, "%s Failed to load %@:%@", buf, 0x20u);
                        }
                      }

                      v12 = v56;
                      v27 = v57;
                    }

                    else
                    {
                      v27 = 0;
                    }
                  }

                  i = v61;
                }
              }
            }

            v60 = [v58 countByEnumeratingWithState:&v70 objects:v85 count:16];
          }

          while (v60);
        }

        v41 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v42 = v41;
        if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v42, OS_SIGNPOST_INTERVAL_END, spid, "MinVersion Configuration", "", buf, 2u);
        }

        v6 = v53 + 1;
      }

      while (v53 + 1 != v49);
      v49 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
    }

    while (v49);
  }

  objc_autoreleasePoolPop(context);
  v43 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)getMinVersion:(id)version provider:(id)provider
{
  v36 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  providerCopy = provider;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v6 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v23 = *v28;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) URLByAppendingPathComponent:@"MinVersions"];

        providerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", versionCopy, @".minversion.", providerCopy];
        v12 = [v10 URLByAppendingPathComponent:providerCopy];

        v8 = [v12 URLByAppendingPathExtension:@"plist"];

        v26 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v8 absoluteURL];
        path = [absoluteURL path];
        v16 = [defaultManager fileExistsAtPath:path isDirectory:&v26];
        v17 = v26;

        if (v16 && (v17 & 1) == 0)
        {
          v19 = [UAFMinVersionConfiguration fromContentsOfURL:v8 error:0];
          goto LABEL_16;
        }

        v18 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v32 = "[UAFConfigurationManager getMinVersion:provider:]";
          v33 = 2112;
          v34 = v8;
          _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = 0;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)applySubscriptions:(id)subscriptions
{
  v104 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  v4 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v5 = os_signpost_id_generate(v4);

  v6 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v7 = v6;
  v64 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Apply Configuration", "", buf, 2u);
  }

  spid = v5;

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = subscriptionsCopy;
  v67 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
  v8 = 0;
  if (v67)
  {
    v66 = *v91;
    do
    {
      v9 = 0;
      do
      {
        if (*v91 != v66)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v68 = v9;
        v11 = *(*(&v90 + 1) + 8 * v9);
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v76 = v11;
        assetSets = [v11 assetSets];
        v13 = [assetSets countByEnumeratingWithState:&v86 objects:v102 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v87;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v87 != v15)
              {
                objc_enumerationMutation(assetSets);
              }

              v17 = *(*(&v86 + 1) + 8 * i);
              if (!v8)
              {
                v8 = objc_opt_new();
              }

              v18 = [v8 objectForKeyedSubscript:v17];

              if (!v18)
              {
                v19 = objc_opt_new();
                [v8 setObject:v19 forKeyedSubscript:v17];
              }

              assetSets2 = [v76 assetSets];
              v21 = [assetSets2 objectForKeyedSubscript:v17];

              if (!v21)
              {
                v21 = MEMORY[0x1E695E0F8];
              }

              v22 = [v8 objectForKeyedSubscript:v17];
              v23 = [v22 containsObject:v21];

              if ((v23 & 1) == 0)
              {
                v24 = [v8 objectForKeyedSubscript:v17];
                [v24 addObject:v21];
              }
            }

            v14 = [assetSets countByEnumeratingWithState:&v86 objects:v102 count:16];
          }

          while (v14);
        }

        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        usageAliases = [v76 usageAliases];
        v26 = [usageAliases countByEnumeratingWithState:&v82 objects:v101 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v83;
          v69 = *v83;
          v70 = usageAliases;
          do
          {
            v29 = 0;
            v71 = v27;
            do
            {
              if (*v83 != v28)
              {
                objc_enumerationMutation(usageAliases);
              }

              v30 = *(*(&v82 + 1) + 8 * v29);
              usageAliases2 = [v76 usageAliases];
              v32 = [usageAliases2 objectForKeyedSubscript:v30];

              v33 = [(UAFConfigurationManager *)self getUsageAlias:v30 includeDeprecatedValues:0];
              if (v33)
              {
                v34 = v33;
                values = [v33 values];
                v75 = v32;
                v36 = [values objectForKeyedSubscript:v32];

                if (v36)
                {
                  v37 = v75;
                }

                else
                {
                  v38 = UAFGetLogCategory(&UAFLogContextClient);
                  v37 = v75;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v96 = "[UAFConfigurationManager applySubscriptions:]";
                    v97 = 2114;
                    v98 = v30;
                    v99 = 2114;
                    v100 = v75;
                    _os_log_debug_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEBUG, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                  }

                  v39 = [(UAFConfigurationManager *)self getUsageAlias:v30 includeDeprecatedValues:1];

                  v34 = v39;
                }

                v74 = v29;
                v40 = v34;
                values2 = [v34 values];
                v42 = [values2 objectForKeyedSubscript:v37];

                log = v40;
                values3 = [v40 values];
                v44 = [values3 objectForKeyedSubscript:v37];
                if (v44)
                {
                  v45 = v44;
                  v46 = [v42 count];

                  if (v46)
                  {
                    v80 = 0u;
                    v81 = 0u;
                    v78 = 0u;
                    v79 = 0u;
                    v47 = v42;
                    v48 = [v47 countByEnumeratingWithState:&v78 objects:v94 count:16];
                    if (v48)
                    {
                      v49 = v48;
                      v72 = v42;
                      v50 = *v79;
                      do
                      {
                        for (j = 0; j != v49; ++j)
                        {
                          if (*v79 != v50)
                          {
                            objc_enumerationMutation(v47);
                          }

                          v52 = *(*(&v78 + 1) + 8 * j);
                          if (!v8)
                          {
                            v8 = objc_opt_new();
                          }

                          v53 = [v8 objectForKeyedSubscript:v52];

                          if (!v53)
                          {
                            v54 = objc_opt_new();
                            [v8 setObject:v54 forKeyedSubscript:v52];
                          }

                          v55 = [v47 objectForKeyedSubscript:v52];
                          v56 = [v8 objectForKeyedSubscript:v52];
                          v57 = [v56 containsObject:v55];

                          if ((v57 & 1) == 0)
                          {
                            v58 = [v8 objectForKeyedSubscript:v52];
                            [v58 addObject:v55];
                          }
                        }

                        v49 = [v47 countByEnumeratingWithState:&v78 objects:v94 count:16];
                      }

                      while (v49);
                      v28 = v69;
                      usageAliases = v70;
                      v27 = v71;
                      v42 = v72;
                    }

                    v32 = v75;
LABEL_57:

                    v29 = v74;
                    goto LABEL_58;
                  }
                }

                else
                {
                }

                v47 = UAFGetLogCategory(&UAFLogContextClient);
                v32 = v75;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v96 = "[UAFConfigurationManager applySubscriptions:]";
                  v97 = 2114;
                  v98 = v30;
                  v99 = 2114;
                  v100 = v75;
                  _os_log_error_impl(&dword_1BCF2C000, v47, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                }

                goto LABEL_57;
              }

              log = UAFGetLogCategory(&UAFLogContextClient);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v96 = "[UAFConfigurationManager applySubscriptions:]";
                v97 = 2114;
                v98 = v30;
                _os_log_error_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@", buf, 0x16u);
              }

LABEL_58:

              ++v29;
            }

            while (v29 != v27);
            v27 = [usageAliases countByEnumeratingWithState:&v82 objects:v101 count:16];
          }

          while (v27);
        }

        v9 = v68 + 1;
      }

      while (v68 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v90 objects:v103 count:16];
    }

    while (v67);
  }

  v59 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v60 = v59;
  if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v60, OS_SIGNPOST_INTERVAL_END, spid, "Apply Configuration", "", buf, 2u);
  }

  v61 = *MEMORY[0x1E69E9840];

  return v8;
}

- (BOOL)isUsageLimitExceeded:(id)exceeded
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  exceededCopy = exceeded;
  v5 = [exceededCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(exceededCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [(UAFConfigurationManager *)self getAssetSet:v9, v16];
        if (v10)
        {
          v11 = [exceededCopy objectForKeyedSubscript:v9];
          v12 = [v10 isUsageLimitExceeded:v11];

          if (v12)
          {

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [exceededCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

@end