@interface _PASAsset2
- (BOOL)_loadDefaultBundleVersionWithGuardedData:(id)data;
- (BOOL)overrideDefaultBundleWithBundleAtPath:(id)path;
- (BOOL)updateAssetMetadataUsingQueryResults:(id)results;
- (NSString)assetType;
- (NSString)bundlePath;
- (_PASAsset2)initWithAssetTypeDescriptorPath:(id)path defaultBundlePath:(id)bundlePath matchingKeysAndValues:(id)values notificationQueue:(id)queue logHandle:(id)handle enableAssetUpdates:(BOOL)updates purgeObsoleteInstalledAssets:(BOOL)assets;
- (id)_assetDescription;
- (id)_defaultBundleFilesystemPathsForAssetDataRelativePaths:(id)paths guardedData:(id)data assetVersion:(unint64_t *)version;
- (id)_initWithAssetTypeIdentifier:(id)identifier defaultBundlePath:(id)path compatibilityVersion:(unint64_t)version matchingKeysAndValues:(id)values notificationQueue:(id)queue logHandle:(id)handle enableAssetUpdates:(BOOL)updates purgeObsoleteInstalledAssets:(BOOL)self0;
- (id)_maFilesystemPathsForAssetDataRelativePaths:(id)paths guardedData:(id)data isMissingData:(BOOL *)missingData assetVersion:(unint64_t *)version;
- (id)filesystemPathForAssetDataRelativePath:(id)path assetVersion:(unint64_t *)version;
- (id)filesystemPathsForAssetDataRelativePaths:(id)paths assetVersion:(unint64_t *)version;
- (id)registerUpdateHandler:(id)handler;
- (unint64_t)assetVersion;
- (unint64_t)bestAssetVersionObserved;
- (void)_issueUpdateNotificationsWithCallback:(id)callback;
- (void)_purgeObsoleteInstalledAssetsFromCandidates:(id)candidates guardedData:(id)data;
- (void)_updateAssetMetadata;
- (void)addOverridePath:(id)path forResourceWithRelativePath:(id)relativePath;
- (void)callAssetUpdateHandlers;
- (void)dealloc;
- (void)downloadMetadataWithCompletion:(id)completion;
- (void)invokeWithBundleOverride:(id)override block:(id)block;
@end

@implementation _PASAsset2

