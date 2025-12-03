@interface PKDatabase
- (PKDatabase)initWithDatabase:(id)database externalProviders:(id)providers;
- (PKDatabaseDelegate)delegate;
- (id)_locked_cachedPlugInWithUUID:(id)d;
- (id)addPlugIn:(id)in;
- (id)annotationForIdentifier:(id)identifier;
- (id)annotationForPlugIn:(id)in;
- (id)cachedPlugInWithUUID:(id)d;
- (id)createPlugInForProxy:(id)proxy uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache;
- (id)findPlugInAtPath:(id)path;
- (id)findPlugInWithUUID:(id)d;
- (id)findPlugInWithUUID:(id)d discoveryUUID:(id)iD extensionPointCache:(id)cache;
- (id)findPlugInsForQuery:(id)query discoveryInstanceUUID:(id)d allVersions:(BOOL)versions;
- (id)plugInForExtensionRecord:(id)record discoveryInstanceUUID:(id)d extensionPointCache:(id)cache;
- (id)plugInForProxy:(id)proxy discoveryInstanceUUID:(id)d extensionPointCache:(id)cache;
- (id)plugInsWithExtensionPointName:(id)name platforms:(id)platforms;
- (id)plugInsWithinApplication:(id)application;
- (id)removePlugIn:(id)in;
- (id)setAnnotation:(id)annotation forPlugIn:(id)in;
- (void)_locked_autoElect:(id)elect;
- (void)notifyAnnotationChange;
- (void)pluginsDidInstall:(id)install;
- (void)pluginsWillUninstall:(id)uninstall;
@end

@implementation PKDatabase

- (PKDatabase)initWithDatabase:(id)database externalProviders:(id)providers
{
  databaseCopy = database;
  providersCopy = providers;
  v29.receiver = self;
  v29.super_class = PKDatabase;
  v8 = [(PKDatabase *)&v29 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_external, providers);
    external = [(PKDatabase *)v9 external];
    v11 = [external ls];
    defaultApplicationWorkspace = [v11 defaultApplicationWorkspace];
    [(PKDatabase *)v9 setWorkspace:defaultApplicationWorkspace];

    v13 = [PKDAnnotationStore alloc];
    external2 = [(PKDatabase *)v9 external];
    v15 = [(PKDAnnotationStore *)v13 initWithDatabase:databaseCopy externalProviders:external2];
    [(PKDatabase *)v9 setAnnotations:v15];

    v16 = objc_opt_new();
    [(PKDatabase *)v9 setCache:v16];

    [(PKDatabase *)v9 setCacheLock:0];
    workspace = [(PKDatabase *)v9 workspace];
    [workspace addObserver:v9];

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
    external3 = [(PKDatabase *)v20 external];
    v24 = [(PKDPersonaCache *)v22 initWithExternalProviders:external3];
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

- (id)_locked_cachedPlugInWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  cache = [(PKDatabase *)self cache];
  v6 = [cache objectForKey:dCopy];

  v7 = pklog_handle_for_category();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      [(PKDatabase *)v6 _locked_cachedPlugInWithUUID:dCopy, v7];
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

- (id)cachedPlugInWithUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(PKDatabase *)self _locked_cachedPlugInWithUUID:dCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v5;
}

- (id)plugInForProxy:(id)proxy discoveryInstanceUUID:(id)d extensionPointCache:(id)cache
{
  proxyCopy = proxy;
  dCopy = d;
  cacheCopy = cache;
  pluginUUID = [proxyCopy pluginUUID];
  v12 = [(PKDatabase *)self cachedPlugInWithUUID:pluginUUID];

  v13 = +[PKDPlugIn nullPlugIn];

  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    if (!v12)
    {
      pluginUUID2 = [proxyCopy pluginUUID];
      v12 = [(PKDatabase *)self createPlugInForProxy:proxyCopy uuid:pluginUUID2 discoveryInstanceUUID:dCopy extensionPointCache:cacheCopy];
    }

    v15 = v12;
    v12 = v15;
  }

  return v15;
}

