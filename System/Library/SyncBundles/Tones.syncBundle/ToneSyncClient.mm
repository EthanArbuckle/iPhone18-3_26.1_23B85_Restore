@interface ToneSyncClient
+ (id)_syncPlistPaths;
+ (id)_toneSyncAnchorFilePath;
+ (id)_toneSyncMediaPath;
+ (id)_toneSyncPlistFolderPath;
- (BOOL)installAsset:(id)asset progressCallback:(id)callback error:(id *)error;
- (BOOL)prepareForSyncWithHostAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (ToneSyncClient)init;
- (id)_relativePathCorrespondingTo:(id)to relativeTo:(id)relativeTo;
- (id)_toneMetadataFromSyncOperation:(id)operation syncIdentifier:(id)identifier valid:(BOOL *)valid;
- (id)currentSyncAnchor;
- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block;
- (id)installedAssetMetrics;
- (id)outstandingAssetTransfers;
- (void)_processSyncOperation:(id)operation;
- (void)_removeSyncPlists;
- (void)_writeSyncAnchor:(id)anchor;
- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)assetTransferEndedWithSuccess:(BOOL)success;
- (void)clearSyncData;
- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup;
- (void)syncEndedWithSuccess:(BOOL)success;
@end

@implementation ToneSyncClient

- (ToneSyncClient)init
{
  v8.receiver = self;
  v8.super_class = ToneSyncClient;
  v2 = [(ToneSyncClient *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(TLToneManager);
    toneManager = v2->_toneManager;
    v2->_toneManager = v3;

    v5 = objc_alloc_init(NSMutableArray);
    uploadAssets = v2->_uploadAssets;
    v2->_uploadAssets = v5;
  }

  return v2;
}

- (id)currentSyncAnchor
{
  v2 = [NSDictionary alloc];
  _toneSyncAnchorFilePath = [objc_opt_class() _toneSyncAnchorFilePath];
  v4 = [v2 initWithContentsOfFile:_toneSyncAnchorFilePath];

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [v7 objectForKey:@"syncAnchor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = v10;
      v12 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138543362;
        v17 = v11;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Returning sync anchor: %{public}@", &v16, 0xCu);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = @"0";
  }

  v14 = v13;

  return v13;
}

- (BOOL)prepareForSyncWithHostAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  anchorCopy = anchor;
  v8 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138543618;
    v32 = v9;
    v33 = 2114;
    v34 = anchorCopy;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@, host anchor: %{public}@", buf, 0x16u);
  }

  toneManager = self->_toneManager;
  v29 = 0;
  v11 = [(TLToneManager *)toneManager _removeOrphanedManifestEntriesReturningFilePathsForFoundOrphans:&v29];
  v12 = v29;
  v13 = v12;
  if (v11 == &dword_0 + 1)
  {
    v23 = v12;
    v24 = anchorCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v25 + 1) + 8 * i);
          v20 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v32 = v19;
            _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Tone asset at path %{public}@ couldn't be found, so corresponding plist entry was removed.", buf, 0xCu);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v16);
    }

    v21 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "At least one orphaned plist entry was removed. Requesting reset sync by resetting the sync anchor.", buf, 2u);
    }

    [(ToneSyncClient *)self _writeSyncAnchor:@"0"];
    [(TLToneManager *)self->_toneManager _registerDidRequestResetSyncPostAccidentalToneDeletion];
    v13 = v23;
    anchorCopy = v24;
  }

  [(NSMutableArray *)self->_uploadAssets removeAllObjects:v23];
  [(ToneSyncClient *)self _removeSyncPlists];

  return 1;
}

- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  anchorCopy = anchor;
  v9 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 138543874;
    v54 = v10;
    v55 = 1024;
    *v56 = sync;
    *&v56[4] = 2114;
    *&v56[6] = anchorCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@, sync type: %u, reconciled anchor: %{public}@", buf, 0x1Cu);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [objc_opt_class() _syncPlistPaths];
  v38 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v38)
  {
    v11 = *v48;
    v12 = &_ATLogCategorySyncBundle_ptr;
    v36 = *v48;
    do
    {
      for (i = 0; i != v38; i = v33 + 1)
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v42 = i;
        v14 = *(*(&v47 + 1) + 8 * i);
        _toneSyncPlistFolderPath = [objc_opt_class() _toneSyncPlistFolderPath];
        v16 = [_toneSyncPlistFolderPath stringByAppendingPathComponent:v14];

        v41 = [[NSDictionary alloc] initWithContentsOfFile:v16];
        v17 = [v41 objectForKey:@"operations"];
        v18 = v12[67];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v17;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v40 = v20;
        if (v20)
        {
          v39 = v16;
          v21 = _ATLogCategorySyncBundle_Oversize();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v54 = v20;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Operations: %{public}@", buf, 0xCu);
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v22 = v20;
          v23 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v44;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v44 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v43 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = v27;
                }

                else
                {
                  v28 = 0;
                }

                v29 = v28;

                if (v29)
                {
                  [(ToneSyncClient *)self _processSyncOperation:v29];
                }

                else
                {
                  v30 = _ATLogCategorySyncBundle();
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                  {
                    v31 = objc_opt_class();
                    *buf = 138543618;
                    v54 = 0;
                    v55 = 2114;
                    *v56 = v31;
                    v32 = v31;
                    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "Invalid operation: %{public}@ (%{public}@)", buf, 0x16u);
                  }
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v43 objects:v51 count:16];
            }

            while (v24);
            v11 = v36;
            v12 = &_ATLogCategorySyncBundle_ptr;
          }

          v33 = v42;
          v16 = v39;
        }

        else
        {
          v22 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v54 = 0;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "No operations or invalid operation: %{public}@", buf, 0xCu);
          }

          v33 = v42;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v38);
  }

  [(ToneSyncClient *)self _writeSyncAnchor:anchorCopy];
  return 1;
}

- (id)outstandingAssetTransfers
{
  v25 = +[NSMutableArray array];
  [v25 addObjectsFromArray:self->_uploadAssets];
  _allSyncedTones = [(TLToneManager *)self->_toneManager _allSyncedTones];
  [_allSyncedTones allKeys];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v32;
    v28 = kToneSyncIdentifierKey;
    v27 = kToneTitleKey;
    v7 = &_ATLogCategorySyncBundle_ptr;
    *&v4 = 138543362;
    v24 = v4;
    do
    {
      v8 = 0;
      v26 = v5;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * v8);
        _iTunesRingtoneDirectory = [(TLToneManager *)self->_toneManager _iTunesRingtoneDirectory];
        defaultManager = [v7[61] defaultManager];
        v12 = [_iTunesRingtoneDirectory stringByAppendingPathComponent:v9];
        v13 = [defaultManager fileExistsAtPath:v12];

        if ((v13 & 1) == 0)
        {
          v14 = [_allSyncedTones objectForKey:v9];
          v15 = [v14 objectForKey:v28];
          v16 = [v14 objectForKey:v27];
          if (v15)
          {
            v17 = v6;
            selfCopy = self;
            v19 = v7;
            stringValue = [v15 stringValue];
            v21 = [ATAsset downloadAssetWithIdentifier:stringValue dataclass:@"Ringtone" prettyName:v16];

            if (v21)
            {
              [v25 addObject:v21];
            }

            v7 = v19;
            self = selfCopy;
            v6 = v17;
            v5 = v26;
          }

          else
          {
            v21 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v36 = v14;
              _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "failed to get sync_id from ringtone metadata %{public}@", buf, 0xCu);
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v5);
  }

  v22 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = v25;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "gathered assets to transfer: %{public}@", buf, 0xCu);
  }

  return v25;
}

- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  succeededCopy = succeeded;
  transferCopy = transfer;
  errorCopy = error;
  v10 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138543618;
    v25 = transferCopy;
    v26 = 2114;
    v27 = errorCopy;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "assetTransfer complete for. asset=%{public}@. error=%{public}@", &v24, 0x16u);
  }

  if (succeededCopy)
  {
    isDownload = [transferCopy isDownload];
    toneManager = self->_toneManager;
    if (isDownload)
    {
      _allSyncedTones = [(TLToneManager *)self->_toneManager _allSyncedTones];
      identifier = [transferCopy identifier];
      v15 = [_allSyncedTones objectForKey:identifier];

      v16 = self->_toneManager;
      identifier2 = [transferCopy identifier];
      v18 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [identifier2 longLongValue]);
      [(TLToneManager *)v16 _removeToneWithSyncIdentifier:v18];

      v19 = self->_toneManager;
      path = [transferCopy path];
      lastPathComponent = [path lastPathComponent];
      [(TLToneManager *)v19 _importSyncedToneWithMetadata:v15 fileName:lastPathComponent];
    }

    else
    {
      path2 = [transferCopy path];
      lastPathComponent2 = [path2 lastPathComponent];
      [(TLToneManager *)toneManager _transferPurchasedToITunes:lastPathComponent2];

      [(NSMutableArray *)self->_uploadAssets removeObject:transferCopy];
    }
  }
}

- (void)assetTransferEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = successCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@, success: %{BOOL}d", &v8, 0x12u);
  }

  if (successCopy)
  {
    [(ToneSyncClient *)self _removeSyncPlists];
  }
}

- (BOOL)installAsset:(id)asset progressCallback:(id)callback error:(id *)error
{
  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@", &v9, 0xCu);
  }

  return 1;
}

- (void)syncEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = 138543618;
    v8 = v6;
    v9 = 1024;
    v10 = successCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@, success: %{BOOL}d", &v7, 0x12u);
  }
}

- (void)clearSyncData
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  [(ToneSyncClient *)self _removeSyncPlists];
  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    _toneSyncAnchorFilePath = [objc_opt_class() _toneSyncAnchorFilePath];
    v10 = 138543362;
    v11 = _toneSyncAnchorFilePath;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Removing sync anchor at %{public}@", &v10, 0xCu);
  }

  v8 = +[NSFileManager defaultManager];
  _toneSyncAnchorFilePath2 = [objc_opt_class() _toneSyncAnchorFilePath];
  [v8 removeItemAtPath:_toneSyncAnchorFilePath2 error:0];
}

- (id)installedAssetMetrics
{
  _installedTonesSize = [(TLToneManager *)self->_toneManager _installedTonesSize];
  _installedTones = [(TLToneManager *)self->_toneManager _installedTones];
  v5 = [_installedTones count];

  v10[0] = @"_Count";
  v6 = [NSNumber numberWithLongLong:v5];
  v10[1] = @"_PhysicalSize";
  v11[0] = v6;
  v7 = [NSNumber numberWithLongLong:_installedTonesSize];
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  return v8;
}

- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block
{
  blockCopy = block;
  if (type > 3)
  {
    v36 = 0;
  }

  else
  {
    v36 = *(&off_82A8 + type);
  }

  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Asked to enumerate paths for backup type: %{public}@.", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v53 = 0;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_2540;
  v43[3] = &unk_8260;
  v43[4] = self;
  v45 = blockCopy;
  v46 = buf;
  v35 = v45;
  v44 = v36;
  v8 = objc_retainBlock(v43);
  _installedTones = [(TLToneManager *)self->_toneManager _installedTones];
  _rootDirectory = [(TLToneManager *)self->_toneManager _rootDirectory];
  v38 = [_rootDirectory stringByAppendingString:@"/"];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = _installedTones;
  v11 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v11)
  {
    v12 = *v40;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * v13);
      isPurchased = [v14 isPurchased];
      v16 = *&buf[8];
      if (isPurchased && (*(*&buf[8] + 24) & 1) == 0)
      {
        syncIdentifier = [v14 syncIdentifier];
        stringValue = [syncIdentifier stringValue];
        v19 = [NSString stringWithFormat:@"%@.plist", stringValue, v35];

        _deviceITunesRingtoneDirectory = [(TLToneManager *)self->_toneManager _deviceITunesRingtoneDirectory];
        v21 = [_deviceITunesRingtoneDirectory stringByAppendingPathComponent:v19];

        v22 = [(ToneSyncClient *)self _relativePathCorrespondingTo:v21 relativeTo:v38];

        if (v22)
        {
          (v8[2])(v8, v22, 0);
        }

        v16 = *&buf[8];
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          artworkFile = [v14 artworkFile];
          if (artworkFile)
          {
            _deviceITunesRingtoneDirectory2 = [(TLToneManager *)self->_toneManager _deviceITunesRingtoneDirectory];
            v25 = [_deviceITunesRingtoneDirectory2 stringByAppendingPathComponent:artworkFile];

            v26 = [(ToneSyncClient *)self _relativePathCorrespondingTo:v25 relativeTo:v38];

            if (v26)
            {
              (v8[2])(v8, v26, 0);
            }
          }

          v16 = *&buf[8];
        }
      }

      if (*(v16 + 24))
      {
        break;
      }

      filePath = [v14 filePath];
      v28 = [(ToneSyncClient *)self _relativePathCorrespondingTo:filePath relativeTo:v38];

      if (v28)
      {
        (v8[2])(v8, v28, 0);
      }

      if (*(*&buf[8] + 24))
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v11)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    _deviceITunesRingtoneInformationPlist = [(TLToneManager *)self->_toneManager _deviceITunesRingtoneInformationPlist];
    v30 = [(ToneSyncClient *)self _relativePathCorrespondingTo:_deviceITunesRingtoneInformationPlist relativeTo:v38];

    if (v30)
    {
      (v8[2])(v8, v30, 0);
    }

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      _iTunesRingtoneInformationPlist = [(TLToneManager *)self->_toneManager _iTunesRingtoneInformationPlist];
      v32 = [(ToneSyncClient *)self _relativePathCorrespondingTo:_iTunesRingtoneInformationPlist relativeTo:v38];

      if (v32)
      {
        (v8[2])(v8, v32, 0);
      }

      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        v33 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *v47 = 138543618;
          selfCopy = self;
          v49 = 2114;
          v50 = v36;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: Successfully completed enumeration of paths for backup of type %{public}@.", v47, 0x16u);
        }
      }
    }
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_29D4;
  v22 = sub_29E4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_29D4;
  v16 = sub_29E4;
  v17 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_29EC;
  v11[3] = &unk_8288;
  v11[4] = &v12;
  v11[5] = &v18;
  v6 = [(ToneSyncClient *)self enumeratePathsForBackupType:0 usingBlock:v11];
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v19[5];
    *buf = 138543362;
    v25 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "backing up files: %{public}@", buf, 0xCu);
  }

  if ([v13[5] count])
  {
    v9 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v13[5];
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Excluding files from backup: %{public}@", buf, 0xCu);
    }
  }

  *backup = v19[5];
  *toBackup = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

+ (id)_toneSyncPlistFolderPath
{
  v2 = CPSharedResourcesDirectory();

  return [v2 stringByAppendingPathComponent:@"Media/iTunes_Control/Ringtones/Sync"];
}

+ (id)_toneSyncAnchorFilePath
{
  v2 = CPSharedResourcesDirectory();

  return [v2 stringByAppendingPathComponent:@"Media/iTunes_Control/Ringtones/SyncAnchor.plist"];
}

+ (id)_toneSyncMediaPath
{
  v2 = CPSharedResourcesDirectory();

  return [v2 stringByAppendingPathComponent:@"Media"];
}

