@interface PKDatabase
- (PKDatabase)initWithDatabase:(id)a3 externalProviders:(id)a4;
- (PKDatabaseDelegate)delegate;
- (id)_locked_cachedPlugInWithUUID:(id)a3;
- (id)addPlugIn:(id)a3;
- (id)annotationForIdentifier:(id)a3;
- (id)annotationForPlugIn:(id)a3;
- (id)cachedPlugInWithUUID:(id)a3;
- (id)createPlugInForProxy:(id)a3 uuid:(id)a4 discoveryInstanceUUID:(id)a5 extensionPointCache:(id)a6;
- (id)findPlugInAtPath:(id)a3;
- (id)findPlugInWithUUID:(id)a3;
- (id)findPlugInWithUUID:(id)a3 discoveryUUID:(id)a4 extensionPointCache:(id)a5;
- (id)findPlugInsForQuery:(id)a3 discoveryInstanceUUID:(id)a4 allVersions:(BOOL)a5;
- (id)plugInForExtensionRecord:(id)a3 discoveryInstanceUUID:(id)a4 extensionPointCache:(id)a5;
- (id)plugInForProxy:(id)a3 discoveryInstanceUUID:(id)a4 extensionPointCache:(id)a5;
- (id)plugInsWithExtensionPointName:(id)a3 platforms:(id)a4;
- (id)plugInsWithinApplication:(id)a3;
- (id)removePlugIn:(id)a3;
- (id)setAnnotation:(id)a3 forPlugIn:(id)a4;
- (void)_locked_autoElect:(id)a3;
- (void)notifyAnnotationChange;
- (void)pluginsDidInstall:(id)a3;
- (void)pluginsWillUninstall:(id)a3;
@end

@implementation PKDatabase

- (PKDatabase)initWithDatabase:(id)a3 externalProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = PKDatabase;
  v8 = [(PKDatabase *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_external, a4);
    v10 = [(PKDatabase *)v9 external];
    v11 = [v10 ls];
    v12 = [v11 defaultApplicationWorkspace];
    [(PKDatabase *)v9 setWorkspace:v12];

    v13 = [PKDAnnotationStore alloc];
    v14 = [(PKDatabase *)v9 external];
    v15 = [(PKDAnnotationStore *)v13 initWithDatabase:v6 externalProviders:v14];
    [(PKDatabase *)v9 setAnnotations:v15];

    v16 = objc_opt_new();
    [(PKDatabase *)v9 setCache:v16];

    [(PKDatabase *)v9 setCacheLock:0];
    v17 = [(PKDatabase *)v9 workspace];
    [v17 addObserver:v9];

    v18 = +[NSNotificationCenter defaultCenter];
    v19 = +[NSOperationQueue mainQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __49__PKDatabase_initWithDatabase_externalProviders___block_invoke;
    v27[3] = &unk_28A48;
    v20 = v9;
    v28 = v20;
    v21 = [v18 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v19 usingBlock:v27];
    [(PKDatabase *)v20 setRegionObserver:v21];

    v22 = [PKDPersonaCache alloc];
    v23 = [(PKDatabase *)v20 external];
    v24 = [(PKDPersonaCache *)v22 initWithExternalProviders:v23];
    personaCache = v20->_personaCache;
    v20->_personaCache = v24;
  }

  return v9;
}

void __49__PKDatabase_initWithDatabase_externalProviders___block_invoke(uint64_t a1)
{
  v2 = pklog_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "locale change detected; purging cache", v4, 2u);
  }

  os_unfair_lock_lock((*(a1 + 32) + 8));
  v3 = [*(a1 + 32) cache];
  [v3 removeAllObjects];

  os_unfair_lock_unlock((*(a1 + 32) + 8));
}

- (id)_locked_cachedPlugInWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  v5 = [(PKDatabase *)self cache];
  v6 = [v5 objectForKey:v4];

  v7 = pklog_handle_for_category();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [(PKDatabase *)v6 _locked_cachedPlugInWithUUID:v4, v7];
    }

    [(PKDatabase *)self setCacheHits:[(PKDatabase *)self cacheHits]+ 1];
  }

  else
  {
    if (v8)
    {
      [PKDatabase _locked_cachedPlugInWithUUID:];
    }

    [(PKDatabase *)self setCacheMisses:[(PKDatabase *)self cacheMisses]+ 1];
  }

  return v6;
}