- (id)plugInForExtensionRecord:(id)record discoveryInstanceUUID:(id)d extensionPointCache:(id)cache
{
  recordCopy = record;
  dCopy = d;
  cacheCopy = cache;
  uniqueIdentifier = [recordCopy uniqueIdentifier];
  v12 = [(PKDatabase *)self cachedPlugInWithUUID:uniqueIdentifier];

  v13 = +[PKDPlugIn nullPlugIn];

  if (v12 == v13)
  {
    v16 = 0;
  }

  else
  {
    if (!v12)
    {
      compatibilityObject = [recordCopy compatibilityObject];
      if (compatibilityObject)
      {
        uniqueIdentifier2 = [recordCopy uniqueIdentifier];
        v12 = [(PKDatabase *)self createPlugInForProxy:compatibilityObject uuid:uniqueIdentifier2 discoveryInstanceUUID:dCopy extensionPointCache:cacheCopy];
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

- (id)createPlugInForProxy:(id)proxy uuid:(id)uuid discoveryInstanceUUID:(id)d extensionPointCache:(id)cache
{
  uuidCopy = uuid;
  cacheCopy = cache;
  dCopy = d;
  proxyCopy = proxy;
  v14 = [PKDPlugIn alloc];
  personaCache = [(PKDatabase *)self personaCache];
  external = [(PKDatabase *)self external];
  v17 = [(PKDPlugIn *)v14 initWithLSData:proxyCopy personaCache:personaCache discoveryInstanceUUID:dCopy extensionPointCache:cacheCopy externalProviders:external];

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

  if (uuidCopy)
  {
    cache = [(PKDatabase *)self cache];
    [cache setObject:v19 forKey:uuidCopy];
  }

  os_unfair_lock_unlock(&self->_cacheLock);
  v22 = pklog_handle_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [PKDatabase createPlugInForProxy:uuid:discoveryInstanceUUID:extensionPointCache:];
  }

  return v17;
}

- (id)findPlugInsForQuery:(id)query discoveryInstanceUUID:(id)d allVersions:(BOOL)versions
{
  queryCopy = query;
  dCopy = d;
  v10 = objc_autoreleasePoolPush();
  [queryCopy signpostBegin];
  if (!versions)
  {
    findPlugIns = [queryCopy findPlugIns];
    if (findPlugIns)
    {
      v46 = findPlugIns;
      [queryCopy signpostEnd];
      installedPlugins = 0;
      goto LABEL_33;
    }
  }

  criteria = [queryCopy criteria];
  v14 = [criteria count];

  workspace = [(PKDatabase *)self workspace];
  v16 = workspace;
  if (v14)
  {
    criteria2 = [queryCopy criteria];
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = __68__PKDatabase_findPlugInsForQuery_discoveryInstanceUUID_allVersions___block_invoke;
    v53[3] = &unk_28A70;
    v54 = queryCopy;
    installedPlugins = [v16 pluginsMatchingQuery:criteria2 applyFilter:v53];

    v18 = v54;
  }

  else
  {
    installedPlugins = [workspace installedPlugins];

    v18 = pklog_handle_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PKDatabase findPlugInsForQuery:installedPlugins discoveryInstanceUUID:v18 allVersions:?];
    }
  }

  [queryCopy signpostEnd];
  os_unfair_lock_lock(&self->_cacheLock);
  cacheHits = [(PKDatabase *)self cacheHits];
  cacheMisses = [(PKDatabase *)self cacheMisses];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (!installedPlugins)
  {
    v46 = 0;
    goto LABEL_33;
  }

  v42 = cacheMisses;
  v43 = cacheHits;
  v44 = v10;
  v45 = queryCopy;
  v21 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(installedPlugins, "count")}];
  v47 = +[NSMutableDictionary dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  installedPlugins = installedPlugins;
  v22 = [installedPlugins countByEnumeratingWithState:&v49 objects:v59 count:16];
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
        objc_enumerationMutation(installedPlugins);
      }

      v26 = *(*(&v49 + 1) + 8 * v24);
      bundleURL = [v26 bundleURL];

      if (bundleURL)
      {
        containingBundle = [v26 containingBundle];
        if ([containingBundle isPlaceholder])
        {
          pluginUUID2 = pklog_handle_for_category();
          if (os_log_type_enabled(pluginUUID2, OS_LOG_TYPE_INFO))
          {
            pluginUUID = [v26 pluginUUID];
            [v26 pluginIdentifier];
            v31 = installedPlugins;
            selfCopy = self;
            v34 = v33 = dCopy;
            bundleVersion = [v26 bundleVersion];
            *buf = 138413058;
            *v56 = v33;
            *&v56[8] = 2114;
            *&v56[10] = pluginUUID;
            *&v56[18] = 2112;
            *&v56[20] = v34;
            v57 = 2112;
            v58 = bundleVersion;
            _os_log_impl(&dword_0, pluginUUID2, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; containing app is a placeholder", buf, 0x2Au);

            dCopy = v33;
            self = selfCopy;
            installedPlugins = v31;
            v21 = v46;
            goto LABEL_16;
          }
        }

        else
        {
          pluginUUID2 = [(PKDatabase *)self plugInForProxy:v26 discoveryInstanceUUID:dCopy extensionPointCache:v47];
          if (pluginUUID2)
          {
            [v21 addObject:pluginUUID2];
          }
        }

        goto LABEL_17;
      }

      containingBundle = pklog_handle_for_category();
      if (os_log_type_enabled(containingBundle, OS_LOG_TYPE_INFO))
      {
        pluginUUID2 = [v26 pluginUUID];
        pluginUUID = [v26 pluginIdentifier];
        bundleVersion2 = [v26 bundleVersion];
        *buf = 138413058;
        *v56 = dCopy;
        *&v56[8] = 2114;
        *&v56[10] = pluginUUID2;
        *&v56[18] = 2112;
        *&v56[20] = pluginUUID;
        v57 = 2112;
        v58 = bundleVersion2;
        _os_log_impl(&dword_0, containingBundle, OS_LOG_TYPE_INFO, "[d %@] [u %{public}@] [%@(%@)] rejecting; nil bundleURL from LS proxy", buf, 0x2Au);

LABEL_16:
        v23 = v48;
LABEL_17:
      }

      ++v24;
    }

    while (v25 != v24);
    v22 = [installedPlugins countByEnumeratingWithState:&v49 objects:v59 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_29:

  os_unfair_lock_lock(&self->_cacheLock);
  cacheHits2 = [(PKDatabase *)self cacheHits];
  cacheMisses2 = [(PKDatabase *)self cacheMisses];
  os_unfair_lock_unlock(&self->_cacheLock);
  v39 = pklog_handle_for_category();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    v41 = [v21 count];
    *buf = 67109632;
    *v56 = v41;
    *&v56[4] = 2048;
    *&v56[6] = cacheHits2 - v43;
    *&v56[14] = 2048;
    *&v56[16] = cacheMisses2 - v42 + cacheHits2 - v43;
    _os_log_debug_impl(&dword_0, v39, OS_LOG_TYPE_DEBUG, "LS reported %u plug-ins (cached %qu/%qu)", buf, 0x1Cu);
  }

  v10 = v44;
  queryCopy = v45;