- (unint64_t)assetVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26___PASAsset2_assetVersion__block_invoke;
  v5[3] = &unk_1E77F2B80;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_updateAssetMetadata
{
  v24 = *MEMORY[0x1E69E9840];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_INFO))
  {
    v4 = logHandle;
    _assetDescription = [(_PASAsset2 *)self _assetDescription];
    *buf = 138412290;
    v21 = _assetDescription;
    _os_log_impl(&dword_1A7F47000, v4, OS_LOG_TYPE_INFO, "Updating MobileAsset version information for %@", buf, 0xCu);
  }

  v6 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:self->_assetTypeIdentifier];
  [v6 returnTypes:2];
  [v6 setDoNotBlockOnNetworkStatus:1];
  requiredMobileAssetProperties = self->_requiredMobileAssetProperties;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __34___PASAsset2__updateAssetMetadata__block_invoke;
  v18[3] = &unk_1E77F2BF8;
  v8 = v6;
  v19 = v8;
  [(NSDictionary *)requiredMobileAssetProperties enumerateKeysAndObjectsUsingBlock:v18];
  queryMetaDataSync = [v8 queryMetaDataSync];
  results = [v8 results];
  v11 = self->_logHandle;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = v11;
    v17 = [results count];
    *buf = 134218240;
    v21 = queryMetaDataSync;
    v22 = 2048;
    v23 = v17;
    _os_log_debug_impl(&dword_1A7F47000, v16, OS_LOG_TYPE_DEBUG, "MobileAsset query completed with status code %ld; number of results: %lu", buf, 0x16u);
  }

  if ([results count])
  {
    results2 = [v8 results];
    [(_PASAsset2 *)self updateAssetMetadataUsingQueryResults:results2];
LABEL_7:

    goto LABEL_11;
  }

  if (!queryMetaDataSync)
  {
    v13 = self->_logHandle;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      results2 = v13;
      _assetDescription2 = [(_PASAsset2 *)self _assetDescription];
      *buf = 138412290;
      v21 = _assetDescription2;
      _os_log_impl(&dword_1A7F47000, results2, OS_LOG_TYPE_DEFAULT, "Warning: MobileAsset metadata query for %@ completed successfully, but nil or empty results returned.", buf, 0xCu);

      goto LABEL_7;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)callAssetUpdateHandlers
{
  v3 = dispatch_semaphore_create(0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37___PASAsset2_callAssetUpdateHandlers__block_invoke;
  v5[3] = &unk_1E77F2DA0;
  v6 = v3;
  v4 = v3;
  [(_PASAsset2 *)self _issueUpdateNotificationsWithCallback:v5];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)addOverridePath:(id)path forResourceWithRelativePath:(id)relativePath
{
  pathCopy = path;
  relativePathCopy = relativePath;
  v9 = relativePathCopy;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:837 description:{@"Invalid parameter not satisfying: %@", @"path"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:838 description:{@"Invalid parameter not satisfying: %@", @"relativePath"}];

    goto LABEL_3;
  }

  if (!relativePathCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58___PASAsset2_addOverridePath_forResourceWithRelativePath___block_invoke;
  v15[3] = &unk_1E77F2D58;
  v16 = v9;
  v17 = pathCopy;
  v11 = pathCopy;
  v12 = v9;
  [(_PASLock *)lock runWithLockAcquired:v15];
}

- (void)invokeWithBundleOverride:(id)override block:(id)block
{
  overrideCopy = override;
  blockCopy = block;
  bundlePath = [(_PASAsset2 *)self bundlePath];
  [(_PASAsset2 *)self overrideDefaultBundleWithBundleAtPath:overrideCopy];
  dispatch_sync(self->_notificationQueue, &__block_literal_global_397_4123);
  blockCopy[2](blockCopy);
  [(_PASAsset2 *)self overrideDefaultBundleWithBundleAtPath:bundlePath];
  dispatch_sync(self->_notificationQueue, &__block_literal_global_399);
}

- (NSString)bundlePath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4125;
  v10 = __Block_byref_object_dispose__4126;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __24___PASAsset2_bundlePath__block_invoke;
  v5[3] = &unk_1E77F2B80;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)overrideDefaultBundleWithBundleAtPath:(id)path
{
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52___PASAsset2_overrideDefaultBundleWithBundleAtPath___block_invoke;
  v8[3] = &unk_1E77F2CE0;
  v6 = pathCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v8];
  [(_PASAsset2 *)self _issueUpdateNotificationsWithCallback:0];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

- (void)_issueUpdateNotificationsWithCallback:(id)callback
{
  v19 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52___PASAsset2__issueUpdateNotificationsWithCallback___block_invoke;
  v10[3] = &unk_1E77F2B80;
  v10[4] = &v11;
  [(_PASLock *)lock runWithLockAcquired:v10];
  v6 = self->_logHandle;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v12[3];
    _assetDescription = [(_PASAsset2 *)self _assetDescription];
    *buf = 134218242;
    v16 = v7;
    v17 = 2112;
    v18 = _assetDescription;
    _os_log_impl(&dword_1A7F47000, v6, OS_LOG_TYPE_DEFAULT, "MAAsset version %lu for %@ is now installed. Issuing notification.", buf, 0x16u);
  }

  [(_PASNotificationTracker *)self->_updateNotificationTracker issueNotificationAsyncWithContext:self callback:callbackCopy];
  _Block_object_dispose(&v11, 8);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_purgeObsoleteInstalledAssetsFromCandidates:(id)candidates guardedData:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  candidatesCopy = candidates;
  dataCopy = data;
  if (dataCopy[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __70___PASAsset2__purgeObsoleteInstalledAssetsFromCandidates_guardedData___block_invoke;
    v33[3] = &unk_1E77F2D08;
    v33[4] = self;
    v8 = MEMORY[0x1AC566DD0](v33);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v24 = candidatesCopy;
    obj = candidatesCopy;
    v9 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      selfCopy = self;
      v12 = *v30;
      v25 = v8;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          attributes = [v14 attributes];
          v17 = [attributes objectForKeyedSubscript:@"_ContentVersion"];

          if (v17 && [v17 unsignedIntegerValue] < dataCopy[3] && (v8)[2](v8, v14))
          {
            logHandle = selfCopy->_logHandle;
            if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
            {
              v19 = logHandle;
              [(_PASAsset2 *)selfCopy _assetDescription];
              v20 = dataCopy;
              v22 = v21 = selfCopy;
              *buf = 138412546;
              v35 = v22;
              v36 = 2112;
              v37 = v17;
              _os_log_impl(&dword_1A7F47000, v19, OS_LOG_TYPE_DEFAULT, "Requesting purge of installed MAAsset %@ with obsolete version %@.", buf, 0x16u);

              selfCopy = v21;
              dataCopy = v20;
              v8 = v25;
            }

            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = __70___PASAsset2__purgeObsoleteInstalledAssetsFromCandidates_guardedData___block_invoke_394;
            v27[3] = &unk_1E77F2D30;
            v27[4] = selfCopy;
            v28 = v17;
            [v14 purge:v27];
          }

          objc_autoreleasePoolPop(v15);
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v10);
    }

    candidatesCopy = v24;
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateAssetMetadataUsingQueryResults:(id)results
{
  resultsCopy = results;
  if (!resultsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"results"}];
  }

  v6 = objc_autoreleasePoolPush();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke;
  v23[3] = &unk_1E77F2C48;
  v23[4] = self;
  v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v23];
  v8 = [resultsCopy filteredArrayUsingPredicate:v7];

  objc_autoreleasePoolPop(v6);
  v9 = [v8 sortedArrayUsingComparator:&__block_literal_global_4127];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  lock = self->_lock;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51___PASAsset2_updateAssetMetadataUsingQueryResults___block_invoke_2;
  v15[3] = &unk_1E77F2CE0;
  v11 = v9;
  v16 = v11;
  selfCopy = self;
  v18 = &v19;
  [(_PASLock *)lock runWithLockAcquired:v15];
  if (*(v20 + 24) == 1)
  {
    [(_PASAsset2 *)self _issueUpdateNotificationsWithCallback:0];
    v12 = *(v20 + 24);
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v12 & 1;
}

