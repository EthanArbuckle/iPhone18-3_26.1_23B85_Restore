@interface PLIndicatorFileCoordinator
+ (BOOL)systemLibraryAvailableIndicatorState;
+ (void)setSystemLibraryAvailableIndicatorState:(BOOL)a3;
- (BOOL)_canSetPauseMarkerWithUnpauseTime:(id)a3 onPauseData:(id)a4;
- (BOOL)clearPauseMarkerForReason:(signed __int16)a3;
- (BOOL)hasItemToDownload;
- (BOOL)isDisableICloudPhotos;
- (BOOL)isEnableICloudPhotos;
- (BOOL)isForceSoftResetSync;
- (BOOL)isICloudPhotosPaused;
- (BOOL)isRebuildingAssetResourceUploadJobConfiguration;
- (BOOL)isRebuildingPersons;
- (BOOL)isRebuildingSocialGroups;
- (BOOL)isStreamsLibraryUpdatingExpired;
- (BOOL)isWipeCPLOnOpen;
- (BOOL)needsRecoveryAfterCrashOptionallyRemoveAllIndicatorFiles:(BOOL)a3;
- (PLIndicatorFileCoordinator)initWithPathManager:(id)a3;
- (PLIndicatorFileCoordinator)initWithResourceHoldingDirectoryPath:(id)a3;
- (id)_readPListWithFilename:(id)a3;
- (id)_rebuildingAssetResourceUploadJobConfigurationIndicatorFilePath;
- (id)_rebuildingPersonsIndicatorFilePath;
- (id)_rebuildingSocialGroupsIndicatorFilePath;
- (id)unpauseTime;
- (signed)currentPauseReason;
- (void)_createPauseMarkerForReason:(signed __int16)a3 withUnpauseTime:(id)a4 withPath:(id)a5;
- (void)_setActivityIndicatorWithPath:(id)a3 flag:(BOOL)a4 uuid:(id)a5 crashRecovery:(id)a6;
- (void)_writeDict:(id)a3 withFilename:(id)a4;
- (void)clearWipeCPLOnOpen;
- (void)createPauseMarkerWithUnpauseTime:(id)a3 reason:(signed __int16)a4;
- (void)dealloc;
- (void)deleteCPLDownloadFinishedMarkerFilePath;
- (void)forceSoftResetSync;
- (void)getDownloadPhotoCount:(unint64_t *)a3 downloadVideoCount:(unint64_t *)a4;
- (void)logCloudServiceEnableEvent:(BOOL)a3 serviceName:(id)a4 reason:(id)a5;
- (void)setCreatingAssetIsBusy:(BOOL)a3 uuid:(id)a4;
- (void)setDownloadCountsForImages:(unint64_t)a3 videos:(unint64_t)a4;
- (void)setImageWriter:(id)a3 isBusy:(BOOL)a4 crashRecoverySupport:(id)a5;
- (void)setIsRebuildingAssetResourceUploadJobConfiguration:(BOOL)a3;
- (void)setIsRebuildingPersons:(BOOL)a3;
- (void)setIsRebuildingSocialGroups:(BOOL)a3;
- (void)setStreamsLibraryUpdatingExpired:(BOOL)a3;
- (void)setTakingPhotoIsBusy:(BOOL)a3;
- (void)setWipeCPLOnOpen;
- (void)updateICloudPhotosMarkerForEnable:(BOOL)a3;
- (void)writeDisableICloudPhotosMarker;
- (void)writeEnableICloudPhotosMarker;
@end

@implementation PLIndicatorFileCoordinator

- (void)logCloudServiceEnableEvent:(BOOL)a3 serviceName:(id)a4 reason:(id)a5
{
  v6 = a3;
  v37 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(PLPhotoLibraryPathManager *)self->_pathManager cloudServiceEnableLogFileURL];
  v28 = 0;
  v11 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:0 error:&v28];
  v12 = v28;
  if (!v11)
  {
    if (!PLIsErrorFileNotFound())
    {
      v18 = PLBackendGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v30 = v6;
        v31 = 2114;
        v32 = v8;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Couldn't read enable event log, enabled: %d, type: %{public}@ path: %@, error: %@", buf, 0x26u);
      }

      v15 = 0;
      v21 = 0;
      goto LABEL_28;
    }

    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!v15)
    {
      goto LABEL_29;
    }

