@interface ControlManager
+ (id)getStringFromXpcMessage:(id)message forKey:(const char *)key;
- (BOOL)associateFieldsFromRequest:(id)request withCommandTracker:(id)tracker;
- (BOOL)categorizeAssetResults:(id)results fromCatalogIds:(id)ids repositoryIds:(id)repositoryIds andPreinstalledIds:(id)preinstalledIds intoServerOnlyIds:(id *)onlyIds installedCatalogIds:(id *)catalogIds andObsoleteIds:(id *)obsoleteIds;
- (BOOL)checkEntitlementAndRespondIfErrorForConnection:(id)connection usingMessage:(id)message forAssetType:(id)type withCommand:(int64_t)command;
- (BOOL)checkEntitlementAndRespondIfErrorForConnection:(id)connection usingMessage:(id)message forAssetTypes:(id)types withCommand:(int64_t)command;
- (BOOL)commandRequiresForcedSoftwareUpdateType:(id)type;
- (BOOL)freedUpEnoughSpace:(int64_t)space;
- (BOOL)hasOnlyAllowedDifferencesFrom:(id)from inAttributes:(id)attributes assetId:(id)id assetType:(id)type allowed:(id)allowed foundAbsoluteId:(id *)absoluteId foundDiff:(id *)diff;
- (BOOL)isAllowlistedForCommand:(int64_t)command;
- (BOOL)isAssetInCatalog:(id)catalog assetId:(id)id withPurpose:(id)purpose;
- (BOOL)isAssetTypeOptionalForCommand:(int64_t)command;
- (BOOL)isAssetTypeRequiredForCommand:(int64_t)command;
- (BOOL)isCommandAllowedForAllClientsWithoutAssetType:(int64_t)type;
- (BOOL)isCommandRequiringForcedSoftwareUpdateType:(int64_t)type;
- (BOOL)isEntitledForCommand:(int64_t)command forConnection:(id)connection forAssetType:(id)type;
- (BOOL)loadCatalog:(id)catalog catalogAssets:(id *)assets assetIds:(id *)ids postedDate:(id *)date lastFetchDate:(id *)fetchDate catalogInfo:(id *)info withPurpose:(id)purpose;
- (BOOL)loadRepository:(id)repository localIds:(id *)ids withPurpose:(id)purpose;
- (BOOL)purgeAllAssetsInDirectory:(id)directory clientName:(id)name exceptForAssetIds:(id)ids;
- (BOOL)purgeAllAssetsOfType:(id)type forPurpose:(id)purpose clientName:(id)name exceptForAssetIds:(id)ids;
- (BOOL)purgeCatalogOfType:(id)type clientName:(id)name withPurpose:(id)purpose;
- (ControlManager)init;
- (double)alterSecondsBeforeCollection:(double)collection forAssetTypeDir:(id)dir determinedDescriptorType:(int64_t)type fromDescriptors:(id)descriptors isAutoAsset:(BOOL *)asset autoAssetDescriptor:(id *)descriptor assetFilesystemSize:(int64_t *)size retentionPolicy:(int64_t)self0 logString:(id)self1;
- (id)alterGarbageColletionLevel:(id)level basedOnAssetDirectory:(id)directory;
- (id)applyPmvQuery:(id)query queryDict:(id)dict explanation:(id *)explanation;
- (id)associateOptionalFields:(int64_t)fields fromRequest:(id)request toCommandRequest:(id)commandRequest forCommandTracker:(id)tracker;
- (id)associateRequiredFields:(int64_t)fields fromRequest:(id)request toCommandRequest:(id)commandRequest forCommandTracker:(id)tracker;
- (id)checkEntitlement:(id)entitlement forAssetType:(id)type;
- (id)checkEntitlement:(id)entitlement forAssetTypes:(id)types;
- (id)chooseDescriptorsOfType:(int64_t)type;
- (id)convertToArchiveable:(id)archiveable incoming:(id)incoming overrideState:(int64_t)state filterToIds:(id)ids withPurpose:(id)purpose;
- (id)decodeXpcObject:(id)object ofClass:(Class)class dataKey:(id)key lengthKey:(id)lengthKey decodeClasses:(id)classes error:(id *)error;
- (id)determineBestMatchFor:(id)for absoluteId:(id)id allowedDifferences:(id)differences fromResults:(id)results isExact:(BOOL *)exact candidates:(unint64_t *)candidates bestMatch:(id *)match differencesFound:(id *)self0 missedTypeAndAssetIdMatch:(id *)self1;
- (id)dictionaryWithArrayOfStringValues:(id)values forXpcKey:(const char *)key andLengthKey:(const char *)lengthKey clientName:(id)name;
- (id)dictionaryWithArrayOfStringValues:(id)values forXpcKey:(const char *)key andLengthKey:(const char *)lengthKey failureReason:(id *)reason;
- (id)garbageCollectionTypeToString:(int64_t)string;
- (id)getAssetAttributes:(id)attributes;
- (id)getAssetAttributes:(id)attributes purpose:(id)purpose assetID:(id)d;
- (id)getCatalogLastModifiedDate:(id)date ifFromXmlUrl:(id)url withPurpose:(id)purpose;
- (id)getMetadataFromCatalog:(id)catalog key:(id)key withPurpose:(id)purpose;
- (id)getSAFRegistrationBundleID:(id)d;
- (id)hashToString:(id)string;
- (id)locateDescriptorForAssetDirectory:(id)directory fromDescriptors:(id)descriptors;
- (id)newCatalogLoad:(id)load withPurpose:(id)purpose;
- (id)newExtractor:(id)extractor downloadOptions:(id)options sessionID:(id)d error:(id *)error;
- (int)getNotEntitledResultForCommand:(unint64_t)command;
- (int64_t)garbageCollectionDescriptorType:(id)type;
- (int64_t)getStateOfAssetInCatalog:(id)catalog assetId:(id)id withPurpose:(id)purpose;
- (int64_t)handleInstallAsset:(id)asset forType:(id)type;
- (int64_t)performCacheDeleteCollection:(id)collection forCollectionType:(int64_t)type withGarbageCollectionTypes:(id)types cacheDeleteResults:(id)results maintainReclaimCounts:(BOOL)counts;
- (int64_t)performCacheDeleteForGroup:(id)group forAssetTypeDir:(id)dir timeTaken:(double *)taken cacheDeleteResults:(id)results;
- (int64_t)performGarbageCollectionOfType:(int64_t)type forAssetTypeDir:(id)dir fromDescriptors:(id)descriptors cacheDeleteResults:(id)results;
- (int64_t)removeDirectoryAtPath:(id)path firstRenamingWithExtension:(id)extension;
- (int64_t)updateLastFetchedDate:(id)date assetType:(id)type withPurpose:(id)purpose with:(id)with;
- (void)activityNotification:(id)notification ofStatusChange:(unint64_t)change withReason:(id)reason;
- (void)applyDataVaults;
- (void)cancelDownload:(id)download using:(id)using for:(id)for assetType:(id)type purpose:(id)purpose withExtension:(id)extension;
- (void)checkAndInitiateDownloadForAssetType:(id)type message:(id)message forClientName:(id)name usingConnection:(id)connection requiringClientExtractor:(BOOL)extractor;
- (void)cleanObsoleteSURepo;
- (void)clearPreferences:(id)preferences replyUsing:(id)using and:(id)and;
- (void)determineAssets:(id)assets clientName:(id)name connection:(id)connection downloadingTasks:(id)tasks message:(id)message resultTypes:(int64_t)types queryArray:(id)array isForSpecificAsset:(BOOL)self0 specificAssetId:(id)self1 specificAllowedDifferences:(id)self2;
- (void)determinePmv:(id)pmv clientName:(id)name connection:(id)connection message:(id)message queryDict:(id)dict;
- (void)dumpClientUsage:(id)usage using:(id)using and:(id)and clientName:(id)name;
- (void)ensureProperDirectoryState;
- (void)ensureSUDownloadTempDir;
- (void)getProductMarketingVersions:(id)versions and:(id)and clientName:(id)name assetType:(id)type;
- (void)getStateOfAsset:(id)asset incoming:(id)incoming assetType:(id)type;
- (void)handleCacheDeleteMigration:(id)migration;
- (void)handleClientConnection:(id)connection on:(id)on;
- (void)handleDataMigrator:(id)migrator message:(id)message clientName:(id)name;
- (void)handleEnsureDataVault:(id)vault message:(id)message client:(id)client clientName:(id)name;
- (void)handleGarbageCollect:(id)collect and:(id)and;
- (void)handleGetAllowNonUserInitiated:(id)initiated message:(id)message clientName:(id)name;
- (void)handleGetMABrainInfo:(id)info message:(id)message clientName:(id)name;
- (void)handleGetServerUrl:(id)url message:(id)message client:(id)client clientName:(id)name;
- (void)handleLoadRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message;
- (void)handleMigrateAssetsRequest:(id)request using:(id)using and:(id)and;
- (void)handlePmvRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message;
- (void)handleQueryRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message;
- (void)handleReportingRequest:(id)request message:(id)message clientName:(id)name;
- (void)handleSecureMABundleCommand:(id)command message:(id)message clientName:(id)name;
- (void)handleServerUrlOverride:(id)override message:(id)message client:(id)client clientName:(id)name;
- (void)handleUpdateClientUsage:(id)usage using:(id)using and:(id)and clientName:(id)name;
- (void)handleUpdateMABrain:(id)brain message:(id)message clientName:(id)name;
- (void)maintainReclaimCountsByCollectionType:(int64_t)type reclaimAssetSpace:(int64_t)space cacheDeleteResults:(id)results;
- (void)moveAssetIntoRepo:(id)repo forType:(id)type forAsset:(id)asset cleanUp:(id)up with:(id)with;
- (void)overrideGCValue:(id)value using:(id)using and:(id)and clientName:(id)name;
- (void)purgeAll:(id)all and:(id)and assetTypesList:(id)list clientName:(id)name;
- (void)purgeCatalogs:(id)catalogs and:(id)and assetTypesList:(id)list clientName:(id)name;
- (void)registerAssetsWithSpaceAttributes;
- (void)registerForCacheDeleteMigration;
- (void)removeAllObsoletedV1Assets;
- (void)removeAssetDir:(id)dir assetType:(id)type clientName:(id)name using:(id)using;
- (void)removeDownloadsNotRecentlyInFlight:(id)flight;
- (void)respondToCacheDelete:(BOOL)delete targetingPurgeAmount:(int64_t)amount cacheDeleteResults:(id)results withUrgency:(int)urgency forVolume:(id)volume then:(id)then;
- (void)sendPmvResults:(id)results pmvInfo:(id)info postedDate:(id)date lastFetchedDate:(id)fetchedDate result:(int64_t)result connection:(id)connection message:(id)message;
- (void)sendQueryResults:(id)results assetType:(id)type purpose:(id)purpose catalogInfo:(id)info returnTypes:(int64_t)types postedDate:(id)date lastFetchedDate:(id)fetchedDate result:(int64_t)self0 isFiltered:(BOOL)self1 requireSpecificAsset:(BOOL)self2 connection:(id)self3 message:(id)self4 clientName:(id)self5;
- (void)sendStateOfAssetReply:(id)reply incoming:(id)incoming with:(int64_t)with;
- (void)setPreferenceKeyAsync:(id)async andValue:(id)value allowNilToClear:(BOOL)clear replyUsing:(id)using and:(id)and;
- (void)setPreferenceKeySync:(id)sync andValue:(id)value allowNilToClear:(BOOL)clear;
- (void)setPreferences:(id)preferences replyUsing:(id)using and:(id)and;
- (void)setServerConnectionHandler:(id)handler with:(id)with and:(id)and;
- (void)updateSAFRegistrationArrayWithPath:(id)path doRegistration:(BOOL)registration;
- (void)updateSpaceAttributionForBundleID:(id)d assetPath:(id)path doRegistration:(BOOL)registration;
- (void)writeDictionaryToFile:(id)file to:(id)to with:(id)with;
- (void)writeJsonDictionaryToFile:(id)file to:(id)to with:(id)with;
@end

@implementation ControlManager

- (id)convertToArchiveable:(id)archiveable incoming:(id)incoming overrideState:(int64_t)state filterToIds:(id)ids withPurpose:(id)purpose
{
  archiveableCopy = archiveable;
  incomingCopy = incoming;
  idsCopy = ids;
  purposeCopy = purpose;
  v27 = objc_opt_new();
  v28 = incomingCopy;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = incomingCopy;
  v14 = purposeCopy;
  obj = [v13 allKeys];
  v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v31)
  {
    v30 = *v33;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if (!idsCopy || [idsCopy containsObject:v16])
        {
          v18 = objc_opt_new();
          v19 = [v28 objectForKey:v16];
          v20 = [v19 mutableCopy];

          if (v14)
          {
            [v20 setObject:v14 forKey:@"AssetPurpose"];
          }

          [v18 setObject:v20 forKey:@"AssetProperties"];
          v21 = objc_opt_new();
          [v21 setObject:v16 forKey:@"AssetId"];
          [v21 setObject:archiveableCopy forKey:@"AssetType"];
          [NSNumber numberWithLongLong:state];
          v23 = v22 = v14;
          [v21 setObject:v23 forKey:@"AssetState"];

          v14 = v22;
          [v18 setObject:v21 forKey:@"AssetAddedProperties"];
          [v27 setObject:v18 forKey:v16];
        }

        objc_autoreleasePoolPop(v17);
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v31);
  }

  return v27;
}

- (void)removeAllObsoletedV1Assets
{
  v2 = +[MAAssetTypeDescriptor typeDescriptorsToRemoveV1Assets];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          assetType = [v7 assetType];
          *buf = 138543362;
          v16 = assetType;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "removeAllObsoletedV1Assets Checking: %{public}@ for V1 Assets", buf, 0xCu);
        }

        assetType2 = [v7 assetType];
        cleanV1Assets(0, 0, assetType2);
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)applyDataVaults
{
  v2 = +[MAAssetTypeDescriptor typeDescriptorsToDataVault];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          assetType = [v7 assetType];
          *buf = 138543362;
          v18 = assetType;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Making: %{public}@ into a datavault", buf, 0xCu);
        }

        assetType2 = [v7 assetType];
        v11 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
        v12 = [NSURL URLWithString:v11];
        makeDataVaultAtUrl(assetType2, v12);
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }
}

- (id)getSAFRegistrationBundleID:(id)d
{
  v3 = [d URLByAppendingPathComponent:@"Info.plist"];
  v12 = 0;
  v4 = [[NSDictionary alloc] initWithContentsOfURL:v3 error:&v12];
  v5 = v12;
  if (v5)
  {
    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      checkedDescription = [v5 checkedDescription];
      *buf = 138543618;
      v14 = checkedDescription;
      v15 = 2114;
      v16 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{ControlManager:getSAFRegistrationBundleID} Fail to read content | error:%{public}@ | infoPlist:\n%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v4)
    {
      v8 = [v4 objectForKey:@"SAFBundleIdentifier"];
      if (v8 || ([v4 objectForKey:kCFBundleIdentifierKey], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v9 = v8;
        goto LABEL_14;
      }
    }

    else
    {
      v10 = _MADLog(@"V2");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v14 = v3;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{ControlManager:getSAFRegistrationBundleID} Unable to parse Info.plist in %{public}@ to dictionary", buf, 0xCu);
      }
    }

    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v14 = @"SAFBundleIdentifier";
      v15 = 2114;
      v16 = kCFBundleIdentifierKey;
      v17 = 2114;
      v18 = v3;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{ControlManager:getSAFRegistrationBundleID} Unable to find bundle ID from '%{public}@' key and asset type from %{public}@ key in: %{public}@", buf, 0x20u);
    }
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)registerAssetsWithSpaceAttributes
{
  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v2 = _os_activity_create(&dword_0, "ControlManager:registerAssetsWithSpaceAttributes", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    v31 = deviceOSBuildVersion();
    v32 = _MAPreferencesCopyNSStringValue(@"SpaceAttributionRegisterVersion");
    v3 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = @"None";
      if (v32)
      {
        v4 = v32;
      }

      *buf = 138412546;
      v56 = v4;
      v57 = 2112;
      v58 = v31;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Previous registered build: %@. Build version: %@", buf, 0x16u);
    }

    if (!v32 || ([SUCore stringIsEqual:v32 to:v31]& 1) == 0)
    {
      v5 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Registering downloaded and preInstalled mobile assets with space attribution framework.", buf, 2u);
      }

      if (_os_feature_enabled_impl() && objc_opt_class() && (v6 = [SAPathManager alloc], v7 = objc_opt_respondsToSelector(), v6, (v7 & 1) != 0))
      {
        v37 = objc_alloc_init(NSMutableArray);
        v8 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Registering downloaded and preInstalled mobile assets with space attribution framework.", buf, 2u);
        }

        v49 = 0u;
        v50 = 0u;
        v48 = 0u;
        v47 = 0u;
        v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
        v53[0] = v9;
        v10 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
        v53[1] = v10;
        obj = [NSArray arrayWithObjects:v53 count:2];

        v35 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        if (v35)
        {
          v34 = *v48;
          do
          {
            for (i = 0; i != v35; i = i + 1)
            {
              if (*v48 != v34)
              {
                objc_enumerationMutation(obj);
              }

              v11 = *(*(&v47 + 1) + 8 * i);
              v12 = +[NSFileManager defaultManager];
              v13 = [NSURL URLWithString:v11];
              v14 = [v12 enumeratorAtURL:v13 includingPropertiesForKeys:&__NSArray0__struct options:4 errorHandler:0];

              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v15 = v14;
              v16 = [v15 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v16)
              {
                v17 = *v44;
                do
                {
                  for (j = 0; j != v16; j = j + 1)
                  {
                    if (*v44 != v17)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v19 = *(*(&v43 + 1) + 8 * j);
                    v42 = 0;
                    [(__CFString *)v19 getResourceValue:&v42 forKey:NSURLIsDirectoryKey error:0];
                    v20 = v42;
                    if ([v20 BOOLValue])
                    {
                      v41 = 0;
                      [(__CFString *)v19 getResourceValue:&v41 forKey:NSURLNameKey error:0];
                      v21 = v41;
                      if ([v21 hasSuffix:@".asset"])
                      {
                        v22 = [(ControlManager *)self getSAFRegistrationBundleID:v19];
                        if (v22)
                        {
                          v23 = [SAPathInfo pathInfoWithURL:v19];
                          v24 = v23;
                          if (v23)
                          {
                            [v23 setBundleID:v22];
                            [v37 addObject:v24];
                          }

                          else
                          {
                            v25 = _MADLog(@"V2Control");
                            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 138543362;
                              v56 = v19;
                              _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{ControlManager:registerAssetsWithSpaceAttributes} Failed to create SAPathInfo object for path %{public}@.  Skipping registration of this directory with space attribution", buf, 0xCu);
                            }
                          }
                        }

                        else
                        {
                          v24 = _MADLog(@"V2Control");
                          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138543362;
                            v56 = v19;
                            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} bundleID not found in directory %{public}@.  Skipping registration of this directory with space attribution", buf, 0xCu);
                          }
                        }

                        [v15 skipDescendants];
                      }

                      else if (([v21 hasPrefix:@"com_apple_MobileAsset_"] & 1) == 0 && (objc_msgSend(v21, "hasPrefix:", @"purpose_") & 1) == 0)
                      {
                        [v15 skipDescendants];
                      }
                    }
                  }

                  v16 = [v15 countByEnumeratingWithState:&v43 objects:v52 count:16];
                }

                while (v16);
              }
            }

            v35 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
          }

          while (v35);
        }

        if ([v37 count])
        {
          v26 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v37 count];
            *buf = 134217984;
            v56 = v27;
            _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Bulk registering %lu assets with space attribution.", buf, 0xCu);
          }

          v28 = +[SAPathManager defaultManager];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = __51__ControlManager_registerAssetsWithSpaceAttributes__block_invoke;
          v39[3] = &unk_4B5220;
          v40 = v31;
          [v28 registerPaths:v37 completionHandler:v39];

          v29 = v40;
        }

        else
        {
          v29 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Did not find any downloaded or preInstalled mobile asset to be registered with space attribution.", buf, 2u);
          }
        }

        v30 = v37;
      }

      else
      {
        v30 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Space Attribution SPI for registration is not available or not enabled. Skipping registration.", buf, 2u);
        }
      }
    }

    os_activity_scope_leave(&state);
  }
}

void __51__ControlManager_registerAssetsWithSpaceAttributes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2Control");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Failed to bulk register assets with space attribution. Error: %{public}@", &v6, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v6) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "{ControlManager:registerAssetsWithSpaceAttributes} Successfully bulk registered assets with space attribution.", &v6, 2u);
    }

    _MAPreferencesSetStringValue(@"SpaceAttributionRegisterVersion", *(a1 + 32), @"registerAssetsWithSpaceAttributes", @"Existing assets are registered with Space Attribution.");
  }
}

- (void)updateSpaceAttributionForBundleID:(id)d assetPath:(id)path doRegistration:(BOOL)registration
{
  registrationCopy = registration;
  dCopy = d;
  pathCopy = path;
  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v9 = _os_activity_create(&dword_0, "ControlManager:updateSpaceAttributionForBundleID", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v9, &state);

    v10 = _os_feature_enabled_impl() ^ 1;
    if (!dCopy)
    {
      LOBYTE(v10) = 1;
    }

    if ((v10 & 1) != 0 || !objc_opt_class())
    {
      goto LABEL_19;
    }

    if (updateSpaceAttributionForBundleID_assetPath_doRegistration__once != -1)
    {
      [ControlManager updateSpaceAttributionForBundleID:assetPath:doRegistration:];
    }

    if (registrationCopy)
    {
      v11 = [SAPathManager alloc];
      v12 = objc_opt_respondsToSelector();

      if (v12)
      {
        v13 = updateSpaceAttributionForBundleID_assetPath_doRegistration__saPathMgr;
        v14 = [SAPathInfo pathInfoWithURL:pathCopy];
        v31 = v14;
        v15 = [NSArray arrayWithObjects:&v31 count:1];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = __77__ControlManager_updateSpaceAttributionForBundleID_assetPath_doRegistration___block_invoke_2;
        v26[3] = &unk_4B5268;
        v27 = pathCopy;
        v28 = dCopy;
        [v13 registerPaths:v15 forBundleID:v28 completionHandler:v26];

        v16 = v27;
LABEL_18:

LABEL_19:
        os_activity_scope_leave(&state);
        goto LABEL_20;
      }

      v16 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v21 = "{ControlManager:updateSpaceAttributionForBundleID} Unable to register with space attribution because registerPaths() is not defined";
    }

    else
    {
      v17 = [SAPathManager alloc];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = updateSpaceAttributionForBundleID_assetPath_doRegistration__saPathMgr;
        v30 = pathCopy;
        v20 = [NSArray arrayWithObjects:&v30 count:1];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = __77__ControlManager_updateSpaceAttributionForBundleID_assetPath_doRegistration___block_invoke_1253;
        v22[3] = &unk_4B5268;
        v23 = pathCopy;
        v24 = dCopy;
        [v19 unregisterURLs:v20 forBundleID:v24 completionHandler:v22];

        v16 = v23;
        goto LABEL_18;
      }

      v16 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v21 = "{ControlManager:updateSpaceAttributionForBundleID} Unable to unregister with space attribution because unregisterURLs() is not defined";
    }

    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, v21, buf, 2u);
    goto LABEL_18;
  }

LABEL_20:
}

void __77__ControlManager_updateSpaceAttributionForBundleID_assetPath_doRegistration___block_invoke(id a1)
{
  updateSpaceAttributionForBundleID_assetPath_doRegistration__saPathMgr = +[SAPathManager defaultManager];

  _objc_release_x1();
}

void __77__ControlManager_updateSpaceAttributionForBundleID_assetPath_doRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2Control");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v3;
      v8 = "{ControlManager:updateSpaceAttributionForBundleID} Failed to register asset directory '%{public}@' for bundleID '%{public}@' with space attribution. Error: %{public}@";
      v9 = v4;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else if (v5)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v8 = "{ControlManager:updateSpaceAttributionForBundleID} Successfully registered asset directory '%{public}@' for bundleID '%{public}@' with space attribution.";
    v9 = v4;
    v10 = 22;
    goto LABEL_6;
  }
}

void __77__ControlManager_updateSpaceAttributionForBundleID_assetPath_doRegistration___block_invoke_1253(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2Control");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v13 = 138543874;
      v14 = v6;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v3;
      v8 = "{ControlManager:updateSpaceAttributionForBundleID} Failed to unregister asset directory '%{public}@' for bundleID '%{public}@' with space attribution. Error: %{public}@";
      v9 = v4;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v8, &v13, v10);
    }
  }

  else if (v5)
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v8 = "{ControlManager:updateSpaceAttributionForBundleID} Successfully unregistered asset directory '%{public}@' for bundleID '%{public}@' with space attribution.";
    v9 = v4;
    v10 = 22;
    goto LABEL_6;
  }
}

- (ControlManager)init
{
  v50.receiver = self;
  v50.super_class = ControlManager;
  v2 = [(ControlManager *)&v50 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileAsset.daemon.metaData", v3);
    metaDataQueue = v2->_metaDataQueue;
    v2->_metaDataQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileAsset.daemon.asset", v6);
    assetQueue = v2->_assetQueue;
    v2->_assetQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MobileAsset.daemon.cachedelete", v9);
    cachedeleteQueue = v2->_cachedeleteQueue;
    v2->_cachedeleteQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.MobileAsset.daemon.analytics", v12);
    analyticsQueue = v2->_analyticsQueue;
    v2->_analyticsQueue = v13;

    if (__isPlatformVersionAtLeast(2, 26, 0, 0))
    {
      if (mapV2ErrorIndications)
      {
        mapV2ErrorIndications();
      }

      if (mapMABrainErrorIndications)
      {
        mapMABrainErrorIndications();
      }
    }

    [(ControlManager *)v2 _repairRepositoriesIfNecessary];
    v15 = v2->_assetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __22__ControlManager_init__block_invoke;
    block[3] = &unk_4B2AA0;
    v16 = v2;
    v49 = v16;
    dispatch_async(v15, block);
    [(ControlManager *)v16 ensureProperDirectoryState];
    v17 = v2->_assetQueue;
    v43 = _NSConcreteStackBlock;
    v44 = 3221225472;
    v45 = __22__ControlManager_init__block_invoke_1260;
    v46 = &unk_4B2AA0;
    v18 = v16;
    v47 = v18;
    dispatch_async(v17, &v43);
    v19 = [MADAnalyticsManager getAnalyticsManager:v43];
    analytics = v18->_analytics;
    v18->_analytics = v19;

    v21 = +[MADCacheDeleteManager sharedManager];
    cacheDeleteManager = v18->_cacheDeleteManager;
    v18->_cacheDeleteManager = v21;

    v18->_reclaimSpace = 0;
    targetingAmountString = v18->_targetingAmountString;
    v18->_targetingPurgeAmount = 0;
    v18->_targetingAmountString = 0;

    v18->_reclaimUrgency = -1;
    reclaimUrgencyName = v18->_reclaimUrgencyName;
    v18->_reclaimUrgencyName = 0;

    reclaimVolume = v18->_reclaimVolume;
    v18->_reclaimVolume = 0;

    cacheDeleteOperationName = v18->_cacheDeleteOperationName;
    v18->_cacheDeleteOperationName = 0;

    assetTypesForReclaimStats = v18->_assetTypesForReclaimStats;
    v18->_currentTimeInSeconds = 0.0;
    v18->_assetTypesForReclaimStats = 0;

    __asm { FMOV            V0.2D, #-1.0 }

    *&v18->_preciousNumberOfSeconds = _Q0;
    garbageCollectionAlterAssetType = v18->_garbageCollectionAlterAssetType;
    v18->_deltaToCurrentTimeSeconds = -1.0;
    v18->_garbageCollectionAlterAssetType = 0;

    garbageCollectionAlterBehavior = v18->_garbageCollectionAlterBehavior;
    v18->_garbageCollectionAlterBehavior = 0;

    unlockedUnreferencedDescriptors = v18->_unlockedUnreferencedDescriptors;
    v18->_unlockedUnreferencedDescriptors = 0;

    unlockedReferencedDescriptors = v18->_unlockedReferencedDescriptors;
    v18->_unlockedReferencedDescriptors = 0;

    lockedOverridableAutoAssetDescriptors = v18->_lockedOverridableAutoAssetDescriptors;
    v18->_lockedOverridableAutoAssetDescriptors = 0;

    lockedNeverRemoveAutoAssetDescriptors = v18->_lockedNeverRemoveAutoAssetDescriptors;
    v18->_lockedNeverRemoveAutoAssetDescriptors = 0;

    stagedAutoAssetDescriptors = v18->_stagedAutoAssetDescriptors;
    v18->_stagedAutoAssetDescriptors = 0;

    registerWithSpaceAttributionArray = v18->_registerWithSpaceAttributionArray;
    v18->_registerWithSpaceAttributionArray = 0;

    unregisterWithSpaceAttributionArray = v18->_unregisterWithSpaceAttributionArray;
    v18->_unregisterWithSpaceAttributionArray = 0;

    v18->_allowSTExtractorPluginLoadFromDownloadedMABrain = 1;
  }

  return v2;
}

void __22__ControlManager_init__block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} loading asset-types, applying data vaults, removing obsolete V1 assets...", buf, 2u);
  }

  [*(a1 + 32) applyDataVaults];
  [*(a1 + 32) removeAllObsoletedV1Assets];
  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} ...loading asset-types, applying data vaults, removing obsolete V1 assets", v4, 2u);
  }
}

void __22__ControlManager_init__block_invoke_1260(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} finishAllPartiallyPurgedAssets...", buf, 2u);
  }

  finishAllPartiallyPurgedAssets(@"ControlManager initialization");
  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} ...finishAllPartiallyPurgedAssets", v10, 2u);
  }

  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    if (_os_feature_enabled_impl())
    {
      if (objc_opt_class())
      {
        v4 = [SAPathManager alloc];
        v5 = objc_opt_respondsToSelector();

        if (v5)
        {
          v6 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *v9 = 0;
            _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} registerAssetsWithSpaceAttributes...", v9, 2u);
          }

          [*(a1 + 32) registerAssetsWithSpaceAttributes];
          v7 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            *v8 = 0;
            _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {ControlManager:init} ...registerAssetsWithSpaceAttributes...", v8, 2u);
          }
        }
      }
    }
  }
}

- (void)registerForCacheDeleteMigration
{
  if (usingCentralizedCachedelete() && (!&_os_variant_uses_ephemeral_storage || (os_variant_uses_ephemeral_storage() & 1) == 0))
  {
    v3 = +[BGSystemTaskScheduler sharedScheduler];
    cachedeleteQueue = [(ControlManager *)self cachedeleteQueue];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __49__ControlManager_registerForCacheDeleteMigration__block_invoke;
    v14[3] = &unk_4B5290;
    v14[4] = self;
    [v3 registerForTaskWithIdentifier:@"com.apple.MobileAsset.MigrateCacheDelete" usingQueue:cachedeleteQueue launchHandler:v14];

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v6 = [v5 taskRequestForIdentifier:@"com.apple.MobileAsset.MigrateCacheDelete"];

    if (!v6)
    {
      v7 = [[BGNonRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.MobileAsset.MigrateCacheDelete"];
      [v7 setRequiresNetworkConnectivity:0];
      [v7 setRequiresExternalPower:1];
      [v7 setScheduleAfter:60.0];
      [v7 setTrySchedulingBefore:3600.0];
      v8 = +[BGSystemTaskScheduler sharedScheduler];
      v13 = 0;
      v9 = [v8 submitTaskRequest:v7 error:&v13];
      v10 = v13;

      if ((v9 & 1) == 0)
      {
        v11 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (v10)
          {
            v12 = [v10 description];
          }

          else
          {
            v12 = @"Unknown Error";
          }

          *buf = 138543362;
          v16 = v12;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Failed to submit task with error: %{public}@", buf, 0xCu);
          if (v10)
          {
          }
        }
      }
    }
  }
}

- (void)handleCacheDeleteMigration:(id)migration
{
  migrationCopy = migration;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __45__ControlManager_handleCacheDeleteMigration___block_invoke;
  v25[3] = &unk_4B4400;
  v25[4] = &v26;
  [migrationCopy setExpirationHandler:v25];
  getAssetTypeDirectoriesForVolume(0);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v4 = v22 = 0u;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v6)
  {
    v7 = *v22;
    while (2)
    {
      v8 = 0;
      v9 = v5;
      v5 = &v6[v5];
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (v27[3])
        {
          v5 = v9;
          goto LABEL_13;
        }

        v10 = *(*(&v21 + 1) + 8 * v8);
        path = [v10 path];
        v12 = isDirStatsEnabledForDirectory(path);

        if (!v12)
        {
          path2 = [v10 path];
          enableDirStatsForDirectory(path2);
        }

        ++v9;
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v21 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if (v5 == [v4 count])
  {
    v30 = @"Number of Directories Migrated";
    v14 = [NSNumber numberWithUnsignedLongLong:v5];
    v31 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    [v15 writeToFile:@"/private/var/MobileSoftwareUpdate/.MACDMigrated.plist" atomically:1];

    [migrationCopy setTaskCompleted];
    v16 = 0;
  }

  else
  {
    v20 = 0;
    v17 = [migrationCopy setTaskExpiredWithRetryAfter:&v20 error:0.0];
    v16 = v20;
    if ((v17 & 1) == 0)
    {
      v18 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = @"Unknown";
        if (v16)
        {
          v19 = v16;
        }

        *buf = 138543362;
        v33 = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Failed to expire task with error: %{public}@", buf, 0xCu);
      }

      [migrationCopy setTaskCompleted];
    }
  }

  _Block_object_dispose(&v26, 8);
}

- (void)sendPmvResults:(id)results pmvInfo:(id)info postedDate:(id)date lastFetchedDate:(id)fetchedDate result:(int64_t)result connection:(id)connection message:(id)message
{
  resultsCopy = results;
  infoCopy = info;
  dateCopy = date;
  fetchedDateCopy = fetchedDate;
  connectionCopy = connection;
  messageCopy = message;
  v19 = objc_opt_new();
  if (resultsCopy)
  {
    [v19 setObject:resultsCopy forKey:@"pmvEntriesToFrameWork"];
  }

  if (dateCopy | fetchedDateCopy)
  {
    v20 = objc_opt_new();
    v21 = v20;
    if (dateCopy)
    {
      [v20 setObject:dateCopy forKey:@"postedDate"];
    }

    if (fetchedDateCopy)
    {
      [v21 setObject:fetchedDateCopy forKey:@"lastTimeChecked"];
    }

    [v19 setObject:v21 forKey:@"metaToFrameWork"];
    if (infoCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v19 setObject:infoCopy forKey:@"pmvInfoToFrameWork"];
      }
    }
  }

  else
  {
    v21 = 0;
  }

  reply = xpc_dictionary_create_reply(messageCopy);
  if (reply)
  {
    if (addObjectToMessage())
    {
      resultCopy = result;
    }

    else
    {
      resultCopy = 10;
    }

    xpc_dictionary_set_int64(reply, "Result", resultCopy);
    xpc_connection_send_message(connectionCopy, reply);
  }
}

- (void)sendQueryResults:(id)results assetType:(id)type purpose:(id)purpose catalogInfo:(id)info returnTypes:(int64_t)types postedDate:(id)date lastFetchedDate:(id)fetchedDate result:(int64_t)self0 isFiltered:(BOOL)self1 requireSpecificAsset:(BOOL)self2 connection:(id)self3 message:(id)self4 clientName:(id)self5
{
  resultsCopy = results;
  typeCopy = type;
  purposeCopy = purpose;
  infoCopy = info;
  dateCopy = date;
  fetchedDateCopy = fetchedDate;
  connectionCopy = connection;
  original = message;
  nameCopy = name;
  v25 = objc_opt_new();
  v55 = dateCopy;
  if (resultsCopy)
  {
    allValues = [resultsCopy allValues];
    [v25 setObject:allValues forKey:@"assetsToFrameWork"];

    dateCopy = v55;
  }

  v53 = fetchedDateCopy;
  if (dateCopy | fetchedDateCopy)
  {
    v27 = objc_opt_new();
    v28 = v27;
    if (dateCopy)
    {
      [v27 setObject:dateCopy forKey:@"postedDate"];
    }

    if (fetchedDateCopy)
    {
      [v28 setObject:fetchedDateCopy forKey:@"lastTimeChecked"];
    }

    [v25 setObject:v28 forKey:@"metaToFrameWork"];
    if (infoCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v25 setObject:infoCopy forKey:@"catalogInfoToFrameWork"];
      }
    }
  }

  else
  {
    v28 = 0;
  }

  assetCopy2 = asset;
  v66 = 0;
  v50 = v25;
  v30 = [NSKeyedArchiver archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v66];
  v31 = v66;
  v54 = infoCopy;
  v47 = v28;
  if (v31 || !v30)
  {

    v40 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v68 = v31;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "returnXml Encoding error: %{public}@", buf, 0xCu);
    }

    reply = xpc_dictionary_create_reply(original);
    v39 = 0;
    v30 = 0;
    result = 10;
    if (reply)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v33 = xpc_dictionary_create_reply(original);
    if (v33)
    {
      reply = v33;
      uTF8String = [@"xmlData" UTF8String];
      bytes = [v30 bytes];
      v37 = [v30 length];
      v38 = uTF8String;
      assetCopy2 = asset;
      xpc_dictionary_set_data(reply, v38, bytes, v37);
      v39 = v30;
LABEL_19:
      xpc_dictionary_set_int64(reply, "Result", result);
      xpc_connection_send_message(connectionCopy, reply);

      v30 = v39;
    }
  }

  v41 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [resultsCopy count]);
  analyticsQueue = self->_analyticsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __173__ControlManager_sendQueryResults_assetType_purpose_catalogInfo_returnTypes_postedDate_lastFetchedDate_result_isFiltered_requireSpecificAsset_connection_message_clientName___block_invoke;
  block[3] = &unk_4B52B8;
  block[4] = self;
  v58 = typeCopy;
  v59 = nameCopy;
  v60 = purposeCopy;
  v61 = v41;
  resultCopy = result;
  typesCopy = types;
  filteredCopy = filtered;
  v65 = assetCopy2;
  v43 = v41;
  v44 = purposeCopy;
  v45 = nameCopy;
  v46 = typeCopy;
  dispatch_async(analyticsQueue, block);
}

void __173__ControlManager_sendQueryResults_assetType_purpose_catalogInfo_returnTypes_postedDate_lastFetchedDate_result_isFiltered_requireSpecificAsset_connection_message_clientName___block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) analytics];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = queryResultString(*(a1 + 72));
  v6 = *(a1 + 64);
  v7 = stringForMAQueryReturnTypes(*(a1 + 80));
  LOWORD(v8) = *(a1 + 88);
  [v9 recordQueryAttemptForAssetType:v2 clientName:v3 purpose:v4 result:v5 assetCount:v6 returnTypes:v7 filtered:v8 requireSpecificAsset:?];
}

- (id)newCatalogLoad:(id)load withPurpose:(id)purpose
{
  loadCopy = load;
  purposeCopy = purpose;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__16;
  v22 = __Block_byref_object_dispose__16;
  v23 = 0;
  v8 = getPathToAssetFileWithPurpose(loadCopy, purposeCopy);
  v9 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "Catalog fileLocation: %{public}@", buf, 0xCu);
  }

  if (v8)
  {
    v10 = +[NSFileManager defaultManager];
    v11 = [v10 fileExistsAtPath:v8];

    if (v11)
    {
      metaDataQueue = self->_metaDataQueue;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __45__ControlManager_newCatalogLoad_withPurpose___block_invoke;
      v15[3] = &unk_4B2EA8;
      v16 = v8;
      v17 = &v18;
      dispatch_sync(metaDataQueue, v15);
    }
  }

  v13 = v19[5];

  _Block_object_dispose(&v18, 8);
  return v13;
}

void __45__ControlManager_newCatalogLoad_withPurpose___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[NSDictionary alloc] initWithContentsOfFile:*(a1 + 32)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    DeepCopy = CFPropertyListCreateDeepCopy(kCFAllocatorDefault, v3, 1uLL);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = DeepCopy;

    v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:@"Assets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      applyCatalogTransforms(0, v7);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (id)getMetadataFromCatalog:(id)catalog key:(id)key withPurpose:(id)purpose
{
  catalogCopy = catalog;
  keyCopy = key;
  purposeCopy = purpose;
  v11 = objc_autoreleasePoolPush();
  v12 = [(ControlManager *)self newCatalogLoad:catalogCopy withPurpose:purposeCopy];
  v13 = v12;
  v14 = 0;
  if (keyCopy && v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 objectForKey:keyCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  objc_autoreleasePoolPop(v11);

  return v14;
}

- (id)getCatalogLastModifiedDate:(id)date ifFromXmlUrl:(id)url withPurpose:(id)purpose
{
  dateCopy = date;
  urlCopy = url;
  purposeCopy = purpose;
  v11 = objc_autoreleasePoolPush();
  v12 = [(ControlManager *)self newCatalogLoad:dateCopy withPurpose:purposeCopy];
  if (v12)
  {
    v13 = v12;
    v45 = urlCopy;
    v43 = v11;
    v14 = [v12 objectForKey:@"DownloadedFromXml"];
    v15 = [v13 objectForKey:@"DownloadedFrom"];
    v16 = [v13 objectForKey:@"DownloadedFromLive"];
    v17 = [v13 objectForKey:@"catalogInfo"];
    v44 = v15;
    v42 = v17;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [NSURL URLWithString:v14, v42];
        v19 = v18;
        if (v18)
        {
          v20 = [v18 isEqual:urlCopy];
          v39URLByDeletingLastPathComponent = _MADLog(@"V2Control");
          v22 = os_log_type_enabled(v39URLByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT);
          if (v20)
          {
            if (!v22)
            {
              goto LABEL_9;
            }

            *buf = 138543618;
            v47 = @"DownloadedFromXml";
            v48 = 2114;
            v49 = urlCopy;
            goto LABEL_8;
          }

          if (v22)
          {
            *buf = 138543874;
            v47 = @"DownloadedFromXml";
            v48 = 2114;
            v49 = v19;
            v50 = 2114;
            v51 = urlCopy;
            v34 = "Prior catalog had a different %{public}@ URL: %{public}@ so we will not use a Last-Modified when downloading %{public}@";
            v35 = v39URLByDeletingLastPathComponent;
            v36 = OS_LOG_TYPE_DEFAULT;
LABEL_36:
            _os_log_impl(&dword_0, v35, v36, v34, buf, 0x20u);
          }
        }

        else
        {
          v39URLByDeletingLastPathComponent = _MADLog(@"V2");
          if (os_log_type_enabled(v39URLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v47 = @"DownloadedFromXml";
            v48 = 2114;
            v49 = v14;
            v50 = 2114;
            v51 = urlCopy;
            v34 = "Prior catalog did not have a URL string for %{public}@ (was %{public}@) so we will not use a Last-Modified when downloading %{public}@";
LABEL_35:
            v35 = v39URLByDeletingLastPathComponent;
            v36 = OS_LOG_TYPE_ERROR;
            goto LABEL_36;
          }
        }

LABEL_37:

        goto LABEL_38;
      }

      v19 = _MADLog(@"V2");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_38:
        v23 = 0;
        goto LABEL_39;
      }

      *buf = 138543874;
      v47 = @"DownloadedFromXml";
      v48 = 2114;
      v49 = v14;
      v50 = 2114;
      v51 = urlCopy;
      v24 = "Prior catalog did not have a string for %{public}@ (was %{public}@) so we will not use a Last-Modified when downloading %{public}@";
      goto LABEL_20;
    }

    if (v16)
    {
      v19 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v47 = @"DownloadedFromLive";
        v48 = 2114;
        v49 = urlCopy;
        v24 = "Prior catalog had %{public}@, so we will not use Last-Modified when downloading %{public}@";
        v25 = v19;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 22;
LABEL_21:
        _os_log_impl(&dword_0, v25, v26, v24, buf, v27);
        goto LABEL_38;
      }

LABEL_64:
      v23 = 0;
      urlCopy = v45;
      goto LABEL_39;
    }

    if (v17)
    {
      v28 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v28 objectForKey:{@"isLiveServer", v42}];
        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v19 BOOLValue])
            {
              v29 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                v47 = @"catalogInfo";
                v48 = 2114;
                v49 = @"isLiveServer";
                v50 = 2114;
                v51 = v45;
                v30 = "Prior catalog was from Pallas: %{public}@/%{public}@. We will not use a Last-Modified when downloading %{public}@";
                v31 = v29;
                v32 = OS_LOG_TYPE_DEFAULT;
                v33 = 32;
LABEL_62:
                _os_log_impl(&dword_0, v31, v32, v30, buf, v33);
              }

LABEL_63:

              goto LABEL_64;
            }

            v29 = _MADLog(@"V2");
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_63;
            }

            *buf = 138544130;
            v47 = @"catalogInfo";
            v48 = 2114;
            v49 = @"isLiveServer";
            v50 = 2114;
            v51 = @"DownloadedFromXml";
            v52 = 2114;
            v53 = v45;
            v30 = "Prior catalog had %{public}@ and said it was not %{public}@ ... yet also did not have %{public}@ which makes it unclear if it came from XML. We will not use a Last-Modified when downloading %{public}@";
          }

          else
          {
            v29 = _MADLog(@"V2");
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_63;
            }

            *buf = 138544130;
            v47 = @"catalogInfo";
            v48 = 2114;
            v49 = @"isLiveServer";
            v50 = 2114;
            v51 = @"DownloadedFromXml";
            v52 = 2114;
            v53 = v45;
            v30 = "Prior catalog had a non-number for %{public}@/%{public}@ and it did not have %{public}@ so it looks like a corrupt Pallas catalog. We will not use a Last-Modified when downloading %{public}@";
          }
        }

        else
        {
          v29 = _MADLog(@"V2");
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_63;
          }

          *buf = 138544130;
          v47 = @"catalogInfo";
          v48 = 2114;
          v49 = @"isLiveServer";
          v50 = 2114;
          v51 = @"DownloadedFromXml";
          v52 = 2114;
          v53 = v45;
          v30 = "Prior catalog had %{public}@ and did not indicate %{public}@ ... yet also did not have %{public}@ which makes it unclear if it came from XML. We will not use a Last-Modified when downloading %{public}@";
        }

        v31 = v29;
        v32 = OS_LOG_TYPE_ERROR;
        v33 = 42;
        goto LABEL_62;
      }

      v19 = _MADLog(@"V2");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      *buf = 138543874;
      v47 = @"catalogInfo";
      v48 = 2114;
      v49 = @"DownloadedFromXml";
      v50 = 2114;
      v51 = urlCopy;
      v24 = "Prior catalog did not have have a dictionary for %{public}@ and it did not have %{public}@ so it looks like a corrupt catalog. We will not use a Last-Modified when downloading %{public}@";
    }

    else
    {
      if (!v15)
      {
        v19 = _MADLog(@"V2");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138544386;
          v47 = @"DownloadedFromXml";
          v48 = 2114;
          v49 = @"DownloadedFrom";
          v50 = 2114;
          v51 = @"DownloadedFromLive";
          v52 = 2114;
          v53 = @"catalogInfo";
          v54 = 2114;
          v55 = urlCopy;
          v24 = "Prior catalog has no %{public}@ or %{public}@ or %{public}@ or %{public}@, so we will not use a Last-Modified when downloading %{public}@";
          v25 = v19;
          v26 = OS_LOG_TYPE_ERROR;
          v27 = 52;
          goto LABEL_21;
        }

        goto LABEL_64;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = [NSURL URLWithString:v15, v42];
        v19 = v38;
        if (!v38)
        {
          v39URLByDeletingLastPathComponent = _MADLog(@"V2");
          if (!os_log_type_enabled(v39URLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          *buf = 138543874;
          v47 = @"DownloadedFrom";
          v48 = 2114;
          v49 = v44;
          v50 = 2114;
          v51 = urlCopy;
          v34 = "Prior catalog did not have a URL string for %{public}@ (was %{public}@) so we will not use a Last-Modified when downloading %{public}@";
          goto LABEL_35;
        }

        if (![v38 isEqual:urlCopy])
        {
          uRLByDeletingLastPathComponent = [(__CFString *)urlCopy URLByDeletingLastPathComponent];
          v39URLByDeletingLastPathComponent = [uRLByDeletingLastPathComponent URLByDeletingLastPathComponent];

          LOBYTE(uRLByDeletingLastPathComponent) = [v19 isEqual:v39URLByDeletingLastPathComponent];
          v40 = _MADLog(@"V2Control");
          v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
          if ((uRLByDeletingLastPathComponent & 1) == 0)
          {
            if (v41)
            {
              *buf = 138543874;
              v47 = @"DownloadedFrom";
              v48 = 2114;
              v49 = v19;
              v50 = 2114;
              v51 = urlCopy;
              _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Prior catalog had a different base %{public}@ URL: %{public}@ so we will not use a Last-Modified when downloading %{public}@", buf, 0x20u);
            }

            goto LABEL_37;
          }

          if (v41)
          {
            *buf = 138543874;
            v47 = @"DownloadedFrom";
            v48 = 2114;
            v49 = v19;
            v50 = 2114;
            v51 = urlCopy;
            _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "Prior catalog had a base %{public}@ URL that matches: %{public}@ so we will use a Last-Modified when downloading %{public}@", buf, 0x20u);
          }

          goto LABEL_9;
        }

        v39URLByDeletingLastPathComponent = _MADLog(@"V2Control");
        if (!os_log_type_enabled(v39URLByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT))
        {
LABEL_9:

          v19 = [v13 objectForKey:@"postedDate"];
          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v19 copy];
LABEL_39:

              v11 = v43;
              goto LABEL_40;
            }
          }

          v39URLByDeletingLastPathComponent = _MADLog(@"V2");
          if (!os_log_type_enabled(v39URLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          *buf = 138543874;
          v47 = @"postedDate";
          v48 = 2114;
          v49 = v19;
          v50 = 2114;
          v51 = urlCopy;
          v34 = "Prior catalog has no or invalid %{public}@ (was %{public}@), so we will not use a Last-Modified when downloading %{public}@";
          goto LABEL_35;
        }

        *buf = 138543618;
        v47 = @"DownloadedFrom";
        v48 = 2114;
        v49 = urlCopy;
LABEL_8:
        _os_log_impl(&dword_0, v39URLByDeletingLastPathComponent, OS_LOG_TYPE_DEFAULT, "Prior catalog had %{public}@ which matches the URL, we will attempt to use a Last-Modified when downloading %{public}@", buf, 0x16u);
        goto LABEL_9;
      }

      v19 = _MADLog(@"V2");
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }

      *buf = 138543874;
      v47 = @"DownloadedFrom";
      v48 = 2114;
      v49 = v44;
      v50 = 2114;
      v51 = urlCopy;
      v24 = "Prior catalog did not have a string for %{public}@ (was %{public}@) so we will not use a Last-Modified when downloading %{public}@";
    }

LABEL_20:
    v25 = v19;
    v26 = OS_LOG_TYPE_ERROR;
    v27 = 32;
    goto LABEL_21;
  }

  v13 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v47 = dateCopy;
    v48 = 2114;
    v49 = urlCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Prior catalog could not be loaded (may not have been downloaded yet) for %{public}@ so we will not use a Last-Modified when downloading %{public}@", buf, 0x16u);
  }

  v23 = 0;
LABEL_40:

  objc_autoreleasePoolPop(v11);

  return v23;
}

- (BOOL)hasOnlyAllowedDifferencesFrom:(id)from inAttributes:(id)attributes assetId:(id)id assetType:(id)type allowed:(id)allowed foundAbsoluteId:(id *)absoluteId foundDiff:(id *)diff
{
  fromCopy = from;
  attributesCopy = attributes;
  idCopy = id;
  typeCopy = type;
  allowedCopy = allowed;
  v19 = 0;
  v20 = 0;
  if (fromCopy && attributesCopy)
  {
    v21 = 0;
    if (typeCopy)
    {
      v21 = [[MAAbsoluteAssetId alloc] initWithAssetId:idCopy forAssetType:typeCopy attributes:attributesCopy];
      v19 = [fromCopy diffFrom:v21];
      if ([v19 hasOnlyAllowedDifferences:allowedCopy])
      {
        v20 = 1;
        if (!absoluteId)
        {
          goto LABEL_10;
        }

LABEL_9:
        v22 = v21;
        *absoluteId = v21;
        goto LABEL_10;
      }

      v20 = 0;
      v19 = 0;
      v21 = 0;
    }

    if (!absoluteId)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v21 = 0;
  if (absoluteId)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (diff)
  {
    v23 = v19;
    *diff = v19;
  }

  return v20;
}

- (id)determineBestMatchFor:(id)for absoluteId:(id)id allowedDifferences:(id)differences fromResults:(id)results isExact:(BOOL *)exact candidates:(unint64_t *)candidates bestMatch:(id *)match differencesFound:(id *)self0 missedTypeAndAssetIdMatch:(id *)self1
{
  forCopy = for;
  idCopy = id;
  differencesCopy = differences;
  resultsCopy = results;
  v20 = [[NSMutableDictionary alloc] initWithCapacity:1];
  v56 = differencesCopy;
  v52 = resultsCopy;
  if (!idCopy)
  {
    v43 = 0;
    v42 = 0;
    v41 = 0;
    v53 = 0;
    v59 = 0;
    goto LABEL_39;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v21 = resultsCopy;
  v65 = [v21 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (!v65)
  {

    v59 = 0;
    v53 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v39 = 0;
    goto LABEL_38;
  }

  exactCopy = exact;
  candidatesCopy = candidates;
  v51 = v20;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v57 = 0;
  v63 = 0;
  v66 = 0;
  v53 = 0;
  v61 = *v71;
  v54 = forCopy;
  v55 = idCopy;
  v62 = v21;
  do
  {
    v22 = 0;
    do
    {
      if (*v71 != v61)
      {
        objc_enumerationMutation(v21);
      }

      v23 = *(*(&v70 + 1) + 8 * v22);
      context = objc_autoreleasePoolPush();
      v24 = [v21 objectForKeyedSubscript:v23];
      v25 = [v24 objectForKey:@"AssetProperties"];
      v68 = 0;
      v69 = 0;
      v26 = [(ControlManager *)self hasOnlyAllowedDifferencesFrom:idCopy inAttributes:v25 assetId:v23 assetType:forCopy allowed:differencesCopy foundAbsoluteId:&v69 foundDiff:&v68];
      v27 = v69;
      v28 = v68;
      v29 = v28;
      if (v26)
      {
        ++v63;
        v30 = v60;
        if (!v60)
        {
          v34 = [v28 isSameAssetId] | v57;
          goto LABEL_26;
        }

        if ([v28 isSameForAllAttributes] && !objc_msgSend(v66, "isSameForAllAttributes"))
        {
LABEL_25:
          v34 = 1;
LABEL_26:
          v57 = v34;
LABEL_27:
          v35 = v23;

          v36 = v27;
          v31 = v58;
          v32 = v29;
          v33 = v66;
          v59 = v36;
          v60 = v35;
          v58 = v24;
          v66 = v29;
          forCopy = v54;
LABEL_28:

          v37 = v32;
          idCopy = v55;
          differencesCopy = v56;
          goto LABEL_29;
        }

        if ([v29 isSameAssetId] && objc_msgSend(v29, "isSameDownloadContent"))
        {
          if (![v66 isSameAssetId])
          {
            v57 = 1;
            v30 = v60;
            goto LABEL_27;
          }

          v30 = v60;
          if (![v66 isSameDownloadContent])
          {
            goto LABEL_25;
          }
        }

        if ([v29 isSameAssetId] && !objc_msgSend(v66, "isSameAssetId"))
        {
          goto LABEL_25;
        }

        if ([v29 isSameDownloadContent] && (objc_msgSend(v66, "isSameDownloadContent") & 1) == 0)
        {
          goto LABEL_27;
        }

        if ([v29 isSameAssetId] && objc_msgSend(v29, "isSameAssetType"))
        {
          v31 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v75 = forCopy;
            v76 = 2114;
            v77 = v23;
            v78 = 2114;
            v79 = differencesCopy;
            v80 = 2114;
            v81 = v29;
            _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Asset %{public}@ %{public}@ despite appearing to be a type + assetId match for the requested asset load, did not match allowed diff %{public}@ because its diff was %{public}@", buf, 0x2Au);
          }

          v32 = v27;
          v33 = v53;
          v53 = v27;
          goto LABEL_28;
        }
      }

LABEL_29:

      objc_autoreleasePoolPop(context);
      v22 = v22 + 1;
      v21 = v62;
    }

    while (v65 != v22);
    v38 = [v62 countByEnumeratingWithState:&v70 objects:v82 count:16];
    v65 = v38;
  }

  while (v38);

  v39 = v60;
  if (v60)
  {
    v20 = v51;
    v40 = v58;
    [v51 setObject:v58 forKey:v60];
    exact = exactCopy;
    candidates = candidatesCopy;
    v41 = v66;
    v42 = v63;
    v43 = v57;
  }

  else
  {
    candidates = candidatesCopy;
    v20 = v51;
    exact = exactCopy;
    v41 = v66;
    v42 = v63;
    v43 = v57;
    v40 = v58;
  }

LABEL_38:

LABEL_39:
  if (exact)
  {
    *exact = v43 & 1;
  }

  if (candidates)
  {
    *candidates = v42;
  }

  if (match)
  {
    v44 = v59;
    *match = v59;
  }

  if (found)
  {
    v45 = v41;
    *found = v41;
  }

  if (idMatch)
  {
    v46 = v53;
    *idMatch = v53;
  }

  v47 = v20;

  return v20;
}

- (id)applyPmvQuery:(id)query queryDict:(id)dict explanation:(id *)explanation
{
  queryCopy = query;
  dictCopy = dict;
  v8 = [dictCopy objectForKey:@"includeSupervised"];
  v22 = v8;
  if (v8 && (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v10 = [dictCopy objectForKey:@"platformExactMatch"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v10 = 0;
  }

  v11 = [dictCopy objectForKey:@"versionPrefix"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = [dictCopy objectForKey:@"supportedDevicePrefix"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v12 = 0;
  }

  v13 = [dictCopy objectForKey:@"postedBefore"];
  v14 = [dictCopy objectForKey:@"notExpiredBefore"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v14 = 0;
  }

  if (!(v13 | v14))
  {
    v17 = 0;
    v18 = 0;
    goto LABEL_23;
  }

  explanationCopy = explanation;
  v16 = objc_alloc_init(NSDateFormatter);
  [v16 setDateFormat:@"yyyy-MM-dd"];
  if (!v13)
  {
    v17 = 0;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_21:
    v18 = 0;
    goto LABEL_22;
  }

  v17 = [v16 dateFromString:v13];
  if (!v14)
  {
    goto LABEL_21;
  }

LABEL_18:
  v18 = [v16 dateFromString:v14];
LABEL_22:

  explanation = explanationCopy;
LABEL_23:
  v19 = filterPMV(queryCopy, bOOLValue, v10, v11, v12, v17, v18, explanation);

  return v19;
}

- (BOOL)loadRepository:(id)repository localIds:(id *)ids withPurpose:(id)purpose
{
  purposeCopy = purpose;
  repositoryCopy = repository;
  v9 = normalizedAssetType(repositoryCopy);
  v10 = repositoryPath(repositoryCopy);

  v11 = [v10 stringByAppendingPathComponent:v9];

  if (purposeCopy)
  {
    v12 = purposeDirectoryName(purposeCopy);
    v13 = [v11 stringByAppendingPathComponent:v12];

    v11 = v13;
  }

  v14 = getInstalledAssetIds(v11);
  v15 = v14;
  if (ids)
  {
    v16 = v14;
    *ids = v15;
  }

  return v15 != 0;
}

- (BOOL)loadCatalog:(id)catalog catalogAssets:(id *)assets assetIds:(id *)ids postedDate:(id *)date lastFetchDate:(id *)fetchDate catalogInfo:(id *)info withPurpose:(id)purpose
{
  catalogCopy = catalog;
  purposeCopy = purpose;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v12 = _os_activity_create(&dword_0, "ControlManager:loadCatalog", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  context = objc_autoreleasePoolPush();
  v13 = [(ControlManager *)self newCatalogLoad:catalogCopy withPurpose:purposeCopy];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKey:@"lastTimeChecked"];
    v16 = [v14 objectForKey:@"postedDate"];
    v17 = [v14 objectForKey:@"catalogInfo"];
    v18 = getAssetsFromXml(catalogCopy, v14);
    if (v18)
    {
      v19 = [NSMutableSet alloc];
      allKeys = [v18 allKeys];
      v21 = [v19 initWithArray:allKeys];
      v22 = 1;
      goto LABEL_11;
    }

    allKeys = _MADLog(@"V2Control");
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = catalogCopy;
      _os_log_impl(&dword_0, allKeys, OS_LOG_TYPE_DEFAULT, "Could not get asset list out of catalog for %{public}@", buf, 0xCu);
    }

    v18 = 0;
    v21 = 0;
  }

  else
  {
    allKeys = _MADLog(@"V2Control");
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v37 = catalogCopy;
      _os_log_impl(&dword_0, allKeys, OS_LOG_TYPE_DEFAULT, "Could not load catalog for %{public}@", buf, 0xCu);
    }

    v18 = 0;
    v21 = 0;
    v17 = 0;
    v15 = 0;
    v16 = 0;
  }

  v22 = 0;
LABEL_11:

  objc_autoreleasePoolPop(context);
  if (assets)
  {
    v23 = v18;
    *assets = v18;
  }

  if (ids)
  {
    v24 = v21;
    *ids = v21;
  }

  if (date)
  {
    v25 = v16;
    *date = v16;
  }

  if (fetchDate)
  {
    v26 = v15;
    *fetchDate = v15;
  }

  if (info)
  {
    v27 = v17;
    *info = v17;
  }

  os_activity_scope_leave(&state);
  return v22;
}

- (BOOL)categorizeAssetResults:(id)results fromCatalogIds:(id)ids repositoryIds:(id)repositoryIds andPreinstalledIds:(id)preinstalledIds intoServerOnlyIds:(id *)onlyIds installedCatalogIds:(id *)catalogIds andObsoleteIds:(id *)obsoleteIds
{
  preinstalledIdsCopy = preinstalledIds;
  repositoryIdsCopy = repositoryIds;
  idsCopy = ids;
  v16 = [idsCopy mutableCopy];
  [v16 intersectSet:repositoryIdsCopy];
  v17 = [idsCopy mutableCopy];
  [v17 minusSet:repositoryIdsCopy];
  [v17 minusSet:preinstalledIdsCopy];

  v18 = [repositoryIdsCopy mutableCopy];
  [v18 minusSet:idsCopy];

  if (catalogIds)
  {
    v19 = v16;
    *catalogIds = v16;
  }

  if (onlyIds)
  {
    v20 = v17;
    *onlyIds = v17;
  }

  if (obsoleteIds)
  {
    v21 = v18;
    *obsoleteIds = v18;
  }

  return 1;
}

- (void)determinePmv:(id)pmv clientName:(id)name connection:(id)connection message:(id)message queryDict:(id)dict
{
  pmvCopy = pmv;
  nameCopy = name;
  connectionCopy = connection;
  messageCopy = message;
  dictCopy = dict;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_0, "ControlManager:determinePMV", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  dispatch_assert_queue_V2(self->_assetQueue);
  v68 = getPathToPmvFile(pmvCopy);
  if (!v68)
  {
    v27 = _MADLog(@"V2");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v88 = nameCopy;
      v89 = 2114;
      v90 = 0;
      v91 = 2114;
      v92 = pmvCopy;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ Could not read PMV from: %{public}@ error: no path for %{public}@", buf, 0x20u);
    }

    v54 = 0;
    v55 = 0;
    v62 = 0;
    v63 = 0;
    v28 = 0;
    v29 = 0;
    v57 = 0;
    v30 = 7;
    goto LABEL_38;
  }

  v12 = +[NSFileManager defaultManager];
  path = [v68 path];
  v14 = [v12 fileExistsAtPath:path];

  if (!v14)
  {
    v27 = _MADLog(@"V2");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v88 = nameCopy;
      v89 = 2114;
      v90 = v68;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ Could not read PMV from: %{public}@ error: file does not exist", buf, 0x16u);
    }

    v54 = 0;
    v55 = 0;
    v62 = 0;
    v63 = 0;
    v28 = 0;
    v29 = 0;
    v57 = 0;
    v30 = 2;
    goto LABEL_38;
  }

  path2 = [v68 path];
  v16 = [NSData dataWithContentsOfFile:path2];

  if (!v16)
  {
    v27 = _MADLog(@"V2");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v88 = nameCopy;
      v89 = 2114;
      v90 = v68;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ could not load PMV file: %{public}@", buf, 0x16u);
    }

    v54 = 0;
    v55 = 0;
    v62 = 0;
    v63 = 0;
    v28 = 0;
    v29 = 0;
    v57 = 0;
    v30 = 3;
LABEL_38:
    v65 = v30;
LABEL_39:

    goto LABEL_40;
  }

  v82 = 0;
  v17 = [NSJSONSerialization JSONObjectWithData:v16 options:0 error:&v82];
  v18 = v82;
  if (v18)
  {
    v19 = _MADLog(@"V2");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v88 = nameCopy;
      v89 = 2114;
      v90 = v68;
      v91 = 2114;
      v92 = v18;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ could not load PMV JSON: %{public}@ error: %{public}@", buf, 0x20u);
    }

LABEL_7:

    v63 = 0;
    v65 = 3;
    goto LABEL_8;
  }

  if (!v17)
  {
    v19 = _MADLog(@"V2");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v88 = nameCopy;
      v89 = 2114;
      v90 = v68;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ could not load PMV JSON: %{public}@ error: nil after deserialization", buf, 0x16u);
    }

    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v19 = _MADLog(@"V2");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v88 = nameCopy;
      v89 = 2114;
      v90 = v68;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "%{public}@ could not load PMV JSON: %{public}@ error: PMV file contents were not JSON dictionary", buf, 0x16u);
    }

    goto LABEL_7;
  }

  v63 = v17;
  v65 = 0;
LABEL_8:

  if (v63)
  {
    v20 = [v63 objectForKey:@"PublicAssetSets"];
    if (v20)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v20 = v20;
        v21 = [v20 countByEnumeratingWithState:&v78 objects:v86 count:16];
        if (v21)
        {
          v55 = 0;
          v56 = 0;
          v62 = 0;
          v22 = *v79;
          do
          {
            for (i = 0; i != v21; i = i + 1)
            {
              if (*v79 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v24 = *(*(&v78 + 1) + 8 * i);
              v25 = objc_autoreleasePoolPush();
              if (v24)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = [v20 objectForKey:v24];
                  if (v26)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      if ([v24 isEqual:@"iOS"])
                      {
                        v62 = [v26 count];
                      }

                      else if ([v24 isEqual:@"macOS"])
                      {
                        v55 = [v26 count];
                      }

                      else
                      {
                        v56 += [v26 count];
                      }
                    }
                  }
                }
              }

              objc_autoreleasePoolPop(v25);
            }

            v21 = [v20 countByEnumeratingWithState:&v78 objects:v86 count:16];
          }

          while (v21);

          v54 = &v55[v62 + v56];
          goto LABEL_64;
        }
      }
    }

    v54 = 0;
    v55 = 0;
    v62 = 0;
LABEL_64:

    v43 = [v63 objectForKey:@"AssetSets"];
    if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v45)
      {
        v53 = 0;
        v29 = 0;
        v58 = 0;
        v46 = *v75;
        do
        {
          for (j = 0; j != v45; j = j + 1)
          {
            if (*v75 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v74 + 1) + 8 * j);
            v49 = objc_autoreleasePoolPush();
            if (v48)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = [v44 objectForKey:v48];
                if (v50)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if ([v48 isEqual:@"iOS"])
                    {
                      v29 = [v50 count];
                    }

                    else if ([v48 isEqual:@"macOS"])
                    {
                      v58 = [v50 count];
                    }

                    else
                    {
                      v53 += [v50 count];
                    }
                  }
                }
              }
            }

            objc_autoreleasePoolPop(v49);
          }

          v45 = [v44 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v45);
      }

      else
      {
        v53 = 0;
        v29 = 0;
        v58 = 0;
      }

      v52 = v58;
      v51 = v53;
    }

    else
    {
      v51 = 0;
      v29 = 0;
      v52 = 0;
    }

    v57 = v52;
    v28 = &v29[v51 + v52];
    v27 = v43;
    goto LABEL_39;
  }

  v54 = 0;
  v55 = 0;
  v62 = 0;
  v63 = 0;
  v28 = 0;
  v29 = 0;
  v57 = 0;
LABEL_40:
  v73 = @"No filter explanation";
  v31 = [(ControlManager *)self applyPmvQuery:v63 queryDict:dictCopy explanation:&v73];
  v32 = v73;
  v33 = objc_alloc_init(NSMutableArray);
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v34 = v31;
  v35 = [v34 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v35)
  {
    v36 = *v70;
    do
    {
      for (k = 0; k != v35; k = k + 1)
      {
        if (*v70 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v38 = *(*(&v69 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v33 addObject:v38];
        }
      }

      v35 = [v34 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v35);
  }

  v39 = [v33 count];
  v40 = [[NSMutableString alloc] initWithCapacity:512];
  [v40 appendFormat:@"%@ queried PMV for: %@ ", nameCopy, pmvCopy];
  v41 = stringForMAQueryResult(v65);
  [v40 appendFormat:@"and found %ld versions with result %ld (%@) ", v39, v65, v41];

  [v40 appendFormat:@"--> From %ld listed in the PMV JSON (%ld public: %ld iOS %ld macOS, %ld supervised: %ld iOS %ld macOS)", &v54[v28], v54, v62, v55, v28, v29, v57];
  [v40 appendFormat:@"--> %@ ", v32];
  [v40 appendFormat:@"--> Merged to %ld entries ", v39];
  v42 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v88 = v40;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  [(ControlManager *)self sendPmvResults:v33 pmvInfo:0 postedDate:0 lastFetchedDate:0 result:v65 connection:connectionCopy message:messageCopy];
  os_activity_scope_leave(&state);
}

- (void)determineAssets:(id)assets clientName:(id)name connection:(id)connection downloadingTasks:(id)tasks message:(id)message resultTypes:(int64_t)types queryArray:(id)array isForSpecificAsset:(BOOL)self0 specificAssetId:(id)self1 specificAllowedDifferences:(id)self2
{
  assetsCopy = assets;
  nameCopy = name;
  connectionCopy = connection;
  tasksCopy = tasks;
  xdict = message;
  arrayCopy = array;
  idCopy = id;
  differencesCopy = differences;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v18 = _os_activity_create(&dword_0, "ControlManager:determineAssets", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v18, &state);

  dispatch_assert_queue_V2(self->_assetQueue);
  if (arrayCopy)
  {
    v19 = [arrayCopy count] != 0;
  }

  else
  {
    v19 = 0;
  }

  string = xpc_dictionary_get_string(xdict, "Purpose");
  v21 = normalizePurposeFromUtf8(string);
  if (!isWellFormedPurpose(v21))
  {
    v102 = objc_opt_new();
    v100 = objc_opt_new();
    v99 = objc_opt_new();
    v25 = objc_opt_new();
    BYTE1(v70) = asset;
    LOBYTE(v70) = v19;
    [(ControlManager *)self sendQueryResults:v102 assetType:assetsCopy purpose:v21 catalogInfo:v100 returnTypes:types postedDate:v99 lastFetchedDate:v25 result:8 isFiltered:v70 requireSpecificAsset:connectionCopy connection:xdict message:nameCopy clientName:?];
    goto LABEL_56;
  }

  v22 = _MADLog(@"V2Control");
  v90 = v19;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v125 = nameCopy;
    v126 = 2114;
    v127 = assetsCopy;
    v128 = 2048;
    typesCopy = types;
    v130 = 2114;
    v131 = v21;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ queried for: %{public}@ with returnType of: %lld with Purpose: %{public}@", buf, 0x2Au);
  }

  v23 = [(ControlManager *)self returnTypeIncludesPreinstalled:types];
  v121 = 0;
  v122 = 0;
  v24 = getPreinstalledAssetIds(assetsCopy, &v122, &v121);
  v100 = v122;
  v99 = v121;
  v102 = v24;
  if (v24)
  {
    v79 = [v24 count];
  }

  else
  {
    v79 = 0;
  }

  v26 = [(ControlManager *)self returnTypeIncludesInstalledInCatalog:types];
  v120 = 0;
  v27 = [(ControlManager *)self loadRepository:assetsCopy localIds:&v120 withPurpose:v21];
  v94 = v120;
  if ((v27 & 1) == 0)
  {
    v28 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v125 = nameCopy;
      v126 = 2114;
      v127 = assetsCopy;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to load repository for: %{public}@", buf, 0x16u);
    }
  }

  v78 = [v94 count];
  v29 = [(ControlManager *)self returnTypeIncludesServerOnly:types];
  v118 = 0;
  v119 = 0;
  v116 = 0;
  v117 = 0;
  v115 = 0;
  v30 = [(ControlManager *)self loadCatalog:assetsCopy catalogAssets:&v119 assetIds:&v118 postedDate:&v117 lastFetchDate:&v116 catalogInfo:&v115 withPurpose:v21];
  v98 = v119;
  v93 = v118;
  v89 = v117;
  v88 = v116;
  v92 = v115;
  if ((v30 & 1) == 0)
  {
    v31 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v125 = nameCopy;
      v126 = 2114;
      v127 = assetsCopy;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to load catalog for: %{public}@", buf, 0x16u);
    }
  }

  v77 = [v93 count];
  v32 = filterResults(arrayCopy, v98);
  v76 = [v32 count];
  v84 = v32;
  v33 = [[NSMutableDictionary alloc] initWithCapacity:0];
  v113 = 0;
  v114 = 0;
  v112 = 0;
  LOBYTE(v32) = [(ControlManager *)self categorizeAssetResults:assetsCopy fromCatalogIds:v93 repositoryIds:v94 andPreinstalledIds:v102 intoServerOnlyIds:&v114 installedCatalogIds:&v113 andObsoleteIds:&v112];
  v81 = v114;
  v83 = v113;
  v82 = v112;
  if ((v32 & 1) == 0)
  {
    v34 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v125 = nameCopy;
      v126 = 2114;
      v127 = assetsCopy;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to categorize query results for: %{public}@", buf, 0x16u);
    }
  }

  v35 = [(ControlManager *)self returnTypeIncludesObsolete:types andHasCatalog:v98 != 0];
  v36 = v35;
  if (v26)
  {
    v37 = repositoryPath(assetsCopy);
    v38 = dataFillInstalledWithPurpose(assetsCopy, v83, v98, v37, v21);

    v39 = filterResults(arrayCopy, v38);
    v40 = [(ControlManager *)self convertToArchiveable:assetsCopy incoming:v39 overrideState:2 filterToIds:0 withPurpose:v21];
    mergeDictionaries(v33, v40);
    v91 = [v38 count];
    v75 = [v40 count];

    if (v36)
    {
      goto LABEL_25;
    }

LABEL_28:
    v74 = 0;
    if (!v23)
    {
      goto LABEL_26;
    }

LABEL_29:
    v46 = getRepositoryPath(@"/System/Library/PreinstalledAssetsV2/RequiredByOs");
    v47 = getPreInstalledAssets(v46, assetsCopy, arrayCopy, 0);

    v48 = [(ControlManager *)self convertToArchiveable:assetsCopy incoming:v47 overrideState:5 filterToIds:v100 withPurpose:v21];
    mergeDictionaries(v33, v48);
    v49 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
    v50 = getPreInstalledAssets(v49, assetsCopy, arrayCopy, 0);

    v51 = [(ControlManager *)self convertToArchiveable:assetsCopy incoming:v50 overrideState:6 filterToIds:v99 withPurpose:v21];
    mergeDictionaries(v33, v51);
    v73 = [v48 count];
    v72 = [v51 count];

    goto LABEL_30;
  }

  v75 = 0;
  v91 = 0;
  if (!v35)
  {
    goto LABEL_28;
  }

LABEL_25:
  v41 = repositoryPath(assetsCopy);
  v42 = dataFillInstalledWithPurpose(assetsCopy, v82, 0, v41, v21);

  v43 = filterResults(arrayCopy, v42);
  v44 = [(ControlManager *)self convertToArchiveable:assetsCopy incoming:v43 overrideState:3 filterToIds:0 withPurpose:v21];
  mergeDictionaries(v33, v44);
  v45 = [v42 count];
  v74 = [v44 count];

  v91 = &v91[v45];
  if (v23)
  {
    goto LABEL_29;
  }

LABEL_26:
  v72 = 0;
  v73 = 0;
LABEL_30:
  if (v29)
  {
    v52 = [(ControlManager *)self convertToArchiveable:assetsCopy incoming:v84 overrideState:1 filterToIds:v81 withPurpose:v21];
    mergeDictionaries(v33, v52);
    v53 = [v52 count];
  }

  else
  {
    v53 = 0;
  }

  v111 = 0;
  v110 = 0;
  v54 = v33;
  v55 = v54;
  if (asset)
  {
    v108 = 0;
    v109 = 0;
    v107 = 0;
    v56 = [(ControlManager *)self determineBestMatchFor:assetsCopy absoluteId:idCopy allowedDifferences:differencesCopy fromResults:v54 isExact:&v110 candidates:&v111 bestMatch:&v109 differencesFound:&v108 missedTypeAndAssetIdMatch:&v107];
    v80 = v109;
    v86 = v108;
    v85 = v107;

    v57 = [v55 count];
    if (v57 <= 1)
    {
      if (v57 == &dword_0 + 1)
      {
        v58 = 14;
        if (v110)
        {
          v58 = 0;
        }
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 13;
    }
  }

  else
  {
    v80 = 0;
    v85 = 0;
    v86 = 0;
    v58 = 0;
    v56 = v54;
  }

  v59 = 2;
  if ((types == 3) | v110 & 1)
  {
    v59 = v58;
  }

  if (v98)
  {
    v60 = v58;
  }

  else
  {
    v60 = v59;
  }

  v61 = [v56 count];
  v87 = v56;
  v62 = [v55 count];
  v63 = [[NSMutableString alloc] initWithCapacity:512];
  v64 = stringForMAQueryReturnTypes(types);
  [v63 appendFormat:@"%@ queried for: %@ with returnTypes %lld (%@) ", nameCopy, assetsCopy, types, v64];

  v65 = stringForMAQueryResult(v60);
  [v63 appendFormat:@"and found %ld assets with result %ld (%@) ", v61, v60, v65];

  if (v21)
  {
    [v63 appendFormat:@"for purpose (%@) %@", v21, &stru_4BD3F0];
  }

  [v63 appendFormat:@"--> From %ld listed in the catalog and %ld local (%ld/%ld downloaded, %ld preinstalled)", v77, &v79[v78], v91, v78, v79];
  v66 = stringWithoutNewlines(v92);
  [v63 appendFormat:@"--> Catalog info (%@) ", v66];

  v67 = stringForMAQueryReturnTypes(types);
  [v63 appendFormat:@"--> Filtered for %@ to %ld in catalog (%ld installed, %ld server-only, %ld preinstalled), ", v67, v76, v75, v53, v76 - &v53[v75]];

  [v63 appendFormat:@"%ld installedNotInCatalog, %ld installedWithOS, %ld requiredByOS; ", v74, v72, v73];
  if (v90)
  {
    v68 = stringForQueryArray(arrayCopy);
    [v63 appendFormat:@"the query params are: %@ ", v68];
  }

  [v63 appendFormat:@"--> Merged to %ld assets ", v62];
  if (asset)
  {
    [v63 appendFormat:@"--> Matched %ld asset (%@) to requested ID (%@) ", v61, v80, idCopy];
    if (v110 == 1)
    {
      [v63 appendFormat:@"exactMatch "];
    }

    [v63 appendFormat:@". It was matched out of %ld candidates with allowedDifferences %@ ", v111, differencesCopy];
    if (v86)
    {
      [v63 appendFormat:@"(the matched asset differed by %@) ", v86];
    }

    if (v85)
    {
      [v63 appendFormat:@"(another asset matched the assetType and assetId, but was not a match for the criteria: %@) ", v85];
    }
  }

  v69 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v125 = v63;
    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  BYTE1(v71) = asset;
  LOBYTE(v71) = v90;
  [(ControlManager *)self sendQueryResults:v87 assetType:assetsCopy purpose:v21 catalogInfo:v92 returnTypes:types postedDate:v89 lastFetchedDate:v88 result:v60 isFiltered:v71 requireSpecificAsset:connectionCopy connection:xdict message:nameCopy clientName:?];

  v25 = v94;
LABEL_56:

  os_activity_scope_leave(&state);
}

- (void)handlePmvRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message
{
  requestCopy = request;
  nameCopy = name;
  connectionCopy = connection;
  messageCopy = message;
  v14 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = nameCopy;
    v36 = 2114;
    v37 = requestCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ issued PMV query command for %{public}@", buf, 0x16u);
  }

  if ((isSoftwareUpdateType(requestCopy) & 1) == 0)
  {
    v21 = _MADLog(@"V2");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Expected software update assetType", buf, 2u);
    }

    v22 = connectionCopy;
    v23 = messageCopy;
    v24 = 7;
    goto LABEL_13;
  }

  length = 0;
  data = xpc_dictionary_get_data(messageCopy, [@"QueryParams" UTF8String], &length);
  if (!data)
  {
    v25 = _MADLog(@"V2");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = @"QueryParams";
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Expected query dictionary for %{public}@", buf, 0xCu);
    }

    v22 = connectionCopy;
    v23 = messageCopy;
    v24 = 3;
LABEL_13:
    sendClientResponse(v22, v23, v24);
    goto LABEL_18;
  }

  v16 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
  v17 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v16 error:0];
  v18 = queryDecodeClasses();
  v19 = [v17 decodeObjectOfClasses:v18 forKey:NSKeyedArchiveRootObjectKey];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v17 finishDecoding];
    assetQueue = self->_assetQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __65__ControlManager_handlePmvRequest_clientName_connection_message___block_invoke;
    block[3] = &unk_4B3818;
    block[4] = self;
    v28 = requestCopy;
    v29 = nameCopy;
    v30 = connectionCopy;
    v31 = messageCopy;
    v32 = v19;
    dispatch_async(assetQueue, block);
  }

  else
  {
    v26 = _MADLog(@"V2");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v35 = @"QueryParams";
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Expected query dictionary for %{public}@", buf, 0xCu);
    }

    sendClientResponse(connectionCopy, messageCopy, 3);
  }

LABEL_18:
}

void __65__ControlManager_handlePmvRequest_clientName_connection_message___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handlePmvRequest} determinePmv...", buf, 2u);
  }

  [*(a1 + 32) determinePmv:*(a1 + 40) clientName:*(a1 + 48) connection:*(a1 + 56) message:*(a1 + 64) queryDict:*(a1 + 72)];
  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handlePmvRequest} ...determinePmv", v4, 2u);
  }
}

- (void)handleQueryRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message
{
  requestCopy = request;
  nameCopy = name;
  connectionCopy = connection;
  messageCopy = message;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "returnAssetTypes");
  beforeFirstUnlock = [(ControlManager *)self beforeFirstUnlock];
  v16 = xpc_dictionary_get_BOOL(messageCopy, "doNotBlockBeforeFirstUnlock");
  v17 = xpc_dictionary_get_BOOL(messageCopy, "doNotBlockOnNetworkStatus");
  if (uint64 == 3)
  {
    v37 = 0;
    v18 = @"will not block on network";
  }

  else
  {
    if ((beforeFirstUnlock & v16) != 0)
    {
      v18 = @"will not block on network as it is before first unlock";
    }

    else
    {
      v18 = @"will not block on network by client request";
    }

    if ((beforeFirstUnlock & v16 | v17))
    {
      v37 = 0;
    }

    else
    {
      v19 = @"may block on network sync";
      if (v16)
      {
        v19 = @"may block on network sync as it is after first unlock";
      }

      if (beforeFirstUnlock)
      {
        v18 = @"will block on network due to being before first unlock";
      }

      else
      {
        v18 = v19;
      }

      v37 = 1;
    }
  }

  length = 0;
  v20 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = stringForMAQueryReturnTypes(uint64);
    *buf = 138544386;
    v54 = nameCopy;
    v55 = 2114;
    v56 = requestCopy;
    v57 = 2048;
    v58 = uint64;
    v59 = 2114;
    v60 = v21;
    v61 = 2114;
    v62 = v18;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ queried for: %{public}@ with returnType of: %lld (%{public}@) - %{public}@", buf, 0x34u);
  }

  string = xpc_dictionary_get_string(messageCopy, "Purpose");
  v23 = normalizePurposeFromUtf8(string);
  if (isWellFormedPurpose(v23))
  {
    data = xpc_dictionary_get_data(messageCopy, [@"QueryParams" UTF8String], &length);
    if (data)
    {
      v25 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
      v26 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v25 error:0];
      v27 = queryDecodeClasses();
      v36 = v26;
      v28 = [v26 decodeObjectOfClasses:v27 forKey:NSKeyedArchiveRootObjectKey];

      v29 = v28;
      if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v34 = objc_opt_new();
        LOWORD(v35) = 1;
        [(ControlManager *)self sendQueryResults:v34 assetType:requestCopy purpose:v23 catalogInfo:0 returnTypes:uint64 postedDate:0 lastFetchedDate:0 result:8 isFiltered:v35 requireSpecificAsset:connectionCopy connection:messageCopy message:nameCopy clientName:?];

        v29 = v28;
      }

      else
      {
        [v36 finishDecoding];
        if (v37)
        {
          v30 = getDownloadManager();
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = __67__ControlManager_handleQueryRequest_clientName_connection_message___block_invoke_2;
          v38[3] = &unk_4B5308;
          v38[4] = self;
          v39 = requestCopy;
          v40 = nameCopy;
          v41 = connectionCopy;
          v42 = messageCopy;
          v44 = uint64;
          v43 = v29;
          [v30 allDownloading:v38];

          v31 = v39;
        }

        else
        {
          assetQueue = self->_assetQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __67__ControlManager_handleQueryRequest_clientName_connection_message___block_invoke;
          block[3] = &unk_4B3328;
          block[4] = self;
          v46 = requestCopy;
          v47 = nameCopy;
          v48 = connectionCopy;
          v49 = messageCopy;
          v51 = uint64;
          v50 = v28;
          v33 = assetQueue;
          v29 = v28;
          dispatch_async(v33, block);

          v31 = v46;
        }
      }
    }

    else
    {
      v25 = objc_opt_new();
      LOWORD(v35) = 0;
      [(ControlManager *)self sendQueryResults:v25 assetType:requestCopy purpose:v23 catalogInfo:0 returnTypes:uint64 postedDate:0 lastFetchedDate:0 result:8 isFiltered:v35 requireSpecificAsset:connectionCopy connection:messageCopy message:nameCopy clientName:?];
    }
  }

  else
  {
    v25 = objc_opt_new();
    LOWORD(v35) = 0;
    [(ControlManager *)self sendQueryResults:v25 assetType:requestCopy purpose:@"<invalid>" catalogInfo:0 returnTypes:uint64 postedDate:0 lastFetchedDate:0 result:8 isFiltered:v35 requireSpecificAsset:connectionCopy connection:messageCopy message:nameCopy clientName:?];
  }
}

void __67__ControlManager_handleQueryRequest_clientName_connection_message___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __67__ControlManager_handleQueryRequest_clientName_connection_message___block_invoke_3;
  block[3] = &unk_4B52E0;
  v13 = *(a1 + 32);
  v4 = *(v13 + 40);
  v5 = *(&v13 + 1);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  v15 = v13;
  v16 = v8;
  v17 = v3;
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v18 = v9;
  v20 = v10;
  v19 = v11;
  v12 = v3;
  dispatch_async(v4, block);
}

- (id)decodeXpcObject:(id)object ofClass:(Class)class dataKey:(id)key lengthKey:(id)lengthKey decodeClasses:(id)classes error:(id *)error
{
  objectCopy = object;
  keyCopy = key;
  lengthKeyCopy = lengthKey;
  classesCopy = classes;
  if (lengthKeyCopy)
  {
    v16 = xpc_dictionary_get_double(objectCopy, [lengthKeyCopy UTF8String]);
    if (!v16)
    {
      v17 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v16 = 0;
  }

  length = 0;
  data = xpc_dictionary_get_data(objectCopy, [keyCopy UTF8String], &length);
  if (!data)
  {
    v24 = [NSString stringWithFormat:@"XPC failed to load data: %@ was expected to be %@ %zu bytes", keyCopy, lengthKeyCopy, v16];
    if (error)
    {
      MAError(@"com.apple.MobileAssetError.Xpc", 6, @"%@", v25, v26, v27, v28, v29, v24);
      goto LABEL_12;
    }

    v38 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v24;
LABEL_21:
      _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
    }

LABEL_22:

    v17 = 0;
    goto LABEL_37;
  }

  if (!lengthKeyCopy || length == v16)
  {
    v24 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
    v48 = 0;
    v30 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v24 error:&v48];
    v31 = v48;
    if (v31 || !v30)
    {
      v32 = [NSString stringWithFormat:@"XPC data error: %@ is %zu bytes, but we failed to load", keyCopy, length];
      v37 = v32;
      if (error)
      {
        *error = MAErrorWithUnderlying(@"com.apple.MobileAssetError.Xpc", 4, v31, @"%@", v33, v34, v35, v36, v32);
      }

      else
      {
        log = _MADLog(@"V2Control");
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = v37;
          v52 = 2114;
          v53 = v31;
          _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "%{public}@ ----CausedBy---> %{public}@", buf, 0x16u);
        }
      }
    }

    v17 = [v30 decodeObjectOfClasses:classesCopy forKey:NSKeyedArchiveRootObjectKey];
    [v30 finishDecoding];
    if (!v17 || (objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error && !*error)
      {
        *error = MAError(@"com.apple.MobileAssetError.Xpc", 5, @"Object is not expected class", v39, v40, v41, v42, v43, v46);
      }

      else
      {
        v44 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v51 = keyCopy;
          v52 = 2048;
          v53 = length;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "XPC data error: %{public}@ is %zu bytes, but we failed to decode", buf, 0x16u);
        }
      }

      v17 = 0;
    }

    goto LABEL_37;
  }

  v24 = [NSString stringWithFormat:@"XPC size mismatch: %@ is %zu bytes, %@ but %@ specifies %zu bytes", keyCopy, length, &stru_4BD3F0, lengthKeyCopy, v16];
  if (!error)
  {
    v38 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v24;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  MAError(@"com.apple.MobileAssetError.Xpc", 4, @"%@", v19, v20, v21, v22, v23, v24);
LABEL_12:
  *error = v17 = 0;
LABEL_37:

LABEL_38:

  return v17;
}

- (void)handleLoadRequest:(id)request clientName:(id)name connection:(id)connection message:(id)message
{
  requestCopy = request;
  nameCopy = name;
  connectionCopy = connection;
  messageCopy = message;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "ControlManager:handleLoadRequest", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  v15 = objc_opt_class();
  v16 = loadDecodeClasses();
  v43 = 0;
  v17 = [(ControlManager *)self decodeXpcObject:messageCopy ofClass:v15 dataKey:@"loadAssetId" lengthKey:@"loadAssetIdLength" decodeClasses:v16 error:&v43];
  v18 = v43;

  if (!v17 || v18)
  {
    v25 = _MADLog(@"V2");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      v46 = nameCopy;
      v47 = 2114;
      v48 = requestCopy;
      v49 = 2114;
      v50 = v17;
      v51 = 2114;
      v52 = v18;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "%{public}@ issued load of: %{public}@ ID %{public}@ causing ID error MAQueryParamsEncodeFailure %{public}@", buf, 0x2Au);
    }

    sendClientResponse(connectionCopy, messageCopy, 8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [objc_opt_new() initWithPlist:v17];

      v17 = v19;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_7:
      v20 = objc_opt_class();
      v21 = loadDecodeClasses();
      v42 = 0;
      v22 = [(ControlManager *)self decodeXpcObject:messageCopy ofClass:v20 dataKey:@"allowedDifferences" lengthKey:@"allowedDifferencesLength" decodeClasses:v21 error:&v42];
      v18 = v42;

      if (v18)
      {
        v23 = _MADLog(@"V2");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = stringWithoutNewlines(v22);
          *buf = 138544386;
          v46 = nameCopy;
          v47 = 2114;
          v48 = requestCopy;
          v49 = 2114;
          v50 = v17;
          v51 = 2114;
          v52 = v24;
          v53 = 2114;
          v54 = v18;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ issued load of: %{public}@ ID %{public}@ allowing for differences %{public}@ causing ID error MAQueryParamsEncodeFailure %{public}@", buf, 0x34u);
        }
      }

      else
      {
        if (v22)
        {
          v26 = [objc_opt_new() initWithPlist:v22];
          if (!v26)
          {
            v27 = _MADLog(@"V2");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = stringWithoutNewlines(v22);
              *buf = 138544130;
              v46 = nameCopy;
              v47 = 2114;
              v48 = requestCopy;
              v49 = 2114;
              v50 = v17;
              v51 = 2114;
              v52 = v28;
              queue = v28;
              _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%{public}@ issued load of: %{public}@ ID %{public}@ allowing for differences %{public}@ causing ID error MAQueryParamsEncodeFailure because the allowed differences could not be instantiated", buf, 0x2Au);
            }

            sendClientResponse(connectionCopy, messageCopy, 8);
          }

          v29 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            v46 = nameCopy;
            v47 = 2114;
            v48 = requestCopy;
            v49 = 2114;
            v50 = v17;
            v51 = 2114;
            v52 = v26;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ issued load of: %{public}@ ID %{public}@ allowing for differences %{public}@", buf, 0x2Au);
          }

          queuea = self->_assetQueue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = __66__ControlManager_handleLoadRequest_clientName_connection_message___block_invoke;
          block[3] = &unk_4B3FB0;
          block[4] = self;
          v36 = requestCopy;
          v37 = nameCopy;
          v38 = connectionCopy;
          v39 = messageCopy;
          v40 = v17;
          v41 = v26;
          v30 = v26;
          dispatch_async(queuea, block);

          goto LABEL_22;
        }

        v23 = _MADLog(@"V2");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v32 = stringWithoutNewlines(0);
          *buf = 138544130;
          v46 = nameCopy;
          v47 = 2114;
          v48 = requestCopy;
          v49 = 2114;
          v50 = v17;
          v51 = 2114;
          v52 = v32;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ issued load of: %{public}@ ID %{public}@ allowing for differences %{public}@ causing ID error MAQueryParamsEncodeFailure due to having nil for allowedDifferences", buf, 0x2Au);
        }
      }

      sendClientResponse(connectionCopy, messageCopy, 8);
LABEL_22:

      goto LABEL_26;
    }

    v31 = _MADLog(@"V2");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v46 = nameCopy;
      v47 = 2114;
      v48 = requestCopy;
      v49 = 2114;
      v50 = v17;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "%{public}@ issued load of: %{public}@ ID '%{public}@' causing ID error MAQueryParamsEncodeFailure due to the ID not having the correct type", buf, 0x20u);
    }

    sendClientResponse(connectionCopy, messageCopy, 8);
    v18 = 0;
  }

LABEL_26:

  os_activity_scope_leave(&state);
}

void __66__ControlManager_handleLoadRequest_clientName_connection_message___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleLoadRequest} determineOneAsset...", buf, 2u);
  }

  [*(a1 + 32) determineOneAsset:*(a1 + 40) clientName:*(a1 + 48) connection:*(a1 + 56) message:*(a1 + 64) specificAssetId:*(a1 + 72) specificAllowedDifferences:*(a1 + 80)];
  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleLoadRequest} ...determineOneAsset", v4, 2u);
  }
}

- (BOOL)isCommandRequiringForcedSoftwareUpdateType:(int64_t)type
{
  if ((type - 1) >= 0x2F)
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      typeCopy = type;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown Command: %ld (using default command behavior of not needing a software update asset type)", &v7, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x70000000uLL >> (type - 1);
  }

  return v4 & 1;
}

- (BOOL)commandRequiresForcedSoftwareUpdateType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy command] - 1;
  if (v4 >= 0x2F)
  {
    [MADActivityManager warningForActivity:typeCopy fromMethod:@"isCommandRequiringForcedSoftwareUpdateType" leaderNote:@"not covered" warning:@"Unknown Command (using default behavior of not needing a software update asset type)"];
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0x1F0000000uLL >> v4;
  }

  return v5 & 1;
}

- (int)getNotEntitledResultForCommand:(unint64_t)command
{
  if ((command - 1) < 0x2F)
  {
    return dword_33C164[(command - 1)];
  }

  v5 = _MADLog(@"V2");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134217984;
    commandCopy = command;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (using default result for command that is not entitled)", &v6, 0xCu);
  }

  return 3;
}

- (BOOL)isAssetTypeRequiredForCommand:(int64_t)command
{
  if ((command - 1) >= 0x2F)
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      commandCopy = command;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (using default command behavior of needing an asset type)", &v7, 0xCu);
    }

    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = 0x229FFB6D4F7uLL >> (command - 1);
  }

  return v4 & 1;
}

- (BOOL)isAssetTypeOptionalForCommand:(int64_t)command
{
  if ((command - 1) >= 0x2F)
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      commandCopy = command;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (using default command behavior of needing an asset type)", &v7, 0xCu);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x800001000uLL >> (command - 1);
  }

  return v4 & 1;
}

- (BOOL)isCommandAllowedForAllClientsWithoutAssetType:(int64_t)type
{
  if ((type - 1) >= 0x2F)
  {
    v5 = _MADLog(@"V2");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = stringForMAXpcCommand(type);
      v8 = 134218242;
      typeCopy = type;
      v10 = 2114;
      v11 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (%{public}@), using default command behavior of not allowing allowlist without asset type", &v8, 0x16u);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x10000uLL >> (type - 1);
  }

  return v4 & 1;
}

- (BOOL)isAllowlistedForCommand:(int64_t)command
{
  if (command > 0x2F)
  {
    goto LABEL_11;
  }

  if (((1 << command) & 0xFBEFE6907610) != 0)
  {
    return 0;
  }

  if (((1 << command) & 0x410196F89EELL) == 0)
  {
LABEL_11:
    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 134217984;
      commandCopy2 = command;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (using default command behavior of not allowlisting)", &v8, 0xCu);
    }

    goto LABEL_8;
  }

  v4 = [(ControlManager *)self isAssetTypeRequiredForCommand:command];
  result = 1;
  if (command != 17 && (v4 & 1) == 0)
  {
    v6 = _MADLog(@"V2");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = stringForMAXpcCommand(command);
      v8 = 134218242;
      commandCopy2 = command;
      v10 = 2114;
      v11 = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Can't grant allowlist entitlement for %lld (%{public}@)", &v8, 0x16u);
    }

LABEL_8:

    return 0;
  }

  return result;
}

- (BOOL)isEntitledForCommand:(int64_t)command forConnection:(id)connection forAssetType:(id)type
{
  connectionCopy = connection;
  typeCopy = type;
  v10 = [(ControlManager *)self isAssetTypeRequiredForCommand:command];
  if (typeCopy || ![(ControlManager *)self isAssetTypeOptionalForCommand:command])
  {
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_25:
    if (![(ControlManager *)self isCommandAllowedForAllClientsWithoutAssetType:command]&& _MobileAssetCheckConnectionEntitlementWithName(connectionCopy, @"com.apple.private.assets.change-daemon-config"))
    {
      v17 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "failed entitlement check for: configuration change", &v28, 2u);
      }

      goto LABEL_23;
    }

    goto LABEL_29;
  }

  if (!_MobileAssetCheckConnectionEntitlementWithName(connectionCopy, @"com.apple.private.assets.change-daemon-config"))
  {
    LOBYTE(v10) = 1;
    goto LABEL_25;
  }

  v11 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = stringForMAXpcCommand(command);
    v28 = 134218242;
    commandCopy3 = command;
    v30 = 2114;
    *v31 = v12;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "no global entitlement found, command %lld (%{public}@) allows asset-type specific entitlement.", &v28, 0x16u);
  }

LABEL_8:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = _MADLog(@"V2Control");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v23 = stringForMAXpcCommand(command);
    v28 = 134218242;
    commandCopy3 = command;
    v30 = 2114;
    *v31 = v23;
    v24 = "failed entitlement check for: nil asset type for command: %lld (%{public}@)";
    v25 = v17;
    v26 = 22;
LABEL_21:
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, v24, &v28, v26);

    goto LABEL_22;
  }

  if (!isWellFormedAssetType(typeCopy))
  {
    v17 = _MADLog(@"V2Control");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v23 = stringForMAXpcCommand(command);
    v28 = 138543874;
    commandCopy3 = typeCopy;
    v30 = 2048;
    *v31 = command;
    *&v31[8] = 2114;
    *&v31[10] = v23;
    v24 = "failed entitlement check for: %{public}@ with MalformedAssetType for command: %lld (%{public}@)";
    v25 = v17;
    v26 = 32;
    goto LABEL_21;
  }

  if ([(ControlManager *)self isAllowlistedForCommand:command]&& _isAssetTypeAllowlisted(typeCopy))
  {
    goto LABEL_29;
  }

  v13 = checkConnectionAccessToAssetType(connectionCopy, typeCopy);
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = v13;
  if ([(ControlManager *)self isAssetTypeOptionalForCommand:command])
  {
    v15 = _MobileAssetCheckConnectionEntitlementWithName(connectionCopy, @"com.apple.private.assets.change-daemon-config");
    if (v15)
    {
      v16 = v15;
      v17 = _MADLog(@"V2");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = stringForMAXpcCommand(command);
        v28 = 134218498;
        commandCopy3 = command;
        v30 = 2114;
        *v31 = v18;
        *&v31[8] = 1024;
        *&v31[10] = v16;
        v19 = "no global entitlement found, command %lld (%{public}@) requires asset-type specific entitlement for type not on allowlist. status: %d";
        v20 = v17;
        v21 = OS_LOG_TYPE_ERROR;
        v22 = 28;
LABEL_33:
        _os_log_impl(&dword_0, v20, v21, v19, &v28, v22);

        goto LABEL_22;
      }

      goto LABEL_22;
    }

LABEL_29:
    LOBYTE(v10) = 1;
    goto LABEL_30;
  }

  v17 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = stringForMAXpcCommand(command);
    v28 = 138544130;
    commandCopy3 = typeCopy;
    v30 = 1024;
    *v31 = v14;
    *&v31[4] = 2048;
    *&v31[6] = command;
    *&v31[14] = 2114;
    *&v31[16] = v18;
    v19 = "failed entitlement check for: %{public}@ with %d for command: %lld (%{public}@)";
    v20 = v17;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 38;
    goto LABEL_33;
  }

LABEL_22:
  LOBYTE(v10) = 0;
LABEL_23:

LABEL_30:
  return v10;
}

- (BOOL)checkEntitlementAndRespondIfErrorForConnection:(id)connection usingMessage:(id)message forAssetType:(id)type withCommand:(int64_t)command
{
  connectionCopy = connection;
  messageCopy = message;
  typeCopy = type;
  v13 = [(ControlManager *)self isEntitledForCommand:command forConnection:connectionCopy forAssetType:typeCopy];
  if ((v13 & 1) == 0)
  {
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = 134218242;
      commandCopy = command;
      v18 = 2114;
      v19 = typeCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "failed entitlement check for: %lld %{public}@", &v16, 0x16u);
    }

    sendClientResponse(connectionCopy, messageCopy, [(ControlManager *)self getNotEntitledResultForCommand:command]);
  }

  return v13 ^ 1;
}

- (BOOL)checkEntitlementAndRespondIfErrorForConnection:(id)connection usingMessage:(id)message forAssetTypes:(id)types withCommand:(int64_t)command
{
  connectionCopy = connection;
  messageCopy = message;
  typesCopy = types;
  v13 = typesCopy;
  if (!typesCopy)
  {
    v22 = 0;
    v16 = 0;
LABEL_20:
    if ((v16 & 1) == 0)
    {
      v24 = _MADLog(@"V2");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        commandCopy3 = command;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "failed entitlement check for: empty list %lld", buf, 0xCu);
      }

      sendClientResponse(connectionCopy, messageCopy, [(ControlManager *)self getNotEntitledResultForCommand:command]);
      v22 = 1;
    }

    goto LABEL_24;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = typesCopy;
  v14 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v26 = v13;
    v27 = messageCopy;
    v16 = 0;
    v17 = *v30;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if (![(ControlManager *)self isEntitledForCommand:command forConnection:connectionCopy forAssetType:v19])
        {
          v23 = _MADLog(@"V2");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218242;
            commandCopy3 = command;
            v35 = 2114;
            v36 = v19;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "failed entitlement check for: one %lld %{public}@", buf, 0x16u);
          }

          messageCopy = v27;
          sendClientResponse(connectionCopy, v27, [(ControlManager *)self getNotEntitledResultForCommand:command]);
          objc_autoreleasePoolPop(v20);
          v22 = 1;
          goto LABEL_16;
        }

        v21 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          commandCopy3 = command;
          v35 = 2114;
          v36 = v19;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "passed entitlement check for: one %lld %{public}@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v20);
        v16 = 1;
      }

      v15 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }

    v22 = 0;
    messageCopy = v27;
LABEL_16:
    v13 = v26;
  }

  else
  {
    v22 = 0;
    v16 = 0;
  }

  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_24:

  return v22;
}

- (id)checkEntitlement:(id)entitlement forAssetType:(id)type
{
  typeCopy = type;
  entitlementCopy = entitlement;
  command = [entitlementCopy command];
  xpcConnection = [entitlementCopy xpcConnection];

  LOBYTE(entitlementCopy) = [(ControlManager *)self isEntitledForCommand:command forConnection:xpcConnection forAssetType:typeCopy];
  if (entitlementCopy)
  {
    typeCopy = 0;
  }

  else
  {
    typeCopy = [[NSString alloc] initWithFormat:@"Failed entitlement check for assetType:%@", typeCopy];
  }

  return typeCopy;
}

- (id)checkEntitlement:(id)entitlement forAssetTypes:(id)types
{
  entitlementCopy = entitlement;
  typesCopy = types;
  v8 = typesCopy;
  if (typesCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = typesCopy;
    v10 = [(__CFString *)v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v8;
      obj = v9;
      v12 = 0;
      v13 = *v24;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = objc_autoreleasePoolPush();
        command = [entitlementCopy command];
        xpcConnection = [entitlementCopy xpcConnection];
        LODWORD(command) = [(ControlManager *)self isEntitledForCommand:command forConnection:xpcConnection forAssetType:v15];

        if (!command)
        {
          break;
        }

        objc_autoreleasePoolPop(v16);
        v14 = (v14 + 1);
        v12 = 1;
        if (v11 == v14)
        {
          v19 = obj;
          v11 = [(__CFString *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v11)
          {
            goto LABEL_4;
          }

          v8 = v21;
          goto LABEL_16;
        }
      }

      v19 = [[NSString alloc] initWithFormat:@"Failed entitlement check for assetType:%@", v15];
      objc_autoreleasePoolPop(v16);

      v8 = v21;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {

      v19 = 0;
LABEL_15:
      v11 = [[NSString alloc] initWithFormat:@"Failed entitlement check for empty assetTypesList"];
LABEL_16:

      v19 = v11;
    }
  }

  else
  {
    v19 = @"Failed entitlement check (no asset types list provided)";
  }

  return v19;
}

- (void)ensureSUDownloadTempDir
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = allRepositoryPathsForPurging(0);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = getRepositoryDownloadsUrl(*(*(&v8 + 1) + 8 * v6), 1);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)cleanObsoleteSURepo
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = getSoftwareUpdateTypes();
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
        v10 = normalizedAssetType(v7);
        v11 = [v9 stringByAppendingPathComponent:{v10, v14}];

        v12 = +[NSFileManager defaultManager];
        LODWORD(v10) = [v12 fileExistsAtPath:v11];

        if (v10)
        {
          v13 = +[NSFileManager defaultManager];
          [v13 removeItemAtPath:v11 error:0];
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (void)removeDownloadsNotRecentlyInFlight:(id)flight
{
  flightCopy = flight;
  if ([(ControlManager *)self beforeFirstUnlock])
  {
    v5 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "{removeDownloadsNotRecentlyInFlight} Not able to remove content since device is before first-unlock", buf, 2u);
    }

    goto LABEL_18;
  }

  v6 = +[NSDate date];
  v5 = [v6 dateByAddingTimeInterval:-691200.0];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = allRepositoryPathsForPurging(0);
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (!v8)
  {
LABEL_17:

    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v17;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v17 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v16 + 1) + 8 * i);
      v14 = getRepositoryStagingUrl(v13, 0);
      v15 = getRepositoryDownloadsUrl(v13, 0);
      if (v14)
      {
        v10 |= removeDownloadsNotRecentlyInFlight(v14, v5, flightCopy);
      }

      if (v15)
      {
        v10 |= removeDownloadsNotRecentlyInFlight(v15, v5, flightCopy);
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  }

  while (v9);

  if (v10)
  {
    v7 = getDownloadManager();
    [v7 queryNSUrlSessiondAndUpdateState];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)ensureProperDirectoryState
{
  v3 = +[NSFileManager defaultManager];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = allRepositoryPathsForPurging(0);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = getRepositoryStagingUrl(*(*(&v10 + 1) + 8 * v8), 0);
        if (v9)
        {
          [v3 removeItemAtURL:v9 error:{0, v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [v3 removeItemAtPath:@"/private/var/MobileAsset/AssetsV2/SplunkRecords" error:0];
  [(ControlManager *)self ensureSUDownloadTempDir];
  [(ControlManager *)self cleanObsoleteSURepo];
}

- (void)sendStateOfAssetReply:(id)reply incoming:(id)incoming with:(int64_t)with
{
  connection = reply;
  reply = xpc_dictionary_create_reply(incoming);
  replyCopy = reply;
  if (reply)
  {
    xpc_dictionary_set_int64(reply, "Result", 0);
    xpc_dictionary_set_int64(replyCopy, "StateResult", with);
    xpc_connection_send_message(connection, replyCopy);
  }
}

- (int64_t)getStateOfAssetInCatalog:(id)catalog assetId:(id)id withPurpose:(id)purpose
{
  catalogCopy = catalog;
  idCopy = id;
  purposeCopy = purpose;
  LODWORD(self) = [(ControlManager *)self isAssetInCatalog:catalogCopy assetId:idCopy withPurpose:purposeCopy];
  v11 = repositoryPath(catalogCopy);
  IsValidWithPurpose = assetExistsAndIsValidWithPurpose(v11, catalogCopy, idCopy, purposeCopy);

  if (IsValidWithPurpose)
  {
    if (self)
    {
      self = (&dword_0 + 2);
    }

    else
    {
      self = (&dword_0 + 3);
    }
  }

  else
  {
    v13 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
    v14 = assetExistsAndIsValidWithPurpose(v13, catalogCopy, idCopy, purposeCopy);

    if (v14)
    {
      self = (&dword_4 + 2);
    }

    else
    {
      v15 = getRepositoryPath(@"/System/Library/PreinstalledAssetsV2/RequiredByOs");
      v16 = assetExistsAndIsValidWithPurpose(v15, catalogCopy, idCopy, purposeCopy);

      if (v16)
      {
        self = (&dword_4 + 1);
      }

      else
      {
        self = self;
      }
    }
  }

  return self;
}

- (void)getStateOfAsset:(id)asset incoming:(id)incoming assetType:(id)type
{
  assetCopy = asset;
  incomingCopy = incoming;
  typeCopy = type;
  assetQueue = self->_assetQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __53__ControlManager_getStateOfAsset_incoming_assetType___block_invoke;
  v15[3] = &unk_4B3350;
  v15[4] = self;
  v16 = assetCopy;
  v17 = incomingCopy;
  v18 = typeCopy;
  v12 = typeCopy;
  v13 = incomingCopy;
  v14 = assetCopy;
  dispatch_async(assetQueue, v15);
}

void __53__ControlManager_getStateOfAsset_incoming_assetType___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {getStateOfAsset} validating and getting asset state...", buf, 2u);
  }

  *buf = 0;
  v26 = buf;
  v27 = 0x2020000000;
  v28 = 0;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __53__ControlManager_getStateOfAsset_incoming_assetType___block_invoke_1538;
  v21[3] = &unk_4B5330;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v24 = buf;
  v21[4] = v3;
  v22 = v4;
  v23 = *(a1 + 48);
  v5 = objc_retainBlock(v21);
  v6 = [NSString stringWithUTF8String:xpc_dictionary_get_string(*(a1 + 48), "AssetId")];
  v7 = v6;
  if (!*(a1 + 56))
  {
    v14 = _MADLog(@"V2");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v20 = 0;
    v15 = "getStateOfAsset, attempting to get state on nil asset type";
LABEL_15:
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v15, v20, 2u);
    goto LABEL_16;
  }

  if (!v6)
  {
    v14 = _MADLog(@"V2");
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    *v20 = 0;
    v15 = "getStateOfAsset, attempting to get state on nil asset ID";
    goto LABEL_15;
  }

  if (!isWellFormedAssetId(v6))
  {
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      v15 = "getStateOfAsset, attempting to get state on asset ID that isn't well formed";
      goto LABEL_15;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  string = xpc_dictionary_get_string(*(a1 + 48), "Purpose");
  v9 = normalizePurposeFromUtf8(string);
  if (isWellFormedPurpose(v9))
  {
    v10 = [*(a1 + 32) getStateOfAssetInCatalog:*(a1 + 56) assetId:v7 withPurpose:v9];
    *(v26 + 3) = v10;
    if (v10 < 2)
    {
      v11 = normalizedAssetType(*(a1 + 56));
      v12 = assembleTaskDescriptorWithPurpose(v11, v7, v9);

      v13 = getDownloadManager();
      [v13 isDownloading:v12 then:v5];

      goto LABEL_18;
    }

    v14 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      v17 = "getStateOfAsset, don't need to check downloading status";
      v18 = v14;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_25;
    }
  }

  else
  {
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      v17 = "getStateOfAsset, attempting to get state for a purpose that isn't well formed";
      v18 = v14;
      v19 = OS_LOG_TYPE_ERROR;
LABEL_25:
      _os_log_impl(&dword_0, v18, v19, v17, v20, 2u);
    }
  }

LABEL_17:

  [*(a1 + 32) sendStateOfAssetReply:*(a1 + 40) incoming:*(a1 + 48) with:*(v26 + 3)];
  v12 = 0;
LABEL_18:
  v16 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {getStateOfAsset} ...validating and getting asset state", v20, 2u);
  }

  _Block_object_dispose(buf, 8);
}

id __53__ControlManager_getStateOfAsset_incoming_assetType___block_invoke_1538(uint64_t a1, int a2)
{
  if (a2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 4;
  }

  return [*(a1 + 32) sendStateOfAssetReply:*(a1 + 40) incoming:*(a1 + 48) with:*(*(*(a1 + 56) + 8) + 24)];
}

- (BOOL)isAssetInCatalog:(id)catalog assetId:(id)id withPurpose:(id)purpose
{
  catalogCopy = catalog;
  idCopy = id;
  purposeCopy = purpose;
  v11 = objc_autoreleasePoolPush();
  v12 = [(ControlManager *)self newCatalogLoad:catalogCopy withPurpose:purposeCopy];
  v13 = getAssetFromXml(catalogCopy, idCopy, v12);
  v14 = v13 != 0;

  objc_autoreleasePoolPop(v11);
  return v14;
}

- (void)checkAndInitiateDownloadForAssetType:(id)type message:(id)message forClientName:(id)name usingConnection:(id)connection requiringClientExtractor:(BOOL)extractor
{
  typeCopy = type;
  messageCopy = message;
  nameCopy = name;
  connectionCopy = connection;
  length = 0;
  string = xpc_dictionary_get_string(messageCopy, "AssetId");
  if (!string)
  {
    sendClientResponse(connectionCopy, messageCopy, 20);
    goto LABEL_26;
  }

  v17 = [NSString stringWithUTF8String:string];
  if (!isWellFormedAssetId(v17))
  {
    sendClientResponse(connectionCopy, messageCopy, 20);
LABEL_25:

    goto LABEL_26;
  }

  v18 = xpc_dictionary_get_string(messageCopy, "Purpose");
  v19 = normalizePurposeFromUtf8(v18);
  if (!isWellFormedPurpose(v19))
  {
    sendClientResponse(connectionCopy, messageCopy, 74);

    goto LABEL_25;
  }

  _MAPreferencesSync(@"checkAndInitiateDownloadForAssetType", typeCopy);
  v20 = [(ControlManager *)self newCatalogLoad:typeCopy withPurpose:v19];
  v21 = getAssetFromXml(typeCopy, v17, v20);
  if (!v21)
  {
    v35 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Cannot download asset, it is no longer in the catalog", buf, 2u);
    }

    sendClientResponse(connectionCopy, messageCopy, 36);
    goto LABEL_59;
  }

  v22 = v21;
  v61 = v20;
  v60 = [v21 objectForKey:@"__BaseURL"];
  v23 = [v22 objectForKey:@"__RelativePath"];
  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v33 = v22;
    v34 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "could not determine relative url from catalog", buf, 2u);
    }

    sendClientResponse(connectionCopy, messageCopy, 23);
    goto LABEL_30;
  }

  v57 = v23;
  uint64 = xpc_dictionary_get_uint64(messageCopy, "notificationInterval");
  v24 = [v22 objectForKey:@"_StartOfDataRange"];
  [v22 objectForKey:@"_LengthOfDataRange"];
  v59 = v58 = v19;
  v20 = v61;
  if (v24 | v59)
  {
    if (v24 && v59)
    {
      if ([v24 longLongValue] > 0)
      {
        if ([v59 longLongValue] > 0)
        {
          goto LABEL_12;
        }

        v42 = v24;
        v43 = v22;
        v44 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v65 = v42;
          v66 = 2114;
          v67 = v59;
          v45 = "Invalid range request: zero length %{public}@ %{public}@";
          goto LABEL_51;
        }

LABEL_52:

        sendClientResponse(connectionCopy, messageCopy, 23);
LABEL_58:

LABEL_59:
        goto LABEL_26;
      }

      v42 = v24;
      v43 = v22;
      v44 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *buf = 138543618;
      v65 = v42;
      v66 = 2114;
      v67 = v59;
      v45 = "Invalid range request: negative start %{public}@ %{public}@";
    }

    else
    {
      v42 = v24;
      v43 = v22;
      v44 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_52;
      }

      *buf = 138543618;
      v65 = v42;
      v66 = 2114;
      v67 = v59;
      v45 = "Invalid range request: incomplete %{public}@ %{public}@";
    }

LABEL_51:
    _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, v45, buf, 0x16u);
    goto LABEL_52;
  }

LABEL_12:
  v56 = v22;
  v25 = xpc_dictionary_get_value(messageCopy, "stExtractorLength");

  if (!v25)
  {
    goto LABEL_34;
  }

  length = xpc_dictionary_get_double(messageCopy, "stExtractorLength");
  if (!length)
  {
    goto LABEL_34;
  }

  data = xpc_dictionary_get_data(messageCopy, "stExtractor", &length);
  if (!data)
  {
    v47 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Failed to read extractor", buf, 2u);
    }

    sendClientResponse(connectionCopy, messageCopy, 11);
    goto LABEL_57;
  }

  v27 = [NSData dataWithBytes:data length:length];
  if (v27)
  {
    v28 = v27;
    v29 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "extractor exists attempting to create", buf, 2u);
    }

    v62 = 0;
    v50 = v28;
    v30 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v28 error:&v62];
    v51 = v30;
    v52 = v62;
    if (v52 || !v30)
    {
      [v30 finishDecoding];
LABEL_54:
      v48 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Failed to create extractor", buf, 2u);
      }

      sendClientResponse(connectionCopy, messageCopy, 11);
LABEL_57:

      goto LABEL_58;
    }

    v31 = extractorDecodeClasses();
    v32 = [v51 decodeObjectOfClasses:v31 forKey:NSKeyedArchiveRootObjectKey];

    [v51 finishDecoding];
    v54 = v32;
    if (!v32)
    {
      goto LABEL_54;
    }
  }

  else
  {
LABEL_34:
    v50 = 0;
    v51 = 0;
    v54 = 0;
  }

  v53 = v24;
  v36 = getLocalUrlFromTypeAndIdWithPurpose(typeCopy, v17, 0, v58);
  v37 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544642;
    v65 = nameCopy;
    v66 = 2114;
    v67 = typeCopy;
    v68 = 2114;
    v69 = v17;
    v70 = 2114;
    v71 = v60;
    v72 = 2114;
    v73 = v57;
    v74 = 2114;
    v75 = v36;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ issued download asset command: %{public}@, %{public}@, %{public}@, %{public}@ to local url '%{public}@'", buf, 0x3Eu);
  }

  v38 = +[NSFileManager defaultManager];
  path = [v36 path];
  v40 = [v38 fileExistsAtPath:path];

  if (!v40)
  {
    v46 = getDownloadManager();
    LOBYTE(v49) = !extractor;
    [v46 registerAssetDownloadJob:typeCopy forThis:v17 withBase:v60 relativeTo:v57 startingAt:v53 withLength:v59 extractWith:v54 allocateExtractorIfNecessary:v49 connection:connectionCopy message:messageCopy clientName:nameCopy notify:uint64 withCatalogMetadata:v56 withSpaceCheckedUUID:0];

LABEL_30:
    goto LABEL_26;
  }

  v41 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "asset already exists, cannot download", buf, 2u);
  }

  sendClientResponse(connectionCopy, messageCopy, 10);
LABEL_26:
}

- (id)hashToString:(id)string
{
  stringCopy = string;
  bytes = [stringCopy bytes];
  v5 = +[NSMutableString string];
  if ([stringCopy length])
  {
    v6 = 0;
    do
    {
      [v5 appendFormat:@"%02x", bytes[v6++]];
    }

    while ([stringCopy length] > v6);
  }

  return v5;
}

- (id)newExtractor:(id)extractor downloadOptions:(id)options sessionID:(id)d error:(id *)error
{
  extractorCopy = extractor;
  optionsCopy = options;
  dCopy = d;
  v138 = [extractorCopy objectForKeyedSubscript:@"AssetType"];
  v11 = [extractorCopy objectForKeyedSubscript:@"AssetFormat"];
  v12 = repositoryPath(v138);
  v13 = repositoryDownloadsAreRestricted();

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "ControlManager:newExtractor", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  if (v11)
  {
    v15 = v11;
  }

  else
  {
    v15 = @"StreamingZip";
  }

  if ([(__CFString *)v15 isEqualToString:?])
  {
    v16 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Creating asset extractor for streaming zip asset", buf, 2u);
    }

    v17 = [extractorCopy objectForKey:@"_Measurement"];
    if (v17)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = MAErrorForDownloadResultWithUnderlying(16, 0, @"Asset metadata is malformed. %@ is present but is not of type NSData.", v18, v19, v20, v21, v22, @"_Measurement");
        v23 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v38 localizedDescription];
          *buf = 138412290;
          v143 = localizedDescription;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_104;
      }
    }

    v23 = [extractorCopy objectForKey:@"_Measurement-SHA256"];
    if (v23)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = MAErrorForDownloadResultWithUnderlying(16, 0, @"Asset metadata is malformed. %@ is present but is not of type NSData.", v24, v25, v26, v27, v28, @"_Measurement-SHA256");
        v75 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
        {
          localizedDescription2 = [v38 localizedDescription];
          *buf = 138412290;
          v143 = localizedDescription2;
          _os_log_impl(&dword_0, v75, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_104;
      }
    }

    v29 = [extractorCopy objectForKey:@"_DownloadSize"];
    unsignedLongLongValue = [v29 unsignedLongLongValue];

    v31 = [extractorCopy objectForKey:@"_StartOfDataRange"];
    v37 = [extractorCopy objectForKey:@"_LengthOfDataRange"];
    if (v31 | v37)
    {
      v38 = MAErrorForDownloadResultWithUnderlying(16, 0, @"Asset metadata specifies a range for download but extractor not set up for it", v32, v33, v34, v35, v36, v134);
      v39 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        localizedDescription3 = [v38 localizedDescription];
        *buf = 138412290;
        v143 = localizedDescription3;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_104;
    }

    if (v23)
    {
      v72 = SZExtractorHashTypeSHA256;
      v73 = [(ControlManager *)self hashToString:v23];
      v153 = v73;
      v74 = [NSArray arrayWithObjects:&v153 count:1];
    }

    else
    {
      if (!v17)
      {
        v38 = MAErrorForDownloadResultWithUnderlying(16, 0, @"Asset metadata lacks a valid measurement to perform streaming extraction", v32, v33, v34, v35, v36, v134);
        v82 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          localizedDescription4 = [v38 localizedDescription];
          *buf = 138412290;
          v143 = localizedDescription4;
          _os_log_impl(&dword_0, v82, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        v71 = 0;
        goto LABEL_66;
      }

      v72 = SZExtractorHashTypeSHA1;
      v73 = [(ControlManager *)self hashToString:v17];
      v152 = v73;
      v74 = [NSArray arrayWithObjects:&v152 count:1];
    }

    v77 = v74;

    v150[0] = SZExtractorOptionsHashType;
    v150[1] = SZExtractorOptionsHashesArray;
    v151[0] = v72;
    v151[1] = v77;
    v151[2] = &__kCFBooleanTrue;
    v150[2] = SZExtractorOptionsDenyInvalidSymlinks;
    v150[3] = SZExtractorOptionsHashedChunkSize;
    v78 = [NSNumber numberWithLongLong:unsignedLongLongValue];
    v151[3] = v78;
    v79 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:4];

    v80 = [[SZExtractor alloc] initWithOptions:v79];
    v81 = v80;
    if (v13)
    {
      [v80 setPrivileged:1];
    }

    v82 = v81;

    v38 = 0;
    v71 = v82;
LABEL_66:

LABEL_105:
    goto LABEL_106;
  }

  if (([(__CFString *)v15 isEqualToString:@"AppleEncryptedArchive"]& 1) == 0 && ![(__CFString *)v15 isEqualToString:@"AppleArchive"])
  {
    v65 = _MADLog(@"V2");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v143 = v15;
      _os_log_impl(&dword_0, v65, OS_LOG_TYPE_ERROR, "Unknown asset format:%{public}@", buf, 0xCu);
    }

    v64 = MAErrorForDownloadResultWithUnderlying(16, 0, @"[%s:%d] [%s] Unknown asset format:%@", v66, v67, v68, v69, v70, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");
    goto LABEL_53;
  }

  v41 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Creating asset extractor for AEA asset", buf, 2u);
  }

  if (!optionsCopy || ([optionsCopy sourceDirectory], v42 = objc_claimAutoreleasedReturnValue(), v43 = v42 == 0, v42, v43))
  {
    v46 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "Creating AEA extractor for a full replacement asset", buf, 2u);
    }

    v17 = [STRemoteExtractor fullReplacementSTAEAExtractor:dCopy];
    if (!v13)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v44 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "Creating AEA extractor for a patched asset", buf, 2u);
    }

    sourceDirectory = [optionsCopy sourceDirectory];
    v17 = [STRemoteExtractor incrementalPatchSTAEAExtractor:dCopy srcDirectory:sourceDirectory];

    if (!v13)
    {
      goto LABEL_29;
    }
  }

  [v17 setPrivileged:1];
LABEL_29:
  if (__isPlatformVersionAtLeast(2, 19, 0, 0) && _os_feature_enabled_impl() && isPreallocateSpaceAllowedType(v138))
  {
    v47 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v143 = v138;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "Asset type is allow listed for entitled reserve space: %{public}@", buf, 0xCu);
    }

    if ([(ControlManager *)self allowPrivilegedSTExtractionService])
    {
      [v17 setPrivileged:1];
      [v17 setUsesReserveAccessPolicy:1];
    }
  }

  if (v17)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      bundle = _MADLog(@"Brain");
      if (os_log_type_enabled(bundle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_0, bundle, OS_LOG_TYPE_DEBUG, "[MAB] AEA extractor will be loaded from the system volume because loading from the cryptex is unsupported on this OS.", buf, 2u);
      }

LABEL_84:

      v87 = objc_autoreleasePoolPush();
      v88 = getDownloadManager();
      keyManager = [v88 keyManager];

      v90 = [DownloadManager pathToCatalogLookupServer:v138 usingDownloadOptions:optionsCopy];
      if (getIsKnoxSupportedFromPallasURL(v90))
      {
        IsInternalAllowed = 1;
      }

      else
      {
        IsInternalAllowed = _MAPreferencesIsInternalAllowed();
      }

      v139 = 0;
      v23 = [keyManager getDecryptionKey:extractorCopy downloadOptions:optionsCopy apTicket:0 skipKnoxLookup:IsInternalAllowed ^ 1u disableUI:objc_msgSend(keyManager error:{"shouldDisableUIForUsage:assetAttributes:downloadOptions:", @"key retrieval", extractorCopy, optionsCopy), &v139}];
      v92 = v139;
      v135 = v92;
      if (v23 && !v92)
      {
        goto LABEL_97;
      }

      v93 = _MADLog(@"V2");
      if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
      {
        if (v135)
        {
          v94 = [v135 description];
        }

        else
        {
          v94 = @"None";
        }

        *buf = 138543362;
        v143 = v94;
        _os_log_impl(&dword_0, v93, OS_LOG_TYPE_ERROR, "Unable to obtain decryption key: error: %{public}@", buf, 0xCu);
        if (v135)
        {
        }
      }

      if ([(__CFString *)v15 isEqualToString:@"AppleEncryptedArchive"])
      {
        v38 = MAErrorForDownloadResultWithUnderlying(84, v135, @"Failed to obtain decryption key", v95, v96, v97, v98, v99, v134);
        v100 = 0;
      }

      else
      {
LABEL_97:
        v38 = 0;
        v100 = 1;
      }

      objc_autoreleasePoolPop(v87);
      if (!v100)
      {

LABEL_104:
        v71 = 0;
        goto LABEL_105;
      }

      if (v23)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v101 = [[NSData alloc] initWithBase64EncodedString:v23 options:0];

          v23 = v101;
          if (!v101)
          {
            v107 = MAErrorForDownloadResultWithUnderlying(23, 0, @"[%s:%d] [%s] unable to base64 decode string decryption key", v102, v103, v104, v105, v106, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");

            v23 = 0;
LABEL_130:
            v71 = 0;
            v38 = v107;
            goto LABEL_131;
          }
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            object_getClassName(v23);
            v107 = MAErrorForDownloadResultWithUnderlying(23, 0, @"[%s:%d] [%s] decryption key is not an NSString or NSData: %s", v117, v118, v119, v120, v121, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");

            goto LABEL_130;
          }
        }

        if ([v23 length]== &stru_20.nsects + 1)
        {
          [v17 setAsymmetricDecryptionKey:v23];
        }

        else
        {
          if ([v23 length]!= &stru_20)
          {
            v122 = _MADLog(@"V2");
            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
            {
              v123 = [v23 length];
              *buf = 136446978;
              v143 = "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m";
              v144 = 1024;
              v145 = 4321;
              v146 = 2082;
              v147 = "[ControlManager newExtractor:downloadOptions:sessionID:error:]";
              v148 = 2048;
              v149 = v123;
              _os_log_impl(&dword_0, v122, OS_LOG_TYPE_ERROR, "[%{public}s:%d] [%{public}s] invalid decryption key length: %lu (should be 32 or 97 bytes)", buf, 0x26u);
            }

            [v23 length];
            v107 = MAErrorForDownloadResultWithUnderlying(23, 0, @"[%s:%d] [%s] invalid decryption key length: %lu (should be 32 or 97 bytes)", v124, v125, v126, v127, v128, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");

            goto LABEL_130;
          }

          [v17 setSymmetricDecryptionKey:v23];
        }
      }

      if (extractorCopy)
      {
        v110 = [extractorCopy objectForKeyedSubscript:@"ArchiveID"];
        if (v110)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = [[NSData alloc] initWithBase64EncodedString:v110 options:0];

            v110 = v111;
            if (!v111)
            {
              v107 = MAErrorForDownloadResultWithUnderlying(23, 0, @"[%s:%d] [%s] unable to base64 decode string archive ID", v112, v113, v114, v115, v116, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");
LABEL_129:

              goto LABEL_130;
            }
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              object_getClassName(v23);
              v107 = MAErrorForDownloadResultWithUnderlying(23, 0, @"[%s:%d] [%s] archive ID is not an NSString or NSData: %s", v129, v130, v131, v132, v133, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");

              v38 = v110;
              goto LABEL_129;
            }
          }

          [v17 setArchiveID:v110];
        }
      }

      v71 = v17;
LABEL_131:

      goto LABEL_105;
    }

    v48 = +[MABrainUpdater sharedInstance];
    bundle = [v48 bundle];

    if (bundle)
    {
      graftPath = [bundle graftPath];

      if (graftPath)
      {
        graftPath2 = [bundle graftPath];
        v52 = [graftPath2 stringByAppendingPathComponent:@"/System/Library/StreamingExtractorPlugins"];

        v140 = 0;
        v53 = +[NSFileManager defaultManager];
        v54 = [v53 fileExistsAtPath:v52 isDirectory:&v140];

        if (v54)
        {
          if (v140 == 1)
          {
            if ([(ControlManager *)self allowSTExtractorPluginLoadFromDownloadedMABrain])
            {
              [v17 setPluginDirectory:v52];
              v55 = _MADLog(@"Brain");
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v56 = "AEA extractor will be loaded from the cryptex.";
LABEL_81:
                _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
              }
            }

            else
            {
              v55 = _MADLog(@"Brain");
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                v56 = "AEA extractor will be loaded from the system volume because the base OS doesn't support loading it from the MA brain cryptex.";
                goto LABEL_81;
              }
            }
          }

          else
          {
            v55 = _MADLog(@"Brain");
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v56 = "AEA extractor will be loaded from the system volume because the cryptex plugin path is not a directory.";
              goto LABEL_81;
            }
          }
        }

        else
        {
          v55 = _MADLog(@"Brain");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v56 = "AEA extractor will be loaded from the system volume because the cryptex plugin directory does not exist.";
            goto LABEL_81;
          }
        }

        goto LABEL_83;
      }

      v52 = _MADLog(@"Brain");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v83 = "AEA extractor will be loaded from the system volume because the cryptex graft point is nil.";
        v84 = v52;
        v85 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_71;
      }
    }

    else
    {
      v52 = _MADLog(@"Brain");
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v83 = "[MAB] AEA extractor will be loaded from the system volume because MobileAsset Brain is built-in.";
        v84 = v52;
        v85 = OS_LOG_TYPE_DEBUG;
LABEL_71:
        _os_log_impl(&dword_0, v84, v85, v83, buf, 2u);
      }
    }

LABEL_83:

    goto LABEL_84;
  }

  v58 = _MADLog(@"V2");
  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    v143 = "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m";
    v144 = 1024;
    v145 = 4244;
    v146 = 2082;
    v147 = "[ControlManager newExtractor:downloadOptions:sessionID:error:]";
    _os_log_impl(&dword_0, v58, OS_LOG_TYPE_ERROR, "[%{public}s:%d] [%{public}s] Failed to allocate AEAExtractor/STRemoteExtractor", buf, 0x1Cu);
  }

  v64 = MAErrorForDownloadResultWithUnderlying(16, 0, @"[%s:%d] [%s] failed to allocate AEAExtractor/STRemoteExtractor", v59, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/MobileAssetBrain/ControlManager.m");
LABEL_53:
  v38 = v64;
  v71 = 0;
LABEL_106:
  if (error && v38)
  {
    v108 = v38;
    *error = v38;
  }

  os_activity_scope_leave(&state);

  return v71;
}

- (void)cancelDownload:(id)download using:(id)using for:(id)for assetType:(id)type purpose:(id)purpose withExtension:(id)extension
{
  downloadCopy = download;
  usingCopy = using;
  forCopy = for;
  typeCopy = type;
  extensionCopy = extension;
  purposeCopy = purpose;
  v19 = normalizedAssetType(typeCopy);
  v20 = assembleTaskDescriptorWithPurpose(v19, extensionCopy, purposeCopy);

  v21 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v37 = forCopy;
    v38 = 2114;
    v39 = typeCopy;
    v40 = 2114;
    v41 = extensionCopy;
    v42 = 2114;
    v43 = v20;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ is attempting to cancel %{public}@ %{public}@ (%{public}@)", buf, 0x2Au);
  }

  v22 = getDownloadManager();
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = __75__ControlManager_cancelDownload_using_for_assetType_purpose_withExtension___block_invoke;
  v29[3] = &unk_4B5380;
  v30 = v20;
  v31 = forCopy;
  v32 = typeCopy;
  v33 = extensionCopy;
  v34 = usingCopy;
  v35 = downloadCopy;
  v23 = downloadCopy;
  v24 = usingCopy;
  v25 = extensionCopy;
  v26 = typeCopy;
  v27 = forCopy;
  v28 = v20;
  [v22 isDownloading:v28 then:v29];
}

void __75__ControlManager_cancelDownload_using_for_assetType_purpose_withExtension___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    v3 = getDownloadManager();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __75__ControlManager_cancelDownload_using_for_assetType_purpose_withExtension___block_invoke_2;
    v12[3] = &unk_4B5358;
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    *&v8 = v6;
    *(&v8 + 1) = v7;
    *&v9 = v4;
    *(&v9 + 1) = v5;
    v13 = v9;
    v14 = v8;
    v15 = a1[8];
    v16 = a1[9];
    [v3 getCurrentInflightDownloads:v12];
  }

  else
  {
    v10 = a1[8];
    v11 = a1[9];

    sendClientResponse(v10, v11, 3);
  }
}

void __75__ControlManager_cancelDownload_using_for_assetType_purpose_withExtension___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    v7 = 4;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = *(a1 + 32);
        v11 = [v9 taskDescription];
        LODWORD(v10) = [v10 isEqualToString:v11];

        if (v10)
        {
          [v9 cancel];
          v7 = 0;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v34 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 4;
  }

LABEL_12:

  v12 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = stringForMACancelDownloadResult(v7);
    v17 = *(a1 + 32);
    *buf = 138544642;
    v23 = v13;
    v24 = 2114;
    v25 = v14;
    v26 = 2114;
    v27 = v15;
    v28 = 2048;
    v29 = v7;
    v30 = 2114;
    v31 = v16;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel result for %{public}@ %{public}@ is: %ld (%{public}@ %{public}@)", buf, 0x3Eu);
  }

  sendClientResponse(*(a1 + 64), *(a1 + 72), v7);
}

- (int64_t)removeDirectoryAtPath:(id)path firstRenamingWithExtension:(id)extension
{
  assetQueue = self->_assetQueue;
  extensionCopy = extension;
  pathCopy = path;
  dispatch_assert_queue_V2(assetQueue);
  v8 = renameWithExtThenRemove(pathCopy, extensionCopy);

  return v8;
}

- (void)removeAssetDir:(id)dir assetType:(id)type clientName:(id)name using:(id)using
{
  dirCopy = dir;
  typeCopy = type;
  nameCopy = name;
  usingCopy = using;
  assetQueue = self->_assetQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__ControlManager_removeAssetDir_assetType_clientName_using___block_invoke;
  block[3] = &unk_4B42C0;
  v20 = dirCopy;
  v21 = typeCopy;
  v22 = nameCopy;
  selfCopy = self;
  v24 = usingCopy;
  v15 = usingCopy;
  v16 = nameCopy;
  v17 = typeCopy;
  v18 = dirCopy;
  dispatch_async(assetQueue, block);
}

void __60__ControlManager_removeAssetDir_assetType_clientName_using___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {removeAssetDir} validating and removing directory...", buf, 2u);
  }

  v3 = [NSString stringWithUTF8String:xpc_dictionary_get_string(*(a1 + 32), "AssetId")];
  v4 = isWellFormedAssetId(v3);
  if (!v4)
  {

    v3 = 0;
  }

  v5 = !v4;
  string = xpc_dictionary_get_string(*(a1 + 32), "Purpose");
  if (string)
  {
    v57 = [NSString stringWithUTF8String:string];
    v5 |= !isWellFormedPurpose(v57);
  }

  else
  {
    v57 = 0;
  }

  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "assetState");
  v8 = getAssetDirectoryName(v3);
  v9 = normalizedAssetType(*(a1 + 40));
  if (uint64 == 6)
  {
    v10 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
    v11 = [v10 stringByAppendingPathComponent:v9];

    repositoryPath(*(a1 + 40));
  }

  else
  {
    v12 = repositoryPath(*(a1 + 40));
    v11 = [v12 stringByAppendingPathComponent:v9];

    getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
  }
  v13 = ;
  v14 = [v13 stringByAppendingPathComponent:v9];

  if (v57)
  {
    v15 = purposeDirectoryName(v57);
    v16 = [v11 stringByAppendingPathComponent:v15];

    v17 = [v14 stringByAppendingPathComponent:v15];

    v14 = v17;
    v11 = v16;
  }

  v18 = [v11 stringByAppendingPathComponent:v8];

  v56 = [v14 stringByAppendingPathComponent:v8];

  if (v5)
  {
    v19 = _MADLog(@"V2");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      v22 = 4;
      stringForMAPurgeResult(4uLL);
      v54 = v9;
      v24 = v23 = v18;
      *buf = 138544898;
      v62 = v23;
      v63 = 2114;
      v64 = v20;
      v65 = 2114;
      v66 = v3;
      v67 = 2114;
      v68 = v57;
      v69 = 2114;
      v70 = v21;
      v71 = 2048;
      v72 = 4;
      v73 = 2114;
      v74 = v24;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "{removeAssetDir} failed to purge (purpose or asset ID not well formed) path:%{public}@ | assetType:%{public}@ | assetID:%{public}@ | purpose:%{public}@ | clientName:%{public}@ | result:%lld(%{public}@)", buf, 0x48u);

      v18 = v23;
      v9 = v54;
    }

    else
    {
      v22 = 4;
    }
  }

  else
  {
    v25 = assembleTaskDescriptorWithPurpose(v9, v3, v57);
    getDownloadManager();
    v26 = v55 = v18;
    v58[0] = _NSConcreteStackBlock;
    v58[1] = 3221225472;
    v58[2] = __60__ControlManager_removeAssetDir_assetType_clientName_using___block_invoke_1609;
    v58[3] = &unk_4B53A8;
    v27 = v25;
    v59 = v27;
    v60 = *(a1 + 48);
    [v26 getCurrentInflightDownloads:v58];

    v18 = v55;
    v28 = [[NSURL alloc] initFileURLWithPath:v55];
    v29 = [*(a1 + 56) getSAFRegistrationBundleID:v28];
    v30 = [*(a1 + 56) removeDirectoryAtPath:v55 firstRenamingWithExtension:@".purged"];
    v22 = v30;
    v52 = v27;
    if (v30 != &dword_0 + 3)
    {
      if (v30)
      {
        v34 = _MADLog(@"V2");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = v8;
          v36 = *(a1 + 40);
          v50 = *(a1 + 48);
          v37 = stringForMAPurgeResult(v22);
          *buf = 138544642;
          v62 = v55;
          v63 = 2114;
          v64 = v36;
          v8 = v35;
          v65 = 2114;
          v66 = v3;
          v67 = 2114;
          v68 = v50;
          v69 = 2048;
          v70 = v22;
          v71 = 2114;
          v72 = v37;
          _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "{removeAssetDir} failed to purge path:%{public}@ | assetType:%{public}@ | assetID:%{public}@ | clientName:%{public}@ | result:%lld(%{public}@)", buf, 0x3Eu);
        }
      }

      else
      {
        v31 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 48);
          *buf = 138544130;
          v62 = v55;
          v63 = 2114;
          v64 = v32;
          v65 = 2114;
          v66 = v3;
          v67 = 2114;
          v68 = v33;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "{removeAssetDir} successfully purged path:%{public}@ | assetType:%{public}@ | assetID:%{public}@ | clientName:%{public}@", buf, 0x2Au);
        }

        [*(a1 + 56) updateSpaceAttributionForBundleID:v29 assetPath:v28 doRegistration:0];
      }

      v18 = v55;
    }

    v51 = v29;
    v53 = v8;
    v38 = [[NSURL alloc] initFileURLWithPath:v56];
    v39 = [*(a1 + 56) getSAFRegistrationBundleID:v38];
    v40 = [*(a1 + 56) removeDirectoryAtPath:v56 firstRenamingWithExtension:@".purged"];
    if (v40 != &dword_0 + 3)
    {
      v41 = v40;
      if (v40)
      {
        v45 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v48 = *(a1 + 40);
          v49 = *(a1 + 48);
          v46 = stringForMAPurgeResult(v41);
          *buf = 138544642;
          v62 = v56;
          v63 = 2114;
          v64 = v48;
          v65 = 2114;
          v66 = v3;
          v67 = 2114;
          v68 = v49;
          v69 = 2048;
          v70 = v41;
          v71 = 2114;
          v72 = v46;
          _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "{removeAssetDir} failed to purge secondary path:%{public}@ | assetType:%{public}@ | assetID:%{public}@ | clientName:%{public}@ | result:%lld(%{public}@)", buf, 0x3Eu);
        }

        v18 = v55;
        v29 = v51;
        if (v22 == 3 || !v22)
        {
          v22 = v41;
        }
      }

      else
      {
        v42 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = *(a1 + 40);
          v44 = *(a1 + 48);
          *buf = 138544130;
          v62 = v56;
          v63 = 2114;
          v64 = v43;
          v65 = 2114;
          v66 = v3;
          v67 = 2114;
          v68 = v44;
          _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "{removeAssetDir} successfully purged secondary path:%{public}@ | assetType:%{public}@ | assetID:%{public}@ | clientName:%{public}@", buf, 0x2Au);
        }

        [*(a1 + 56) updateSpaceAttributionForBundleID:v39 assetPath:v38 doRegistration:0];
        v18 = v55;
      }
    }

    v19 = v52;
    v8 = v53;
  }

  sendClientResponse(*(a1 + 64), *(a1 + 32), v22);
  v47 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {removeAssetDir} ...validating and removing directory", buf, 2u);
  }
}

void __60__ControlManager_removeAssetDir_assetType_clientName_using___block_invoke_1609(uint64_t a1, void *a2)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = *(a1 + 32);
        v10 = [v8 taskDescription];
        LODWORD(v9) = [v9 isEqualToString:v10];

        if (v9)
        {
          v11 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 32);
            v13 = *(a1 + 40);
            *buf = 138543618;
            v19 = v12;
            v20 = 2114;
            v21 = v13;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{removeAssetDir} canceling download due to purge | cancelTaskDescriptor:%{public}@ | clientName:%{public}@", buf, 0x16u);
          }

          [v8 cancel];
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)setPreferenceKeySync:(id)sync andValue:(id)value allowNilToClear:(BOOL)clear
{
  syncCopy = sync;
  v8 = syncCopy;
  if (value || clear)
  {
    _MAPreferencesSetStringValue(syncCopy, value, @"setPreferenceKeySync", @"client setting preference");
  }

  else
  {
    v9 = _MADLog(@"V2");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543618;
      v11 = @"com.apple.MobileAsset";
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Skipping operation to update preference %{public}@ %{public}@ to nil (clear) as nil is not allowed", &v10, 0x16u);
    }
  }
}

- (void)setPreferenceKeyAsync:(id)async andValue:(id)value allowNilToClear:(BOOL)clear replyUsing:(id)using and:(id)and
{
  clearCopy = clear;
  usingCopy = using;
  andCopy = and;
  if (value || clearCopy)
  {
    [(ControlManager *)self setPreferenceKeySync:async andValue:value allowNilToClear:clearCopy];
    v13 = 0;
  }

  else
  {
    v13 = 5;
  }

  sendClientResponse(usingCopy, andCopy, v13);
}

- (void)setPreferences:(id)preferences replyUsing:(id)using and:(id)and
{
  usingCopy = using;
  andCopy = and;
  if (preferences)
  {
    _MAPreferencesSetValues(preferences, @"setPreferencesSync", @"client setting multiple preferences");
    v8 = 0;
  }

  else
  {
    v8 = 5;
  }

  sendClientResponse(usingCopy, andCopy, v8);
}

- (void)clearPreferences:(id)preferences replyUsing:(id)using and:(id)and
{
  preferencesCopy = preferences;
  usingCopy = using;
  andCopy = and;
  if (preferencesCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [preferencesCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(preferencesCopy);
          }

          CFPreferencesSetAppValue(*(*(&v16 + 1) + 8 * v13), 0, @"com.apple.MobileAsset");
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [preferencesCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v11);
    }

    CFPreferencesAppSynchronize(@"com.apple.MobileAsset");
    v14 = _MADLog(@"V2");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v21 = preferencesCopy;
      v22 = 2114;
      v23 = @"com.apple.MobileAsset";
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[MA_PREFS] {clearPreferencesSync} [client clearing multiple preferences] Cleared preferences {%{public}@} for %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  else
  {
    v15 = 5;
  }

  sendClientResponse(usingCopy, andCopy, v15);
}

- (void)handleEnsureDataVault:(id)vault message:(id)message client:(id)client clientName:(id)name
{
  vaultCopy = vault;
  messageCopy = message;
  clientCopy = client;
  nameCopy = name;
  v13 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543618;
    v22 = nameCopy;
    v23 = 2114;
    v24 = vaultCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "client %{public}@ requested data vault for %{public}@", &v21, 0x16u);
  }

  v14 = repositoryPath(vaultCopy);
  v15 = [NSURL fileURLWithPath:v14];
  DataVaultAtUrl = makeDataVaultAtUrl(vaultCopy, v15);

  v17 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543874;
    v22 = nameCopy;
    v23 = 2114;
    v24 = vaultCopy;
    v25 = 2048;
    v26 = DataVaultAtUrl;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ makeDataVaultAtUrl %{public}@ status: %lld", &v21, 0x20u);
  }

  v18 = _MADLog(@"V2Control");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (DataVaultAtUrl)
  {
    if (v19)
    {
      v21 = 138543874;
      v22 = nameCopy;
      v23 = 2114;
      v24 = vaultCopy;
      v25 = 2048;
      v26 = DataVaultAtUrl;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "client %{public}@ requested data vault for %{public}@, it failed with status: %ld", &v21, 0x20u);
    }

    v20 = 2;
  }

  else
  {
    if (v19)
    {
      v21 = 138543618;
      v22 = nameCopy;
      v23 = 2114;
      v24 = vaultCopy;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "client %{public}@ requested data vault for %{public}@, it succeeded", &v21, 0x16u);
    }

    v20 = 0;
  }

  sendClientResponse(clientCopy, messageCopy, v20);
}

- (void)handleDataMigrator:(id)migrator message:(id)message clientName:(id)name
{
  nameCopy = name;
  messageCopy = message;
  migratorCopy = migrator;
  v10 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = nameCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "client %{public}@ requested data migration. No DataMigrator work was needed.", &v11, 0xCu);
  }

  sendClientResponse(migratorCopy, messageCopy, 0);
}

- (void)handleGetAllowNonUserInitiated:(id)initiated message:(id)message clientName:(id)name
{
  initiatedCopy = initiated;
  messageCopy = message;
  nameCopy = name;
  reply = xpc_dictionary_create_reply(messageCopy);
  v11 = reply;
  if (reply)
  {
    xpc_dictionary_set_BOOL(reply, "allowNonUserInitiated", 1);
    sendReply(initiatedCopy, v11, 0);
  }

  else
  {
    sendClientResponse(initiatedCopy, messageCopy, 2);
  }

  v12 = _MADLog(@"V2");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = nameCopy;
    v15 = 2112;
    v16 = @"YES";
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "client %@ requested whether user initiated downloads are allowed: %@", &v13, 0x16u);
  }
}

- (void)handleGetServerUrl:(id)url message:(id)message client:(id)client clientName:(id)name
{
  urlCopy = url;
  messageCopy = message;
  clientCopy = client;
  nameCopy = name;
  if (_isAssetTypeAllowedToGetServerUrl(urlCopy))
  {
    v13 = +[ASAssetMetadataUpdatePolicy policy];
    v14 = [v13 serverURLForAssetType:urlCopy];

    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412802;
      v21 = nameCopy;
      v22 = 2112;
      v23 = urlCopy;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "client %@ requested server URL for asset type %@ and the url is %@", &v20, 0x20u);
    }

    reply = xpc_dictionary_create_reply(messageCopy);
    v17 = reply;
    if (v14 && reply)
    {
      absoluteString = [v14 absoluteString];
      xpc_dictionary_set_string(v17, "BaseUrlKey", [absoluteString UTF8String]);
    }

    else if (!reply)
    {
      sendClientResponse(clientCopy, messageCopy, 2);
      goto LABEL_12;
    }

    sendReply(clientCopy, v17, 0);
LABEL_12:

    goto LABEL_13;
  }

  v19 = _MADLog(@"V2");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = nameCopy;
    v22 = 2112;
    v23 = urlCopy;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "client %@ requested server URL for asset type %@ and the asset type is not allowed.", &v20, 0x16u);
  }

  sendClientResponse(clientCopy, messageCopy, 3);
LABEL_13:
}

- (void)handleServerUrlOverride:(id)override message:(id)message client:(id)client clientName:(id)name
{
  overrideCopy = override;
  messageCopy = message;
  clientCopy = client;
  nameCopy = name;
  v13 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Setting server url override", &v31, 2u);
  }

  string = xpc_dictionary_get_string(messageCopy, "serverUrlOverride");
  if (string)
  {
    v15 = [NSString stringWithUTF8String:string];
    if (xpc_dictionary_get_BOOL(messageCopy, "serverOverrideClear"))
    {
      v16 = 0;
      v17 = 1;
LABEL_10:
      v18 = 1;
      goto LABEL_15;
    }

    if (v15)
    {
      v19 = [NSURL URLWithString:v15];
      if (v19)
      {
        v16 = v19;
        v17 = 0;
        goto LABEL_10;
      }

      v20 = _MADLog(@"V2");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v31 = 138543362;
        v32 = v15;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "the server url is not valid: '%{public}@'", &v31, 0xCu);
      }
    }

    v17 = 0;
    v16 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v17 = xpc_dictionary_get_BOOL(messageCopy, "serverOverrideClear");
  v15 = 0;
  v16 = 0;
  v18 = v17;
LABEL_15:
  v21 = xpc_dictionary_get_BOOL(messageCopy, "serverUrlDefault");
  v22 = v21;
  if (!overrideCopy && v21)
  {
    v23 = _MADLog(@"V2");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v31 = 138543362;
      v32 = v15;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "the default/fallback url is not valid when the asset type is nil: '%{public}@'", &v31, 0xCu);
    }

    v18 = 0;
  }

  v24 = _MADLog(@"V2");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"(INVALID REQUEST)";
    v26 = &stru_4BD3F0;
    if (v18)
    {
      v25 = &stru_4BD3F0;
    }

    v27 = @" (to be cleared)";
    v31 = 138413826;
    v32 = nameCopy;
    if (!v17)
    {
      v27 = &stru_4BD3F0;
    }

    v33 = 2112;
    v34 = v25;
    if (v16)
    {
      v28 = 1;
    }

    else
    {
      v28 = v17;
    }

    v35 = 2112;
    v36 = overrideCopy;
    if (v28)
    {
      v29 = &stru_4BD3F0;
    }

    else
    {
      v29 = @" (could not be parsed)";
    }

    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v27;
    if (v22)
    {
      v26 = @" as the 'default'/fallback preference";
    }

    v41 = 2112;
    v42 = v29;
    v43 = 2112;
    v44 = v26;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "client %@ requested server URL change: %@ the asset type is %@ and the url is %@ %@%@%@", &v31, 0x48u);
  }

  if (((v16 == 0) & ~v17) != 0)
  {
    v30 = 2;
  }

  else
  {
    _ASSetAssetServerURLForAssetType(v16, overrideCopy, v22);
    v30 = 0;
  }

  sendClientResponse(clientCopy, messageCopy, v30);
}

- (id)getAssetAttributes:(id)attributes purpose:(id)purpose assetID:(id)d
{
  attributesCopy = attributes;
  dCopy = d;
  if (purpose)
  {
    purpose = [NSString stringWithFormat:@"purpose_%@/", purpose];
  }

  else
  {
    purpose = &stru_4BD3F0;
  }

  dCopy = [NSString stringWithFormat:@"%@/%@/%@%@.asset", @"/private/var/MobileAsset/AssetsV2", attributesCopy, purpose, dCopy];
  v12 = [NSURL fileURLWithPath:dCopy];
  v13 = [(ControlManager *)self getAssetAttributes:v12];

  return v13;
}

- (id)getAssetAttributes:(id)attributes
{
  attributesCopy = attributes;
  dispatch_assert_queue_V2(self->_assetQueue);
  if (attributesCopy)
  {
    v5 = [attributesCopy URLByAppendingPathComponent:@"Info.plist"];
    v6 = v5;
    if (v5)
    {
      path = [v5 path];
      v8 = [NSDictionary dictionaryWithContentsOfFile:path];

      if (v8)
      {
        v9 = [v8 objectForKey:@"MobileAssetProperties"];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
    v6 = 0;
  }

  v10 = v9;

  return v9;
}

- (int64_t)garbageCollectionDescriptorType:(id)type
{
  typeCopy = type;
  v5 = [[NSString alloc] initWithFormat:@"/purpose_%@/", @"auto"];
  absoluteString = [typeCopy absoluteString];
  v7 = [absoluteString containsString:v5];

  if (v7)
  {
    lastPathComponent = [typeCopy lastPathComponent];
    v9 = [lastPathComponent length];
    v10 = [@".asset" length];
    v11 = v9 > v10;
    v12 = v9 - v10;
    if (v11 && [lastPathComponent hasSuffix:@".asset"])
    {
      v66 = v5;
      v67 = typeCopy;
      v65 = lastPathComponent;
      v69 = [lastPathComponent substringWithRange:{0, v12}];
      lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self lockedNeverRemoveAutoAssetDescriptors];

      if (lockedNeverRemoveAutoAssetDescriptors)
      {
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        obj = [(ControlManager *)self lockedNeverRemoveAutoAssetDescriptors];
        v14 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v87;
          while (2)
          {
            v17 = 0;
            do
            {
              if (*v87 != v16)
              {
                objc_enumerationMutation(obj);
              }

              v18 = *(*(&v86 + 1) + 8 * v17);
              v19 = objc_autoreleasePoolPush();
              lockedNeverRemoveAutoAssetDescriptors2 = [(ControlManager *)self lockedNeverRemoveAutoAssetDescriptors];
              v21 = [lockedNeverRemoveAutoAssetDescriptors2 safeObjectForKey:v18 ofClass:objc_opt_class()];

              assetId = [v21 assetId];
              LOBYTE(lockedNeverRemoveAutoAssetDescriptors2) = [SUCore stringIsEqual:assetId to:v69];

              objc_autoreleasePoolPop(v19);
              if (lockedNeverRemoveAutoAssetDescriptors2)
              {
                v56 = 3;
                goto LABEL_61;
              }

              v17 = v17 + 1;
            }

            while (v15 != v17);
            v15 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }

      lockedOverridableAutoAssetDescriptors = [(ControlManager *)self lockedOverridableAutoAssetDescriptors];

      if (lockedOverridableAutoAssetDescriptors)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        obj = [(ControlManager *)self lockedOverridableAutoAssetDescriptors];
        v24 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v83;
          while (2)
          {
            v27 = 0;
            do
            {
              if (*v83 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v28 = *(*(&v82 + 1) + 8 * v27);
              v29 = objc_autoreleasePoolPush();
              lockedOverridableAutoAssetDescriptors2 = [(ControlManager *)self lockedOverridableAutoAssetDescriptors];
              v31 = [lockedOverridableAutoAssetDescriptors2 safeObjectForKey:v28 ofClass:objc_opt_class()];

              assetId2 = [v31 assetId];
              LOBYTE(lockedOverridableAutoAssetDescriptors2) = [SUCore stringIsEqual:assetId2 to:v69];

              objc_autoreleasePoolPop(v29);
              if (lockedOverridableAutoAssetDescriptors2)
              {
                v56 = 4;
                goto LABEL_61;
              }

              v27 = v27 + 1;
            }

            while (v25 != v27);
            v25 = [obj countByEnumeratingWithState:&v82 objects:v93 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }
      }

      unlockedUnreferencedDescriptors = [(ControlManager *)self unlockedUnreferencedDescriptors];

      if (unlockedUnreferencedDescriptors)
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = [(ControlManager *)self unlockedUnreferencedDescriptors];
        v34 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v79;
          while (2)
          {
            v37 = 0;
            do
            {
              if (*v79 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v78 + 1) + 8 * v37);
              v39 = objc_autoreleasePoolPush();
              unlockedUnreferencedDescriptors2 = [(ControlManager *)self unlockedUnreferencedDescriptors];
              v41 = [unlockedUnreferencedDescriptors2 safeObjectForKey:v38 ofClass:objc_opt_class()];

              assetId3 = [v41 assetId];
              LOBYTE(unlockedUnreferencedDescriptors2) = [SUCore stringIsEqual:assetId3 to:v69];

              objc_autoreleasePoolPop(v39);
              if (unlockedUnreferencedDescriptors2)
              {
                v56 = 6;
                goto LABEL_61;
              }

              v37 = v37 + 1;
            }

            while (v35 != v37);
            v35 = [obj countByEnumeratingWithState:&v78 objects:v92 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }
      }

      unlockedReferencedDescriptors = [(ControlManager *)self unlockedReferencedDescriptors];

      if (unlockedReferencedDescriptors)
      {
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = [(ControlManager *)self unlockedReferencedDescriptors];
        v44 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
        if (v44)
        {
          v45 = v44;
          v46 = *v75;
          while (2)
          {
            v47 = 0;
            do
            {
              if (*v75 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v48 = *(*(&v74 + 1) + 8 * v47);
              v49 = objc_autoreleasePoolPush();
              unlockedReferencedDescriptors2 = [(ControlManager *)self unlockedReferencedDescriptors];
              v51 = [unlockedReferencedDescriptors2 safeObjectForKey:v48 ofClass:objc_opt_class()];

              assetId4 = [v51 assetId];
              LOBYTE(unlockedReferencedDescriptors2) = [SUCore stringIsEqual:assetId4 to:v69];

              objc_autoreleasePoolPop(v49);
              if (unlockedReferencedDescriptors2)
              {
                v56 = 7;
                goto LABEL_61;
              }

              v47 = v47 + 1;
            }

            while (v45 != v47);
            v45 = [obj countByEnumeratingWithState:&v74 objects:v91 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }
      }

      stagedAutoAssetDescriptors = [(ControlManager *)self stagedAutoAssetDescriptors];

      if (stagedAutoAssetDescriptors)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = [(ControlManager *)self stagedAutoAssetDescriptors];
        v54 = [obj countByEnumeratingWithState:&v70 objects:v90 count:16];
        if (v54)
        {
          v55 = v54;
          v64 = *v71;
          v56 = 5;
LABEL_48:
          v57 = 0;
          while (1)
          {
            if (*v71 != v64)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v70 + 1) + 8 * v57);
            v59 = objc_autoreleasePoolPush();
            stagedAutoAssetDescriptors2 = [(ControlManager *)self stagedAutoAssetDescriptors];
            v61 = [stagedAutoAssetDescriptors2 safeObjectForKey:v58 ofClass:objc_opt_class()];

            assetId5 = [v61 assetId];
            LOBYTE(stagedAutoAssetDescriptors2) = [SUCore stringIsEqual:assetId5 to:v69];

            objc_autoreleasePoolPop(v59);
            if (stagedAutoAssetDescriptors2)
            {
              break;
            }

            if (v55 == ++v57)
            {
              v55 = [obj countByEnumeratingWithState:&v70 objects:v90 count:16];
              if (v55)
              {
                goto LABEL_48;
              }

              goto LABEL_54;
            }
          }
        }

        else
        {
LABEL_54:
          v56 = 0;
        }

LABEL_61:
      }

      else
      {
        v56 = 0;
      }

      v5 = v66;
      typeCopy = v67;
      lastPathComponent = v65;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  return v56;
}

- (id)chooseDescriptorsOfType:(int64_t)type
{
  lockedNeverRemoveAutoAssetDescriptors = 0;
  if (type <= 4)
  {
    if (type == 3)
    {
      lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self lockedNeverRemoveAutoAssetDescriptors];
    }

    else if (type == 4)
    {
      lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self lockedOverridableAutoAssetDescriptors];
    }
  }

  else
  {
    switch(type)
    {
      case 5:
        lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self stagedAutoAssetDescriptors];
        break;
      case 6:
        lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self unlockedUnreferencedDescriptors];
        break;
      case 7:
        lockedNeverRemoveAutoAssetDescriptors = [(ControlManager *)self unlockedReferencedDescriptors];
        break;
    }
  }

  return lockedNeverRemoveAutoAssetDescriptors;
}

- (id)locateDescriptorForAssetDirectory:(id)directory fromDescriptors:(id)descriptors
{
  directoryCopy = directory;
  descriptorsCopy = descriptors;
  lastPathComponent = [directoryCopy lastPathComponent];
  v8 = [lastPathComponent length];
  v9 = [@".asset" length];
  v10 = v8 > v9;
  v11 = v8 - v9;
  if (v10 && [lastPathComponent hasSuffix:@".asset"])
  {
    v12 = [lastPathComponent substringWithRange:{0, v11}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v13 = descriptorsCopy;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v25 = lastPathComponent;
      v26 = descriptorsCopy;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v27 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [v13 safeObjectForKey:v18 ofClass:objc_opt_class()];
          v21 = v20;
          if (v20)
          {
            assetId = [v20 assetId];
            v23 = [SUCore stringIsEqual:assetId to:v12];

            if (v23)
            {
              objc_autoreleasePoolPop(v19);
              goto LABEL_16;
            }
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }

      v21 = 0;
LABEL_16:
      descriptorsCopy = v26;
      lastPathComponent = v25;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (void)maintainReclaimCountsByCollectionType:(int64_t)type reclaimAssetSpace:(int64_t)space cacheDeleteResults:(id)results
{
  resultsCopy = results;
  if (type > 3)
  {
    if (type > 5)
    {
      if (type == 6)
      {
        v8 = resultsCopy;
        [resultsCopy setReclaimUnlockedUnreferencedAutoAssetSpace:{objc_msgSend(resultsCopy, "reclaimUnlockedUnreferencedAutoAssetSpace") + space}];
        [v8 setReclaimUnlockedUnreferencedAutoAssetCount:{objc_msgSend(v8, "reclaimUnlockedUnreferencedAutoAssetCount") + 1}];
      }

      else
      {
        if (type != 7)
        {
          goto LABEL_15;
        }

        v8 = resultsCopy;
        [resultsCopy setReclaimUnlockedReferencedAutoAssetSpace:{objc_msgSend(resultsCopy, "reclaimUnlockedReferencedAutoAssetSpace") + space}];
        [v8 setReclaimUnlockedReferencedAutoAssetCount:{objc_msgSend(v8, "reclaimUnlockedReferencedAutoAssetCount") + 1}];
      }
    }

    else
    {
      v8 = resultsCopy;
      if (type == 4)
      {
        [resultsCopy setReclaimLockedOverridableAutoAssetSpace:{objc_msgSend(resultsCopy, "reclaimLockedOverridableAutoAssetSpace") + space}];
        [v8 setReclaimLockedOverridableAutoAssetCount:{objc_msgSend(v8, "reclaimLockedOverridableAutoAssetCount") + 1}];
      }

      else
      {
        [resultsCopy setReclaimStagedAutoAssetSpace:{objc_msgSend(resultsCopy, "reclaimStagedAutoAssetSpace") + space}];
        [v8 setReclaimStagedAutoAssetCount:{objc_msgSend(v8, "reclaimStagedAutoAssetCount") + 1}];
      }
    }
  }

  else if (type >= 3)
  {
    if (type != 3)
    {
      goto LABEL_15;
    }

    v8 = resultsCopy;
    [resultsCopy setReclaimLockedNeverRemoveAutoAssetSpace:{objc_msgSend(resultsCopy, "reclaimLockedNeverRemoveAutoAssetSpace") + space}];
    [v8 setReclaimLockedNeverRemoveAutoAssetCount:{objc_msgSend(v8, "reclaimLockedNeverRemoveAutoAssetCount") + 1}];
  }

  else
  {
    v8 = resultsCopy;
    [resultsCopy setReclaimV2AssetSpace:{objc_msgSend(resultsCopy, "reclaimV2AssetSpace") + space}];
    [v8 setReclaimV2AssetCount:{objc_msgSend(v8, "reclaimV2AssetCount") + 1}];
  }

  resultsCopy = v8;
LABEL_15:
}

- (void)updateSAFRegistrationArrayWithPath:(id)path doRegistration:(BOOL)registration
{
  registrationCopy = registration;
  pathCopy = path;
  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    registerWithSpaceAttributionArray = [(ControlManager *)self registerWithSpaceAttributionArray];
    if (registerWithSpaceAttributionArray)
    {
      v8 = registerWithSpaceAttributionArray;
      unregisterWithSpaceAttributionArray = [(ControlManager *)self unregisterWithSpaceAttributionArray];

      if (unregisterWithSpaceAttributionArray)
      {
        v10 = [(ControlManager *)self getSAFRegistrationBundleID:pathCopy];
        if (v10)
        {
          if (registrationCopy)
          {
            [(ControlManager *)self registerWithSpaceAttributionArray];
          }

          else
          {
            [(ControlManager *)self unregisterWithSpaceAttributionArray];
          }
          v11 = ;
          if (v11)
          {
            v12 = [SAPathInfo pathInfoWithURL:pathCopy];
            v13 = v12;
            if (v12)
            {
              [v12 setBundleID:v10];
              [v11 addObject:v13];
            }

            else
            {
              v14 = _MADLog(@"CacheDelete");
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                v15 = 138543362;
                v16 = pathCopy;
                _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "{ControlManager:updateSAFRegistrationArrayWithPath} Failed to create SAPathInfo object for path %{public}@.  Skipping registration of this directory with space attribution", &v15, 0xCu);
              }
            }
          }
        }
      }
    }
  }
}

- (id)alterGarbageColletionLevel:(id)level basedOnAssetDirectory:(id)directory
{
  levelCopy = level;
  path = [directory path];
  garbageCollectionAlterAssetType = [(ControlManager *)self garbageCollectionAlterAssetType];
  garbageCollectionAlterBehavior2 = levelCopy;
  if (garbageCollectionAlterAssetType)
  {
    v10 = garbageCollectionAlterAssetType;
    garbageCollectionAlterBehavior = [(ControlManager *)self garbageCollectionAlterBehavior];

    garbageCollectionAlterBehavior2 = levelCopy;
    if (garbageCollectionAlterBehavior)
    {
      v12 = [NSMutableString alloc];
      garbageCollectionAlterAssetType2 = [(ControlManager *)self garbageCollectionAlterAssetType];
      v14 = [v12 initWithFormat:@"/%@/", garbageCollectionAlterAssetType2];

      [v14 replaceOccurrencesOfString:@"." withString:@"_" options:2 range:{0, objc_msgSend(v14, "length")}];
      garbageCollectionAlterBehavior2 = levelCopy;
      if ([path containsString:v14])
      {
        garbageCollectionAlterBehavior2 = [(ControlManager *)self garbageCollectionAlterBehavior];
      }
    }
  }

  return garbageCollectionAlterBehavior2;
}

- (id)garbageCollectionTypeToString:(int64_t)string
{
  if (string > 7)
  {
    return @"????UNKNOWN GCType???";
  }

  else
  {
    return *(&off_4B55F0 + string);
  }
}

- (double)alterSecondsBeforeCollection:(double)collection forAssetTypeDir:(id)dir determinedDescriptorType:(int64_t)type fromDescriptors:(id)descriptors isAutoAsset:(BOOL *)asset autoAssetDescriptor:(id *)descriptor assetFilesystemSize:(int64_t *)size retentionPolicy:(int64_t)self0 logString:(id)self1
{
  stringCopy = string;
  v19 = [(ControlManager *)self locateDescriptorForAssetDirectory:dir fromDescriptors:descriptors];
  v20 = v19;
  v43 = v19 != 0;
  if (v19)
  {
    downloadedFilesystemBytes = [v19 downloadedFilesystemBytes];
  }

  else
  {
    downloadedFilesystemBytes = 0;
  }

  reclaimUrgency = [(ControlManager *)self reclaimUrgency];
  v23 = [(ControlManager *)self garbageCollectionTypeToString:type];
  [stringCopy appendFormat:@" | Urgency:%d | %@ | retPolicy: %ld", reclaimUrgency, v23, policy];

  if ([(ControlManager *)self reclaimUrgency]<= 3)
  {
    if ([(ControlManager *)self reclaimUrgency]<= 2)
    {
      if ([(ControlManager *)self reclaimUrgency]< 2)
      {
        if (type <= 2)
        {
          collectionCopy20 = collection;
          v31 = type >= 3;
          sizeCopy10 = size;
          if (!v31)
          {
            [stringCopy appendString:@" | no multiplier"];
            collectionCopy20 = collection;
          }

          goto LABEL_69;
        }

        if (type > 5)
        {
          if (type == 6)
          {
            goto LABEL_60;
          }

          collectionCopy20 = collection;
          v38 = type == 7;
        }

        else
        {
          if ((type - 3) < 2)
          {
            goto LABEL_31;
          }

          collectionCopy20 = collection;
          v38 = type == 5;
        }

        sizeCopy10 = size;
        if (!v38)
        {
          goto LABEL_69;
        }

        collectionCopy20 = collection;
        if (policy < 800)
        {
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      if (type > 2)
      {
        if (type > 5)
        {
          if (type == 6)
          {
            goto LABEL_60;
          }

          collectionCopy20 = collection;
          v29 = type == 7;
          sizeCopy10 = size;
          if (!v29)
          {
            goto LABEL_69;
          }

          if (policy >= 800)
          {
            goto LABEL_67;
          }

          collectionCopy7 = collection;
          collectionCopy20 = (collectionCopy7 * 0.5);
          v28 = 0x3FE0000000000000;
LABEL_56:
          [stringCopy appendFormat:@" | not system+, multipier: %f", v28];
          goto LABEL_69;
        }

        if ((type - 3) < 2)
        {
LABEL_31:
          v30 = @" | never remove";
LABEL_32:
          [stringCopy appendString:v30];
          collectionCopy20 = -1.0;
LABEL_61:
          sizeCopy10 = size;
          goto LABEL_69;
        }

        collectionCopy20 = collection;
        v29 = type == 5;
LABEL_40:
        sizeCopy10 = size;
        if (!v29)
        {
          goto LABEL_69;
        }

        if (policy >= 800)
        {
          goto LABEL_67;
        }

        collectionCopy9 = collection;
        collectionCopy20 = (collectionCopy9 * 0.25);
        v28 = 0x3FD0000000000000;
        goto LABEL_56;
      }

      collectionCopy20 = collection;
      v31 = type >= 3;
      sizeCopy10 = size;
      if (v31)
      {
        goto LABEL_69;
      }

      collectionCopy11 = collection;
      collectionCopy20 = (collectionCopy11 * 0.5);
      v33 = 0x3FE0000000000000;
    }

    else
    {
      if (type > 2)
      {
        if (type <= 5)
        {
          if ((type - 3) >= 2)
          {
            collectionCopy20 = collection;
            v29 = type == 5;
            sizeCopy10 = size;
            if (!v29)
            {
              goto LABEL_69;
            }

            if (policy >= 800)
            {
LABEL_67:
              v34 = @" | system+, never remove";
              goto LABEL_68;
            }

            collectionCopy13 = collection;
            collectionCopy20 = (collectionCopy13 * 0.1);
            v28 = 0x3FB99999A0000000;
            goto LABEL_56;
          }

          goto LABEL_31;
        }

        if (type == 6)
        {
          goto LABEL_60;
        }

        collectionCopy20 = collection;
        v29 = type == 7;
        goto LABEL_40;
      }

      collectionCopy20 = collection;
      v31 = type >= 3;
      sizeCopy10 = size;
      if (v31)
      {
        goto LABEL_69;
      }

      collectionCopy16 = collection;
      collectionCopy20 = (collectionCopy16 * 0.25);
      v33 = 0x3FD0000000000000;
    }

    [stringCopy appendFormat:@" | multiplier: %f", v33];
    goto LABEL_69;
  }

  if (type > 3)
  {
    if ((type - 6) >= 2)
    {
      if (type != 4)
      {
        collectionCopy20 = collection;
        v29 = type == 5;
        sizeCopy10 = size;
        if (!v29)
        {
          goto LABEL_69;
        }

        if (policy < 800)
        {
          [stringCopy appendString:{@" | not system+, immediately remove"}];
          collectionCopy20 = 0.0;
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      if (policy < 800)
      {
        collectionCopy18 = collection;
        collectionCopy20 = (collectionCopy18 * 0.1);
        [stringCopy appendFormat:@" | not system+, multipier: %f", 0x3FB99999A0000000];
        goto LABEL_61;
      }

      v30 = @" | system+, never remove";
      goto LABEL_32;
    }

LABEL_60:
    [stringCopy appendString:@" | immediately remove"];
    collectionCopy20 = 0.0;
    goto LABEL_61;
  }

  if (type < 3)
  {
    collectionCopy19 = collection;
    collectionCopy20 = (collectionCopy19 * 0.1);
    [stringCopy appendFormat:@" | multiplier: %f", 0x3FB99999A0000000];
    goto LABEL_61;
  }

  collectionCopy20 = collection;
  v29 = type == 3;
  sizeCopy10 = size;
  if (v29)
  {
    v34 = @" | never remove";
LABEL_68:
    [stringCopy appendString:v34];
    collectionCopy20 = -1.0;
  }

LABEL_69:
  if (asset)
  {
    *asset = v43;
  }

  if (descriptor)
  {
    v40 = v20;
    *descriptor = v20;
  }

  if (sizeCopy10 && downloadedFilesystemBytes >= 1)
  {
    if (![(ControlManager *)self reclaimSpace]&& downloadedFilesystemBytes <= 0xF4240)
    {
      downloadedFilesystemBytes = &loc_F4240;
    }

    *sizeCopy10 = downloadedFilesystemBytes;
  }

  else
  {
    if (!sizeCopy10)
    {
      [stringCopy appendFormat:@" | beforeSec:%f | afterSec:%f | reclaimable:%@", *&collection, *&collectionCopy20, &stru_4BD3F0];
      goto LABEL_82;
    }

    downloadedFilesystemBytes = *sizeCopy10;
  }

  v41 = allocStringForBytes(downloadedFilesystemBytes);
  [stringCopy appendFormat:@" | beforeSec:%f | afterSec:%f | reclaimable:%@", *&collection, *&collectionCopy20, v41];

LABEL_82:
  return collectionCopy20;
}

- (int64_t)performGarbageCollectionOfType:(int64_t)type forAssetTypeDir:(id)dir fromDescriptors:(id)descriptors cacheDeleteResults:(id)results
{
  dirCopy = dir;
  descriptorsCopy = descriptors;
  resultsCopy = results;
  dispatch_assert_queue_V2(self->_cachedeleteQueue);
  v11 = [NSMutableString alloc];
  cacheDeleteOperationName = [(ControlManager *)self cacheDeleteOperationName];
  v13 = [v11 initWithFormat:@"AssetGC %@", cacheDeleteOperationName];

  [v13 appendFormat:@" | %s", objc_msgSend(dirCopy, "fileSystemRepresentation")];
  v82 = -1.0;
  if (type)
  {
    v14 = 0;
  }

  else
  {
    v14 = &v82;
  }

  ExistingClientUsage = getExistingClientUsage(dirCopy, v14);
  v81 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__16;
  v79 = __Block_byref_object_dispose__16;
  v80 = 0;
  if (ExistingClientUsage <= 0.0)
  {
    v16 = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v84 = v13;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ | setting client usage as it was not set", buf, 0xCu);
    }

    updateClientUsageDate(dirCopy);
    ExistingClientUsage = getExistingClientUsage(dirCopy, &v82);
  }

  assetQueue = self->_assetQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __100__ControlManager_performGarbageCollectionOfType_forAssetTypeDir_fromDescriptors_cacheDeleteResults___block_invoke;
  block[3] = &unk_4B2E80;
  v74 = &v75;
  block[4] = self;
  v18 = dirCopy;
  v73 = v18;
  dispatch_sync(assetQueue, block);
  v19 = v76[5];
  if (v19)
  {
    v71 = [v19 safeIntegerForKey:@"_UnarchivedSize"];
    v20 = [v76[5] objectForKey:@"__AssetDefaultGarbageCollectionBehavior"];
    v21 = [v76[5] safeIntegerForKey:@"_RetentionPolicy"];
    v22 = [(ControlManager *)self alterGarbageColletionLevel:v20 basedOnAssetDirectory:v18];

    if (v71 < 1000000 && (v71 <= 0 || ![(ControlManager *)self reclaimSpace]))
    {
      v71 = &loc_F4240;
    }

    v23 = v82;
    if (v82 <= 0.0)
    {
      if (!v22)
      {
        goto LABEL_22;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      if ([v22 isEqualToString:@"NeverCollected"])
      {
        [v13 appendString:@" | skipping due to policy of never collect"];
        [resultsCopy setReclaimMetadataBlockedSpace:{objc_msgSend(resultsCopy, "reclaimMetadataBlockedSpace") + v71}];
        v23 = -1.0;
        [resultsCopy setReclaimMetadataBlockedCount:{objc_msgSend(resultsCopy, "reclaimMetadataBlockedCount") + 1}];
        goto LABEL_24;
      }

      if (![v22 isEqualToString:@"Default"])
      {
        v23 = -1.0;
        if (![v22 isEqualToString:@"Precious"])
        {
          goto LABEL_24;
        }

        [(ControlManager *)self preciousNumberOfSeconds];
      }

      else
      {
LABEL_22:
        [(ControlManager *)self defaultNumberOfSeconds];
      }

      v23 = v27;
    }

LABEL_24:
    if (([v22 isEqualToString:@"NeverCollected"] & 1) == 0 && (type == 6 || v23 > -1.0))
    {
      v70 = 0;
      [(ControlManager *)self alterSecondsBeforeCollection:v18 forAssetTypeDir:type determinedDescriptorType:descriptorsCopy fromDescriptors:&v81 isAutoAsset:&v70 autoAssetDescriptor:&v71 assetFilesystemSize:v23 retentionPolicy:v21 logString:v13];
      v23 = v28;
      v25 = v70;
    }

    else
    {
      v25 = 0;
    }

    if (([v22 isEqualToString:@"NeverCollected"] & 1) != 0 || type != 6 && v23 <= -1.0)
    {
      [(ControlManager *)self updateSAFRegistrationArrayWithPath:v18 doRegistration:1];
      v29 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v84 = v13;
        _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ | Result: will not delete - reason: never remove", buf, 0xCu);
      }

      v26 = 0;
      goto LABEL_68;
    }

    [(ControlManager *)self currentTimeInSeconds];
    v31 = v30;
    v29 = [MADAutoAssetControlManager allocIntervalString:v23];
    v32 = v31 - ExistingClientUsage;
    v67 = [MADAutoAssetControlManager allocIntervalString:v32];
    [v13 appendFormat:@" | threshold:%@ | gap:%@", v29, v67];
    if (type != 6 && v32 <= v23)
    {
      [(ControlManager *)self updateSAFRegistrationArrayWithPath:v18 doRegistration:1];
      v33 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v84 = v13;
        _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ | Result: will not delete - reason: recent client interest", buf, 0xCu);
      }

      v26 = 0;
LABEL_67:

LABEL_68:
      goto LABEL_69;
    }

    reclaimSpace = [(ControlManager *)self reclaimSpace];
    if ([(ControlManager *)self reclaimSpace])
    {
      if (v81 == 1)
      {
        if (v25)
        {
          if (![MADAutoAssetControlManager assetBeingGarbageCollected:v25 atEmergencyUrgency:[(ControlManager *)self reclaimUrgency]> 3])
          {
            v26 = 0;
            v35 = @"removal blocked due to change in auto-asset status";
            goto LABEL_65;
          }

          goto LABEL_50;
        }

        v26 = 0;
        v35 = @"auto-asset yet no descriptor";
      }

      else
      {
        if (reclaimSpace)
        {
LABEL_50:
          v26 = v71;
          goto LABEL_51;
        }

        v26 = 0;
        v35 = 0;
      }
    }

    else
    {
      v26 = v71;
      [(ControlManager *)self updateSAFRegistrationArrayWithPath:v18 doRegistration:0];
      if (reclaimSpace)
      {
LABEL_51:
        path = [v18 path];
        v66 = renameWithExtThenRemove(path, @".purged");

        v63 = v21;
        v64 = [MAAutoAssetSelector alloc];
        assetType = [v25 assetType];
        assetSpecifier = [v25 assetSpecifier];
        assetVersion = [v25 assetVersion];
        v65 = [v64 initForAssetType:assetType withAssetSpecifier:assetSpecifier matchingAssetVersion:assetVersion];

        analytics = [(ControlManager *)self analytics];
        reclaimUrgency = self->_reclaimUrgency;
        v42 = v71;
        v43 = assetPathDirectory(v18);
        v44 = [analytics recordMobileAssetPurgeAttempt:v65 withUrgency:reclaimUrgency withBytesPurged:v42 withResult:v66 withDir:v43 withRetentionPolicy:v63 withReason:@"cache-delete"];

        if (v66 == 3)
        {
          v48 = _MADLog(@"CacheDelete");
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v84 = v13;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ | Result: asset content did not exist", buf, 0xCu);
          }

          path2 = [v18 path];
          path3 = MAError(@"com.apple.MobileAssetError.Purge", 3, @"Old asset content did not exist | path: %@", v49, v50, v51, v52, v53, path2);
          [MADAutoAssetHistory recordFailedOperation:1600 fromLayer:5 failingWithError:path3];
        }

        else if (v66)
        {
          v54 = _MADLog(@"CacheDelete");
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            v55 = stringForMAPurgeResult(v66);
            *buf = 138543874;
            v84 = v13;
            v85 = 2050;
            v86 = v66;
            v87 = 2114;
            v88 = v55;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "%{public}@ | Result: failed to remove asset content - purgeResult:%{public}lld(%{public}@)", buf, 0x20u);
          }

          path2 = stringForMAPurgeResult(v66);
          path3 = [v18 path];
          v61 = MAError(@"com.apple.MobileAssetError.Purge", v66, @"Failed to reclaim due to %@ | path: %@", v56, v57, v58, v59, v60, path2);
          [MADAutoAssetHistory recordFailedOperation:1600 fromLayer:5 failingWithError:v61];
        }

        else
        {
          v45 = _MADLog(@"CacheDelete");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v84 = v13;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ | Result: removed asset content", buf, 0xCu);
          }

          path2 = [v18 path];
          path3 = [NSString stringWithFormat:@"Successfully reclaimed path: %@", path2];
          [MADAutoAssetHistory recordOperation:1600 toHistoryType:0 fromLayer:5 withAddendumMessage:path3];
        }

        v33 = v65;
        goto LABEL_67;
      }

      v35 = @"determining reclaimable";
    }

LABEL_65:
    v33 = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v84 = v13;
      v85 = 2112;
      v86 = v35;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ | Result: will not delete - reason: %@", buf, 0x16u);
    }

    goto LABEL_67;
  }

  v24 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v84 = v13;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "%{public}@ | Could not read asset attributes from assetDirectory(asset could be non-existent), skipping asset.", buf, 0xCu);
  }

  v25 = 0;
  v26 = 0;
LABEL_69:

  _Block_object_dispose(&v75, 8);
  return v26;
}

uint64_t __100__ControlManager_performGarbageCollectionOfType_forAssetTypeDir_fromDescriptors_cacheDeleteResults___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) getAssetAttributes:*(a1 + 40)];

  return _objc_release_x1();
}

- (int64_t)performCacheDeleteCollection:(id)collection forCollectionType:(int64_t)type withGarbageCollectionTypes:(id)types cacheDeleteResults:(id)results maintainReclaimCounts:(BOOL)counts
{
  countsCopy = counts;
  collectionCopy = collection;
  typesCopy = types;
  resultsCopy = results;
  selfCopy = self;
  dispatch_assert_queue_V2(self->_cachedeleteQueue);
  v13 = [collectionCopy count];
  if ([typesCopy count] != v13)
  {
    v23 = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      cacheDeleteOperationName = [(ControlManager *)selfCopy cacheDeleteOperationName];
      *buf = 138543874;
      v31 = cacheDeleteOperationName;
      v32 = 2050;
      v33 = v13;
      v34 = 2050;
      v35 = [typesCopy count];
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "{performCacheDeleteCollection} %{public}@ | number of assets and GC types for those corresponding assets don't match | assetCount: %{public}ld | assetGCTypesCount: %{public}ld", buf, 0x20u);
    }

    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_15:
    v28 = 0;
    goto LABEL_16;
  }

  v28 = 0;
  v14 = 0;
  do
  {
    v15 = objc_autoreleasePoolPush();
    v16 = [collectionCopy objectAtIndex:v14];
    v17 = [typesCopy objectAtIndex:v14];
    if ([v17 intValue] == type)
    {
      v18 = typesCopy;
      v19 = collectionCopy;
      v20 = [(ControlManager *)selfCopy chooseDescriptorsOfType:type];
      v21 = [(ControlManager *)selfCopy performGarbageCollectionOfType:type forAssetTypeDir:v16 fromDescriptors:v20 cacheDeleteResults:resultsCopy];
      if (v21 >= 1)
      {
        v22 = v21;
        if (countsCopy)
        {
          [(ControlManager *)selfCopy maintainReclaimCountsByCollectionType:type reclaimAssetSpace:v21 cacheDeleteResults:resultsCopy];
        }

        v28 += v22;
      }

      collectionCopy = v19;
      typesCopy = v18;
    }

    ++v14;

    objc_autoreleasePoolPop(v15);
  }

  while (v13 != v14);
LABEL_16:

  return v28;
}

- (int64_t)performCacheDeleteForGroup:(id)group forAssetTypeDir:(id)dir timeTaken:(double *)taken cacheDeleteResults:(id)results
{
  groupCopy = group;
  dirCopy = dir;
  resultsCopy = results;
  dispatch_assert_queue_V2(self->_cachedeleteQueue);
  v56 = dirCopy;
  v11 = getAssetsAtPath(dirCopy);
  v12 = objc_alloc_init(NSMutableArray);
  v13 = [NSString alloc];
  cacheDeleteOperationName = [(ControlManager *)self cacheDeleteOperationName];
  v54 = [v13 initWithFormat:@"{[%@] performCacheDeleteForGroup} %@ | %s", groupCopy, cacheDeleteOperationName, objc_msgSend(v56, "fileSystemRepresentation")];

  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v15 = _os_activity_create(&dword_0, "ControlManager:performCacheDeleteForGroup", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v15, &state);

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v16 = v11;
  v17 = [v16 countByEnumeratingWithState:&v61 objects:v76 count:16];
  if (v17)
  {
    v18 = *v62;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v61 + 1) + 8 * i);
        v21 = objc_autoreleasePoolPush();
        v22 = [NSNumber numberWithInt:[(ControlManager *)self garbageCollectionDescriptorType:v20]];
        [v12 addObject:v22];

        objc_autoreleasePoolPop(v21);
      }

      v17 = [v16 countByEnumeratingWithState:&v61 objects:v76 count:16];
    }

    while (v17);
  }

  if ([v16 count] && (v23 = objc_msgSend(v16, "count"), v23 == objc_msgSend(v12, "count")))
  {
    v24 = [v16 count];
    assetTypesForReclaimStats = [(ControlManager *)self assetTypesForReclaimStats];

    if (assetTypesForReclaimStats)
    {
      v26 = [v16 objectAtIndexedSubscript:0];
      v27 = assetTypeFromAssetDirectory(v26);

      if (v27)
      {
        assetTypesForReclaimStats2 = [(ControlManager *)self assetTypesForReclaimStats];
        v57 = [assetTypesForReclaimStats2 containsObject:v27];
      }

      else
      {
        assetTypesForReclaimStats2 = _MADLog(@"CacheDelete");
        if (os_log_type_enabled(assetTypesForReclaimStats2, OS_LOG_TYPE_ERROR))
        {
          v37 = [v16 objectAtIndexedSubscript:0];
          *buf = 138543874;
          v67 = v54;
          v68 = 2114;
          v69 = @"ReclaimStatOnlyForAssetTypes";
          v70 = 2114;
          v71 = v37;
          _os_log_impl(&dword_0, assetTypesForReclaimStats2, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ is defined. Unable to get asset type from asset directory %{public}@.", buf, 0x20u);
        }

        v57 = 0;
      }

      v38 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = @"not ";
        *buf = 138544386;
        if (v57)
        {
          v39 = &stru_4BD3F0;
        }

        v67 = v54;
        v68 = 2114;
        v69 = @"ReclaimStatOnlyForAssetTypes";
        v70 = 2114;
        v71 = v27;
        v72 = 2114;
        v73 = v39;
        v74 = 2114;
        v75 = v39;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ is defined, %{public}@ is %{public}@ on the list.  Reclaim stat will %{public}@ be maintained.", buf, 0x34u);
      }
    }

    else
    {
      v57 = 1;
    }

    if ([(ControlManager *)self reclaimSpace])
    {
      takenCopy = taken;
      v30 = +[NSDate date];
      v60 = [(ControlManager *)self performCacheDeleteCollection:v16 forCollectionType:6 withGarbageCollectionTypes:v12 cacheDeleteResults:resultsCopy maintainReclaimCounts:v57];
      if (v60 < [(ControlManager *)self targetingPurgeAmount])
      {
        v60 += [(ControlManager *)self performCacheDeleteCollection:v16 forCollectionType:5 withGarbageCollectionTypes:v12 cacheDeleteResults:resultsCopy maintainReclaimCounts:v57];
      }

      if (v60 < [(ControlManager *)self targetingPurgeAmount])
      {
        v60 += [(ControlManager *)self performCacheDeleteCollection:v16 forCollectionType:0 withGarbageCollectionTypes:v12 cacheDeleteResults:resultsCopy maintainReclaimCounts:v57];
      }

      if (v60 < [(ControlManager *)self targetingPurgeAmount])
      {
        v60 += [(ControlManager *)self performCacheDeleteCollection:v16 forCollectionType:7 withGarbageCollectionTypes:v12 cacheDeleteResults:resultsCopy maintainReclaimCounts:v57];
      }

      if (v60 < [(ControlManager *)self targetingPurgeAmount]&& [(ControlManager *)self reclaimUrgency]>= 4)
      {
        v60 += [(ControlManager *)self performCacheDeleteCollection:v16 forCollectionType:4 withGarbageCollectionTypes:v12 cacheDeleteResults:resultsCopy maintainReclaimCounts:v57];
      }

      if (takenCopy)
      {
        v41 = +[NSDate date];
        [v41 timeIntervalSinceDate:v30];
        *takenCopy = v42;
      }

      else
      {
        v41 = _MADLog(@"CacheDelete");
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v67 = v54;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Not able to calculate time since null passed in for timeTaken", buf, 0xCu);
        }
      }

      v51 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        targetingAmountString = [(ControlManager *)self targetingAmountString];
        v53 = allocStringForBytes(v60);
        *buf = 138543874;
        v67 = v54;
        v68 = 2114;
        v69 = targetingAmountString;
        v70 = 2114;
        v71 = v53;
        _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, " %{public}@ | targetingPurgeBytes:%{public}@ | RECLAIMED:%{public}@", buf, 0x20u);
      }
    }

    else
    {
      v43 = 0;
      v60 = 0;
      v58 = v24 & ~(v24 >> 63);
      while (v58 != v43)
      {
        v44 = objc_autoreleasePoolPush();
        v45 = [v16 objectAtIndex:v43];
        v46 = [v12 objectAtIndex:v43];
        intValue = [v46 intValue];
        v48 = [(ControlManager *)self chooseDescriptorsOfType:intValue];
        v49 = [(ControlManager *)self performGarbageCollectionOfType:intValue forAssetTypeDir:v45 fromDescriptors:v48 cacheDeleteResults:resultsCopy];
        if (v49 >= 1)
        {
          if (v57)
          {
            [(ControlManager *)self maintainReclaimCountsByCollectionType:intValue reclaimAssetSpace:v49 cacheDeleteResults:resultsCopy];
          }

          v60 += v49;
        }

        ++v43;
        objc_autoreleasePoolPop(v44);
      }

      v30 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v50 = allocStringForBytes(v60);
        *buf = 138543618;
        v67 = v54;
        v68 = 2114;
        v69 = v50;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, " %{public}@ | RECLAIMABLE:%{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v29 = [v16 count];
    if (v29 == [v12 count])
    {
      v30 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v16 count];
        v32 = [v12 count];
        *buf = 138543874;
        v67 = v54;
        v68 = 2050;
        v69 = v31;
        v70 = 2050;
        v71 = v32;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ | cache delete not performed | assetCount:%{public}ld | collectionTypeCount:%{public}ld", buf, 0x20u);
      }
    }

    else
    {
      v30 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        targetingAmountString2 = [(ControlManager *)self targetingAmountString];
        v34 = [v16 count];
        v35 = [v12 count];
        *buf = 138544130;
        v67 = v54;
        v68 = 2114;
        v69 = targetingAmountString2;
        v70 = 2050;
        v71 = v34;
        v72 = 2050;
        v73 = v35;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%{public}@ | unable to determine collection types | targetingPurgeBytes:%{public}@ | assetCount:%{public}ld | collectionTypeCount:%{public}ld", buf, 0x2Au);
      }
    }

    v60 = 0;
  }

  os_activity_scope_leave(&state);
  return v60;
}

- (BOOL)freedUpEnoughSpace:(int64_t)space
{
  reclaimSpace = [(ControlManager *)self reclaimSpace];
  if (reclaimSpace)
  {
    LOBYTE(reclaimSpace) = [(ControlManager *)self targetingPurgeAmount]<= space;
  }

  return reclaimSpace;
}

- (void)respondToCacheDelete:(BOOL)delete targetingPurgeAmount:(int64_t)amount cacheDeleteResults:(id)results withUrgency:(int)urgency forVolume:(id)volume then:(id)then
{
  resultsCopy = results;
  volumeCopy = volume;
  thenCopy = then;
  if (usingCentralizedCachedelete())
  {
    if (thenCopy)
    {
      thenCopy[2](thenCopy, 0);
    }
  }

  else
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v17 = _os_activity_create(&dword_0, "ControlManager:respondToCacheDelete", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v17, &state);

    [(ControlManager *)self setPreciousNumberOfSeconds:-1.0];
    [(ControlManager *)self setDefaultNumberOfSeconds:-1.0];
    [(ControlManager *)self setDeltaToCurrentTimeSeconds:-1.0];
    if (_MAPreferencesIsInternalAllowed())
    {
      v39 = 0;
      AppIntegerValue = _MAPreferencesGetAppIntegerValue(@"preciousNumberOfSecsGC", &v39);
      v28 = v39 != 0;
      if (v39)
      {
        [(ControlManager *)self setPreciousNumberOfSeconds:AppIntegerValue];
      }

      v19 = _MAPreferencesGetAppIntegerValue(@"defaultNumberOfSecsGC", &v39);
      v20 = v39 != 0;
      if (v39)
      {
        [(ControlManager *)self setDefaultNumberOfSeconds:v19];
      }

      v21 = _MAPreferencesGetAppIntegerValue(@"GarbageCollectionCurrentTimeDeltaSecs", &v39);
      if (v39)
      {
        [(ControlManager *)self setDeltaToCurrentTimeSeconds:v21];
      }

      v22 = _MAPreferencesCopyNSStringValue(@"GarbageCollectionAlterAssetType");
      if (v22)
      {
        [(ControlManager *)self setGarbageCollectionAlterAssetType:v22];
        v23 = _MAPreferencesCopyNSStringValue(@"GarbageCollectionAlterBehavior");

        if (v23)
        {
          [(ControlManager *)self setGarbageCollectionAlterBehavior:v23];
        }
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v28 = 0;
      v20 = 0;
    }

    [(ControlManager *)self preciousNumberOfSeconds];
    if (v24 == -1.0)
    {
      [(ControlManager *)self setPreciousNumberOfSeconds:2678400.0];
    }

    [(ControlManager *)self defaultNumberOfSeconds];
    if (v25 == -1.0)
    {
      [(ControlManager *)self setDefaultNumberOfSeconds:1296000.0];
    }

    [(ControlManager *)self deltaToCurrentTimeSeconds];
    if (v26 == -1.0)
    {
      [(ControlManager *)self setDeltaToCurrentTimeSeconds:0.0];
    }

    cachedeleteQueue = self->_cachedeleteQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke;
    block[3] = &unk_4B53F8;
    urgencyCopy = urgency;
    v30 = volumeCopy;
    selfCopy = self;
    deleteCopy = delete;
    amountCopy = amount;
    v37 = v28;
    v38 = v20;
    v32 = resultsCopy;
    v33 = thenCopy;
    dispatch_async(cachedeleteQueue, block);

    os_activity_scope_leave(&state);
  }
}

uint64_t __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke(uint64_t a1)
{
  v1 = _MADLog(@"CacheDelete");
  spid = os_signpost_id_generate(v1);

  v2 = _MADLog(@"CacheDelete");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 72);
    *buf = 138543618;
    *&buf[4] = v3;
    *&buf[12] = 1026;
    *&buf[14] = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} performing cache-delete triggered operation for volume %{public}@ at urgency %{public}d ...", buf, 0x12u);
  }

  [*(a1 + 40) setRegisterWithSpaceAttributionArray:0];
  [*(a1 + 40) setUnregisterWithSpaceAttributionArray:0];
  v5 = a1;
  if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    if ((*(a1 + 76) & 1) == 0)
    {
      v5 = a1;
      if (_os_feature_enabled_impl())
      {
        if (*(a1 + 72) == 3)
        {
          v5 = a1;
          if (objc_opt_class())
          {
            v6 = [SAPathManager alloc];
            v7 = objc_opt_respondsToSelector();

            v5 = a1;
            if (v7)
            {
              v8 = _MADLog(@"CacheDelete");
              if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
              {
                v9 = *(a1 + 32);
                v10 = *(a1 + 72);
                *buf = 138543618;
                *&buf[4] = v9;
                *&buf[12] = 1026;
                *&buf[14] = v10;
                _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} Initializing SAF arrays for register/unregister of assets after determine for volume %{public}@ at urgency %{public}d ...", buf, 0x12u);
              }

              v11 = objc_alloc_init(NSMutableArray);
              [*(a1 + 40) setRegisterWithSpaceAttributionArray:v11];

              v12 = objc_alloc_init(NSMutableArray);
              [*(a1 + 40) setUnregisterWithSpaceAttributionArray:v12];

              v5 = a1;
            }
          }
        }
      }
    }
  }

  v14 = *(v5 + 76);
  v13 = (v5 + 76);
  v15 = (v13 - 36);
  [*(v13 - 36) setReclaimSpace:v14];
  [*(v13 - 36) setTargetingPurgeAmount:*(a1 + 64)];
  v16 = allocStringForBytes(*(a1 + 64));
  [*(v13 - 36) setTargetingAmountString:v16];

  [*(v13 - 36) setReclaimUrgency:*(a1 + 72)];
  v17 = stringForCacheDeleteUrgency([*(v13 - 36) reclaimUrgency]);
  [*(v13 - 36) setReclaimUrgencyName:v17];

  [*(v13 - 36) setReclaimVolume:*(a1 + 32)];
  if (*v13)
  {
    v18 = @"reclaim";
  }

  else
  {
    v18 = @"determine";
  }

  [*v15 setCacheDeleteOperationName:v18];
  v19 = +[NSDate date];
  [v19 timeIntervalSince1970];
  v21 = v20;
  [*v15 deltaToCurrentTimeSeconds];
  [*v15 setCurrentTimeInSeconds:v21 + v22];

  if ([*v15 reclaimSpace])
  {
    v23 = _MADLog(@"V2Control");
    v24 = v23;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      v25 = mach_continuous_time();
      *buf = 134349056;
      *&buf[4] = v25;
      _os_signpost_emit_with_name_impl(&dword_0, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "GarbageCollection", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", buf, 0xCu);
    }
  }

  [*(a1 + 40) removeDownloadsNotRecentlyInFlight:0];
  [*(a1 + 40) currentTimeInSeconds];
  if (v26 >= 31536000.0)
  {
    v32 = [*(a1 + 40) reclaimVolume];
    oslog = getAssetTypeDirectoriesForVolume(v32);

    if (oslog && [oslog count])
    {
      v33 = [*(a1 + 40) reclaimSpace];
      v235 = 0;
      v234 = 0;
      v233 = 0;
      v232 = 0;
      v231 = 0;
      [MADAutoAssetControlManager copyCurrentDownloadedDescriptors:v33 unlockedUnreferencedDescriptors:&v235 unlockedReferencedDescriptors:&v234 lockedOverridableDescriptors:&v233 lockedNeverRemoveDescriptors:&v232 stagedDescriptors:&v231];
      v34 = v235;
      v189 = v234;
      v187 = v233;
      v186 = v232;
      v188 = v231;
      v175 = v34;
      [*(a1 + 40) setUnlockedUnreferencedDescriptors:v34];
      [*(a1 + 40) setUnlockedReferencedDescriptors:v189];
      [*(a1 + 40) setLockedOverridableAutoAssetDescriptors:v187];
      [*(a1 + 40) setLockedNeverRemoveAutoAssetDescriptors:v186];
      [*(a1 + 40) setStagedAutoAssetDescriptors:v188];
      v35 = [*(a1 + 40) unlockedUnreferencedDescriptors];
      v36 = [MADAutoAssetDescriptor totalFilesystemSpaceForAutoAssetDescriptors:v35];

      v37 = [*(a1 + 40) unlockedReferencedDescriptors];
      v38 = [MADAutoAssetDescriptor totalFilesystemSpaceForAutoAssetDescriptors:v37];

      v39 = [*(a1 + 40) lockedOverridableAutoAssetDescriptors];
      v40 = [MADAutoAssetDescriptor totalFilesystemSpaceForAutoAssetDescriptors:v39];

      v41 = [*(a1 + 40) lockedNeverRemoveAutoAssetDescriptors];
      objc = [MADAutoAssetDescriptor totalFilesystemSpaceForAutoAssetDescriptors:v41];

      v42 = [*(a1 + 40) stagedAutoAssetDescriptors];
      v184 = [MADAutoAssetDescriptor totalFilesystemSpaceForAutoAssetDescriptors:v42];

      v181 = [NSString alloc];
      v43 = [*(a1 + 40) unlockedUnreferencedDescriptors];
      v178 = [v43 count];
      v200 = allocStringForBytes(v36);
      contextd = [*(a1 + 40) unlockedReferencedDescriptors];
      v176 = [contextd count];
      v195 = allocStringForBytes(v38);
      v44 = [*(a1 + 40) lockedOverridableAutoAssetDescriptors];
      v45 = [v44 count];
      v46 = allocStringForBytes(v40);
      v47 = [*(a1 + 40) lockedNeverRemoveAutoAssetDescriptors];
      v48 = [v47 count];
      v49 = allocStringForBytes(objc);
      v50 = [*(a1 + 40) stagedAutoAssetDescriptors];
      v51 = [v50 count];
      v52 = allocStringForBytes(v184);
      v185 = [v181 initWithFormat:@"(downloadedAutoAssets) unlocked[unreferenced]:%ld(%@), unlocked[referenced]:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@)", v178, v200, v176, v195, v45, v46, v48, v49, v51, v52];

      v53 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = (a1 + 40);
        context = [*(a1 + 40) cacheDeleteOperationName];
        v201 = [*(a1 + 40) targetingAmountString];
        v196 = [*(a1 + 40) reclaimUrgency];
        v55 = [*(a1 + 40) reclaimUrgencyName];
        v56 = [*(a1 + 40) reclaimVolume];
        obj = [oslog count];
        [*(a1 + 40) preciousNumberOfSeconds];
        v58 = [MADAutoAssetControlManager allocIntervalString:v57];
        if (*(a1 + 77))
        {
          v59 = @"(from preference)";
        }

        else
        {
          v59 = &stru_4BD3F0;
        }

        [*v54 defaultNumberOfSeconds];
        v61 = [MADAutoAssetControlManager allocIntervalString:v60];
        if (*(a1 + 78))
        {
          v62 = @"(from preference)";
        }

        else
        {
          v62 = &stru_4BD3F0;
        }

        [*v54 deltaToCurrentTimeSeconds];
        v64 = v63;
        if (v63 <= 0.0)
        {
          v67 = &stru_4BD3F0;
        }

        else
        {
          v65 = [NSString alloc];
          [*(a1 + 40) deltaToCurrentTimeSeconds];
          v54 = [MADAutoAssetControlManager allocIntervalString:v66];
          v67 = [v65 initWithFormat:@", deltaToCurrentTime:%@", v54];
        }

        *buf = 138546178;
        *&buf[4] = context;
        *&buf[12] = 2114;
        *&buf[14] = v201;
        *&buf[22] = 1026;
        *&buf[24] = v196;
        *&buf[28] = 2114;
        *&buf[30] = v55;
        *&buf[38] = 2114;
        *&buf[40] = v56;
        v244 = 2050;
        v245 = obj;
        v246 = 2114;
        v247 = v58;
        v248 = 2114;
        v249 = v59;
        v250 = 2114;
        v251 = v61;
        v252 = 2114;
        v253 = v62;
        v254 = 2114;
        v255 = v67;
        v256 = 2114;
        v257 = v185;
        _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} %{public}@... | targetingPurgeAmount:%{public}@ | urgency:%{public}d(%{public}@) | volume:%{public}@ | assetTypeDirs:%{public}ld | preciousInterval:%{public}@%{public}@, defaultInterval:%{public}@%{public}@%{public}@ | autoAssetStatus:%{public}@", buf, 0x76u);
        if (v64 > 0.0)
        {
        }
      }

      [*(a1 + 40) setAssetTypesForReclaimStats:0];
      if (_MAPreferencesIsInternalAllowed())
      {
        v77 = _MAPreferencesCopyNSStringValue(@"ReclaimStatOnlyForAssetTypes");
        v78 = v77;
        if (v77)
        {
          v79 = [v77 componentsSeparatedByString:{@", "}];
          v80 = v79;
          if (v79 && [v79 count])
          {
            v81 = [[NSSet alloc] initWithArray:v80];
            [*(a1 + 40) setAssetTypesForReclaimStats:v81];

            v82 = _MADLog(@"CacheDelete");
            if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
            {
              v83 = [*(a1 + 40) assetTypesForReclaimStats];
              *buf = 138543618;
              *&buf[4] = @"ReclaimStatOnlyForAssetTypes";
              *&buf[12] = 2114;
              *&buf[14] = v83;
              _os_log_impl(&dword_0, v82, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} | %{public}@ default is specified.  Created set with values %{public}@", buf, 0x16u);
            }
          }
        }

        else
        {
          v80 = 0;
        }
      }

      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      obja = oslog;
      v202 = [obja countByEnumeratingWithState:&v227 objects:v261 count:16];
      if (v202)
      {
        v84 = 0;
        v75 = 0;
        v197 = *v228;
        v85 = 0.0;
        while (2)
        {
          v86 = 0;
          v87 = v84;
          do
          {
            if (*v228 != v197)
            {
              objc_enumerationMutation(obja);
            }

            v88 = *(*(&v227 + 1) + 8 * v86);
            contexta = objc_autoreleasePoolPush();
            *buf = 0;
            v89 = [*(a1 + 40) performCacheDeleteForGroup:@"assetTypeDir" forAssetTypeDir:v88 timeTaken:buf cacheDeleteResults:*(a1 + 48)];
            v85 = v85 + *buf;
            if (v89 >= 1)
            {
              v75 += v89;
              if ([*(a1 + 40) freedUpEnoughSpace:v75])
              {
                objc_autoreleasePoolPop(contexta);
                v84 = v87;
                goto LABEL_84;
              }
            }

            v84 = getPurposeDirectoriesAtPath(v88);

            if (v84)
            {
              v225 = 0u;
              v226 = 0u;
              v223 = 0u;
              v224 = 0u;
              v90 = v84;
              v91 = [v90 countByEnumeratingWithState:&v223 objects:v260 count:16];
              if (v91)
              {
                v92 = *v224;
LABEL_71:
                v93 = 0;
                while (1)
                {
                  if (*v224 != v92)
                  {
                    objc_enumerationMutation(v90);
                  }

                  v94 = *(*(&v223 + 1) + 8 * v93);
                  v95 = objc_autoreleasePoolPush();
                  *v236 = 0;
                  v96 = [*(a1 + 40) performCacheDeleteForGroup:@"_purposeDir_" forAssetTypeDir:v94 timeTaken:v236 cacheDeleteResults:*(a1 + 48)];
                  v97 = *v236;
                  v75 += v96;
                  LOBYTE(v94) = [*(a1 + 40) freedUpEnoughSpace:v75];
                  objc_autoreleasePoolPop(v95);
                  v85 = v85 + v97;
                  if (v94)
                  {
                    break;
                  }

                  if (v91 == ++v93)
                  {
                    v91 = [v90 countByEnumeratingWithState:&v223 objects:v260 count:16];
                    if (v91)
                    {
                      goto LABEL_71;
                    }

                    break;
                  }
                }
              }
            }

            v98 = [*(a1 + 40) freedUpEnoughSpace:v75];
            objc_autoreleasePoolPop(contexta);
            if (v98)
            {
              goto LABEL_84;
            }

            v86 = v86 + 1;
            v87 = v84;
          }

          while (v86 != v202);
          v202 = [obja countByEnumeratingWithState:&v227 objects:v261 count:16];
          if (v202)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v84 = 0;
        v75 = 0;
        v85 = 0.0;
      }

LABEL_84:
      v172 = v84;

      v198 = [NSString alloc];
      v182 = [*(a1 + 48) reclaimV2AssetCount];
      v99 = allocStringForBytes([*(a1 + 48) reclaimV2AssetSpace]);
      v179 = [*(a1 + 48) reclaimUnlockedUnreferencedAutoAssetCount];
      contextb = allocStringForBytes([*(a1 + 48) reclaimUnlockedUnreferencedAutoAssetSpace]);
      v177 = [*(a1 + 48) reclaimUnlockedReferencedAutoAssetCount];
      v203 = allocStringForBytes([*(a1 + 48) reclaimUnlockedReferencedAutoAssetSpace]);
      v174 = [*(a1 + 48) reclaimLockedOverridableAutoAssetCount];
      v100 = allocStringForBytes([*(a1 + 48) reclaimLockedOverridableAutoAssetSpace]);
      v173 = [*(a1 + 48) reclaimLockedNeverRemoveAutoAssetCount];
      v101 = allocStringForBytes([*(a1 + 48) reclaimLockedNeverRemoveAutoAssetSpace]);
      v102 = [*(a1 + 48) reclaimStagedAutoAssetCount];
      v103 = allocStringForBytes([*(a1 + 48) reclaimStagedAutoAssetSpace]);
      v104 = [*(a1 + 48) reclaimMetadataBlockedCount];
      v105 = allocStringForBytes([*(a1 + 48) reclaimMetadataBlockedSpace]);
      if (*(a1 + 76))
      {
        v106 = @"reclaimed";
      }

      else
      {
        v106 = @"reclaimable";
      }

      v107 = allocStringForBytes(v75);
      v199 = [v198 initWithFormat:@"(reclaimAssets) v2Assets:%ld(%@), unlocked[unreferenced]:%ld(%@), unlocked[referenced]:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@), metadataBlocked:%ld(%@) | totalAmount(%@):%@", v182, v99, v179, contextb, v177, v203, v174, v100, v173, v101, v102, v103, v104, v105, v106, v107];

      v108 = _MADLog(@"CacheDelete");
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = (a1 + 40);
        contextc = [*(a1 + 40) cacheDeleteOperationName];
        v204 = [*(a1 + 40) targetingAmountString];
        v180 = [*(a1 + 40) reclaimUrgency];
        v183 = [*(a1 + 40) reclaimUrgencyName];
        v110 = [*(a1 + 40) reclaimVolume];
        objb = [obja count];
        [*(a1 + 40) preciousNumberOfSeconds];
        v112 = [MADAutoAssetControlManager allocIntervalString:v111];
        v113 = @"(from preference)";
        if (*(a1 + 77))
        {
          v114 = @"(from preference)";
        }

        else
        {
          v114 = &stru_4BD3F0;
        }

        [*v109 defaultNumberOfSeconds];
        v116 = [MADAutoAssetControlManager allocIntervalString:v115];
        if (!*(a1 + 78))
        {
          v113 = &stru_4BD3F0;
        }

        [*v109 deltaToCurrentTimeSeconds];
        v118 = v117;
        if (v117 <= 0.0)
        {
          v121 = &stru_4BD3F0;
        }

        else
        {
          v119 = [NSString alloc];
          [*(a1 + 40) deltaToCurrentTimeSeconds];
          v104 = [MADAutoAssetControlManager allocIntervalString:v120];
          v121 = [v119 initWithFormat:@", deltaToCurrentTime:%@", v104];
        }

        *buf = 138546434;
        *&buf[4] = contextc;
        *&buf[12] = 2114;
        *&buf[14] = v204;
        *&buf[22] = 1026;
        *&buf[24] = v180;
        *&buf[28] = 2114;
        *&buf[30] = v183;
        *&buf[38] = 2114;
        *&buf[40] = v110;
        v244 = 2050;
        v245 = objb;
        v246 = 2114;
        v247 = v112;
        v248 = 2114;
        v249 = v114;
        v250 = 2114;
        v251 = v116;
        v252 = 2114;
        v253 = v113;
        v254 = 2114;
        v255 = v121;
        v256 = 2114;
        v257 = v185;
        v258 = 2114;
        v259 = v199;
        _os_log_impl(&dword_0, v108, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} ...%{public}@ | targetingPurgeAmount:%{public}@ | urgency:%{public}d(%{public}@) | volume:%{public}@ | assetTypeDirs:%{public}ld | preciousInterval:%{public}@%{public}@, defaultInterval:%{public}@%{public}@%{public}@ | autoAssetStatus:%{public}@ | %{public}@ | MA_MILESTONE", buf, 0x80u);
        if (v118 > 0.0)
        {
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      *&buf[24] = __Block_byref_object_copy__16;
      *&buf[32] = __Block_byref_object_dispose__16;
      *&buf[40] = [*(a1 + 48) copy];
      v122 = a1;
      if (_MAPreferencesIsVerboseLoggingEnabled())
      {
        v123 = _MADLog(@"CacheDelete");
        if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
        {
          v124 = *(a1 + 32);
          v125 = [*(a1 + 40) reclaimUrgency];
          v126 = [*(a1 + 40) reclaimSpace];
          v127 = [*(a1 + 40) analytics];
          v128 = stringForAnalyticsReportingLevel([v127 reportingLevel]);
          *v236 = 138544130;
          *&v236[4] = v124;
          v237 = 1026;
          v238 = v125;
          v239 = 1026;
          v240 = v126;
          v241 = 2114;
          v242 = v128;
          _os_log_impl(&dword_0, v123, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} Volume: %{public}@ | Urgency: %{public}d | Operation: %{public}d | reportingLevel %{public}@", v236, 0x22u);
        }

        v129 = _MADLog(@"CacheDelete");
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v130 = [*(*&buf[8] + 40) description];
          *v236 = 138543362;
          *&v236[4] = v130;
          _os_log_impl(&dword_0, v129, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} Using Cache Delete Results: %{public}@", v236, 0xCu);
        }

        v122 = a1;
      }

      v131 = *(v122 + 32);
      v132 = *(v122 + 40);
      v133 = *(v132 + 56);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1791;
      block[3] = &unk_4B53D0;
      v222 = v85;
      block[4] = v132;
      v220 = buf;
      v221 = v75;
      v219 = v131;
      dispatch_async(v133, block);
      v134 = [*(v122 + 40) reclaimSpace];
      v135 = [*(v122 + 40) unlockedUnreferencedDescriptors];
      v136 = [*(v122 + 40) unlockedReferencedDescriptors];
      v137 = [*(v122 + 40) lockedOverridableAutoAssetDescriptors];
      v138 = [*(v122 + 40) lockedNeverRemoveAutoAssetDescriptors];
      v139 = [*(v122 + 40) stagedAutoAssetDescriptors];
      [MADAutoAssetControlManager garbageCollectionOperationComplete:v134 originalUnlockedUnreferencedDescriptors:v135 originalUnlockedReferencedDescriptors:v136 originalLockedOverridableDescriptors:v137 originalLockedNeverRemoveDescriptors:v138 originalStagedDescriptors:v139 totalReclaimedSpace:v75 results:*(v122 + 48)];

      [*(a1 + 40) setUnlockedUnreferencedDescriptors:0];
      [*(a1 + 40) setUnlockedReferencedDescriptors:0];
      [*(a1 + 40) setLockedOverridableAutoAssetDescriptors:0];
      [*(a1 + 40) setLockedNeverRemoveAutoAssetDescriptors:0];
      [*(a1 + 40) setStagedAutoAssetDescriptors:0];

      _Block_object_dispose(buf, 8);
      v69 = v172;
    }

    else
    {
      v68 = _MADLog(@"CacheDelete");
      v69 = v68;
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v70 = [*(a1 + 40) targetingAmountString];
        v71 = [*(a1 + 40) reclaimUrgency];
        v72 = [*(a1 + 40) reclaimUrgencyName];
        v73 = [*(a1 + 40) reclaimVolume];
        if (v73)
        {
          v74 = [*(a1 + 40) reclaimVolume];
        }

        else
        {
          v74 = @"N";
        }

        *buf = 138544130;
        *&buf[4] = v70;
        *&buf[12] = 1024;
        *&buf[14] = v71;
        *&buf[18] = 2114;
        *&buf[20] = v72;
        *&buf[28] = 2114;
        *&buf[30] = v74;
        _os_log_impl(&dword_0, v68, OS_LOG_TYPE_DEFAULT, "{respondToCacheDelete} skipping garbage collection (no asset-type directories, volume reported by cache delete might be invalid) | targetingPurgeAmount:%{public}@ | urgency:%d(%{public}@) | volume:%{public}@", buf, 0x26u);
        if (v73)
        {
        }

        v75 = 0;
        v69 = v68;
      }

      else
      {
        v75 = 0;
      }
    }
  }

  else
  {
    oslog = _MADLog(@"CacheDelete");
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 40) targetingAmountString];
      v28 = [*(a1 + 40) reclaimUrgency];
      v29 = [*(a1 + 40) reclaimUrgencyName];
      v30 = [*(a1 + 40) reclaimVolume];
      if (v30)
      {
        v31 = [*(a1 + 40) reclaimVolume];
      }

      else
      {
        v31 = @"N";
      }

      [*(a1 + 40) currentTimeInSeconds];
      *buf = 138544642;
      *&buf[4] = v27;
      *&buf[12] = 1024;
      *&buf[14] = v28;
      *&buf[18] = 2114;
      *&buf[20] = v29;
      *&buf[28] = 2114;
      *&buf[30] = v31;
      *&buf[38] = 2050;
      *&buf[40] = v76;
      v244 = 2050;
      v245 = 31536000;
      _os_log_impl(&dword_0, oslog, OS_LOG_TYPE_ERROR, "{respondToCacheDelete} skipping garbage collection | targetingPurgeAmount:%{public}@ | urgency:%d(%{public}@) | volume:%{public}@ | current time is not valid | currentTimeInSeconds:%{public}f, numberOfSecondsInAYear:%{public}llu", buf, 0x3Au);
      if (v30)
      {
      }
    }

    v75 = 0;
  }

  if ([*(a1 + 40) reclaimSpace])
  {
    finishAllPartiallyPurgedAssets(@"respondToCacheDelete (reclaiming space)");
  }

  else if (__isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    v140 = [*(a1 + 40) registerWithSpaceAttributionArray];
    if (v140)
    {
      v141 = [*(a1 + 40) unregisterWithSpaceAttributionArray];
      v142 = v141 == 0;

      if (!v142)
      {
        v143 = [[NSString alloc] initWithFormat:@"{respondToCacheDelete} (determining space) for volume %@", *(a1 + 32)];
        v144 = [*(a1 + 40) registerWithSpaceAttributionArray];
        v145 = [v144 count] == 0;

        v146 = _MADLog(@"V2");
        v147 = os_log_type_enabled(v146, OS_LOG_TYPE_DEFAULT);
        if (v145)
        {
          if (v147)
          {
            *buf = 138543362;
            *&buf[4] = v143;
            _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEFAULT, "%{public}@: Did not find any asset paths to bulk register with space attribution.", buf, 0xCu);
          }
        }

        else
        {
          if (v147)
          {
            v148 = [*(a1 + 40) registerWithSpaceAttributionArray];
            v149 = [v148 count];
            *buf = 138543618;
            *&buf[4] = v143;
            *&buf[12] = 2048;
            *&buf[14] = v149;
            _os_log_impl(&dword_0, v146, OS_LOG_TYPE_DEFAULT, "%{public}@: Bulk registering %lu assets with space attribution.", buf, 0x16u);
          }

          v150 = +[SAPathManager defaultManager];
          v151 = [*(a1 + 40) registerWithSpaceAttributionArray];
          v215[0] = _NSConcreteStackBlock;
          v215[1] = 3221225472;
          v215[2] = __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1798;
          v215[3] = &unk_4B5268;
          v152 = v143;
          v153 = *(a1 + 40);
          v216 = v152;
          v217 = v153;
          [v150 registerPaths:v151 completionHandler:v215];

          v146 = v216;
        }

        v154 = [*(a1 + 40) unregisterWithSpaceAttributionArray];
        v155 = [v154 count] == 0;

        v156 = _MADLog(@"V2");
        v157 = os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT);
        if (v155)
        {
          if (v157)
          {
            *buf = 138543362;
            *&buf[4] = v143;
            _os_log_impl(&dword_0, v156, OS_LOG_TYPE_DEFAULT, "%{public}@: Did not find any asset paths to bulk unregister with space attribution.", buf, 0xCu);
          }
        }

        else
        {
          if (v157)
          {
            v158 = [*(a1 + 40) unregisterWithSpaceAttributionArray];
            v159 = [v158 count];
            *buf = 138543618;
            *&buf[4] = v143;
            *&buf[12] = 2050;
            *&buf[14] = v159;
            _os_log_impl(&dword_0, v156, OS_LOG_TYPE_DEFAULT, "%{public}@: Bulk unregistering %{public}lu assets with space attribution.", buf, 0x16u);
          }

          v160 = +[SAPathManager defaultManager];
          v161 = [*(a1 + 40) unregisterWithSpaceAttributionArray];
          v212[0] = _NSConcreteStackBlock;
          v212[1] = 3221225472;
          v212[2] = __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1799;
          v212[3] = &unk_4B5268;
          v162 = v143;
          v163 = *(a1 + 40);
          v213 = v162;
          v214 = v163;
          [v160 unregisterPaths:v161 completionHandler:v212];

          v156 = v213;
        }
      }
    }
  }

  if ([*(a1 + 40) reclaimSpace])
  {
    v164 = _MADLog(@"V2Control");
    v165 = v164;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v164))
    {
      v166 = mach_continuous_time();
      v167 = [*(a1 + 40) reclaimUrgency];
      v168 = [*(a1 + 40) reclaimVolume];
      v169 = v168;
      v170 = [v168 UTF8String];
      *buf = 134349826;
      *&buf[4] = v166;
      *&buf[12] = 2050;
      *&buf[14] = v167;
      *&buf[22] = 2050;
      *&buf[24] = v75;
      *&buf[32] = 2082;
      *&buf[34] = v170;
      _os_signpost_emit_with_name_impl(&dword_0, v165, OS_SIGNPOST_INTERVAL_END, spid, "GarbageCollection", "%{public, signpost.description:end_time}llu Urgency=%{public, signpost.telemetry:number1,name=Urgency}lld Bytes=%{public, signpost.telemetry:number2,name=Bytes}lldVolume=%{public, signpost.telemetry:string1,name=Volume}s enableTelemetry=YES ", buf, 0x2Au);
    }
  }

  [*(a1 + 40) setAssetTypesForReclaimStats:0];
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v75);
  }

  return result;
}

void __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1791(uint64_t a1)
{
  v9 = [*(a1 + 32) analytics];
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  v4 = [*(a1 + 32) reclaimUrgency];
  v5 = *(a1 + 40);
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = v5;
  if (!v5)
  {
    v7 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  }

  v8 = [v9 recordCacheDeleteAttempt:v2 timeTakenSecs:v4 cacheDeleteUrgency:v6 results:v7 targetPurgeVolume:objc_msgSend(*(a1 + 32) triggeringOperation:{"reclaimSpace"), v3}];
  if (!v5)
  {
  }
}

void __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1798(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to bulk register assets with space attribution. Error: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) registerWithSpaceAttributionArray];
    v9 = 138543618;
    v10 = v7;
    v11 = 2050;
    v12 = [v8 count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully bulk registered %{public}lu assets with space attribution.", &v9, 0x16u);
  }

  [*(a1 + 40) setRegisterWithSpaceAttributionArray:0];
}

void __106__ControlManager_respondToCacheDelete_targetingPurgeAmount_cacheDeleteResults_withUrgency_forVolume_then___block_invoke_1799(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%{public}@: Failed to bulk unregister assets with space attribution. Error: %{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) unregisterWithSpaceAttributionArray];
    v9 = 138543618;
    v10 = v7;
    v11 = 2050;
    v12 = [v8 count];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully bulk unregistered %{public}lu assets with space attribution.", &v9, 0x16u);
  }

  [*(a1 + 40) setUnregisterWithSpaceAttributionArray:0];
}

- (BOOL)purgeAllAssetsInDirectory:(id)directory clientName:(id)name exceptForAssetIds:(id)ids
{
  directoryCopy = directory;
  nameCopy = name;
  idsCopy = ids;
  context = objc_autoreleasePoolPush();
  v10 = getAssetsAtPath(directoryCopy);
  v11 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v37 = nameCopy;
    v38 = 2048;
    v39 = [v10 count];
    v40 = 2114;
    v41 = directoryCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{purgeAllAssetsInDirectory} %{public}@ requested purge of %lld assets | assetTypeDirectory:%{public}@", buf, 0x20u);
  }

  v27 = directoryCopy;

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v31)
  {
    v30 = *v33;
    v12 = 1;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v33 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        lastPathComponent = [v14 lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

        if (idsCopy && [idsCopy containsObject:stringByDeletingPathExtension])
        {
          v18 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v37 = nameCopy;
            v38 = 2114;
            v39 = v14;
            v40 = 2114;
            v41 = stringByDeletingPathExtension;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "{purgeAllAssetsInDirectory} %{public}@ requested purge (skipped purge of asset to be preserved) | assetDirectory:%{public}@ | assetID:%{public}@", buf, 0x20u);
          }
        }

        else
        {
          v18 = [(ControlManager *)self getSAFRegistrationBundleID:v14, context, v27];
          path = [v14 path];
          v20 = [(ControlManager *)self removeDirectoryAtPath:path firstRenamingWithExtension:@".purged"];

          if (v20 == 3)
          {
            v22 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v37 = nameCopy;
              v38 = 2114;
              v39 = v14;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "{purgeAllAssetsInDirectory} %{public}@ requested purge (skipped purge [MAPurgeAssetDidntExist]) | assetDirectory:%{public}@", buf, 0x16u);
            }
          }

          else if (v20)
          {
            v23 = _MADLog(@"V2");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = stringForMAPurgeResult(v20);
              *buf = 138544130;
              v37 = nameCopy;
              v38 = 2114;
              v39 = v14;
              v40 = 2048;
              v41 = v20;
              v42 = 2114;
              v43 = v24;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "{purgeAllAssetsInDirectory} %{public}@ requested purge (failed) | assetDirectory:%{public}@ | result:%lld(%{public}@)", buf, 0x2Au);
            }

            v12 = 0;
          }

          else
          {
            v21 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v37 = nameCopy;
              v38 = 2114;
              v39 = v14;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "{purgeAllAssetsInDirectory} %{public}@ requested purge (successfully purged) | assetDirectory:%{public}@", buf, 0x16u);
            }

            [(ControlManager *)self updateSpaceAttributionForBundleID:v18 assetPath:v14 doRegistration:0];
          }
        }

        objc_autoreleasePoolPop(v15);
      }

      v31 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v31);
  }

  else
  {
    v12 = 1;
  }

  objc_autoreleasePoolPop(context);
  return v12 & 1;
}

- (BOOL)purgeAllAssetsOfType:(id)type forPurpose:(id)purpose clientName:(id)name exceptForAssetIds:(id)ids
{
  typeCopy = type;
  purposeCopy = purpose;
  nameCopy = name;
  idsCopy = ids;
  v14 = repositoryPath(typeCopy);
  if (!typeCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = _MADLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      LOBYTE(self) = 0;
      goto LABEL_14;
    }

    *buf = 138543362;
    v55 = nameCopy;
    v20 = "{purgeAllAssetsOfType} %{public}@ attempted to purge on invalid asset-type";
LABEL_12:
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_13;
  }

  v15 = normalizedAssetType(typeCopy);
  if (!v15)
  {
    v16 = _MADLog(@"V2");
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v55 = nameCopy;
    v20 = "{purgeAllAssetsOfType} %{public}@ specified asset-type that could not be normalized";
    goto LABEL_12;
  }

  v16 = v15;
  v17 = [v14 stringByAppendingPathComponent:v15];
  if (v17)
  {
    if (purposeCopy)
    {
      if (!isWellFormedPurpose(purposeCopy))
      {
        v18 = _MADLog(@"V2");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v55 = nameCopy;
          v56 = 2114;
          v57 = purposeCopy;
          v58 = 2114;
          v59 = typeCopy;
          v19 = "{purgeAllAssetsOfType} %{public}@ specified invalid purpose:%{public}@ | assetType:%{public}@";
          goto LABEL_26;
        }

LABEL_27:

LABEL_28:
        goto LABEL_13;
      }

      if ([SUCore stringIsEqual:purposeCopy to:@"auto"])
      {
        v18 = _MADLog(@"V2");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v55 = nameCopy;
          v56 = 2114;
          v57 = purposeCopy;
          v58 = 2114;
          v59 = typeCopy;
          v19 = "{purgeAllAssetsOfType} %{public}@ specified unsupported purpose:%{public}@ | assetType:%{public}@";
LABEL_26:
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, v19, buf, 0x20u);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      v48 = v16;
      v45 = v14;
      purposeDirectoryName(purposeCopy);
      v42 = v46 = v17;
      v37 = [v17 stringByAppendingPathComponent:?];
      v23 = [NSURL fileURLWithPath:v37];
      v25 = [(ControlManager *)self purgeAllAssetsInDirectory:v23 clientName:nameCopy exceptForAssetIds:idsCopy];
      v24 = v37;
      finishPartiallyPurgedAssets(v37, 1u, 0);
      v47 = 0;
      v44 = 0;
    }

    else
    {
      v26 = [[NSString alloc] initWithFormat:@"purpose_%@", @"auto"];
      if ([v17 containsString:v26])
      {
        v27 = _MADLog(@"V2");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v55 = nameCopy;
          v56 = 2114;
          v57 = v17;
          v58 = 2114;
          v59 = typeCopy;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "{purgeAllAssetsOfType} %{public}@ specified unsupported path:%{public}@ | assetType:%{public}@", buf, 0x20u);
        }

        goto LABEL_28;
      }

      v43 = v26;
      v48 = v16;
      v28 = [NSURL fileURLWithPath:v17];
      v25 = [(ControlManager *)self purgeAllAssetsInDirectory:v28 clientName:nameCopy exceptForAssetIds:idsCopy];
      v44 = v28;
      getPurposeDirectoriesAtPath(v28);
      v47 = v46 = v17;
      v45 = v14;
      if (v47)
      {
        v29 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v55 = v47;
          _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Found purpose directories to purge: %{public}@", buf, 0xCu);
        }

        v41 = typeCopy;

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v30 = v47;
        v31 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v50;
          do
          {
            for (i = 0; i != v32; i = i + 1)
            {
              if (*v50 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v49 + 1) + 8 * i);
              v36 = objc_autoreleasePoolPush();
              v25 &= [(ControlManager *)self purgeAllAssetsInDirectory:v35 clientName:nameCopy exceptForAssetIds:idsCopy];
              objc_autoreleasePoolPop(v36);
            }

            v32 = [v30 countByEnumeratingWithState:&v49 objects:v53 count:16];
          }

          while (v32);
        }

        purposeCopy = 0;
        typeCopy = v41;
        v17 = v46;
      }

      finishPartiallyPurgedAssets(v17, 1u, 1);

      v23 = 0;
      v24 = 0;
      v42 = 0;
    }
  }

  else
  {
    v46 = 0;
    v48 = v16;
    v22 = _MADLog(@"V2");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v55 = nameCopy;
      v56 = 2114;
      v57 = typeCopy;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{purgeAllAssetsOfType} %{public}@ attempted to create asset-type directory to purge but failed | assetType:%{public}@", buf, 0x16u);
    }

    v45 = v14;

    v47 = 0;
    v42 = 0;
    v44 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  v38 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
  v39 = [v38 stringByAppendingPathComponent:v48];

  if (v39)
  {
    v40 = [NSURL fileURLWithPath:v39];
    LODWORD(self) = [(ControlManager *)self purgeAllAssetsInDirectory:v40 clientName:nameCopy exceptForAssetIds:idsCopy]& v25;
    finishPartiallyPurgedAssets(v39, 1u, 0);
  }

  else
  {
    self = _MADLog(@"V2Control");
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v55 = nameCopy;
      v56 = 2114;
      v57 = typeCopy;
      _os_log_impl(&dword_0, &self->super, OS_LOG_TYPE_DEFAULT, "{purgeAllAssetsOfType} %{public}@ specified asset-type where could not determine pre-installed asset path | assetType:%{public}@", buf, 0x16u);
    }

    LOBYTE(self) = 0;
  }

  v14 = v45;
  v16 = v48;
LABEL_14:

  return self;
}

- (BOOL)purgeCatalogOfType:(id)type clientName:(id)name withPurpose:(id)purpose
{
  typeCopy = type;
  nameCopy = name;
  purposeCopy = purpose;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v11 = getPathToAssetFileWithPurpose(typeCopy, purposeCopy);
  if (v11)
  {
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

    if (v13)
    {
      metaDataQueue = self->_metaDataQueue;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __60__ControlManager_purgeCatalogOfType_clientName_withPurpose___block_invoke;
      v19[3] = &unk_4B48A0;
      v20 = v11;
      v21 = nameCopy;
      v22 = typeCopy;
      v23 = &v24;
      dispatch_sync(metaDataQueue, v19);
    }

    else
    {
      v16 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v29 = nameCopy;
        v30 = 2114;
        v31 = typeCopy;
        v32 = 2114;
        v33 = v11;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ could not purge catalog of type %{public}@ from %{public}@ (doesn't exist, treating as success)", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v29 = nameCopy;
      v30 = 2114;
      v31 = typeCopy;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ could not purge catalog of type %{public}@ from nil (path composition faillure)", buf, 0x16u);
    }

    *(v25 + 24) = 0;
  }

  v17 = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return v17 & 1;
}

void __60__ControlManager_purgeCatalogOfType_clientName_withPurpose___block_invoke(void *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = a1[4];
  v9 = 0;
  [v2 removeItemAtPath:v3 error:&v9];
  v4 = v9;

  if (v4)
  {
    v5 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[5];
      v6 = a1[6];
      v8 = a1[4];
      *buf = 138543874;
      v11 = v7;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v8;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ could not purge catalog of type %{public}@ from %{public}@", buf, 0x20u);
    }

    *(*(a1[7] + 8) + 24) = 0;
  }
}

- (void)getProductMarketingVersions:(id)versions and:(id)and clientName:(id)name assetType:(id)type
{
  nameCopy = name;
  typeCopy = type;
  andCopy = and;
  versionsCopy = versions;
  v13 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    v16 = nameCopy;
    v17 = 2114;
    v18 = typeCopy;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ issued PMV download command %{public}@", &v15, 0x16u);
  }

  v14 = getDownloadManager();
  [v14 registerPmvDownloadJob:typeCopy using:versionsCopy with:andCopy clientName:nameCopy];
}

- (void)purgeCatalogs:(id)catalogs and:(id)and assetTypesList:(id)list clientName:(id)name
{
  catalogsCopy = catalogs;
  andCopy = and;
  listCopy = list;
  nameCopy = name;
  if ([(ControlManager *)self beforeFirstUnlock])
  {
    v14 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v29 = nameCopy;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot purgeCatalogs before first unlock", buf, 0xCu);
    }

    sendClientResponse(catalogsCopy, andCopy, 11);
  }

  else
  {
    string = xpc_dictionary_get_string(andCopy, "Purpose");
    v16 = normalizePurposeFromUtf8(string);
    v17 = isWellFormedPurpose(v16);
    v18 = _MADLog(@"V2Control");
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        *buf = 138543874;
        v29 = nameCopy;
        v30 = 2114;
        v31 = listCopy;
        v32 = 2114;
        v33 = v16;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ purgeCatalogs: the asset types are: %{public}@ with purpose: %{public}@", buf, 0x20u);
      }

      v20 = [NSMutableSet setWithArray:listCopy];
      v21 = getDownloadManager();
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = __62__ControlManager_purgeCatalogs_and_assetTypesList_clientName___block_invoke;
      v22[3] = &unk_4B5380;
      v22[4] = self;
      v23 = listCopy;
      v24 = nameCopy;
      v25 = v16;
      v26 = catalogsCopy;
      v27 = andCopy;
      [v21 cancelAllDownloading:v20 withPurpose:v25 includingAssets:0 includingCatalog:1 includingOther:0 clientName:v24 then:v22];
    }

    else
    {
      if (v19)
      {
        *buf = 138543362;
        v29 = nameCopy;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot purgeCatalogs with invalid purpose", buf, 0xCu);
      }

      sendClientResponse(catalogsCopy, andCopy, 5);
    }
  }
}

void __62__ControlManager_purgeCatalogs_and_assetTypesList_clientName___block_invoke(uint64_t a1, char a2)
{
  v4 = (a1 + 32);
  v5 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __62__ControlManager_purgeCatalogs_and_assetTypesList_clientName___block_invoke_2;
  block[3] = &unk_4B5420;
  *&v6 = *(a1 + 40);
  *(&v6 + 1) = *v4;
  v10 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v16 = a2;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  dispatch_async(v5, block);
}

void __62__ControlManager_purgeCatalogs_and_assetTypesList_clientName___block_invoke_2(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {purgeCatalogs} purging catalogs...", buf, 2u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v6 |= [*(a1 + 40) purgeCatalogOfType:v9 clientName:*(a1 + 48) withPurpose:{*(a1 + 56), v21}] ^ 1;
        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v5);

    if (v6)
    {
      v11 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        *buf = 138543874;
        v26 = v13;
        v27 = 2114;
        v28 = v12;
        v29 = 2114;
        v30 = v14;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ unable to completely purge all catalogs for %{public}@ with purpose: %{public}@", buf, 0x20u);
      }

      v15 = 5;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v11 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *buf = 138543874;
    v26 = v17;
    v27 = 2114;
    v28 = v16;
    v29 = 2114;
    v30 = v18;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ finished purge catalogs for %{public}@ with purpose: %{public}@", buf, 0x20u);
  }

  v15 = 0;
LABEL_18:

  if (*(a1 + 80))
  {
    v19 = v15;
  }

  else
  {
    v19 = 8;
  }

  sendClientResponse(*(a1 + 64), *(a1 + 72), v19);
  v20 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {purgeCatalogs} ...purging catalogs", buf, 2u);
  }
}

- (id)dictionaryWithArrayOfStringValues:(id)values forXpcKey:(const char *)key andLengthKey:(const char *)lengthKey clientName:(id)name
{
  valuesCopy = values;
  nameCopy = name;
  v11 = preservedIdsDecodeClasses();
  v12 = getObjectFromMessageLogIfDesired(valuesCopy, lengthKey, key, v11, 0);

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v45 = nameCopy;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ gave invalid preserved IDs dict", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v40 objects:v51 count:16];
  v16 = v14;
  if (!v15)
  {
    goto LABEL_33;
  }

  v17 = v15;
  v34 = valuesCopy;
  v18 = *v41;
  while (2)
  {
    v19 = 0;
    v33 = v17;
    do
    {
      if (*v41 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v40 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v23 = _MADLog(@"V2Control");
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v22 = v14;
          valuesCopy = v34;
          goto LABEL_31;
        }

        *buf = 138543362;
        v45 = nameCopy;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ gave invalid preserved IDs key", buf, 0xCu);
        v22 = v14;
LABEL_41:
        valuesCopy = v34;
LABEL_31:

        v23 = v22;
LABEL_32:

        objc_autoreleasePoolPop(v21);
        v16 = 0;
        goto LABEL_33;
      }

      v22 = [v14 objectForKey:v20];
      if (!v22 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v32 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v45 = nameCopy;
          v46 = 2114;
          v47 = v20;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ gave invalid preserved IDs array for %{public}@", buf, 0x16u);
        }

        v23 = v14;
        goto LABEL_41;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v23 = v22;
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v50 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        v35 = v21;
        while (2)
        {
          v27 = v18;
          for (i = 0; i != v25; i = i + 1)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v36 + 1) + 8 * i);
            if (v29)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                continue;
              }
            }

            v30 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v45 = nameCopy;
              v46 = 2114;
              v47 = v29;
              v48 = 2114;
              v49 = v20;
              _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ gave invalid preserved ID %{public}@ for %{public}@", buf, 0x20u);
            }

            v22 = v23;
            valuesCopy = v34;
            v21 = v35;
            goto LABEL_31;
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v50 count:16];
          v18 = v27;
          v21 = v35;
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      if (!v14)
      {
        valuesCopy = v34;
        goto LABEL_32;
      }

      objc_autoreleasePoolPop(v21);
      v19 = v19 + 1;
    }

    while (v19 != v33);
    v17 = [v14 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

  v16 = v14;
  valuesCopy = v34;
LABEL_33:

  return v16;
}

- (id)dictionaryWithArrayOfStringValues:(id)values forXpcKey:(const char *)key andLengthKey:(const char *)lengthKey failureReason:(id *)reason
{
  valuesCopy = values;
  v10 = preservedIdsDecodeClasses();
  v11 = getObjectFromMessageLogIfDesired(valuesCopy, lengthKey, key, v10, 0);

  if (!v11)
  {
    v15 = @"Missing required dictionary field provided by client";
    if (!reason)
    {
      goto LABEL_42;
    }

    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
    v15 = @"Invalid field type encountered when dictionary expected";
LABEL_34:
    if (!reason)
    {
      goto LABEL_42;
    }

LABEL_35:
    if (v15)
    {
      v25 = v15;
      *reason = v15;
    }

    goto LABEL_42;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = v11;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    reasonCopy = reason;
    LOBYTE(v14) = 0;
    v15 = 0;
    v16 = *v37;
    v29 = *v37;
    v30 = v11;
    while (2)
    {
      v17 = 0;
      v31 = v13;
      do
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v36 + 1) + 8 * v17);
        v19 = objc_autoreleasePoolPush();
        if (v14)
        {
          LODWORD(v14) = 1;
        }

        else
        {
          if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v20 = v15;
            v15 = @"Invalid field type for dictionary provided by client";
LABEL_40:

            objc_autoreleasePoolPop(v19);
            reason = reasonCopy;
            goto LABEL_41;
          }

          v20 = [v11 objectForKey:v18];
          if (!v20 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v26 = [[NSString alloc] initWithFormat:@"Invalid field type for dictionary where array values expected key:%@", v18];

            v15 = v26;
            goto LABEL_40;
          }

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v21 = v20;
          v14 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v14)
          {
            v22 = v15;
            v23 = *v33;
            while (2)
            {
              for (i = 0; i != v14; i = i + 1)
              {
                if (*v33 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                if (*(*(&v32 + 1) + 8 * i))
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    continue;
                  }
                }

                v15 = [[NSString alloc] initWithFormat:@"Invalid field type for dictionary of arrays where array values expected to be strings key:%@", v18];

                LODWORD(v14) = 1;
                v11 = v30;
                goto LABEL_25;
              }

              v14 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }

            v11 = v30;
LABEL_25:
            v16 = v29;
            v13 = v31;
          }
        }

        objc_autoreleasePoolPop(v19);
        v17 = v17 + 1;
      }

      while (v17 != v13);
      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    reason = reasonCopy;
    if (!v14)
    {
      goto LABEL_34;
    }

LABEL_41:

    v11 = 0;
    if (reason)
    {
      goto LABEL_35;
    }
  }

  else
  {

    v15 = 0;
  }

LABEL_42:

  return v11;
}

- (void)purgeAll:(id)all and:(id)and assetTypesList:(id)list clientName:(id)name
{
  allCopy = all;
  andCopy = and;
  listCopy = list;
  nameCopy = name;
  beforeFirstUnlock = [(ControlManager *)self beforeFirstUnlock];
  v15 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v90 = nameCopy;
    v91 = 2048;
    v92 = [listCopy count];
    v93 = 2114;
    v94 = listCopy;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "{purgeAll} %{public}@ requested purge-all | asset-types:%ld\n%{public}@", buf, 0x20u);
  }

  v16 = [NSMutableSet setWithArray:listCopy];
  selfCopy = self;
  v17 = [(ControlManager *)self dictionaryWithArrayOfStringValues:andCopy forXpcKey:"purgeAssetTypePreservingList" andLengthKey:"purgeAssetTypePreservingListLength" clientName:nameCopy];
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v82 objects:v88 count:16];
  v66 = nameCopy;
  if (v19)
  {
    v20 = v19;
    context = beforeFirstUnlock;
    v62 = v17;
    v64 = allCopy;
    v21 = listCopy;
    v22 = andCopy;
    v23 = 0;
    v24 = 0;
    v25 = *v83;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v83 != v25)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v82 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        if (!isWellFormedAssetType(v27))
        {
          v32 = _MADLog(@"V2");
          nameCopy = v66;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v90 = v66;
            v91 = 2114;
            v92 = v27;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "{purgeAll} %{public}@ requested purge-all with an asset-type that is not well formed | assetType:%{public}@", buf, 0x16u);
          }

          andCopy = v22;
          sendClientResponse(v64, v22, 5);
          v33 = v28;
          allCopy = v64;
          objc_autoreleasePoolPop(v33);

          listCopy = v21;
          goto LABEL_23;
        }

        if ((isSoftwareUpdateType(v27) & 1) == 0)
        {
          if (v23)
          {
            v29 = v23;
          }

          else
          {
            v29 = v27;
          }

          v30 = v29;

          v24 = 1;
          v23 = v30;
        }

        objc_autoreleasePoolPop(v28);
      }

      v20 = [v18 countByEnumeratingWithState:&v82 objects:v88 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }

    if (v24 & context)
    {
      v31 = _MADLog(@"V2");
      andCopy = v22;
      listCopy = v21;
      allCopy = v64;
      nameCopy = v66;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v90 = v66;
        v91 = 2114;
        v92 = v23;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "{purgeAll} %{public}@ requested purge-all that cannot occur before first unlock | assetType:%{public}@", buf, 0x16u);
      }

      sendClientResponse(v64, v22, 11);
LABEL_23:
      v17 = v62;
      goto LABEL_55;
    }

    andCopy = v22;
    listCopy = v21;
    allCopy = v64;
    nameCopy = v66;
    v17 = v62;
  }

  else
  {

    v23 = 0;
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  allKeys = [v17 allKeys];
  v35 = [allKeys countByEnumeratingWithState:&v78 objects:v87 count:16];
  if (v35)
  {
    v36 = *v79;
    v63 = v17;
    v65 = allCopy;
    v56 = andCopy;
    v57 = allKeys;
    v58 = listCopy;
    v54 = *v79;
    while (2)
    {
      v37 = 0;
      v55 = v35;
      do
      {
        if (*v79 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        v38 = *(*(&v78 + 1) + 8 * v37);
        contexta = objc_autoreleasePoolPush();
        if (!isWellFormedAssetType(v38))
        {
          v53 = _MADLog(@"V2");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v90 = nameCopy;
            v91 = 2114;
            v92 = v38;
            _os_log_impl(&dword_0, v53, OS_LOG_TYPE_ERROR, "{purgeAll} %{public}@ requested purge-all with preserved asset type is not well formed | assetType:%{public}@", buf, 0x16u);
          }

          andCopy = v56;
          sendClientResponse(allCopy, v56, 5);
LABEL_48:
          objc_autoreleasePoolPop(contexta);
          goto LABEL_54;
        }

        v77 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v39 = [v17 objectForKey:v38];
        v40 = [v39 countByEnumeratingWithState:&v74 objects:v86 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v75;
          while (2)
          {
            for (j = 0; j != v41; j = j + 1)
            {
              if (*v75 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v74 + 1) + 8 * j);
              v45 = objc_autoreleasePoolPush();
              if (!isWellFormedAssetId(v44))
              {
                v51 = _MADLog(@"V2");
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543874;
                  v90 = v66;
                  v91 = 2114;
                  v92 = v38;
                  v93 = 2114;
                  v94 = v44;
                  _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "{purgeAll} %{public}@ requested purge-all with preserved asset ID that is not well formed | assetType:%{public}@ | assetID:%{public}@", buf, 0x20u);
                }

                andCopy = v56;
                sendClientResponse(v65, v56, 5);
                objc_autoreleasePoolPop(v45);

                allCopy = v65;
                allKeys = v57;
                listCopy = v58;
                nameCopy = v66;
                v17 = v63;
                goto LABEL_48;
              }

              objc_autoreleasePoolPop(v45);
            }

            v41 = [v39 countByEnumeratingWithState:&v74 objects:v86 count:16];
            if (v41)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(contexta);
        v37 = v37 + 1;
        v36 = v54;
        allCopy = v65;
        nameCopy = v66;
        allKeys = v57;
        listCopy = v58;
        v17 = v63;
      }

      while (v37 != v55);
      v35 = [v57 countByEnumeratingWithState:&v78 objects:v87 count:16];
      andCopy = v56;
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  string = xpc_dictionary_get_string(andCopy, "Purpose");
  allKeys = normalizePurposeFromUtf8(string);
  if (isWellFormedPurpose(allKeys))
  {
    if (![SUCore stringIsEqual:allKeys to:@"auto"])
    {
      v52 = getDownloadManager();
      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = __57__ControlManager_purgeAll_and_assetTypesList_clientName___block_invoke;
      v67[3] = &unk_4B5470;
      v67[4] = selfCopy;
      v68 = listCopy;
      v69 = v17;
      v70 = allKeys;
      v71 = nameCopy;
      v72 = allCopy;
      v73 = andCopy;
      nameCopy = v66;
      [v52 cancelAllDownloading:v18 withPurpose:v70 includingAssets:1 includingCatalog:0 includingOther:1 clientName:v71 then:v67];

      goto LABEL_54;
    }

    v47 = _MADLog(@"V2");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v90 = nameCopy;
      v91 = 2114;
      v92 = allKeys;
      v48 = "{purgeAll} %{public}@ requested purge-all for purpose that does not support purge-all | purpose:%{public}@";
      v49 = v47;
      v50 = 22;
LABEL_51:
      _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, v48, buf, v50);
    }
  }

  else
  {
    v47 = _MADLog(@"V2");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v90 = nameCopy;
      v48 = "{purgeAll} %{public}@ requested purge-all for purpose that is not well formed";
      v49 = v47;
      v50 = 12;
      goto LABEL_51;
    }
  }

  sendClientResponse(allCopy, andCopy, 5);
LABEL_54:

LABEL_55:
}

void __57__ControlManager_purgeAll_and_assetTypesList_clientName___block_invoke(uint64_t a1, char a2)
{
  v4 = *(*(a1 + 32) + 40);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__ControlManager_purgeAll_and_assetTypesList_clientName___block_invoke_2;
  block[3] = &unk_4B5448;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v10;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v12 = v9;
  v13 = v8;
  v14 = *(a1 + 64);
  v17 = a2;
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  dispatch_async(v4, block);
}

void __57__ControlManager_purgeAll_and_assetTypesList_clientName___block_invoke_2(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {purgeAll} purging all indicated assets...", buf, 2u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(a1 + 40) objectForKey:{v9, v22}];
        v6 |= [*(a1 + 48) purgeAllAssetsOfType:v9 forPurpose:*(a1 + 56) clientName:*(a1 + 64) exceptForAssetIds:v11] ^ 1;

        objc_autoreleasePoolPop(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);

    if (v6)
    {
      v12 = _MADLog(@"V2");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 64);
        v14 = [*(a1 + 32) count];
        v15 = *(a1 + 32);
        *buf = 138543874;
        v27 = v13;
        v28 = 2048;
        v29 = v14;
        v30 = 2114;
        v31 = v15;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "{purgeAll} %{public}@ requested purge-all where unable to completely purge all assets | asset-types:%ld\n%{public}@", buf, 0x20u);
      }

      v16 = 5;
      goto LABEL_18;
    }
  }

  else
  {
  }

  v12 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 64);
    v18 = [*(a1 + 32) count];
    v19 = *(a1 + 32);
    *buf = 138543874;
    v27 = v17;
    v28 = 2048;
    v29 = v18;
    v30 = 2114;
    v31 = v19;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "{purgeAll} %{public}@ requested purge-all has finished successfully | asset-types:%ld\n%{public}@", buf, 0x20u);
  }

  v16 = 0;
LABEL_18:

  if (*(a1 + 88))
  {
    v20 = v16;
  }

  else
  {
    v20 = 8;
  }

  sendClientResponse(*(a1 + 72), *(a1 + 80), v20);
  v21 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {purgeAll} ...purging all indicated assets", buf, 2u);
  }
}

- (void)handleGarbageCollect:(id)collect and:(id)and
{
  collectCopy = collect;
  andCopy = and;
  v8 = objc_alloc_init(MADAnalyticsCacheDeleteResults);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __43__ControlManager_handleGarbageCollect_and___block_invoke;
  v11[3] = &unk_4B5498;
  v12 = collectCopy;
  v13 = andCopy;
  v9 = andCopy;
  v10 = collectCopy;
  [(ControlManager *)self respondToCacheDelete:1 targetingPurgeAmount:0 cacheDeleteResults:v8 withUrgency:0 forVolume:0 then:v11];
}

- (void)overrideGCValue:(id)value using:(id)using and:(id)and clientName:(id)name
{
  valueCopy = value;
  usingCopy = using;
  andCopy = and;
  nameCopy = name;
  assetQueue = self->_assetQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __55__ControlManager_overrideGCValue_using_and_clientName___block_invoke;
  v19[3] = &unk_4B3350;
  v20 = nameCopy;
  v21 = valueCopy;
  v22 = andCopy;
  v23 = usingCopy;
  v15 = usingCopy;
  v16 = andCopy;
  v17 = valueCopy;
  v18 = nameCopy;
  dispatch_async(assetQueue, v19);
}

void __55__ControlManager_overrideGCValue_using_and_clientName___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {overrideGCValue} overriding garbage-collection value...", &v28, 2u);
  }

  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v28 = 138543362;
    v29 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Attempting overriding GC for: %{public}@", &v28, 0xCu);
  }

  if (!*(a1 + 40))
  {
    v17 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      v19 = "overrideGCValue failed due to nil asset type";
      v20 = v17;
      v21 = 2;
      goto LABEL_20;
    }

LABEL_21:

    v12 = 0;
    v9 = 0;
    v7 = 0;
LABEL_22:
    v16 = 2;
    goto LABEL_23;
  }

  string = xpc_dictionary_get_string(*(a1 + 48), "AssetId");
  if (!string || ([NSString stringWithUTF8String:string], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v28 = 138543362;
      v29 = v18;
      v19 = "overrideGCValue for: %{public}@ failed due to nil asset id";
      v20 = v17;
      v21 = 12;
LABEL_20:
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, v19, &v28, v21);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v7 = v6;
  if (!isWellFormedAssetId(v6))
  {
    v23 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v28 = 138543362;
      v29 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "overrideGCValue for: %{public}@ failed due to asset id not being well formed", &v28, 0xCu);
    }

    v12 = 0;
    v9 = 0;
    goto LABEL_22;
  }

  v8 = xpc_dictionary_get_string(*(a1 + 48), "Purpose");
  v9 = normalizePurposeFromUtf8(v8);
  if (!isWellFormedPurpose(v9))
  {
    v25 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      v28 = 138543362;
      v29 = v26;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "overrideGCValue for: %{public}@ cannot proceed with purpose that isn't well formed", &v28, 0xCu);
    }

    goto LABEL_35;
  }

  uint64 = xpc_dictionary_get_uint64(*(a1 + 48), "GCOverrideDays");
  v11 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v12 = getPathToAssetWithPurpose(v11, *(a1 + 40), v7, v9);

  v13 = _MADLog(@"V2Control");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!v12)
  {
    if (v14)
    {
      v27 = *(a1 + 32);
      v28 = 138543362;
      v29 = v27;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "overrideGCValue for: %{public}@ could not determine path to asset, skipping", &v28, 0xCu);
    }

LABEL_35:
    v12 = 0;
    goto LABEL_22;
  }

  if (v14)
  {
    v15 = *(a1 + 32);
    v28 = 138543874;
    v29 = v15;
    v30 = 2114;
    v31 = v12;
    v32 = 2048;
    v33 = uint64;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "overrideGCValue for: %{public}@ path:%{public}@, days:%lld", &v28, 0x20u);
  }

  if (updateGCOverride(v12, uint64))
  {
    v16 = 0;
  }

  else
  {
    v16 = 2;
  }

LABEL_23:
  sendClientResponse(*(a1 + 56), *(a1 + 48), v16);
  v22 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v28) = 0;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {overrideGCValue} ...overriding garbage-collection value", &v28, 2u);
  }
}

- (void)dumpClientUsage:(id)usage using:(id)using and:(id)and clientName:(id)name
{
  usageCopy = usage;
  usingCopy = using;
  andCopy = and;
  nameCopy = name;
  assetQueue = self->_assetQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __55__ControlManager_dumpClientUsage_using_and_clientName___block_invoke;
  v19[3] = &unk_4B3350;
  v20 = nameCopy;
  v21 = andCopy;
  v22 = usageCopy;
  v23 = usingCopy;
  v15 = usingCopy;
  v16 = usageCopy;
  v17 = andCopy;
  v18 = nameCopy;
  dispatch_async(assetQueue, v19);
}

BOOL __55__ControlManager_dumpClientUsage_using_and_clientName___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v20 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "dumpClientUsage for client: %{public}@", buf, 0xCu);
  }

  string = xpc_dictionary_get_string(*(a1 + 40), "AssetId");
  v18 = 0xBFF0000000000000;
  if (*(a1 + 48))
  {
    if (string)
    {
      v5 = [NSString stringWithUTF8String:string];
      if (v5)
      {
        v6 = v5;
        if (isWellFormedAssetId(v5))
        {
          v7 = xpc_dictionary_get_string(*(a1 + 40), "Purpose");
          v8 = normalizePurposeFromUtf8(v7);
          if (isWellFormedPurpose(v8))
          {
            v9 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
            v10 = getPathToAssetWithPurpose(v9, *(a1 + 48), v6, v8);

            ExistingClientUsage = getExistingClientUsage(v10, &v18);
            v12 = 0;
            goto LABEL_21;
          }

          v14 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Dump client usage failed due to malformed purpose", buf, 2u);
          }
        }

        else
        {
          v8 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Dump client usage failed due to malformed asset id", buf, 2u);
          }
        }

        ExistingClientUsage = 0.0;
        goto LABEL_20;
      }
    }

    v6 = _MADLog(@"V2Control");
    ExistingClientUsage = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "Dump client usage failed due to nil asset id";
LABEL_13:
      v12 = 2;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      goto LABEL_21;
    }
  }

  else
  {
    v6 = _MADLog(@"V2Control");
    ExistingClientUsage = 0.0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v13 = "dumpClientUsage failed due to nil asset type";
      goto LABEL_13;
    }
  }

LABEL_20:
  v12 = 2;
LABEL_21:

  v15 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = epochToDate(ExistingClientUsage);
    *buf = 138543618;
    v20 = v16;
    v21 = 2048;
    v22 = v18;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Usage is: %{public}@, Override is: %f", buf, 0x16u);
  }

  return sendClientResponse(*(a1 + 56), *(a1 + 40), v12);
}

- (void)handleUpdateClientUsage:(id)usage using:(id)using and:(id)and clientName:(id)name
{
  usageCopy = usage;
  usingCopy = using;
  andCopy = and;
  nameCopy = name;
  assetQueue = self->_assetQueue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __63__ControlManager_handleUpdateClientUsage_using_and_clientName___block_invoke;
  v19[3] = &unk_4B3350;
  v20 = andCopy;
  v21 = usageCopy;
  v22 = nameCopy;
  v23 = usingCopy;
  v15 = usingCopy;
  v16 = nameCopy;
  v17 = usageCopy;
  v18 = andCopy;
  dispatch_async(assetQueue, v19);
}

void __63__ControlManager_handleUpdateClientUsage_using_and_clientName___block_invoke(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  if (!*(a1 + 40))
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 48);
      *buf = 138543362;
      v51 = v14;
      v11 = "%{public}@ Update client usage failed due to nil asset type";
      v12 = v10;
      v13 = 12;
      goto LABEL_12;
    }

LABEL_13:
    v15 = 0;
    v16 = 0;
    v5 = 0;
LABEL_14:
    v8 = 0;
LABEL_15:

    v17 = 2;
    goto LABEL_16;
  }

  string = xpc_dictionary_get_string(*(a1 + 32), "AssetId");
  if (!string || ([NSString stringWithUTF8String:string], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Update client usage failed due to nil asset id";
      v12 = v10;
      v13 = 2;
LABEL_12:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = v4;
  if (!isWellFormedAssetId(v4))
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Update client usage failed due to asset id not being well formed", buf, 2u);
    }

    v15 = 0;
    v16 = 0;
    goto LABEL_14;
  }

  uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "assetState");
  v7 = uint64;
  if (uint64 == 6)
  {
    v20 = getRepositoryPath(@"/private/var/MobileAsset/PreinstalledAssetsV2/InstallWithOs");
  }

  else
  {
    if (uint64 == 5)
    {
      v8 = getRepositoryPath(@"/System/Library/PreinstalledAssetsV2/RequiredByOs");
      v9 = 0;
      goto LABEL_24;
    }

    v20 = repositoryPath(*(a1 + 40));
  }

  v8 = v20;
  v9 = 1;
LABEL_24:
  v21 = xpc_dictionary_get_string(*(a1 + 32), "Purpose");
  v16 = normalizePurposeFromUtf8(v21);
  if (!isWellFormedPurpose(v16))
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "Update client usage failed due to purpose not being well formed";
LABEL_38:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
    }

LABEL_39:
    v15 = 0;
    goto LABEL_15;
  }

  if (v7 - 5 <= 1)
  {

    v16 = 0;
  }

  v22 = getPathToAssetWithPurpose(v8, *(a1 + 40), v5, v16);
  if (!v22)
  {
    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v30 = "Update client usage, could not determine path to asset, skipping";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v15 = v22;
  if (v9)
  {
    ExistingClientUsage = getExistingClientUsage(v22, 0);
    v24 = +[NSDate date];
    [v24 timeIntervalSince1970];
    v26 = v25;

    if (ExistingClientUsage <= 0.0 || v26 - ExistingClientUsage >= 86400.0)
    {
      if (updateClientUsageDate(v15))
      {
        v17 = 0;
      }

      else
      {
        v31 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(a1 + 40);
          v32 = *(a1 + 48);
          *buf = 138544130;
          v51 = v32;
          v52 = 2114;
          v53 = v33;
          v54 = 2114;
          v55 = v5;
          v56 = 2114;
          v57 = v15;
          _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ asset %{public}@ %{public}@ unable to update client usage '%{public}@'", buf, 0x2Au);
        }

        v17 = 2;
      }

      v27 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *(a1 + 40);
        v34 = *(a1 + 48);
        *buf = 138544898;
        v51 = v34;
        v52 = 2114;
        v53 = v35;
        v54 = 2114;
        v55 = v5;
        v56 = 2114;
        v57 = v15;
        v58 = 2048;
        v59 = ExistingClientUsage;
        v60 = 2048;
        v61 = v26;
        v62 = 2048;
        v63 = v17;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ client Usage type: %{public}@ id:%{public}@, path: '%{public}@' original: %f new: %f result: %ld", buf, 0x48u);
      }
    }

    else
    {
      v27 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 40);
        v28 = *(a1 + 48);
        *buf = 138544386;
        v51 = v28;
        v52 = 2114;
        v53 = v29;
        v54 = 2114;
        v55 = v5;
        v56 = 2114;
        v57 = v15;
        v58 = 2048;
        v59 = v26 - ExistingClientUsage;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ asset %{public}@ %{public}@ has been used in past 24 hours '%{public}@': %f", buf, 0x34u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v36 = xpc_dictionary_get_string(*(a1 + 32), "localAssetPath");
  if (v36)
  {
    v37 = v36;
    v38 = [v15 URLByAppendingPathComponent:@"AssetData"];
    v19 = [v38 path];

    if (v19)
    {
      if (reply)
      {
        xpc_dictionary_set_string(reply, "localAssetPath", [v19 fileSystemRepresentation]);
        v39 = +[NSFileManager defaultManager];
        v40 = [v39 fileExistsAtPath:v19];

        if (v40)
        {
          v41 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 40);
            v42 = *(a1 + 48);
            *buf = 138544130;
            v51 = v42;
            v52 = 2114;
            v53 = v43;
            v54 = 2114;
            v55 = v5;
            v56 = 2114;
            v57 = v15;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ client Usage type: %{public}@ id:%{public}@, parent path: '%{public}@' AssetData exists", buf, 0x2Au);
          }

          v44 = 1;
        }

        else
        {
          v44 = -1;
        }

        xpc_dictionary_set_int64(reply, "assetDataExistsPosNeg", v44);
        v18 = v19;
        goto LABEL_17;
      }

      v47 = _MADLog(@"V2");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        stringForMAXpcCommand(0x15u);
        v48 = log = v47;
        *buf = 134218754;
        v51 = 21;
        v52 = 2114;
        v53 = v48;
        v54 = 2082;
        v55 = "localAssetPath";
        v56 = 2082;
        v57 = v37;
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Client didn't send'update client usage with a reply context, but requested an asset path? (%lld %{public}@: %{public}s = %{public}s)", buf, 0x2Au);

        v47 = log;
      }

LABEL_61:
      sendClientResponse(*(a1 + 56), *(a1 + 32), v17);
      v18 = v19;
      goto LABEL_62;
    }

    v10 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v46 = *(a1 + 40);
      v45 = *(a1 + 48);
      *buf = 138544130;
      v51 = v45;
      v52 = 2114;
      v53 = v46;
      v54 = 2114;
      v55 = v5;
      v56 = 2114;
      v57 = v15;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ client Usage type: %{public}@ id:%{public}@, parent path: '%{public}@' unable to get AssetData subdirectory", buf, 0x2Au);
    }

    goto LABEL_15;
  }

LABEL_16:
  v18 = 0;
  v19 = 0;
  if (!reply)
  {
    goto LABEL_61;
  }

LABEL_17:
  sendReply(*(a1 + 56), reply, v17);
LABEL_62:
}

- (void)handleMigrateAssetsRequest:(id)request using:(id)using and:(id)and
{
  requestCopy = request;
  usingCopy = using;
  andCopy = and;
  assetQueue = self->_assetQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__ControlManager_handleMigrateAssetsRequest_using_and___block_invoke;
  block[3] = &unk_4B2AF0;
  v16 = requestCopy;
  v17 = usingCopy;
  v18 = andCopy;
  v12 = andCopy;
  v13 = usingCopy;
  v14 = requestCopy;
  dispatch_async(assetQueue, block);
}

void __55__ControlManager_handleMigrateAssetsRequest_using_and___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleMigrateAssetsRequest} migrating assets...", buf, 2u);
  }

  if (!*(a1 + 32))
  {
    v4 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Migration failed due to nil asset type";
LABEL_12:
      v15 = 2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v13 = 0;
      goto LABEL_51;
    }

LABEL_16:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v13 = 0;
    v15 = 2;
    goto LABEL_51;
  }

  v3 = +[NSFileManager defaultManager];
  if (!v3)
  {
    v4 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Migration failed due to nil file manager";
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  v4 = v3;
  v5 = normalizedAssetType(*(a1 + 32));
  if (!v5)
  {
    v19 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Migration failed due to nil normalizedAssetTypeStr", buf, 2u);
    }

    goto LABEL_16;
  }

  v6 = v5;
  v7 = getRepositoryPath(@"/private/var/MobileAsset/Assets");
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = repositoryPath(*(a1 + 32));
  v10 = [v9 stringByAppendingPathComponent:v6];

  v11 = +[NSFileManager defaultManager];
  v12 = [v11 fileExistsAtPath:v10];

  if (v12)
  {
    v13 = 0;
  }

  else
  {
    ensureAssetDirectory(v10, 0);
    v20 = +[NSFileManager defaultManager];
    v52 = 0;
    v21 = [v20 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:0 error:&v52];
    v13 = v52;

    if ((v21 & 1) == 0)
    {
      v37 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v13 description];
        *buf = 138543362;
        v55 = v38;
        _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "Could not create target directory: %{public}@", buf, 0xCu);
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v15 = 2;
      v4 = v8;
      goto LABEL_51;
    }
  }

  v22 = [NSURL URLWithString:v8];
  v23 = getAssetsAtPath(v22);
  if (v23)
  {
    v40 = v22;
    v41 = v6;
    v45 = v10;
    v46 = v4;
    v42 = v8;
    v43 = v13;
    v44 = a1;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v23;
    v24 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v16 = 0;
      v26 = 0;
      v18 = 0;
      v27 = *v49;
      while (2)
      {
        for (i = 0; i != v25; i = i + 1)
        {
          v29 = v18;
          if (*v49 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v48 + 1) + 8 * i);
          v31 = objc_autoreleasePoolPush();
          if (v30)
          {
            v32 = [v30 lastPathComponent];

            if (v32)
            {
              v16 = v32;
              v18 = [v45 stringByAppendingPathComponent:v32];

              if ([v46 fileExistsAtPath:v18])
              {
                v33 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v55 = v30;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Skipping asset: %{public}@ as it already exists", buf, 0xCu);
                }
              }

              else
              {
                v17 = [NSURL fileURLWithPath:v18 isDirectory:1];

                v34 = copyTargetToDirectory(v30, v17);
                v33 = _MADLog(@"V2Control");
                v35 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
                if (v34)
                {
                  if (v35)
                  {
                    *buf = 138543362;
                    v55 = v30;
                    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Failed to move asset: %{public}@ in migration", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v31);
                  v15 = 2;
                  v4 = v40;
                  goto LABEL_50;
                }

                if (v35)
                {
                  *buf = 138543362;
                  v55 = v30;
                  _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Moved asset: %{public}@ in migration", buf, 0xCu);
                }

                v26 = v17;
              }
            }

            else
            {
              v16 = 0;
            }
          }

          objc_autoreleasePoolPop(v31);
        }

        v25 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
      v26 = 0;
      v18 = 0;
    }

    v15 = 0;
    v4 = v40;
    v17 = v26;
LABEL_50:
    v13 = v43;
    a1 = v44;
  }

  else
  {
    v36 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Migration skipped due to not having a V1 assets directory", buf, 2u);
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v4 = v22;
  }

LABEL_51:

  sendClientResponse(*(a1 + 40), *(a1 + 48), v15);
  v39 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleMigrateAssetsRequest} ...migrating assets", buf, 2u);
  }
}

- (void)handleReportingRequest:(id)request message:(id)message clientName:(id)name
{
  requestCopy = request;
  messageCopy = message;
  nameCopy = name;
  analyticsQueue = self->_analyticsQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __60__ControlManager_handleReportingRequest_message_clientName___block_invoke;
  v15[3] = &unk_4B3350;
  v16 = messageCopy;
  selfCopy = self;
  v18 = nameCopy;
  v19 = requestCopy;
  v12 = requestCopy;
  v13 = nameCopy;
  v14 = messageCopy;
  dispatch_async(analyticsQueue, v15);
}

void __60__ControlManager_handleReportingRequest_message_clientName___block_invoke(uint64_t a1)
{
  int64 = xpc_dictionary_get_int64(*(a1 + 32), "reportingChange");
  v3 = xpc_dictionary_get_BOOL(*(a1 + 32), "reportingSend");
  v4 = xpc_dictionary_get_BOOL(*(a1 + 32), "reportingClear");
  v5 = objc_opt_new();
  if (int64)
  {
    v6 = [*(a1 + 40) analytics];
    v7 = [v6 reportingLevel];

    v8 = [*(a1 + 40) analytics];
    [v8 changeReportingLevel:int64];

    v9 = [*(a1 + 40) analytics];
    v10 = [v9 reportingLevel];

    [v5 appendFormat:@" change: %lld", int64];
    if (v7 == v10)
    {
      if (v7 == int64)
      {
        [v5 appendFormat:@" (level: %lld)", int64, v15];
      }
    }

    else
    {
      [v5 appendFormat:@" (level: %lld -> %lld)", v7, v10];
    }
  }

  if (v3)
  {
    v11 = [*(a1 + 40) analytics];
    [v11 submitAllEvents];

    [v5 appendFormat:@"  send: YES"];
  }

  if (v4)
  {
    v12 = [*(a1 + 40) analytics];
    [v12 removeAllEvents];

    [v5 appendFormat:@"  clear: YES"];
  }

  v13 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 48);
    *buf = 138543618;
    v17 = v14;
    v18 = 2114;
    v19 = v5;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "client: %{public}@ requested reporting %{public}@", buf, 0x16u);
  }

  sendClientResponse(*(a1 + 56), *(a1 + 32), 0);
}

- (void)handleClientConnection:(id)connection on:(id)on
{
  connectionCopy = connection;
  onCopy = on;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __44__ControlManager_handleClientConnection_on___block_invoke;
  v9[3] = &unk_4B54E8;
  v9[4] = self;
  v8 = connectionCopy;
  v10 = v8;
  xpc_connection_set_event_handler(v8, v9);
  if (onCopy)
  {
    xpc_connection_set_target_queue(v8, onCopy);
  }

  xpc_connection_activate(v8);
}

void __44__ControlManager_handleClientConnection_on___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  context = objc_autoreleasePoolPush();
  type = xpc_get_type(v2);
  if (type == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v2, "clientName");
    if (string)
    {
      v7 = [NSString stringWithUTF8String:string];
    }

    else
    {
      v7 = 0;
    }

    uint64 = xpc_dictionary_get_uint64(v2, "messageAction");
    v10 = _MADLog(@"V2Control");
    spid = os_signpost_id_generate(v10);

    v11 = _MADLog(@"V2Control");
    v12 = v11;
    v173 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 134349056;
      *&buf[4] = mach_continuous_time();
      _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ClientRequest", "%{public, signpost.description:begin_time}llu  enableTelemetry=YES ", buf, 0xCu);
    }

    v13 = xpc_dictionary_get_string(v2, "AssetType");
    if (v13)
    {
      v14 = [NSString stringWithUTF8String:v13];
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 32) isCommandRequiringForcedSoftwareUpdateType:?])
    {
      if (v14 && ([(__CFString *)v14 isEqualToString:@"com.apple.MobileAsset.SoftwareUpdate"]& 1) == 0)
      {
        v15 = _MADLog(@"V2");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          *&buf[4] = v7;
          *&buf[12] = 2114;
          *&buf[14] = v14;
          *&buf[22] = 2114;
          *&buf[24] = @"com.apple.MobileAsset.SoftwareUpdate";
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ provided asset type %{public}@ when %{public}@ was required", buf, 0x20u);
        }
      }

      v14 = @"com.apple.MobileAsset.SoftwareUpdate";
    }

    if ((uint64 & 0xFFFFFFFD) == 0x18)
    {
      v16 = extractorDecodeClasses();
      v187 = getObjectFromMessageLogIfDesired(v2, "purgeAssetTypeListLength", "purgeAssetTypeList", v16, 0);

      if (v187)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v187;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "purging all asset types in list: %{public}@", buf, 0xCu);
          }

          v18 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = stringWithoutNewlines(v187);
            v20 = stringForMAXpcCommand(uint64);
            *buf = 138544130;
            *&buf[4] = v19;
            *&buf[12] = 2114;
            *&buf[14] = v7;
            *&buf[22] = 2048;
            *&buf[24] = uint64;
            v215 = 2114;
            v216 = v20;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "assetTypes: %{public}@ client: %{public}@, command: %lld (%{public}@)", buf, 0x2Au);
          }

          v21 = 0;
          goto LABEL_43;
        }
      }

      v22 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "purging all asset types", buf, 2u);
      }
    }

    v18 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v23 = stringWithoutNewlines(v14);
      v24 = stringForMAXpcCommand(uint64);
      *buf = 138544130;
      *&buf[4] = v23;
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2048;
      *&buf[24] = uint64;
      v215 = 2114;
      v216 = v24;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "assetType: %{public}@ client: %{public}@, command: %lld (%{public}@)", buf, 0x2Au);
    }

    v187 = 0;
    v21 = 1;
LABEL_43:

    IsInternalAllowed = _MAPreferencesIsInternalAllowed();
    v210 = 0;
    v211 = &v210;
    v212 = 0x2020000000;
    v213 = 0;
    v206 = 0;
    v207 = &v206;
    v208 = 0x2020000000;
    v209 = 0;
    v204 = &v210;
    length = 0;
    v201[0] = _NSConcreteStackBlock;
    v201[1] = 3221225472;
    v201[2] = __44__ControlManager_handleClientConnection_on___block_invoke_1848;
    v201[3] = &unk_4B54C0;
    v202 = *(a1 + 40);
    v26 = v2;
    v203 = v26;
    v183 = objc_retainBlock(v201);
    v195[0] = _NSConcreteStackBlock;
    v195[1] = 3221225472;
    v195[2] = __44__ControlManager_handleClientConnection_on___block_invoke_1849;
    v195[3] = &unk_4B2F38;
    v195[4] = *(a1 + 32);
    v189 = v14;
    v196 = v189;
    original = v26;
    v197 = original;
    v185 = v7;
    v198 = v185;
    v199 = *(a1 + 40);
    v200 = &v206;
    block = objc_retainBlock(v195);
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    if (v21)
    {
      v29 = v189;
      if (([v27 checkEntitlementAndRespondIfErrorForConnection:v28 usingMessage:original forAssetType:v189 withCommand:uint64] & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (([v27 checkEntitlementAndRespondIfErrorForConnection:v28 usingMessage:original forAssetTypes:v187 withCommand:uint64] & 1) == 0)
    {

      v29 = 0;
LABEL_49:
      v189 = v29;
      switch(uint64)
      {
        case 1u:
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v36 = _os_activity_create(&dword_0, "ControlManager:QueryAssetType", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v36, &state);

          v37 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ issued query command for %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) handleQueryRequest:v29 clientName:v185 connection:*(a1 + 40) message:original];
          goto LABEL_80;
        case 2u:
          *buf = 0;
          *&buf[8] = 0;
          v67 = _os_activity_create(&dword_0, "ControlManager:DownloadCatalog", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v67, buf);

          if (!v29)
          {
            goto LABEL_202;
          }

          v68 = getDownloadManager();
          [v68 registerXmlDownloadJob:v29 using:*(a1 + 40) with:original clientName:v185];

          goto LABEL_203;
        case 3u:
          *buf = 0;
          *&buf[8] = 0;
          v62 = _os_activity_create(&dword_0, "ControlManager:DownloadAsset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v62, buf);

          if (v29)
          {
            if (isSystemAppType(v29) && ([*(a1 + 32) isAllowlistedForCommand:uint64] & 1) == 0)
            {
              *(v207 + 24) = 1;
            }

            dispatch_async(*(*(a1 + 32) + 40), block);
          }

          else
          {
LABEL_202:
            sendClientResponse(*(a1 + 40), original, 19);
          }

          goto LABEL_203;
        case 4u:
          v64 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "Query for existing NSURL tasks", buf, 2u);
          }

          v65 = xpc_dictionary_get_BOOL(original, "NSUrlState");
          *(v211 + 24) = v65;
          v66 = getDownloadManager();
          [v66 getCurrentInflightDownloads:v183];

          goto LABEL_251;
        case 5u:
          *buf = 0;
          *&buf[8] = 0;
          v57 = _os_activity_create(&dword_0, "ControlManager:PurgeAsset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v57, buf);

          [*(a1 + 32) removeAssetDir:original assetType:v29 clientName:v185 using:*(a1 + 40)];
          goto LABEL_203;
        case 6u:
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v80 = _os_activity_create(&dword_0, "ControlManager:CancelDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v80, &state);

          v81 = xpc_dictionary_get_string(original, "AssetId");
          v82 = xpc_dictionary_get_string(original, "Purpose");
          if (v81)
          {
            v81 = [NSString stringWithUTF8String:v81];
          }

          if (v82)
          {
            v180 = [NSString stringWithUTF8String:v82];
          }

          else
          {
            v180 = 0;
          }

          v174 = v81;
          if (!v81)
          {
            v130 = _MADLog(@"V2");
            if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_307;
            }

            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            *&buf[22] = 2114;
            *&buf[24] = 0;
            v131 = "Cancel for: %{public}@ of %{public}@ id: %{public}@ failed due to nil asset ID";
            goto LABEL_306;
          }

          if (!isWellFormedAssetId(v81))
          {
            v130 = _MADLog(@"V2");
            if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_307;
            }

            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            *&buf[22] = 2114;
            *&buf[24] = v81;
            v131 = "Cancel for: %{public}@ of %{public}@ id: %{public}@ failed due to asset ID that is not well formed";
            goto LABEL_306;
          }

          if (isWellFormedPurpose(v180))
          {
            [*(a1 + 32) cancelDownload:original using:*(a1 + 40) for:v185 assetType:v29 purpose:v180 withExtension:v81];
            goto LABEL_308;
          }

          v130 = _MADLog(@"V2");
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            *&buf[22] = 2114;
            *&buf[24] = v81;
            v131 = "Cancel for: %{public}@ of %{public}@ id: %{public}@ failed due to purpose that is not well formed";
LABEL_306:
            _os_log_impl(&dword_0, v130, OS_LOG_TYPE_ERROR, v131, buf, 0x20u);
          }

LABEL_307:

          sendClientResponse(*(a1 + 40), original, 4);
LABEL_308:
          os_activity_scope_leave(&state);
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_208;
        case 7u:
          createExtension(*(a1 + 40), original, v29);
          goto LABEL_251;
        case 8u:
          [*(a1 + 32) getStateOfAsset:*(a1 + 40) incoming:original assetType:v29];
          goto LABEL_251;
        case 9u:
          v89 = xpc_dictionary_get_string(original, "pallasUrl");
          if (xpc_dictionary_get_BOOL(original, "serverOverrideClear"))
          {
            v90 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v185;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting pallas url to nil for asset type '%{public}@'", buf, 0x16u);
            }

            v32 = 0;
LABEL_140:

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v91 = @"PallasUrlOverrideV2";
              if (([(__CFString *)v29 isEqualToString:&stru_4BD3F0]& 1) == 0)
              {
                v91 = [NSString stringWithFormat:@"%@-%@", @"PallasUrlOverrideV2", v29];
              }
            }

            else
            {
              v91 = @"PallasUrlOverrideV2";
            }

            [*(a1 + 32) setPreferenceKeyAsync:v91 andValue:v32 allowNilToClear:1 replyUsing:*(a1 + 40) and:original];

            v180 = 0;
            v181 = 0;
            v178 = 0;
            v179 = 0;
            v176 = 0;
            v177 = 0;
            v174 = 0;
            v175 = 0;
            v30 = 0;
            v31 = 0;
            goto LABEL_252;
          }

          if (v89)
          {
            v32 = [NSString stringWithUTF8String:v89];
            if (v32)
            {
              v90 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543874;
                *&buf[4] = v185;
                *&buf[12] = 2114;
                *&buf[14] = v32;
                *&buf[22] = 2114;
                *&buf[24] = v29;
                _os_log_impl(&dword_0, v90, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting pallas V2 url to '%{public}@' for asset type '%{public}@'", buf, 0x20u);
              }

              goto LABEL_140;
            }

            v158 = _MADLog(@"V2");
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              v164 = *v89;
              *buf = 138543874;
              *&buf[4] = v185;
              *&buf[12] = 1024;
              *&buf[14] = v164;
              *&buf[18] = 2114;
              *&buf[20] = v29;
              v159 = "%{public}@ Setting pallas V2 url to %0x for asset type '%{public}@' failed as the url cannot convert to string";
              v160 = v158;
              v161 = 28;
              goto LABEL_319;
            }
          }

          else
          {
            v158 = _MADLog(@"V2");
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v185;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              v159 = "%{public}@ Setting pallas V2 url to nil failed for asset type '%{public}@' as it must be cleared explicitly by the framework";
              v160 = v158;
              v161 = 22;
LABEL_319:
              _os_log_impl(&dword_0, v160, OS_LOG_TYPE_ERROR, v159, buf, v161);
            }
          }

          sendClientResponse(*(a1 + 40), original, 2);
          goto LABEL_251;
        case 0xAu:
          v59 = xpc_dictionary_get_string(original, "pallasAudience");
          if (v59)
          {
            v34 = [NSString stringWithUTF8String:v59];
            if (!v34)
            {
              v147 = _MADLog(@"V2");
              if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
              {
                v148 = *v59;
                *buf = 138543618;
                *&buf[4] = v185;
                *&buf[12] = 1024;
                *&buf[14] = v148;
                _os_log_impl(&dword_0, v147, OS_LOG_TYPE_ERROR, "%{public}@ Setting pallas audience to %0x... cannot convert to string.", buf, 0x12u);
              }

              sendClientResponse(*(a1 + 40), original, 2);
              v172 = 0;
              v180 = 0;
              v181 = 0;
              v178 = 0;
              v179 = 0;
              v176 = 0;
              v177 = 0;
              v174 = 0;
              v175 = 0;
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              v34 = 0;
              reply = 0;
              goto LABEL_255;
            }

            v60 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              *&buf[4] = v185;
              *&buf[12] = 2114;
              *&buf[14] = v34;
              *&buf[22] = 2114;
              *&buf[24] = v29;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting Pallas audience to '%{public}@' for asset type '%{public}@'", buf, 0x20u);
            }
          }

          else
          {
            v60 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v185;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting Pallas audience to (null) for asset type '%{public}@'", buf, 0x16u);
            }

            v34 = 0;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v123 = @"MobileAssetAssetAudience";
            if (([(__CFString *)v29 isEqualToString:&stru_4BD3F0]& 1) == 0)
            {
              v123 = [NSString stringWithFormat:@"%@-%@", @"MobileAssetAssetAudience", v29];
            }
          }

          else
          {
            v123 = @"MobileAssetAssetAudience";
          }

          [*(a1 + 32) setPreferenceKeyAsync:v123 andValue:v34 allowNilToClear:1 replyUsing:*(a1 + 40) and:original];

          v180 = 0;
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v174 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          goto LABEL_254;
        case 0xBu:
          v56 = _MADLog(@"V2");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v88 = stringForMAXpcCommand(0xBu);
            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2048;
            *&buf[14] = uint64;
            *&buf[22] = 2114;
            *&buf[24] = v88;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "received command from client %{public}@ that should be handled by MA XPC layer: %lld (%{public}@)", buf, 0x20u);
          }

          goto LABEL_135;
        case 0xCu:
          v56 = _MADLog(@"V2");
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v185;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "received MA_DUMP_CODE_COVERAGE [deprecated] from client %{public}@", buf, 0xCu);
          }

LABEL_135:

          sendClientResponse(*(a1 + 40), original, 5);
          goto LABEL_251;
        case 0xDu:
          [*(a1 + 32) handleServerUrlOverride:v29 message:original client:*(a1 + 40) clientName:v185];
          goto LABEL_251;
        case 0xEu:
          *buf = 0;
          *&buf[8] = 0;
          v83 = _os_activity_create(&dword_0, "ControlManager:RepairState", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v83, buf);

          if ([*(a1 + 32) beforeFirstUnlock])
          {
            v84 = _MADLog(@"V2Control");
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(state.opaque[0]) = 0;
              v85 = 2;
              _os_log_impl(&dword_0, v84, OS_LOG_TYPE_DEFAULT, "{handleClientConnection} [MA_REPAIR_STATE] Not able to attempt to repair NSURLSession state since device is before first-unlock", &state, 2u);
            }

            else
            {
              v85 = 2;
            }
          }

          else
          {
            v84 = getDownloadManager();
            [v84 queryNSUrlSessiondAndUpdateState];
            v85 = 0;
          }

          sendClientResponse(*(a1 + 40), original, v85);
          goto LABEL_250;
        case 0xFu:
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v49 = _os_activity_create(&dword_0, "ControlManager:MigrateAssets", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v49, &state);

          v50 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v29;
            *&buf[12] = 2114;
            *&buf[14] = v185;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "Migrating assets for %{public}@ and %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) handleMigrateAssetsRequest:v29 using:*(a1 + 40) and:original];
LABEL_80:
          p_state = &state;
          goto LABEL_204;
        case 0x10u:
          v63 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v63, OS_LOG_TYPE_DEFAULT, "%{public}@ issued clean v1 for %{public}@", buf, 0x16u);
          }

          cleanV1Assets(*(a1 + 40), original, v29);
          goto LABEL_251;
        case 0x11u:
          v47 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v185;
            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%{public}@ issued space check", buf, 0xCu);
          }

          checkSpaceForDownload(*(a1 + 40), original);
          goto LABEL_251;
        case 0x12u:
          v74 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v74, OS_LOG_TYPE_DEFAULT, "%{public}@ issued query for installed asset ids for %{public}@", buf, 0x16u);
          }

          handleGetInstalledAssetIds(v29, v185, *(a1 + 40), original);
          goto LABEL_251;
        case 0x13u:
          *buf = 0;
          *&buf[8] = 0;
          v86 = _os_activity_create(&dword_0, "ControlManager:ConfigDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v86, buf);

          v87 = getDownloadManager();
          [v87 configDownload:v29 clientName:v185 using:*(a1 + 40) with:original];

          goto LABEL_250;
        case 0x14u:
          v105 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v105, OS_LOG_TYPE_DEFAULT, "%{public}@ request asset audience for asset type %{public}@", buf, 0x16u);
          }

          reply = xpc_dictionary_create_reply(original);
          _MAPreferencesSync(@"handleClientConnection", @"MA_GET_PALLAS_AUDIENCE");
          v106 = getDownloadManager();
          v194 = 0;
          v31 = [v106 newAssetAudience:IsInternalAllowed assetType:v29 logMessage:&v194];
          v181 = v194;

          if (v31)
          {
            v107 = v31;
            xpc_dictionary_set_string(reply, "pallasAudience", [v31 UTF8String]);
            v108 = 0;
          }

          else
          {
            v108 = 2;
          }

          v134 = _MADLog(@"V2Control");
          v171 = v108;
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138544130;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v31;
            *&buf[22] = 2114;
            *&buf[24] = v29;
            v215 = 2114;
            v216 = v181;
            _os_log_impl(&dword_0, v134, OS_LOG_TYPE_DEFAULT, "%{public}@ found Pallas asset audience %{public}@ for asset type %{public}@\n%{public}@", buf, 0x2Au);
          }

          sendReply(*(a1 + 40), reply, v108);
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v175 = 0;
          v30 = 0;
          goto LABEL_243;
        case 0x15u:
          [*(a1 + 32) handleUpdateClientUsage:v29 using:*(a1 + 40) and:original clientName:v185];
          goto LABEL_251;
        case 0x16u:
          [*(a1 + 32) dumpClientUsage:v29 using:*(a1 + 40) and:original clientName:v185];
          goto LABEL_251;
        case 0x17u:
          *buf = 0;
          *&buf[8] = 0;
          v104 = _os_activity_create(&dword_0, "ControlManager:GarbageCollect", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v104, buf);

          [*(a1 + 32) handleGarbageCollect:*(a1 + 40) and:original];
          goto LABEL_250;
        case 0x18u:
          *buf = 0;
          *&buf[8] = 0;
          v111 = _os_activity_create(&dword_0, "ControlManager:PurgeAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v111, buf);

          [*(a1 + 32) purgeAll:*(a1 + 40) and:original assetTypesList:v187 clientName:v185];
          goto LABEL_250;
        case 0x19u:
          [*(a1 + 32) overrideGCValue:v29 using:*(a1 + 40) and:original clientName:v185];
          goto LABEL_251;
        case 0x1Au:
          *buf = 0;
          *&buf[8] = 0;
          v61 = _os_activity_create(&dword_0, "ControlManager:PurgeCatalogs", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v61, buf);

          [*(a1 + 32) purgeCatalogs:*(a1 + 40) and:original assetTypesList:v187 clientName:v185];
          goto LABEL_250;
        case 0x1Bu:
          v114 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v114, OS_LOG_TYPE_DEFAULT, "%{public}@ issued load command for %{public}@", buf, 0x16u);
          }

          [*(a1 + 32) handleLoadRequest:v29 clientName:v185 connection:*(a1 + 40) message:original];
          goto LABEL_251;
        case 0x1Cu:
          state.opaque[0] = 0;
          state.opaque[1] = 0;
          v44 = _os_activity_create(&dword_0, "ControlManager:CancelCatalogDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v44, &state);

          v45 = xpc_dictionary_get_string(original, "Purpose");
          if (v45)
          {
            v46 = [NSString stringWithUTF8String:v45];
          }

          else
          {
            v46 = 0;
          }

          if (isWellFormedPurpose(v46))
          {
            [*(a1 + 32) cancelDownload:original using:*(a1 + 40) for:v185 assetType:v29 purpose:v46 withExtension:@"xml"];
          }

          else
          {
            v125 = _MADLog(@"V2");
            if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *&buf[4] = v185;
              *&buf[12] = 2114;
              *&buf[14] = v29;
              _os_log_impl(&dword_0, v125, OS_LOG_TYPE_ERROR, "Cancel for: %{public}@ of %{public}@ catalog failed due to purpose that is not well formed", buf, 0x16u);
            }

            sendClientResponse(*(a1 + 40), original, 4);
          }

          v180 = v46;
          os_activity_scope_leave(&state);
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_207;
        case 0x1Du:
          *buf = 0;
          *&buf[8] = 0;
          v112 = _os_activity_create(&dword_0, "ControlManager:CancelPMVDownload", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v112, buf);

          [*(a1 + 32) cancelDownload:original using:*(a1 + 40) for:v185 assetType:v29 purpose:0 withExtension:@"pmv"];
          goto LABEL_203;
        case 0x1Eu:
          *buf = 0;
          *&buf[8] = 0;
          v113 = _os_activity_create(&dword_0, "ControlManager:DownloadPMV", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v113, buf);

          [*(a1 + 32) getProductMarketingVersions:*(a1 + 40) and:original clientName:v185 assetType:v29];
          goto LABEL_203;
        case 0x1Fu:
          *buf = 0;
          *&buf[8] = 0;
          v92 = _os_activity_create(&dword_0, "ControlManager:QueryPMV", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v92, buf);

          [*(a1 + 32) handlePmvRequest:v29 clientName:v185 connection:*(a1 + 40) message:original];
LABEL_203:
          p_state = buf;
LABEL_204:
          os_activity_scope_leave(p_state);
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          goto LABEL_205;
        case 0x20u:
          v69 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%{public}@ requested if Pallas is enabled for asset type %{public}@", buf, 0x16u);
          }

          _MAPreferencesSync(@"handleClientConnection", @"MA_GET_PALLAS_ENABLED");
          v70 = getDownloadManager();
          v71 = [v70 getPallasEnabledForAssetType:v29];

          v72 = xpc_dictionary_create_reply(original);
          reply = v72;
          if (v72)
          {
            xpc_dictionary_set_BOOL(v72, "pallasEnabled", v71);
            v73 = 0;
          }

          else
          {
            v73 = 2;
          }

          v132 = _MADLog(@"V2Control");
          v171 = v73;
          if (os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT))
          {
            v133 = @"NO";
            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            if (v71)
            {
              v133 = @"YES";
            }

            *&buf[14] = v133;
            *&buf[22] = 2114;
            *&buf[24] = v29;
            _os_log_impl(&dword_0, v132, OS_LOG_TYPE_DEFAULT, "%{public}@ found Pallas enabled %{public}@ for asset type %{public}@", buf, 0x20u);
          }

          sendReply(*(a1 + 40), reply, v73);
          v180 = 0;
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v174 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          goto LABEL_300;
        case 0x21u:
          v93 = xpc_dictionary_get_BOOL(original, "pallasEnabled");
          v94 = @"off";
          if (v93)
          {
            v94 = @"on";
          }

          v33 = v94;
          v95 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v33;
            *&buf[22] = 2114;
            *&buf[24] = v29;
            _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting Pallas enabled to %{public}@ for asset type %{public}@", buf, 0x20u);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v96 = @"EnableLiveAssetServerV2";
            if (([(__CFString *)v29 isEqualToString:&stru_4BD3F0]& 1) == 0)
            {
              v96 = [NSString stringWithFormat:@"%@-%@", @"EnableLiveAssetServerV2", v29];
            }
          }

          else
          {
            v96 = @"EnableLiveAssetServerV2";
          }

          [*(a1 + 32) setPreferenceKeyAsync:v96 andValue:v33 allowNilToClear:0 replyUsing:*(a1 + 40) and:original];

          v180 = 0;
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v174 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          goto LABEL_253;
        case 0x22u:
          v52 = xpc_dictionary_get_string(original, "tokenPath");
          if (v52)
          {
            v53 = [NSString stringWithUTF8String:v52];
            v54 = v53;
            if (v53)
            {
              if (isWellFormedTokenFileName(v53))
              {
                v55 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *&buf[4] = v54;
                  _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "Attempting to set tokenPath to %{public}@", buf, 0xCu);
                }

LABEL_191:

                [*(a1 + 32) setPreferenceKeyAsync:@"MobileAssetTokenFile" andValue:v54 allowNilToClear:1 replyUsing:*(a1 + 40) and:original];
                v122 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v122, OS_LOG_TYPE_DEFAULT, "Done setting tokenPath", buf, 2u);
                }

                goto LABEL_294;
              }

              v156 = _MADLog(@"V2");
              if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v185;
                _os_log_impl(&dword_0, v156, OS_LOG_TYPE_ERROR, "%{public}@ Token file name is not well formed and cannot be set", buf, 0xCu);
              }

              sendClientResponse(*(a1 + 40), original, 5);
            }

            else
            {
              v146 = _MADLog(@"V2");
              if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v185;
                _os_log_impl(&dword_0, v146, OS_LOG_TYPE_ERROR, "%{public}@ Attempting to set tokenPath, but cannot convert argument to string", buf, 0xCu);
              }

              sendClientResponse(*(a1 + 40), original, 2);
              v54 = 0;
            }

LABEL_294:

LABEL_251:
            v180 = 0;
            v181 = 0;
            v178 = 0;
            v179 = 0;
            v176 = 0;
            v177 = 0;
            v174 = 0;
            v175 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0;
LABEL_252:
            v33 = 0;
LABEL_253:
            v34 = 0;
LABEL_254:
            reply = 0;
            v172 = 1;
LABEL_255:
            v171 = 4;
LABEL_256:
            if (v29)
            {
              goto LABEL_257;
            }

            goto LABEL_281;
          }

          v55 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "Attempting to clear previously set tokenPath", buf, 2u);
          }

          v54 = 0;
          goto LABEL_191;
        case 0x23u:
          [*(a1 + 32) handleReportingRequest:*(a1 + 40) message:original clientName:v185];
          goto LABEL_251;
        case 0x24u:
          [*(a1 + 32) handleGetServerUrl:v29 message:original client:*(a1 + 40) clientName:v185];
          goto LABEL_251;
        case 0x25u:
          [*(a1 + 32) handleGetAllowNonUserInitiated:*(a1 + 40) message:original clientName:v185];
          goto LABEL_251;
        case 0x26u:
          [*(a1 + 32) handleEnsureDataVault:v29 message:original client:*(a1 + 40) clientName:v185];
          goto LABEL_251;
        case 0x27u:
          [*(a1 + 32) handleDataMigrator:*(a1 + 40) message:original clientName:v185];
          goto LABEL_251;
        case 0x28u:
          [*(a1 + 32) handleGetMABrainInfo:*(a1 + 40) message:original clientName:v185];
          goto LABEL_251;
        case 0x29u:
          *buf = 0;
          *&buf[8] = 0;
          v58 = _os_activity_create(&dword_0, "ControlManager:UpdateMABrain", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v58, buf);

          [*(a1 + 32) handleUpdateMABrain:*(a1 + 40) message:original clientName:v185];
          goto LABEL_250;
        case 0x2Au:
          *buf = 0;
          *&buf[8] = 0;
          v75 = _os_activity_create(&dword_0, "ControlManager:InstallAsset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v75, buf);

          v76 = xpc_dictionary_get_string(original, "MobileAssetInstallAssetPath");
          if (v76)
          {
            v77 = [NSString stringWithUTF8String:v76];
            if (v77)
            {
              v78 = +[NSFileManager defaultManager];
              v79 = [v78 fileExistsAtPath:v77];

              if (v79)
              {
                v30 = v77;
LABEL_221:
                v126 = [*(a1 + 32) handleInstallAsset:v30 forType:v29];
                sendClientResponse(*(a1 + 40), original, v126);
                goto LABEL_299;
              }

              v157 = _MADLog(@"V2");
              if (os_log_type_enabled(v157, OS_LOG_TYPE_ERROR))
              {
                LODWORD(state.opaque[0]) = 138543362;
                *(state.opaque + 4) = v77;
                _os_log_impl(&dword_0, v157, OS_LOG_TYPE_ERROR, "Unable to locate directory: %{public}@", &state, 0xCu);
              }

              sendClientResponse(*(a1 + 40), original, 5);
              v30 = v77;
            }

            else
            {
              v149 = _MADLog(@"V2");
              if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
              {
                LODWORD(state.opaque[0]) = 136446210;
                *(state.opaque + 4) = v76;
                _os_log_impl(&dword_0, v149, OS_LOG_TYPE_ERROR, "Failed to read directory path: %{public}s", &state, 0xCu);
              }

              sendClientResponse(*(a1 + 40), original, 2);
              v30 = 0;
            }

            v126 = &dword_4;
LABEL_299:
            v171 = v126;
            os_activity_scope_leave(buf);
            v180 = 0;
            v181 = 0;
            v178 = 0;
            v179 = 0;
            v176 = 0;
            v177 = 0;
            v174 = 0;
            v175 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 0;
            v34 = 0;
            reply = 0;
LABEL_300:
            v172 = 1;
            if (v29)
            {
LABEL_257:
              v135 = _MADLog(@"V2Control");
              v136 = v135;
              if (v173 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v135))
              {
                v137 = mach_continuous_time();
                v138 = v29;
                v139 = [(__CFString *)v29 UTF8String];
                v140 = v185;
                v141 = [v185 UTF8String];
                *buf = 134350082;
                *&buf[4] = v137;
                *&buf[12] = 2050;
                *&buf[14] = v171;
                *&buf[22] = 2050;
                *&buf[24] = uint64;
                v215 = 2082;
                v216 = v139;
                v217 = 2082;
                v218 = v141;
                v142 = "%{public, signpost.description:end_time}llu Result=%{public, signpost.telemetry:number1,name=Result}lld Request=%{public, signpost.telemetry:number2,name=Request}lldAssetType=%{public, signpost.telemetry:string1,name=AssetType}sClient=%{public, signpost.telemetry:string2,name=Client}s enableTelemetry=YES ";
                v143 = v136;
                v144 = spid;
                v145 = 52;
LABEL_284:
                _os_signpost_emit_with_name_impl(&dword_0, v143, OS_SIGNPOST_INTERVAL_END, v144, "ClientRequest", v142, buf, v145);
                goto LABEL_285;
              }

              goto LABEL_285;
            }

LABEL_281:
            v150 = _MADLog(@"V2Control");
            v136 = v150;
            if (v173 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v150))
            {
              v151 = mach_continuous_time();
              v152 = v185;
              v153 = [v185 UTF8String];
              *buf = 134349826;
              *&buf[4] = v151;
              *&buf[12] = 2050;
              *&buf[14] = v171;
              *&buf[22] = 2050;
              *&buf[24] = uint64;
              v215 = 2082;
              v216 = v153;
              v142 = "%{public, signpost.description:end_time}llu Result=%{public, signpost.telemetry:number1,name=Result}lld Request=%{public, signpost.telemetry:number2,name=Request}lldClient=%{public, signpost.telemetry:string1,name=Client}s enableTelemetry=YES ";
              v143 = v136;
              v144 = spid;
              v145 = 42;
              goto LABEL_284;
            }

LABEL_285:

            if ((v172 & 1) == 0)
            {
              v154 = _MADLog(@"V2");
              if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
              {
                v155 = stringForMAXpcCommand(uint64);
                *buf = 134218498;
                *&buf[4] = uint64;
                *&buf[12] = 2114;
                *&buf[14] = v155;
                *&buf[22] = 2114;
                *&buf[24] = v185;
                _os_log_impl(&dword_0, v154, OS_LOG_TYPE_ERROR, "Unknown Command: %lld (%{public}@) from client: %{public}@", buf, 0x20u);
              }

              sendClientResponse(*(a1 + 40), original, 5);
            }

            goto LABEL_289;
          }

          v30 = 0;
          goto LABEL_221;
        case 0x2Bu:
          v109 = xpc_dictionary_get_string(original, "tokenValue");
          if (v109)
          {
            v110 = [NSString stringWithUTF8String:v109];
          }

          else
          {
            v110 = 0;
          }

          [*(a1 + 32) setPreferenceKeyAsync:@"MobileAssetTokenOverride" andValue:v110 allowNilToClear:1 replyUsing:*(a1 + 40) and:original];
          v124 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v124, OS_LOG_TYPE_DEFAULT, "Done setting tokenValue", buf, 2u);
          }

          goto LABEL_251;
        case 0x2Cu:
          v38 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v29;
            _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ requested Pallas URL for asset type %{public}@", buf, 0x16u);
          }

          v39 = [DownloadManager getPallasUrl:IsInternalAllowed assetType:v29];
          reply = xpc_dictionary_create_reply(original);
          v40 = 2;
          if (reply && v39)
          {
            v41 = [v39 absoluteString];
            v42 = v41;
            xpc_dictionary_set_string(reply, "pallasUrl", [v41 UTF8String]);

            v40 = 0;
          }

          v43 = _MADLog(@"V2Control");
          v171 = v40;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            *&buf[4] = v185;
            *&buf[12] = 2114;
            *&buf[14] = v39;
            *&buf[22] = 2114;
            *&buf[24] = v29;
            _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ found Pallas URL %{public}@ for asset type %{public}@", buf, 0x20u);
          }

          sendReply(*(a1 + 40), reply, v40);
          v181 = 0;
          v178 = 0;
          v179 = 0;
          v176 = 0;
          v177 = 0;
          v175 = 0;
          v30 = 0;
          v31 = 0;
LABEL_243:
          v180 = 0;
          v174 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v172 = 1;
          goto LABEL_256;
        case 0x2Du:
          *buf = 0;
          *&buf[8] = 0;
          v48 = _os_activity_create(&dword_0, "ControlManager:SecureMABundle", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v48, buf);

          [*(a1 + 32) handleSecureMABundleCommand:*(a1 + 40) message:original clientName:v185];
LABEL_250:
          os_activity_scope_leave(buf);
          goto LABEL_251;
        case 0x2Eu:
          data = xpc_dictionary_get_data(original, [@"MAPreferences" UTF8String], &length);
          if (data)
          {
            v98 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
            if (v98)
            {
              v193 = 0;
              v99 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v98 error:&v193];
              v100 = v193;
              v177 = v98;
              v178 = v99;
              if (v100)
              {
                v101 = v100;
                v102 = _MADLog(@"V2");
                v179 = v101;
                if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
                {
                  v103 = [v101 description];
                  *buf = 138543362;
                  *&buf[4] = v103;
                  _os_log_impl(&dword_0, v102, OS_LOG_TYPE_ERROR, "Unable to initialize keyed unarchiver, error: %{public}@", buf, 0xCu);
                }

                sendClientResponse(*(a1 + 40), original, 2);
LABEL_178:
                v172 = 0;
                v181 = 0;
LABEL_179:
                v176 = 0;
LABEL_180:
                v175 = 0;
                goto LABEL_279;
              }

              if (!v99)
              {
                v165 = _MADLog(@"V2");
                if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v165, OS_LOG_TYPE_ERROR, "Keyed archive is nil, skipping.", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
LABEL_327:
                v172 = 0;
                v181 = 0;
                v179 = 0;
LABEL_278:
                v175 = 0;
                v176 = 0;
                v178 = 0;
                goto LABEL_279;
              }

              v162 = [v99 decodePropertyListForKey:NSKeyedArchiveRootObjectKey];
              [v99 finishDecoding];
              if (!v162)
              {
                v167 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v167, OS_LOG_TYPE_DEFAULT, "maPreferences is nil, skipping", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
LABEL_334:
                v172 = 0;
                v181 = 0;
                v179 = 0;
                goto LABEL_179;
              }

              objc_opt_class();
              v175 = v162;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v169 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v169, OS_LOG_TYPE_DEFAULT, "maPreferences is not a dictionary, skipping", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
                v172 = 0;
                v181 = 0;
                v179 = 0;
                v176 = 0;
LABEL_279:
                v30 = 0;
                v31 = 0;
                v180 = 0;
                v174 = 0;
                v32 = 0;
                v33 = 0;
                v34 = 0;
                reply = 0;
                goto LABEL_280;
              }

              [*(a1 + 32) setPreferences:v162 replyUsing:*(a1 + 40) and:original];
              v181 = 0;
              v179 = 0;
              v176 = 0;
LABEL_206:
              v30 = 0;
              v31 = 0;
              v180 = 0;
LABEL_207:
              v174 = 0;
LABEL_208:
              v32 = 0;
              v33 = 0;
              v34 = 0;
              reply = 0;
              v172 = 1;
LABEL_280:
              v171 = 4;
              if (v29)
              {
                goto LABEL_257;
              }

              goto LABEL_281;
            }

            v127 = _MADLog(@"V2Control");
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_276;
            }

            *buf = 0;
            v128 = "data is nil, skipping";
          }

          else
          {
            v127 = _MADLog(@"V2Control");
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_276;
            }

            *buf = 0;
            v128 = "rawData is null skipping";
          }

          _os_log_impl(&dword_0, v127, OS_LOG_TYPE_DEFAULT, v128, buf, 2u);
          goto LABEL_276;
        case 0x2Fu:
          v115 = xpc_dictionary_get_data(original, [@"MAPreferences" UTF8String], &length);
          if (v115)
          {
            v116 = [NSData dataWithBytesNoCopy:v115 length:length freeWhenDone:0];
            if (v116)
            {
              v192 = 0;
              v117 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v116 error:&v192];
              v118 = v192;
              v177 = v116;
              v178 = v117;
              if (v118)
              {
                v119 = v118;
                v120 = _MADLog(@"V2");
                v179 = v119;
                if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                {
                  v121 = [v119 description];
                  *buf = 138543362;
                  *&buf[4] = v121;
                  _os_log_impl(&dword_0, v120, OS_LOG_TYPE_ERROR, "Unable to initialize keyed unarchiver, error: %{public}@", buf, 0xCu);
                }

                sendClientResponse(*(a1 + 40), original, 2);
                goto LABEL_178;
              }

              if (!v117)
              {
                v166 = _MADLog(@"V2");
                if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v166, OS_LOG_TYPE_ERROR, "Keyed archive is nil, skipping.", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
                goto LABEL_327;
              }

              v163 = [v117 decodePropertyListForKey:NSKeyedArchiveRootObjectKey];
              [v117 finishDecoding];
              if (!v163)
              {
                v168 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v168, OS_LOG_TYPE_DEFAULT, "maPreferencesToClear is nil, skipping", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
                goto LABEL_334;
              }

              objc_opt_class();
              v176 = v163;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v170 = _MADLog(@"V2Control");
                if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v170, OS_LOG_TYPE_DEFAULT, "maPreferencesToClear is not a array, skipping", buf, 2u);
                }

                sendClientResponse(*(a1 + 40), original, 2);
                v172 = 0;
                v181 = 0;
                v179 = 0;
                goto LABEL_180;
              }

              [*(a1 + 32) clearPreferences:v163 replyUsing:*(a1 + 40) and:original];
              v181 = 0;
              v179 = 0;
LABEL_205:
              v175 = 0;
              goto LABEL_206;
            }

            v127 = _MADLog(@"V2Control");
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
LABEL_276:

              sendClientResponse(*(a1 + 40), original, 2);
LABEL_277:
              v172 = 0;
              v181 = 0;
              v179 = 0;
              v177 = 0;
              goto LABEL_278;
            }

            *buf = 0;
            v129 = "data is nil, skipping";
          }

          else
          {
            v127 = _MADLog(@"V2Control");
            if (!os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_276;
            }

            *buf = 0;
            v129 = "rawData is null skipping";
          }

          _os_log_impl(&dword_0, v127, OS_LOG_TYPE_DEFAULT, v129, buf, 2u);
          goto LABEL_276;
        default:
          goto LABEL_277;
      }
    }

    v180 = 0;
    v181 = 0;
    v178 = 0;
    v179 = 0;
    v176 = 0;
    v177 = 0;
    v174 = 0;
    v175 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    reply = 0;
LABEL_289:

    _Block_object_dispose(&v206, 8);
    _Block_object_dispose(&v210, 8);

    goto LABEL_290;
  }

  v4 = type;
  if (type != &_xpc_type_error)
  {
    v5 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Unexpected xpc object %{public}@", buf, 0xCu);
    }

LABEL_5:

    goto LABEL_290;
  }

  if (v2 == &_xpc_error_connection_invalid)
  {
    goto LABEL_290;
  }

  if (v2 == &_xpc_error_termination_imminent)
  {
    v5 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Termination imminent", buf, 2u);
    }

    goto LABEL_5;
  }

  v8 = _MADLog(@"V2Control");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v2 == &_xpc_error_connection_interrupted)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Connection interrupted", buf, 2u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Unknown Error", buf, 2u);
  }

  xpc_connection_cancel(*(a1 + 40));
LABEL_290:
  objc_autoreleasePoolPop(context);
}

void __44__ControlManager_handleClientConnection_on___block_invoke_1848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = [v3 count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "the number of tasks is %lu", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = _MADLog(@"V2Control");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v10 taskDescription];
          v13 = [v10 state];
          *buf = 138543618;
          v19 = v12;
          v20 = 2048;
          v21 = v13;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "The task descriptor is: %{public}@, %ld", buf, 0x16u);
        }

        if (*(*(*(a1 + 48) + 8) + 24) == 1)
        {
          [v10 cancel];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }

  sendClientResponse(*(a1 + 32), *(a1 + 40), 0);
}

void __44__ControlManager_handleClientConnection_on___block_invoke_1849(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleClientConnection:downloadBlock} checkAndInitiateDownloadForAssetType...", buf, 2u);
  }

  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) checkAndInitiateDownloadForAssetType:*(a1 + 40) message:*(a1 + 48) forClientName:*(a1 + 56) usingConnection:*(a1 + 64) requiringClientExtractor:*(*(*(a1 + 72) + 8) + 24)];
  objc_autoreleasePoolPop(v3);
  v4 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {handleClientConnection:downloadBlock} ...checkAndInitiateDownloadForAssetType", v5, 2u);
  }
}

- (BOOL)associateFieldsFromRequest:(id)request withCommandTracker:(id)tracker
{
  requestCopy = request;
  trackerCopy = tracker;
  v8 = xpcRequestFieldsRequired([trackerCopy command]);
  v9 = xpcRequestFieldsOptional([trackerCopy command]);
  if (v8)
  {
    v14 = v9;
    v11 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"clientName"];
    if (v11)
    {
      if ((v8 & 0x800) != 0)
      {
        v12 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"messageAction"];
        if (v12)
        {
          v10 = [[MADActivityCommandRequest alloc] initForClient:v11 requestingAction:v12];
          if (v10)
          {
            v15 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"connectionIdentifier"];
            if (v15)
            {
              [v10 associateConnectionIdentifier:v15];
            }

            v16 = [(ControlManager *)self associateRequiredFields:v8 fromRequest:requestCopy toCommandRequest:v10 forCommandTracker:trackerCopy];
            if (!v16)
            {
              v16 = [(ControlManager *)self associateOptionalFields:v14 fromRequest:requestCopy toCommandRequest:v10 forCommandTracker:trackerCopy];
              if (!v16)
              {
                [trackerCopy associateCommandRequest:v10];
                [MADActivityManager noticeForActivity:trackerCopy reason:@"validated client request"];
                v18 = 1;
                goto LABEL_17;
              }
            }

            v13 = v16;
          }

          else
          {
            v13 = @"Unable to allocate CommandRequest";
          }
        }

        else
        {
          v10 = 0;
          v13 = @"Could not determine action (i.e. command name)";
        }
      }

      else
      {
        v10 = 0;
        v12 = 0;
        v13 = @"Action (i.e. command name) should always be required";
      }
    }

    else
    {
      v10 = 0;
      v12 = 0;
      v13 = @"Could not determine client name";
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = @"Client name should always be required";
  }

  v17 = stringForMAOperationResult(5uLL);
  [trackerCopy failureResult:5 ofResultName:v17 forReason:v13];

  [MADActivityManager sendReply:trackerCopy withOperationResult:5];
  v18 = 0;
LABEL_17:

  return v18;
}

- (id)associateRequiredFields:(int64_t)fields fromRequest:(id)request toCommandRequest:(id)commandRequest forCommandTracker:(id)tracker
{
  requestCopy = request;
  commandRequestCopy = commandRequest;
  trackerCopy = tracker;
  v13 = 0;
  length = 0;
  if ((fields & 0x100) != 0)
  {
    v13 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"AssetType"];
    if (v13)
    {
      if ([(ControlManager *)self commandRequiresForcedSoftwareUpdateType:trackerCopy]&& ([(__CFString *)v13 isEqualToString:@"com.apple.MobileAsset.SoftwareUpdate"]& 1) == 0)
      {
        v15 = [[NSString alloc] initWithFormat:@"provided asset type %@ when %@ was required - replaced", v13, @"com.apple.MobileAsset.SoftwareUpdate"];
        [MADActivityManager warningForActivity:trackerCopy fromMethod:@"associateRequiredFields" leaderNote:@"forcedSUAssetType" warning:v15];

        v13 = @"com.apple.MobileAsset.SoftwareUpdate";
      }

      v16 = [(ControlManager *)self checkEntitlement:trackerCopy forAssetType:v13];
      if (v16)
      {
        uint64 = v16;
        goto LABEL_21;
      }

      [commandRequestCopy associateAssetType:v13];
      assetType = [commandRequestCopy assetType];
      [trackerCopy extendLogLeader:@"AssetType" withValue:assetType];
    }

    else
    {
      v24 = [[NSString alloc] initWithFormat:@"Client request missing key:%@", @"AssetType"];
      if (v24)
      {
        uint64 = v24;
        v14 = 0;
        goto LABEL_175;
      }
    }
  }

  if ((fields & 0x2000000) == 0)
  {
    goto LABEL_3;
  }

  fieldsCopy = fields;
  v19 = extractorDecodeClasses();
  v125 = 0;
  v20 = getObjectFromMessageWithFailureReason(requestCopy, "purgeAssetTypeListLength", "purgeAssetTypeList", v19, &v125);
  uint64 = v125;

  if (!v20)
  {
    fields = fieldsCopy;
    if (!uint64)
    {
      goto LABEL_3;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_175;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    v21 = @"Invalid asset type list provided";
    goto LABEL_24;
  }

  if (v13)
  {
    v14 = 0;
    v21 = @"Client request cannot specify both assetType and assetTypesList";
LABEL_24:

LABEL_25:
    uint64 = v21;
    goto LABEL_175;
  }

  [(ControlManager *)self checkEntitlement:trackerCopy forAssetTypes:v20];
  v21 = v39 = self;

  if (v21)
  {
    v14 = 0;
    goto LABEL_25;
  }

  [commandRequestCopy associateAssetTypesList:v20];
  [commandRequestCopy assetTypesList];
  v60 = self = v39;
  v61 = stringWithoutNewlines(v60);
  [trackerCopy extendLogLeader:@"purgeAssetTypeList" withValue:v61];

  fields = fieldsCopy;
LABEL_3:
  if ((fields & 0x10) == 0)
  {
    v14 = 0;
    goto LABEL_29;
  }

  v22 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"AssetId"];
  v14 = v22;
  if (v22)
  {
    if (isWellFormedAssetId(v22))
    {
      [commandRequestCopy associateAssetId:v14];
      assetId = [commandRequestCopy assetId];
      [trackerCopy extendLogLeader:@"AssetId" withValue:assetId];

      goto LABEL_29;
    }

    v100 = [[NSString alloc] initWithFormat:@"Client request with %@:%@ (which is not well formed)", @"AssetId", v14];
  }

  else
  {
    v100 = [[NSString alloc] initWithFormat:@"Client request missing key:%@", @"AssetId", v100];
  }

  uint64 = v100;
  if (v100)
  {
    goto LABEL_175;
  }

LABEL_29:
  if ((fields & 0x10000000000) != 0)
  {
    uint64 = xpc_dictionary_get_uint64(requestCopy, "returnAssetTypes");
    if (uint64 > 6)
    {
      uint64 = [[NSString alloc] initWithFormat:@"Unknown return types [%llu] provided by client", uint64];
      if ((fields & 0x20000000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }

    [commandRequestCopy associateReturnTypes:uint64];
    v28 = stringForMAQueryReturnTypes([commandRequestCopy returnTypes]);
    [trackerCopy extendLogLeader:@"returnAssetTypes" withValue:v28];
  }

  uint64 = 0;
  if ((fields & 0x20000000000) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  if (!uint64 && xpc_dictionary_get_BOOL(requestCopy, "doNotBlockBeforeFirstUnlock"))
  {
    [commandRequestCopy associateDoNotBlockBeforeFirstUnlock:1];
    if ([commandRequestCopy doNotBlockBeforeFirstUnlock])
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    [trackerCopy extendLogLeader:@"doNotBlockBeforeFirstUnlock" withValue:v29];
  }

LABEL_41:
  if ((fields & 0x40000000000) == 0 || uint64)
  {
    if (uint64)
    {
      goto LABEL_58;
    }
  }

  else if (xpc_dictionary_get_BOOL(requestCopy, "doNotBlockOnNetworkStatus"))
  {
    [commandRequestCopy associateDoNotBlockOnNetworkStatus:1];
    if ([commandRequestCopy doNotBlockOnNetworkStatus])
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    [trackerCopy extendLogLeader:@"doNotBlockOnNetworkStatus" withValue:v30];
  }

  if ((fields & 0x10000000000000) == 0)
  {
    goto LABEL_59;
  }

  data = xpc_dictionary_get_data(requestCopy, [@"QueryParams" UTF8String], &length);
  if (data)
  {
    selfCopy = self;
    v111 = v14;
    fieldsCopy2 = fields;
    v32 = trackerCopy;
    v33 = [NSData dataWithBytesNoCopy:data length:length freeWhenDone:0];
    v34 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v33 error:0];
    v35 = queryDecodeClasses();
    v36 = [v34 decodeObjectOfClasses:v35 forKey:NSKeyedArchiveRootObjectKey];

    [v34 finishDecoding];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [commandRequestCopy associateQueryParams:v36];
      queryParams = [commandRequestCopy queryParams];
      v38 = stringWithoutNewlines(queryParams);
      [v32 extendLogLeader:@"QueryParams" withValue:v38];

      uint64 = 0;
    }

    else
    {
      uint64 = @"Invalid query parameters class provided by client (expecting dictionary)";
    }

    trackerCopy = v32;
    self = selfCopy;
    v14 = v111;
    fields = fieldsCopy2;
  }

  else
  {
    uint64 = [[NSString alloc] initWithFormat:@"Client request missing key:%@", @"QueryParams"];
  }

LABEL_58:
  if (uint64)
  {
    goto LABEL_175;
  }

LABEL_59:
  if ((fields & 4) != 0)
  {
    fieldsCopy3 = fields;
    v41 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"RelativeUrlKey"];

    if (v41)
    {
      [commandRequestCopy associateRelativeUrl:v41];
      relativeUrl = [commandRequestCopy relativeUrl];
      [trackerCopy extendLogLeader:@"RelativeUrlKey" withValue:relativeUrl];

      v14 = v41;
    }

    else
    {
      v49 = [[NSString alloc] initWithFormat:@"Client request missing key:%@", @"RelativeUrlKey"];
      v14 = 0;
      if (v49)
      {
        goto LABEL_100;
      }
    }

    fields = fieldsCopy3;
  }

  selfCopy2 = self;
  v112 = v14;
  if ((fields & 0x200000) != 0)
  {
    fieldsCopy4 = fields;
    v45 = getDownloadManager();
    downloadManagerDecodeClasses = [v45 downloadManagerDecodeClasses];
    v124 = 0;
    v47 = getObjectFromMessageWithFailureReason(requestCopy, "downloadOptionsLength", "downloadOptions", downloadManagerDecodeClasses, &v124);
    uint64 = v124;

    if (v47)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [commandRequestCopy associateDownloadOptions:v47];
        v48 = [v47 tightSummaryIncludingAdditional:0];
        [trackerCopy extendLogLeader:@"downloadOptions" withValue:v48];
      }

      else
      {
        v48 = uint64;
        uint64 = @"Invalid download options class provided by client";
      }

      v43 = v13;
    }

    else
    {
      v43 = v13;
    }

    fields = fieldsCopy4;
    v14 = v112;
  }

  else
  {
    v43 = v13;
    uint64 = 0;
  }

  v50 = uint64 == 0;
  if ((fields & 0x200000000000) != 0 && !uint64)
  {
    v51 = xpc_dictionary_get_uint64(requestCopy, "downloadSize");
    if (v51)
    {
      [commandRequestCopy associateDownloadSize:v51];
      v52 = [[NSString alloc] initWithFormat:@"%llu", objc_msgSend(commandRequestCopy, "downloadSize")];
      [trackerCopy extendLogLeader:@"downloadSize" withValue:v52];
    }

    v50 = 1;
  }

  if ((fields & 0x1000) == 0 || uint64)
  {
LABEL_85:
    if (!v50)
    {
      goto LABEL_94;
    }

    goto LABEL_86;
  }

  v53 = xpc_dictionary_get_uint64(requestCopy, "notificationInterval");
  if (!v53)
  {
    uint64 = 0;
    goto LABEL_85;
  }

  [commandRequestCopy associateNotificationInterval:v53];
  v54 = [[NSString alloc] initWithFormat:@"%llu", objc_msgSend(commandRequestCopy, "notificationInterval")];
  [trackerCopy extendLogLeader:@"notificationInterval" withValue:v54];

  if (!v50)
  {
    uint64 = 0;
    goto LABEL_94;
  }

LABEL_86:
  if ((fields & 0x1000000) == 0)
  {
    goto LABEL_96;
  }

  fieldsCopy5 = fields;
  v56 = getDownloadManager();
  downloadManagerDecodeClasses2 = [v56 downloadManagerDecodeClasses];
  v123 = 0;
  v58 = getObjectFromMessageWithFailureReason(requestCopy, "downloadConfigLength", "downloadConfig", downloadManagerDecodeClasses2, &v123);
  uint64 = v123;

  if (v58)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [commandRequestCopy associateDownloadConfig:v58];
      summary = [v58 summary];
      [trackerCopy extendLogLeader:@"downloadConfig" withValue:summary];
    }

    else
    {
      summary = uint64;
      uint64 = @"Invalid download config class provided by client";
    }
  }

  fields = fieldsCopy5;
LABEL_94:
  if (uint64)
  {
    v13 = v43;
    goto LABEL_175;
  }

LABEL_96:
  v13 = v43;
  v62 = selfCopy2;
  if ((fields & 0x400000000000) == 0)
  {
    goto LABEL_101;
  }

  v63 = xpc_dictionary_get_uint64(requestCopy, "assetState");
  if (v63 <= 6)
  {
    [commandRequestCopy associateAssetState:v63];
    v64 = stringForMAAssetState([commandRequestCopy assetState]);
    [trackerCopy extendLogLeader:@"assetState" withValue:v64];

    goto LABEL_101;
  }

  v49 = [[NSString alloc] initWithFormat:@"Unknown current state [%llu] provided by client", v63];
  if (v49)
  {
LABEL_100:
    uint64 = v49;
    goto LABEL_175;
  }

LABEL_101:
  if ((fields & 0x8000000) != 0)
  {
    v122 = 0;
    v65 = [(ControlManager *)selfCopy2 dictionaryWithArrayOfStringValues:requestCopy forXpcKey:"purgeAssetTypePreservingList" andLengthKey:"purgeAssetTypePreservingListLength" failureReason:&v122];
    uint64 = v122;
    if (v65)
    {
      v104 = requestCopy;
      fieldsCopy6 = fields;
      v101 = v13;
      v102 = trackerCopy;
      v103 = commandRequestCopy;
      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      allKeys = [v65 allKeys];
      v67 = [allKeys countByEnumeratingWithState:&v118 objects:v128 count:16];
      v108 = v65;
      if (v67)
      {
        v68 = v67;
        v69 = *v119;
        v107 = allKeys;
        while (2)
        {
          for (i = 0; i != v68; i = i + 1)
          {
            if (*v119 != v69)
            {
              objc_enumerationMutation(allKeys);
            }

            v71 = *(*(&v118 + 1) + 8 * i);
            v72 = objc_autoreleasePoolPush();
            if (!uint64)
            {
              if (!isWellFormedAssetType(v71))
              {
                uint64 = [[NSString alloc] initWithFormat:@"Asset identifiers to ignore included assetType:%@ that is not well formed", v71];
                objc_autoreleasePoolPop(v72);
                goto LABEL_127;
              }

              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              v73 = [v65 objectForKey:v71];
              uint64 = [v73 countByEnumeratingWithState:&v114 objects:v127 count:16];
              if (uint64)
              {
                v74 = *v115;
                while (2)
                {
                  for (j = 0; j != uint64; j = (j + 1))
                  {
                    if (*v115 != v74)
                    {
                      objc_enumerationMutation(v73);
                    }

                    v76 = *(*(&v114 + 1) + 8 * j);
                    v77 = objc_autoreleasePoolPush();
                    if (!isWellFormedAssetId(v76))
                    {
                      uint64 = [[NSString alloc] initWithFormat:@"Asset identifiers to ignore included assetId:%@ that is not well formed", v76];
                      objc_autoreleasePoolPop(v77);
                      goto LABEL_121;
                    }

                    objc_autoreleasePoolPop(v77);
                  }

                  uint64 = [v73 countByEnumeratingWithState:&v114 objects:v127 count:16];
                  if (uint64)
                  {
                    continue;
                  }

                  break;
                }

LABEL_121:
                v14 = v112;
                allKeys = v107;
                v65 = v108;
              }
            }

            objc_autoreleasePoolPop(v72);
          }

          v68 = [allKeys countByEnumeratingWithState:&v118 objects:v128 count:16];
          if (v68)
          {
            continue;
          }

          break;
        }
      }

LABEL_127:

      commandRequestCopy = v103;
      if (!uint64)
      {
        [v103 associateAssetIdsToPreserve:v65];
      }

      v78 = [NSString alloc];
      assetIdsToPreserve = [v103 assetIdsToPreserve];
      v80 = stringWithoutNewlines(assetIdsToPreserve);
      v81 = [v78 initWithFormat:@"Preserving asset types / identifiers: %@", v80];
      v65 = v108;
      trackerCopy = v102;
      [MADActivityManager noticeForActivity:v102 reason:v81];

      [v102 extendLogLeader:@"preserving" withValue:@"YES"];
      requestCopy = v104;
      fields = fieldsCopy6;
      v13 = v101;
      v62 = selfCopy2;
    }
  }

  else
  {
    uint64 = 0;
  }

  if ((fields & 0x4000000000) == 0 || uint64)
  {
    if (uint64)
    {
      goto LABEL_145;
    }
  }

  else if (xpc_dictionary_get_BOOL(requestCopy, "pallasEnabled"))
  {
    [commandRequestCopy associatePallasEnabled:1];
    if ([commandRequestCopy pallasEnabled])
    {
      v82 = @"YES";
    }

    else
    {
      v82 = @"NO";
    }

    [trackerCopy extendLogLeader:@"pallasEnabled" withValue:v82];
  }

  if ((fields & 0x100000000000) != 0)
  {
    fieldsCopy7 = fields;
    v84 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"serverUrlOverride"];

    if (v84)
    {
      [commandRequestCopy associateServerUrl:v84];
      serverUrl = [commandRequestCopy serverUrl];
      [trackerCopy extendLogLeader:@"serverUrlOverride" withValue:serverUrl];

      uint64 = 0;
      v14 = v84;
    }

    else
    {
      uint64 = [[NSString alloc] initWithFormat:@"Client request missing key:%@", @"serverUrlOverride"];
      v14 = 0;
    }

    fields = fieldsCopy7;
  }

  else
  {
    uint64 = 0;
  }

LABEL_145:
  if ((fields & 0x8000000000000) != 0 && !uint64)
  {
    v86 = xpc_dictionary_get_uint64(requestCopy, [@"_UnarchivedSize" UTF8String]);
    if (v86)
    {
      [commandRequestCopy associateUnarchiveSize:v86];
      v87 = [[NSString alloc] initWithFormat:@"%lld", objc_msgSend(commandRequestCopy, "unarchiveSize")];
      [trackerCopy extendLogLeader:@"_UnarchivedSize" withValue:v87];
    }
  }

  if ((fields & 0x1000000000000) != 0 && !uint64)
  {
    v88 = xpc_dictionary_get_uint64(requestCopy, "GCOverrideDays");
    if (v88)
    {
      [commandRequestCopy associateReturnTypes:v88];
      v89 = [[NSString alloc] initWithFormat:@"%llu", objc_msgSend(commandRequestCopy, "returnTypes")];
      [trackerCopy extendLogLeader:@"GCOverrideDays" withValue:v89];
    }
  }

  if ((fields & 8) != 0 && !uint64 && xpc_dictionary_get_BOOL(requestCopy, "NSUrlState"))
  {
    [commandRequestCopy associateCleanupInFlightDownloads:1];
    if ([commandRequestCopy cleanupInFlightDownloads])
    {
      v90 = @"YES";
    }

    else
    {
      v90 = @"NO";
    }

    [trackerCopy extendLogLeader:@"NSUrlState" withValue:v90];
  }

  if ((fields & 0x2000000000) != 0 && !uint64)
  {
    v91 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"pallasUrl"];

    if (v91)
    {
      v14 = v91;
    }

    else
    {
      v14 = &stru_4BD3F0;
    }

    [commandRequestCopy associatePallasUrl:v14];
    pallasUrl = [commandRequestCopy pallasUrl];
    [trackerCopy extendLogLeader:@"pallasUrl" withValue:pallasUrl];
  }

  if ((fields & 0x4000000000) == 0 || uint64)
  {
    if (uint64)
    {
      goto LABEL_175;
    }
  }

  else
  {
    v93 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"pallasAudience"];

    if (v93)
    {
      v14 = v93;
    }

    else
    {
      v14 = &stru_4BD3F0;
    }

    [commandRequestCopy associatePallasAudience:v14];
    pallasAudience = [commandRequestCopy pallasAudience];
    [trackerCopy extendLogLeader:@"pallasAudience" withValue:pallasAudience];
  }

  if ((fields & 0x20000000) != 0)
  {
    v97 = objc_opt_class();
    v98 = loadDecodeClasses();
    v113 = 0;
    uint64 = [(ControlManager *)v62 decodeXpcObject:requestCopy ofClass:v97 dataKey:@"loadAssetId" lengthKey:@"loadAssetIdLength" decodeClasses:v98 error:&v113];
    v20 = v113;

    if (v20)
    {
      v21 = [[NSString alloc] initWithFormat:@"Failed to decode absolute asset identifier with error:%@", v20];
    }

    else if (uint64)
    {
      [commandRequestCopy associateAbsoluteId:uint64];
      summary2 = [(__CFString *)uint64 summary];
      [trackerCopy extendLogLeader:@"loadAssetId" withValue:summary2];

      v21 = 0;
    }

    else
    {
      v21 = @"Failed to decode absolute asset identifier";
    }

    goto LABEL_24;
  }

  uint64 = 0;
LABEL_175:
  v95 = uint64;

  return v95;
}

- (id)associateOptionalFields:(int64_t)fields fromRequest:(id)request toCommandRequest:(id)commandRequest forCommandTracker:(id)tracker
{
  fieldsCopy = fields;
  requestCopy = request;
  commandRequestCopy = commandRequest;
  trackerCopy = tracker;
  if ((fieldsCopy & 0x200) != 0)
  {
    string = xpc_dictionary_get_string(requestCopy, "Purpose");
    v14 = normalizePurposeFromUtf8(string);
    if (isWellFormedPurpose(v14))
    {
      if (v14)
      {
        [commandRequestCopy associatePurpose:v14];
        purpose = [commandRequestCopy purpose];
        [trackerCopy extendLogLeader:@"Purpose" withValue:purpose];
      }

      v13 = 0;
      if ((fieldsCopy & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [[NSString alloc] initWithFormat:@"Client request with %@:%@ (which is not well formed)", @"Purpose", v14];
      if ((fieldsCopy & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    if ((fieldsCopy & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  if (!v13)
  {
    v17 = [ControlManager getStringFromXpcMessage:requestCopy forKey:"BaseUrlKey"];

    if (v17)
    {
      [commandRequestCopy associateBaseUrl:v17];
      baseUrl = [commandRequestCopy baseUrl];
      [trackerCopy extendLogLeader:@"BaseUrlKey" withValue:baseUrl];

      v14 = v17;
      if ((fieldsCopy & 0x80000) != 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      if ((fieldsCopy & 0x80000) != 0)
      {
        goto LABEL_18;
      }
    }

LABEL_33:
    if (fieldsCopy < 0)
    {
      v27 = objc_opt_class();
      v28 = loadDecodeClasses();
      v34 = 0;
      v29 = [(ControlManager *)self decodeXpcObject:requestCopy ofClass:v27 dataKey:@"allowedDifferences" lengthKey:@"allowedDifferencesLength" decodeClasses:v28 error:&v34];
      v30 = v34;

      if (v30)
      {
        v13 = [[NSString alloc] initWithFormat:@"Failed to decode allow-differences with error:%@", v30];
      }

      else
      {
        if (v29)
        {
          [commandRequestCopy associateAllowDifferences:v29];
          allowDifferences = [commandRequestCopy allowDifferences];
          summary = [allowDifferences summary];
          [trackerCopy extendLogLeader:@"allowedDifferences" withValue:summary];
        }

        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_41;
  }

LABEL_14:
  if (v13)
  {
    goto LABEL_41;
  }

  if ((fieldsCopy & 0x80000) == 0)
  {
    goto LABEL_33;
  }

LABEL_18:
  length = xpc_dictionary_get_double(requestCopy, "stExtractorLength");
  if (!length)
  {
    goto LABEL_33;
  }

  data = xpc_dictionary_get_data(requestCopy, "stExtractor", &length);
  if (!data)
  {
    v13 = @"Failed to read extractor bytes from client request message";
    goto LABEL_41;
  }

  v20 = [NSData dataWithBytes:data length:length];
  if (!v20)
  {
    v13 = @"Failed to read extractor data from client request message";
    goto LABEL_41;
  }

  v21 = v20;
  v35 = 0;
  v22 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v20 error:&v35];
  v23 = v35;
  if (v23 || !v22)
  {
    [v22 finishDecoding];
    v13 = v23 ? [[NSString alloc] initWithFormat:@"Failed to decode extractor data with error:%@", v23] : @"Failed to create unarchived extractor data";
  }

  else
  {
    v24 = extractorDecodeClasses();
    v25 = [v22 decodeObjectOfClasses:v24 forKey:NSKeyedArchiveRootObjectKey];

    [v22 finishDecoding];
    if (v25)
    {
      [commandRequestCopy associateClientExtractorData:v21 ofLength:length];
      v26 = [[NSString alloc] initWithFormat:@"Using client-extractor (of %lld bytes)", objc_msgSend(commandRequestCopy, "clientExtractorLen")];
      [MADActivityManager noticeForActivity:trackerCopy reason:v26];

      [trackerCopy extendLogLeader:@"client-extractor" withValue:@"YES"];
      v13 = 0;
    }

    else
    {
      v13 = @"Failed to create unarchived extractor data";
    }

    v23 = 0;
  }

  if (!v13)
  {
    goto LABEL_33;
  }

LABEL_41:

  return v13;
}

- (void)setServerConnectionHandler:(id)handler with:(id)with and:(id)and
{
  withCopy = with;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __54__ControlManager_setServerConnectionHandler_with_and___block_invoke;
  handler[3] = &unk_4B5510;
  handler[4] = self;
  andCopy = and;
  v15 = withCopy;
  v9 = withCopy;
  v10 = andCopy;
  handlerCopy = handler;
  xpc_connection_set_event_handler(handlerCopy, handler);
  v12 = objc_opt_new();
  xpc_connection_set_context(handlerCopy, v12);
}

void __54__ControlManager_setServerConnectionHandler_with_and___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  type = xpc_get_type(v3);
  if (type == &_xpc_type_connection)
  {
    [*(a1 + 32) handleClientConnection:v3 on:*(a1 + 40)];
    goto LABEL_22;
  }

  v5 = type;
  if (type == &_xpc_type_error)
  {
    if (v3 == &_xpc_error_connection_invalid)
    {
      v7 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v13 = *(a1 + 48);
      v16 = 138543362;
      v17 = v13;
      v10 = "[%{public}@] Connection invalid";
    }

    else if (v3 == &_xpc_error_termination_imminent)
    {
      v7 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v14 = *(a1 + 48);
      v16 = 138543362;
      v17 = v14;
      v10 = "[%{public}@] Termination imminent";
    }

    else
    {
      v7 = _MADLog(@"V2Control");
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v3 != &_xpc_error_connection_interrupted)
      {
        if (v8)
        {
          v9 = *(a1 + 48);
          v16 = 138543618;
          v17 = v9;
          v18 = 2048;
          v19 = v3;
          v10 = "[%{public}@] Received unknown event:%lld";
          v11 = v7;
          v12 = 22;
LABEL_20:
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v10, &v16, v12);
        }

LABEL_21:

        goto LABEL_22;
      }

      if (!v8)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 48);
      v16 = 138543362;
      v17 = v15;
      v10 = "[%{public}@] Connection interrupted";
    }

    v11 = v7;
    v12 = 12;
    goto LABEL_20;
  }

  if (type != &_xpc_type_dictionary)
  {
    v6 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Server connection handler received unknown type: %{public}@", &v16, 0xCu);
    }
  }

LABEL_22:
}

- (int64_t)updateLastFetchedDate:(id)date assetType:(id)type withPurpose:(id)purpose with:(id)with
{
  withCopy = with;
  purposeCopy = purpose;
  typeCopy = type;
  dateCopy = date;
  v14 = ensureRepositoryPath(typeCopy);
  v15 = assembleXmlPathWithPurpose(typeCopy, dateCopy, v14, purposeCopy);

  path = [v15 path];

  metaDataQueue = self->_metaDataQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __67__ControlManager_updateLastFetchedDate_assetType_withPurpose_with___block_invoke;
  v21[3] = &unk_4B2B18;
  v22 = path;
  v23 = withCopy;
  v18 = withCopy;
  v19 = path;
  dispatch_async(metaDataQueue, v21);

  return 31;
}

void __67__ControlManager_updateLastFetchedDate_assetType_withPurpose_with___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 fileExistsAtPath:*(a1 + 32)];

  if (v3)
  {
    v4 = [NSDictionary dictionaryWithContentsOfFile:*(a1 + 32)];
    v5 = +[NSDate date];
    [v4 setObject:v5 forKey:@"lastTimeChecked"];

    if ((safeAtomicWriteToPath(v4, *(a1 + 32)) & 1) == 0)
    {
      v6 = _MADLog(@"V2");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1 + 32);
        v9 = 138543362;
        v10 = v7;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{updateLastFetchedDate} failed to update lastFetchedDate in xml | targetLocation:%{public}@", &v9, 0xCu);
      }
    }
  }

  else
  {
    v4 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Attempting to update lastFetchedDate with no xml present", &v9, 2u);
    }
  }

  v8 = getDownloadManager();
  [v8 taskFinishedUpdateState:*(a1 + 40) with:14 fromLocation:@"updateLastFetchedDate"];
}

- (void)writeDictionaryToFile:(id)file to:(id)to with:(id)with
{
  fileCopy = file;
  toCopy = to;
  withCopy = with;
  metaDataQueue = self->_metaDataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __48__ControlManager_writeDictionaryToFile_to_with___block_invoke;
  block[3] = &unk_4B2AF0;
  v16 = toCopy;
  v17 = withCopy;
  v18 = fileCopy;
  v12 = fileCopy;
  v13 = withCopy;
  v14 = toCopy;
  dispatch_async(metaDataQueue, block);
}

void __48__ControlManager_writeDictionaryToFile_to_with___block_invoke(id *a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [a1[4] stringByAppendingString:@".purged"];
  v4 = disassembleTaskDescriptor(a1[5]);
  v5 = [v4 objectForKey:@"normalizedAssetType"];
  v6 = assetTypeFromNormalized(v5);

  if (!isWellFormedAssetType(v6))
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{writeDictionaryToFile} Failed to write dictionary to file, asset type was not well formed: %{public}@", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_10;
  }

  if ([v2 fileExistsAtPath:v3])
  {
    v30 = 0;
    v7 = [v2 removeItemAtPath:v3 error:&v30];
    v8 = v30;
    if ((v7 & 1) == 0)
    {
      v9 = _MADLog(@"V2");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [v8 checkedSummary];
        *buf = 138543874;
        v32 = v3;
        v33 = 2114;
        v34 = v10;
        v35 = 2114;
        v36 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{writeDictionaryToFile} could not remove prior archive file (will continue) | archivePath:%{public}@ | error:%{public}@\n%{public}@", buf, 0x20u);
      }

      v3 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if ([v2 fileExistsAtPath:a1[4]])
  {

    if (v3)
    {
      v13 = a1[4];
      v29 = 0;
      v14 = [v2 moveItemAtPath:v13 toPath:v3 error:&v29];
      v8 = v29;
      if (v14)
      {
        v15 = _MADLog(@"V2Control");
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:

          goto LABEL_23;
        }

        v16 = a1[4];
        *buf = 138543618;
        v32 = v16;
        v33 = 2114;
        v34 = v3;
        v17 = "{writeDictionaryToFile} moved existing file | targetLocation:%{public}@ to archivePath:%{public}@";
        v18 = v15;
        v19 = 22;
LABEL_21:
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
        goto LABEL_22;
      }
    }

    else
    {
      v8 = 0;
    }

    v20 = a1[4];
    v28 = 0;
    v21 = [v2 removeItemAtPath:v20 error:&v28];
    v8 = v28;
    if ((v21 & 1) == 0)
    {
      v11 = _MADLog(@"V2");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v26 = a1[4];
        v27 = [v8 checkedSummary];
        *buf = 138543874;
        v32 = v26;
        v33 = 2114;
        v34 = v27;
        v35 = 2114;
        v36 = v8;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{writeDictionaryToFile} could not remove file | targetLocation:%{public}@ | error:%{public}@\n%{public}@", buf, 0x20u);
      }

      goto LABEL_10;
    }

    v15 = _MADLog(@"V2Control");
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    v22 = a1[4];
    *buf = 138543362;
    v32 = v22;
    v17 = "{writeDictionaryToFile} removed existing file | targetLocation:%{public}@";
    v18 = v15;
    v19 = 12;
    goto LABEL_21;
  }

LABEL_23:
  if ((safeAtomicWriteToPath(a1[6], a1[4]) & 1) == 0)
  {
    v11 = _MADLog(@"V2");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v25 = a1[4];
      *buf = 138543362;
      v32 = v25;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "{writeDictionaryToFile} failed to write XML | targetLocation:%{public}@", buf, 0xCu);
    }

LABEL_10:
    v12 = 7;
    goto LABEL_27;
  }

  v11 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = a1[5];
    *buf = 138543362;
    v32 = v23;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{writeDictionaryToFile} succeeded | taskDescriptor:%{public}@", buf, 0xCu);
  }

  v12 = 0;
LABEL_27:

  v24 = getDownloadManager();
  [v24 taskFinishedUpdateState:a1[5] with:v12 fromLocation:@"writeDictionaryToFile"];
}

- (void)writeJsonDictionaryToFile:(id)file to:(id)to with:(id)with
{
  fileCopy = file;
  toCopy = to;
  withCopy = with;
  metaDataQueue = self->_metaDataQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __52__ControlManager_writeJsonDictionaryToFile_to_with___block_invoke;
  block[3] = &unk_4B2AF0;
  v16 = toCopy;
  v17 = withCopy;
  v18 = fileCopy;
  v12 = fileCopy;
  v13 = withCopy;
  v14 = toCopy;
  dispatch_async(metaDataQueue, block);
}

void __52__ControlManager_writeJsonDictionaryToFile_to_with___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) stringByAppendingString:@".old.purged"];
  if (![v2 fileExistsAtPath:v3])
  {
    v5 = 0;
LABEL_8:
    if (([v2 fileExistsAtPath:*(a1 + 32)] & 1) == 0)
    {
      goto LABEL_21;
    }

    if (v3)
    {
      v8 = *(a1 + 32);
      v73 = v5;
      v9 = [v2 moveItemAtPath:v8 toPath:v3 error:&v73];
      v10 = v73;

      if (v9)
      {
        v11 = _MADLog(@"V2Control");
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

          v5 = v10;
          goto LABEL_21;
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        *buf = 138543874;
        v78 = v12;
        v79 = 2114;
        v80 = v13;
        v81 = 2114;
        v82 = v3;
        v14 = "writeJsonDictionaryToFile %{public}@ moved existing file: %{public}@ to: %{public}@";
LABEL_19:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v14, buf, 0x20u);
        goto LABEL_20;
      }

      v5 = v10;
    }

LABEL_14:
    v15 = _MADLog(@"V2");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138544130;
      v78 = v16;
      v79 = 2114;
      v80 = v17;
      v81 = 2114;
      v82 = v3;
      v83 = 2114;
      v84 = v5;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "writeJsonDictionaryToFile %{public}@ could not move old file: %{public}@ to: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v18 = *(a1 + 32);
    v72 = 0;
    v19 = [v2 removeItemAtPath:v18 error:&v72];
    v10 = v72;
    if ((v19 & 1) == 0)
    {
      v32 = _MADLog(@"V2");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v39 = *(a1 + 32);
        v38 = *(a1 + 40);
        *buf = 138544130;
        v78 = v38;
        v79 = 2114;
        v80 = v39;
        v81 = 2114;
        v82 = v3;
        v83 = 2114;
        v84 = v10;
        v35 = "writeJsonDictionaryToFile %{public}@ could not remove file: %{public}@ (after initial error moving it to: %{public}@) with removal error: %{public}@";
        v36 = v32;
        v37 = 42;
        goto LABEL_35;
      }

LABEL_36:

      v30 = 0;
      v27 = 0;
      goto LABEL_58;
    }

    v11 = _MADLog(@"V2Control");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v21 = *(a1 + 32);
    v20 = *(a1 + 40);
    *buf = 138543874;
    v78 = v20;
    v79 = 2114;
    v80 = v21;
    v81 = 2114;
    v82 = v3;
    v14 = "writeJsonDictionaryToFile %{public}@ removed existing file: %{public}@ (after initial error moving it to: %{public}@)";
    goto LABEL_19;
  }

  v74 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v74];
  v5 = v74;
  if (v4)
  {
    goto LABEL_8;
  }

  v6 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    *buf = 138543874;
    v78 = v7;
    v79 = 2114;
    v80 = v3;
    v81 = 2114;
    v82 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ could not remove prior archive file: %{public}@ (will continue) error: %{public}@", buf, 0x20u);
  }

  v3 = 0;
  if ([v2 fileExistsAtPath:*(a1 + 32)])
  {
    goto LABEL_14;
  }

LABEL_21:
  if ([v2 fileExistsAtPath:*(a1 + 32)])
  {

    v22 = *(a1 + 32);
    v71 = 0;
    v23 = [v2 removeItemAtPath:v22 error:&v71];
    v10 = v71;
    if (v23)
    {
      v24 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        *buf = 138543618;
        v78 = v25;
        v79 = 2114;
        v80 = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ removed existing file: %{public}@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    v32 = _MADLog(@"V2");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v34 = *(a1 + 32);
      v33 = *(a1 + 40);
      *buf = 138543874;
      v78 = v33;
      v79 = 2114;
      v80 = v34;
      v81 = 2114;
      v82 = v10;
      v35 = "writeJsonDictionaryToFile %{public}@ could not remove file: %{public}@ error: %{public}@";
      v36 = v32;
      v37 = 32;
LABEL_35:
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      goto LABEL_36;
    }

    goto LABEL_36;
  }

  v10 = v5;
LABEL_27:
  v27 = [*(a1 + 32) stringByAppendingString:@".new.purged"];
  if ([v2 fileExistsAtPath:v27] && (v10, v70 = 0, v28 = objc_msgSend(v2, "removeItemAtPath:error:", v27, &v70), v10 = v70, (v28 & 1) == 0))
  {
    v40 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a1 + 40);
      *buf = 138543874;
      v78 = v41;
      v79 = 2114;
      v80 = v27;
      v81 = 2114;
      v82 = v10;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ could not remove prior temp file: %{public}@ (will fall back to directly writing) error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v29 = [[NSOutputStream alloc] initToFileAtPath:v27 append:0];
    if (v29)
    {
      v30 = v29;
      v31 = 1;
      goto LABEL_44;
    }
  }

  v42 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(a1 + 40);
    *buf = 138543618;
    v78 = v43;
    v79 = 2114;
    v80 = v27;
    _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ failed to create json stream: %{public}@", buf, 0x16u);
  }

  v44 = [[NSOutputStream alloc] initToFileAtPath:*(a1 + 32) append:0];
  if (v44)
  {
    v30 = v44;
    v31 = 0;
LABEL_44:

    [v30 open];
    v45 = *(a1 + 48);
    v69 = 0;
    [NSJSONSerialization writeJSONObject:v45 toStream:v30 options:1 error:&v69];
    v46 = v69;
    if (v46)
    {
      v10 = v46;
      v47 = _MADLog(@"V2Control");
      if (!os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
LABEL_50:
        v54 = 7;
LABEL_63:

        [v30 close];
        goto LABEL_64;
      }

      v48 = *(a1 + 40);
      v49 = v27;
      if ((v31 & 1) == 0)
      {
        v49 = *(a1 + 32);
      }

      *buf = 138543874;
      v78 = v48;
      v79 = 2114;
      v80 = v49;
      v81 = 2114;
      v82 = v10;
      v50 = "writeJsonDictionaryToFile %{public}@ failed to write json to: %{public}@ error: %{public}@";
      v51 = v47;
      v52 = OS_LOG_TYPE_DEFAULT;
      v53 = 32;
LABEL_49:
      _os_log_impl(&dword_0, v51, v52, v50, buf, v53);
      goto LABEL_50;
    }

    if (v31)
    {
      v55 = *(a1 + 32);
      v68 = 0;
      v56 = [v2 moveItemAtPath:v27 toPath:v55 error:&v68];
      v10 = v68;
      if ((v56 & 1) == 0)
      {
        v47 = _MADLog(@"V2");
        if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        v58 = *(a1 + 32);
        v57 = *(a1 + 40);
        *buf = 138544130;
        v78 = v57;
        v79 = 2114;
        v80 = v27;
        v81 = 2114;
        v82 = v58;
        v83 = 2114;
        v84 = v10;
        v50 = "writeJsonDictionaryToFile %{public}@ could not move json from: %{public}@ to: %{public}@ error: %{public}@";
        v51 = v47;
        v52 = OS_LOG_TYPE_ERROR;
        v53 = 42;
        goto LABEL_49;
      }
    }

    else
    {
      v10 = 0;
    }

    v47 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v62 = *(a1 + 40);
      *buf = 138543362;
      v78 = v62;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ succeeded", buf, 0xCu);
    }

    v54 = 0;
    goto LABEL_63;
  }

  v59 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *(a1 + 32);
    v60 = *(a1 + 40);
    *buf = 138543618;
    v78 = v60;
    v79 = 2114;
    v80 = v61;
    _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ failed to create json stream: %{public}@", buf, 0x16u);
  }

  v30 = 0;
LABEL_58:
  v54 = 7;
LABEL_64:
  if (*(a1 + 48) && !isDownloadResultFailure(v54))
  {
    v64 = *(a1 + 48);
    v75 = @"productMarketingVersions";
    v76 = v64;
    v63 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  }

  else
  {
    v63 = 0;
  }

  v65 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    v66 = *(a1 + 40);
    *buf = 138543362;
    v78 = v66;
    _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "writeJsonDictionaryToFile %{public}@ notifying download manager move complete", buf, 0xCu);
  }

  v67 = getDownloadManager();
  [v67 taskFinishedUpdateState:*(a1 + 40) with:v54 extraInfo:v63 fromLocation:@"writeDictionaryToFile"];
}

- (void)moveAssetIntoRepo:(id)repo forType:(id)type forAsset:(id)asset cleanUp:(id)up with:(id)with
{
  repoCopy = repo;
  typeCopy = type;
  assetCopy = asset;
  upCopy = up;
  withCopy = with;
  v46 = 0;
  v17 = +[NSFileManager defaultManager];
  path = [repoCopy path];
  [v17 fileExistsAtPath:path isDirectory:&v46];

  if (v46)
  {
    v36 = upCopy;
    v37 = assetCopy;
    v19 = getAssetDirectoryName(assetCopy);
    v20 = assetTypeFromNormalized(typeCopy);
    v34 = disassembleTaskDescriptor(withCopy);
    v21 = [v34 objectForKey:@"Purpose"];
    v35 = v20;
    v22 = repositoryPath(v20);
    v23 = ensureTargetDirectory(v22, typeCopy);
    v24 = [v22 stringByAppendingPathComponent:typeCopy];

    if (v23)
    {
      if (v21)
      {
        v25 = purposeDirectoryName(v21);
        v26 = ensureTargetDirectory(v24, v25);
        v27 = [v23 URLByAppendingPathComponent:v25];

        v23 = v27;
      }

      v28 = [v23 URLByAppendingPathComponent:v19];
    }

    else
    {
      v28 = 0;
    }

    if (usingCentralizedCachedelete() && !isDirStatsEnabledForDirectory(v24))
    {
      enableDirStatsForDirectory(v24);
    }

    v31 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v48 = v28;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Moving asset to target directory: %{public}@", buf, 0xCu);
    }

    assetQueue = self->_assetQueue;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = __66__ControlManager_moveAssetIntoRepo_forType_forAsset_cleanUp_with___block_invoke_2046;
    v38[3] = &unk_4B42C0;
    v39 = repoCopy;
    v40 = v28;
    selfCopy = self;
    upCopy = v36;
    v42 = v36;
    v43 = withCopy;
    v33 = v28;
    dispatch_async(assetQueue, v38);

    assetCopy = v37;
  }

  else
  {
    v29 = _MADLog(@"V2Control");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "Completed download did not result in a directory, skipping", buf, 2u);
    }

    if (upCopy)
    {
      v30 = self->_assetQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __66__ControlManager_moveAssetIntoRepo_forType_forAsset_cleanUp_with___block_invoke;
      block[3] = &unk_4B2AA0;
      v45 = upCopy;
      dispatch_async(v30, block);
    }

    v19 = getDownloadManager();
    [v19 taskFinishedUpdateState:withCopy with:7 fromLocation:@"moveAssetIntoRepo"];
  }
}

void __66__ControlManager_moveAssetIntoRepo_forType_forAsset_cleanUp_with___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {moveAssetIntoRepo} removing path...", &v8, 2u);
  }

  v3 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Cleaning up source: %{public}@", &v8, 0xCu);
  }

  v5 = +[NSFileManager defaultManager];
  v6 = [*(a1 + 32) path];
  [v5 removeItemAtPath:v6 error:0];

  v7 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {moveAssetIntoRepo} ...removing path", &v8, 2u);
  }
}

void __66__ControlManager_moveAssetIntoRepo_forType_forAsset_cleanUp_with___block_invoke_2046(uint64_t a1)
{
  v2 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {moveAssetIntoRepo} moving to path...", buf, 2u);
  }

  v3 = moveTargetToDirectory(*(a1 + 32), *(a1 + 40));
  if (!v3)
  {
    if (usingCentralizedCachedelete())
    {
      v4 = [*(a1 + 40) path];
      markAssetPurgeable(v4);
    }

    v5 = [*(a1 + 48) getSAFRegistrationBundleID:*(a1 + 40)];
    [*(a1 + 48) updateSpaceAttributionForBundleID:v5 assetPath:*(a1 + 40) doRegistration:1];
  }

  removeItem(*(a1 + 56));
  updateClientUsageDate(*(a1 + 40));
  v6 = getDownloadManager();
  [v6 taskFinishedUpdateState:*(a1 + 64) with:v3 fromLocation:@"moveAssetIntoRepo"];

  v7 = _MADLog(@"V2Control");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[CONTROL_MANAGER_ASSET_QUEUE] {moveAssetIntoRepo} ...moving to path", v8, 2u);
  }
}

- (void)handleGetMABrainInfo:(id)info message:(id)message clientName:(id)name
{
  infoCopy = info;
  messageCopy = message;
  v7 = +[MABrainUpdater sharedInstance];
  info = [v7 info];

  reply = xpc_dictionary_create_reply(messageCopy);
  v10 = reply;
  if (info)
  {
    v11 = reply == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = infoCopy;
    if (!v10)
    {
      sendClientResponse(infoCopy, messageCopy, 2);
      goto LABEL_9;
    }
  }

  else
  {
    addObjectToMessage();
    v12 = infoCopy;
  }

  sendReply(v12, v10, 0);
LABEL_9:
}

- (void)handleUpdateMABrain:(id)brain message:(id)message clientName:(id)name
{
  brainCopy = brain;
  messageCopy = message;
  nameCopy = name;
  v10 = +[NSMutableDictionary dictionary];
  length = 0;
  data = xpc_dictionary_get_data(messageCopy, "MobileAssetBrainUpdateOptionSSO", &length);
  v12 = 0;
  if (data && length)
  {
    v12 = [NSData dataWithBytes:data length:?];
  }

  string = xpc_dictionary_get_string(messageCopy, "MobileAssetBrainUpdateOptionDAW");
  if (string)
  {
    string = [NSString stringWithFormat:@"Bearer %s", string];
  }

  else
  {
    string = 0;
  }

  v15 = xpc_dictionary_get_BOOL(messageCopy, "MobileAssetBrainUpdateOptionNonBlocking");
  v16 = xpc_dictionary_get_BOOL(messageCopy, "MobileAssetBrainUpdateOptionRelaunch");
  v17 = xpc_dictionary_get_BOOL(messageCopy, "MobileAssetBrainUpdateOptionPurgeOnly");
  v18 = xpc_dictionary_get_BOOL(messageCopy, "MobileAssetBrainUpdateOptionDiscretionary");
  v35 = v12;
  [(__CFString *)v10 setObject:v12 forKeyedSubscript:@"ssoToken"];
  v34 = string;
  [(__CFString *)v10 setObject:string forKeyedSubscript:@"dawHeader"];
  [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nonDiscetionary"];
  if (v18)
  {
    v19 = &__kCFBooleanFalse;
  }

  else
  {
    v19 = &__kCFBooleanTrue;
  }

  [(__CFString *)v10 setObject:v19 forKeyedSubscript:@"nonDiscetionary"];
  if (v15)
  {
    [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"nonBlocking"];
  }

  if (v16)
  {
    [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"relaunchBrain"];
  }

  if (![(__CFString *)v10 count])
  {

    v10 = 0;
  }

  v20 = _MADLog(@"Brain");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    if (v21)
    {
      v22 = @"nil";
      *buf = 138412802;
      if (v10)
      {
        v22 = v10;
      }

      v46 = nameCopy;
      v47 = 2112;
      v48 = v22;
      v49 = 2112;
      v50 = messageCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "client %@ requested purge of downloaded MobileAssetBrain with options:\n%@\nraw message:%@", buf, 0x20u);
    }

    v23 = +[MABrainUpdater sharedInstance];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = __57__ControlManager_handleUpdateMABrain_message_clientName___block_invoke;
    v40[3] = &unk_4B5538;
    v24 = &v41;
    v25 = &v42;
    v41 = nameCopy;
    v42 = messageCopy;
    v26 = &v43;
    v43 = brainCopy;
    v27 = brainCopy;
    v28 = messageCopy;
    v29 = nameCopy;
    [v23 purge:v10 completion:v40];
  }

  else
  {
    if (v21)
    {
      v30 = @"nil";
      *buf = 138412802;
      if (v10)
      {
        v30 = v10;
      }

      v46 = nameCopy;
      v47 = 2112;
      v48 = v30;
      v49 = 2112;
      v50 = messageCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "client %@ requested MobileAssetBrain update with options:\n%@\nraw message:%@", buf, 0x20u);
    }

    v23 = +[MABrainUpdater sharedInstance];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __57__ControlManager_handleUpdateMABrain_message_clientName___block_invoke_2081;
    v36[3] = &unk_4B5538;
    v24 = &v37;
    v25 = &v38;
    v37 = nameCopy;
    v38 = messageCopy;
    v26 = &v39;
    v39 = brainCopy;
    v31 = brainCopy;
    v32 = messageCopy;
    v33 = nameCopy;
    [v23 update:v10 completion:v36];
  }
}

void __57__ControlManager_handleUpdateMABrain_message_clientName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = @"success";
    if (v3)
    {
      v6 = v3;
    }

    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "client %@ request of MobileAssetBrain purge completed with %@", &v12, 0x16u);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v8 = reply;
  if (v3 && reply)
  {
    addObjectToMessage();
    v9 = *(a1 + 48);
    v10 = v8;
    v11 = 2;
  }

  else
  {
    v9 = *(a1 + 48);
    if (!v8)
    {
      sendClientResponse(v9, *(a1 + 40), 2);
      goto LABEL_11;
    }

    v10 = v8;
    v11 = 0;
  }

  sendReply(v9, v10, v11);
LABEL_11:
}

void __57__ControlManager_handleUpdateMABrain_message_clientName___block_invoke_2081(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _MADLog(@"Brain");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = @"success";
    if (v3)
    {
      v6 = v3;
    }

    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "client %@ request of MobileAssetBrain update completed with %@", &v12, 0x16u);
  }

  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v8 = reply;
  if (v3 && reply)
  {
    addObjectToMessage();
    v9 = *(a1 + 48);
    v10 = v8;
    v11 = 2;
  }

  else
  {
    v9 = *(a1 + 48);
    if (!v8)
    {
      sendClientResponse(v9, *(a1 + 40), 2);
      goto LABEL_11;
    }

    v10 = v8;
    v11 = 0;
  }

  sendReply(v9, v10, v11);
LABEL_11:
}

- (int64_t)handleInstallAsset:(id)asset forType:(id)type
{
  assetCopy = asset;
  typeCopy = type;
  v7 = [[NSURL alloc] initWithString:assetCopy];
  v8 = v7;
  if (v7)
  {
    lastPathComponent = [v7 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

    v11 = [v8 URLByAppendingPathComponent:@"Info.plist"];
    v12 = [v8 URLByAppendingPathComponent:@"AssetData"];
    path = [v11 path];
    v14 = [NSDictionary dictionaryWithContentsOfFile:path];

    if (v14 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v15 = objc_claimAutoreleasedReturnValue(), [v12 path], v90 = v12, v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "fileExistsAtPath:", v16), v16, v12 = v90, v15, (v17 & 1) != 0))
    {
      v18 = [v14 objectForKey:@"MobileAssetProperties"];
      if (v18)
      {
        v19 = v18;
        v20 = getAssetIdFromDict(typeCopy, v18);
        v94 = 0;
        AppBooleanValue = _MAPreferencesGetAppBooleanValue(@"BypassAssetIDChecks", &v94);
        if (v94)
        {
          v22 = AppBooleanValue == 0;
        }

        else
        {
          v22 = 1;
        }

        v23 = !v22;
        v94 = v23;
        v88 = v20;
        v89 = v19;
        v87 = v11;
        if (v20)
        {
          if ([v20 isEqual:stringByDeletingPathExtension])
          {
            goto LABEL_36;
          }

          v24 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543874;
            v96 = stringByDeletingPathExtension;
            v97 = 2114;
            v98 = v8;
            v99 = 2114;
            v100 = v20;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Asset that is being installed has different asset ID when looking at its Info.plist: %{public}@ in %{public}@ generates ID %{public}@ when looking at its Info.plist.", buf, 0x20u);
          }

          IsInternalAllowed = _MAPreferencesIsInternalAllowed();
          v26 = 0;
          v27 = 2;
          if (IsInternalAllowed)
          {
            v28 = 0;
            v29 = 0;
            if (v94)
            {
              v30 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
LABEL_34:
                _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Internal build detected, not enforcing Asset ID checks.", buf, 2u);
                goto LABEL_35;
              }

              goto LABEL_35;
            }

            goto LABEL_54;
          }
        }

        else
        {
          v36 = _MADLog(@"V2Control");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v96 = stringByDeletingPathExtension;
            v97 = 2114;
            v98 = v8;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Asset that could not determine an asset ID from Info.plist: %{public}@ in %{public}@", buf, 0x16u);
          }

          v37 = _MAPreferencesIsInternalAllowed();
          v26 = 0;
          v27 = 2;
          if (v37)
          {
            v28 = 0;
            v29 = 0;
            if (v94)
            {
              v30 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                goto LABEL_34;
              }

LABEL_35:

              v19 = v89;
LABEL_36:
              if (typeCopy)
              {
                v93 = 0;
                v38 = [[MADAutoAssetDescriptor alloc] initForAssetType:typeCopy fromMetadata:v19 invalidReasons:&v93];
                v39 = v93;
                if (v38 && !v39)
                {
                  v85 = v38;
                  v40 = repositoryPath(typeCopy);
                  v41 = getAutoLocalUrlFromTypeGivenDefaultRepoWithPurpose(typeCopy, 1, v40, @"auto");

                  path2 = [v41 path];
                  v43 = ensureDirectory(path2);

                  lastPathComponent2 = [v8 lastPathComponent];
                  v45 = [v41 URLByAppendingPathComponent:lastPathComponent2];

                  v46 = +[NSFileManager defaultManager];
                  path3 = [v8 path];
                  v83 = v45;
                  path4 = [v45 path];
                  v91 = 0;
                  [v46 moveItemAtPath:path3 toPath:path4 error:&v91];
                  v49 = v91;

                  if (v49)
                  {
                    v50 = _MADLog(@"V2Control");
                    v51 = v49;
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                    {
                      path5 = [v8 path];
                      path6 = [v83 path];
                      v54 = [v49 description];
                      v55 = __error();
                      v56 = strerror(*v55);
                      *buf = 138544130;
                      v96 = path5;
                      v97 = 2114;
                      v98 = path6;
                      v99 = 2114;
                      v100 = v54;
                      v101 = 2082;
                      v102 = v56;
                      _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "Unable to move directory from %{public}@ to %{public}@ with error: %{public}@ | Errno: %{public}s", buf, 0x2Au);

                      v51 = v49;
                    }

                    v57 = +[NSFileManager defaultManager];
                    path7 = [v83 path];
                    [v57 removeItemAtPath:path7 error:0];

                    v28 = 0;
                    v27 = 2;
                    v12 = v90;
                    v26 = v83;
                    v29 = v85;
                  }

                  else
                  {
                    if (_MAPreferencesIsInternalAllowed())
                    {
                      v29 = v85;
                      [MADAutoAssetControlManager installAutoAssetWithDescriptor:v85];
                      v28 = 0;
                      v27 = 0;
                      v12 = v90;
                    }

                    else
                    {
                      v28 = 0;
                      v27 = 0;
                      v12 = v90;
                      v29 = v85;
                    }

                    v26 = v83;
                  }

                  goto LABEL_54;
                }

                v82 = v39;
              }

              else
              {
                v38 = 0;
                v82 = 0;
              }

              v86 = v38;
              v59 = _MADLog(@"V2Control");
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v96 = v82;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "Unable to create auto asset descriptor from asset with reason: %{public}@ | Assuming V2 Asset.", buf, 0xCu);
              }

              v60 = [NSURL alloc];
              v61 = repositoryPath(typeCopy);
              v62 = [v60 initWithString:v61];
              v63 = normalizedAssetType(typeCopy);
              v64 = [v62 URLByAppendingPathComponent:v63];

              path8 = [v64 path];
              v66 = ensureDirectory(path8);

              lastPathComponent3 = [v8 lastPathComponent];
              v68 = [v64 URLByAppendingPathComponent:lastPathComponent3];

              v69 = +[NSFileManager defaultManager];
              path9 = [v8 path];
              v84 = v68;
              path10 = [v68 path];
              v92 = 0;
              [v69 moveItemAtPath:path9 toPath:path10 error:&v92];
              v72 = v92;

              if (v72)
              {
                v73 = _MADLog(@"V2Control");
                v74 = v72;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
                {
                  path11 = [v8 path];
                  path12 = [v84 path];
                  v77 = [v72 description];
                  v78 = __error();
                  v79 = strerror(*v78);
                  *buf = 138544130;
                  v96 = path11;
                  v97 = 2114;
                  v98 = path12;
                  v99 = 2114;
                  v100 = v77;
                  v101 = 2082;
                  v102 = v79;
                  _os_log_impl(&dword_0, v73, OS_LOG_TYPE_DEFAULT, "Unable to move directory from %{public}@ to %{public}@ with error: %{public}@ | Errno: %{public}s", buf, 0x2Au);

                  v74 = v72;
                }

                v80 = +[NSFileManager defaultManager];
                path13 = [v84 path];
                [v80 removeItemAtPath:path13 error:0];

                v27 = 2;
                v12 = v90;
                v26 = v84;
              }

              else
              {
                v27 = 0;
                v12 = v90;
                v26 = v84;
              }

              v29 = v86;
              v28 = v82;
            }

LABEL_54:

            goto LABEL_25;
          }
        }

        v28 = 0;
        v29 = 0;
        goto LABEL_54;
      }

      v31 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Got malformed asset attributes when reading info plist", buf, 2u);
      }
    }

    else
    {
      v31 = _MADLog(@"V2Control");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        [v11 path];
        v33 = v32 = v12;
        path14 = [v32 path];
        *buf = 138544130;
        v96 = v8;
        v97 = 2114;
        v98 = v14;
        v99 = 2114;
        v100 = v33;
        v101 = 2114;
        v102 = path14;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "Got a malformed asset when reading %{public}@, cleaning up. plist: %{public}@, infoPlistPath: %{public}@, assetDataPath: %{public}@", buf, 0x2Au);

        v12 = v32;
      }
    }
  }

  else
  {
    stringByDeletingPathExtension = _MADLog(@"V2Control");
    if (os_log_type_enabled(stringByDeletingPathExtension, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v96 = assetCopy;
      _os_log_impl(&dword_0, stringByDeletingPathExtension, OS_LOG_TYPE_DEFAULT, "unable to create NSURL from path: %{public}@", buf, 0xCu);
    }
  }

  v27 = 2;
LABEL_25:

  return v27;
}

- (void)handleSecureMABundleCommand:(id)command message:(id)message clientName:(id)name
{
  commandCopy = command;
  messageCopy = message;
  nameCopy = name;
  v10 = +[NSMutableDictionary dictionary];
  uint64 = xpc_dictionary_get_uint64(messageCopy, "SecureMobileAssetBundleCommand");
  v86 = +[NSMutableArray array];
  v12 = xpc_dictionary_get_BOOL(messageCopy, "SecureMobileAssetBundleOptionStageManifest");
  v83 = xpc_dictionary_get_BOOL(messageCopy, "SecureMobileAssetBundleOptionDarwinOnly");
  v13 = xpc_dictionary_get_BOOL(messageCopy, "SecureMobileAssetDisableEarlyBootGraft");
  string = xpc_dictionary_get_string(messageCopy, "SecureMobileAssetBundleOptionPath");
  if (string)
  {
    v15 = [NSString stringWithUTF8String:string];
    v16 = v15;
    if (uint64 == 7 || v15 && [v15 length])
    {
LABEL_5:
      v17 = xpc_dictionary_get_dictionary(messageCopy, "SecureMobileAssetBundleOptionScpParametersOverride");
      if (v17)
      {
        v18 = _CFXPCCreateCFObjectFromXPCObject();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(__CFString *)v10 setObject:v18 forKeyedSubscript:@"scpParametersOverride"];
        }
      }

      length = 0;
      data = xpc_dictionary_get_data(messageCopy, "SecureMobileAssetBundleOptionSSO", &length);
      v20 = 0;
      if (data && length)
      {
        v20 = [NSData dataWithBytes:data length:?];
      }

      v82 = v16;
      [(__CFString *)v10 setObject:v20 forKeyedSubscript:@"ssoToken"];
      if (v12)
      {
        [(__CFString *)v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"stageManifest"];
      }

      v21 = commandCopy;
      v78 = v12;
      if (![(__CFString *)v10 count])
      {

        v10 = 0;
      }

      xpc_dictionary_get_array(messageCopy, "SecureMobileAssetBundleOptionSelectors");
      v80 = v20;
      v84 = v81 = v17;
      v77 = v13;
      if (v84)
      {
        v22 = _CFXPCCreateCFObjectFromXPCObject();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v74 = nameCopy;
          v75 = messageCopy;
          v76 = v21;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          obj = v22;
          v23 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
          v24 = v22;
          if (v23)
          {
            v25 = v23;
            v26 = *v95;
            v73 = v10;
            while (2)
            {
              for (i = 0; i != v25; i = i + 1)
              {
                if (*v95 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v94 + 1) + 8 * i);
                v29 = [v28 componentsSeparatedByString:@":"];
                if ([v29 count] != &dword_0 + 2)
                {
                  v49 = [NSString stringWithFormat:@"Invalid selector: %@", v28];
                  v50 = +[NSMutableDictionary dictionary];
                  [v50 setObject:v49 forKeyedSubscript:NSDebugDescriptionErrorKey];
                  [v50 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
                  v45 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-3 userInfo:v50];

                  v40 = 0;
                  messageCopy = v75;
                  commandCopy = v76;
                  v10 = v73;
                  nameCopy = v74;
                  v38 = v82;
                  goto LABEL_83;
                }

                v30 = [MAAutoAssetSelector alloc];
                [v29 objectAtIndexedSubscript:0];
                v32 = v31 = v24;
                v33 = [v29 objectAtIndexedSubscript:1];
                v34 = [v30 initForAssetType:v32 withAssetSpecifier:v33];

                v24 = v31;
                [v86 addObject:v34];
              }

              v25 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
              v10 = v73;
              if (v25)
              {
                continue;
              }

              break;
            }
          }

          messageCopy = v75;
          v21 = v76;
          nameCopy = v74;
          v22 = v24;
        }
      }

      v35 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = @"nil";
        *buf = 138413058;
        if (nameCopy)
        {
          v37 = nameCopy;
        }

        else
        {
          v37 = @"nil";
        }

        v100 = v37;
        v101 = 1024;
        if (v10)
        {
          v36 = v10;
        }

        *v102 = uint64;
        *&v102[4] = 2112;
        *&v102[6] = v36;
        *&v102[14] = 2112;
        *&v102[16] = messageCopy;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "client %@ requested Secure MobileAssetBundle command %u with options:\n%@\nraw message:%@", buf, 0x26u);
      }

      commandCopy = v21;
      v38 = v82;
      if (!v82)
      {
        v48 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "[SMA] assetPath is nil, unable to create SecureMobileAssetBundle.", buf, 2u);
        }

        v38 = 0;
        v40 = 0;
        v45 = 0;
        goto LABEL_83;
      }

      v39 = [[SecureMobileAssetBundle alloc] initWithPath:v82];
      v40 = v39;
      if (v83)
      {
        [(SecureMobileAssetBundle *)v39 setDarwinOnly:1];
      }

      v79 = uint64;
      if (uint64 > 4)
      {
        if (uint64 <= 6)
        {
          if (uint64 == 5)
          {
            v89 = 0;
            [(SecureMobileAssetBundle *)v40 mapToExclaves:&v89];
            v41 = v89;
          }

          else
          {
            v88 = 0;
            [(SecureMobileAssetBundle *)v40 unmapFromExclaves:&v88];
            v41 = v88;
          }

          goto LABEL_66;
        }

        if (uint64 == 7)
        {
          v87 = 0;
          [SecureMobileAssetBundle commitStagedManifestsForSelectors:v86 darwinOnly:v83 error:&v87];
          v41 = v87;
          goto LABEL_66;
        }

        if (uint64 == 8)
        {
          if (v78)
          {
            isPersonalizedManifestStaged = [(SecureMobileAssetBundle *)v40 isPersonalizedManifestStaged];
          }

          else
          {
            isPersonalizedManifestStaged = [(SecureMobileAssetBundle *)v40 isPersonalized];
          }

          v57 = isPersonalizedManifestStaged;
          v58 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            assetBundlePath = [(SecureMobileAssetBundle *)v40 assetBundlePath];
            lastPathComponent = [assetBundlePath lastPathComponent];
            v61 = lastPathComponent;
            v62 = "DOES NOT have";
            if (v57)
            {
              v62 = "DOES have";
            }

            *buf = 138412802;
            v100 = lastPathComponent;
            v101 = 2080;
            *v102 = v62;
            if (v78)
            {
              v63 = "staged";
            }

            else
            {
              v63 = "committed";
            }

            *&v102[8] = 2080;
            *&v102[10] = v63;
            _os_log_impl(&dword_0, v58, OS_LOG_TYPE_DEFAULT, "Secure MobleAsset bundle %@ %s a %s personalized manifest.", buf, 0x20u);

            v38 = v82;
          }

          v45 = 0;
          goto LABEL_78;
        }
      }

      else
      {
        if (uint64 > 2)
        {
          if (uint64 == 3)
          {
            v54 = objc_opt_new();
            v51 = v54;
            if (v77)
            {
              v55 = 2;
            }

            else
            {
              v55 = 0;
            }

            [v54 setFlags:v55];
            v91 = 0;
            [(SecureMobileAssetBundle *)v40 beginAccessWithOptions:v51 accessMechanismPtr:0 errorPtr:&v91];
            v52 = v91;
          }

          else
          {
            v51 = objc_opt_new();
            v90 = 0;
            [(SecureMobileAssetBundle *)v40 endAccessWithOptions:v51 accessMechanismPtr:0 errorPtr:&v90];
            v52 = v90;
          }

          v45 = v52;
          goto LABEL_68;
        }

        if (uint64 == 1)
        {
          v93 = 0;
          [(SecureMobileAssetBundle *)v40 personalize:v10 error:&v93];
          v41 = v93;
          goto LABEL_66;
        }

        if (uint64 == 2)
        {
          v92 = 0;
          [(SecureMobileAssetBundle *)v40 depersonalize:&v92];
          v41 = v92;
LABEL_66:
          v45 = v41;
LABEL_78:
          v64 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v65 = stringForSecureMABundleCommand(v79);
            v66 = v65;
            v67 = @"success";
            *buf = 138412802;
            v100 = nameCopy;
            if (v45)
            {
              v67 = v45;
            }

            v101 = 2112;
            *v102 = v65;
            *&v102[8] = 2112;
            *&v102[10] = v67;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_DEFAULT, "client %@ request of Secure MobileAsset command %@ completed with %@", buf, 0x20u);
          }

LABEL_83:
          v47 = v80;
          v46 = v81;
          goto LABEL_84;
        }
      }

      v51 = [NSString stringWithFormat:@"Invalid or unknown SecureMobileAssetBundle command"];
      v56 = +[NSMutableDictionary dictionary];
      [v56 setObject:v51 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v56 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v45 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-2 userInfo:v56];

      v38 = v82;
LABEL_68:

      goto LABEL_78;
    }
  }

  else
  {
    v16 = 0;
    if (uint64 == 7)
    {
      goto LABEL_5;
    }
  }

  v42 = [NSString stringWithFormat:@"Invalid or missing SecureMobileAssetBundle argument"];
  +[NSMutableDictionary dictionary];
  v44 = v43 = v16;
  [v44 setObject:v42 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v44 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v45 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-3 userInfo:v44];

  v38 = v43;
  v40 = 0;
  v84 = 0;
  v46 = 0;
  v47 = 0;
LABEL_84:
  reply = xpc_dictionary_create_reply(messageCopy);
  v69 = reply;
  if (v45 && reply)
  {
    addObjectToMessage();
    v70 = commandCopy;
    v71 = v69;
    v72 = 2;
  }

  else
  {
    v70 = commandCopy;
    if (!v69)
    {
      sendClientResponse(commandCopy, messageCopy, 2);
      goto LABEL_90;
    }

    v71 = v69;
    v72 = 0;
  }

  sendReply(v70, v71, v72);
LABEL_90:
}

+ (id)getStringFromXpcMessage:(id)message forKey:(const char *)key
{
  string = xpc_dictionary_get_string(message, key);
  if (string)
  {
    string = [NSString stringWithUTF8String:string];
  }

  return string;
}

- (void)activityNotification:(id)notification ofStatusChange:(unint64_t)change withReason:(id)reason
{
  reasonCopy = reason;
  notificationCopy = notification;
  v9 = [NSString alloc];
  v11 = [MADActivityTracker nameOfStatus:change];
  reasonCopy = [v9 initWithFormat:@"received statusChange(%@) reason:%@", v11, reasonCopy];

  [MADActivityManager noticeForActivity:notificationCopy reason:reasonCopy];
}

@end