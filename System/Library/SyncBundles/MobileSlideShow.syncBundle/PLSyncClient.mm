@interface PLSyncClient
+ (void)_logRestoreContext:(id)context;
- (BOOL)prepareForSyncWithHostAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (PLSyncClient)init;
- (id)_albumURIForAlbumUUID:(id)d;
- (id)_allAssetDirectoryURLs;
- (id)_allAssetMetricBaseURLs;
- (id)_getAssetsToRestoreFromPaths:(id)paths;
- (id)_metricsForLibraryAtURL:(id)l error:(id *)error;
- (id)_neededRestoreAssets;
- (id)_onDeviceAlbumsByUUID;
- (id)_onDeviceAssetsByUUIDInLibrary:(id)library;
- (id)_pathToRestoreContext;
- (id)_photoLibraryWithExpectationExists:(BOOL)exists;
- (id)_readPhotosSyncMetadataFromPath:(id)path error:(id *)error;
- (id)_restoreGroupKeyFromATAssetFilePath:(id)path;
- (id)_restorePathsFromBackupList:(id)list;
- (id)_restorePathsFromIncompleteAssetUUIDs:(id)ds inLibrary:(id)library;
- (id)disabledAssetTypes;
- (id)installedAssetMetrics;
- (id)outstandingAssetTransfers;
- (void)_addPaths:(id)paths toRestoreContextFilesForKey:(id)key;
- (void)_batchDeleteSyncedAssetsWithReason:(id)reason subpredicate:(id)subpredicate;
- (void)_cleanupAfterSyncOrRestore;
- (void)_clearEmptySyncAlbums;
- (void)_clearPendingCounts;
- (void)_clearSyncState;
- (void)_createAlbumUUIDToObjectIDMap:(id)map;
- (void)_enqueueRemoteSyncCleanupJobBeforeDate:(id)date withFinishedBlock:(id)block;
- (void)_enqueueSyncSaveJob:(id)job;
- (void)_incrementPendingCountForContainerUUID:(id)d;
- (void)_initializeOutstandingAssets;
- (void)_persistAssetAlbumOrderStructures;
- (void)_populateRestorePathGroupsAndUpdateValidatedRestorePaths:(id)paths;
- (void)_pullOutMasterAlbumFromAlbumsAndEvents;
- (void)_reconcileAlbums:(id)albums;
- (void)_reconcileAssets:(id)assets;
- (void)_reconcileDeviceAlbumListSortingWithAlbums:(id)albums iTunesAlbumOrder:(id)order inLibrary:(id)library;
- (void)_reconcileMetadata;
- (void)_reorderAlbumListProxy:(id)proxy withAlbumsAtIndexes:(id)indexes inNewOrder:(id)order;
- (void)_restoreAssetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)_saveOrderOnSyncedAlbum:(id)album inLibrary:(id)library;
- (void)_saveOutstandingSyncJobs;
- (void)_setPendingAlbumCounts:(id)counts;
- (void)_sortATAssetsToRestore:(id)restore withUUIDPathDict:(id)dict;
- (void)_startListeningToMemoryPressureEvents;
- (void)_stopListeningToMemoryPressureEvents;
- (void)_syncAssetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)_uninitializeLibrary;
- (void)assetTransferEndedWithSuccess:(BOOL)success;
- (void)dealloc;
- (void)restoreEndedWithError:(id)error;
- (void)syncEndedWithSuccess:(BOOL)success;
@end

@implementation PLSyncClient

- (id)_albumURIForAlbumUUID:(id)d
{
  if (d)
  {
    v4 = [(NSMutableDictionary *)self->_albumUUIDToObjectIDMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_createAlbumUUIDToObjectIDMap:(id)map
{
  mapCopy = map;
  [(PLSyncClient *)self _photoLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_7798;
  v6[3] = &unk_24868;
  v7 = v6[4] = self;
  v5 = v7;
  [v5 withDispatchGroup:mapCopy performBlock:v6];
}

- (void)_restoreAssetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  context = objc_autoreleasePoolPush();
  path = [transferCopy path];
  v47 = [(PLSyncClient *)self _restoreGroupKeyFromATAssetFilePath:path];
  restoreKeyToAssetGroup = [(PLSyncClient *)self restoreKeyToAssetGroup];
  v50 = [restoreKeyToAssetGroup objectForKey:v47];

  v9 = PLSyncGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v47;
    *&buf[12] = 2114;
    *&buf[14] = v50;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Group %{public}@ -> %{public}@", buf, 0x16u);
  }

  if (succeeded)
  {
    outstandingAssets = [(PLSyncClient *)self outstandingAssets];
    [outstandingAssets removeObject:transferCopy];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    assetPairs = [v50 assetPairs];
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_8378;
    v57[3] = &unk_24BC8;
    v12 = path;
    v58 = v12;
    v59 = buf;
    [assetPairs enumerateObjectsUsingBlock:v57];

    if (*(*&buf[8] + 24))
    {
      v13 = PLSyncGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v64 = 138543362;
        v65 = v12;
        v14 = "File %{public}@ status is COMPLETE";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
LABEL_30:
        _os_log_impl(&dword_0, v15, v16, v14, v64, 0xCu);
      }
    }

    else
    {
      v13 = PLSyncGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v64 = 138543362;
        v65 = v50;
        v14 = "Failed to find file in group %{public}@ unable to mark status COMPLETE";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
        goto LABEL_30;
      }
    }

    _Block_object_dispose(buf, 8);
    goto LABEL_32;
  }

  if (errorCopy)
  {
    domain = [errorCopy domain];
    if (![domain isEqualToString:@"ATError"] || objc_msgSend(errorCopy, "code") == &dword_4 + 3 || objc_msgSend(errorCopy, "code") == &dword_8 || objc_msgSend(errorCopy, "code") == &dword_C + 2 || objc_msgSend(errorCopy, "code") == &dword_10 || objc_msgSend(errorCopy, "code") == &dword_8 + 1 || objc_msgSend(errorCopy, "code") == &dword_10 + 2 || objc_msgSend(errorCopy, "code") == &dword_4 || objc_msgSend(errorCopy, "code") == &dword_10 + 3 || objc_msgSend(errorCopy, "code") == &dword_14 || objc_msgSend(errorCopy, "code") == &dword_18 + 1 || objc_msgSend(errorCopy, "code") == &dword_18 + 3 || objc_msgSend(errorCopy, "code") == &dword_18 || objc_msgSend(errorCopy, "code") == &dword_1C + 3 || objc_msgSend(errorCopy, "code") == &stru_20 || objc_msgSend(errorCopy, "code") == &stru_20.cmd + 1 || objc_msgSend(errorCopy, "code") == &stru_20.cmd + 2)
    {
    }

    else
    {
      v40 = [errorCopy code] == &stru_20.cmd + 3;

      if (!v40)
      {
        v41 = PLSyncGetLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = transferCopy;
          *&buf[12] = 2114;
          *&buf[14] = errorCopy;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Unrecoverable error, will not attempt to restore ATAsset %{public}@ [%{public}@]", buf, 0x16u);
        }

        outstandingAssets2 = [(PLSyncClient *)self outstandingAssets];
        [outstandingAssets2 removeObject:transferCopy];

        assetPairs2 = [v50 assetPairs];
        v60[0] = _NSConcreteStackBlock;
        v60[1] = 3221225472;
        v60[2] = sub_828C;
        v60[3] = &unk_24BA0;
        v61 = path;
        selfCopy = self;
        [assetPairs2 enumerateObjectsUsingBlock:v60];

LABEL_32:
        assetPairs3 = [v50 assetPairs];
        v51 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [assetPairs3 count]);
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        obj = assetPairs3;
        v20 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
        if (v20)
        {
          v21 = 0;
          v22 = 0;
          v23 = *v54;
          do
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v54 != v23)
              {
                objc_enumerationMutation(obj);
              }

              v25 = *(*(&v53 + 1) + 8 * i);
              status = [v25 status];
              if (status == 2)
              {
                path2 = [v25 path];
                [v51 addObject:path2];

                v29 = @"COMPLETE";
              }

              else
              {
                if (status)
                {
                  v27 = 0;
                }

                else
                {
                  v27 = @"PENDING";
                }

                if (status)
                {
                  v28 = v22;
                }

                else
                {
                  v28 = v22 + 1;
                }

                if (status == 1)
                {
                  v29 = @"FAILED";
                }

                else
                {
                  v29 = v27;
                }

                if (status != 1)
                {
                  v22 = v28;
                }
              }

              v31 = PLSyncGetLog();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                path3 = [v25 path];
                *buf = 67109634;
                *&buf[4] = v21;
                *&buf[8] = 2114;
                *&buf[10] = path3;
                *&buf[18] = 2114;
                *&buf[20] = v29;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "File[%d]: %{public}@ has status: %{public}@", buf, 0x1Cu);

                ++v21;
              }
            }

            v20 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
          }

          while (v20);

          if (v22)
          {
            v33 = PLSyncGetLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v50;
              *&buf[12] = 1024;
              *&buf[14] = v22;
              _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "Group %{public}@ is pending %d files...", buf, 0x12u);
            }

LABEL_68:
            v18 = obj;
            goto LABEL_69;
          }
        }

        else
        {
        }

        if ([v51 count])
        {
          uUID = [v50 UUID];
          v35 = PLSyncGetLog();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v50;
            _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "Group %{public}@ is COMPLETE", buf, 0xCu);
          }

          v36 = PLSyncGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = [v51 count];
            *buf = 67109120;
            *&buf[4] = v37;
            _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "Sending updateRestoredAssetWithUUID:... to assetsd with %d paths", buf, 8u);
          }

          assetsdClient = [_photoLibrary assetsdClient];
          syncClient = [assetsdClient syncClient];
          [syncClient updateRestoredAssetWithUUID:uUID paths:v51 fixAddedDate:self->_fixAddedDates];

          [(PLSyncClient *)self _addPaths:v51 toRestoreContextFilesForKey:@"kPLSyncRestoreContextRestoredFilesKey"];
        }

        else
        {
          uUID = PLSyncGetLog();
          if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v50;
            _os_log_impl(&dword_0, uUID, OS_LOG_TYPE_DEFAULT, "Group %{public}@ is FAILED", buf, 0xCu);
          }
        }

        [(PLSyncClient *)self _writeRestoreContext];
        goto LABEL_68;
      }
    }
  }

  v18 = PLSyncGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = path;
    *&buf[12] = 2114;
    *&buf[14] = errorCopy;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Potentially recoverable error when trying to restore %{public}@: %{public}@", buf, 0x16u);
  }