LABEL_17:
    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v6];
    [v18 setObject:v19 forKeyedSubscript:@"enabled"];

    [v18 setObject:v8 forKeyedSubscript:@"type"];
    [v18 setObject:v9 forKeyedSubscript:@"reason"];
    v20 = [MEMORY[0x1E695DF00] date];
    [v18 setObject:v20 forKeyedSubscript:@"timestamp"];

    [v15 addObject:v18];
    v26 = 0;
    v21 = [MEMORY[0x1E696AE40] dataWithPropertyList:v15 format:200 options:0 error:&v26];
    v22 = v26;

    if (v21)
    {
      v25 = v22;
      v23 = [v21 writeToURL:v10 options:0 error:&v25];
      v12 = v25;

      if (v23)
      {
LABEL_28:

        v11 = v21;
        goto LABEL_29;
      }

      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v30 = v6;
        v31 = 2114;
        v32 = v8;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Couldn't write enable event log, enabled: %d, type: %{public}@ path: %@, error: %@", buf, 0x26u);
      }

      v22 = v12;
    }

    else
    {
      v24 = PLBackendGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        v30 = v6;
        v31 = 2114;
        v32 = v8;
        v33 = 2112;
        v34 = v10;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Couldn't encode enable event log, enabled: %d, type: %{public}@ path: %@, error: %@", buf, 0x26u);
      }
    }

    v12 = v22;
    goto LABEL_28;
  }

  v27 = 0;
  v13 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:&v27];
  v14 = v27;

  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v13 mutableCopy];

      goto LABEL_14;
    }

    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      *buf = 67109890;
      v30 = v6;
      v31 = 2114;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      v35 = 2114;
      v36 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Couldn't decode enable event log, enabled: %d, type: %{public}@ path: %@, error: unexpected type: %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109890;
      v30 = v6;
      v31 = 2114;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Couldn't decode enable event log, enabled: %d, type: %{public}@ path: %@, error: %@", buf, 0x26u);
    }
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_14:
  if ([v15 count] >= 0x64)
  {
    [v15 removeObjectsInRange:{0, 50}];
  }

  v12 = v14;
  if (v15)
  {
    goto LABEL_17;
  }

LABEL_29:
}

- (BOOL)isRebuildingAssetResourceUploadJobConfiguration
{
  v2 = [(PLIndicatorFileCoordinator *)self _rebuildingAssetResourceUploadJobConfigurationIndicatorFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (void)setIsRebuildingAssetResourceUploadJobConfiguration:(BOOL)a3
{
  v3 = [(PLIndicatorFileCoordinator *)self _rebuildingAssetResourceUploadJobConfigurationIndicatorFilePath];
  PLMakeIndicatorFileExistAtPath();
}

- (id)_rebuildingAssetResourceUploadJobConfigurationIndicatorFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:6];
  v3 = [v2 stringByAppendingPathComponent:@"rebuildingassetresourceuploadjobconfiguration"];

  return v3;
}

- (BOOL)isRebuildingSocialGroups
{
  v2 = [(PLIndicatorFileCoordinator *)self _rebuildingSocialGroupsIndicatorFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (void)setIsRebuildingSocialGroups:(BOOL)a3
{
  v3 = [(PLIndicatorFileCoordinator *)self _rebuildingSocialGroupsIndicatorFilePath];
  PLMakeIndicatorFileExistAtPath();
}

- (id)_rebuildingSocialGroupsIndicatorFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:6];
  v3 = [v2 stringByAppendingPathComponent:@"rebuildingsocialgroups"];

  return v3;
}

- (BOOL)isRebuildingPersons
{
  v2 = [(PLIndicatorFileCoordinator *)self _rebuildingPersonsIndicatorFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (void)setIsRebuildingPersons:(BOOL)a3
{
  v3 = [(PLIndicatorFileCoordinator *)self _rebuildingPersonsIndicatorFilePath];
  PLMakeIndicatorFileExistAtPath();
}

- (id)_rebuildingPersonsIndicatorFilePath
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:6];
  v3 = [v2 stringByAppendingPathComponent:@"rebuildingpersons"];

  return v3;
}