LABEL_33:

  objc_autoreleasePoolPop(v10);

  return v46;
}

- (id)findPlugInWithUUID:(id)d
{
  dCopy = d;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(PKDatabase *)self findPlugInWithUUID:dCopy discoveryUUID:0 extensionPointCache:v5];

  return v6;
}

- (id)findPlugInWithUUID:(id)d discoveryUUID:(id)iD extensionPointCache:(id)cache
{
  dCopy = d;
  iDCopy = iD;
  cacheCopy = cache;
  v11 = [(PKDatabase *)self cachedPlugInWithUUID:dCopy];
  v12 = +[PKDPlugIn nullPlugIn];

  if (v11 == v12)
  {
    v16 = 0;
  }

  else
  {
    if (!v11)
    {
      external = [(PKDatabase *)self external];
      v14 = [external ls];
      v15 = [v14 plugInKitProxyForUUID:dCopy];

      if (v15)
      {
        v11 = [(PKDatabase *)self createPlugInForProxy:v15 uuid:dCopy discoveryInstanceUUID:iDCopy extensionPointCache:cacheCopy];
      }

      else
      {
        v17 = pklog_handle_for_category();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PKDatabase findPlugInWithUUID:dCopy discoveryUUID:? extensionPointCache:?];
        }

        v11 = 0;
      }
    }

    v11 = v11;
    v16 = v11;
  }

  return v16;
}