LABEL_69:

  objc_autoreleasePoolPop(context);
}

- (void)_saveOutstandingSyncJobs
{
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastSyncJobsSaveTime = v3;
  outstandingSyncJobs = [(PLSyncClient *)self outstandingSyncJobs];
  v5 = [outstandingSyncJobs count];

  if (v5)
  {
    outstandingSyncJobs2 = [(PLSyncClient *)self outstandingSyncJobs];
    v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [outstandingSyncJobs2 count]);

    selfCopy = self;
    outstandingSyncJobs3 = [(PLSyncClient *)self outstandingSyncJobs];
    v9 = [outstandingSyncJobs3 copy];

    v10 = PLSyncGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v33) = [v9 count];
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "_saveOutstandingSyncJobs: preparing to send %d sync jobs via saveSyncedAssets", buf, 8u);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = PLSyncGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v16 description];
            *buf = 138543362;
            v33 = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Preparing %{public}@", buf, 0xCu);
          }

          serializedData = [v16 serializedData];
          if (serializedData)
          {
            [v7 addObject:serializedData];
          }

          else
          {
            v20 = PLSyncGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v16 description];
              *buf = 138543362;
              v33 = v21;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Failed to serialize %{public}@", buf, 0xCu);
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v13);
    }

    outstandingSyncJobs4 = [(dispatch_group_t *)selfCopy outstandingSyncJobs];
    [outstandingSyncJobs4 removeAllObjects];

    dispatch_group_enter(selfCopy[6]);
    v23 = +[PLAssetsSaver sharedAssetsSaver];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_8790;
    v26[3] = &unk_24B78;
    v26[4] = selfCopy;
    v27 = v11;
    v24 = v11;
    [v23 saveSyncedAssets:v7 completionBlock:v26];
  }
}

- (void)_syncAssetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  transferCopy = transfer;
  errorCopy = error;
  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  v11 = objc_autoreleasePoolPush();
  if (errorCopy && !succeeded)
  {
    v12 = PLSyncGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v115 = errorCopy;
      v116 = 2114;
      v117 = transferCopy;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Encountered unrecoverable error %{public}@ for asset %{public}@ during sync", buf, 0x16u);
    }

    outstandingAssets = [(PLSyncClient *)self outstandingAssets];
    [outstandingAssets removeObject:transferCopy];

    libraryGroup = self->_libraryGroup;
    v111[0] = _NSConcreteStackBlock;
    v111[1] = 3221225472;
    v111[2] = sub_94F4;
    v111[3] = &unk_24738;
    v112 = _photoLibrary;
    [v112 withDispatchGroup:libraryGroup performTransaction:v111];
    v15 = v112;
    goto LABEL_23;
  }

  if (!succeeded)
  {
    v15 = PLSyncGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v37 = "Asset transfer was not successful!";
    goto LABEL_18;
  }

  outstandingAssets2 = [(PLSyncClient *)self outstandingAssets];
  v17 = [outstandingAssets2 containsObject:transferCopy];

  if ((v17 & 1) == 0)
  {
    v15 = PLSyncGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v115 = transferCopy;
    v37 = "Got transfer notification of unknown asset: %@";
    goto LABEL_21;
  }

  if (([transferCopy isDownload]& 1) == 0)
  {
    v15 = PLSyncGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v37 = "Asset upload complete--erm...unsupported...how did this happen??";
LABEL_18:
    v38 = v15;
    v39 = 2;
LABEL_22:
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
    goto LABEL_23;
  }

  path = [transferCopy path];

  if (!path)
  {
    v15 = PLSyncGetLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v115 = transferCopy;
    v37 = "Asset with no path: %@, ignoring.";
LABEL_21:
    v38 = v15;
    v39 = 12;
    goto LABEL_22;
  }

  v94 = v11;
  uuidToPLSAsset = self->_uuidToPLSAsset;
  identifier = [transferCopy identifier];
  v21 = [(NSMutableDictionary *)uuidToPLSAsset objectForKey:identifier];

  pathManager = [(PLSyncClient *)self pathManager];
  v15 = [pathManager photoDirectoryWithType:1];

  path2 = [transferCopy path];
  v24 = [v15 stringByAppendingPathComponent:path2];

  v25 = objc_alloc_init(PLSyncSaveJob);
  v93 = v24;
  v26 = v24;
  v27 = v25;
  v28 = [NSURL fileURLWithPath:v26 isDirectory:0];
  [v27 setOriginalAssetURL:v28];

  hasVideoComplement = [v21 hasVideoComplement];
  [v27 setHasVideoComplement:hasVideoComplement];
  v95 = v21;
  if (!hasVideoComplement)
  {
    goto LABEL_56;
  }

  v89 = +[NSFileManager defaultManager];
  v30 = +[ATAirlock sharedInstance];
  v31 = [v30 pathForDataclass:@"Photo"];
  v32 = [v31 stringByAppendingPathComponent:@"IrisVideo"];

  v33 = v89;
  v110 = 0;
  if (![v89 fileExistsAtPath:v32 isDirectory:&v110] || v110 != 1)
  {
    v40 = PLSyncGetLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v115 = v32;
      _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "Iris video directory does not exist at %@", buf, 0xCu);
    }

    v36 = v40;
    goto LABEL_55;
  }

  v109 = 0;
  v34 = [v89 contentsOfDirectoryAtPath:v32 error:&v109];
  v85 = v109;
  v86 = v32;
  if (v85)
  {
    v35 = PLSyncGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v115 = v86;
      v116 = 2112;
      v117 = v85;
      v36 = v85;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "Failed to list Iris video files under %@: Error: %@", buf, 0x16u);
    }

    else
    {
      v36 = v85;
    }

    goto LABEL_54;
  }

  v83 = v34;
  v84 = v27;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v34;
  v98 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
  if (!v98)
  {
LABEL_45:

LABEL_51:
    v35 = PLSyncGetLog();
    v36 = 0;
    v34 = v83;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [transferCopy identifier];
      *buf = 138412290;
      v115 = identifier2;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "Did not find iris video file for %@", buf, 0xCu);
    }

    v27 = v84;
    v33 = v89;
    goto LABEL_54;
  }

  v96 = *v106;
LABEL_33:
  v41 = 0;
  while (1)
  {
    if (*v106 != v96)
    {
      objc_enumerationMutation(obj);
    }

    v42 = *(*(&v105 + 1) + 8 * v41);
    stringByDeletingPathExtension = [v42 stringByDeletingPathExtension];
    identifier3 = [transferCopy identifier];
    v45 = [stringByDeletingPathExtension isEqualToString:identifier3];

    if (!v45)
    {
      goto LABEL_43;
    }

    pathExtension = [v42 pathExtension];
    v47 = [PFUniformTypeUtilities typeWithFilenameExtension:pathExtension];

    if (v47)
    {
      break;
    }

LABEL_42:

LABEL_43:
    if (v98 == ++v41)
    {
      v98 = [obj countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v98)
      {
        goto LABEL_33;
      }

      goto LABEL_45;
    }
  }

  if (([v47 conformsToType:UTTypeMovie] & 1) == 0)
  {
    v48 = PLSyncGetLog();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v115 = v42;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "Found unexpected Iris video file %@ that is not a video", buf, 0xCu);
    }

    goto LABEL_42;
  }

  v49 = [v86 stringByAppendingPathComponent:v42];
  v50 = [NSURL fileURLWithPath:v49 isDirectory:0];

  if (!v50)
  {
    goto LABEL_51;
  }

  v51 = v50;
  v52 = PLSyncGetLog();
  v36 = 0;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    identifier4 = [transferCopy identifier];
    *buf = 138412546;
    v115 = identifier4;
    v116 = 2112;
    v117 = v51;
    _os_log_impl(&dword_0, v52, OS_LOG_TYPE_DEBUG, "Found iris video file for %@ at %@", buf, 0x16u);
  }

  v27 = v84;
  v35 = v51;
  [v84 setVideoComplementURL:v51];
  v33 = v89;
  v34 = v83;
LABEL_54:

  v32 = v86;
LABEL_55:

  v21 = v95;