- (id)filesystemPathForAssetDataRelativePath:(id)path assetVersion:(unint64_t *)version
{
  v14[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:557 description:{@"Invalid parameter not satisfying: %@", @"relativePath"}];
  }

  v14[0] = pathCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v9 = [(_PASAsset2 *)self filesystemPathsForAssetDataRelativePaths:v8 assetVersion:version];

  v10 = [v9 objectForKeyedSubscript:pathCopy];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)filesystemPathsForAssetDataRelativePaths:(id)paths assetVersion:(unint64_t *)version
{
  pathsCopy = paths;
  if (!pathsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"relativePaths"}];
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4125;
  v22 = __Block_byref_object_dispose__4126;
  v23 = 0;
  lock = self->_lock;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68___PASAsset2_filesystemPathsForAssetDataRelativePaths_assetVersion___block_invoke;
  v14[3] = &unk_1E77F2BD0;
  v16 = &v18;
  v14[4] = self;
  v9 = pathsCopy;
  v15 = v9;
  versionCopy = version;
  [(_PASLock *)lock runWithLockAcquired:v14];
  if ([v9 count])
  {
    v10 = [v19[5] count];
    if (version)
    {
      if (!v10)
      {
        *version = 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (id)_defaultBundleFilesystemPathsForAssetDataRelativePaths:(id)paths guardedData:(id)data assetVersion:(unint64_t *)version
{
  v47 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  dataCopy = data;
  v10 = dataCopy;
  if (version)
  {
    *version = dataCopy[2];
  }

  v11 = dataCopy[1];
  if (v11)
  {
    v28 = v10;
    v33 = [v11 stringByAppendingPathComponent:@"AssetData"];
    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(pathsCopy, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = pathsCopy;
    obj = pathsCopy;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v32 = *v37;
      v14 = *MEMORY[0x1E695DBB0];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = [v33 stringByAppendingPathComponent:v16];
          logHandle = self->_logHandle;
          if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v41 = v17;
            _os_log_debug_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_DEBUG, "Checking for readable default bundle asset file at path: %@", buf, 0xCu);
          }

          v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v17];
          v34 = 0;
          v35 = 0;
          [v19 getResourceValue:&v35 forKey:v14 error:&v34];
          v20 = v35;
          v21 = v34;
          bOOLValue = [v20 BOOLValue];
          v23 = self->_logHandle;
          if (bOOLValue)
          {
            if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v41 = v17;
              _os_log_debug_impl(&dword_1A7F47000, v23, OS_LOG_TYPE_DEBUG, "Verified that default bundle asset path was readable: %@", buf, 0xCu);
            }

            [v30 setObject:v17 forKeyedSubscript:v16];
          }

          else if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEFAULT))
          {
            v24 = v23;
            _assetDescription = [(_PASAsset2 *)self _assetDescription];
            *buf = 138412802;
            v41 = _assetDescription;
            v42 = 2112;
            v43 = v17;
            v44 = 2112;
            v45 = v21;
            _os_log_impl(&dword_1A7F47000, v24, OS_LOG_TYPE_DEFAULT, "Default bundle asset for %@ has missing or unreadable file at path: %@. Error: %@", buf, 0x20u);
          }
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v13);
    }

    v10 = v28;
    pathsCopy = v29;
  }

  else
  {
    v30 = 0;
  }

  v26 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_maFilesystemPathsForAssetDataRelativePaths:(id)paths guardedData:(id)data isMissingData:(BOOL *)missingData assetVersion:(unint64_t *)version
{
  v57 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  dataCopy = data;
  v12 = dataCopy;
  missingDataCopy = missingData;
  *missingData = 0;
  if (version)
  {
    *version = dataCopy[3];
  }

  v13 = dataCopy[5];
  if (v13)
  {
    getLocalUrl = [v13 getLocalUrl];
    path = [getLocalUrl path];

    logHandle = self->_logHandle;
    v43 = path;
    if (path)
    {
      v37 = v12;
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
      {
        v33 = logHandle;
        _assetDescription = [(_PASAsset2 *)self _assetDescription];
        *buf = 138412546;
        v51 = _assetDescription;
        v52 = 2112;
        v53 = v43;
        _os_log_debug_impl(&dword_1A7F47000, v33, OS_LOG_TYPE_DEBUG, "Attempting to use installed MAAsset for %@ at path: %@", buf, 0x16u);
      }

      v40 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(pathsCopy, "count")}];
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v38 = pathsCopy;
      obj = pathsCopy;
      v17 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v17)
      {
        v18 = v17;
        v42 = *v47;
        v19 = *MEMORY[0x1E695DBB0];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v46 + 1) + 8 * i);
            v22 = [v43 stringByAppendingPathComponent:{v21, v37}];
            v23 = self->_logHandle;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v51 = v22;
              _os_log_debug_impl(&dword_1A7F47000, v23, OS_LOG_TYPE_DEBUG, "Checking for readable MAAsset file at path: %@", buf, 0xCu);
            }

            v24 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v22];
            v44 = 0;
            v45 = 0;
            [v24 getResourceValue:&v45 forKey:v19 error:&v44];
            v25 = v45;
            v26 = v44;
            bOOLValue = [v25 BOOLValue];
            v28 = self->_logHandle;
            if (bOOLValue)
            {
              if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v51 = v22;
                _os_log_debug_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_DEBUG, "Verified that MAAsset path was readable: %@", buf, 0xCu);
              }

              [v40 setObject:v22 forKeyedSubscript:v21];
            }

            else
            {
              if (os_log_type_enabled(self->_logHandle, OS_LOG_TYPE_DEFAULT))
              {
                v29 = v28;
                _assetDescription2 = [(_PASAsset2 *)self _assetDescription];
                *buf = 138412802;
                v51 = _assetDescription2;
                v52 = 2112;
                v53 = v22;
                v54 = 2112;
                v55 = v26;
                _os_log_impl(&dword_1A7F47000, v29, OS_LOG_TYPE_DEFAULT, "MAAsset for %@ has missing or unreadable file at path: %@. Error: %@", buf, 0x20u);
              }

              *missingDataCopy = 1;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v46 objects:v56 count:16];
        }

        while (v18);
      }

      v12 = v37;
      pathsCopy = v38;
    }

    else
    {
      if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
      {
        v35 = logHandle;
        _assetDescription3 = [(_PASAsset2 *)self _assetDescription];
        *buf = 138412290;
        v51 = _assetDescription3;
        _os_log_error_impl(&dword_1A7F47000, v35, OS_LOG_TYPE_ERROR, "MobileAsset reports asset available for %@ but local URL is nil.", buf, 0xCu);
      }

      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v31 = *MEMORY[0x1E69E9840];

  return v40;
}