- (id)findPlugInAtPath:(id)path
{
  pathCopy = path;
  external = [(PKDatabase *)self external];
  v6 = [external ls];
  v7 = [v6 plugInKitProxyForURL:pathCopy];

  if (v7)
  {
    pluginUUID = [v7 pluginUUID];
    v9 = [(PKDatabase *)self findPlugInWithUUID:pluginUUID];
  }

  else
  {
    pluginUUID = pklog_handle_for_category();
    if (os_log_type_enabled(pluginUUID, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase findPlugInAtPath:pathCopy];
    }

    v9 = 0;
  }

  return v9;
}

- (id)plugInsWithinApplication:(id)application
{
  applicationCopy = application;
  external = [(PKDatabase *)self external];
  v6 = [external ls];
  v7 = [v6 applicationProxyForBundleURL:applicationCopy];

  plugInKitPlugins = [v7 plugInKitPlugins];
  if ([plugInKitPlugins count])
  {
    v18 = applicationCopy;
    v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [plugInKitPlugins count]);
    v10 = +[NSMutableDictionary dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = plugInKitPlugins;
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

    applicationCopy = v18;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)plugInsWithExtensionPointName:(id)name platforms:(id)platforms
{
  nameCopy = name;
  platformsCopy = platforms;
  v8 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v9 = +[NSMutableDictionary dictionary];
  v10 = objc_opt_new();
  v25 = nameCopy;
  [v10 setObject:nameCopy forKeyedSubscript:PKProtocolAttribute];
  if ([platformsCopy count])
  {
    [v10 setObject:platformsCopy forKeyedSubscript:PKExtensionPlatformsAttribute];
  }

  v24 = platformsCopy;
  workspace = [(PKDatabase *)self workspace];
  v12 = [workspace pluginsMatchingQuery:v10 applyFilter:&__block_literal_global];

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

- (id)addPlugIn:(id)in
{
  inCopy = in;
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [inCopy path];
    v12 = 138412290;
    v13 = path;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Registering plugin at [%@]", &v12, 0xCu);
  }

  workspace = [(PKDatabase *)self workspace];
  v8 = [workspace registerPlugin:inCopy];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase addPlugIn:inCopy];
    }

    v9 = pkError();
  }

  return v9;
}

- (id)removePlugIn:(id)in
{
  inCopy = in;
  v5 = pklog_handle_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    path = [inCopy path];
    v12 = 138412290;
    v13 = path;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unregistering plugin at [%@]", &v12, 0xCu);
  }

  workspace = [(PKDatabase *)self workspace];
  v8 = [workspace unregisterPlugin:inCopy];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = pklog_handle_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PKDatabase removePlugIn:inCopy];
    }

    v9 = pkError();
  }

  return v9;
}