LABEL_56:
  -[NSObject setIsVideo:](v27, "setIsVideo:", [v21 isVideo]);
  identifier5 = [transferCopy identifier];
  [v27 setUuid:identifier5];

  v56 = [CLLocation alloc];
  latitude = [v21 latitude];
  [latitude doubleValue];
  v59 = v58;
  longitude = [v21 longitude];
  [longitude doubleValue];
  v62 = v27;
  v63 = [v56 initWithLatitude:v59 longitude:v61];

  v99 = v63;
  [v63 coordinate];
  if ([PLLocationUtils canUseCoordinate:?])
  {
    [v62 setLocation:v63];
  }

  facesInfo = [v95 facesInfo];
  [v62 setFacesInfo:facesInfo];

  exposureDate = [v95 exposureDate];
  [exposureDate doubleValue];
  kCFAbsoluteTimeIntervalSince1904 = [NSDate dateWithTimeIntervalSinceReferenceDate:v66 - kCFAbsoluteTimeIntervalSince1904];

  v97 = kCFAbsoluteTimeIntervalSince1904;
  [v62 setCreationDate:kCFAbsoluteTimeIntervalSince1904];
  modificationDate = [v95 modificationDate];
  [modificationDate doubleValue];
  v69 = v62;
  kCFAbsoluteTimeIntervalSince19042 = [NSDate dateWithTimeIntervalSinceReferenceDate:v70 - kCFAbsoluteTimeIntervalSince1904];

  obja = kCFAbsoluteTimeIntervalSince19042;
  [v62 setModificationDate:kCFAbsoluteTimeIntervalSince19042];
  assetUUIDtoSortToken = self->_assetUUIDtoSortToken;
  identifier6 = [transferCopy identifier];
  v74 = [(NSMutableDictionary *)assetUUIDtoSortToken objectForKey:identifier6];

  v90 = v74;
  [v62 setSortToken:v74];
  originalFileName = [v95 originalFileName];
  if (originalFileName)
  {
    [v62 setOriginalFileName:originalFileName];
  }

  v88 = originalFileName;
  v76 = +[NSMutableSet set];
  albumsAndEvents = self->_albumsAndEvents;
  v100[0] = _NSConcreteStackBlock;
  v100[1] = 3221225472;
  v100[2] = sub_953C;
  v100[3] = &unk_24B50;
  v87 = transferCopy;
  v101 = v87;
  v102 = v95;
  selfCopy = self;
  v78 = v76;
  v104 = v78;
  v79 = v95;
  [(NSMutableDictionary *)albumsAndEvents enumerateKeysAndObjectsUsingBlock:v100];
  [v69 setAlbumURIs:v78];
  if (v69)
  {
    v80 = PLSyncGetLog();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v115 = v69;
      _os_log_impl(&dword_0, v80, OS_LOG_TYPE_DEBUG, "Adding asset %@", buf, 0xCu);
    }

    [(PLSyncClient *)self _enqueueSyncSaveJob:v69];
  }

  [(PLSyncClient *)self _timeSinceLastSave];
  if (v81 >= 3.0)
  {
    [(PLSyncClient *)self _saveOutstandingSyncJobs];
  }

  outstandingAssets3 = [(PLSyncClient *)self outstandingAssets];
  [outstandingAssets3 removeObject:v87];

  v11 = v94;
LABEL_23:

  objc_autoreleasePoolPop(v11);
}

- (id)_neededRestoreAssets
{
  v3 = PLSyncGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Finding _neededRestoreAssets", buf, 2u);
  }

  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = sub_98A4;
  v18 = sub_98B4;
  v19 = 0;
  v4 = dispatch_group_create();
  [(PLSyncClient *)self _photoLibrary];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_98BC;
  v11[3] = &unk_24B28;
  v5 = v11[4] = self;
  v12 = v5;
  v13 = buf;
  [v5 withDispatchGroup:v4 performBlock:v11];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_A538;
  v9[3] = &unk_24868;
  v9[4] = self;
  v6 = v5;
  v10 = v6;
  [v6 withDispatchGroup:v4 performTransaction:v9];
  if (v4)
  {
    dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = *(v15 + 5);

  _Block_object_dispose(buf, 8);

  return v7;
}

- (void)_addPaths:(id)paths toRestoreContextFilesForKey:(id)key
{
  pathsCopy = paths;
  keyCopy = key;
  v9 = pathsCopy;
  v6 = pathsCopy;
  v7 = keyCopy;
  PLSafeRunWithUnfairLock();
}

- (id)_pathToRestoreContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_pathToRestoreContext)
  {
    pathManager = [(PLSyncClient *)selfCopy pathManager];
    cloudRestoreContextPath = [pathManager cloudRestoreContextPath];
    pathToRestoreContext = selfCopy->_pathToRestoreContext;
    selfCopy->_pathToRestoreContext = cloudRestoreContextPath;

    stringByDeletingLastPathComponent = [(NSString *)selfCopy->_pathToRestoreContext stringByDeletingLastPathComponent];
    v12 = 0;
    v7 = [PLFileUtilities createDirectoryAtPath:stringByDeletingLastPathComponent error:&v12];
    v8 = v12;
    if ((v7 & 1) == 0)
    {
      v9 = PLSyncGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = stringByDeletingLastPathComponent;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to create directory %{public}@: %{public}@", buf, 0x16u);
      }
    }
  }

  objc_sync_exit(selfCopy);

  v10 = selfCopy->_pathToRestoreContext;

  return v10;
}

- (id)_restorePathsFromBackupList:(id)list
{
  listCopy = list;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_98A4;
  v55 = sub_98B4;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = sub_98A4;
  v49 = sub_98B4;
  v50 = 0;
  v38 = _NSConcreteStackBlock;
  v39 = 3221225472;
  v40 = sub_B814;
  v41 = &unk_24AD8;
  selfCopy = self;
  v43 = &v51;
  v44 = &v45;
  PLSafeRunWithUnfairLock();
  v24 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [listCopy count]);
  pathManager = [(PLSyncClient *)self pathManager];
  v29 = [pathManager photoDirectoryWithType:4];

  pathManager2 = [(PLSyncClient *)self pathManager];
  v27 = [pathManager2 photoDirectoryWithType:9];

  v26 = [v29 length];
  pathManager3 = [(PLSyncClient *)self pathManager];
  v28 = [pathManager3 photoDirectoryWithType:30];

  v25 = [v28 length];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = listCopy;
  v8 = [obj countByEnumeratingWithState:&v34 objects:v57 count:16];
  if (v8)
  {
    v33 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v33)
        {
          objc_enumerationMutation(obj);
        }

        path = [*(*(&v34 + 1) + 8 * i) path];
        if (([v52[5] containsObject:path] & 1) == 0 && (objc_msgSend(v46[5], "containsObject:", path) & 1) == 0)
        {
          v11 = [path rangeOfString:v29];
          v13 = v12;
          v14 = [path rangeOfString:v28];
          v16 = v15;
          v31 = [path rangeOfString:v27];
          v17 = [path rangeOfString:@"." options:4 range:{objc_msgSend(path, "length") - 5, 4}];
          v30 = [path rangeOfString:@".plist" options:4 range:{objc_msgSend(path, "length") - 6, 6}];
          v18 = [path rangeOfString:@".MISC"];
          v19 = 1;
          if (!v11 && v13)
          {
            v19 = [path length] <= v26;
          }

          v20 = v19;
          v21 = 1;
          if (!v14 && v16)
          {
            v21 = [path length] <= v25;
          }

          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v22 = v17 == 0x7FFFFFFFFFFFFFFFLL || v20;
            if (v22 == 1)
            {
              if (v31 == 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v17 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v21 = 1;
                }

                goto LABEL_24;
              }

              if (v17 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v21 = 1;
                if (v30 == 0x7FFFFFFFFFFFFFFFLL)
                {
LABEL_24:
                  if (v21)
                  {
                    goto LABEL_26;
                  }
                }
              }
            }

            [v24 addObject:path];
          }
        }

LABEL_26:
      }

      v8 = [obj countByEnumeratingWithState:&v34 objects:v57 count:16];
    }

    while (v8);
  }

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  return v24;
}

- (id)_restorePathsFromIncompleteAssetUUIDs:(id)ds inLibrary:(id)library
{
  libraryCopy = library;
  dsCopy = ds;
  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [dsCopy count]);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_B984;
  v12[3] = &unk_24AB0;
  v7 = v13 = libraryCopy;
  v14 = v7;
  v8 = libraryCopy;
  [dsCopy enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (void)_sortATAssetsToRestore:(id)restore withUUIDPathDict:(id)dict
{
  restoreCopy = restore;
  dictCopy = dict;
  [(PLSyncClient *)self restoreKeyToAssetGroup];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_BEE8;
  v43[3] = &unk_24A20;
  selfCopy = self;
  v7 = v43[4] = self;
  v44 = v7;
  v26 = dictCopy;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v43];
  v8 = PLSyncGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Populated restore group mapping:", buf, 2u);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v7;
  v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v29)
  {
    v28 = *v40;
    do
    {
      v9 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v9;
        v10 = *(*(&v39 + 1) + 8 * v9);
        v11 = [obj objectForKeyedSubscript:v10];
        v12 = PLSyncGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          date = [v11 date];
          uUID = [v11 UUID];
          *buf = 138543874;
          v47 = v10;
          v48 = 2114;
          v49 = date;
          v50 = 2114;
          v51 = uUID;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Group %{public}@: [%{public}@, %{public}@]", buf, 0x20u);
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = v11;
        assetPairs = [v11 assetPairs];
        v16 = [assetPairs countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v36;
          do
          {
            for (i = 0; i != v17; i = i + 1)
            {
              if (*v36 != v18)
              {
                objc_enumerationMutation(assetPairs);
              }

              v20 = *(*(&v35 + 1) + 8 * i);
              v21 = PLSyncGetLog();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                path = [v20 path];
                status = [v20 status];
                *buf = 138543618;
                v47 = path;
                v48 = 1024;
                LODWORD(v49) = status;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "      %{public}@ [%d]", buf, 0x12u);
              }
            }

            v17 = [assetPairs countByEnumeratingWithState:&v35 objects:v45 count:16];
          }

          while (v17);
        }

        v9 = v32 + 1;
      }

      while ((v32 + 1) != v29);
      v29 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v29);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_C03C;
  v33[3] = &unk_24A48;
  v33[4] = selfCopy;
  v34 = obj;
  v24 = obj;
  [restoreCopy sortUsingComparator:v33];
}