- (id)cachedPlugInWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PKDatabase *)self _locked_cachedPlugInWithUUID:v4];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v5;
}

- (id)plugInForProxy:(id)a3 discoveryInstanceUUID:(id)a4 extensionPointCache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 pluginUUID];
  v12 = [(PKDatabase *)self cachedPlugInWithUUID:v11];

  v13 = +[PKDPlugIn nullPlugIn];

  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    if (!v12)
    {
      v14 = [v8 pluginUUID];
      v12 = [(PKDatabase *)self createPlugInForProxy:v8 uuid:v14 discoveryInstanceUUID:v9 extensionPointCache:v10];
    }

    v15 = v12;
    v12 = v15;
  }

  return v15;
}

- (id)plugInForExtensionRecord:(id)a3 discoveryInstanceUUID:(id)a4 extensionPointCache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 uniqueIdentifier];
  v12 = [(PKDatabase *)self cachedPlugInWithUUID:v11];

  v13 = +[PKDPlugIn nullPlugIn];

  if (v12 == v13)
  {
    v16 = 0;
  }

  else
  {
    if (!v12)
    {
      v14 = [v8 compatibilityObject];
      if (v14)
      {
        v15 = [v8 uniqueIdentifier];
        v12 = [(PKDatabase *)self createPlugInForProxy:v14 uuid:v15 discoveryInstanceUUID:v9 extensionPointCache:v10];
      }

      else
      {
        v12 = 0;
      }
    }

    v12 = v12;
    v16 = v12;
  }

  return v16;
}

- (id)createPlugInForProxy:(id)a3 uuid:(id)a4 discoveryInstanceUUID:(id)a5 extensionPointCache:(id)a6
{
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = [PKDPlugIn alloc];
  v15 = [(PKDatabase *)self personaCache];
  v16 = [(PKDatabase *)self external];
  v17 = [(PKDPlugIn *)v14 initWithLSData:v13 personaCache:v15 discoveryInstanceUUID:v12 extensionPointCache:v11 externalProviders:v16];

  v18 = v17;
  if (!v17)
  {
    v18 = +[PKDPlugIn nullPlugIn];
  }

  v19 = v18;
  if (!v17)
  {
  }

  v20 = [(PKDPlugIn *)v17 hasEntitlement:PKAutoElectEntitlement];
  os_unfair_lock_lock(&self->_cacheLock);
  if (v20)
  {
    [(PKDatabase *)self _locked_autoElect:v17];
  }

  if (v10)
  {
    v21 = [(PKDatabase *)self cache];
    [v21 setObject:v19 forKey:v10];
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  v22 = pklog_handle_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [PKDatabase createPlugInForProxy:uuid:discoveryInstanceUUID:extensionPointCache:];
  }

  return v17;
}