- (BOOL)isStreamsLibraryUpdatingExpired
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager privateCacheDirectoryWithSubType:9];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (void)setStreamsLibraryUpdatingExpired:(BOOL)a3
{
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager privateCacheDirectoryWithSubType:9];
  PLMakeIndicatorFileExistAtPath();
}

- (void)setDownloadCountsForImages:(unint64_t)a3 videos:(unint64_t)a4
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ((PLIsAssetsd() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:462 description:@"Must be run in assetsd"];
  }

  v12[0] = @"CountKeyImages";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v12[1] = @"CountKeyVideos";
  v13[0] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v13[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [(PLIndicatorFileCoordinator *)self _writeDict:v10 withFilename:@"DownloadCounts.plist"];
}

- (void)getDownloadPhotoCount:(unint64_t *)a3 downloadVideoCount:(unint64_t *)a4
{
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:452 description:{@"Invalid parameter not satisfying: %@", @"downloadPhotoCount"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  [v11 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:453 description:{@"Invalid parameter not satisfying: %@", @"downloadVideoCount"}];

LABEL_3:
  v12 = [(PLIndicatorFileCoordinator *)self _readPListWithFilename:@"DownloadCounts.plist"];
  v8 = [v12 objectForKeyedSubscript:@"CountKeyImages"];
  *a3 = [v8 unsignedIntegerValue];

  v9 = [v12 objectForKeyedSubscript:@"CountKeyVideos"];
  *a4 = [v9 unsignedIntegerValue];
}

- (BOOL)hasItemToDownload
{
  if ((PLIsAssetsd() & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:443 description:@"Must be run in assetsd"];
  }

  v4 = [(PLIndicatorFileCoordinator *)self _readPListWithFilename:@"DownloadCounts.plist"];
  v5 = [v4 objectForKeyedSubscript:@"CountKeyImages"];
  if ([v5 unsignedIntegerValue])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:@"CountKeyVideos"];
    v6 = [v7 unsignedIntegerValue] != 0;
  }

  return v6;
}

- (void)_writeDict:(id)a3 withFilename:(id)a4
{
  pathManager = self->_pathManager;
  v6 = a4;
  v7 = a3;
  v11 = [(PLPhotoLibraryPathManager *)pathManager cplDataDirectoryCreateIfNeeded:1];
  v8 = MEMORY[0x1E695DFF8];
  v9 = [v11 stringByAppendingPathComponent:v6];

  v10 = [v8 fileURLWithPath:v9 isDirectory:0];

  [v7 writeToURL:v10 atomically:1];
}

- (id)_readPListWithFilename:(id)a3
{
  pathManager = self->_pathManager;
  v4 = a3;
  v5 = [(PLPhotoLibraryPathManager *)pathManager cplDataDirectoryCreateIfNeeded:0];
  v6 = [v5 stringByAppendingPathComponent:v4];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 fileExistsAtPath:v6];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v6];

    v7 = v10;
  }

  return v7;
}

- (void)clearWipeCPLOnOpen
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager wipeCPLOnOpenPath];
  PLMakeIndicatorFileExistAtPath();
}

- (void)setWipeCPLOnOpen
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager wipeCPLOnOpenPath];
  PLMakeIndicatorFileExistAtPath();
}

- (BOOL)isWipeCPLOnOpen
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager wipeCPLOnOpenPath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (void)forceSoftResetSync
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager forceSoftResetSyncPath];
  PLMakeIndicatorFileExistAtPath();
}

- (BOOL)isForceSoftResetSync
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager forceSoftResetSyncPath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (signed)currentPauseReason
{
  if (![(PLIndicatorFileCoordinator *)self isICloudPhotosPaused])
  {
    return 0;
  }

  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager pauseICloudPhotosFilePath];
  v4 = [(PLIndicatorFileCoordinator *)self _pauseDataOnPath:v3];
  v5 = [v4 objectForKey:@"reason"];
  v6 = [v5 intValue];

  return v6;
}