- (void)_populateRestorePathGroupsAndUpdateValidatedRestorePaths:(id)paths
{
  pathsCopy = paths;
  v28 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [pathsCopy count]);
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [pathsCopy count]);
  restoreKeyToAssetGroup = [(PLSyncClient *)self restoreKeyToAssetGroup];

  if (restoreKeyToAssetGroup)
  {
    v7 = PLSyncGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      restoreKeyToAssetGroup2 = [(PLSyncClient *)self restoreKeyToAssetGroup];
      v9 = [restoreKeyToAssetGroup2 count];
      restoreKeyToAssetGroup3 = [(PLSyncClient *)self restoreKeyToAssetGroup];
      *buf = 67109378;
      LODWORD(v33[0]) = v9;
      WORD2(v33[0]) = 2114;
      *(v33 + 6) = restoreKeyToAssetGroup3;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Replacing existing restore group mapping [%d]: %{public}@", buf, 0x12u);
    }
  }

  pathToRestoreKey = [(PLSyncClient *)self pathToRestoreKey];

  if (pathToRestoreKey)
  {
    v12 = PLSyncGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      restoreKeyToAssetGroup4 = [(PLSyncClient *)self restoreKeyToAssetGroup];
      v14 = [restoreKeyToAssetGroup4 count];
      pathToRestoreKey2 = [(PLSyncClient *)self pathToRestoreKey];
      *buf = 67109378;
      LODWORD(v33[0]) = v14;
      WORD2(v33[0]) = 2114;
      *(v33 + 6) = pathToRestoreKey2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Replacing existing path to restore keys [%d]: %{public}@", buf, 0x12u);
    }
  }

  v16 = [pathsCopy count];
  if (v16 - 1 >= 0)
  {
    v17 = v16;
    v18 = PLPhotoStreamDataDirectoryName;
    do
    {
      v19 = [pathsCopy objectAtIndex:--v17];
      if ([v19 rangeOfString:v18] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [pathsCopy removeObjectAtIndex:v17];
        v20 = PLSyncGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v33[0] = v19;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Skipping restore of unexpected photo streams path from restore %{public}@", buf, 0xCu);
        }
      }
    }

    while (v17 > 0);
  }

  v21 = objc_alloc_init(NSMutableArray);
  pathManager = [(PLSyncClient *)self pathManager];
  v23 = [pathManager pathsGroupedByAssetBasePathFromFilePaths:pathsCopy populateInvalidAdjustmentPaths:v21];

  if ([v21 count])
  {
    v24 = PLSyncGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v25 = [v21 count];
      *buf = 67109378;
      LODWORD(v33[0]) = v25;
      WORD2(v33[0]) = 2114;
      *(v33 + 6) = v21;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_FAULT, "Skipping restore of invalid adjustment resource file paths [%d]: %{public}@", buf, 0x12u);
    }

    [pathsCopy removeObjectsInArray:v21];
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_C5C8;
  v29[3] = &unk_249F8;
  v30 = v5;
  v31 = v28;
  v26 = v28;
  v27 = v5;
  [v23 enumerateKeysAndObjectsUsingBlock:v29];
  [(PLSyncClient *)self setPathToRestoreKey:v26];
  [(PLSyncClient *)self setRestoreKeyToAssetGroup:v27];
}

- (id)_restoreGroupKeyFromATAssetFilePath:(id)path
{
  pathCopy = path;
  pathToRestoreKey = [(PLSyncClient *)self pathToRestoreKey];
  stringByDeletingPathExtension = [pathToRestoreKey objectForKey:pathCopy];

  if (!stringByDeletingPathExtension)
  {
    v7 = PLSyncGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = pathCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "No restore key found for asset restore path %{public}@", &v9, 0xCu);
    }

    stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
  }

  return stringByDeletingPathExtension;
}

- (id)_getAssetsToRestoreFromPaths:(id)paths
{
  pathsCopy = paths;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [pathsCopy count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = pathsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [ATAsset downloadAssetWithIdentifier:v10 dataclass:@"Photo" prettyName:v10, v13];
        [v11 setIsRestore:1];
        [v11 setPath:v10];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)restoreEndedWithError:(id)error
{
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = sub_98A4;
  v56 = sub_98B4;
  v57 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_98A4;
  v50 = sub_98B4;
  v51 = 0;
  v41[1] = _NSConcreteStackBlock;
  v41[2] = 3221225472;
  v41[3] = sub_D248;
  v41[4] = &unk_249D0;
  selfCopy = self;
  v44 = &v52;
  errorCopy = error;
  v43 = errorCopy;
  v45 = &v46;
  PLSafeRunWithUnfairLock();
  [(PLSyncClient *)selfCopy _writeRestoreContext];
  v35 = selfCopy;
  if (v53[5])
  {
    pathManager = [(PLSyncClient *)selfCopy pathManager];
    cloudRestoreBackgroundCompletePath = [pathManager cloudRestoreBackgroundCompletePath];

    v5 = [v53[5] stringByAppendingString:@"\n"];
    v6 = [v5 dataUsingEncoding:4];
    v41[0] = 0;
    v7 = [v6 writeToFile:cloudRestoreBackgroundCompletePath options:1073741825 error:v41];
    v8 = v41[0];
    if ((v7 & 1) == 0)
    {
      v9 = PLSyncGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v60 = cloudRestoreBackgroundCompletePath;
        v61 = 2114;
        v62 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Failed to write background restore ended file %{public}@ %{public}@", buf, 0x16u);
      }
    }
  }

  if (v47[5])
  {
    v10 = objc_alloc_init(NSDateFormatter);
    [v10 setDateFormat:@"yyyyMMdd-HHmmssZZZZZ"];
    v11 = +[NSDate date];
    v12 = [v10 stringFromDate:v11];

    v13 = [@"RestoreResultConflict_" stringByAppendingString:v12];
    pathManager2 = [(PLSyncClient *)v35 pathManager];
    cloudRestoreInfoDirectoryPath = [pathManager2 cloudRestoreInfoDirectoryPath];
    v16 = [cloudRestoreInfoDirectoryPath stringByAppendingPathComponent:v13];

    v17 = [v47[5] dataUsingEncoding:4];
    v40 = 0;
    v18 = [v17 writeToFile:v16 options:1073741825 error:&v40];
    v19 = v40;
    if ((v18 & 1) == 0)
    {
      v20 = PLSyncGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v60 = v16;
        v61 = 2114;
        v62 = v19;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Failed to write restore result confict file %{public}@ %{public}@", buf, 0x16u);
      }
    }
  }

  outstandingAssets = [(PLSyncClient *)v35 outstandingAssets];
  if (v34 || (totalAssetsToRestore = v35->_totalAssetsToRestore, totalAssetsToRestore >= 1))
  {
    v23 = PLSyncGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [outstandingAssets count];
      *buf = 134217984;
      v60 = v24;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%lu outstanding assets", buf, 0xCu);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v25 = outstandingAssets;
    v26 = [v25 countByEnumeratingWithState:&v36 objects:v58 count:16];
    if (v26)
    {
      v27 = *v37;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v37 != v27)
          {
            objc_enumerationMutation(v25);
          }

          v29 = *(*(&v36 + 1) + 8 * i);
          v30 = PLSyncGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v60 = v29;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "  %{public}@", buf, 0xCu);
          }
        }

        v26 = [v25 countByEnumeratingWithState:&v36 objects:v58 count:16];
      }

      while (v26);
    }

    totalAssetsToRestore = v35->_totalAssetsToRestore;
  }

  if (!totalAssetsToRestore)
  {
    v31 = PLSyncGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v35 + 121))
      {
        v32 = @"sync";
      }

      else
      {
        v32 = @"restore";
      }

      *buf = 138543362;
      v60 = v32;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "No assets to restore, %{public}@ ended", buf, 0xCu);
    }

    [(PLSyncClient *)v35 _cleanupAfterSyncOrRestore];
  }

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
}

- (void)assetTransferEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = PLSyncGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (successCopy)
    {
      v6 = @"All ATAssets processed";
    }

    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetTransferEndedWithSuccess: %{public}@", &v11, 0xCu);
  }

  if (successCopy)
  {
    v7 = objc_alloc_init(PLSyncSaveJob);
    [v7 setIsSyncComplete:1];
    pathManager = [(PLSyncClient *)self pathManager];
    iTunesPhotosSyncMetadataFilePath = [pathManager iTunesPhotosSyncMetadataFilePath];
    v10 = [NSURL fileURLWithPath:iTunesPhotosSyncMetadataFilePath isDirectory:0];
    [v7 setOriginalAssetURL:v10];

    [(PLSyncClient *)self _enqueueSyncSaveJob:v7];
  }

  [(PLSyncClient *)self _cleanupAfterSyncOrRestore];
}

- (void)_cleanupAfterSyncOrRestore
{
  v3 = PLSyncGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(self + 121))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_cleanupAfterSyncOrRestore: _syncRequested=%{public}@", &buf, 0xCu);
  }

  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  if ((*(self + 121) & 1) == 0)
  {
    outstandingAssets = [(PLSyncClient *)self outstandingAssets];
    v7 = [outstandingAssets count] == 0;

    if (v7)
    {
      v8 = PLSyncGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_cleanupAfterSyncOrRestore: finalizing restore", &buf, 2u);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v21 = 0x2020000000;
      v22 = 0;
      PLSafeRunWithUnfairLock();
      assetsdClient = [_photoLibrary assetsdClient];
      syncClient = [assetsdClient syncClient];
      [syncClient finalizeOTARestoreRecreatingAlbums:*(*(&buf + 1) + 24)];

      _Block_object_dispose(&buf, 8);
    }
  }

  if (*(self + 121))
  {
    outstandingAssets2 = [(PLSyncClient *)self outstandingAssets];
    v12 = [outstandingAssets2 count] == 0;

    if (v12)
    {
      v13 = PLSyncGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "_cleanupAfterSyncOrRestore: preparing to send remote sync cleanup job", &buf, 2u);
      }

      libraryGroup = self->_libraryGroup;
      if (libraryGroup)
      {
        dispatch_group_wait(libraryGroup, 0xFFFFFFFFFFFFFFFFLL);
      }

      [(PLSyncClient *)self _enqueueRemoteSyncCleanupJobBeforeDate:0 withFinishedBlock:0];
    }
  }

  [(PLSyncClient *)self _saveOutstandingSyncJobs];
  outstandingAssets3 = [(PLSyncClient *)self outstandingAssets];
  v16 = [outstandingAssets3 count] == 0;

  v17 = PLSyncGetLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "_cleanupAfterSyncOrRestore: no outstanding assets, preparing to clear sync state", &buf, 2u);
    }

    [(PLSyncClient *)self _clearPendingCounts];
    if (*(self + 121))
    {
      [(PLSyncClient *)self _clearEmptySyncAlbums];
    }

    [(PLSyncClient *)self _stopListeningToMemoryPressureEvents];
    [(PLSyncClient *)self _uninitializeLibrary];
    [(PLSyncClient *)self _clearSyncState];
  }

  else
  {
    if (v18)
    {
      v19 = [(NSMutableArray *)self->_outstandingAssets count];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v19;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "_cleanupAfterSyncOrRestore: deferred clearing sync state, %d outstanding assets", &buf, 8u);
    }
  }
}