- (id)annotationForPlugIn:(id)in
{
  inCopy = in;
  os_unfair_lock_lock(&self->_cacheLock);
  annotations = [(PKDatabase *)self annotations];
  v6 = [annotations annotationForPlugIn:inCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (id)annotationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_cacheLock);
  annotations = [(PKDatabase *)self annotations];
  v6 = [annotations annotationForIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v6;
}

- (id)setAnnotation:(id)annotation forPlugIn:(id)in
{
  inCopy = in;
  annotationCopy = annotation;
  os_unfair_lock_lock(&self->_cacheLock);
  annotations = [(PKDatabase *)self annotations];
  [annotations setAnnotation:annotationCopy forPlugIn:inCopy];

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

- (void)_locked_autoElect:(id)elect
{
  electCopy = elect;
  os_unfair_lock_assert_owner(&self->_cacheLock);
  annotations = [(PKDatabase *)self annotations];
  v5 = [annotations annotationForPlugIn:electCopy];

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
    annotations2 = [(PKDatabase *)self annotations];
    v11 = [v6 dictionaryChanging:v7 to:&off_2A1C8];
    [annotations2 setAnnotation:v11 forPlugIn:electCopy];
  }
}

- (void)pluginsDidInstall:(id)install
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = install;
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
          pluginUUID = [v7 pluginUUID];
          pluginIdentifier = [v7 pluginIdentifier];
          bundleVersion = [v7 bundleVersion];
          bundleIdentifier = [v7 bundleIdentifier];
          bundleURL = [v7 bundleURL];
          path = [bundleURL path];
          containingBundle = [v7 containingBundle];
          bundleIdentifier2 = [containingBundle bundleIdentifier];
          *buf = 138544642;
          v25 = pluginUUID;
          v26 = 2112;
          v27 = pluginIdentifier;
          v28 = 2112;
          v29 = bundleVersion;
          v30 = 2112;
          v31 = bundleIdentifier;
          v32 = 2112;
          v33 = path;
          v34 = 2112;
          v35 = bundleIdentifier2;
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

- (void)pluginsWillUninstall:(id)uninstall
{
  uninstallCopy = uninstall;
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
  obj = uninstallCopy;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v6)
  {
    v30 = *v32;
    v7 = &selRef_plugInForProxy_discoveryInstanceUUID_extensionPointCache_;
    selfCopy = self;
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
          pluginUUID = [v10 pluginUUID];
          pluginIdentifier = [v10 pluginIdentifier];
          bundleVersion = [v10 bundleVersion];
          bundleIdentifier = [v10 bundleIdentifier];
          bundleURL = [v10 bundleURL];
          path = [bundleURL path];
          containingBundle = [v10 containingBundle];
          bundleIdentifier2 = [containingBundle bundleIdentifier];
          *buf = 138544642;
          v36 = pluginUUID;
          v37 = 2112;
          v38 = pluginIdentifier;
          v18 = pluginIdentifier;
          v39 = 2112;
          v40 = bundleVersion;
          v41 = 2112;
          v42 = bundleIdentifier;
          v43 = 2112;
          v44 = path;
          v45 = 2112;
          v46 = bundleIdentifier2;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] plugin UNINSTALLED; bundleID: [%@], path: [%@], contained in [%@]", buf, 0x3Eu);

          v7 = &selRef_plugInForProxy_discoveryInstanceUUID_extensionPointCache_;
          v9 = v26;

          self = selfCopy;
        }

        pluginUUID2 = [v10 pluginUUID];
        os_unfair_lock_lock(&self->_cacheLock);
        v20 = [(PKDatabase *)self _locked_cachedPlugInWithUUID:pluginUUID2];
        cache = [(PKDatabase *)self cache];
        [cache removeObjectForKey:pluginUUID2];

        os_unfair_lock_unlock(&self->_cacheLock);
        nullPlugIn = [v7 + 264 nullPlugIn];

        if (v20 != nullPlugIn)
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
  delegate = [(PKDatabase *)self delegate];
  [delegate removedPlugIns:obj];
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