@interface BooksClient
+ (id)alternatePathForPlist:(id)plist withNamePrefix:(id)prefix;
+ (id)bookExtensions;
+ (id)foregroundRestoreWhitelist;
- (BCAssetDatabase)database;
- (BOOL)addItems:(id)items toPlist:(id)plist;
- (BOOL)bumpModificationDate:(id)date;
- (BOOL)commitOutstandingAssets:(id)assets;
- (BOOL)raiseLockout;
- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error;
- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error;
- (BOOL)reconcileWithError:(id *)error progressCallback:(id)callback;
- (BOOL)reconcileWithProgressCallback:(id)callback;
- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager;
- (BooksClient)init;
- (id)_bookEstimatedDownloadSizeForPlistEntry:(id)entry;
- (id)_bookSizeOnDiskForPlistEntry:(id)entry;
- (id)_stringFromObject:(id)object;
- (id)accountInfoForAssetAtPath:(id)path;
- (id)accountsForAssets;
- (id)appleIDsForAssets;
- (id)assetsRequestedByPersistentIDs:(id)ds fromPlist:(id)plist;
- (id)bookTitleForPlistEntry:(id)entry;
- (id)booksFromPlist:(id)plist;
- (id)booksInPath:(id)path;
- (id)currentSyncAnchor;
- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block;
- (id)filesInPath:(id)path;
- (id)filteredDownloads:(id)downloads;
- (id)forwardSyncAssets;
- (id)forwardSyncPersistentIDs;
- (id)installedAssetMetrics;
- (id)knownBooksInPlist:(id)plist;
- (id)outstandingAssetTransfers;
- (id)outstandingAssetTransfersWithDownloadManager:(id)manager;
- (id)persistentIDsFromBookRecords:(id)records;
- (id)persistentIDsMerged:(BOOL)merged;
- (id)plistByPath:(id)path;
- (id)reverseSyncAssets;
- (id)reverseSyncPersistentIDs;
- (id)sortedBooksFromPlist:(id)plist;
- (id)storeInfoForItem:(id)item;
- (id)supportedDataclasses;
- (void)_updateATAssetTotalBytes:(id)bytes plistEntry:(id)entry restoreFlag:(BOOL)flag;
- (void)addKnownAccountInfo:(id)info;
- (void)appendIconUrlForPersistentID:(id)d toAsset:(id)asset;
- (void)assetDownloadCompleted:(id)completed;
- (void)assetInstallFailed:(id)failed withError:(id)error;
- (void)assetInstallSucceeded:(id)succeeded;
- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error;
- (void)assetTransferEndedWithSuccess:(BOOL)success;
- (void)assetUploadCompleted:(id)completed;
- (void)backupEnded;
- (void)clearSyncData;
- (void)dealloc;
- (void)deleteArtworkExcludingFileNames:(id)names;
- (void)deleteOrphanedFiles;
- (void)deleteOrphanedFilesInPath:(id)path knownToPlist:(id)plist;
- (void)generateDirectories;
- (void)handleError:(id)error forAsset:(id)asset;
- (void)installedAssetMetrics:(id *)metrics forPlistPath:(id)path;
- (void)iteratePathsForPlist:(id)plist processingBlock:(id)block;
- (void)lowerLockout;
- (void)nonAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory recursive:(BOOL)recursive;
- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup;
- (void)prepareForBackup;
- (void)processDeletesFiles;
- (void)regenerateEstimatedDownloadSizesForPlist:(id)plist;
- (void)regeneratePersistentIDsForPlist:(id)plist;
- (void)removeAssetByPersistentID:(id)d;
- (void)removeDatabase;
- (void)removeItemAtPath:(id)path;
- (void)removeItemByPersistentID:(id)d fromPlist:(id)plist;
- (void)removeItemsByPersistentID:(id)d fromPlist:(id)plist;
- (void)removeKnownItems:(id)items;
- (void)removePromisedAssets;
- (void)removePromisedAssetsByPath:(id)path;
- (void)restoreEndedWithError:(id)error;
- (void)syncEndedWithSuccess:(BOOL)success;
- (void)trimOutstandingAssetList;
- (void)updateAssets:(id)assets withSSDownloads:(id)downloads andDownloadCompletePathMap:(id)map;
@end

@implementation BooksClient

- (BooksClient)init
{
  v7.receiver = self;
  v7.super_class = BooksClient;
  v2 = [(BooksClient *)&v7 init];
  if (v2)
  {
    v3 = BCDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v11 = v2;
      v12 = 2080;
      v13 = "Oct 10 2025";
      v14 = 2080;
      v15 = "21:43:53";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "initialized %@ -- %s; %s", buf, 0x20u);
    }

    [(BooksClient *)v2 generateDirectories];
    v4 = objc_alloc_init(BCLockout);
    v2->_lockout = v4;
    [(BCLockout *)v4 setPath:@"/var/mobile/Media/Books/Sync/.bookSync.lock"];
    v9 = @"com.apple.sync.books.began";
    [(BCLockout *)v2->_lockout setStartNotifications:[NSArray arrayWithObjects:&v9 count:1]];
    v8[0] = @"com.apple.sync.books.finished";
    v8[1] = @"com.apple.books.plist.changed";
    [(BCLockout *)v2->_lockout setEndNotifications:[NSArray arrayWithObjects:v8 count:2]];
    v2->_plistsByPath = objc_alloc_init(NSMutableDictionary);
    v2->_plist_queue = dispatch_queue_create("com.apple.atc.Books.BooksClient.plists", 0);
    v5 = objc_alloc_init(NSFileCoordinator);
    v2->_relativePathsToBackup = 0;
    v2->_fileCoord = v5;
    v2->_appleIDs = 0;
    v2->_accountInfos = 0;
  }

  return v2;
}

- (void)dealloc
{
  self->_appleIDs = 0;

  self->_accountInfos = 0;
  self->_relativePathsToBackup = 0;

  self->_pathsForDevice2DeviceRestoreRedownloadable = 0;
  self->_pathsForDevice2DeviceRestoreLocal = 0;

  self->_lockout = 0;
  [(BooksClient *)self setDatabase:0];

  self->_plistsByPath = 0;
  dispatch_release(self->_plist_queue);
  self->_plist_queue = 0;

  self->_fileCoord = 0;
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_11EEC();
  }

  v4.receiver = self;
  v4.super_class = BooksClient;
  [(BooksClient *)&v4 dealloc];
}

- (BOOL)raiseLockout
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "raiseLockout %@", &v5, 0xCu);
  }

  return [(BCLockout *)self->_lockout lock:1];
}

- (void)lowerLockout
{
  [(BCLockout *)self->_lockout unlock];
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "lowerLockout %@", &v4, 0xCu);
  }
}

- (id)supportedDataclasses
{
  v2 = BCDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_11F5C();
  }

  return [NSArray arrayWithObject:@"Book"];
}

- (id)currentSyncAnchor
{
  v2 = BCDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_11FCC();
  }

  return @"0";
}

- (BOOL)reconcileSync:(unsigned int)sync withNewAnchor:(id)anchor progressCallback:(id)callback error:(id *)error
{
  if (sync)
  {
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "reconcileSync %@", buf, 0xCu);
    }

    [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByRestoreFlag:0 keepDownloadedAssetRows:1];
    [(BooksClient *)self processDeletesFiles];
    [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    [(BooksClient *)self setRestoreSession:0];
    return [(BooksClient *)self reconcileWithError:error progressCallback:callback];
  }

  else
  {
    v11 = BCDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "reconcileSync ATSyncNoSync", buf, 2u);
    }

    return 1;
  }
}

- (void)syncEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v4 = BCDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = successCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "syncEndedWithSuccess: %d", v5, 8u);
  }
}

- (BOOL)bumpModificationDate:(id)date
{
  v4 = objc_alloc_init(NSDate);
  v5 = [[NSDictionary alloc] initWithObjectsAndKeys:{v4, NSFileModificationDate, 0}];

  v9 = 0;
  v6 = [+[NSFileManager defaultManager](NSFileManager setAttributes:"setAttributes:ofItemAtPath:error:" ofItemAtPath:v5 error:date, &v9];
  if (!v6)
  {
    if (v9)
    {
      v7 = BCDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1207C(date, &v9);
      }
    }
  }

  return v6;
}