- (void)_clearEmptySyncAlbums
{
  v3 = PLSyncGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "_clearEmptySyncAlbums", buf, 2u);
  }

  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  libraryGroup = self->_libraryGroup;
  if (libraryGroup)
  {
    dispatch_group_wait(libraryGroup, 0xFFFFFFFFFFFFFFFFLL);
    v6 = self->_libraryGroup;
  }

  else
  {
    v6 = 0;
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_DBA8;
  v8[3] = &unk_24738;
  v9 = _photoLibrary;
  v7 = _photoLibrary;
  [v7 withDispatchGroup:v6 performTransaction:v8];
}

- (void)_clearPendingCounts
{
  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  libraryGroup = self->_libraryGroup;
  if (libraryGroup)
  {
    dispatch_group_wait(libraryGroup, 0xFFFFFFFFFFFFFFFFLL);
    v5 = self->_libraryGroup;
  }

  else
  {
    v5 = 0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_DEE8;
  v7[3] = &unk_24868;
  v7[4] = self;
  v8 = _photoLibrary;
  v6 = _photoLibrary;
  [v6 withDispatchGroup:v5 performTransaction:v7];
}

- (void)_initializeOutstandingAssets
{
  _initializePhotoLibraryIfNecessary = [(PLSyncClient *)self _initializePhotoLibraryIfNecessary];

  if (!_initializePhotoLibraryIfNecessary)
  {
    PLAbortWithReason();
  }

  _neededRestoreAssets = [(PLSyncClient *)self _neededRestoreAssets];
  self->_totalAssetsToRestore = [_neededRestoreAssets count];
  v4 = [_neededRestoreAssets mutableCopy];
  [(PLSyncClient *)self setOutstandingAssets:v4];
}

- (id)outstandingAssetTransfers
{
  outstandingAssets = [(PLSyncClient *)self outstandingAssets];
  if (!outstandingAssets)
  {
    v4 = +[ATDeviceSettings sharedInstance];
    activeRestoreType = [v4 activeRestoreType];

    v6 = PLSyncGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (activeRestoreType > 3)
      {
        v7 = @"Error";
      }

      else
      {
        v7 = *(&off_24C30 + activeRestoreType);
      }

      *buf = 67109378;
      *v24 = activeRestoreType;
      *&v24[4] = 2114;
      *&v24[6] = v7;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Populating outstandingAssets for restoreType %d (%{public}@)", buf, 0x12u);
    }

    if (activeRestoreType > 1)
    {
      outstandingAssets = 0;
    }

    else
    {
      [(PLSyncClient *)self _initializeOutstandingAssets];
      outstandingAssets = [(PLSyncClient *)self outstandingAssets];
    }
  }

  [(PLSyncClient *)self _startListeningToMemoryPressureEvents];
  v8 = PLSyncGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [outstandingAssets count];
    *buf = 67109120;
    *v24 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "outstandingAssetTransfers %d", buf, 8u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = outstandingAssets;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = PLSyncGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *v24 = v15;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "  %{public}@", buf, 0xCu);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  return v10;
}

- (void)syncEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = PLSyncGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = successCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "syncEndedWithSuccess %d", v6, 8u);
  }

  [(PLSyncClient *)self _stopListeningToMemoryPressureEvents];
}

- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  anchorCopy = anchor;
  *(self + 121) |= 1u;
  if (+[NSThread isMainThread])
  {
    v10 = PLSyncGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_FAULT, "AirTraffic plugins should only be run on a non-main-thread queue!", buf, 2u);
    }
  }

  v11 = PLSyncGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (sync > 3)
    {
      v12 = @"unknown";
    }

    else
    {
      v12 = *(&off_24C10 + sync);
    }

    *buf = 138543618;
    v91 = v12;
    v92 = 2114;
    v93 = anchorCopy;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Reconcile Sync: (type=%{public}@) anchor: %{public}@", buf, 0x16u);
  }

  _initializePhotoLibraryIfNecessary = [(PLSyncClient *)self _initializePhotoLibraryIfNecessary];
  pathManager = [(PLSyncClient *)self pathManager];
  iTunesPhotosSyncMetadataFilePath = [pathManager iTunesPhotosSyncMetadataFilePath];

  v16 = +[NSFileManager defaultManager];
  v81 = iTunesPhotosSyncMetadataFilePath;
  if ([v16 fileExistsAtPath:iTunesPhotosSyncMetadataFilePath])
  {
    v87 = 0;
    v17 = [(PLSyncClient *)self _readPhotosSyncMetadataFromPath:iTunesPhotosSyncMetadataFilePath error:&v87];
    v18 = v87;
  }

  else
  {
    v88 = NSLocalizedDescriptionKey;
    v89 = @"Missing iTunes photo sync metadata";
    v19 = [NSDictionary dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v18 = [NSError errorWithDomain:NSCocoaErrorDomain code:260 userInfo:v19];

    v17 = 0;
  }

  pathManager2 = [(PLSyncClient *)self pathManager];
  syncInfoPath = [pathManager2 syncInfoPath];

  if ([v16 fileExistsAtPath:syncInfoPath])
  {
    v86 = 0;
    v22 = [v16 removeItemAtPath:syncInfoPath error:&v86];
    v23 = v86;
    if ((v22 & 1) == 0)
    {
      v24 = v17;
      v25 = anchorCopy;
      v26 = PLSyncGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v91 = syncInfoPath;
        v92 = 2114;
        v93 = v23;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Failed to remove syncUserAgentInfoFile at path %{public}@ err: %{public}@", buf, 0x16u);
      }

      anchorCopy = v25;
      v17 = v24;
    }
  }

  v82 = syncInfoPath;
  if (v17)
  {
    v80 = anchorCopy;
    v27 = +[NSMutableDictionary dictionary];
    v28 = [v17 objectForKeyedSubscript:@"iTunesUserAgent"];
    if (v28)
    {
      [v27 setObject:v28 forKey:@"userAgent"];
    }

    v29 = +[PLSTransportDecoder decoder];
    v85 = v18;
    v30 = [v29 decodeSnapshotFromPropertyList:v17 error:&v85];
    v79 = v85;

    libraryKind = [v30 libraryKind];
    if (libraryKind)
    {
      [v27 setObject:libraryKind forKey:@"libraryKind"];
    }

    if (v30)
    {
      v78 = v29;
      v76 = v17;
      if (![v27 count])
      {
        goto LABEL_44;
      }

      v84 = 0;
      v32 = [NSPropertyListSerialization dataWithPropertyList:v27 format:100 options:0 error:&v84];
      v33 = v84;
      v34 = v33;
      if (v32)
      {
        v83 = v33;
        v35 = [v32 writeToFile:v82 options:1073741825 error:&v83];
        v36 = v83;

        if (v35)
        {
          [PLFileUtilities changeFileOwnerToMobileAtPath:v82 error:0];
LABEL_43:
          v29 = v78;

LABEL_44:
          [(PLSyncClient *)self _initializeOutstandingAssets];
          pathManager3 = [(PLSyncClient *)self pathManager];
          iTunesPhotosSyncCurrentLibraryUUIDPath = [pathManager3 iTunesPhotosSyncCurrentLibraryUUIDPath];

          pathManager4 = [(PLSyncClient *)self pathManager];
          iTunesPhotosLastSyncMetadataFilePath = [pathManager4 iTunesPhotosLastSyncMetadataFilePath];
          v44 = [NSURL fileURLWithPath:iTunesPhotosLastSyncMetadataFilePath];

          v77 = v44;
          v45 = [v29 decodeSnapshotFromFile:v44 error:0];
          v74 = [v30 isEqualToSnapshot:v45];
          libraryUUID = [v45 libraryUUID];
          if (!libraryUUID)
          {
            goto LABEL_46;
          }

          v47 = libraryUUID;
          libraryUUID2 = [v30 libraryUUID];
          libraryUUID3 = [v45 libraryUUID];
          v50 = [libraryUUID2 isEqual:libraryUUID3];

          if (!v50)
          {
            v52 = 1;
          }

          else
          {
LABEL_46:
            libraryUUID4 = [v45 libraryUUID];

            if (libraryUUID4)
            {
              v52 = 0;
            }

            else
            {
              v53 = [NSDictionary dictionaryWithContentsOfFile:iTunesPhotosSyncCurrentLibraryUUIDPath];
              v54 = [v53 objectForKey:@"libraryUUID"];

              if (v54 && (-[NSObject libraryUUID](v30, "libraryUUID"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 isEqual:v54], v55, (v56 & 1) != 0))
              {
                v52 = 0;
              }

              else
              {
                v57 = PLSyncGetLog();
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  libraryUUID5 = [v30 libraryUUID];
                  *buf = 138543618;
                  v91 = v54;
                  v92 = 2114;
                  v93 = libraryUUID5;
                  _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "Forcing resync based on CurrentLibraryUUID.plist: previous %{public}@, snapshot %{public}@", buf, 0x16u);
                }

                v52 = 1;
              }
            }
          }

          libraryUUID6 = [v30 libraryUUID];
          v60 = [NSDictionary dictionaryWithObject:libraryUUID6 forKey:@"libraryUUID"];

          v61 = [NSPropertyListSerialization dataWithPropertyList:v60 format:100 options:0 error:0];
          [v61 writeToFile:iTunesPhotosSyncCurrentLibraryUUIDPath options:1073741825 error:0];
          v75 = iTunesPhotosSyncCurrentLibraryUUIDPath;
          [PLFileUtilities changeFileOwnerToMobileAtPath:iTunesPhotosSyncCurrentLibraryUUIDPath error:0];
          if (v74)
          {
            v62 = PLSyncGetLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "NULL PHOTO SYNC DETECTED - NO RECONCILING NEEDED", buf, 2u);
            }
          }

          else
          {
            v63 = +[NSFileManager defaultManager];
            path = [v77 path];
            [v63 removeItemAtPath:path error:0];

            albumsAndEventsByUUID = [v30 albumsAndEventsByUUID];
            v66 = [albumsAndEventsByUUID mutableCopy];
            albumsAndEvents = self->_albumsAndEvents;
            self->_albumsAndEvents = v66;

            [(PLSyncClient *)self _pullOutMasterAlbumFromAlbumsAndEvents];
            assetsByUUID = [v30 assetsByUUID];
            [(PLSyncClient *)self setUuidToPLSAsset:assetsByUUID];

            [(PLSyncClient *)self setLibraryChangeSnapshot:v30];
            [(PLSyncClient *)self setIsResync:v52];
            [(PLSyncClient *)self _reconcileMetadata];
            v62 = PLSyncGetLog();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              if (v52)
              {
                v69 = @"resync";
              }

              else
              {
                v69 = @"sync";
              }

              outstandingAssets = [(PLSyncClient *)self outstandingAssets];
              v71 = [outstandingAssets count];
              *buf = 138543618;
              v91 = v69;
              v92 = 1024;
              LODWORD(v93) = v71;
              _os_log_impl(&dword_0, v62, OS_LOG_TYPE_DEFAULT, "Done reconciling (%{public}@)! %d outstanding assets", buf, 0x12u);
            }
          }

          v17 = v76;
          v29 = v78;

          +[NSDate timeIntervalSinceReferenceDate];
          self->_lastSyncJobsSaveTime = v72;

          v38 = 1;
          v18 = v79;
          anchorCopy = v80;
          goto LABEL_65;
        }
      }

      else
      {
        v36 = v33;
      }

      v39 = PLSyncGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v91 = v27;
        v92 = 2114;
        v93 = v36;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "Failed to update user agent info %{public}@: %{public}@", buf, 0x16u);
      }

      goto LABEL_43;
    }

    v18 = v79;
    anchorCopy = v80;
    if (!sync)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v29 = 0;
    if (!sync)
    {
LABEL_36:
      v30 = PLSyncGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "No-op sync", buf, 2u);
      }

      v38 = 1;
      goto LABEL_65;
    }
  }

  if (error)
  {
    v37 = v18;
    *error = v18;
  }

  v30 = PLSyncGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v91 = v18;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "snapshot decode failed: %{public}@", buf, 0xCu);
  }

  v38 = 0;