- (id)unpauseTime
{
  if ([(PLIndicatorFileCoordinator *)self isICloudPhotosPaused])
  {
    v3 = [(PLPhotoLibraryPathManager *)self->_pathManager pauseICloudPhotosFilePath];
    v4 = [(PLIndicatorFileCoordinator *)self _pauseDataOnPath:v3];
    v5 = [v4 objectForKey:@"unpauseTime"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)createPauseMarkerWithUnpauseTime:(id)a3 reason:(signed __int16)a4
{
  v4 = a4;
  pathManager = self->_pathManager;
  v7 = a3;
  v8 = [(PLPhotoLibraryPathManager *)pathManager pauseICloudPhotosFilePath];
  [(PLIndicatorFileCoordinator *)self _createPauseMarkerForReason:v4 withUnpauseTime:v7 withPath:v8];
}

- (void)_createPauseMarkerForReason:(signed __int16)a3 withUnpauseTime:(id)a4 withPath:(id)a5
{
  v6 = a3;
  v15 = a4;
  v8 = a5;
  v9 = [(PLIndicatorFileCoordinator *)self _pauseDataOnPath:v8];
  v10 = [v9 mutableCopy];

  if (v10)
  {
    if (![(PLIndicatorFileCoordinator *)self _canSetPauseMarkerWithUnpauseTime:v15 onPauseData:v10])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  [v10 setObject:v15 forKey:@"unpauseTime"];
  v11 = [MEMORY[0x1E696AD98] numberWithShort:v6];
  [v10 setObject:v11 forKey:@"reason"];

  v12 = [MEMORY[0x1E696AE40] dataWithPropertyList:v10 format:100 options:0 error:0];
  [v12 writeToFile:v8 options:1073741825 error:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v14 = &PhotoLibraryUserPauseNotification;
  if (v6 != 3)
  {
    v14 = &PhotoLibraryPauseNotification;
  }

  CFNotificationCenterPostNotification(DarwinNotifyCenter, *v14, 0, 0, 0);

LABEL_8:
}

- (BOOL)_canSetPauseMarkerWithUnpauseTime:(id)a3 onPauseData:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [a4 objectForKey:@"unpauseTime"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 compare:v5] == -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)clearPauseMarkerForReason:(signed __int16)a3
{
  v3 = a3;
  v14 = *MEMORY[0x1E69E9840];
  v5 = [(PLPhotoLibraryPathManager *)self->_pathManager pauseICloudPhotosFilePath];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v6 fileExistsAtPath:v5])
  {
    if (v3 == 3 || ![(PLIndicatorFileCoordinator *)self isUserPause])
    {
      v11 = 0;
      [v6 removeItemAtPath:v5 error:&v11];
      v8 = v11;
      v7 = v8 == 0;
      if (v8)
      {
        v9 = PLBackendGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v13 = v8;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to remove pauseMarker file %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)updateICloudPhotosMarkerForEnable:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  if ([(PLIndicatorFileCoordinator *)self isForceSoftResetSync])
  {
    v5 = [(PLPhotoLibraryPathManager *)self->_pathManager forceSoftResetSyncPath];
    PLMakeIndicatorFileExistAtPath();
  }

  if ([(PLIndicatorFileCoordinator *)self isEnableICloudPhotos])
  {
    v6 = [(PLPhotoLibraryPathManager *)self->_pathManager enableICloudPhotosFilePath];
    PLMakeIndicatorFileExistAtPath();
  }

  if ([(PLIndicatorFileCoordinator *)self isDisableICloudPhotos])
  {
    v7 = [(PLPhotoLibraryPathManager *)self->_pathManager disableICloudPhotosFilePath];
    PLMakeIndicatorFileExistAtPath();
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [(PLPhotoLibraryPathManager *)self->_pathManager cplEnableMarkerFilePath];
  v10 = [v8 fileExistsAtPath:v9];
  v11 = v10;
  if (v3)
  {
    v12 = PLBackendGetLog();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 138412290;
        v25 = v9;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%@ already exist", buf, 0xCu);
      }

      goto LABEL_25;
    }

    if (v13)
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "writing %@", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E695DF00] date];
    v16 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v16 setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
    v17 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    [v16 setLocale:v17];

    v18 = [v16 stringFromDate:v12];
    v23 = 0;
    v19 = [v18 writeToFile:v9 atomically:1 encoding:4 error:&v23];
    v20 = v23;

    if ((v19 & 1) == 0)
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v25 = v9;
        v26 = 2112;
        v27 = v20;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "failed to write %@: %@", buf, 0x16u);
      }
    }