- (id)registerUpdateHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:391 description:{@"Invalid parameter not satisfying: %@", @"handler"}];
  }

  v6 = [(_PASNotificationTracker *)self->_updateNotificationTracker registerWithQueue:self->_notificationQueue handler:handlerCopy];

  return v6;
}

- (BOOL)_loadDefaultBundleVersionWithGuardedData:(id)data
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dataCopy[2] = 0x7FFFFFFFFFFFFFFFLL;
  v5 = dataCopy[1];
  if (!v5)
  {
    goto LABEL_48;
  }

  v6 = [v5 stringByAppendingPathComponent:@"Info.plist"];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v6];
  if (!v7)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_FAULT))
    {
      v28 = dataCopy[1];
      *buf = 138412546;
      v48 = @"Info.plist";
      v49 = 2112;
      v50 = v28;
      _os_log_fault_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_FAULT, "Unable to load %@ for default bundle at %@.", buf, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_50;
    }

LABEL_24:

    goto LABEL_25;
  }

  v8 = v7;
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(NSString *)self->_assetTypeIdentifier isEqualToString:v9])
  {
    v22 = self->_logHandle;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v26 = dataCopy[1];
      assetTypeIdentifier = self->_assetTypeIdentifier;
      *buf = 138412802;
      v48 = v26;
      v49 = 2112;
      v50 = assetTypeIdentifier;
      v51 = 2112;
      v52 = v9;
      _os_log_fault_impl(&dword_1A7F47000, v22, OS_LOG_TYPE_FAULT, "Default bundle at %@ has incorrect bundle identifier (expected %@, actual %@)", buf, 0x20u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_50;
    }

    goto LABEL_20;
  }

  v10 = [v8 objectForKeyedSubscript:@"MobileAssetProperties"];
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v25 = self->_logHandle;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v31 = dataCopy[1];
      *buf = 138412290;
      v48 = v31;
      _os_log_fault_impl(&dword_1A7F47000, v25, OS_LOG_TYPE_FAULT, "Default bundle at %@ has missing or ill-formatted MobileAssetProperties property.", buf, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_50;
    }

    goto LABEL_33;
  }

  v11 = [v10 objectForKeyedSubscript:@"_ContentVersion"];
  if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v29 = self->_logHandle;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_31;
    }

    v34 = dataCopy[1];
    *buf = 138412290;
    v48 = v34;
    v33 = "Default bundle at %@ has missing or ill-formatted _ContentVersion property.";
    goto LABEL_41;
  }

  if (([v11 intValue] & 0x80000000) != 0)
  {
    v29 = self->_logHandle;
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_31;
    }

    v32 = dataCopy[1];
    *buf = 138412290;
    v48 = v32;
    v33 = "Default bundle at %@ has invalid _ContentVersion property.";