LABEL_65:

  return v38;
}

- (id)_readPhotosSyncMetadataFromPath:(id)path error:(id *)error
{
  pathCopy = path;
  v6 = PLSyncGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v15 = pathCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEBUG, "Loading photos sync metadata from %{public}@", buf, 0xCu);
  }

  v7 = [NSURL fileURLWithPath:pathCopy];
  v8 = [NSInputStream inputStreamWithURL:v7];
  [v8 open];
  v13 = 0;
  v9 = [NSPropertyListSerialization propertyListWithStream:v8 options:0 format:0 error:&v13];
  v10 = v13;
  [v8 close];
  if (error && !v9)
  {
    v11 = v10;
    *error = v10;
  }

  return v9;
}

- (void)_pullOutMasterAlbumFromAlbumsAndEvents
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_98A4;
  v11 = sub_98B4;
  v12 = 0;
  albumsAndEvents = self->_albumsAndEvents;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_F1F4;
  v6[3] = &unk_24980;
  v6[4] = &v7;
  [(NSMutableDictionary *)albumsAndEvents enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[5])
  {
    [(PLSyncClient *)self setMasterAlbum:?];
    v4 = self->_albumsAndEvents;
    uuid = [v8[5] uuid];
    [(NSMutableDictionary *)v4 removeObjectForKey:uuid];
  }

  _Block_object_dispose(&v7, 8);
}

- (void)_reconcileMetadata
{
  v3 = PLSyncGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Entering reconcileMetadata", buf, 2u);
  }

  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  [(PLSyncClient *)self _reconcileAlbums:v4];
  [(PLSyncClient *)self _reconcileAssets:v4];
  dispatch_group_leave(v4);
  [(PLSyncClient *)self _setPendingAlbumCounts:v4];
  [(PLSyncClient *)self _createAlbumUUIDToObjectIDMap:v4];
  v5 = PLSyncGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Waiting for reconcile to finish", v8, 2u);
  }

  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  v6 = PLSyncGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Leaving reconcileMetadata!", v7, 2u);
  }
}

- (void)_setPendingAlbumCounts:(id)counts
{
  countsCopy = counts;
  if (self->_pendingAssetsPerContainer || (Mutable = CFDictionaryCreateMutable(kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0), (self->_pendingAssetsPerContainer = Mutable) != 0))
  {
    [(PLSyncClient *)self _photoLibrary];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_F4D8;
    v7[3] = &unk_24868;
    v8 = v7[4] = self;
    v6 = v8;
    [v6 withDispatchGroup:countsCopy performTransaction:v7];
  }
}

- (void)_incrementPendingCountForContainerUUID:(id)d
{
  key = d;
  v4 = CFDictionaryContainsKey(self->_pendingAssetsPerContainer, key);
  pendingAssetsPerContainer = self->_pendingAssetsPerContainer;
  if (v4)
  {
    v6 = CFDictionaryGetValue(pendingAssetsPerContainer, key) + 1;
    pendingAssetsPerContainer = self->_pendingAssetsPerContainer;
    v7 = key;
  }

  else
  {
    v7 = key;
    v6 = &dword_0 + 1;
  }

  CFDictionarySetValue(pendingAssetsPerContainer, v7, v6);
}

- (void)_persistAssetAlbumOrderStructures
{
  v3 = objc_autoreleasePoolPush();
  pathManager = [(PLSyncClient *)self pathManager];
  pathToAssetAlbumOrderStructure = [pathManager pathToAssetAlbumOrderStructure];

  v6 = +[NSFileManager defaultManager];
  [v6 removeItemAtPath:pathToAssetAlbumOrderStructure error:0];
  v7 = +[NSMutableDictionary dictionary];
  albumsAndEvents = self->_albumsAndEvents;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_FDD4;
  v18[3] = &unk_24818;
  v9 = v7;
  v19 = v9;
  [(NSMutableDictionary *)albumsAndEvents enumerateKeysAndObjectsUsingBlock:v18];
  v17 = 0;
  v10 = [NSPropertyListSerialization dataWithPropertyList:v9 format:100 options:0 error:&v17];
  v11 = v17;
  v12 = v11;
  if (v10)
  {
    v16 = v11;
    v13 = [v10 writeToFile:pathToAssetAlbumOrderStructure options:1073741825 error:&v16];
    v14 = v16;

    if (v13)
    {
      [PLFileUtilities changeFileOwnerToMobileAtPath:pathToAssetAlbumOrderStructure error:0];
      goto LABEL_8;
    }
  }

  else
  {
    v14 = v11;
  }

  v15 = PLSyncGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v21 = pathToAssetAlbumOrderStructure;
    v22 = 2114;
    v23 = v14;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Failed to write assetOrdersByAlbumUUID to path %{public}@ %{public}@", buf, 0x16u);
  }

LABEL_8:
  +[PLManagedAlbum clearAssetOrderByAlbumUUIDs];

  objc_autoreleasePoolPop(v3);
}

- (void)_saveOrderOnSyncedAlbum:(id)album inLibrary:(id)library
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10038;
  v6[3] = &unk_24738;
  albumCopy = album;
  v5 = albumCopy;
  [library performTransactionAndWait:v6];
}

- (void)_reconcileDeviceAlbumListSortingWithAlbums:(id)albums iTunesAlbumOrder:(id)order inLibrary:(id)library
{
  libraryCopy = library;
  orderCopy = order;
  albumsCopy = albums;
  v33 = [PLManagedAlbumList albumListInPhotoLibrary:libraryCopy];
  albums = [v33 albums];
  v8 = +[NSMutableIndexSet indexSet];
  v9 = +[NSMutableArray array];
  v32 = [PLManagedAlbumList eventListInPhotoLibrary:libraryCopy];
  albums2 = [v32 albums];
  v11 = +[NSMutableIndexSet indexSet];
  v12 = +[NSMutableArray array];
  v31 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:libraryCopy];
  albums3 = [v31 albums];
  v14 = +[NSMutableIndexSet indexSet];
  +[NSMutableArray array];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10530;
  v38[3] = &unk_24958;
  v39 = albums;
  v40 = v9;
  v41 = v8;
  v42 = albums2;
  v43 = v12;
  v44 = v11;
  v46 = v45 = albums3;
  v47 = v14;
  v28 = v14;
  v15 = v46;
  v24 = albums3;
  v21 = v11;
  v16 = v12;
  v22 = albums2;
  v23 = v8;
  v17 = v9;
  v26 = albums;
  [albumsCopy enumerateKeysAndObjectsUsingBlock:v38];

  +[NSMutableDictionary dictionary];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10778;
  v18 = v36[3] = &unk_248E0;
  v37 = v18;
  [orderCopy enumerateObjectsUsingBlock:v36];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1080C;
  v34[3] = &unk_24930;
  v35 = v18;
  v19 = v18;
  v20 = objc_retainBlock(v34);
  [v17 sortUsingComparator:v20];
  [(PLSyncClient *)self _reorderAlbumListProxy:v26 withAlbumsAtIndexes:v23 inNewOrder:v17];
  [v16 sortUsingComparator:v20];
  [(PLSyncClient *)self _reorderAlbumListProxy:v22 withAlbumsAtIndexes:v21 inNewOrder:v16];
  [(PLSyncClient *)self _saveOrderOnSyncedAlbum:v16 inLibrary:libraryCopy];
  [v15 sortUsingComparator:v20];
  [(PLSyncClient *)self _reorderAlbumListProxy:v24 withAlbumsAtIndexes:v28 inNewOrder:v15];
  [(PLSyncClient *)self _saveOrderOnSyncedAlbum:v15 inLibrary:libraryCopy];
}