LABEL_24:
LABEL_25:

    goto LABEL_26;
  }

  if (v10)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v9;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "removing %@", buf, 0xCu);
    }

    v22 = 0;
    v15 = [v8 removeItemAtPath:v9 error:&v22];
    v12 = v22;
    if (v15)
    {
      goto LABEL_25;
    }

    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "failed to remove %@: %@", buf, 0x16u);
    }

    goto LABEL_24;
  }

LABEL_26:
}

- (void)writeEnableICloudPhotosMarker
{
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager enableICloudPhotosFilePath];
  PLMakeIndicatorFileExistAtPath();
  if ([(PLIndicatorFileCoordinator *)self isDisableICloudPhotos])
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Found disable marker when enabling iCPL", v5, 2u);
    }
  }

  [(PLIndicatorFileCoordinator *)self deleteCPLDownloadFinishedMarkerFilePath];
}

- (void)writeDisableICloudPhotosMarker
{
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager disableICloudPhotosFilePath];
  PLMakeIndicatorFileExistAtPath();
  if ([(PLIndicatorFileCoordinator *)self isEnableICloudPhotos])
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Removing stale enable marker as we are disabling iCPL", v6, 2u);
    }

    v5 = [(PLPhotoLibraryPathManager *)self->_pathManager enableICloudPhotosFilePath];
    PLMakeIndicatorFileExistAtPath();
  }
}

- (void)deleteCPLDownloadFinishedMarkerFilePath
{
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [(PLPhotoLibraryPathManager *)self->_pathManager cplDownloadFinishedMarkerFilePath];
  if ([v4 fileExistsAtPath:v3])
  {
    PLMakeIndicatorFileExistAtPath();
  }
}

- (BOOL)isICloudPhotosPaused
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager pauseICloudPhotosFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (BOOL)isDisableICloudPhotos
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager disableICloudPhotosFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (BOOL)isEnableICloudPhotos
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager enableICloudPhotosFilePath];
  v3 = PLDoesIndicatorFileExistAtPath();

  return v3;
}

- (BOOL)needsRecoveryAfterCrashOptionallyRemoveAllIndicatorFiles:(BOOL)a3
{
  v3 = a3;
  v27[3] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E69BF168] takingVideoIndicatorFilePath];
  v27[0] = v5;
  v6 = [MEMORY[0x1E69BF168] takingPhotoIndicatorFilePath];
  v27[1] = v6;
  v7 = [(PLPhotoLibraryPathManager *)self->_pathManager privateDirectoryWithSubType:1];
  v27[2] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v21;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = open([v15 fileSystemRepresentation], 36);
        if ((v16 & 0x80000000) == 0)
        {
          v17 = v16;
          v18 = PLAssetImportGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v25 = v15;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Photo library needs recovery after crash because of indicator file %@", buf, 0xCu);
          }

          if (!v3)
          {
            close(v17);
            v12 = 1;
            goto LABEL_16;
          }

          unlink([v15 fileSystemRepresentation]);
          close(v17);
          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v26 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_16:

  return v12 & 1;
}

- (void)setImageWriter:(id)a3 isBusy:(BOOL)a4 crashRecoverySupport:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if ((PLIsAssetsd() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:150 description:@"only called by assetsd"];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"imageWriter"}];

    goto LABEL_3;
  }

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [(PLPhotoLibraryPathManager *)self->_pathManager privateDirectoryWithSubType:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PLIndicatorFileCoordinator_setImageWriter_isBusy_crashRecoverySupport___block_invoke;
  v16[3] = &unk_1E7578848;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  [(PLIndicatorFileCoordinator *)self _setActivityIndicatorWithPath:v11 flag:v6 uuid:0 crashRecovery:v16];
}

uint64_t __73__PLIndicatorFileCoordinator_setImageWriter_isBusy_crashRecoverySupport___block_invoke(uint64_t a1)
{
  v2 = PLAssetImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Initiating crash recovery if needed", v4, 2u);
  }

  return [*(a1 + 32) recoverFromCrashIfNeededWithImageWriter:*(a1 + 40)];
}