- (id)findPlugInsForQuery:(id)a3 discoveryInstanceUUID:(id)a4 allVersions:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  [v8 signpostBegin];
  if (!a5)
  {
    v11 = [v8 findPlugIns];
    if (v11)
    {
      v46 = v11;
      [v8 signpostEnd];
      v12 = 0;
      goto LABEL_33;
    }
  }

  v13 = [v8 criteria];
  v14 = [v13 count];

  v15 = [(PKDatabase *)self workspace];
  v16 = v15;
  if (v14)
  {
    v17 = [v8 criteria];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = __68__PKDatabase_findPlugInsForQuery_discoveryInstanceUUID_allVersions___block_invoke;
    v53[3] = &unk_28A70;
    v54 = v8;
    v12 = [v16 pluginsMatchingQuery:v17 applyFilter:v53];

    v18 = v54;
  }

  else
  {
    v12 = [v15 installedPlugins];

    v18 = pklog_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PKDatabase findPlugInsForQuery:v12 discoveryInstanceUUID:v18 allVersions:?];
    }
  }

  [v8 signpostEnd];
  os_unfair_lock_lock(&self->_cacheLock);
  v19 = [(PKDatabase *)self cacheHits];
  v20 = [(PKDatabase *)self cacheMisses];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (!v12)
  {
    v46 = 0;
    goto LABEL_33;
  }

  v42 = v20;
  v43 = v19;
  v44 = v10;
  v45 = v8;
  v21 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v47 = +[NSMutableDictionary dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v12 = v12;
  v22 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
  v46 = v21;
  if (!v22)
  {
    goto LABEL_29;
  }

  v23 = *v50;
  v48 = *v50;
  while (2)
  {
    v24 = 0;
    if (v22 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v22;
    }

    do
    {
      if (*v50 != v23)
      {
        objc_enumerationMutation(v12);
      }

      v26 = *(*(&v49 + 1) + 8 * v24);
      v27 = [v26 bundleURL];

      if (v27)
      {
        v28 = [v26 containingBundle];
        if ([v28 isPlaceholder])
        {
          v29 = pklog_handle_for_category();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = [v26 pluginUUID];
            [v26 pluginIdentifier];
            v31 = v12;
            v32 = self;
            v34 = v33 = v9;
            v35 = [v26 bundleVersion];
            *buf = 138413058;
            *v56 = v33;
            *&v56[8] = 2114;
            *&v56[10] = v30;
            *&v56[18] = 2112;
            *&v56[20] = v34;
            v57 = 2112;
            v58 = v35;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; containing app is a placeholder", buf, 0x2Au);

            v9 = v33;
            self = v32;
            v12 = v31;
            v21 = v46;
            goto LABEL_16;
          }
        }

        else
        {
          v29 = [(PKDatabase *)self plugInForProxy:v26 discoveryInstanceUUID:v9 extensionPointCache:v47];
          if (v29)
          {
            [v21 addObject:v29];
          }
        }

        goto LABEL_17;
      }

      v28 = pklog_handle_for_category();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v26 pluginUUID];
        v30 = [v26 pluginIdentifier];
        v36 = [v26 bundleVersion];
        *buf = 138413058;
        *v56 = v9;
        *&v56[8] = 2114;
        *&v56[10] = v29;
        *&v56[18] = 2112;
        *&v56[20] = v30;
        v57 = 2112;
        v58 = v36;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; nil bundleURL from LS proxy", buf, 0x2Au);

LABEL_16:
        v23 = v48;
LABEL_17:
      }

      ++v24;
    }

    while (v25 != v24);
    v22 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_29:

  os_unfair_lock_lock(&self->_cacheLock);
  v37 = [(PKDatabase *)self cacheHits];
  v38 = [(PKDatabase *)self cacheMisses];
  os_unfair_lock_unlock(&self->_cacheLock);
  v39 = pklog_handle_for_category();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v41 = [v21 count];
    *buf = 67109632;
    *v56 = v41;
    *&v56[4] = 2048;
    *&v56[6] = v37 - v43;
    *&v56[14] = 2048;
    *&v56[16] = v38 - v42 + v37 - v43;
    _os_log_debug_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "LS reported %u plug-ins (cached %qu/%qu)", buf, 0x1Cu);
  }

  v10 = v44;
  v8 = v45;
LABEL_33:

  objc_autoreleasePoolPop(v10);

  return v46;
}

- (id)findPlugInWithUUID:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(PKDatabase *)self findPlugInWithUUID:v4 discoveryUUID:0 extensionPointCache:v5];

  return v6;
}

- (id)findPlugInWithUUID:(id)a3 discoveryUUID:(id)a4 extensionPointCache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PKDatabase *)self cachedPlugInWithUUID:v8];
  v12 = +[PKDPlugIn nullPlugIn];

  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    if (!v11)
    {
      v13 = [(PKDatabase *)self external];
      v14 = [v13 ls];
      v15 = [v14 plugInKitProxyForUUID:v8];

      if (v15)
      {
        v11 = [(PKDatabase *)self createPlugInForProxy:v15 uuid:v8 discoveryInstanceUUID:v9 extensionPointCache:v10];
      }

      else
      {
        v17 = pklog_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PKDatabase findPlugInWithUUID:v8 discoveryUUID:? extensionPointCache:?];
        }

        v11 = 0;
      }
    }

    v11 = v11;
    v16 = v11;
  }

  return v16;
}

- (id)findPlugInAtPath:(id)a3
{
  v4 = a3;
  v5 = [(PKDatabase *)self external];
  v6 = [v5 ls];
  v7 = [v6 plugInKitProxyForURL:v4];

  if (v7)
  {
    v8 = [v7 pluginUUID];
    v9 = [(PKDatabase *)self findPlugInWithUUID:v8];
  }

  else
  {
    v8 = pklog_handle_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase findPlugInAtPath:v4];
    }

    v9 = 0;
  }

  return v9;
}

