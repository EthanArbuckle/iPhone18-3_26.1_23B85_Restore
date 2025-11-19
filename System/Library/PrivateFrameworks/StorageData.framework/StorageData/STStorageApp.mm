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
- (STStorageApp)initWithAppRecord:(id)a3 usageBundle:(id)a4;
- (STStorageApp)initWithBundleIdentifier:(id)a3;
- (STStorageApp)initWithBundleIdentifier:(id)a3 name:(id)a4 vendorName:(id)a5;
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
- (void)_postNotify:(id)a3;
- (void)addNumber:(int64_t)a3 toDict:(id)a4 forKey:(id)a5;
- (void)notifyAppSizeChanged;
- (void)postNotify:(id)a3;
- (void)refreshAppState;
- (void)setAppRecord:(id)a3;
- (void)setExternalSizes:(id)a3;
@end

@implementation STStorageApp

- (STStorageApp)initWithAppRecord:(id)a3 usageBundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = STStorageApp;
  v8 = [(STStorageApp *)&v12 init];
  if (v8)
  {
    v9 = +[STSizeVector zero];
    extSizesVar = v8->_extSizesVar;
    v8->_extSizesVar = v9;

    [(STStorageApp *)v8 setAppRecord:v6];
    objc_storeStrong(&v8->_usageBundle, a4);
  }

  return v8;
}

- (STStorageApp)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v27 = 0;
  v5 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v27];
  v6 = v27;
  if (v6)
  {
    v7 = v6;
    v8 = [v6 code];
    STLog(2, @"%li loading application record for %@", v9, v10, v11, v12, v13, v14, v8);

    v26 = 0;
    v15 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v4 error:&v26];
    v16 = v26;

    if (v16)
    {
      v17 = [v16 code];
      STLog(2, @"%li loading placeholder application record for %@", v18, v19, v20, v21, v22, v23, v17);

      v24 = 0;
    }

    else
    {
      self = [(STStorageApp *)self initWithAppRecord:v15];
      v24 = self;
    }
  }

  else
  {
    self = [(STStorageApp *)self initWithAppRecord:v5];
    v24 = self;
    v15 = v5;
  }

  return v24;
}

- (STStorageApp)initWithBundleIdentifier:(id)a3 name:(id)a4 vendorName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = STStorageApp;
  v12 = [(STStorageApp *)&v16 init];
  if (v12)
  {
    v13 = +[STSizeVector zero];
    extSizesVar = v12->_extSizesVar;
    v12->_extSizesVar = v13;

    objc_storeStrong(&v12->_bundleIdentifier, a3);
    objc_storeStrong(&v12->_appIdentifier, a3);
    v12->_appKind = 2;
    objc_storeStrong(&v12->_name, a4);
    objc_storeStrong(&v12->_vendorName, a5);
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
      v10 = [v8 code];
      v18 = self->_bundleIdentifier;
      STLog(2, @"%li loading application record for %@", v11, v12, v13, v14, v15, v16, v10);
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
    v4 = [(STStorageApp *)self appRecord];
    v5 = [v4 applicationState];
    if ([v5 isValid])
    {
      if ([v5 isInstalled])
      {
        v3 = 0;
LABEL_11:

        return v3;
      }

      if ([v5 isDowngraded])
      {
        v3 = 3;
        goto LABEL_11;
      }

      v6 = [v4 installType];
      if (v6 <= 0xA)
      {
        v3 = dword_26BBAB1A0[v6];
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
  v2 = [(STStorageApp *)self appRecord];
  v3 = [v2 compatibilityObject];

  return v3;
}

- (void)setAppRecord:(id)a3
{
  v36 = a3;
  v4 = [v36 persistentIdentifier];
  lsid = self->_lsid;
  self->_lsid = v4;

  v6 = [v36 bundleIdentifier];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v6;

  objc_storeStrong(&self->_appIdentifier, self->_bundleIdentifier);
  v8 = [v36 applicationState];
  v9 = [v36 iTunesMetadata];
  if ([v8 isInstalled] & 1) != 0 || (objc_msgSend(v8, "isPlaceholder"))
  {
    v10 = [v36 localizedName];
  }

  else
  {
    v10 = [v9 itemName];
  }

  v11 = v10;
  if ([v10 length])
  {
    v12 = v11;
    name = self->_name;
    self->_name = v12;
  }

  else
  {
    name = [v36 compatibilityObject];
    v14 = [name localizedName];
    v15 = self->_name;
    self->_name = v14;
  }

  v16 = [v9 artistName];
  if (-[STStorageApp isApple](self, "isApple") && (![v16 length] || objc_msgSend(v16, "isEqualToString:", @"Apple")))
  {
    v17 = @"Apple Inc.";

    v16 = v17;
  }

  objc_storeStrong(&self->_vendorName, v16);
  v18 = [(STStorageApp *)self appRecord];
  v19 = [v18 shortVersionString];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [v19 stringValue];
    }

    else
    {
      v20 = &stru_287C88100;
    }

    v19 = v20;
  }

  versionString = self->_versionString;
  self->_versionString = v19;
  v22 = v19;

  if ([v36 isDeletable])
  {
    v23 = [v36 isDeletableSystemApplication];
  }

  else
  {
    v23 = 1;
  }

  self->_appKind = v23;
  self->_isPseudoApp = 0;
  v24 = [v36 appClipMetadata];
  self->_isAppClip = v24 != 0;

  v25 = [v36 supportsOpenInPlace];
  v26 = 0;
  if (v25)
  {
    v26 = [v36 isFileSharingEnabled];
  }

  self->_isDocumentApp = v26;
  v27 = STPersonaCopyPersonaUniqueStrings();
  v28 = [v36 bundleIdentifier];
  v29 = [v36 linkedParentApplication];
  v30 = [v29 bundleIdentifier];
  parentAppIdentifier = self->_parentAppIdentifier;
  self->_parentAppIdentifier = v30;

  v32 = [STContainer containerWithIdentifier:v28 containerClass:1 personaUniqueString:0];
  appContainer = self->_appContainer;
  self->_appContainer = v32;

  v34 = DataContainersFromAppRecordWithPersonas(v36, v27);
  dataContainers = self->_dataContainers;
  self->_dataContainers = v34;
}

