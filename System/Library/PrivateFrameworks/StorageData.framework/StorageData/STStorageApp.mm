@interface STStorageApp
+ (id)sizeOfPluginKitContainers;
- (BOOL)isApple;
- (BOOL)isDeletable;
- (BOOL)isDemotable;
- (BOOL)isDemoted;
- (BOOL)userVisible;
- (LSApplicationRecord)appRecord;
- (NSArray)documents;
- (NSDictionary)infoDict;
- (STSizeVector)appSize;
- (STSizeVector)internalSizes;
- (STStorageApp)initWithAppRecord:(id)record usageBundle:(id)bundle;
- (STStorageApp)initWithBundleIdentifier:(id)identifier;
- (STStorageApp)initWithBundleIdentifier:(id)identifier name:(id)name vendorName:(id)vendorName;
- (id)appPath;
- (id)appProxy;
- (id)dataPath;
- (id)updateAppSizes;
- (int)state;
- (int64_t)docsAndDataSize;
- (int64_t)dynamicSize;
- (int64_t)sizeOfMLData;
- (int64_t)staticSize;
- (int64_t)totalSize;
- (void)_postNotify:(id)notify;
- (void)addNumber:(int64_t)number toDict:(id)dict forKey:(id)key;
- (void)notifyAppSizeChanged;
- (void)postNotify:(id)notify;
- (void)refreshAppState;
- (void)setAppRecord:(id)record;
- (void)setExternalSizes:(id)sizes;
@end

@implementation STStorageApp

- (STStorageApp)initWithAppRecord:(id)record usageBundle:(id)bundle
{
  recordCopy = record;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = STStorageApp;
  v8 = [(STStorageApp *)&v12 init];
  if (v8)
  {
    v9 = +[STSizeVector zero];
    extSizesVar = v8->_extSizesVar;
    v8->_extSizesVar = v9;

    [(STStorageApp *)v8 setAppRecord:recordCopy];
    objc_storeStrong(&v8->_usageBundle, bundle);
  }

  return v8;
}

- (STStorageApp)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v27 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = v6;
    code = [v6 code];
    STLog(2, @"%li loading application record for %@", v9, v10, v11, v12, v13, v14, code);

    v26 = 0;
    v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:identifierCopy error:&v26];
    v16 = v26;

    if (v16)
    {
      code2 = [v16 code];
      STLog(2, @"%li loading placeholder application record for %@", v18, v19, v20, v21, v22, v23, code2);

      selfCopy2 = 0;
    }

    else
    {
      self = [(STStorageApp *)self initWithAppRecord:v15];
      selfCopy2 = self;
    }
  }

  else
  {
    self = [(STStorageApp *)self initWithAppRecord:v5];
    selfCopy2 = self;
    v15 = v5;
  }

  return selfCopy2;
}

- (STStorageApp)initWithBundleIdentifier:(id)identifier name:(id)name vendorName:(id)vendorName
{
  identifierCopy = identifier;
  nameCopy = name;
  vendorNameCopy = vendorName;
  v16.receiver = self;
  v16.super_class = STStorageApp;
  v12 = [(STStorageApp *)&v16 init];
  if (v12)
  {
    v13 = +[STSizeVector zero];
    extSizesVar = v12->_extSizesVar;
    v12->_extSizesVar = v13;

    objc_storeStrong(&v12->_bundleIdentifier, identifier);
    objc_storeStrong(&v12->_appIdentifier, identifier);
    v12->_appKind = 2;
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v12->_vendorName, vendorName);
  }

  return v12;
}

- (LSApplicationRecord)appRecord
{
  if (self->_lsid && (v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithPersistentIdentifier:self->_lsid]) != 0)
  {
    v4 = v3;
    v5 = v4;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CC1E70]);
    bundleIdentifier = self->_bundleIdentifier;
    v19 = 0;
    v5 = [v6 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v19];
    v8 = v19;
    v9 = v8;
    if (v8)
    {
      code = [v8 code];
      v18 = self->_bundleIdentifier;
      STLog(2, @"%li loading application record for %@", v11, v12, v13, v14, v15, v16, code);
      v4 = 0;
    }

    else
    {
      v4 = v5;
    }
  }

  return v4;
}