LABEL_41:
    _os_log_fault_impl(&dword_1A7F47000, v29, OS_LOG_TYPE_FAULT, v33, buf, 0xCu);
LABEL_31:
    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_50;
    }

LABEL_32:

LABEL_33:
LABEL_20:

    goto LABEL_24;
  }

  v12 = [v10 objectForKeyedSubscript:@"_CompatibilityVersion"];
  if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v30 = self->_logHandle;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      v43 = dataCopy[1];
      *buf = 138412290;
      v48 = v43;
      _os_log_fault_impl(&dword_1A7F47000, v30, OS_LOG_TYPE_FAULT, "Default bundle at %@ has missing or ill-formatted _CompatibilityVersion property.", buf, 0xCu);
    }

    goto LABEL_36;
  }

  if ([v12 unsignedIntegerValue] != self->_compatibilityVersion)
  {
    v35 = self->_logHandle;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      v36 = dataCopy[1];
      v37 = v35;
      unsignedIntegerValue = [v12 unsignedIntegerValue];
      compatibilityVersion = self->_compatibilityVersion;
      *buf = 138412802;
      v48 = v36;
      v49 = 2048;
      v50 = unsignedIntegerValue;
      v51 = 2048;
      v52 = compatibilityVersion;
      _os_log_fault_impl(&dword_1A7F47000, v37, OS_LOG_TYPE_FAULT, "Default bundle at %@ declares unexpected compatibility version %lu (expected %lu)", buf, 0x20u);
    }