- (BOOL)isApple
{
  v3 = [(STStorageApp *)self appRecord];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 developerType] == 1;
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

    v4 = [(STStorageApp *)self name];
    v5 = [v4 length];

    if (!v5)
    {
      return 0;
    }

    v6 = [(STStorageApp *)self appRecord];
    v7 = v6;
    if (!v6)
    {
      goto LABEL_21;
    }

    v8 = [v6 applicationState];
    v9 = [v8 isRestricted];

    if (v9)
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
        v10 = [(STStorageApp *)self mediaTypes];
        v11 = [v10 count];

        if (!v11)
        {
          v12 = [(STStorageApp *)self externalSizes];
          v13 = [v12 isZero];

          if (v13)
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

- (void)_postNotify:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:v5 object:self->_bundleIdentifier];
}

- (void)postNotify:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__STStorageApp_postNotify___block_invoke;
  v6[3] = &unk_279D1CEB0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
    v4 = [(STStorageApp *)self appRecord];
    v5 = v4;
    if (v4)
    {
      if (([v4 isDeletableSystemApplication] & 1) != 0 || objc_msgSend(v5, "isSystemPlaceholder"))
      {
        v6 = [MEMORY[0x277D262A0] sharedConnection];
        v7 = [v6 isSystemAppRemovalAllowed];
LABEL_7:
        v3 = v7;

LABEL_11:
        return v3;
      }

      if ([v5 isDeletable])
      {
        v6 = [MEMORY[0x277D262A0] sharedConnection];
        v7 = [v6 isAppRemovalAllowed];
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
  v2 = [(STStorageApp *)self appRecord];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 appClipMetadata];

    if (!v4)
    {
      if (([v3 isDeletableSystemApplication] & 1) != 0 || objc_msgSend(v3, "isSystemPlaceholder"))
      {
        v7 = [MEMORY[0x277D262A0] sharedConnection];
        v5 = [v7 isSystemAppRemovalAllowed];

        goto LABEL_4;
      }

      if ([v3 isDeletable])
      {
        v8 = [MEMORY[0x277D262A0] sharedConnection];
        v9 = [v8 isAppRemovalAllowed];

        if (v9)
        {
          v5 = [v3 isAppStoreVendable];
          goto LABEL_4;
        }
      }
    }
  }

  v5 = 0;
LABEL_4:

  return v5;
}

- (BOOL)isDemoted
{
  v2 = [(STStorageApp *)self appRecord];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 applicationState];
    v5 = [v4 isPlaceholder];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)appPath
{
  v2 = [(STStorageApp *)self appRecord];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 bundleContainerURL];
    v5 = [v4 path];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataPath
{
  v2 = [(STStorageApp *)self appRecord];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 dataContainerURL];
    v5 = [v4 path];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSArray)documents
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  if (self->_isDocumentApp)
  {
    v4 = [(STStorageApp *)self dataPath];
    v5 = [v4 stringByAppendingPathComponent:@"Documents"];

    if ([v5 length])
    {
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
      v8 = [v6 enumeratorAtURL:v7 includingPropertiesForKeys:0 options:6 errorHandler:0];

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
              [v3 addObject:v15];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)notifyAppSizeChanged
{
  [(STStorageApp *)self setAppSizesVar:0];

  [(STStorageApp *)self postNotify:@"com.apple.storage.appinfoChanged"];
}

- (void)setExternalSizes:(id)a3
{
  v5 = a3;
  v4 = [(STStorageApp *)self extSizesVar];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    [(STStorageApp *)self setExtSizesVar:v5];
    self->_externalSize = [v5 userTotal];
    self->_externalPurgeableSize = [v5 purgeable];
    [(STStorageApp *)self notifyAppSizeChanged];
  }
}