- (int)state
{
  if (![(STStorageApp *)self isPseudoApp])
  {
    appRecord = [(STStorageApp *)self appRecord];
    applicationState = [appRecord applicationState];
    if ([applicationState isValid])
    {
      if ([applicationState isInstalled])
      {
        v3 = 0;
LABEL_11:

        return v3;
      }

      if ([applicationState isDowngraded])
      {
        v3 = 3;
        goto LABEL_11;
      }

      installType = [appRecord installType];
      if (installType <= 0xA)
      {
        v3 = dword_26BBAB1A0[installType];
        goto LABEL_11;
      }
    }

    v3 = 5;
    goto LABEL_11;
  }

  return 0;
}

- (id)appProxy
{
  appRecord = [(STStorageApp *)self appRecord];
  compatibilityObject = [appRecord compatibilityObject];

  return compatibilityObject;
}

- (void)setAppRecord:(id)record
{
  recordCopy = record;
  persistentIdentifier = [recordCopy persistentIdentifier];
  lsid = self->_lsid;
  self->_lsid = persistentIdentifier;

  bundleIdentifier = [recordCopy bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = bundleIdentifier;

  objc_storeStrong(&self->_appIdentifier, self->_bundleIdentifier);
  applicationState = [recordCopy applicationState];
  iTunesMetadata = [recordCopy iTunesMetadata];
  if ([applicationState isInstalled] & 1) != 0 || (objc_msgSend(applicationState, "isPlaceholder"))
  {
    localizedName = [recordCopy localizedName];
  }

  else
  {
    localizedName = [iTunesMetadata itemName];
  }

  v11 = localizedName;
  if ([localizedName length])
  {
    v12 = v11;
    name = self->_name;
    self->_name = v12;
  }

  else
  {
    name = [recordCopy compatibilityObject];
    localizedName2 = [name localizedName];
    v15 = self->_name;
    self->_name = localizedName2;
  }

  artistName = [iTunesMetadata artistName];
  if (-[STStorageApp isApple](self, "isApple") && (![artistName length] || objc_msgSend(artistName, "isEqualToString:", @"Apple")))
  {
    v17 = @"Apple Inc.";

    artistName = v17;
  }

  objc_storeStrong(&self->_vendorName, artistName);
  appRecord = [(STStorageApp *)self appRecord];
  shortVersionString = [appRecord shortVersionString];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [shortVersionString stringValue];
    }

    else
    {
      stringValue = &stru_287C88100;
    }

    shortVersionString = stringValue;
  }

  versionString = self->_versionString;
  self->_versionString = shortVersionString;
  v22 = shortVersionString;

  if ([recordCopy isDeletable])
  {
    isDeletableSystemApplication = [recordCopy isDeletableSystemApplication];
  }

  else
  {
    isDeletableSystemApplication = 1;
  }

  self->_appKind = isDeletableSystemApplication;
  self->_isPseudoApp = 0;
  appClipMetadata = [recordCopy appClipMetadata];
  self->_isAppClip = appClipMetadata != 0;

  supportsOpenInPlace = [recordCopy supportsOpenInPlace];
  isFileSharingEnabled = 0;
  if (supportsOpenInPlace)
  {
    isFileSharingEnabled = [recordCopy isFileSharingEnabled];
  }

  self->_isDocumentApp = isFileSharingEnabled;
  v27 = STPersonaCopyPersonaUniqueStrings();
  bundleIdentifier2 = [recordCopy bundleIdentifier];
  linkedParentApplication = [recordCopy linkedParentApplication];
  bundleIdentifier3 = [linkedParentApplication bundleIdentifier];
  parentAppIdentifier = self->_parentAppIdentifier;
  self->_parentAppIdentifier = bundleIdentifier3;

  v32 = [STContainer containerWithIdentifier:bundleIdentifier2 containerClass:1 personaUniqueString:0];
  appContainer = self->_appContainer;
  self->_appContainer = v32;

  v34 = DataContainersFromAppRecordWithPersonas(recordCopy, v27);
  dataContainers = self->_dataContainers;
  self->_dataContainers = v34;
}

- (BOOL)isApple
{
  appRecord = [(STStorageApp *)self appRecord];
  v4 = appRecord;
  if (appRecord)
  {
    v5 = [appRecord developerType] == 1;
  }

  else
  {
    v5 = [(NSString *)self->_bundleIdentifier hasPrefix:@"com.apple."];
  }

  return v5;
}