- (BOOL)reconcileRestoreOfType:(int)type withError:(id *)error
{
  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(selfCopy) = type;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "#D2D Reconciling restore of type:%u", buf, 8u);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = objc_autoreleasePoolPush();
  v9 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Books.plist" withNamePrefix:@"Backup-"];
  v10 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" withNamePrefix:@"Backup-"];
  v11 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" withNamePrefix:@"Backup-"];
  if ([(NSFileManager *)v7 fileExistsAtPath:v9])
  {
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Restoring Books.plist from Backup-Books.plist.", buf, 2u);
    }

    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Books.plist"];
    [(NSFileManager *)v7 copyItemAtPath:v9 toPath:@"/var/mobile/Media/Books/Books.plist" error:0];
  }

  if ([(NSFileManager *)v7 fileExistsAtPath:v10])
  {
    v13 = BCDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Restoring Purchases.plist from Backup-Purchases.plist.", buf, 2u);
    }

    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    [(NSFileManager *)v7 copyItemAtPath:v10 toPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist" error:0];
    [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  }

  if (-[NSFileManager fileExistsAtPath:](v7, "fileExistsAtPath:", v11) && [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")])
  {
    v14 = BCDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Restoring Managed.plist from Backup-Managed.plist.", buf, 2u);
    }

    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Managed/Managed.plist"];
    [(NSFileManager *)v7 copyItemAtPath:v11 toPath:@"/var/mobile/Media/Books/Managed/Managed.plist" error:0];
    [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Managed/Managed.plist"];
  }

  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "resetPaths"}];
  [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Books.plist"];
  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Purchases/Purchases.plist", "resetPaths"}];
  [(BooksClient *)self bumpModificationDate:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  if ([(NSFileManager *)v7 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Books.plist"])
  {
    v15 = BCDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Removing Sync/Books.plist.", buf, 2u);
    }

    [(NSFileManager *)v7 removeItemAtPath:@"/var/mobile/Media/Books/Sync/Books.plist" error:0];
  }

  v16 = BCDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = @"/var/mobile/Media/Books/Sync/Books.plist";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Creating Sync: %@", buf, 0xCu);
  }

  v17 = objc_alloc_init(NSMutableArray);
  v18 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "books"}];
  v19 = BCDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v18 count];
    *buf = 134217984;
    selfCopy = v20;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Found %lu books in Books.plist.", buf, 0xCu);
  }

  if ([v18 count])
  {
    [v17 addObjectsFromArray:v18];
  }

  v21 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Purchases/Purchases.plist", "books"}];
  v22 = BCDefaultLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 count];
    *buf = 134217984;
    selfCopy = v23;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Found %lu books in Purchases.plist.", buf, 0xCu);
  }

  if ([v21 count])
  {
    [v17 addObjectsFromArray:v21];
  }

  v24 = BCDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v17 count];
    *buf = 134217984;
    selfCopy = v25;
    _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "Merging two backups: Total entries: %lu", buf, 0xCu);
  }

  if ([v17 count])
  {
    [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Books.plist", "addItems:", v17}];
  }

  objc_autoreleasePoolPop(v8);
  v26 = BCDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "reconcileRestoreWithError %@", buf, 0xCu);
  }

  [(BooksClient *)self setRestoreSession:1];
  return [(BooksClient *)self reconcileWithError:error progressCallback:0];
}

- (void)restoreEndedWithError:(id)error
{
  v4 = BCDefaultLog();
  v5 = v4;
  if (error)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_12134();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "restoreEndedWithError: nil", v6, 2u);
  }
}

- (id)outstandingAssetTransfers
{
  v3 = objc_autoreleasePoolPush();
  [(BooksClient *)self trimOutstandingAssetList];
  v4 = objc_alloc_init(NSMutableArray);
  reverseSyncAssets = [(BooksClient *)self reverseSyncAssets];
  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = [reverseSyncAssets count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Reverse Sync %lu items", buf, 0xCu);
  }

  if ([reverseSyncAssets count])
  {
    [v4 addObjectsFromArray:reverseSyncAssets];
  }

  forwardSyncAssets = [(BooksClient *)self forwardSyncAssets];
  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [forwardSyncAssets count];
    *buf = 134217984;
    v15 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Forward Sync %lu items", buf, 0xCu);
  }

  if ([forwardSyncAssets count])
  {
    [v4 addObjectsFromArray:forwardSyncAssets];
  }

  objc_autoreleasePoolPop(v3);
  v10 = BCDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "ATAssets: %@", &v12, 0xCu);
  }

  return v4;
}

- (id)outstandingAssetTransfersWithDownloadManager:(id)manager
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Getting outstanding assets for transfer.", buf, 2u);
  }

  outstandingAssetTransfers = [(BooksClient *)self outstandingAssetTransfers];
  if ([outstandingAssetTransfers count])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [outstandingAssetTransfers countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(outstandingAssetTransfers);
          }

          [*(*(&v15 + 1) + 8 * v9) setVariantOptions:&off_21878];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [outstandingAssetTransfers countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v7);
    }

    v10 = [(BooksClient *)self filteredDownloads:manager];
    downloadCompletePathMap = [(BCAssetDatabase *)[(BooksClient *)self database] downloadCompletePathMap];
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v10;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "filteredDownloads: %@", buf, 0xCu);
    }

    [(BooksClient *)self updateAssets:outstandingAssetTransfers withSSDownloads:v10 andDownloadCompletePathMap:downloadCompletePathMap];
  }

  else
  {
    v13 = BCDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "No assets, not filtering downloads.", buf, 2u);
    }
  }

  return outstandingAssetTransfers;
}

- (void)clearSyncData
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "clearSyncData called", v4, 2u);
  }

  [(BooksClient *)self removeDatabase];
  [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Upload.plist"];
  [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Artwork/"];
  if ([(BooksClient *)self raiseLockout])
  {
    [(BooksClient *)self processDeletesFiles];
    [(BooksClient *)self deleteOrphanedFiles];
    [(BooksClient *)self removePromisedAssets];
  }

  [(BooksClient *)self lowerLockout];
}

- (void)assetTransfer:(id)transfer succeeded:(BOOL)succeeded withError:(id)error
{
  succeededCopy = succeeded;
  v9 = BCDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    transferCopy = transfer;
    v14 = 1024;
    *v15 = succeededCopy;
    *&v15[4] = 2112;
    *&v15[6] = error;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "assetTransfer: %@ success:%d error:%@", &v12, 0x1Cu);
  }

  if (succeededCopy)
  {
    if ([transfer isDownload])
    {
      [(BooksClient *)self assetDownloadCompleted:transfer];
    }

    else
    {
      [(BooksClient *)self assetUploadCompleted:transfer];
    }
  }

  else
  {
    v10 = BCDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = @"Not Recoverable";
      if (error)
      {
        if (![objc_msgSend(error "domain")] || objc_msgSend(error, "code") == &dword_4 + 3 || objc_msgSend(error, "code") == &dword_8 || objc_msgSend(error, "code") == &dword_C + 2 || objc_msgSend(error, "code") == &dword_10 || objc_msgSend(error, "code") == &dword_8 + 1 || objc_msgSend(error, "code") == &dword_10 + 2 || objc_msgSend(error, "code") == &dword_4 || objc_msgSend(error, "code") == &dword_10 + 3 || objc_msgSend(error, "code") == &dword_14 || objc_msgSend(error, "code") == &dword_18 + 1 || objc_msgSend(error, "code") == &dword_18 + 3 || objc_msgSend(error, "code") == &dword_18 || objc_msgSend(error, "code") == &dword_1C + 3 || objc_msgSend(error, "code") == &stru_20 || objc_msgSend(error, "code") == &stru_20.cmd + 1)
        {
          v11 = @"Recoverable";
        }

        else
        {
          v11 = @"Recoverable";
          if ([error code] != &stru_20.cmd + 2 && objc_msgSend(error, "code") != &stru_20.cmd + 3)
          {
            v11 = @"Not Recoverable";
          }
        }
      }

      v12 = 138412802;
      transferCopy = v11;
      v14 = 2112;
      *v15 = transfer;
      *&v15[8] = 2112;
      *&v15[10] = error;
      _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%@ Error -- Asset: %@; Transfer Error: %@", &v12, 0x20u);
    }

    [(BooksClient *)self handleError:error forAsset:transfer];
  }
}

- (void)assetTransferEndedWithSuccess:(BOOL)success
{
  successCopy = success;
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = successCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetTransferEndedWithSuccess: %d", v6, 8u);
  }

  if (successCopy)
  {
    [(BooksClient *)self removeItemAtPath:@"/var/mobile/Media/Books/Sync/Upload.plist"];
  }
}

- (void)assetInstallSucceeded:(id)succeeded
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412802;
    succeededCopy3 = [succeeded identifier];
    v10 = 1024;
    isDownload = [succeeded isDownload];
    v12 = 2112;
    succeededCopy = succeeded;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isDownload: %d] Asset: %@", &v8, 0x1Cu);
  }

  if ([succeeded isDownload])
  {
    if ([succeeded isRestore])
    {
      v6 = BCDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        succeededCopy3 = succeeded;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isRestore: YES] now installing the asset", &v8, 0xCu);
      }

      [(BooksClient *)self assetDownloadCompleted:succeeded];
    }

    else
    {
      v7 = BCDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        succeededCopy3 = succeeded;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "assetInstallSucceeded -- %@ [isRestore: NO] just removing this asset from the outstanding database", &v8, 0xCu);
      }

      if ([objc_msgSend(succeeded "identifier")])
      {
        -[BCAssetDatabase removeOutstandingAssetByPersistentID:](-[BooksClient database](self, "database"), "removeOutstandingAssetByPersistentID:", [succeeded identifier]);
      }
    }
  }
}

- (void)assetInstallFailed:(id)failed withError:(id)error
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (error)
    {
      if ([objc_msgSend(error "domain")])
      {
        sub_12304();
        v8 = *v9;
      }

      else
      {
        v8 = @"Recoverable";
      }
    }

    else
    {
      v8 = @"Not Recoverable";
    }

    *v9 = 138412802;
    *&v9[4] = v8;
    v10 = 2112;
    failedCopy = failed;
    v12 = 2112;
    errorCopy = error;
    _os_log_error_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%@ Error -- Asset: %@; Install Error: %@", v9, 0x20u);
  }

  [(BooksClient *)self handleError:error forAsset:failed];
}