- (id)_relativePathCorrespondingTo:(id)to relativeTo:(id)relativeTo
{
  toCopy = to;
  v6 = [toCopy rangeOfString:relativeTo];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [toCopy substringFromIndex:&v6[v7]];
  }

  return v8;
}

+ (id)_syncPlistPaths
{
  v3 = +[NSMutableArray array];
  v4 = +[NSFileManager defaultManager];
  _toneSyncPlistFolderPath = [self _toneSyncPlistFolderPath];
  v19 = 0;
  v6 = [v4 contentsOfDirectoryAtPath:_toneSyncPlistFolderPath error:&v19];
  v7 = v19;

  if (v6)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 hasPrefix:{@"Sync_", v15}] && objc_msgSend(v13, "hasSuffix:", @".plist"))
          {
            [v3 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }
  }

  [v3 sortUsingSelector:{"compare:", v15}];

  return v3;
}

- (void)_processSyncOperation:(id)operation
{
  operationCopy = operation;
  v5 = [operationCopy objectForKey:@"operation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    if ([v7 isEqualToString:@"insert_track"])
    {
      v8 = [operationCopy objectForKey:@"pid"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      if (v10)
      {
        v32 = 0;
        v11 = [(TLToneManager *)self->_toneManager _toneForSyncIdentifier:v10];

        if (!v11)
        {
          v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v10 longLongValue]);
          v13 = [(ToneSyncClient *)self _toneMetadataFromSyncOperation:operationCopy syncIdentifier:v10 valid:&v32];
          if (v32 == 1)
          {
            [(TLToneManager *)self->_toneManager _importSyncedToneWithMetadata:v13 fileName:v12];
          }

          else
          {
            v14 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Did not receive valid tone metadata", buf, 2u);
            }
          }
        }
      }
    }

    if ([v7 isEqualToString:@"delete_track"])
    {
      v15 = [operationCopy objectForKey:@"pid"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (v17)
      {
        [(TLToneManager *)self->_toneManager _removeToneWithSyncIdentifier:v17];
      }
    }

    if ([v7 isEqualToString:@"upload_track"])
    {
      v18 = [operationCopy objectForKey:@"pid"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;

      if (v20)
      {
        v21 = [(TLToneManager *)self->_toneManager _toneForSyncIdentifier:v20];
        v22 = v21;
        if (v21)
        {
          filePath = [v21 filePath];
          _toneSyncMediaPath = [objc_opt_class() _toneSyncMediaPath];
          v25 = [(ToneSyncClient *)self _relativePathCorrespondingTo:filePath relativeTo:_toneSyncMediaPath];

          if (v25)
          {
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v20 longLongValue]);
            name = [v22 name];
            v28 = [ATAsset uploadAssetWithIdentifier:v26 dataclass:@"Ringtone" sourcePath:v25 prettyName:name];

            if (v28)
            {
              [(NSMutableArray *)self->_uploadAssets addObject:v28];
            }
          }

          else
          {
            v26 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v34 = 0;
              _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "Did not upload tone because path was incorrect: %{public}@", buf, 0xCu);
            }
          }
        }

        else
        {
          v25 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            longLongValue = [v20 longLongValue];
            *buf = 134217984;
            v34 = longLongValue;
            _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "Could not find tone for syncIdentifier: %lld", buf, 0xCu);
          }
        }
      }

      else
      {
        v22 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v29 = objc_opt_class();
          *buf = 138543618;
          v34 = 0;
          v35 = 2114;
          v36 = v29;
          v30 = v29;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Invalid syncIdentifier: %{public}@ (%{public}@)", buf, 0x16u);
        }
      }
    }
  }
}