- (BOOL)userVisible
{
  if (![(STStorageApp *)self forceVisible])
  {
    if ([(STStorageApp *)self forceHidden])
    {
      return 0;
    }

    name = [(STStorageApp *)self name];
    v5 = [name length];

    if (!v5)
    {
      return 0;
    }

    appRecord = [(STStorageApp *)self appRecord];
    v7 = appRecord;
    if (!appRecord)
    {
      goto LABEL_21;
    }

    applicationState = [appRecord applicationState];
    isRestricted = [applicationState isRestricted];

    if (isRestricted)
    {
      v3 = 0;
LABEL_17:

      return v3;
    }

    if ([v7 developerType] == 1 && (objc_msgSend(v7, "isDeletable") & 1) == 0 && (objc_msgSend(v7, "isSystemPlaceholder") & 1) == 0)
    {
LABEL_21:
      if (!self->_usageBundle)
      {
        mediaTypes = [(STStorageApp *)self mediaTypes];
        v11 = [mediaTypes count];

        if (!v11)
        {
          externalSizes = [(STStorageApp *)self externalSizes];
          isZero = [externalSizes isZero];

          if (isZero)
          {
            v3 = [(STStorageApp *)self appKind]== 2;
            goto LABEL_17;
          }
        }
      }
    }

    v3 = 1;
    goto LABEL_17;
  }

  return 1;
}

- (void)_postNotify:(id)notify
{
  v4 = MEMORY[0x277CCAB98];
  notifyCopy = notify;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter postNotificationName:notifyCopy object:self->_bundleIdentifier];
}

- (void)postNotify:(id)notify
{
  notifyCopy = notify;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__STStorageApp_postNotify___block_invoke;
  v6[3] = &unk_279D1CEB0;
  v6[4] = self;
  v7 = notifyCopy;
  v5 = notifyCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __27__STStorageApp_postNotify___block_invoke(uint64_t a1)
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel__postNotify_ object:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 performSelector:sel__postNotify_ withObject:v3 afterDelay:0.1];
}

- (BOOL)isDeletable
{
  if (![(NSString *)self->_bundleIdentifier isEqualToString:@"com.apple.Health"])
  {
    appRecord = [(STStorageApp *)self appRecord];
    v5 = appRecord;
    if (appRecord)
    {
      if (([appRecord isDeletableSystemApplication] & 1) != 0 || objc_msgSend(v5, "isSystemPlaceholder"))
      {
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        isSystemAppRemovalAllowed = [mEMORY[0x277D262A0] isSystemAppRemovalAllowed];
LABEL_7:
        v3 = isSystemAppRemovalAllowed;

LABEL_11:
        return v3;
      }

      if ([v5 isDeletable])
      {
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        isSystemAppRemovalAllowed = [mEMORY[0x277D262A0] isAppRemovalAllowed];
        goto LABEL_7;
      }
    }

    v3 = 0;
    goto LABEL_11;
  }

  return 0;
}

- (BOOL)isDemotable
{
  appRecord = [(STStorageApp *)self appRecord];
  v3 = appRecord;
  if (appRecord)
  {
    appClipMetadata = [appRecord appClipMetadata];

    if (!appClipMetadata)
    {
      if (([v3 isDeletableSystemApplication] & 1) != 0 || objc_msgSend(v3, "isSystemPlaceholder"))
      {
        mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
        isSystemAppRemovalAllowed = [mEMORY[0x277D262A0] isSystemAppRemovalAllowed];

        goto LABEL_4;
      }

      if ([v3 isDeletable])
      {
        mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
        isAppRemovalAllowed = [mEMORY[0x277D262A0]2 isAppRemovalAllowed];

        if (isAppRemovalAllowed)
        {
          isSystemAppRemovalAllowed = [v3 isAppStoreVendable];
          goto LABEL_4;
        }
      }
    }
  }

  isSystemAppRemovalAllowed = 0;
LABEL_4:

  return isSystemAppRemovalAllowed;
}

- (BOOL)isDemoted
{
  appRecord = [(STStorageApp *)self appRecord];
  v3 = appRecord;
  if (appRecord)
  {
    applicationState = [appRecord applicationState];
    isPlaceholder = [applicationState isPlaceholder];
  }

  else
  {
    isPlaceholder = 0;
  }

  return isPlaceholder;
}