- (STSizeVector)internalSizes
{
  v3 = [(STStorageApp *)self intSizesVar];
  if (!v3)
  {
    v4 = [(STStorageApp *)self updateAppSizes];
    v3 = [(STStorageApp *)self intSizesVar];
  }

  return v3;
}

- (STSizeVector)appSize
{
  v3 = [(STStorageApp *)self appSizesVar];
  if (!v3)
  {
    v3 = [(STStorageApp *)self updateAppSizes];
  }

  return v3;
}

- (int64_t)sizeOfMLData
{
  v2 = [(STStorageApp *)self bundleIdentifier];
  v3 = +[STStorageCacheDelete sharedMonitor];
  v4 = [v3 cacheDeleteDict];

  v5 = [v4 objectForKey:@"CACHE_DELETE_ITEMIZED_NONPURGEABLE"];
  v6 = [v5 objectForKey:@"com.apple.aned.CacheDelete"];
  v7 = [v6 objectForKey:@"COREML_NON_PURGEABLE_BY_APP"];
  v8 = [v7 objectForKey:v2];
  v9 = [v8 longLongValue];

  return v9;
}

- (id)updateAppSizes
{
  v35[1] = *MEMORY[0x277D85DE8];
  v3 = +[STSizeVector zero];
  v4 = +[STSizeVector zero];
  v5 = [(STStorageApp *)self appRecord];
  if (v5)
  {
    v6 = v5;
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
  v10 = [v6 bundleContainerURL];
  v31 = v10;
  if (v10)
  {
    v33 = 0;
    v11 = *MEMORY[0x277CBEA30];
    v32 = 0;
    [v10 getResourceValue:&v33 forKey:v11 error:&v32];
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
  v19 = [(STStorageApp *)self extSizesVar];
  self->_externalSize = [v19 dynamic];
  self->_externalPurgeableSize = [v19 purgeable];
  v20 = [STSizeVector fixed:self->_appContainerSize dynamic:self->_sharedContainerSize + self->_dataContainerSize + self->_coreMLDataSize purgeable:self->_sharedPurgeableSize + self->_dataPurgeableSize + self->_assetPurgeableSize];
  v21 = [v20 plus:v19];
  [(STStorageApp *)self setIntSizesVar:v20];
  [(STStorageApp *)self setAppSizesVar:v21];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    +[STLaunchDates sharedDates];
    v30 = v3;
    v22 = v4;
    v23 = v6;
    v25 = v24 = v7;
    v26 = [(STStorageApp *)self bundleIdentifier];
    v27 = [v25 launchDateForApp:v26];
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
      v8 = [v6 persistentIdentifier];
      v9 = [v8 isEqualToData:v3];

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
  v2 = [(STStorageApp *)self appSize];
  v3 = [v2 fixed];

  return v3;
}

- (int64_t)docsAndDataSize
{
  v2 = [(STStorageApp *)self appSize];
  v3 = [v2 docsAndData];

  return v3;
}

- (int64_t)dynamicSize
{
  v2 = [(STStorageApp *)self appSize];
  v3 = [v2 dynamic];

  return v3;
}

- (int64_t)totalSize
{
  v2 = [(STStorageApp *)self appSize];
  v3 = [v2 userTotal];

  return v3;
}

+ (id)sizeOfPluginKitContainers
{
  v2 = [STContainer containersWithClass:4 personaUniqueString:0];
  v3 = SizesOfContainers(v2);

  return v3;
}

- (void)addNumber:(int64_t)a3 toDict:(id)a4 forKey:(id)a5
{
  if (a3)
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = a5;
    v9 = a4;
    v10 = [v7 numberWithLongLong:a3];
    [v9 setObject:v10 forKey:v8];
  }
}

- (NSDictionary)infoDict
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v4 = [(STStorageApp *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(STStorageApp *)self vendorName];
  [v3 setObject:v5 forKeyedSubscript:@"vendor"];

  v6 = [(STStorageApp *)self bundleIdentifier];
  [v3 setObject:v6 forKeyedSubscript:@"id"];

  if (self->_isAppClip)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is-app-clip"];
  }

  if ([(STStorageApp *)self isDemoted])
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"is-placeholder"];
  }

  v7 = [(STStorageApp *)self lastUsedDate];

  if (v7)
  {
    v8 = [(STStorageApp *)self lastUsedDate];
    [v3 setObject:v8 forKeyedSubscript:@"last-used"];
  }

  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:6];
  v10 = [(STStorageApp *)self internalSizes];
  v11 = [(STStorageApp *)self externalSizes];
  v12 = [v10 plus:v11];
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v12 userTotal], v9, @"total");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v10 fixed], v9, @"fixed");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v10 dynamic], v9, @"dynamic");
  -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v10 purgeable], v9, @"purgeable");
  if (([v11 isZero] & 1) == 0)
  {
    -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v11 dynamic] + objc_msgSend(v11, "fixed"), v9, @"external");
    -[STStorageApp addNumber:toDict:forKey:](self, "addNumber:toDict:forKey:", [v11 purgeable], v9, @"ext-purgeable");
  }

  [v3 setObject:v9 forKeyedSubscript:@"sizes"];

  return v3;
}

@end