- (void)setCreatingAssetIsBusy:(BOOL)a3 uuid:(id)a4
{
  v4 = a3;
  v8 = a4;
  resourceHoldingDirectoryPath = self->_resourceHoldingDirectoryPath;
  if (resourceHoldingDirectoryPath)
  {
    v7 = [(NSString *)resourceHoldingDirectoryPath stringByAppendingPathComponent:@"creatingasset"];
  }

  else
  {
    v7 = 0;
  }

  [(PLIndicatorFileCoordinator *)self _setActivityIndicatorWithPath:v7 flag:v4 uuid:v8 crashRecovery:&__block_literal_global_41287];
}

- (void)setTakingPhotoIsBusy:(BOOL)a3
{
  v3 = a3;
  if (PLIsAssetsd())
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLIndicatorFileCoordinator.m" lineNumber:127 description:@"only called by processes that is not assetsd"];
  }

  v6 = [MEMORY[0x1E69BF168] takingPhotoIndicatorFilePath];
  v7 = [(PLPhotoLibraryPathManager *)self->_pathManager libraryURL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PLIndicatorFileCoordinator_setTakingPhotoIsBusy___block_invoke;
  v10[3] = &unk_1E75781E8;
  v11 = v7;
  v8 = v7;
  [(PLIndicatorFileCoordinator *)self _setActivityIndicatorWithPath:v6 flag:v3 uuid:0 crashRecovery:v10];
}

void __51__PLIndicatorFileCoordinator_setTakingPhotoIsBusy___block_invoke(uint64_t a1)
{
  v2 = PLAssetImportGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Sending crash recovery request to assetsd", v5, 2u);
  }

  v3 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:*(a1 + 32)];
  v4 = [v3 libraryClient];
  [v4 recoverFromCrashIfNeeded];
}

- (void)_setActivityIndicatorWithPath:(id)a3 flag:(BOOL)a4 uuid:(id)a5 crashRecovery:(id)a6
{
  v8 = a3;
  v12 = a5;
  v13 = a6;
  v9 = v13;
  v10 = v12;
  v11 = v8;
  PLSafeRunWithUnfairLock();
}

void __84__PLIndicatorFileCoordinator__setActivityIndicatorWithPath_flag_uuid_crashRecovery___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (*(a1 + 64) != 1)
  {
    if ((v2 & 0x80000000) == 0)
    {
      unlink([*(a1 + 40) fileSystemRepresentation]);
      close(*(*(a1 + 32) + 16));
      *(*(a1 + 32) + 16) = -1;
      return;
    }

    v3 = PLAssetImportGetLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v4 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
    v12 = *(a1 + 48);
    *buf = 138412546;
    *v38 = v4;
    *&v38[8] = 2114;
    *&v38[10] = v12;
    v6 = "%@ [%{public}@] activity indicator already cleared";
    goto LABEL_13;
  }

  if ((v2 & 0x80000000) == 0)
  {
    v3 = PLAssetImportGetLog();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
LABEL_14:

      return;
    }

    v4 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
    v5 = *(a1 + 48);
    *buf = 138412546;
    *v38 = v4;
    *&v38[8] = 2114;
    *&v38[10] = v5;
    v6 = "%@ [%{public}@] activity indicator already set";