- (id)plugInsWithinApplication:(id)a3
{
  v4 = a3;
  v5 = [(PKDatabase *)self external];
  v6 = [v5 ls];
  v7 = [v6 applicationProxyForBundleURL:v4];

  v8 = [v7 plugInKitPlugins];
  if ([v8 count])
  {
    v18 = v4;
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
    v10 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        v14 = 0;
        if (v12 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12;
        }

        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [(PKDatabase *)self plugInForProxy:*(*(&v19 + 1) + 8 * v14) discoveryInstanceUUID:0 extensionPointCache:v10];
          if (v16)
          {
            [v9 addObject:v16];
          }

          ++v14;
        }

        while (v15 != v14);
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = v18;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)plugInsWithExtensionPointName:(id)a3 platforms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v9 = +[NSMutableDictionary dictionary];
  v10 = objc_opt_new();
  v25 = v6;
  [v10 setObject:v6 forKeyedSubscript:PKProtocolAttribute];
  if ([v7 count])
  {
    [v10 setObject:v7 forKeyedSubscript:PKExtensionPlatformsAttribute];
  }

  v24 = v7;
  v11 = [(PKDatabase *)self workspace];
  v12 = [v11 pluginsMatchingQuery:v10 applyFilter:&__block_literal_global];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = *v27;
    do
    {
      v16 = 0;
      if (v14 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v14;
      }

      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * v16);
        v19 = objc_autoreleasePoolPush();
        v20 = [(PKDatabase *)self plugInForProxy:v18 discoveryInstanceUUID:0 extensionPointCache:v9];
        if (v20)
        {
          [v8 addObject:v20];
        }

        objc_autoreleasePoolPop(v19);
        ++v16;
      }

      while (v17 != v16);
      v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  objc_autoreleasePoolPop(context);
  v21 = [v8 copy];

  return v21;
}

- (id)addPlugIn:(id)a3
{
  v4 = a3;
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Registering plugin at [%@]", &v12, 0xCu);
  }

  v7 = [(PKDatabase *)self workspace];
  v8 = [v7 registerPlugin:v4];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase addPlugIn:v4];
    }

    v9 = pkError();
  }

  return v9;
}

- (id)removePlugIn:(id)a3
{
  v4 = a3;
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 path];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unregistering plugin at [%@]", &v12, 0xCu);
  }

  v7 = [(PKDatabase *)self workspace];
  v8 = [v7 unregisterPlugin:v4];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase removePlugIn:v4];
    }

    v9 = pkError();
  }

  return v9;
}

- (id)annotationForPlugIn:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PKDatabase *)self annotations];
  v6 = [v5 annotationForPlugIn:v4];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (id)annotationForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PKDatabase *)self annotations];
  v6 = [v5 annotationForIdentifier:v4];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (id)setAnnotation:(id)a3 forPlugIn:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v8 = [(PKDatabase *)self annotations];
  [v8 setAnnotation:v7 forPlugIn:v6];

  os_unfair_lock_unlock(&self->_cacheLock);
  return 0;
}

- (void)notifyAnnotationChange
{
  v2 = pklog_handle_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Notifying continous discovery clients of an annotation change.", v3, 2u);
  }

  PKAnnotationNotificationPost();
}

- (void)_locked_autoElect:(id)a3
{
  v12 = a3;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  v4 = [(PKDatabase *)self annotations];
  v5 = [v4 annotationForPlugIn:v12];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &__NSDictionary0__struct;
  }

  v7 = PKAnnotationElectionKey;
  v8 = [v6 objectForKeyedSubscript:PKAnnotationElectionKey];
  v9 = v8;
  if (!v8 || ![v8 integerValue])
  {
    v10 = [(PKDatabase *)self annotations];
    v11 = [v6 dictionaryChanging:v7 to:&off_2A1C8];
    [v10 setAnnotation:v11 forPlugIn:v12];
  }
}