- (id)_toneMetadataFromSyncOperation:(id)operation syncIdentifier:(id)identifier valid:(BOOL *)valid
{
  operationCopy = operation;
  identifierCopy = identifier;
  v9 = +[NSMutableDictionary dictionary];
  v10 = [operationCopy objectForKey:@"ringtone_info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v55 = v12;
  if (v12)
  {
    v13 = [v12 objectForKey:@"guid"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    v54 = v15 != 0;
    if (v15)
    {
      [v9 setObject:v15 forKey:kToneGloballyUniqueIdentifierKey];
    }

    v16 = [v12 objectForKey:@"is_purchased"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v18)
    {
      [v9 setObject:v18 forKey:kTonePurchasedKey];
    }
  }

  else
  {
    v54 = 0;
  }

  v19 = [operationCopy objectForKey:@"item"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    v22 = [v21 objectForKey:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    if (v24)
    {
      [v9 setObject:v24 forKey:kToneTitleKey];
    }

    v53 = identifierCopy;
    v25 = [v21 objectForKey:@"album"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    if (v27)
    {
      [v9 setObject:v27 forKey:kToneAlbumKey];
    }

    v28 = [v21 objectForKey:{@"artist", valid}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    if (v30)
    {
      [v9 setObject:v30 forKey:kToneArtistKey];
    }

    v31 = [v21 objectForKey:@"genre"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;

    if (v33)
    {
      [v9 setObject:v33 forKey:kToneGenreKey];
    }

    v34 = [v21 objectForKey:@"total_time_ms"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (v36)
    {
      [v9 setObject:v36 forKey:kToneDurationKey];
    }

    v37 = [v21 objectForKey:@"is_tone"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;

    bOOLValue = [v39 BOOLValue];
    if (bOOLValue)
    {
      [v9 setObject:kToneMediaKindAlertTone forKey:kToneMediaKindKey];
    }

    valid = v52;
    identifierCopy = v53;
  }

  [v9 setObject:identifierCopy forKey:kToneSyncIdentifierKey];
  v41 = [operationCopy objectForKey:@"store_info"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = v42;

  if (v43)
  {
    v44 = [v43 objectForKey:@"store_item_id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v46 = v45;

    if (v46)
    {
      [v9 setObject:v46 forKey:kToneStoreItemIdentifierKey];
    }

    v47 = [v43 objectForKey:@"storefront_id"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = v47;
    }

    else
    {
      v48 = 0;
    }

    v49 = v48;

    stringValue = [v49 stringValue];

    if (stringValue)
    {
      [v9 setObject:stringValue forKey:kToneStoreFrontIdentifierKey];
    }
  }

  if (valid)
  {
    *valid = v54;
  }

  return v9;
}

- (void)_removeSyncPlists
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _syncPlistPaths = [objc_opt_class() _syncPlistPaths];
  v3 = [_syncPlistPaths countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(_syncPlistPaths);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        _toneSyncPlistFolderPath = [objc_opt_class() _toneSyncPlistFolderPath];
        v9 = [_toneSyncPlistFolderPath stringByAppendingPathComponent:v7];

        v10 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v21 = v9;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Removing sync plist at %{public}@", buf, 0xCu);
        }

        v11 = +[NSFileManager defaultManager];
        v15 = 0;
        v12 = [v11 removeItemAtPath:v9 error:&v15];
        v13 = v15;

        if ((v12 & 1) == 0)
        {
          v14 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v21 = v9;
            v22 = 2114;
            v23 = v13;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Unable to remove sync plist at %{public}@: %{public}@", buf, 0x16u);
          }
        }
      }

      v4 = [_syncPlistPaths countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }
}

- (void)_writeSyncAnchor:(id)anchor
{
  anchorCopy = anchor;
  if ([anchorCopy length])
  {
    v9 = @"syncAnchor";
    v10 = anchorCopy;
    v4 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Writing sync anchor: %{public}@", &v7, 0xCu);
    }

    _toneSyncAnchorFilePath = [objc_opt_class() _toneSyncAnchorFilePath];
    [v4 writeToFile:_toneSyncAnchorFilePath atomically:1];
  }
}

@end