LABEL_36:
    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      goto LABEL_50;
    }

    goto LABEL_32;
  }

  v13 = [dataCopy[1] stringByAppendingPathComponent:@"AssetData"];
  v46 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v45 = v13;
  v15 = [defaultManager fileExistsAtPath:v13 isDirectory:&v46];
  v16 = (v15 & v46);

  if (v16)
  {
    dataCopy[2] = [v11 unsignedIntegerValue];
    v17 = self->_logHandle;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      _assetDescription = [(_PASAsset2 *)self _assetDescription];
      v21 = dataCopy[1];
      v20 = dataCopy[2];
      *buf = 138412802;
      v48 = _assetDescription;
      v49 = 2048;
      v50 = v20;
      v51 = 2112;
      v52 = v21;
      _os_log_impl(&dword_1A7F47000, v18, OS_LOG_TYPE_DEFAULT, "Loaded default bundle for %@ with version %tu from path: %@", buf, 0x20u);
    }

    goto LABEL_47;
  }

  v40 = self->_logHandle;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    v44 = dataCopy[1];
    *buf = 138412290;
    v48 = v44;
    _os_log_fault_impl(&dword_1A7F47000, v40, OS_LOG_TYPE_FAULT, "Default bundle at %@ is missing the AssetData subdirectory.", buf, 0xCu);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
LABEL_50:
    abort();
  }

LABEL_47:

  if (v16)
  {
LABEL_48:
    v24 = 1;
    goto LABEL_49;
  }

LABEL_25:
  v24 = 0;
LABEL_49:

  v41 = *MEMORY[0x1E69E9840];
  return v24;
}

- (unint64_t)bestAssetVersionObserved
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38___PASAsset2_bestAssetVersionObserved__block_invoke;
  v5[3] = &unk_1E77F2B80;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_assetDescription
{
  if (self->_requiredMobileAssetProperties)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSDictionary count](self->_requiredMobileAssetProperties, "count")}];
    requiredMobileAssetProperties = self->_requiredMobileAssetProperties;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31___PASAsset2__assetDescription__block_invoke;
    v10[3] = &unk_1E77F2BA8;
    v11 = v4;
    v6 = v4;
    [(NSDictionary *)requiredMobileAssetProperties enumerateKeysAndObjectsUsingBlock:v10];
    v7 = [v6 _pas_componentsJoinedByString:@"-"];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%@]", self->_assetTypeIdentifier, v7];

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v8 = self->_assetTypeIdentifier;
  }

  return v8;
}

- (NSString)assetType
{
  if ([(NSString *)self->_assetTypeIdentifier isEqualToString:@"com.apple.MobileAsset.ProactiveSupport.BrokenAssetTypeDescriptor"])
  {
    assetTypeIdentifier = 0;
  }

  else
  {
    assetTypeIdentifier = self->_assetTypeIdentifier;
  }

  return assetTypeIdentifier;
}

- (void)downloadMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  assetType = [(_PASAsset2 *)self assetType];
  v6 = assetType;
  if (!assetType)
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      _os_log_error_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_ERROR, "Unable to download catalog because asset type descriptor is unknown.", &v9, 2u);
      if (!completionCopy)
      {
        goto LABEL_6;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_6;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_6;
  }

  v7 = MEMORY[0x1E69B18D8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __45___PASAsset2_downloadMetadataWithCompletion___block_invoke;
  v10[3] = &unk_1E77F2B58;
  v10[4] = self;
  v11 = assetType;
  v12 = completionCopy;
  [v7 startCatalogDownload:v11 then:v10];

LABEL_6:
}

- (void)dealloc
{
  metadataNotificationToken = self->_metadataNotificationToken;
  if ((metadataNotificationToken & 0x80000000) == 0)
  {
    notify_cancel(metadataNotificationToken);
  }

  installNotificationToken = self->_installNotificationToken;
  if ((installNotificationToken & 0x80000000) == 0)
  {
    notify_cancel(installNotificationToken);
  }

  v5.receiver = self;
  v5.super_class = _PASAsset2;
  [(_PASAsset2 *)&v5 dealloc];
}

- (id)_initWithAssetTypeIdentifier:(id)identifier defaultBundlePath:(id)path compatibilityVersion:(unint64_t)version matchingKeysAndValues:(id)values notificationQueue:(id)queue logHandle:(id)handle enableAssetUpdates:(BOOL)updates purgeObsoleteInstalledAssets:(BOOL)self0
{
  v68 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  pathCopy = path;
  valuesCopy = values;
  queueCopy = queue;
  handleCopy = handle;
  if (!identifierCopy)
  {
    v51 = queueCopy;
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:185 description:{@"Invalid parameter not satisfying: %@", @"assetTypeIdentifier"}];

    queueCopy = v51;
  }

  v55 = queueCopy;
  if (queueCopy)
  {
    if (handleCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"notificationQueue", 0}];

    if (handleCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"logHandle"}];