- (id)installedAssetMetrics
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_12494();
  }

  [(BooksClient *)self processDeletesFiles];
  v4 = [NSArray arrayWithObjects:@"/var/mobile/Media/Books/Purchases/Purchases.plist", @"/var/mobile/Media/Books/Books.plist", @"/var/mobile/Media/Books/Managed/Managed.plist", 0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v29;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v26 = 0;
        v27 = 0;
        [(BooksClient *)self installedAssetMetrics:&v26 forPlistPath:v11];
        v8 += v26;
        v7 += v27;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  v12 = BCDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_124D0();
  }

  v26 = 0;
  v27 = 0;
  [(BooksClient *)self nonAssetDiskSpaceMetrics:&v26 directory:@"/var/mobile/Media/Books/" recursive:0];
  v13 = BCDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_12538(&v26);
  }

  v14 = v26;
  v26 = 0;
  v27 = 0;
  [(BooksClient *)self nonAssetDiskSpaceMetrics:&v26 directory:@"/var/mobile/Media/Books/Purchases/" recursive:0];
  v15 = BCDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_125A8(&v26);
  }

  v16 = v14 + v8;
  v17 = v26;
  v26 = 0;
  v27 = 0;
  [(BooksClient *)self nonAssetDiskSpaceMetrics:&v26 directory:@"/var/mobile/Media/Books/Sync/" recursive:1];
  v18 = BCDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_12618(&v26);
  }

  v19 = v16 + v17;
  v20 = v26;
  v26 = 0;
  v27 = 0;
  [(BooksClient *)self nonAssetDiskSpaceMetrics:&v26 directory:@"/var/mobile/Media/Books/Managed/" recursive:1];
  v21 = BCDefaultLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    sub_12688(&v26);
  }

  v22 = v19 + v20;
  v23 = v26;
  v24 = BCDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    sub_126F8();
  }

  return [NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithLongLong:v7], @"_Count", [NSNumber numberWithLongLong:v22 + v23], @"_PhysicalSize", 0];
}

- (BOOL)shouldBackgroundRestoreFile:(id)file backupManager:(id)manager
{
  path = [file path];
  if (([path hasPrefix:@"/var/mobile/Media/Books/Sync"] & 1) == 0 && !objc_msgSend(path, "hasPrefix:", @"/var/mobile/Media/Books/Managed"))
  {
    v6 = [path hasPrefix:@"/var/mobile/Media/Books"];
    if (!v6)
    {
      return v6;
    }

    if ([+[BooksClient foregroundRestoreWhitelist](BooksClient "foregroundRestoreWhitelist")])
    {
      v5 = BCDefaultLog();
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        return v6;
      }

      v13 = 138412290;
      v14 = path;
      v7 = "Restoring in foreground: %@";
      goto LABEL_5;
    }

    v8 = [+[BooksClient bookExtensions](BooksClient "bookExtensions")];
    v9 = BCDefaultLog();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v10)
      {
        v13 = 138412290;
        v14 = path;
        v11 = "Found book in backup, restoring in background: %@";
LABEL_15:
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, v11, &v13, 0xCu);
      }
    }

    else if (v10)
    {
      v13 = 138412290;
      v14 = path;
      v11 = "Restoring in background: %@";
      goto LABEL_15;
    }

    LOBYTE(v6) = 1;
    return v6;
  }

  v5 = BCDefaultLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v13 = 138412290;
    v14 = path;
    v7 = "Restoring managed or sync file in foreground: %@";
LABEL_5:
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, v7, &v13, 0xCu);
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)assetDownloadCompleted:(id)completed
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = completed;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Asset downloaded successfully: %@", buf, 0xCu);
  }

  if (([objc_msgSend(completed "path")] & 1) == 0 && objc_msgSend(objc_msgSend(completed, "path"), "length") && (objc_msgSend(objc_msgSend(completed, "path"), "hasPrefix:", @"/var/mobile/Media/") & 1) == 0)
  {
    [completed setPath:{objc_msgSend(@"/var/mobile/Media/", "stringByAppendingString:", objc_msgSend(completed, "path"))}];
  }

  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    isRestore = [completed isRestore];
    bypassStore = [completed bypassStore];
    *buf = 67109376;
    *&buf[4] = isRestore;
    *&buf[8] = 1024;
    *&buf[10] = bypassStore;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "isRestore: %d; BypassStore: %d", buf, 0xEu);
  }

  if ([objc_msgSend(completed "path")] && objc_msgSend(objc_msgSend(completed, "identifier"), "length"))
  {
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      path = [completed path];
      identifier = [completed identifier];
      *buf = 138412546;
      *&buf[4] = path;
      *&buf[12] = 2112;
      *&buf[14] = identifier;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "assetDownloadCompleted -- Updating OustandingAsset database %@ -> %@", buf, 0x16u);
    }

    -[BCAssetDatabase setDownloadPath:forOutstandingAssetsByPersistentID:](-[BooksClient database](self, "database"), "setDownloadPath:forOutstandingAssetsByPersistentID:", [completed path], objc_msgSend(completed, "identifier"));
  }

  else
  {
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_12760();
    }
  }

  v13 = [objc_msgSend(completed "path")];
  if (([v13 hasSuffix:@"/"] & 1) == 0)
  {
    v13 = [v13 stringByAppendingString:@"/"];
  }

  if ([v13 isEqualToString:@"/var/mobile/Media/Books/"])
  {
    v14 = BooksPlistPath;
  }

  else
  {
    if (![v13 isEqualToString:@"/var/mobile/Media/Books/Purchases/"])
    {
      goto LABEL_25;
    }

    v14 = PurchasesPlistPath;
  }

  v15 = *v14;
  if (*v14)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = [(BooksClient *)self plistByPath:v15];
    v18 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v17 books]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v30 = 0;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_53F8;
    v22[3] = &unk_204D0;
    v22[4] = completed;
    v22[5] = v18;
    v22[6] = buf;
    [(NSMutableArray *)v18 enumerateObjectsUsingBlock:v22];
    if (*(*&buf[8] + 24) == 1)
    {
      [v17 replaceItems:v18];
    }

    else
    {
      v20 = BCDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v23 = 138412802;
        completedCopy = completed;
        v25 = 2112;
        v26 = v15;
        v27 = 2112;
        v28 = v18;
        _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "assetDownloadCompleted -- Couldn't find entry in plist for asset %@.  PlistPath: %@ Entries: %@", v23, 0x20u);
      }

      if ([objc_msgSend(completed "identifier")])
      {
        v21 = BCDefaultLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_127C8();
        }

        -[BCAssetDatabase removeOutstandingAssetByPersistentID:](-[BooksClient database](self, "database"), "removeOutstandingAssetByPersistentID:", [completed identifier]);
      }
    }

    _Block_object_dispose(buf, 8);
    objc_autoreleasePoolPop(v16);
    return;
  }

LABEL_25:
  v19 = BCDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_12830();
  }
}

- (void)assetUploadCompleted:(id)completed
{
  v4 = BCDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    completedCopy = completed;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Asset uploaded successfully: %@", &v5, 0xCu);
  }
}