- (id)appPath
{
  appRecord = [(STStorageApp *)self appRecord];
  v3 = appRecord;
  if (appRecord)
  {
    bundleContainerURL = [appRecord bundleContainerURL];
    path = [bundleContainerURL path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (id)dataPath
{
  appRecord = [(STStorageApp *)self appRecord];
  v3 = appRecord;
  if (appRecord)
  {
    dataContainerURL = [appRecord dataContainerURL];
    path = [dataContainerURL path];
  }

  else
  {
    path = 0;
  }

  return path;
}

- (NSArray)documents
{
  v25 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if (self->_isDocumentApp)
  {
    dataPath = [(STStorageApp *)self dataPath];
    v5 = [dataPath stringByAppendingPathComponent:@"Documents"];

    if ([v5 length])
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
      v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:6 errorHandler:0];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        v13 = *MEMORY[0x277CBE868];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v19 = 0;
            [v15 getResourceValue:&v19 forKey:v13 error:0];
            v16 = v19;
            if ([v16 BOOLValue])
            {
              if ([v9 level] >= 4)
              {
                [v9 skipDescendants];
              }
            }

            else
            {
              [array addObject:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)notifyAppSizeChanged
{
  [(STStorageApp *)self setAppSizesVar:0];

  [(STStorageApp *)self postNotify:@"com.apple.storage.appinfoChanged"];
}

- (void)setExternalSizes:(id)sizes
{
  sizesCopy = sizes;
  extSizesVar = [(STStorageApp *)self extSizesVar];
  if (([sizesCopy isEqual:extSizesVar] & 1) == 0)
  {
    [(STStorageApp *)self setExtSizesVar:sizesCopy];
    self->_externalSize = [sizesCopy userTotal];
    self->_externalPurgeableSize = [sizesCopy purgeable];
    [(STStorageApp *)self notifyAppSizeChanged];
  }
}

- (STSizeVector)internalSizes
{
  intSizesVar = [(STStorageApp *)self intSizesVar];
  if (!intSizesVar)
  {
    updateAppSizes = [(STStorageApp *)self updateAppSizes];
    intSizesVar = [(STStorageApp *)self intSizesVar];
  }

  return intSizesVar;
}

- (STSizeVector)appSize
{
  appSizesVar = [(STStorageApp *)self appSizesVar];
  if (!appSizesVar)
  {
    appSizesVar = [(STStorageApp *)self updateAppSizes];
  }

  return appSizesVar;
}

- (int64_t)sizeOfMLData
{
  bundleIdentifier = [(STStorageApp *)self bundleIdentifier];
  v3 = +[STStorageCacheDelete sharedMonitor];
  cacheDeleteDict = [v3 cacheDeleteDict];

  v5 = [cacheDeleteDict objectForKey:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v6 = [v5 objectForKey:@"com.apple.aned.CacheDelete"];
  v7 = [v6 objectForKey:@"COREML_NON_PURGEABLE_BY_APP"];
  v8 = [v7 objectForKey:bundleIdentifier];
  longLongValue = [v8 longLongValue];

  return longLongValue;
}

- (id)updateAppSizes
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = +[STSizeVector zero];
  v4 = +[STSizeVector zero];
  appRecord = [(STStorageApp *)self appRecord];
  if (appRecord)
  {
    v6 = appRecord;
LABEL_3:
    v7 = 0;
    goto LABEL_6;
  }

  if (![(NSString *)self->_bundleIdentifier length])
  {
    v6 = 0;
    goto LABEL_3;
  }

  v8 = objc_alloc(MEMORY[0x277CC1E70]);
  bundleIdentifier = self->_bundleIdentifier;
  v34 = 0;
  v6 = [v8 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v34];
  v7 = v34;
LABEL_6:
  bundleContainerURL = [v6 bundleContainerURL];
  v31 = bundleContainerURL;
  if (bundleContainerURL)
  {
    v33 = 0;
    v11 = *MEMORY[0x277CBEA30];
    v32 = 0;
    [bundleContainerURL getResourceValue:&v33 forKey:v11 error:&v32];
    v12 = v33;
    v13 = v32;
    v14 = v12;

    [v14 BOOLValue];
    v7 = v13;
  }

  if ([(STStorageApp *)self userVisible])
  {
    if (self->_appContainer)
    {
      v35[0] = self->_appContainer;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
      v16 = SizesOfContainers(v15);

      v3 = v15;
    }

    else
    {
      v16 = +[STSizeVector zero];
    }

    v17 = SizesOfContainers(self->_dataContainers);
    v3 = [v16 plus:v17];

    v18 = SizesOfContainers(self->_sharedContainers);

    v4 = v18;
  }

  self->_appContainerSize = [v3 fixed];
  self->_dataContainerSize = [v3 dynamic];
  self->_dataPurgeableSize = [v3 purgeable];
  self->_sharedContainerSize = [v4 dynamic];
  self->_sharedPurgeableSize = [v4 purgeable];
  extSizesVar = [(STStorageApp *)self extSizesVar];
  self->_externalSize = [extSizesVar dynamic];
  self->_externalPurgeableSize = [extSizesVar purgeable];
  v20 = [STSizeVector fixed:self->_appContainerSize dynamic:self->_sharedContainerSize + self->_dataContainerSize + self->_coreMLDataSize purgeable:self->_sharedPurgeableSize + self->_dataPurgeableSize + self->_assetPurgeableSize];
  v21 = [v20 plus:extSizesVar];
  [(STStorageApp *)self setIntSizesVar:v20];
  [(STStorageApp *)self setAppSizesVar:v21];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    +[STLaunchDates sharedDates];
    v30 = v3;
    v22 = v4;
    v23 = v6;
    v25 = v24 = v7;
    bundleIdentifier = [(STStorageApp *)self bundleIdentifier];
    v27 = [v25 launchDateForApp:bundleIdentifier];
    [(STStorageApp *)self setLastUsedDate:v27];

    v7 = v24;
    v6 = v23;
    v4 = v22;
    v3 = v30;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)refreshAppState
{
  v3 = self->_lsid;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CC1E70]);
    bundleIdentifier = self->_bundleIdentifier;
    v12 = 0;
    v6 = [v4 initWithBundleIdentifier:bundleIdentifier allowPlaceholder:1 error:&v12];
    v7 = v12;
    if (v6)
    {
      persistentIdentifier = [v6 persistentIdentifier];
      v9 = [persistentIdentifier isEqualToData:v3];

      if ((v9 & 1) == 0)
      {
        [(STStorageApp *)self setAppRecord:v6];
        v10 = +[STMSizer sharedAppSizer];
        [v10 reloadAppContainer:self];

        v11 = +[STStorageAppsMonitor sharedMonitor];
        [v11 setSortNeeded];
      }
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(STStorageApp *)self refreshAppSizes];
  }
}

- (int64_t)staticSize
{
  appSize = [(STStorageApp *)self appSize];
  fixed = [appSize fixed];

  return fixed;
}

- (int64_t)docsAndDataSize
{
  appSize = [(STStorageApp *)self appSize];
  docsAndData = [appSize docsAndData];

  return docsAndData;
}

- (int64_t)dynamicSize
{
  appSize = [(STStorageApp *)self appSize];
  dynamic = [appSize dynamic];

  return dynamic;
}

- (int64_t)totalSize
{
  appSize = [(STStorageApp *)self appSize];
  userTotal = [appSize userTotal];

  return userTotal;
}

+ (id)sizeOfPluginKitContainers
{
  v2 = [STContainer containersWithClass:4 personaUniqueString:0];
  v3 = SizesOfContainers(v2);

  return v3;
}

- (void)addNumber:(int64_t)number toDict:(id)dict forKey:(id)key
{
  if (number)
  {
    v7 = MEMORY[0x277CCABB0];
    keyCopy = key;
    dictCopy = dict;
    v10 = [v7 numberWithLongLong:number];
    [dictCopy setObject:v10 forKey:keyCopy];
  }
}

- (NSDictionary)infoDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  name = [(STStorageApp *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  vendorName = [(STStorageApp *)self vendorName];
  [v3 setObject:vendorName forKeyedSubscript:@"vendor"];

  bundleIdentifier = [(STStorageApp *)self bundleIdentifier];
  [v3 setObject:bundleIdentifier forKeyedSubscript:@"id"];

  if (self->_isAppClip)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is-app-clip"];
  }

  if ([(STStorageApp *)self isDemoted])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is-placeholder"];
  }

  lastUsedDate = [(STStorageApp *)self lastUsedDate];

  if (lastUsedDate)
  {
    lastUsedDate2 = [(STStorageApp *)self lastUsedDate];
    [v3 setObject:lastUsedDate2 forKeyedSubscript:@"last-used"];
  }

  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  internalSizes = [(STStorageApp *)self internalSizes];
  externalSizes = [(STStorageApp *)self externalSizes];
  v12 = [internalSizes plus:externalSizes];
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v12 userTotal], v9, @"total");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [internalSizes fixed], v9, @"fixed");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [internalSizes dynamic], v9, @"dynamic");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [internalSizes purgeable], v9, @"purgeable");
  if (([externalSizes isZero] & 1) == 0)
  {
    -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [externalSizes dynamic] + objc_msgSend(externalSizes, "fixed"), v9, @"external");
    -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [externalSizes purgeable], v9, @"ext-purgeable");
  }

  [v3 setObject:v9 forKeyedSubscript:@"sizes"];

  return v3;
}

@end