- (void)_reorderAlbumListProxy:(id)proxy withAlbumsAtIndexes:(id)indexes inNewOrder:(id)order
{
  proxyCopy = proxy;
  indexesCopy = indexes;
  orderCopy = order;
  if ([proxyCopy count])
  {
    v10 = [indexesCopy count];
    if (v10 == [orderCopy count])
    {
      +[NSMutableDictionary dictionary];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10BC0;
      v11 = v25[3] = &unk_248E0;
      v26 = v11;
      [proxyCopy enumerateObjectsUsingBlock:v25];
      *buf = 0;
      v28 = buf;
      v29 = 0x2020000000;
      v30 = 0;
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v24[3] = 0;
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10C68;
      v19[3] = &unk_24908;
      v20 = orderCopy;
      v22 = v24;
      v12 = v11;
      v21 = v12;
      v23 = buf;
      [indexesCopy enumerateIndexesUsingBlock:v19];
      if (v28[24] == 1)
      {
        v14 = _NSConcreteStackBlock;
        v15 = 3221225472;
        v16 = sub_10D6C;
        v17 = &unk_24930;
        v18 = v12;
        v13 = objc_retainBlock(&v14);
        [proxyCopy sortUsingComparator:{v13, v14, v15, v16, v17}];
      }

      _Block_object_dispose(v24, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v12 = PLSyncGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = [indexesCopy count];
        LOWORD(v28) = 1024;
        *(&v28 + 2) = [orderCopy count];
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "ERROR in _reorderAlbumListProxy, different count for existingAlbumIndexes %d and newAlbumOrderArray %d", buf, 0xEu);
      }
    }
  }
}

- (id)_onDeviceAlbumsByUUID
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:1550];
  v5 = [NSNumber numberWithInt:1551];
  v6 = [NSNumber numberWithInt:15];
  v7 = [NSPredicate predicateWithFormat:@"(kind == %@) || (kind == %@) || (kind == %@)", v4, v5, v6];

  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  v9 = [PLGenericAlbum albumsMatchingPredicate:v7 expectedResultCount:0 inLibrary:_photoLibrary];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10F90;
  v12[3] = &unk_248E0;
  v10 = v3;
  v13 = v10;
  [v9 enumerateObjectsUsingBlock:v12];

  return v10;
}

- (void)_reconcileAlbums:(id)albums
{
  [(PLSyncClient *)self _photoLibrary];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_11088;
  v5[3] = &unk_24868;
  v6 = v5[4] = self;
  v4 = v6;
  [v4 performBlockAndWait:v5];
}

- (void)_reconcileAssets:(id)assets
{
  assetUUIDs = [(PLSAlbum *)self->_masterAlbum assetUUIDs];
  v5 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [assetUUIDs count]);
  assetUUIDtoSortToken = self->_assetUUIDtoSortToken;
  self->_assetUUIDtoSortToken = v5;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(PLSAlbum *)self->_masterAlbum assetUUIDs];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v27;
    v11 = -1.0;
    do
    {
      v12 = 0;
      v13 = v11;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(NSMutableDictionary *)self->_uuidToPLSAsset objectForKey:*(*(&v26 + 1) + 8 * v12)];
        exposureDate = [v14 exposureDate];
        [exposureDate doubleValue];
        kCFAbsoluteTimeIntervalSince1904 = [NSDate dateWithTimeIntervalSinceReferenceDate:v16 - kCFAbsoluteTimeIntervalSince1904];

        [kCFAbsoluteTimeIntervalSince1904 timeIntervalSinceReferenceDate];
        v11 = v18;
        if (vabdd_f64(v13, v18) < 2.22044605e-16)
        {
          ++v9;
        }

        else
        {
          v9 = 0;
        }

        v19 = self->_assetUUIDtoSortToken;
        v20 = [NSNumber numberWithDouble:v18 + v9 / 100000.0];
        uuid = [v14 uuid];
        [(NSMutableDictionary *)v19 setObject:v20 forKey:uuid];

        v12 = v12 + 1;
        v13 = v11;
      }

      while (v8 != v12);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  [(PLSyncClient *)self _photoLibrary];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_120A4;
  v24[3] = &unk_24868;
  v25 = v24[4] = self;
  v22 = v25;
  [v22 performBlockAndWait:v24];
}

- (id)_onDeviceAssetsByUUIDInLibrary:(id)library
{
  libraryCopy = library;
  v4 = +[PLManagedAsset entityName];
  v5 = [NSFetchRequest fetchRequestWithEntityName:v4];

  v6 = +[PLValidatedSavedAssetType predicateForIncludeMask:useIndex:](PLValidatedSavedAssetType, "predicateForIncludeMask:useIndex:", +[PLValidatedSavedAssetType maskForFinderSyncedAsset], 1);
  [v5 setPredicate:v6];
  [v5 setRelationshipKeyPathsForPrefetching:&off_25D50];
  managedObjectContext = [libraryCopy managedObjectContext];

  v15 = 0;
  v8 = [managedObjectContext executeFetchRequest:v5 error:&v15];
  v9 = v15;

  if (v8)
  {
    +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_138C4;
    v10 = v13[3] = &unk_247F0;
    v14 = v10;
    [v8 enumerateObjectsUsingBlock:v13];
    v11 = v14;
  }

  else
  {
    v11 = PLSyncGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Error Reconciling Photos: Cannot fetch on device photos %{public}@", buf, 0xCu);
    }

    v10 = 0;
  }

  return v10;
}

- (void)_batchDeleteSyncedAssetsWithReason:(id)reason subpredicate:(id)subpredicate
{
  subpredicateCopy = subpredicate;
  reasonCopy = reason;
  v8 = +[PLValidatedSavedAssetType predicateForIncludeMask:useIndex:](PLValidatedSavedAssetType, "predicateForIncludeMask:useIndex:", +[PLValidatedSavedAssetType maskForFinderSyncedAsset], 1);
  v9 = v8;
  v10 = v8;
  if (subpredicateCopy)
  {
    v21[0] = v8;
    v21[1] = subpredicateCopy;
    v11 = [NSArray arrayWithObjects:v21 count:2];
    v10 = [NSCompoundPredicate andPredicateWithSubpredicates:v11];
  }

  _photoLibrary = [(PLSyncClient *)self _photoLibrary];
  v18 = 0;
  v13 = [_photoLibrary batchDeleteAssetsWithPredicate:v10 reason:reasonCopy error:&v18];

  v14 = v18;
  if ((v13 & 1) == 0)
  {
    v15 = PLSyncGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Deleting synced assets error: %{public}@", buf, 0xCu);
    }

    _photoLibrary2 = [(PLSyncClient *)self _photoLibrary];
    managedObjectContext = [_photoLibrary2 managedObjectContext];
    [managedObjectContext setDelayedDeletions:0];
  }
}

- (void)_enqueueRemoteSyncCleanupJobBeforeDate:(id)date withFinishedBlock:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v8 = objc_alloc_init(PLSyncSaveJob);
  [v8 setCleanupSyncState:1];
  [v8 setCleanupBeforeDate:dateCopy];
  [v8 setFinishedBlock:blockCopy];

  v9 = PLSyncGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = dateCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "_enqueueRemoteSyncCleanupJob (cleanup sync state before: %{public}@)", &v10, 0xCu);
  }

  [(PLSyncClient *)self _enqueueSyncSaveJob:v8];
}

- (void)_enqueueSyncSaveJob:(id)job
{
  jobCopy = job;
  outstandingSyncJobs = [(PLSyncClient *)self outstandingSyncJobs];

  if (!outstandingSyncJobs)
  {
    v6 = +[NSMutableArray array];
    [(PLSyncClient *)self setOutstandingSyncJobs:v6];
  }

  outstandingSyncJobs2 = [(PLSyncClient *)self outstandingSyncJobs];
  [outstandingSyncJobs2 addObject:jobCopy];
}

- (BOOL)prepareForSyncWithHostAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  anchorCopy = anchor;
  callbackCopy = callback;
  if (+[NSThread isMainThread])
  {
    v9 = PLSyncGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_FAULT, "AirTraffic plugins should only be run on a non-main-thread queue!", buf, 2u);
    }
  }

  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = PLSyncGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v31 = 138543362;
    v32 = anchorCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "prepareForSyncWithHostAnchor: %{public}@", v31, 0xCu);
  }

  if (+[PLPhotoLibrary systemPhotoLibraryIsObtainable])
  {
    Current = CFAbsoluteTimeGetCurrent();
    _initializePhotoLibraryIfNecessary = [(PLSyncClient *)self _initializePhotoLibraryIfNecessary];
    [(PLSyncClient *)self _startListeningToMemoryPressureEvents];
    v28[24] = 1;
    v13 = dispatch_semaphore_create(0);
    v14 = [NSDate dateWithTimeIntervalSinceNow:-1.0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1422C;
    v23[3] = &unk_247C8;
    v15 = anchorCopy;
    v24 = v15;
    v26 = buf;
    v16 = v13;
    v25 = v16;
    [(PLSyncClient *)self _enqueueRemoteSyncCleanupJobBeforeDate:v14 withFinishedBlock:v23];

    [(PLSyncClient *)self _saveOutstandingSyncJobs];
    v17 = dispatch_time(0, 28800000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = PLSyncGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v31 = 138543618;
        v32 = v15;
        v33 = 1024;
        LODWORD(v34) = 28800;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "prepareForSyncWithHostAnchor: %{public}@ - timed out after waiting %d seconds for sync cleanup in assetsd", v31, 0x12u);
      }

      v28[24] = 0;
    }

    v19 = CFAbsoluteTimeGetCurrent();
    v20 = PLSyncGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *v31 = 138543618;
      v32 = v15;
      v33 = 2048;
      v34 = v19 - Current;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "prepareForSyncWithHostAnchor: %{public}@ - finished in %4.4f seconds", v31, 0x16u);
    }
  }

  else
  {
    v16 = PLSyncGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v31 = 138543362;
      v32 = anchorCopy;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "prepareForSyncWithHostAnchor: %{public}@ - called before photo library is available", v31, 0xCu);
    }
  }

  v21 = v28[24];
  _Block_object_dispose(buf, 8);

  return v21 & 1;
}