LABEL_5:
  v65.receiver = self;
  v65.super_class = _PASAsset2;
  v20 = [(_PASAsset2 *)&v65 init];
  if (v20)
  {
    v21 = objc_opt_new();
    v22 = [pathCopy copy];
    v23 = *(v21 + 8);
    *(v21 + 8) = v22;

    *(v21 + 48) = assets;
    objc_storeStrong(&v20->_defaultBundlePathBackup, *(v21 + 8));
    v24 = [identifierCopy copy];
    assetTypeIdentifier = v20->_assetTypeIdentifier;
    v20->_assetTypeIdentifier = v24;

    v20->_compatibilityVersion = version;
    if (valuesCopy)
    {
      v26 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:valuesCopy copyItems:1];
    }

    else
    {
      v26 = 0;
    }

    requiredMobileAssetProperties = v20->_requiredMobileAssetProperties;
    v20->_requiredMobileAssetProperties = v26;

    objc_storeStrong(&v20->_notificationQueue, queue);
    objc_storeStrong(&v20->_logHandle, handle);
    v28 = objc_opt_new();
    updateNotificationTracker = v20->_updateNotificationTracker;
    v20->_updateNotificationTracker = v28;

    v30 = [[_PASLock alloc] initWithGuardedData:v21];
    lock = v20->_lock;
    v20->_lock = v30;

    v32 = v20->_lock;
    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke;
    v63[3] = &unk_1E77F2B08;
    v33 = v20;
    v64 = v33;
    [(_PASLock *)v32 runWithLockAcquired:v63];
    if (updates)
    {
      v34 = [(NSString *)v20->_assetTypeIdentifier stringByAppendingString:@".ma.new-asset-installed"];
      objc_initWeak(&location, v33);
      v35 = v34;
      uTF8String = [v34 UTF8String];
      notificationQueue = v20->_notificationQueue;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke_2;
      handler[3] = &unk_1E77F2B30;
      objc_copyWeak(&v61, &location);
      v38 = notify_register_dispatch(uTF8String, v33 + 12, notificationQueue, handler);
      if (v38)
      {
        v33[12] = -1;
        logHandle = v20->_logHandle;
        if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v67 = v38;
          _os_log_error_impl(&dword_1A7F47000, logHandle, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
        }
      }

      v40 = [(NSString *)v20->_assetTypeIdentifier stringByAppendingString:@".ma.cached-metadata-updated"];
      v41 = v40;
      uTF8String2 = [v40 UTF8String];
      v43 = v20->_notificationQueue;
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __180___PASAsset2__initWithAssetTypeIdentifier_defaultBundlePath_compatibilityVersion_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke_354;
      v58[3] = &unk_1E77F2B30;
      objc_copyWeak(&v59, &location);
      v44 = notify_register_dispatch(uTF8String2, v33 + 13, v43, v58);
      if (v44)
      {
        v33[13] = -1;
        v45 = v20->_logHandle;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v67 = v44;
          _os_log_error_impl(&dword_1A7F47000, v45, OS_LOG_TYPE_ERROR, "notify_register_dispatch error: %lu", buf, 0xCu);
        }
      }

      [v33 _updateAssetMetadata];
      objc_destroyWeak(&v59);

      objc_destroyWeak(&v61);
      objc_destroyWeak(&location);
    }

    else
    {
      v46 = v20->_logHandle;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = v46;
        _assetDescription = [v33 _assetDescription];
        *buf = 138412290;
        v67 = _assetDescription;
        _os_log_impl(&dword_1A7F47000, v47, OS_LOG_TYPE_DEFAULT, "Via unit testing override, MobileAsset asset loading has been disabled: %@", buf, 0xCu);
      }
    }
  }

  v49 = *MEMORY[0x1E69E9840];
  return v20;
}