- (void)prepareForBackup
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Preparing for backup.", buf, 2u);
  }

  self->_appleIDs = 0;
  self->_accountInfos = 0;

  self->_relativePathsToBackup = 0;
  [(BooksClient *)self setPathsForDevice2DeviceRestoreRedownloadable:+[NSMutableArray array]];
  [(BooksClient *)self setPathsForDevice2DeviceRestoreLocal:+[NSMutableArray array]];
  v39 = objc_autoreleasePoolPush();
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = +[NSFileManager defaultManager];
  [(BooksClient *)self processDeletesFiles];
  [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Books.plist"];
  [(BooksClient *)self regeneratePersistentIDsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  [(BooksClient *)self regenerateEstimatedDownloadSizesForPlist:@"/var/mobile/Media/Books/Books.plist"];
  [(BooksClient *)self regenerateEstimatedDownloadSizesForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  v7 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Books.plist" withNamePrefix:@"Backup-"];
  [(BooksClient *)self removeItemAtPath:v7];
  [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Books.plist" toPath:v7 error:0];
  v8 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" withNamePrefix:@"Backup-"];
  [(BooksClient *)self removeItemAtPath:v8];
  [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist" toPath:v8 error:0];
  v9 = [NSArray arrayWithObjects:@"/var/mobile/Media/Books/iBooksData.plist", @"/var/mobile/Media/Books/iBooksData2.plist", @"/var/mobile/Media/Books/Sync/Artwork/", v7, v8, 0];
  obj = v5;
  [v5 addObjectsFromArray:v9];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v47;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        if ([(NSFileManager *)v6 fileExistsAtPath:v14])
        {
          selfCopy = self;
          v16 = BCDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v52 = v14;
            _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "#D2D: Adding potential D2D Local path: %@", buf, 0xCu);
          }

          self = selfCopy;
          [(NSMutableArray *)selfCopy->_pathsForDevice2DeviceRestoreLocal addObject:v14];
        }
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v11);
  }

  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_5CEC;
  v45[3] = &unk_204F8;
  v45[4] = self;
  v45[5] = obj;
  [(BooksClient *)self iteratePathsForPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist" processingBlock:v45];
  [(BooksClient *)self iteratePathsForPlist:@"/var/mobile/Media/Books/Books.plist" processingBlock:v45];
  v17 = [+[MCProfileConnection sharedConnection](MCProfileConnection "sharedConnection")];
  v18 = BCDefaultLog();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    v20 = v39;
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Backing up managed content.", buf, 2u);
    }

    v21 = [BooksClient alternatePathForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" withNamePrefix:@"Backup-"];
    [(BooksClient *)self removeItemAtPath:v21];
    [(NSFileManager *)v6 copyItemAtPath:@"/var/mobile/Media/Books/Managed/Managed.plist" toPath:v21 error:0];
    [obj addObject:v21];
    if ([(NSFileManager *)v6 fileExistsAtPath:v21])
    {
      v22 = BCDefaultLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v52 = v21;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "#D2D: Adding potential D2D Local path: %@", buf, 0xCu);
      }

      [(NSMutableArray *)self->_pathsForDevice2DeviceRestoreLocal addObject:v21];
    }

    [(BooksClient *)self iteratePathsForPlist:@"/var/mobile/Media/Books/Managed/Managed.plist" processingBlock:v45];
  }

  else
  {
    v20 = v39;
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Enterprise backup is not allowed - skipping managed content.", buf, 2u);
    }
  }

  v23 = [@"/var/mobile/Media/Books/" length];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v24 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v42;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v42 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v41 + 1) + 8 * j);
        if ([v28 hasPrefix:@"/var/mobile/Media/Books/"])
        {
          v28 = [v28 substringFromIndex:v23];
          if (![v28 length])
          {
            continue;
          }
        }

        [v4 addObject:v28];
      }

      v25 = [obj countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v25);
  }

  self->_relativePathsToBackup = [[NSArray alloc] initWithArray:v4];
  objc_autoreleasePoolPop(v20);
  v29 = BCDefaultLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    relativePathsToBackup = self->_relativePathsToBackup;
    *buf = 138412290;
    v52 = relativePathsToBackup;
    _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "computed pathsToBackup %@", buf, 0xCu);
  }

  v31 = BCDefaultLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    pathsForDevice2DeviceRestoreRedownloadable = [(BooksClient *)self pathsForDevice2DeviceRestoreRedownloadable];
    *buf = 138412290;
    v52 = pathsForDevice2DeviceRestoreRedownloadable;
    _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "#D2D: computed pathsForDevice2DeviceRestoreRedownloadable %@", buf, 0xCu);
  }

  v33 = BCDefaultLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    pathsForDevice2DeviceRestoreLocal = [(BooksClient *)self pathsForDevice2DeviceRestoreLocal];
    *buf = 138412290;
    v52 = pathsForDevice2DeviceRestoreLocal;
    _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "#D2D: computed pathsForDevice2DeviceRestoreLocal %@", buf, 0xCu);
  }

  v35 = BCDefaultLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    appleIDs = self->_appleIDs;
    *buf = 138412290;
    v52 = appleIDs;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "computed AppleIDs %@", buf, 0xCu);
  }

  v37 = BCDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    accountInfos = self->_accountInfos;
    *buf = 138412290;
    v52 = accountInfos;
    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "computed accountInfos %@", buf, 0xCu);
  }
}

- (void)backupEnded
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "backupEnded called", v4, 2u);
  }

  self->_appleIDs = 0;
  self->_accountInfos = 0;

  self->_relativePathsToBackup = 0;
  [(BooksClient *)self setPathsForDevice2DeviceRestoreRedownloadable:0];
  [(BooksClient *)self setPathsForDevice2DeviceRestoreLocal:0];
}

- (void)pathsToBackup:(id *)backup pathsNotToBackup:(id *)toBackup
{
  if (!self->_relativePathsToBackup)
  {
    [(BooksClient *)self prepareForBackup];
  }

  if (backup)
  {
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      relativePathsToBackup = self->_relativePathsToBackup;
      v10 = 138412290;
      v11 = relativePathsToBackup;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "pathsToBackup %@", &v10, 0xCu);
    }

    *backup = self->_relativePathsToBackup;
  }

  if (toBackup)
  {
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "pathsToNotBackup count: %d", &v10, 8u);
    }

    *toBackup = 0;
  }
}

- (id)enumeratePathsForBackupType:(int)type usingBlock:(id)block
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    typeCopy = type;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "#D2D: enumeratePathsForBackupType:%u", buf, 8u);
  }

  if (!self->_relativePathsToBackup)
  {
    [(BooksClient *)self prepareForBackup];
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_624C;
  v13 = &unk_20520;
  typeCopy2 = type;
  blockCopy = block;
  if ((type & 0xFFFFFFFE) == 2)
  {
    if ((sub_624C(&v10, self->_pathsForDevice2DeviceRestoreLocal, 0) & 1) == 0)
    {
      v8 = [(BooksClient *)self pathsForDevice2DeviceRestoreRedownloadable:v10];
      v12(&v10, v8, 2);
    }
  }

  else if (type == 1)
  {
    v12(&v10, [(BooksClient *)self pathsForDevice2DeviceRestoreLocal:v10], 0);
  }

  return 0;
}

- (id)appleIDsForAssets
{
  appleIDs = self->_appleIDs;
  if (!appleIDs)
  {
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calling prepareForBackup from appleIDsForAssets", v6, 2u);
    }

    [(BooksClient *)self prepareForBackup];
    appleIDs = self->_appleIDs;
  }

  return appleIDs;
}

- (id)accountsForAssets
{
  accountInfos = self->_accountInfos;
  if (!accountInfos)
  {
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Calling prepareForBackup from accountInfosForAssets", v6, 2u);
    }

    [(BooksClient *)self prepareForBackup];
    accountInfos = self->_accountInfos;
  }

  return accountInfos;
}

- (void)trimOutstandingAssetList
{
  v3 = [(BooksClient *)self persistentIDsMerged:1];
  v4 = BCDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [v3 count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Trimming Outstanding Asset List: %lu known items", &v5, 0xCu);
  }

  [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByPersistentIDs:v3];
}

- (BOOL)reconcileWithError:(id *)error progressCallback:(id)callback
{
  v7 = objc_alloc_init(NSAutoreleasePool);
  v8 = [(BooksClient *)self reconcileWithProgressCallback:callback];
  [(BCLockout *)self->_lockout unlock];

  if (error)
  {
    *error = 0;
    v9 = 0;
    if (*error)
    {
      v10 = BCDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_12898(error, v10, v11, v12, v13, v14, v15, v16);
      }

      return v8;
    }
  }

  else
  {
    v17 = 0;
  }

  if (!v8)
  {
    v18 = BCDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_12908();
    }
  }

  return v8;
}

- (BOOL)reconcileWithProgressCallback:(id)callback
{
  if (callback)
  {
    callbackCopy = callback;
  }

  else
  {
    callbackCopy = &stru_20560;
  }

  callbackCopy->invoke(callbackCopy, a2, 0.0);
  reverseSyncPersistentIDs = [(BooksClient *)self reverseSyncPersistentIDs];
  v6 = [(BooksClient *)self sortedBooksFromPlist:@"/var/mobile/Media/Books/Sync/Books.plist"];
  if ([(BooksClient *)self isRestoreSession])
  {
    v6 = [v6 filteredArrayUsingPredicate:{+[NSPredicate predicateWithFormat:](NSPredicate, "predicateWithFormat:", @"%K != nil || %K != nil", @"Path", @"Backup-Path"}];
  }

  v7 = [(BooksClient *)self persistentIDsFromBookRecords:v6];
  [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetMissingFromPersistentIDs:v7];
  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_12948();
  }

  v9 = BCDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_129B8();
  }

  callbackCopy->invoke(callbackCopy, 0.166666667);
  v10 = [(BooksClient *)self persistentIDsMerged:1];
  v11 = BCDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Assets we have: %@", buf, 0xCu);
  }

  [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetsByPersistentIDs:v10];
  v12 = [objc_msgSend(v7 presortedArrayRemovingMatchingPresortedStrings:{v10), "presortedArrayRemovingMatchingPresortedStrings:", reverseSyncPersistentIDs}];
  if (![(BooksClient *)self isRestoreSession])
  {
    v13 = [-[BCAssetDatabase outstandingAssetsByRestoreFlag:](-[BooksClient database](self "database")];
    if ([v13 count])
    {
      v12 = [v12 presortedArrayRemovingMatchingPresortedStrings:{objc_msgSend(v13, "sortedArrayUsingSelector:", "compare:")}];
    }
  }

  v14 = BCDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Assets we need: %@", buf, 0xCu);
  }

  callbackCopy->invoke(callbackCopy, 0.333333333);
  v15 = [(BooksClient *)self persistentIDsMerged:0];
  v16 = BCDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v15;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Assets we've seen: %@", buf, 0xCu);
  }

  v26 = reverseSyncPersistentIDs;
  v17 = [objc_msgSend(v15 presortedArrayRemovingMatchingPresortedStrings:{v7), "presortedArrayRemovingMatchingPresortedStrings:", reverseSyncPersistentIDs}];
  v18 = BCDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v17;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Assets to exclude: %@", buf, 0xCu);
  }

  if ([v12 count])
  {
    v19 = -[BooksClient commitOutstandingAssets:](self, "commitOutstandingAssets:", [v6 presortedArrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingPresortedStrings:v12]);
    v20 = [v12 presortedArrayRemovingMatchingPresortedStrings:v15];
    v21 = BCDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Assets To append: %@", buf, 0xCu);
    }

    v22 = [v6 presortedArrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingPresortedStrings:v20];
  }

  else
  {
    v22 = 0;
    v19 = 1;
  }

  v23 = [v7 arrayByAddingObjectsFromArray:v26];
  callbackCopy->invoke(callbackCopy, 0.5);
  v24 = [BCPlist promisableItemsFromItems:v22];
  if (![v24 count] && !objc_msgSend(v17, "count"))
  {
    v19 = 1;
    goto LABEL_32;
  }

  if ([(BooksClient *)self raiseLockout])
  {
    [(BooksClient *)self removeKnownItems:v17];
    [(BooksClient *)self addItems:v24 toPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self lowerLockout];
LABEL_32:
    callbackCopy->invoke(callbackCopy, 0.666666667);
    [(BooksClient *)self deleteOrphanedFiles];
    [(BooksClient *)self deleteArtworkExcludingFileNames:v23];
    [(BCAssetDatabase *)[(BooksClient *)self database] removeInstalledAssetsExcluding:v23];
    callbackCopy->invoke(callbackCopy, 0.833333333);
    goto LABEL_33;
  }

  v19 = 0;