- (void)pluginsDidInstall:(id)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
  if (v3)
  {
    v4 = *v21;
    v16 = *v21;
    do
    {
      v5 = 0;
      if (v3 <= 1)
      {
        v6 = 1;
      }

      else
      {
        v6 = v3;
      }

      v17 = v6;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * v5);
        v8 = pklog_handle_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 pluginUUID];
          v10 = [v7 pluginIdentifier];
          v11 = [v7 bundleVersion];
          v12 = [v7 bundleIdentifier];
          v19 = [v7 bundleURL];
          v13 = [v19 path];
          v14 = [v7 containingBundle];
          v15 = [v14 bundleIdentifier];
          *buf = 138544642;
          v25 = v9;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v11;
          v30 = 2112;
          v31 = v12;
          v32 = 2112;
          v33 = v13;
          v34 = 2112;
          v35 = v15;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] plugin INSTALLED; bundleID: [%@], path: [%@], contained in [%@]", buf, 0x3Eu);

          v4 = v16;
          v6 = v17;
        }

        pkdMessageTraceInstall(v7);
        ++v5;
      }

      while (v6 != v5);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
    }

    while (v3);
  }
}

- (void)pluginsWillUninstall:(id)a3
{
  v4 = a3;
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[PKDatabase pluginsWillUninstall:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v6)
  {
    v30 = *v32;
    v7 = &selRef_plugInForProxy_discoveryInstanceUUID_extensionPointCache_;
    v25 = self;
    do
    {
      v8 = 0;
      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v26 = v9;
      do
      {
        if (*v32 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v8);
        v11 = pklog_handle_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v10 pluginUUID];
          v12 = [v10 pluginIdentifier];
          v13 = [v10 bundleVersion];
          v14 = [v10 bundleIdentifier];
          v28 = [v10 bundleURL];
          v15 = [v28 path];
          v16 = [v10 containingBundle];
          v17 = [v16 bundleIdentifier];
          *buf = 138544642;
          v36 = v29;
          v37 = 2112;
          v38 = v12;
          v18 = v12;
          v39 = 2112;
          v40 = v13;
          v41 = 2112;
          v42 = v14;
          v43 = 2112;
          v44 = v15;
          v45 = 2112;
          v46 = v17;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] plugin UNINSTALLED; bundleID: [%@], path: [%@], contained in [%@]", buf, 0x3Eu);

          v7 = &selRef_plugInForProxy_discoveryInstanceUUID_extensionPointCache_;
          v9 = v26;

          self = v25;
        }

        v19 = [v10 pluginUUID];
        os_unfair_lock_lock(&self->_cacheLock);
        v20 = [(PKDatabase *)self _locked_cachedPlugInWithUUID:v19];
        v21 = [(PKDatabase *)self cache];
        [v21 removeObjectForKey:v19];

        os_unfair_lock_unlock(&self->_cacheLock);
        v22 = [v7 + 264 nullPlugIn];

        if (v20 != v22)
        {
          pkdMessageTraceUninstall(v20);
        }

        ++v8;
      }

      while (v9 != v8);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v23 = [(PKDatabase *)self delegate];
  [v23 removedPlugIns:obj];
}

- (PKDatabaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_locked_cachedPlugInWithUUID:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = +[PKDPlugIn nullPlugIn];
  OUTLINED_FUNCTION_2_0();
  v7 = a2;
  _os_log_debug_impl(&dword_0, a3, OS_LOG_TYPE_DEBUG, "%scache hit for %@", v6, 0x16u);
}

- (void)createPlugInForProxy:uuid:discoveryInstanceUUID:extensionPointCache:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v3 = v0;
  _os_log_debug_impl(&dword_0, v1, OS_LOG_TYPE_DEBUG, "%scache add for %@", v2, 0x16u);
}

- (void)findPlugInsForQuery:(void *)a1 discoveryInstanceUUID:(NSObject *)a2 allVersions:.cold.1(void *a1, NSObject *a2)
{
  v4[0] = 67109378;
  v4[1] = [a1 count];
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "%d installedPlugins: %@", v4, 0x12u);
}

- (void)findPlugInWithUUID:(void *)a1 discoveryUUID:extensionPointCache:.cold.1(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_1_0(&dword_0, v2, v3, "LaunchServices cannot find plugin with UUID: %{public}@", v4, v5, v6, v7, 2u);
}

- (void)findPlugInAtPath:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v2, v3, "LaunchServices cannot find plugin at path: [%@]", v4, v5, v6, v7, v8);
}

- (void)addPlugIn:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v2, v3, "Registering plugin at [%@] failed", v4, v5, v6, v7, v8);
}

- (void)removePlugIn:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v2, v3, "Unregistering plugin at [%@] failed", v4, v5, v6, v7, v8);
}

@end