- (_PASAsset2)initWithAssetTypeDescriptorPath:(id)path defaultBundlePath:(id)bundlePath matchingKeysAndValues:(id)values notificationQueue:(id)queue logHandle:(id)handle enableAssetUpdates:(BOOL)updates purgeObsoleteInstalledAssets:(BOOL)assets
{
  v61 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  bundlePathCopy = bundlePath;
  valuesCopy = values;
  queueCopy = queue;
  handleCopy = handle;
  if (pathCopy)
  {
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"assetTypeDescriptorPath"}];

    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_PASAsset2.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"notificationQueue"}];

LABEL_3:
  v21 = MEMORY[0x1E69E9C10];
  if (handleCopy)
  {
    v21 = handleCopy;
  }

  v22 = v21;

  v56 = 0;
  v23 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:pathCopy options:0 error:&v56];
  v24 = v56;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __162___PASAsset2_initWithAssetTypeDescriptorPath_defaultBundlePath_matchingKeysAndValues_notificationQueue_logHandle_enableAssetUpdates_purgeObsoleteInstalledAssets___block_invoke;
  v49[3] = &unk_1E77F2AE0;
  selfCopy = self;
  v50 = selfCopy;
  v46 = bundlePathCopy;
  v51 = v46;
  v26 = valuesCopy;
  v52 = v26;
  v27 = queueCopy;
  v53 = v27;
  v28 = v22;
  v54 = v28;
  assetsCopy = assets;
  v29 = MEMORY[0x1AC566DD0](v49);
  v47 = selfCopy;
  if (!v23)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412546;
      v58 = pathCopy;
      v59 = 2112;
      v60 = v24;
      _os_log_fault_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_FAULT, "Could not read asset type descriptor %@: %@", buf, 0x16u);
    }

    if (!_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      v37 = v29[2](v29);
      v31 = v24;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  updatesCopy = updates;
  v48 = 0;
  v30 = [MEMORY[0x1E696AE40] propertyListWithData:v23 options:0 format:0 error:&v48];
  v31 = v48;

  if (!v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [v30 objectForKeyedSubscript:@"Asset Type"];
      if (v32)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v32 length])
          {
            v33 = [v30 objectForKeyedSubscript:@"Supported Compatibility Version"];
            v44 = v33;
            if (v33 && (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v34 integerValue] & 0x8000000000000000) == 0)
            {
              v43 = v30;
              v35 = [v30 objectForKeyedSubscript:@"Uniquely Identifying Keys"];
              v36 = [v35 count];

              if ([v26 count] && !v36 && os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v58 = pathCopy;
                _os_log_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_DEFAULT, "Warning: asset type descriptor %@ has no Uniquely Identifying Keys, but usage suggests that it should.", buf, 0xCu);
              }

              BYTE1(v42) = assets;
              LOBYTE(v42) = updatesCopy;
              v37 = -[_PASAsset2 _initWithAssetTypeIdentifier:defaultBundlePath:compatibilityVersion:matchingKeysAndValues:notificationQueue:logHandle:enableAssetUpdates:purgeObsoleteInstalledAssets:](v47, "_initWithAssetTypeIdentifier:defaultBundlePath:compatibilityVersion:matchingKeysAndValues:notificationQueue:logHandle:enableAssetUpdates:purgeObsoleteInstalledAssets:", v32, v46, [v44 unsignedIntegerValue], v26, v27, v28, v42);
              v47 = v37;
              v30 = v43;
            }

            else
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v58 = @"Supported Compatibility Version";
                v59 = 2112;
                v60 = pathCopy;
                _os_log_error_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_ERROR, "Missing or ill-formatted property %@ in asset type descriptor %@", buf, 0x16u);
              }

              v37 = v29[2](v29);
            }

            goto LABEL_33;
          }
        }
      }

      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v58 = @"Asset Type";
        v59 = 2112;
        v60 = pathCopy;
        _os_log_fault_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_FAULT, "Missing or ill-formatted property %@ in asset type descriptor %@", buf, 0x16u);
      }

      if (!_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        v37 = v29[2](v29);
LABEL_33:

        goto LABEL_23;
      }

LABEL_40:
      abort();
    }
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412546;
    v58 = pathCopy;
    v59 = 2112;
    v60 = v31;
    _os_log_fault_impl(&dword_1A7F47000, v28, OS_LOG_TYPE_FAULT, "Could not decode asset type descriptor at %@: %@", buf, 0x16u);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_40;
  }

  v37 = v29[2](v29);
LABEL_23:

LABEL_28:
  v38 = *MEMORY[0x1E69E9840];
  return v37;
}

@end