LABEL_33:
  callbackCopy->invoke(callbackCopy, 1.0);
  return v19;
}

- (void)regeneratePersistentIDsForPlist:(id)plist
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  [-[BooksClient plistByPath:](self plistByPath:{plist), "regenerateMissingPersistentIDs"}];
}

- (void)regenerateEstimatedDownloadSizesForPlist:(id)plist
{
  v5 = objc_autoreleasePoolPush();
  [-[BooksClient plistByPath:](self plistByPath:{plist), "regenerateMissingEstimatedDownloadSizes"}];

  objc_autoreleasePoolPop(v5);
}

- (void)removePromisedAssetsByPath:(id)path
{
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = [(BooksClient *)self plistByPath:path];
  v7 = [objc_msgSend(v6 "unfilteredPersistentIDs")];
  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    pathCopy = path;
    v11 = 1024;
    v12 = [v7 count];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "removePromisedAssetsByPath: %@ -- %d assets", &v9, 0x12u);
  }

  if ([v7 count])
  {
    [v6 removeItemsByPersistentID:v7];
  }
}

- (void)removePromisedAssets
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Removing promised assets by Books.plist.", buf, 2u);
  }

  [(BooksClient *)self removePromisedAssetsByPath:@"/var/mobile/Media/Books/Books.plist"];
  v4 = BCDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Removing promised assets by Purchases.plist.", v5, 2u);
  }

  [(BooksClient *)self removePromisedAssetsByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
}

- (void)removeAssetByPersistentID:(id)d
{
  if ([d length])
  {
    [(BCAssetDatabase *)[(BooksClient *)self database] removeOutstandingAssetByPersistentID:d];
    if ([(BooksClient *)self raiseLockout])
    {
      [(BooksClient *)self removeItemByPersistentID:d fromPlist:@"/var/mobile/Media/Books/Books.plist"];
      [(BooksClient *)self removeItemByPersistentID:d fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
      [(BooksClient *)self lowerLockout];
    }

    [(BooksClient *)self lowerLockout];
  }
}

- (void)handleError:(id)error forAsset:(id)asset
{
  if (error && (![objc_msgSend(error "domain")] || objc_msgSend(error, "code") == &dword_4 + 3 || objc_msgSend(error, "code") == &dword_8 || objc_msgSend(error, "code") == &dword_C + 2 || objc_msgSend(error, "code") == &dword_10 || objc_msgSend(error, "code") == &dword_8 + 1 || objc_msgSend(error, "code") == &dword_10 + 2 || objc_msgSend(error, "code") == &dword_4 || objc_msgSend(error, "code") == &dword_10 + 3 || objc_msgSend(error, "code") == &dword_14 || objc_msgSend(error, "code") == &dword_18 + 1 || objc_msgSend(error, "code") == &dword_18 + 3 || objc_msgSend(error, "code") == &dword_18 || objc_msgSend(error, "code") == &dword_1C + 3 || objc_msgSend(error, "code") == &stru_20 || objc_msgSend(error, "code") == &stru_20.cmd + 1 || objc_msgSend(error, "code") == &stru_20.cmd + 2 || objc_msgSend(error, "code") == &stru_20.cmd + 3))
  {
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_12A28(asset, v7);
    }
  }

  else
  {
    identifier = [asset identifier];
    if ([identifier length])
    {
      isDownload = [asset isDownload];
      v10 = BCDefaultLog();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (isDownload)
      {
        if (v11)
        {
          sub_12B18(identifier, self, v10);
        }

        [(BooksClient *)self removeAssetByPersistentID:identifier];
      }

      else if (v11)
      {
        sub_12AB0();
      }
    }

    else
    {
      v12 = BCDefaultLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_12BAC();
      }
    }
  }
}

- (void)processDeletesFiles
{
  [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Books.plist", "processDeletesFile"}];
  v3 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];

  [v3 processDeletesFile];
}

- (void)iteratePathsForPlist:(id)plist processingBlock:(id)block
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_12C14();
    if (!block)
    {
      return;
    }
  }

  else if (!block)
  {
    return;
  }

  v8 = [(BooksClient *)self booksFromPlist:plist];
  stringByDeletingLastPathComponent = [plist stringByDeletingLastPathComponent];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = BCDynamicCast(v15, v14);
        v17 = objc_opt_class();
        v18 = BCDynamicCast(v17, [v16 objectForKey:@"Path"]);
        if ([v18 length])
        {
          (*(block + 2))(block, [stringByDeletingLastPathComponent stringByAppendingPathComponent:v18], v16);
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }
}

- (id)_stringFromObject:(id)object
{
  objectCopy = object;
  if (!object)
  {
    return objectCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return objectCopy;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = BCDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_12C84();
    }

    return 0;
  }

  return [objectCopy stringValue];
}