LABEL_13:
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, v6, buf, 0x16u);

    goto LABEL_14;
  }

  *(*(a1 + 32) + 16) = open([*(a1 + 40) fileSystemRepresentation], 2721, 438);
  if ((*(*(a1 + 32) + 16) & 0x80000000) == 0)
  {
    value = -1;
    v7 = setxattr([*(a1 + 40) UTF8String], "com.apple.runningboard.can-suspend-locked", &value, 1uLL, 0, 0);
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

    v8 = v7;
    v3 = PLBackendGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
      v10 = *(a1 + 48);
      v11 = strerror(v8);
      *buf = 138412802;
      *v38 = v9;
      *&v38[8] = 2114;
      *&v38[10] = v10;
      *&v38[18] = 2082;
      *v39 = v11;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "Failed to set extended attributes on path: %@ [%{public}@] with error: %{public}s", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v13 = PLAssetImportGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
    v15 = *(a1 + 48);
    v16 = __error();
    v17 = strerror(*v16);
    v18 = *__error();
    *buf = 138413058;
    *v38 = v14;
    *&v38[8] = 2114;
    *&v38[10] = v15;
    *&v38[18] = 2080;
    *v39 = v17;
    *&v39[8] = 1024;
    v40[0] = v18;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "%@ [%{public}@] activity indicator couldn't be set: %s (%d). Recovering...", buf, 0x26u);
  }

  v19 = *(a1 + 56);
  if (v19)
  {
    (*(v19 + 16))();
  }

  if ((*(*(a1 + 32) + 16) & 0x80000000) != 0)
  {
    for (i = -2; i != 118; ++i)
    {
      if (i < 0x73)
      {
        v21 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v21 = OS_LOG_TYPE_ERROR;
      }

      v22 = PLAssetImportGetLog();
      if (os_log_type_enabled(v22, v21))
      {
        v23 = __error();
        v24 = strerror(*v23);
        v25 = *__error();
        v26 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
        v27 = *(a1 + 48);
        *buf = 67110146;
        *v38 = i + 3;
        *&v38[4] = 2080;
        *&v38[6] = v24;
        *&v38[14] = 1024;
        *&v38[16] = v25;
        *v39 = 2112;
        *&v39[2] = v26;
        LOWORD(v40[0]) = 2114;
        *(v40 + 2) = v27;
        _os_log_impl(&dword_19BF1F000, v22, v21, "Will retry creating activity indicator after delay [%d]: %s (%d) %@ [%{public}@]", buf, 0x2Cu);
      }

      sleep(1u);
      *(*(a1 + 32) + 16) = open([*(a1 + 40) fileSystemRepresentation], 2721, 438);
      if ((*(*(a1 + 32) + 16) & 0x80000000) == 0)
      {
        return;
      }
    }

    v28 = PLAssetImportGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = __error();
      v30 = strerror(*v29);
      v31 = *__error();
      v32 = [MEMORY[0x1E69BF220] descriptionWithPath:*(a1 + 40)];
      v33 = *(a1 + 48);
      *buf = 67110146;
      *v38 = 120;
      *&v38[4] = 2080;
      *&v38[6] = v30;
      *&v38[14] = 1024;
      *&v38[16] = v31;
      *v39 = 2112;
      *&v39[2] = v32;
      LOWORD(v40[0]) = 2114;
      *(v40 + 2) = v33;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Failed to create activity indicator file after %d attempts. Giving up: %s (%d) %@ [%{public}@]", buf, 0x2Cu);
    }

    v34 = PFCrashWithErrno();
    [(PLIndicatorFileCoordinator *)v34 dealloc];
  }
}

- (void)dealloc
{
  activityIndicatorFid = self->_activityIndicatorFid;
  if (activityIndicatorFid != -1)
  {
    close(activityIndicatorFid);
    self->_activityIndicatorFid = -1;
  }

  v4.receiver = self;
  v4.super_class = PLIndicatorFileCoordinator;
  [(PLIndicatorFileCoordinator *)&v4 dealloc];
}

- (PLIndicatorFileCoordinator)initWithResourceHoldingDirectoryPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLIndicatorFileCoordinator;
  v6 = [(PLIndicatorFileCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_activityIndicatorFid = 0xFFFFFFFFLL;
    objc_storeStrong(&v6->_resourceHoldingDirectoryPath, a3);
  }

  return v7;
}

- (PLIndicatorFileCoordinator)initWithPathManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLIndicatorFileCoordinator;
  v6 = [(PLIndicatorFileCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathManager, a3);
    *&v7->_activityIndicatorFid = 0xFFFFFFFFLL;
  }

  return v7;
}

+ (BOOL)systemLibraryAvailableIndicatorState
{
  v2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v3 = [v2 privateCacheDirectoryWithSubType:8];

  LOBYTE(v2) = PLDoesIndicatorFileExistAtPath();
  return v2;
}

+ (void)setSystemLibraryAvailableIndicatorState:(BOOL)a3
{
  v3 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
  v4 = [v3 privateCacheDirectoryWithSubType:8];

  PLMakeIndicatorFileExistAtPath();
}

@end