- (id)installedAssetMetrics
{
  v2 = PLSyncGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEBUG, "Getting Installed Asset Metrics", buf, 2u);
  }

  pl_dispatch_once();
  *buf = 0;
  v6 = buf;
  v7 = 0x3032000000;
  v8 = sub_98A4;
  v9 = sub_98B4;
  v10 = 0;
  pl_dispatch_sync();
  v3 = *(v6 + 5);
  _Block_object_dispose(buf, 8);

  return v3;
}

- (id)_metricsForLibraryAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = +[PLAssetsdClient sharedSystemLibraryAssetsdClient];
  libraryInternalClient = [v6 libraryInternalClient];
  v13 = 0;
  v8 = [libraryInternalClient metricsForLibraryAtURL:lCopy error:&v13];
  v9 = v13;
  v10 = PLSyncGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v15 = lCopy;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "metrics: %@ %@ %@", buf, 0x20u);
  }

  if (error)
  {
    v11 = v9;
    *error = v9;
  }

  return v8;
}

- (id)disabledAssetTypes
{
  if (PLIsCloudPhotoLibraryEnabledForCurrentUser())
  {
    v2 = [NSSet setWithObject:@"Photo"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(PLSyncClient *)self _uninitializeLibrary];
  [(PLSyncClient *)self _clearSyncState];
  v3.receiver = self;
  v3.super_class = PLSyncClient;
  [(PLSyncClient *)&v3 dealloc];
}

- (void)_clearSyncState
{
  v3 = PLSyncGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Clearing sync state", v14, 2u);
  }

  [(PLSyncClient *)self _stopListeningToMemoryPressureEvents];
  albumsAndEvents = self->_albumsAndEvents;
  self->_albumsAndEvents = 0;

  uuidToPLSAsset = self->_uuidToPLSAsset;
  self->_uuidToPLSAsset = 0;

  libraryChangeSnapshot = self->_libraryChangeSnapshot;
  self->_libraryChangeSnapshot = 0;

  outstandingAssets = self->_outstandingAssets;
  self->_outstandingAssets = 0;

  albumUUIDToObjectIDMap = self->_albumUUIDToObjectIDMap;
  self->_albumUUIDToObjectIDMap = 0;

  masterAlbum = self->_masterAlbum;
  self->_masterAlbum = 0;

  assetUUIDtoSortToken = self->_assetUUIDtoSortToken;
  self->_assetUUIDtoSortToken = 0;

  restoreKeyToAssetGroup = self->_restoreKeyToAssetGroup;
  self->_restoreKeyToAssetGroup = 0;

  pathToRestoreKey = self->_pathToRestoreKey;
  self->_pathToRestoreKey = 0;

  [(PLSyncClient *)self _invalidateRestoreContext];
  *(self + 121) &= ~1u;
  pendingAssetsPerContainer = self->_pendingAssetsPerContainer;
  if (pendingAssetsPerContainer)
  {
    CFRelease(pendingAssetsPerContainer);
    self->_pendingAssetsPerContainer = 0;
  }

  [(PLSyncClient *)self setOutstandingSyncJobs:0];
}

- (void)_uninitializeLibrary
{
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_15048;
  v7 = &unk_24738;
  selfCopy = self;
  PLSafeRunWithUnfairLock();
  v2 = PLSyncGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Done uninitializing library.", v3, 2u);
  }
}

- (id)_photoLibraryWithExpectationExists:(BOOL)exists
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_98A4;
  v9 = sub_98B4;
  v10 = 0;
  PLSafeRunWithUnfairLock();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

- (PLSyncClient)init
{
  v3.receiver = self;
  v3.super_class = PLSyncClient;
  result = [(PLSyncClient *)&v3 init];
  if (result)
  {
    result->_photoLibraryLock._os_unfair_lock_opaque = 0;
    result->_pathManagerLock._os_unfair_lock_opaque = 0;
    result->_restoreContextLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (void)_logRestoreContext:(id)context
{
  contextCopy = context;
  if ([contextCopy count])
  {
    v35[0] = @"kPLSyncRestoreContextRestoredFilesKey";
    v35[1] = @"kPLSyncRestoreContextRestoredFilesKey";
    v35[2] = @"kPLSyncRestoreContextUnrecoverableFilesKey";
    v4 = [NSArray arrayWithObjects:v35 count:3];
    allKeys = [contextCopy allKeys];
    v6 = [allKeys sortedArrayUsingSelector:"compare:"];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (!v7)
    {
      goto LABEL_19;
    }

    v9 = v7;
    v10 = *v27;
    *&v8 = 138543618;
    v24 = v8;
    while (1)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if ([v4 containsObject:v12, v24])
        {
          v13 = contextCopy;
          v14 = [contextCopy objectForKeyedSubscript:v12];
          v15 = objc_opt_respondsToSelector();
          v16 = PLSyncGetLog();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
          if (v15)
          {
            if (v17)
            {
              v18 = [v14 count];
              *buf = v24;
              v31 = v12;
              v32 = 1024;
              LODWORD(v33) = v18;
              v19 = v16;
              v20 = "_restoreContext[%{public}@] = %d paths";
              v21 = 18;
              goto LABEL_15;
            }
          }

          else if (v17)
          {
            *buf = v24;
            v31 = v12;
            v32 = 2114;
            v33 = v14;
            v19 = v16;
            v20 = "_restoreContext[%{public}@] = %{public}@";
            v21 = 22;
LABEL_15:
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
          }

          contextCopy = v13;
          goto LABEL_17;
        }

        v14 = PLSyncGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [contextCopy objectForKeyedSubscript:v12];
          *buf = v24;
          v31 = v12;
          v32 = 2114;
          v33 = v22;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "_restoreContext[%{public}@] = %{public}@", buf, 0x16u);
        }

LABEL_17:
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (!v9)
      {
LABEL_19:

        goto LABEL_24;
      }
    }
  }

  v4 = PLSyncGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"empty";
    if (!contextCopy)
    {
      v23 = @"nil";
    }

    *buf = 138543362;
    v31 = v23;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "_restoreContext is %{public}@", buf, 0xCu);
  }

LABEL_24:
}

- (void)_stopListeningToMemoryPressureEvents
{
  memoryPressureSource = self->_memoryPressureSource;
  if (memoryPressureSource)
  {
    dispatch_source_cancel(memoryPressureSource);
    v4 = self->_memoryPressureSource;
    self->_memoryPressureSource = 0;
  }
}

- (void)_startListeningToMemoryPressureEvents
{
  if (!self->_memoryPressureSource)
  {
    _photoLibrary = [(PLSyncClient *)self _photoLibrary];
    objc_initWeak(&location, _photoLibrary);

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_159E8;
    v9[3] = &unk_24BF0;
    objc_copyWeak(&v10, &location);
    v4 = objc_retainBlock(v9);
    v5 = dispatch_get_global_queue(0, 0);
    v6 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 2uLL, v5);
    memoryPressureSource = self->_memoryPressureSource;
    self->_memoryPressureSource = v6;

    v8 = self->_memoryPressureSource;
    pl_dispatch_source_set_event_handler();
    dispatch_resume(self->_memoryPressureSource);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (id)_allAssetMetricBaseURLs
{
  v3 = +[NSMutableArray array];
  pathManager = [(PLSyncClient *)self pathManager];
  v5 = [pathManager photoDirectoryWithType:4];
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  [v3 addObject:v6];

  pathManager2 = [(PLSyncClient *)self pathManager];
  v8 = [pathManager2 photoDirectoryWithType:15];

  v9 = [NSURL fileURLWithPath:v8 isDirectory:1];
  [v3 addObject:v9];

  pathManager3 = [(PLSyncClient *)self pathManager];
  v11 = [pathManager3 photoDirectoryWithType:34];
  v12 = [NSURL fileURLWithPath:v11 isDirectory:1];
  [v3 addObject:v12];

  return v3;
}

- (id)_allAssetDirectoryURLs
{
  v3 = +[NSMutableArray array];
  pathManager = [(PLSyncClient *)self pathManager];
  v5 = [pathManager photoDirectoryWithType:4];
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
  [v3 addObject:v6];

  selfCopy = self;
  pathManager2 = [(PLSyncClient *)self pathManager];
  v8 = [pathManager2 photoDirectoryWithType:15];

  v9 = [NSRegularExpression regularExpressionWithPattern:@"^[0-9]*$" options:0 error:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = +[NSFileManager defaultManager];
  v11 = [v10 contentsOfDirectoryAtPath:v8 error:0];

  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v9 numberOfMatchesInString:v16 options:0 range:{0, objc_msgSend(v16, "length")}] == &dword_0 + 1)
        {
          v17 = [v8 stringByAppendingPathComponent:v16];
          v18 = [NSURL fileURLWithPath:v17 isDirectory:1];
          [v3 addObject:v18];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  pathManager3 = [(PLSyncClient *)selfCopy pathManager];
  iTunesSyncedAssetsDirectory = [pathManager3 iTunesSyncedAssetsDirectory];
  v21 = [NSURL fileURLWithPath:iTunesSyncedAssetsDirectory isDirectory:1];
  [v3 addObject:v21];

  return v3;
}

@end