- (id)storeInfoForItem:(id)item
{
  v5 = [item objectForKey:@"Item ID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
  {
    v6 = objc_alloc_init(ATStoreInfo);
    [v6 setAdamID:{objc_msgSend(v5, "numberFromHexDigits")}];
    [v6 setDSID:{objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"DSID", "numberFromHexDigits")}];
    [v6 setCollectionID:{objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Collection ID", "numberFromHexDigits")}];
    if ([item objectForKey:@"Is Protected"])
    {
      [v6 setDrmFree:{+[NSNumber numberWithBool:](NSNumber, "numberWithBool:", objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Is Protected", "BOOLValue") ^ 1)}];
    }

    [v6 setStorefrontID:{objc_msgSend(objc_msgSend(-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Storefront ID", "numberFromHexDigits"), "stringValue")}];
    [v6 setXID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"XID"}];
    [v6 setFlavor:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Flavor"}];
    v7 = @"Apple ID";
  }

  else
  {
    v8 = [item objectForKey:@"s"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v8 unsignedLongLongValue])
    {
      goto LABEL_25;
    }

    v6 = objc_alloc_init(ATStoreInfo);
    [v6 setAdamID:v8];
    [v6 setDSID:{objc_msgSend(item, "objectForKey:", @"DSID"}];
    [v6 setCollectionID:{objc_msgSend(item, "objectForKey:", @"Collection ID"}];
    [v6 setVersionID:{objc_msgSend(item, "objectForKey:", @"Version ID"}];
    [v6 setStorefrontID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Storefront ID"}];
    [v6 setXID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"XID"}];
    [v6 setFlavor:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Flavor"}];
    [v6 setDimensions:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", @"Dimensions"}];
    v7 = @"AppleID";
  }

  [v6 setAppleID:{-[BooksClient _stringFromObject:](self, "_stringFromObject:", objc_msgSend(item, "objectForKey:", v7))}];
  if (!v6)
  {
    return v6;
  }

  if (![objc_msgSend(v6 "DSID")])
  {

LABEL_25:
    v6 = 0;
    return v6;
  }

  if (![objc_msgSend(v6 "adamID")])
  {
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_12D10();
    }
  }

  if (![objc_msgSend(v6 "storefrontID")])
  {
    v10 = BCDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_12D78();
    }
  }

  if (![objc_msgSend(v6 "appleID")])
  {
    v11 = BCDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_12DE0();
    }
  }

  if (![objc_msgSend(v6 "flavor")] && !objc_msgSend(v6, "drmFree"))
  {
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_12E48();
    }
  }

  return v6;
}

- (void)appendIconUrlForPersistentID:(id)d toAsset:(id)asset
{
  v5 = [@"/var/mobile/Media/Books/Sync/Artwork/" stringByAppendingPathComponent:d];
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v6 = [NSURL fileURLWithPath:v5 isDirectory:0];
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_12F18();
    }

    [asset setIcon:v6];
  }

  else
  {
    v8 = BCDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_12EB0();
    }
  }
}

- (id)bookTitleForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = BCDynamicCast(v4, [entry objectForKey:@"Name"]);
  if ([v5 length])
  {
    return v5;
  }

  v7 = objc_opt_class();
  v8 = [entry objectForKey:@"Artist"];

  return BCDynamicCast(v7, v8);
}

- (id)_bookEstimatedDownloadSizeForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = [entry objectForKeyedSubscript:@"Estimated Download Size"];

  return BCDynamicCast(v4, v5);
}

- (id)_bookSizeOnDiskForPlistEntry:(id)entry
{
  v4 = objc_opt_class();
  v5 = [entry objectForKeyedSubscript:@"Size On Disk"];

  return BCDynamicCast(v4, v5);
}

- (void)_updateATAssetTotalBytes:(id)bytes plistEntry:(id)entry restoreFlag:(BOOL)flag
{
  flagCopy = flag;
  v9 = [(BooksClient *)self bookTitleForPlistEntry:entry];
  v10 = [(BooksClient *)self _bookEstimatedDownloadSizeForPlistEntry:entry];
  if (v10 || (v10 = [(BooksClient *)self _bookSizeOnDiskForPlistEntry:entry]) != 0)
  {
    v11 = v10;
    v12 = BCDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412546;
      v25 = v9;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Set totalBytes for asset '%@' to %@", &v24, 0x16u);
    }

    unsignedLongLongValue = [(__CFString *)v11 unsignedLongLongValue];
LABEL_6:
    [bytes setTotalBytes:unsignedLongLongValue];
    return;
  }

  if (flagCopy)
  {
    v14 = objc_opt_class();
    v15 = BCDynamicCast(v14, [entry objectForKeyedSubscript:@"Backup-Path"]);
    if (!v15)
    {
      v16 = objc_opt_class();
      v15 = BCDynamicCast(v16, [entry objectForKeyedSubscript:@"Path"]);
    }

    pathExtension = [v15 pathExtension];
    if (!pathExtension)
    {
      v18 = objc_opt_class();
      pathExtension = BCDynamicCast(v18, [entry objectForKeyedSubscript:@"Extension"]);
    }

    v19 = objc_opt_class();
    if ([BCDynamicCast(v19 objc_msgSend(entry])
    {
      v20 = 25;
    }

    else
    {
      v20 = 5;
    }

    if ([(__CFString *)pathExtension caseInsensitiveCompare:@"ibooks"])
    {
      v21 = v20;
    }

    else
    {
      v21 = 100;
    }

    v22 = BCDefaultLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138413314;
      v25 = v9;
      v26 = 2114;
      v27 = pathExtension;
      v28 = 2114;
      v29 = @"Estimated Download Size";
      v30 = 2114;
      v31 = @"Size On Disk";
      v32 = 2048;
      v33 = v21;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Asset '%@' (%{public}@) is missing both '%{public}@' and '%{public}@', use guesstimate of %lluMB", &v24, 0x34u);
    }

    unsignedLongLongValue = (v21 << 20);
    goto LABEL_6;
  }

  v23 = BCDefaultLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138412802;
    v25 = v9;
    v26 = 2114;
    v27 = @"Estimated Download Size";
    v28 = 2114;
    v29 = @"Size On Disk";
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Asset '%@' is missing both '%{public}@' and '%{public}@' and not restore, skip guesstimate", &v24, 0x20u);
  }
}

- (id)assetsRequestedByPersistentIDs:(id)ds fromPlist:(id)plist
{
  v22 = objc_alloc_init(NSAutoreleasePool);
  selfCopy = self;
  v26 = objc_alloc_init(NSMutableArray);
  v7 = [(BooksClient *)self plistByPath:plist];
  if ([ds count])
  {
    books = [objc_msgSend(v7 books];
  }

  else
  {
    books = 0;
  }

  if ([books count])
  {
    v24 = [objc_msgSend(plist "stringByDeletingLastPathComponent")];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = [books countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v28 = *v30;
      obj = books;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v30 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v29 + 1) + 8 * i);
          v13 = objc_opt_class();
          v14 = BCDynamicCast(v13, v12);
          v15 = objc_opt_class();
          v16 = BCDynamicCast(v15, [v14 objectForKey:@"Path"]);
          v17 = objc_opt_class();
          v18 = BCDynamicCast(v17, [v14 objectForKey:@"Persistent ID"]);
          v19 = objc_opt_class();
          v20 = BCDynamicCast(v19, [v14 objectForKey:@"iTunesU Permlink"]);
          if ([v16 length] && objc_msgSend(v18, "length") && !objc_msgSend(v20, "length"))
          {
            [v26 addObject:{+[ATAsset uploadAssetWithIdentifier:dataclass:sourcePath:prettyName:](ATAsset, "uploadAssetWithIdentifier:dataclass:sourcePath:prettyName:", v18, @"Book", objc_msgSend(v24, "stringByAppendingPathComponent:", v16), -[BooksClient bookTitleForPlistEntry:](selfCopy, "bookTitleForPlistEntry:", v14))}];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v10);
    }
  }

  return v26;
}

- (id)reverseSyncAssets
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = objc_alloc_init(NSMutableArray);
  reverseSyncPersistentIDs = [(BooksClient *)self reverseSyncPersistentIDs];
  if ([reverseSyncPersistentIDs count])
  {
    v6 = [(BooksClient *)self assetsRequestedByPersistentIDs:reverseSyncPersistentIDs fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = @"/var/mobile/Media/Books/Purchases/Purchases.plist";
      v15 = 2048;
      v16 = [v6 count];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Reverse Sync from: %@ -- %lu items", &v13, 0x16u);
    }

    if ([v6 count])
    {
      [v4 addObjectsFromArray:v6];
    }

    v8 = [(BooksClient *)self assetsRequestedByPersistentIDs:reverseSyncPersistentIDs fromPlist:@"/var/mobile/Media/Books/Books.plist"];
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 count];
      v13 = 138412546;
      v14 = @"/var/mobile/Media/Books/Books.plist";
      v15 = 2048;
      v16 = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Reverse Sync from: %@ -- %lu items", &v13, 0x16u);
    }

    if ([v8 count])
    {
      [v4 addObjectsFromArray:v8];
    }
  }

  else
  {
    v11 = BCDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "No Reverse Sync items requested.", &v13, 2u);
    }
  }

  return v4;
}

- (id)forwardSyncAssets
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetsByRestoreFlag:1];
  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = [v5 count];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Forward Sync as Restore %lu items", &v11, 0xCu);
  }

  [(BooksClient *)self appendPlistEntries:v5 toAssetArray:v3 withRestoreFlag:1];
  v7 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetsByRestoreFlag:0];
  v8 = BCDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Forward Sync as Sync %lu items", &v11, 0xCu);
  }

  [(BooksClient *)self appendPlistEntries:v7 toAssetArray:v3 withRestoreFlag:0];

  return v3;
}

- (id)plistByPath:(id)path
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_8974;
  v11 = sub_8984;
  v12 = 0;
  plist_queue = self->_plist_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_8990;
  block[3] = &unk_20588;
  block[5] = path;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(plist_queue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)booksFromPlist:(id)plist
{
  v3 = [(BooksClient *)self plistByPath:plist];

  return [v3 books];
}

- (id)sortedBooksFromPlist:(id)plist
{
  v3 = [(BooksClient *)self plistByPath:plist];

  return [v3 booksSortedByKey:@"Persistent ID"];
}

- (BOOL)addItems:(id)items toPlist:(id)plist
{
  if ([items count] && (objc_msgSend(-[BooksClient plistByPath:](self, "plistByPath:", plist), "addItems:", items) & 1) == 0)
  {
    v8 = BCDefaultLog();
    v7 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      sub_12F88();
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (id)persistentIDsMerged:(BOOL)merged
{
  mergedCopy = merged;
  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Books.plist"];
  v7 = [(BooksClient *)self plistByPath:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  if (mergedCopy)
  {
    existingPersistentIDs = [v6 existingPersistentIDs];
    existingPersistentIDs2 = [v7 existingPersistentIDs];
  }

  else
  {
    existingPersistentIDs = [v6 unfilteredPersistentIDs];
    existingPersistentIDs2 = [v7 unfilteredPersistentIDs];
  }

  v10 = existingPersistentIDs2;
  v11 = [NSMutableArray arrayWithArray:existingPersistentIDs];
  [(NSMutableArray *)v11 addObjectsFromArray:v10];
  [(NSMutableArray *)v11 sortUsingSelector:"compare:"];
  v12 = v11;

  return v11;
}

+ (id)alternatePathForPlist:(id)plist withNamePrefix:(id)prefix
{
  if (![prefix length])
  {
    sub_12FF8();
  }

  if (![plist length])
  {
    sub_13050();
  }

  lastPathComponent = [plist lastPathComponent];
  v7 = [objc_msgSend(plist "stringByDeletingLastPathComponent")];

  return [v7 stringByAppendingString:lastPathComponent];
}

- (id)reverseSyncPersistentIDs
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Upload.plist", "uploadsByPersistentID"}];
  v5 = v4;

  return v4;
}

- (id)forwardSyncPersistentIDs
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  v4 = [-[BooksClient plistByPath:](self plistByPath:{@"/var/mobile/Media/Books/Sync/Books.plist", "sortedPersistentIDs:", 0}];
  v5 = v4;

  return v4;
}

- (id)persistentIDsFromBookRecords:(id)records
{
  v4 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [records countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(records);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, v9);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"Persistent ID"]);
        if ([v13 length])
        {
          [v4 addObject:v13];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [records countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return [v4 sortedArrayUsingSelector:"compare:"];
}

- (id)filesInPath:(id)path
{
  v8 = 0;
  v4 = BCDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    pathCopy = path;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "filesInPath: %@", buf, 0xCu);
  }

  v5 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:path, &v8];
  if (v8)
  {
    v6 = BCDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      pathCopy = v8;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "error: %@", buf, 0xCu);
    }
  }

  return v5;
}

+ (id)bookExtensions
{
  if (qword_267D8 != -1)
  {
    sub_130A8();
  }

  return qword_267D0;
}

+ (id)foregroundRestoreWhitelist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_9148;
  block[3] = &unk_205F0;
  block[4] = self;
  if (qword_267E8 != -1)
  {
    dispatch_once(&qword_267E8, block);
  }

  return qword_267E0;
}

- (id)booksInPath:(id)path
{
  v4 = +[NSMutableArray array];
  v20 = 0;
  v5 = [+[NSFileManager defaultManager](NSFileManager contentsOfDirectoryAtPath:"contentsOfDirectoryAtPath:error:" error:path, &v20];
  v6 = BCDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    pathCopy2 = path;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "In Path: %@", buf, 0xCu);
  }

  if (v20)
  {
    v7 = BCDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      pathCopy2 = v20;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "error: %@", buf, 0xCu);
    }
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v13 = BCDefaultLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          pathCopy2 = v12;
          _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "booksInPath Iterating: %@", buf, 0xCu);
        }

        if ([+[BooksClient bookExtensions](BooksClient "bookExtensions")])
        {
          [v4 addObject:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = BCDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    pathCopy2 = path;
    v23 = 2112;
    v24 = v4;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "booksInPath %@ - %@", buf, 0x16u);
  }

  return v4;
}

- (id)knownBooksInPlist:(id)plist
{
  v3 = [-[BooksClient plistByPath:](self plistByPath:{plist), "sortedPaths"}];
  if ([v3 count])
  {
    v4 = [[NSMutableArray alloc] initWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "knownBooksInPlist %@", &v7, 0xCu);
  }

  return v4;
}

- (void)deleteArtworkExcludingFileNames:(id)names
{
  v12 = objc_alloc_init(NSAutoreleasePool);
  v5 = [-[BooksClient filesInPath:](self filesInPath:{@"/var/mobile/Media/Books/Sync/Artwork/", "arrayRemovingMatchingStrings:", names}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
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

        v10 = [@"/var/mobile/Media/Books/Sync/Artwork/" stringByAppendingPathComponent:*(*(&v13 + 1) + 8 * i)];
        v11 = BCDefaultLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "deleting [%@]", buf, 0xCu);
        }

        [(BooksClient *)self removeItemAtPath:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)deleteOrphanedFilesInPath:(id)path knownToPlist:(id)plist
{
  v23 = objc_alloc_init(NSAutoreleasePool);
  v7 = [-[BooksClient booksInPath:](self booksInPath:{path), "arrayRemovingMatchingStrings:", -[BooksClient knownBooksInPlist:](self, "knownBooksInPlist:", plist)}];
  v8 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v7);
        }

        [v8 addObject:{objc_msgSend(path, "stringByAppendingPathComponent:", *(*(&v28 + 1) + 8 * i))}];
      }

      v10 = [v7 countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  v13 = [(BCAssetDatabase *)[(BooksClient *)self database] outstandingAssetDownloadCompletePathsMatchingArray:v8];
  v14 = [v8 arrayRemovingMatchingStrings:v13];
  v15 = BCDefaultLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v13;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "pendingInstall %@", buf, 0xCu);
  }

  v16 = BCDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v34 = v14;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "orphanedPaths %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v24 + 1) + 8 * j);
        v22 = BCDefaultLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "deleting [%@]", buf, 0xCu);
        }

        [(BooksClient *)self removeItemAtPath:v21];
      }

      v18 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }
}

- (void)deleteOrphanedFiles
{
  [(BooksClient *)self deleteOrphanedFilesInPath:@"/var/mobile/Media/Books/" knownToPlist:@"/var/mobile/Media/Books/Books.plist"];

  [(BooksClient *)self deleteOrphanedFilesInPath:@"/var/mobile/Media/Books/Purchases/" knownToPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
}

- (void)removeItemAtPath:(id)path
{
  v10 = 0;
  v5 = +[NSFileManager defaultManager];
  if ([(NSFileManager *)v5 fileExistsAtPath:path])
  {
    v6 = [NSURL fileURLWithPath:path];
    fileCoord = self->_fileCoord;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_9BA4;
    v9[3] = &unk_20618;
    v9[4] = 0;
    v9[5] = v5;
    v9[6] = path;
    [(NSFileCoordinator *)fileCoord coordinateWritingItemAtURL:v6 options:1 error:&v10 byAccessor:v9];
  }

  else
  {
    v8 = BCDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_130BC();
    }
  }
}

- (void)installedAssetMetrics:(id *)metrics forPlistPath:(id)path
{
  v7 = objc_alloc_init(NSAutoreleasePool);
  [(BooksClient *)self regeneratePersistentIDsForPlist:path];
  selfCopy = self;
  v8 = [-[BooksClient plistByPath:](self plistByPath:{path), "entriesWithPath"}];
  if ([v8 count])
  {
    v34 = v7;
    metricsCopy = metrics;
    v9 = BCDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_131A8();
    }

    v43[0] = 0;
    v43[1] = 0;
    v10 = -[BCAssetDatabase cachedInstalledAssetsByPersistentIDs:metrics:](-[BooksClient database](self, "database"), "cachedInstalledAssetsByPersistentIDs:metrics:", +[NSSet setWithArray:](NSSet, "setWithArray:", [objc_msgSend(v8 valueForKeyPath:{@"Persistent ID", "arrayRemovingNonStrings"}]), v43);
    v11 = v43[0];
    v12 = [v8 arrayRemovingObjectsByKey:@"Persistent ID" matchingStrings:v10];
    v13 = [v12 count];
    v14 = &v13[[v10 count]];
    v38 = v12;
    if (v14 != [v8 count])
    {
      v15 = BCDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v30 = [v10 count];
        v31 = [v12 count];
        v32 = [v8 count];
        *buf = 138413058;
        pathCopy = path;
        v47 = 2048;
        v48 = v30;
        v49 = 2048;
        v50 = v31;
        v12 = v38;
        v51 = 2048;
        v52 = v32;
        _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "Unexpected count mismatch: %@ -- Cached: %lu; Uncached: %lu; Total: %lu", buf, 0x2Au);
      }
    }

    v33 = v8;
    if ([v12 count])
    {
      stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v16 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = 0;
        v19 = *v40;
        do
        {
          v20 = 0;
          do
          {
            if (*v40 != v19)
            {
              objc_enumerationMutation(v12);
            }

            v21 = *(*(&v39 + 1) + 8 * v20);
            v22 = objc_opt_class();
            v23 = BCDynamicCast(v22, v21);
            v24 = objc_opt_class();
            v25 = BCDynamicCast(v24, [v23 objectForKey:@"Persistent ID"]);
            if (([v25 isEqualToString:v18] & 1) == 0)
            {
              v18 = v25;
              v26 = objc_opt_class();
              v27 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:{BCDynamicCast(v26, objc_msgSend(v23, "objectForKey:", @"Path"}];
              v28 = ATGetDiskUsageForPath();
              if (v28)
              {
                if ([v18 length])
                {
                  [(BCAssetDatabase *)[(BooksClient *)selfCopy database] insertInstalledAssetByPersistentID:v18 withSize:v28];
                }
              }

              else
              {
                v29 = BCDefaultLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  pathCopy = v27;
                  _os_log_error_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "expected non-zero from ATGetDiskUsageForPath: %@", buf, 0xCu);
                }
              }

              v11 += v28;
              v12 = v38;
            }

            v20 = v20 + 1;
          }

          while (v17 != v20);
          v17 = [v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v17);
      }
    }

    v7 = v34;
    metrics = metricsCopy;
    v8 = v33;
  }

  else
  {
    v11 = 0;
  }

  metrics->var0 = v11;
  metrics->var1 = [v8 count];
}

- (void)nonAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  context = objc_autoreleasePoolPush();
  v8 = +[NSFileManager defaultManager];
  v9 = [NSURL fileURLWithPath:directory isDirectory:1];
  v23[0] = NSURLTotalFileAllocatedSizeKey;
  v23[1] = NSURLIsDirectoryKey;
  v10 = [NSArray arrayWithObjects:v23 count:2];
  v11 = +[BooksClient bookExtensions];
  v12 = [(NSFileManager *)v8 enumeratorAtURL:v9 includingPropertiesForKeys:v10 options:1 errorHandler:0];
  nextObject = [(NSDirectoryEnumerator *)v12 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = objc_autoreleasePoolPush();
      if (([v11 containsObject:{objc_msgSend(objc_msgSend(nextObject2, "pathExtension"), "lowercaseString")}] & 1) == 0)
      {
        v22 = 0;
        [nextObject2 getResourceValue:&v22 forKey:NSURLIsDirectoryKey error:0];
        if ([v22 BOOLValue])
        {
          if (recursiveCopy)
          {
            -[BooksClient nonAssetDiskSpaceMetrics:directory:recursive:](self, "nonAssetDiskSpaceMetrics:directory:recursive:", metrics, [nextObject2 path], 1);
          }
        }

        else
        {
          v21 = 0;
          [nextObject2 getResourceValue:&v21 forKey:NSURLTotalFileAllocatedSizeKey error:0];
          if ([v21 longLongValue])
          {
            [v21 longLongValue];
            v16 += ATGetPhysicalSizeForLogicalSize();
            ++v15;
          }
        }
      }

      objc_autoreleasePoolPop(v17);
      nextObject2 = [(NSDirectoryEnumerator *)v12 nextObject];
    }

    while (nextObject2);
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v18 = metrics->var1 + v15;
  metrics->var0 += v16;
  metrics->var1 = v18;
  objc_autoreleasePoolPop(context);
}

- (void)addKnownAccountInfo:(id)info
{
  if (info && !self->_accountInfos)
  {
    self->_accountInfos = objc_alloc_init(NSMutableSet);
    self->_appleIDs = objc_alloc_init(NSMutableSet);
  }

  appleID = [info appleID];
  if (appleID && ([(NSMutableSet *)self->_appleIDs containsObject:appleID]& 1) == 0)
  {
    [(NSMutableSet *)self->_accountInfos addObject:info];
    appleIDs = self->_appleIDs;
    appleID2 = [info appleID];

    [(NSMutableSet *)appleIDs addObject:appleID2];
  }
}

- (BOOL)commitOutstandingAssets:(id)assets
{
  assetsCopy = assets;
  if ([assets count])
  {
    v5 = -[BCAssetDatabase cachedOutstandingAssetsByPersistentIDs:](-[BooksClient database](self, "database"), "cachedOutstandingAssetsByPersistentIDs:", [objc_msgSend(assetsCopy valueForKeyPath:{@"Persistent ID", "arrayRemovingNonStrings"}]);
    if ([v5 count])
    {
      v6 = [assetsCopy arrayRemovingObjectsByKey:@"Persistent ID" matchingStrings:v5];
      v7 = [assetsCopy arrayOfObjectsContainingMatchingKey:@"Persistent ID" matchingStrings:v5];
      v8 = [v6 count];
      v9 = &v8[[v5 count]];
      if (v9 != [assetsCopy count])
      {
        v10 = BCDefaultLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v13 = 134218496;
          v14 = [v5 count];
          v15 = 2048;
          v16 = [v6 count];
          v17 = 2048;
          v18 = [assetsCopy count];
          _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Unexpected count mismatch: Cached: %lu; Uncached: %lu; Total: %lu", &v13, 0x20u);
        }
      }

      assetsCopy = v6;
    }

    else
    {
      v7 = 0;
    }

    if ([assetsCopy count])
    {
      [(BCAssetDatabase *)[(BooksClient *)self database] insertOutstandingAssetDictionaries:assetsCopy isRestore:[(BooksClient *)self isRestoreSession]];
    }

    if ([v7 count])
    {
      [(BCAssetDatabase *)[(BooksClient *)self database] updateOutstandingAssetDictionaries:v7 isRestore:[(BooksClient *)self isRestoreSession]];
    }
  }

  v11 = BCDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "commit Assets To Request Succeeded", &v13, 2u);
  }

  return 1;
}

- (void)removeItemByPersistentID:(id)d fromPlist:(id)plist
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    dCopy = d;
    v10 = 2114;
    plistCopy = plist;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing %@ from %{public}@.", &v8, 0x16u);
  }

  [(BooksClient *)self removeItemsByPersistentID:[NSArray fromPlist:"arrayWithObject:" arrayWithObject:d], plist];
}

- (void)removeItemsByPersistentID:(id)d fromPlist:(id)plist
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    dCopy = d;
    v10 = 2114;
    plistCopy = plist;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Removing %@ from %{public}@.", &v8, 0x16u);
  }

  [-[BooksClient plistByPath:](self plistByPath:{plist), "removeItemsByPersistentID:", d}];
}

- (void)removeKnownItems:(id)items
{
  v5 = BCDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Remove known items.", v6, 2u);
  }

  if ([items count])
  {
    [(BooksClient *)self removeItemsByPersistentID:items fromPlist:@"/var/mobile/Media/Books/Books.plist"];
    [(BooksClient *)self removeItemsByPersistentID:items fromPlist:@"/var/mobile/Media/Books/Purchases/Purchases.plist"];
  }
}

- (void)generateDirectories
{
  v2 = +[NSFileManager defaultManager];
  v4[0] = NSFileOwnerAccountName;
  v4[1] = NSFileGroupOwnerAccountName;
  v5[0] = @"mobile";
  v5[1] = @"mobile";
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];
  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Database/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Database/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Sync/Artwork/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Sync/Artwork/" withIntermediateDirectories:1 attributes:v3 error:0];
  }

  if (![(NSFileManager *)v2 fileExistsAtPath:@"/var/mobile/Media/Books/Purchases/"])
  {
    [(NSFileManager *)v2 createDirectoryAtPath:@"/var/mobile/Media/Books/Purchases/" withIntermediateDirectories:1 attributes:v3 error:0];
  }
}

- (id)accountInfoForAssetAtPath:(id)path
{
  if ([+[NSFileManager isDirectoryPath:"isDirectoryPath:"]
  {
    v4 = +[NSDictionary dictionaryWithContentsOfFile:](NSDictionary, "dictionaryWithContentsOfFile:", [path stringByAppendingPathComponent:@"iTunesMetadata.plist"]);
    v5 = v4;
    if (!v4)
    {
      goto LABEL_12;
    }

    if ([(NSDictionary *)v4 objectForKey:@"itemId"])
    {
      v6 = [(NSDictionary *)v5 objectForKey:@"isSample"];
      if (!v6 || (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ([v7 BOOLValue] & 1) == 0)
      {
        v8 = objc_opt_class();
        v9 = BCDynamicCast(v8, [(NSDictionary *)v5 objectForKey:@"com.apple.iTunesStore.downloadInfo"]);
        v10 = objc_opt_class();
        v11 = BCDynamicCast(v10, [v9 objectForKey:@"accountInfo"]);
        v12 = objc_opt_class();
        v13 = BCDynamicCast(v12, [v11 objectForKey:@"AppleID"]);
        if ([v13 length])
        {
          if (v13)
          {
LABEL_9:
            v14 = objc_opt_class();
            v15 = BCDynamicCast(v14, [v11 objectForKeyedSubscript:@"DSPersonID"]);
            v16 = objc_opt_class();
            v17 = BCDynamicCast(v16, [v11 objectForKeyedSubscript:@"AltDSID"]);
            v5 = objc_alloc_init(ATMutableAccountInfo);
            [(NSDictionary *)v5 setDSID:v15];
            [(NSDictionary *)v5 setAppleID:v13];
            [(NSDictionary *)v5 setAltDSID:v17];
            goto LABEL_12;
          }
        }

        else
        {
          v18 = objc_opt_class();
          v13 = BCDynamicCast(v18, [(NSDictionary *)v5 objectForKey:@"apple-id"]);
          if (v13)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

- (void)removeDatabase
{
  v3 = BCDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_131E4();
  }

  [(BooksClient *)self setDatabase:0];
  +[BCAssetDatabase removeDatabase];
}

- (BCAssetDatabase)database
{
  result = self->_database;
  if (!result)
  {
    v4 = BCDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_13220();
    }

    v5 = objc_alloc_init(BCAssetDatabase);
    self->_database = [[ThreadSafeProxy alloc] initWithObject:v5];

    return self->_database;
  }

  return result;
}

- (id)filteredDownloads:(id)downloads
{
  downloads = [downloads downloads];
  v4 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [downloads count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [downloads countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = SSDownloadPropertyKind;
    v9 = SSDownloadKindEBook;
    v10 = SSDownloadPropertyLibraryItemIdentifier;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(downloads);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([objc_msgSend(v12 valueForProperty:{v8), "isEqualToString:", v9}])
        {
          v13 = [v12 valueForProperty:v10];
          if ([v13 length])
          {
            [(NSMutableDictionary *)v4 setValue:v12 forKey:v13];
          }
        }
      }

      v6 = [downloads countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)updateAssets:(id)assets withSSDownloads:(id)downloads andDownloadCompletePathMap:(id)map
{
  v7 = BCDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v32 = [assets count];
    *&v32[4] = 1024;
    *&v32[6] = [downloads count];
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%d assets; %d downloads", buf, 0xEu);
  }

  if ([assets count] && (objc_msgSend(downloads, "count") || objc_msgSend(map, "count")))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = [assets countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v28;
      *&v9 = 138412290;
      v25 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(assets);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          identifier = [v13 identifier];
          if ([identifier length])
          {
            v15 = [downloads objectForKey:identifier];
            v16 = v15;
            if (v15)
            {
              [v13 setStorePID:{objc_msgSend(v15, "persistentIdentifier")}];
            }

            else
            {
              v17 = BCDefaultLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v25;
                *v32 = identifier;
                _os_log_error_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "ATAsset with no matching SSDownload [My PID: %@]", buf, 0xCu);
              }
            }

            v18 = objc_opt_class();
            v19 = BCDynamicCast(v18, [map objectForKey:identifier]);
            if (v19)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if ([v19 length])
                {
                  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
                  {
                    [v13 setPath:v19];
                    v20 = BCDefaultLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      path = [v13 path];
                      *buf = 138412546;
                      *v32 = identifier;
                      *&v32[8] = 2112;
                      v33 = path;
                      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Setting installOnly : [identifier: %@] -- [Asset path: %@]", buf, 0x16u);
                    }

                    [v13 setInstallOnly:1];
                    continue;
                  }

                  v22 = BCDefaultLog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    *v32 = identifier;
                    *&v32[8] = 2112;
                    v33 = v19;
                    _os_log_error_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "Cannot set installOnly : [identifier: %@] -- [Asset path: %@] [Path does not exist]", buf, 0x16u);
                  }
                }
              }
            }

            v23 = BCDefaultLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              downloadPhaseIdentifier = [v16 downloadPhaseIdentifier];
              *buf = 138412802;
              *v32 = identifier;
              *&v32[8] = 2112;
              v33 = downloadPhaseIdentifier;
              v34 = 2112;
              v35 = v19;
              _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Have Asset for Download : [identifier: %@] -- [DownloadPhase: %@] [DownloadCompletePath: %@]", buf, 0x20u);
            }
          }
        }

        v10 = [assets countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v10);
    }
  }
}

@end