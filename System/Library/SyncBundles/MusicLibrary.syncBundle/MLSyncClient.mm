@interface MLSyncClient
- (BOOL)_evaluateUploadTrackDatabaseChangeStep:(id)a3;
- (BOOL)_hasRelevantChangesToSync;
- (BOOL)_performReconcileRestoreOfType:(int)a3 withError:(id *)a4;
- (BOOL)_processArtworkIdentifier:(id)a3 artworkToken:(id)a4 artworkType:(int64_t)a5 mediaType:(unsigned int)a6 sourceType:(int64_t)a7;
- (BOOL)_processUploadTrackOperations;
- (BOOL)_rebuildCachedPlaylistSettings;
- (BOOL)_shouldCancelActiveSessionsForLegacyPairedDevices;
- (BOOL)_shouldSyncPlaylistWithPersistentId:(int64_t)a3 forSupportedMediaTypes:(id)a4 includeNonLibraryContent:(BOOL)a5 pairedDeviceCanProcessStandaloneCollections:(BOOL)a6;
- (BOOL)_verifySyncPlistFiles;
- (BOOL)prepareForSyncWithHostAnchor:(id)a3 progressCallback:(id)a4 grappaID:(unsigned int)a5 hostVersion:(id)a6 error:(id *)a7;
- (BOOL)reconcileRestoreOfType:(int)a3 withError:(id *)a4;
- (BOOL)reconcileSync:(unsigned int)a3 withNewAnchor:(id)a4 progressCallback:(id)a5 error:(id *)a6;
- (BOOL)reconcileUpgradeWithError:(id *)a3;
- (MLSyncClient)init;
- (id)_DSIDsForAssets;
- (id)_artworkAssetsToSyncWithMaximumTotalSize:(unint64_t)a3 totalSize:(unint64_t *)a4;
- (id)_existingOutstandingAssetTransfersWithDownloadManager:(id)a3;
- (id)_geniusAssetsToSync;
- (id)_getDownloadStatusForCurrentPinningSettings;
- (id)_getPlaylistSyncSettings;
- (id)_library;
- (id)_songArtworkSizeVariant;
- (id)_syncPlistFiles;
- (id)_trackAssetsToSyncWithMediaType:(unsigned int)a3 withAllowedPids:(id)a4 maximumTotalSize:(unint64_t)a5 totalSize:(unint64_t *)a6;
- (id)_tracksNeedingDownloadPredicateWithMediaType:(unsigned int)a3;
- (id)_tracksToSyncPredicateWithMediaType:(unsigned int)a3;
- (id)accountsForAssets;
- (id)appleIDsForAssets;
- (id)currentSyncAnchor;
- (id)disabledAssetTypes;
- (id)enumeratePathsForBackupType:(int)a3 usingBlock:(id)a4;
- (id)installedAssetMetrics;
- (id)outstandingAssetTransfersWithDownloadManager:(id)a3;
- (id)revisionVersionToken;
- (int)_DMAPEntityKindFromMLEntityKind:(int64_t)a3;
- (unint64_t)_sizeForDownloadedTracksWithMediaType:(unsigned int)a3 minimumKeepLocalValue:(int)a4;
- (unint64_t)currentRevision;
- (void)_applyLibrarySettingsFromSyncParams:(id)a3;
- (void)_cancelSyncSessionsWithSessionIdentifier:(id)a3 groupingKey:(id)a4 waitToFinish:(BOOL)a5 withError:(id)a6;
- (void)_clearAllRevisionsFromLibrary;
- (void)_clearCachedPlaylistSettings;
- (void)_clearDatabasePropertiesForRestore:(int)a3;
- (void)_handleATCStartupCompletedNotification:(id)a3;
- (void)_handleAccountsDidChangeNotification:(id)a3;
- (void)_handleContentsChangedNotification:(id)a3;
- (void)_handleDisplayValuesChangedNotification:(id)a3;
- (void)_handleNanoBooksAppUnregistered;
- (void)_handleNanoMusicAppUnregistered;
- (void)_handleNonContentsPropertiesDidChangeNotification:(id)a3;
- (void)_handleSessionsDidChangeNotification:(id)a3;
- (void)_handleStatusReportRequest:(id)a3 onMessageLink:(id)a4;
- (void)_handleSyncDefaultsSyncSettingsDidChangeNotification:(id)a3;
- (void)_handleUpdateSettingsRequest:(id)a3 onMessageLink:(id)a4;
- (void)_invokeHasChangesCallbackWithPriority:(int)a3;
- (void)_migrateSyncSettings;
- (void)_postAssetTotal:(unint64_t)a3;
- (void)_postCurrentAssetNumber:(unint64_t)a3;
- (void)_processCompletedAssets;
- (void)_purgeContentForMediaType:(unsigned int)a3;
- (void)_rebuildStoreManifests;
- (void)_resetLastSyncedVersionForSyncedPlaylist;
- (void)_sendUpdatedSettings;
- (void)_setAutoEnableCloudLibrary;
- (void)_setPreExistingStoreAccountIds;
- (void)_syncPlaylistToCurrentRevision;
- (void)_syncUpdatedSettingsToPairedDevice;
- (void)_updateSyncPlaylistToCurrentRevision;
- (void)_validatePlaylistSettings;
- (void)applyChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 fromStream:(id)a5 withSyncParams:(id)a6 withProgressHandler:(id)a7 withCompletionHandler:(id)a8;
- (void)assetInstallFailed:(id)a3 withError:(id)a4;
- (void)assetSync:(id)a3 didCompleteWithError:(id)a4;
- (void)assetSyncDidCompleteWithError:(id)a3;
- (void)assetTransfer:(id)a3 succeeded:(BOOL)a4 withError:(id)a5;
- (void)assetTransferEndedWithSuccess:(BOOL)a3;
- (void)assetsToSyncWithCompletion:(id)a3;
- (void)cancelSyncOperations;
- (void)clearSyncData;
- (void)dealloc;
- (void)getChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 afterRevision:(unint64_t)a5 upToRevision:(unint64_t)a6 withSyncParams:(id)a7 intoOutputStream:(id)a8 withStartHandler:(id)a9 withProgressHandler:(id)a10 withCompletionHandler:(id)a11;
- (void)getDataForArtworkAsset:(id)a3 withCompletion:(id)a4;
- (void)getDataForAsset:(id)a3 withCompletion:(id)a4;
- (void)getDataForGeniusAsset:(id)a3 withCompletion:(id)a4;
- (void)getDataForTrackAsset:(id)a3 withCompletion:(id)a4;
- (void)initiateAssetDownloadsWithCompletion:(id)a3;
- (void)initiateSyncOrKeepLocalSessionWithOptions:(id)a3;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
- (void)metadataUpdate:(id)a3 forAsset:(id)a4 withNewAnchor:(id)a5;
- (void)pathsToBackup:(id *)a3 pathsNotToBackup:(id *)a4;
- (void)resetSyncDataWithCompletion:(id)a3;
- (void)sessionDidFinish:(id)a3;
- (void)syncCompletedWithError:(id)a3;
@end

@implementation MLSyncClient

- (void)_handleNanoBooksAppUnregistered
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_49FB8;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_handleNanoMusicAppUnregistered
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4A0A4;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_purgeContentForMediaType:(unsigned int)a3
{
  v5 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v30 = a3;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Purging content for media type %d", buf, 8u);
  }

  v6 = [(MLSyncClient *)self _library];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_4A5D4;
  v27[3] = &unk_9EA08;
  v28 = a3;
  [v6 databaseConnectionAllowingWrites:1 withBlock:v27];
  v7 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsLocal equalToInteger:1];
  v8 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType equalToInt64:a3];
  v34[0] = v7;
  v34[1] = v8;
  v9 = [NSArray arrayWithObjects:v34 count:2];
  v10 = [ML3AllCompoundPredicate predicateMatchingPredicates:v9];

  v11 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v6 predicate:v10 orderingTerms:0];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v33 = ML3TrackPropertyFilePath;
  v14 = [NSArray arrayWithObjects:&v33 count:1];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_4A6AC;
  v23[3] = &unk_9E170;
  v15 = v13;
  v24 = v15;
  v16 = v12;
  v25 = v16;
  v17 = v6;
  v26 = v17;
  [v11 enumeratePersistentIDsAndProperties:v14 usingBlock:v23];

  v18 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v30 = a3;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Purging assets for media type %d: %{public}@", buf, 0x12u);
  }

  v19 = [NSSet setWithArray:v16];
  ML3DeleteAssetsAtPaths();

  if ([v15 count])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_4A76C;
    v20[3] = &unk_9EEE8;
    v21 = v15;
    v22 = v17;
    [v22 performDatabaseTransactionWithBlock:v20];
  }
}

- (void)initiateSyncOrKeepLocalSessionWithOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"MLSyncPolicyChangedObserverStartKeepLocalSessionEnqueueAssetsKey"];
  v6 = [v5 BOOLValue];

  v7 = [v4 objectForKey:@"MLSyncPolicyChangedObserverStartKeepLocalSessionForceNoDelayKey"];

  v8 = [v7 BOOLValue];
  v9 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = v6;
    v12 = 1024;
    v13 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "starting background keep local session with enqueueAssets=%{BOOL}u, forceNoDelay=%{BOOL}u", v11, 0xEu);
  }

  v10 = [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper keepLocalEventHandler];
  [v10 startKeepLocalSessionInBackground:1 enqueueAssets:v6 forceNoDelay:v8 withCompletion:0];
}

- (void)sessionDidFinish:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4AB34;
  v7[3] = &unk_9EC30;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (id)_getDownloadStatusForCurrentPinningSettings
{
  v17 = [(MLSyncClient *)self _library];
  v2 = +[NSMutableDictionary dictionary];
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[NSMutableDictionary dictionary];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v16 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0DD8 comparison:3];
  v5 = [ML3Track unrestrictedAllItemsQueryWithlibrary:"unrestrictedAllItemsQueryWithlibrary:predicate:orderingTerms:" predicate:v17 orderingTerms:?];
  v42[0] = ML3TrackPropertyBaseLocationID;
  v42[1] = ML3TrackPropertyTotalSize;
  v42[2] = ML3TrackPropertyTotalTime;
  v42[3] = ML3TrackPropertyMediaType;
  v6 = [NSArray arrayWithObjects:v42 count:4];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_4B0A0;
  v18[3] = &unk_9E9E8;
  v7 = v4;
  v19 = v7;
  v22 = &v38;
  v23 = &v30;
  v8 = v3;
  v20 = v8;
  v24 = &v34;
  v25 = &v26;
  v9 = v2;
  v21 = v9;
  [v5 enumeratePersistentIDsAndProperties:v6 usingBlock:v18];
  v10 = [NSNumber numberWithUnsignedLongLong:v39[3]];
  v11 = [NSNumber numberWithUnsignedLongLong:v31[3]];
  v12 = [NSNumber numberWithUnsignedLongLong:v35[3]];
  v13 = [NSNumber numberWithUnsignedLongLong:v27[3]];
  v14 = [NSDictionary dictionaryWithObjectsAndKeys:v10, @"DownloadedAssetCountForSyncSettings", v11, @"DownloadedAssetByteCountForSyncSettings", v12, @"AssetsToDownloadCountForSyncSettings", v13, @"KeepLocalAssetByteCountForSyncSettings", v9, @"DetailedRequestInfoByAssetType", v8, @"DetailedDownloadInfoByAssetType", v7, @"ItemsWithEstimatedFileSize", 0];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);

  return v14;
}

- (void)_syncPlaylistToCurrentRevision
{
  v3 = [(MLSyncClient *)self _library];
  v4 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
  if ([v4 longLongValue] && objc_msgSend(self->_nanoSyncSettings, "assetSyncType") == &dword_0 + 1)
  {
    v5 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistPersistentID];
    v6 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistVersion];
    v7 = [[ML3Container alloc] initWithPersistentID:objc_msgSend(v4 inLibrary:{"longLongValue"), v3}];
    v8 = [v7 valueForProperty:ML3EntityPropertyRevision];
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v11 = [v5 longLongValue];
      v12 = 2048;
      v13 = [v6 longLongValue];
      v14 = 2050;
      v15 = [v4 longLongValue];
      v16 = 2048;
      v17 = [v8 longLongValue];
      v18 = 1024;
      v19 = v6 != v8;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "lastFullySyncedPlaylistId:%{public}lld, last saved revision:[%lld], playListId:%{public}lld, new revision:[%lld], shouldSync:%d", buf, 0x30u);
    }

    if (v6 != v8)
    {
      [(MLSyncClient *)self _invokeHasChangesCallbackWithPriority:1];
    }
  }
}

- (BOOL)_rebuildCachedPlaylistSettings
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cachedSettingsQueue = self->_cachedSettingsQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_4B64C;
  v5[3] = &unk_9E9C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(cachedSettingsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_clearCachedPlaylistSettings
{
  cachedSettingsQueue = self->_cachedSettingsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4BA48;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(cachedSettingsQueue, block);
}

- (void)_handleATCStartupCompletedNotification:(id)a3
{
  v4 = a3;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Handling atc startup completed notification", buf, 2u);
  }

  v6 = [(MLSyncClient *)self _library];
  [MPMediaQuery setFilteringDisabled:1];
  v7 = +[MPMediaLibrary defaultMediaLibrary];
  [v7 setCloudFilteringType:1];

  v8 = +[MLSyncClientEnvironmentPolicyChangeHandler sharedInstance];
  [v8 addObserver:self];

  v9 = +[MLSyncClientKeepLocalEventHandlerWrapper sharedInstance];
  keepLocalEventHandlerWrapper = self->_keepLocalEventHandlerWrapper;
  self->_keepLocalEventHandlerWrapper = v9;

  [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper initializeKeepLocalHandlerWithQueue:self->_queue library:v6];
  [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper startKeepLocalHandler];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v11 = qword_A76E0;
  v38 = qword_A76E0;
  if (!qword_A76E0)
  {
    *buf = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_4C090;
    v33 = &unk_9EE58;
    v34 = &v35;
    sub_4C090(buf);
    v11 = v36[3];
  }

  v12 = v11;
  _Block_object_dispose(&v35, 8);
  v13 = [v11 sharedDefaults];
  nanoSyncSettings = self->_nanoSyncSettings;
  self->_nanoSyncSettings = v13;

  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v15 = qword_A76F0;
  v38 = qword_A76F0;
  if (!qword_A76F0)
  {
    *buf = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_4C158;
    v33 = &unk_9EE58;
    v34 = &v35;
    sub_4C158(buf);
    v15 = v36[3];
  }

  v16 = v15;
  _Block_object_dispose(&v35, 8);
  v17 = [v15 sharedSynchronizer];
  nanoMediaSettingsSynchronizer = self->_nanoMediaSettingsSynchronizer;
  self->_nanoMediaSettingsSynchronizer = v17;

  [self->_nanoMediaSettingsSynchronizer beginObservingUpdates];
  [(MLSyncClient *)self _migrateSyncSettings];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2050000000;
  v19 = qword_A76F8;
  v38 = qword_A76F8;
  if (!qword_A76F8)
  {
    *buf = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_4C220;
    v33 = &unk_9EE58;
    v34 = &v35;
    sub_4C220(buf);
    v19 = v36[3];
  }

  v20 = v19;
  _Block_object_dispose(&v35, 8);
  v21 = [v19 sharedManager];
  nanoMusicRecommendationManager = self->_nanoMusicRecommendationManager;
  self->_nanoMusicRecommendationManager = v21;

  [self->_nanoMusicRecommendationManager setWantsContentsUpdate:1];
  [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleNonContentsPropertiesDidChangeNotification:" name:ML3MusicLibraryNonContentsPropertiesDidChangeNotification object:0];
  notificationCenter = self->_notificationCenter;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v24 = qword_A7700;
  v38 = qword_A7700;
  if (!qword_A7700)
  {
    *buf = _NSConcreteStackBlock;
    v31 = 3221225472;
    v32 = sub_4C2E8;
    v33 = &unk_9EE58;
    v34 = &v35;
    v25 = sub_4C338();
    v26 = dlsym(v25, "NMSMediaPinningManagerDownloadInfoDidInvalidateNotification");
    *(v34[1] + 24) = v26;
    qword_A7700 = *(v34[1] + 24);
    v24 = v36[3];
  }

  _Block_object_dispose(&v35, 8);
  if (v24)
  {
    [(NSNotificationCenter *)notificationCenter addObserver:self selector:"_handleMediaPinningContentsInvalidatedNotification:" name:*v24 object:0];
    [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleSessionsDidChangeNotification:" name:ATSessionsDidChangeNotification object:0];
    [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleContentsChangedNotification:" name:ML3MusicLibraryContentsDidChangeNotification object:0];
    [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleDisplayValuesChangedNotification:" name:ML3MusicLibraryDisplayValuesDidChangeNotification object:0];
    [(NSNotificationCenter *)self->_notificationCenter addObserver:self selector:"_handleAccountsDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_4C498, @"com.apple.mobileipod-prefsChanged", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_4C48C, @"com.apple.itunescloudd.artworkDownloadsDidCompleteNotification", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_4C498, @"com.apple.Music-SortAlbums", 0, CFNotificationSuspensionBehaviorDrop);
    [(MLSyncClient *)self _syncPlaylistToCurrentRevision];
    [(MLSyncClient *)self _rebuildCachedPlaylistSettings];
  }

  else
  {
    v28 = +[NSAssertionHandler currentHandler];
    v29 = [NSString stringWithUTF8String:"NSString *getNMSMediaPinningManagerDownloadInfoDidInvalidateNotification(void)"];
    [v28 handleFailureInFunction:v29 file:@"MLSyncClient.m" lineNumber:156 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (void)_resetLastSyncedVersionForSyncedPlaylist
{
  if ([self->_nanoSyncSettings assetSyncType] == &dword_0 + 1)
  {
    v3 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
    v4 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistPersistentID];
    v5 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistVersion];
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134349824;
      v8 = [v4 longLongValue];
      v9 = 2048;
      v10 = [v5 longLongValue];
      v11 = 2050;
      v12 = [v3 longLongValue];
      v13 = 2048;
      v14 = [&off_A0DD8 longLongValue];
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "updating synced playlist from %{public}lld[%lld] ==> %{public}lld[%lld]", &v7, 0x2Au);
    }

    if (v3)
    {
      [self->_nanoSyncSettings setLastFullySentAssetSyncPlaylistPersistentID:v3];
    }

    [self->_nanoSyncSettings setLastFullySentAssetSyncPlaylistVersion:&off_A0DD8];
  }
}

- (void)_updateSyncPlaylistToCurrentRevision
{
  v3 = [(MLSyncClient *)self _library];
  v4 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
  if ([v4 longLongValue] && objc_msgSend(self->_nanoSyncSettings, "assetSyncType") == &dword_0 + 1)
  {
    v5 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistPersistentID];
    v6 = [self->_nanoSyncSettings lastFullySentAssetSyncPlaylistVersion];
    v7 = [[ML3Container alloc] initWithPersistentID:objc_msgSend(v4 inLibrary:{"longLongValue"), v3}];
    v8 = [v7 valueForProperty:ML3EntityPropertyRevision];
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349824;
      v11 = [v5 longLongValue];
      v12 = 2048;
      v13 = [v6 longLongValue];
      v14 = 2050;
      v15 = [v4 longLongValue];
      v16 = 2048;
      v17 = [v8 longLongValue];
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "updating synced playlist from %{public}lld[%lld] ==> %{public}lld[%lld]", buf, 0x2Au);
    }

    if (v4)
    {
      [self->_nanoSyncSettings setLastFullySentAssetSyncPlaylistPersistentID:v4];
    }

    if (v8)
    {
      [self->_nanoSyncSettings setLastFullySentAssetSyncPlaylistVersion:v8];
    }
  }
}

- (void)_handleUpdateSettingsRequest:(id)a3 onMessageLink:(id)a4
{
  v5 = a3;
  v26 = a4;
  v6 = [v5 parameters];
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v28 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "received updated settings %{public}@", buf, 0xCu);
  }

  buf[0] = 0;
  v8 = [v6 objectForKey:@"ShowAllMusic"];
  v9 = [v6 objectForKey:@"SoundCheckEnabled"];
  v10 = [v6 objectForKey:@"MusicSortingPreference"];
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MusicShowCloudMediaEnabledSetting", @"com.apple.mobileipod", buf);
  v12 = buf[0];
  v13 = CFPreferencesCopyAppValue(@"SortAlbums", @"com.apple.Music");
  v14 = CFPreferencesGetAppBooleanValue(@"MusicSoundCheckEnabledSetting", @"com.apple.mobileipod", buf);
  v15 = buf[0];
  if (v8)
  {
    v16 = [v8 BOOLValue];
    v17 = v12 && AppBooleanValue == 0;
    v18 = v17;
    if (v18 == v16)
    {
      CFPreferencesSetAppValue(@"MusicShowCloudMediaEnabledSetting", v8, @"com.apple.mobileipod");
      CFPreferencesAppSynchronize(@"com.apple.mobileipod");
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, ICCloudAvailabilityControllerCanShowCloudTracksDidChangeNotification, 0, 0, 1u);
    }
  }

  if (v9 && ((v20 = [v9 BOOLValue], v15) ? (v21 = v14 == 0) : (v21 = 0), !v21 ? (v22 = 0) : (v22 = 1), v22 == v20))
  {
    CFPreferencesSetAppValue(@"MusicSoundCheckEnabledSetting", v9, @"com.apple.mobileipod");
    CFPreferencesAppSynchronize(@"com.apple.mobileipod");
    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  if (([v10 isEqualToString:v13] & 1) == 0)
  {
    CFPreferencesSetAppValue(@"SortAlbums", v10, @"com.apple.Music");
    CFPreferencesAppSynchronize(@"com.apple.Music");
    v23 = 1;
  }

  v24 = [v6 objectForKey:@"Playlist"];
  if (v23)
  {
    notify_post("com.apple.mobileipod-prefsChanged");
  }

  v25 = [v5 responseWithError:0 parameters:0];
  [v26 sendResponse:v25 withCompletion:&stru_9E998];
}

- (void)_handleStatusReportRequest:(id)a3 onMessageLink:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MLSyncClient *)self _library];
  v9 = [(MLSyncClient *)self _syncedPlaylistIdInMediaLibrary];
  v10 = [(MLSyncClient *)self _tracksToSyncPredicateWithMediaType:8];
  v11 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v8 predicate:v10 orderingTerms:0];

  v12 = [(MLSyncClient *)self _tracksNeedingDownloadPredicateWithMediaType:8];
  v13 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v8 predicate:v12 orderingTerms:0];

  v14 = [v11 countOfEntities];
  v15 = [v13 countOfEntities];
  v21[0] = @"TrackCount";
  v16 = [NSNumber numberWithUnsignedInteger:v14];
  v22[0] = v16;
  v21[1] = @"TrackRemainingCount";
  v17 = [NSNumber numberWithUnsignedInteger:v15];
  v22[1] = v17;
  v21[2] = @"UnknownSyncedPlaylistId";
  v18 = [NSNumber numberWithBool:v9];
  v22[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:3];

  v20 = [v7 responseWithError:0 parameters:v19];

  [v6 sendResponse:v20 withCompletion:0];
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v6 command];
  v8 = [v7 isEqualToString:@"UpdateSettings"];

  if (v8)
  {
    [(MLSyncClient *)self _handleUpdateSettingsRequest:v6 onMessageLink:v13];
  }

  else
  {
    v9 = [v6 command];
    v10 = [v9 isEqualToString:@"StatusReport"];

    if (v10)
    {
      [(MLSyncClient *)self _handleStatusReportRequest:v6 onMessageLink:v13];
    }

    else
    {
      v11 = [NSError errorWithDomain:@"ATError" code:21 userInfo:0];
      v12 = [v6 responseWithError:v11 parameters:0];
      [v13 sendResponse:v12 withCompletion:&stru_9E978];
    }
  }
}

- (void)_validatePlaylistSettings
{
  v3 = [(MLSyncClient *)self _library];
  if ([self->_nanoSyncSettings assetSyncType] == &dword_0 + 1)
  {
    v4 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
    v5 = [v4 longLongValue];

    if (v5)
    {
      v6 = [[ML3Container alloc] initWithPersistentID:v5 inLibrary:v3];
      if (([v6 existsInLibrary] & 1) == 0)
      {
        v7 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 134217984;
          v9 = v5;
          _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "asset sync playlist %lld has been removed - clearing settings", &v8, 0xCu);
        }

        [self->_nanoSyncSettings setAssetSyncType:0];
        [self->_nanoSyncSettings setAssetSyncPlaylistPersistentID:&off_A0DD8];
      }
    }
  }
}

- (void)_sendUpdatedSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLink);
  if ([WeakRetained isInitialized])
  {
    v4 = +[NSMutableDictionary dictionary];
    keyExistsAndHasValidFormat = 0;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"MusicSoundCheckEnabledSetting", @"com.apple.mobileipod", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v6 = AppBooleanValue == 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = !v6;
    v8 = CFPreferencesCopyAppValue(@"SortAlbums", @"com.apple.Music");
    v9 = [NSNumber numberWithUnsignedChar:v7];
    [v4 setObject:v9 forKey:@"SoundCheckEnabled"];

    v10 = [NSNumber numberWithUnsignedChar:1];
    [v4 setObject:v10 forKey:@"ShowAllMusic"];

    if (v8)
    {
      [v4 setObject:v8 forKey:@"MusicSortingPreference"];
    }

    [(MLSyncClient *)self _validatePlaylistSettings];
    v11 = [(MLSyncClient *)self _getPlaylistSyncSettings];
    if (v11)
    {
      [v4 setObject:v11 forKey:@"Playlist"];
    }

    v12 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v4;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "sending updated music settings %{public}@", buf, 0xCu);
    }

    v13 = [[ATRequest alloc] initWithCommand:@"UpdateSettings" dataClass:@"MediaMessages" parameters:v4];
    [WeakRetained sendRequest:v13 withCompletion:&stru_9E958];
  }
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageLink);

  if (WeakRetained == v4)
  {

    objc_storeWeak(&self->_messageLink, 0);
  }
}

- (void)messageLinkWasInitialized:(id)a3
{
  if ([a3 endpointType] == 1)
  {

    [(MLSyncClient *)self _sendUpdatedSettings];
  }
}

- (void)messageLinkWasOpened:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_messageLink, v4);
  [v4 addRequestHandler:self forDataClass:@"MediaMessages"];
}

- (void)_invokeHasChangesCallbackWithPriority:(int)a3
{
  if ([(MLSyncClient *)self isEnabled])
  {
    v3 = +[ATDeviceService sharedInstance];
    [v3 syncChangesForDataClass:@"Media" withPriority:1];
  }
}

- (void)_handleAccountsDidChangeNotification:(id)a3
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "account settings have changed - requesting a sync", v5, 2u);
  }

  [(MLSyncClient *)self _invokeHasChangesCallbackWithPriority:1];
}

- (void)_syncUpdatedSettingsToPairedDevice
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4D72C;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(v3, block);
}

- (BOOL)_shouldCancelActiveSessionsForLegacyPairedDevices
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getActivePairedDevice];
  if (v4)
  {
    v5 = NRWatchOSVersionForRemoteDevice();
    v6 = v5 < 0x40000;
  }

  else
  {
    v7 = _ATLogCategoryDeviceSync();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Paired Sync Registry reports no active paired device", &v11, 0xCu);
    }

    v6 = 0;
    v5 = -1;
  }

  v8 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "will not";
    v11 = 138543874;
    v12 = self;
    if (v6)
    {
      v9 = "will";
    }

    v13 = 1024;
    v14 = v5;
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: Paired Device is running %u - companion %s cancel active sessions", &v11, 0x1Cu);
  }

  return v6;
}

- (void)_handleSessionsDidChangeNotification:(id)a3
{
  v4 = [ATSession sessionsWithSessionTypeIdentifier:ATSessionTypeDeviceSync];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isCancelled] & 1) == 0 && (objc_msgSend(v9, "isFinished") & 1) == 0)
        {
          v10 = [v9 dataClass];
          v11 = [v10 isEqualToString:@"Media"];

          if (v11)
          {
            [v9 addObserver:self];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_handleSyncDefaultsSyncSettingsDidChangeNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4DB38;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (BOOL)_hasRelevantChangesToSync
{
  v3 = [(MLSyncClient *)self _library];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  lastSyncedRevision = self->_lastSyncedRevision;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4DEF0;
  v15[3] = &unk_9E8A0;
  v15[4] = &v16;
  [v3 enumeratePersistentIDsAfterRevision:lastSyncedRevision revisionTrackingCode:+[ML3Track revisionTrackingCode](ML3Track maximumRevisionType:"revisionTrackingCode") forMediaTypes:3 inUsersLibrary:&off_A13F8 usingBlock:{0, v15}];
  if (v17[3] & 1) != 0 || (v5 = self->_lastSyncedRevision, v14[0] = _NSConcreteStackBlock, v14[1] = 3221225472, v14[2] = sub_4DF08, v14[3] = &unk_9E8C8, v14[4] = &v16, [v3 enumeratePersistentIDsAfterRevision:v5 revisionTrackingCode:+[ML3Container revisionTrackingCode](ML3Container maximumRevisionType:"revisionTrackingCode") usingBlock:{3, v14}], (v17[3]) || (v6 = self->_lastSyncedRevision, v13[0] = _NSConcreteStackBlock, v13[1] = 3221225472, v13[2] = sub_4DF20, v13[3] = &unk_9E8F0, v13[4] = &v16, objc_msgSend(v3, "enumerateAlbumArtistPersistentIDsAfterRevision:revisionTrackingCode:usingBlock:", v6, +[ML3AlbumArtist revisionTrackingCode](ML3AlbumArtist, "revisionTrackingCode"), v13), (v17[3]) || (v7 = self->_lastSyncedRevision, v12[0] = _NSConcreteStackBlock, v12[1] = 3221225472, v12[2] = sub_4DF38, v12[3] = &unk_9E918, v12[4] = &v16, objc_msgSend(v3, "enumerateAlbumPersistentIDsAfterRevision:revisionTrackingCode:usingBlock:", v7, +[ML3Album revisionTrackingCode](ML3Album, "revisionTrackingCode"), v12), (v17[3]))
  {
    v8 = 1;
  }

  else
  {
    v10 = self->_lastSyncedRevision;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_4DF50;
    v11[3] = &unk_9E918;
    v11[4] = &v16;
    [v3 enumerateLibraryPinsPersistentIDsAfterRevision:v10 revisionTrackingCode:+[ML3LibraryPin revisionTrackingCode](ML3LibraryPin usingBlock:{"revisionTrackingCode"), v11}];
    v8 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  return v8 & 1;
}

- (void)_handleNonContentsPropertiesDidChangeNotification:(id)a3
{
  if ([(MLSyncClient *)self _hasRelevantChangesToSync])
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "media library item properties changed - requesting a sync", v5, 2u);
    }

    [(MLSyncClient *)self _invokeHasChangesCallbackWithPriority:1];
  }
}

- (void)_handleDisplayValuesChangedNotification:(id)a3
{
  if ([(MLSyncClient *)self _hasRelevantChangesToSync])
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "media library display value changed - requesting a sync", v5, 2u);
    }

    [(MLSyncClient *)self _invokeHasChangesCallbackWithPriority:1];
  }
}

- (void)_handleContentsChangedNotification:(id)a3
{
  if (self->_syncClientDelegate)
  {
    v4 = [(MLSyncClient *)self _library];
    v5 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
    v6 = [v5 longLongValue];

    if (v6)
    {
      v7 = [[ML3Container alloc] initWithPersistentID:v6 inLibrary:v4];
      if (([v7 existsInLibrary] & 1) == 0)
      {
        [(MLSyncClient *)self _syncUpdatedSettingsToPairedDevice];
      }
    }

    if ([(MLSyncClient *)self _hasRelevantChangesToSync])
    {
      v8 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "media library contents changed - requesting a sync", v9, 2u);
      }

      [(MLSyncClient *)self _invokeHasChangesCallbackWithPriority:1];
    }
  }
}

- (id)_getPlaylistSyncSettings
{
  v3 = [NSMutableDictionary dictionaryWithCapacity:4];
  v4 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"SyncPlaylistID"];
  }

  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [self->_nanoSyncSettings assetSyncLimitType]);
  [v3 setObject:v5 forKey:@"SyncLimitType"];

  v6 = [self->_nanoSyncSettings assetSyncLimit];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"SyncLimit"];
  }

  v7 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [self->_nanoSyncSettings assetSyncType]);
  [v3 setObject:v7 forKey:@"SyncType"];

  return v3;
}

- (void)getDataForGeniusAsset:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = [NSError errorWithDomain:@"ATError" code:3 userInfo:0];
  (*(a4 + 2))(v5, v6, 0, 0);
}

- (void)getDataForArtworkAsset:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MLSyncClient *)self _library];
  v9 = [v6 assetType];
  v10 = [v9 isEqualToString:@"Playlist"];

  if (v10)
  {
    v11 = 5;
  }

  else
  {
    v11 = 1;
  }

  v12 = ML3Container_ptr;
  if (!v10)
  {
    v12 = ML3Track_ptr;
  }

  v13 = *v12;
  v14 = [v6 identifier];
  v15 = [v13 newWithPersistentID:objc_msgSend(v14 inLibrary:{"longLongValue"), v8}];

  v50 = v15;
  v16 = [[ML3ArtworkTokenSet alloc] initWithEntity:v15 artworkType:v11];
  v49 = [v16 availableArtworkToken];
  if ([v49 length])
  {
    v17 = [ML3Artwork alloc];
    v18 = [v16 availableArtworkToken];
    v19 = [v17 initWithToken:v18 artworkType:1 musicLibrary:v8];
  }

  else
  {
    v19 = 0;
  }

  v20 = [v19 originalFileURL];
  v21 = +[NSFileManager defaultManager];
  if (v19 && ([v20 path], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "fileExistsAtPath:", v22), v22, v23))
  {
    v48 = v21;
    v24 = [v6 variantOptions];
    v25 = [v24 objectForKey:@"Dimensions"];

    v26 = [v6 variantOptions];
    v27 = [v26 objectForKey:@"Quality"];

    v46 = v27;
    if (v27)
    {
      [v27 floatValue];
      v29 = v28;
    }

    else
    {
      v29 = 0.9;
    }

    v47 = v8;
    if (v25 && [v25 count] == &dword_0 + 2)
    {
      v31 = [v25 objectAtIndexedSubscript:0];
      v32 = [v31 intValue];

      v33 = [v25 objectAtIndexedSubscript:1];
      v34 = [v33 intValue];

      if (v32 <= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v32;
      }

      v36 = v35;
      queue = self->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_4E854;
      block[3] = &unk_9E878;
      v52 = v20;
      v55 = v29;
      v56 = v36;
      v54 = v7;
      v53 = v6;
      dispatch_async(queue, block);

      v38 = v52;
    }

    else
    {
      v45 = v7;
      v39 = [v20 path];
      v38 = [v48 attributesOfItemAtPath:v39 error:0];

      if (v38)
      {
        v40 = [v38 objectForKeyedSubscript:NSFileSize];
        [v6 setTotalBytes:{objc_msgSend(v40, "unsignedLongLongValue")}];
      }

      v59[0] = @"_AssetFileName";
      v41 = [v20 lastPathComponent];
      v60[0] = v41;
      v59[1] = @"_AssetSize";
      v42 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 totalBytes]);
      v60[1] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];

      v44 = [NSInputStream inputStreamWithURL:v20];
      v45[2](v45, 0, v44, v43);

      v7 = v45;
    }

    v8 = v47;
    v21 = v48;
  }

  else
  {
    v30 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v58 = v20;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "no original artwork file for asset at path %{public}@", buf, 0xCu);
    }

    v25 = [NSError errorWithDomain:@"ATError" code:3 userInfo:0];
    (*(v7 + 2))(v7, v25, 0, 0);
  }
}

- (void)getDataForTrackAsset:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "getDataForTrackAsset %{public}@", buf, 0xCu);
  }

  v9 = [v6 identifier];
  v10 = [v9 longLongValue];

  v35 = +[NSFileManager defaultManager];
  v34 = [(MLSyncClient *)self _library];
  v11 = [[ML3Track alloc] initWithPersistentID:v10 inLibrary:v34];
  v12 = ML3TrackPropertyIsDeprotected;
  v13 = ML3TrackPropertyTotalSize;
  v42[0] = ML3TrackPropertyIsDeprotected;
  v42[1] = ML3TrackPropertyTotalSize;
  v14 = ML3TrackPropertyStoreProtectionType;
  v15 = ML3TrackPropertyIsStoreRedownloadable;
  v42[2] = ML3TrackPropertyStoreProtectionType;
  v42[3] = ML3TrackPropertyIsStoreRedownloadable;
  v16 = [NSArray arrayWithObjects:v42 count:4];
  v17 = [v11 getValuesForProperties:v16];

  if (!v11)
  {
    goto LABEL_16;
  }

  v18 = [v17 valueForKey:v12];
  v19 = [v18 BOOLValue];

  if (v19)
  {
    v20 = [v17 valueForKey:v13];
    [v6 setTotalBytes:{objc_msgSend(v20, "unsignedLongLongValue")}];

    v21 = [v11 absoluteFilePath];
    v36 = 0;
    if (v21)
    {
      if ([v35 fileExistsAtPath:v21 isDirectory:&v36])
      {
        if (v36 != 1)
        {
          v39 = @"MLAssetProtectionType";
          v28 = [v17 valueForKey:v14];
          v40 = v28;
          v29 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];

          v37[0] = @"_AssetFileName";
          v30 = [v21 lastPathComponent];
          v38[0] = v30;
          v37[1] = @"_AssetSize";
          v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 totalBytes]);
          v37[2] = @"_AssetClientParams";
          v38[1] = v31;
          v38[2] = v29;
          v32 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:3];

          v33 = [NSInputStream inputStreamWithFileAtPath:v21];
          v7[2](v7, 0, v33, v32);

          goto LABEL_19;
        }

        v22 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v21;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Not providing track asset since its a directory: '%{public}@'", buf, 0xCu);
        }
      }

      else
      {
        v23 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v44 = v21;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "track has an invalid file path '%{public}@' - clearing location data", buf, 0xCu);
        }

        v22 = [NSNumber numberWithLongLong:v10];
        v41 = v22;
        v24 = [NSArray arrayWithObjects:&v41 count:1];
        [ML3Track clearLocationFromLibrary:v34 persistentIDs:v24 disableKeepLocal:0];
      }
    }
  }

  v25 = [v17 valueForKey:v15];
  v26 = [v25 BOOLValue];

  if ((v26 & 1) == 0)
  {
    v27 = 26;
  }

  else
  {
LABEL_16:
    v27 = 16;
  }

  v21 = [NSError errorWithDomain:@"ATError" code:v27 userInfo:0];
  (v7)[2](v7, v21, 0, 0);
LABEL_19:
}

- (void)getDataForAsset:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4F120;
  block[3] = &unk_9E850;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)assetSyncDidCompleteWithError:(id)a3
{
  v4 = a3;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27[0] = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "assetSync complete. err=%{public}@", buf, 0xCu);
  }

  v6 = [(MLSyncClient *)self _library];
  [(MLSyncClient *)self _processCompletedAssets];
  if (self->_performPostSyncUpdates)
  {
    [(MLSyncClient *)self assetTransferEndedWithSuccess:v4 == 0];
    self->_performPostSyncUpdates = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageLink);
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained endpointType] == 1)
    {
      v9 = dispatch_semaphore_create(0);
      v10 = [[ATRequest alloc] initWithCommand:@"StatusReport" dataClass:@"MediaMessages" parameters:0];
      v20 = _NSConcreteStackBlock;
      v21 = 3221225472;
      v22 = sub_4F648;
      v23 = &unk_9E768;
      v24 = self;
      v25 = v9;
      v11 = v9;
      [v8 sendRequest:v10 withCompletion:&v20];
      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v10 = [self->_nanoSyncSettings assetSyncPlaylistPersistentID];
      if (![v10 longLongValue])
      {
LABEL_17:

        goto LABEL_18;
      }

      v12 = [(MLSyncClient *)self _syncedPlaylistIdInMediaLibrary];
      v13 = [(MLSyncClient *)self _tracksNeedingDownloadPredicateWithMediaType:8];
      v11 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v6 predicate:v13 orderingTerms:0];

      v14 = [v11 countOfEntities];
      v15 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        LODWORD(v27[0]) = v14;
        WORD2(v27[0]) = 1024;
        *(v27 + 6) = v12;
        _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "remainingaAssetsCount=%d, syncedPlaylistIdInMediaLibrary=%d", buf, 0xEu);
      }

      if (v14)
      {
        v16 = 0;
      }

      else
      {
        v16 = v12;
      }

      if (v16 == 1)
      {
        [(MLSyncClient *)self _updateSyncPlaylistToCurrentRevision];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  v17 = [ICDeviceInfo currentDeviceInfo:v20];
  v18 = [v17 isWatch];

  if (v18)
  {
    v19 = [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper keepLocalEventHandler];
    [v19 startKeepLocalSessionInBackground:1];

    [v6 databaseConnectionAllowingWrites:0 withBlock:&stru_9E7A8];
  }
}

- (void)_processCompletedAssets
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(NSMutableArray *)self->_downloadedAssets count];
    *buf = 67109120;
    v8 = v4;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "processing %d completed assets", buf, 8u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4FE44;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)assetSync:(id)a3 didCompleteWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v6;
      v22 = 2114;
      v23 = v7;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "failed to sync asset %{public}@. error=%{public}@", buf, 0x16u);
    }
  }

  else
  {
    queue = self->_queue;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_50AF4;
    v17 = &unk_9EC30;
    v18 = self;
    v10 = v6;
    v19 = v10;
    dispatch_sync(queue, &v14);
    v11 = [v10 variantOptions];
    v12 = [v11 objectForKey:@"AssetParts"];
    v13 = [v12 unsignedIntegerValue];

    if ([(NSMutableArray *)self->_downloadedAssets count]> 0x63 || v13 == &dword_0 + 1)
    {
      [(MLSyncClient *)self _processCompletedAssets];
    }
  }
}

- (id)_geniusAssetsToSync
{
  v2 = objc_alloc_init(NSMutableOrderedSet);

  return v2;
}

- (id)_artworkAssetsToSyncWithMaximumTotalSize:(unint64_t)a3 totalSize:(unint64_t *)a4
{
  v7 = objc_alloc_init(NSMutableOrderedSet);
  v8 = [(MLSyncClient *)self _songArtworkSizeVariant];
  v9 = +[ICDeviceInfo currentDeviceInfo];
  v10 = [v9 isWatch];

  v11 = [(MLSyncClient *)self _library];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_50E08;
  v33[3] = &unk_9E718;
  v36 = 102400;
  v37 = a4;
  v38 = a3;
  v12 = v8;
  v34 = v12;
  v39 = v10;
  v13 = v7;
  v35 = v13;
  [v11 databaseConnectionAllowingWrites:0 withBlock:v33];
  v14 = ML3ContainerPropertySyncId;
  v15 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertySyncId value:&off_A0DD8 comparison:2];
  v41 = v15;
  v16 = [NSArray arrayWithObjects:&v41 count:1];
  v17 = [ML3AllCompoundPredicate predicateMatchingPredicates:v16];

  v18 = [ML3Container queryWithLibrary:v11 predicate:v17 orderingTerms:0];
  v40[0] = ML3ContainerPropertyName;
  v40[1] = v14;
  v19 = [NSArray arrayWithObjects:v40 count:2];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_50EE4;
  v26[3] = &unk_9E740;
  v30 = 102400;
  v31 = a4;
  v32 = a3;
  v27 = v11;
  v28 = v12;
  v20 = v13;
  v29 = v20;
  v21 = v12;
  v22 = v11;
  [v18 enumeratePersistentIDsAndProperties:v19 usingBlock:v26];

  v23 = v29;
  v24 = v20;

  return v20;
}

- (id)_songArtworkSizeVariant
{
  if (qword_A76C0 != -1)
  {
    dispatch_once(&qword_A76C0, &stru_9E6C8);
  }

  v3 = qword_A76B8;

  return v3;
}

- (id)_trackAssetsToSyncWithMediaType:(unsigned int)a3 withAllowedPids:(id)a4 maximumTotalSize:(unint64_t)a5 totalSize:(unint64_t *)a6
{
  v6 = *&a3;
  v8 = a4;
  v78 = objc_alloc_init(NSMutableOrderedSet);
  v9 = +[ICDeviceInfo currentDeviceInfo];
  v74 = [v9 isWatch];

  v10 = [(MLSyncClient *)self _library];
  v11 = [NSMutableArray arrayWithCapacity:10];
  v77 = v6;
  v12 = [(MLSyncClient *)self _tracksNeedingDownloadPredicateWithMediaType:v6];
  v13 = [ML3PersistentIDsPredicate predicateWithPersistentIDs:v8 shouldContain:1];
  v52 = v8;
  v50 = v13;
  if (v8)
  {
    v106[0] = v12;
    v106[1] = v13;
    v14 = [NSArray arrayWithObjects:v106 count:2];
    v15 = [ML3AllCompoundPredicate predicateMatchingPredicates:v14];
  }

  else
  {
    v15 = v12;
  }

  v51 = v12;
  if (v15)
  {
    v16 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v10 predicate:v15 orderingTerms:0];
    [v11 addObject:v16];
  }

  v49 = v15;
  if (v77 == 8 && v74)
  {
    v17 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0DD8 comparison:3, v15, v50, v12, v52];
    v18 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyBaseLocationID value:&off_A0DD8 comparison:1];
    v19 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyRemoteLocationID value:&off_A0E50 comparison:1];
    v70 = [ML3BitMaskPredicate predicateWithProperty:ML3TrackPropertyMediaType mask:1032 value:8];
    v105[0] = v70;
    v105[1] = v19;
    v75 = v19;
    v79 = v18;
    v105[2] = v18;
    v20 = [NSArray arrayWithObjects:v105 count:3];
    v21 = [ML3AllCompoundPredicate predicateMatchingPredicates:v20];

    v22 = [ML3Album queryWithLibrary:v10 predicate:v17];
    +[NSMutableArray array];
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_51ED8;
    v23 = v99[3] = &unk_9EEC0;
    v100 = v23;
    v68 = v22;
    [v22 enumeratePersistentIDsUsingBlock:v99];
    if ([v23 count])
    {
      v24 = +[ML3Album trackForeignPersistentID];
      v25 = [ML3ContainsPredicate predicateWithProperty:v24 values:v23];

      v104[0] = v25;
      v104[1] = v21;
      v26 = [NSArray arrayWithObjects:v104 count:2];
      v27 = [ML3AllCompoundPredicate predicateMatchingPredicates:v26];
      v28 = [ML3Track queryWithLibrary:v10 predicate:v27 orderingTerms:0];
      [v11 addObject:v28];
    }

    v65 = v23;
    v29 = +[NSMutableArray array];
    v30 = [ML3Container queryWithLibrary:v10 predicate:v17];
    v96[0] = _NSConcreteStackBlock;
    v96[1] = 3221225472;
    v96[2] = sub_51F38;
    v96[3] = &unk_9E680;
    v97 = v10;
    v31 = v29;
    v98 = v31;
    v32 = v30;
    [v30 enumeratePersistentIDsUsingBlock:v96];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v33 = v31;
    v34 = [v33 countByEnumeratingWithState:&v92 objects:v103 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v93;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v93 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [ML3Track containerQueryWithContainer:*(*(&v92 + 1) + 8 * i) predicate:v21];
          [v11 addObject:v38];
        }

        v35 = [v33 countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v35);
    }
  }

  v76 = v10;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = v11;
  v80 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
  if (v80)
  {
    v71 = *v89;
    v69 = ML3TrackPropertyPodcastExternalGUID;
    v67 = ML3TrackPropertyStoreAccountID;
    v66 = ML3TrackPropertyStoreItemID;
    v64 = ML3TrackPropertyStoreFlavor;
    v63 = ML3TrackPropertyStoreMatchedStatus;
    v62 = ML3TrackPropertyStoreRedownloadedStatus;
    v61 = ML3TrackPropertyStoreSagaID;
    v60 = ML3TrackPropertySyncID;
    v59 = ML3TrackPropertyNeedsRestore;
    v58 = ML3TrackPropertyIsRental;
    v57 = ML3TrackPropertyTitle;
    v56 = ML3TrackPropertyTotalSize;
    v55 = ML3TrackPropertyStorePlaybackEndpointType;
    v54 = ML3TrackPropertyStoreRedownloadParameters;
    v39 = ML3TrackPropertySubscriptionStoreItemID;
    v40 = ML3TrackPropertySyncRedownloadParams;
    v41 = ML3TrackPropertyStoreCloudAssetAvailable;
    v42 = ML3EntityPropertyKeepLocal;
    v43 = ML3TrackPropertyTotalTime;
    v44 = ML3TrackPropertyPurchaseHistoryRedownloadParameters;
    do
    {
      for (j = 0; j != v80; j = j + 1)
      {
        if (*v89 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v88 + 1) + 8 * j);
        v101[0] = v69;
        v101[1] = v67;
        v101[2] = v66;
        v101[3] = v64;
        v101[4] = v63;
        v101[5] = v62;
        v101[6] = v61;
        v101[7] = v60;
        v101[8] = v59;
        v101[9] = v58;
        v101[10] = v57;
        v101[11] = v56;
        v101[12] = v55;
        v101[13] = v54;
        v101[14] = v39;
        v101[15] = v40;
        v101[16] = v41;
        v101[17] = v42;
        v101[18] = v43;
        v101[19] = v44;
        v47 = [NSArray arrayWithObjects:v101 count:20, v49];
        v81[0] = _NSConcreteStackBlock;
        v81[1] = 3221225472;
        v81[2] = sub_51FA8;
        v81[3] = &unk_9E6A8;
        v86 = v77;
        v84 = a6;
        v85 = a5;
        v82 = v76;
        v87 = v74;
        v83 = v78;
        [v46 enumeratePersistentIDsAndProperties:v47 usingBlock:v81];
      }

      v80 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
    }

    while (v80);
  }

  return v78;
}

- (id)_tracksNeedingDownloadPredicateWithMediaType:(unsigned int)a3
{
  v3 = [(MLSyncClient *)self _tracksToSyncPredicateWithMediaType:*&a3];
  v4 = ML3TrackPropertyBaseLocationID;
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyBaseLocationID equalToInt64:0];
  v6 = [ML3ComparisonPredicate predicateWithProperty:v4 equalToInt64:200];
  v21[0] = v5;
  v21[1] = v6;
  v7 = [NSArray arrayWithObjects:v21 count:2];
  v8 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v7];

  v9 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreCloudAssetAvailable equalToInt64:1];
  v20[0] = v9;
  v10 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsInMyLibrary equalToInt64:1];
  v20[1] = v10;
  v11 = [NSArray arrayWithObjects:v20 count:2];
  v12 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v11];

  v19[0] = v3;
  v19[1] = v12;
  v18[0] = v3;
  v18[1] = v8;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  v14 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  v19[2] = v14;
  v15 = [NSArray arrayWithObjects:v19 count:3];
  v16 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];

  return v16;
}

- (unint64_t)_sizeForDownloadedTracksWithMediaType:(unsigned int)a3 minimumKeepLocalValue:(int)a4
{
  v4 = *&a4;
  v7 = [(MLSyncClient *)self _library];
  if (a3 == 8)
  {
    v8 = [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper keepLocalEventHandler];
    v9 = [v8 sizeOfMediaItemsDownloadedForAutomaticallyPinnedCollectionsWithMusicLibrary:v7];
  }

  else
  {
    v10 = ML3EntityPropertyKeepLocal;
    v11 = [NSNumber numberWithInt:v4];
    v12 = [ML3ComparisonPredicate predicateWithProperty:v10 value:v11 comparison:4];
    v13 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyBaseLocationID value:&off_A0DD8 comparison:2, v12];
    v19[1] = v13;
    v14 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType equalToInt64:a3];
    v19[2] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:3];
    v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];

    v16 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v7 predicate:v8 orderingTerms:0];
    v17 = [v16 valueForAggregateFunction:ML3QueryAggregateFunctionTotal onEntitiesForProperty:ML3TrackPropertyTotalSize];
    v9 = [v17 unsignedLongLongValue];
  }

  return v9;
}

- (id)_tracksToSyncPredicateWithMediaType:(unsigned int)a3
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySyncID value:&off_A0DD8 comparison:2];
  v8[0] = v3;
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyNeedsRestore equalToInt64:1];
  v8[1] = v4;
  v5 = [NSArray arrayWithObjects:v8 count:2];
  v6 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v5];

  return v6;
}

- (void)assetsToSyncWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_52D88;
  v7[3] = &unk_9EDE0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (BOOL)_shouldSyncPlaylistWithPersistentId:(int64_t)a3 forSupportedMediaTypes:(id)a4 includeNonLibraryContent:(BOOL)a5 pairedDeviceCanProcessStandaloneCollections:(BOOL)a6
{
  v10 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v11 = [(MLSyncClient *)self _library];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_53100;
  v15[3] = &unk_9E658;
  v16 = @"SELECT is_hidden, smart_is_genius, contained_media_type, distinguished_kind, is_ignorable_itunes_playlist, cloud_is_subscribed FROM container WHERE container.ROWID = ?";
  v19 = a3;
  v12 = v10;
  v20 = a6;
  v17 = v12;
  v18 = &v22;
  v21 = a5;
  [v11 databaseConnectionAllowingWrites:0 withBlock:v15];
  v13 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v13;
}

- (void)syncCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "sync session completed. err=%{public}@", &v7, 0xCu);
  }

  if (v4)
  {
    v6 = +[MLMediaLibraryService sharedMediaLibraryService];
    [v6 cancelImportOperation:7 completionHandler:&stru_9E608];
  }

  else
  {
    self->_lastSyncedRevision = [(MLSyncClient *)self currentRevision];
  }
}

- (void)resetSyncDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MLSyncClient *)self _library];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_536CC;
  v7[3] = &unk_9E5C8;
  v8 = v4;
  v6 = v4;
  [v5 removeSource:3 withCompletionHandler:v7];
}

- (void)_applyLibrarySettingsFromSyncParams:(id)a3
{
  v4 = a3;
  v5 = [(MLSyncClient *)self _library];
  v6 = [v4 objectForKey:@"MLCloudAccountID"];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v4 objectForKey:@"MLJaliscoAccountID"];
  v48 = [v8 unsignedLongLongValue];

  v9 = [v4 objectForKey:@"MLCloudDatabaseRevision"];
  v10 = [v9 unsignedLongValue];

  v11 = [v4 objectForKey:@"MLJaliscoDatabaseRevision"];
  v46 = [v11 unsignedLongValue];

  v12 = [v4 objectForKey:@"MLSyncParamMLSagaDatabaseUserVersion"];
  v43 = [v12 unsignedLongValue];

  v13 = [v4 objectForKey:@"MLSagaClientFeaturesVersion"];
  v14 = [v4 objectForKey:@"MLSyncParamMLSagaClientAddToLibraryWhenFavoriting"];
  v15 = [v4 objectForKey:@"MLSyncParamMLSagaMaxAllowedLibraryPinCount"];
  v16 = [v15 unsignedLongValue];

  v17 = [v5 sagaAccountID];
  v18 = [v17 longLongValue];

  v19 = [v5 jaliscoAccountID];
  v47 = [v19 longLongValue];

  v20 = [v5 sagaOnDiskDatabaseRevision];
  v44 = [v5 jaliscoOnDiskDatabaseRevision];
  v45 = [v5 sagaDatabaseUserVersion];
  v42 = v16;
  if (v7 != v18)
  {
    v23 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134219010;
      v51 = v18;
      v52 = 2048;
      v53 = v7;
      v54 = 2114;
      v55 = v14;
      v56 = 2114;
      v57 = v13;
      v58 = 1024;
      v59 = v16;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "updating cloud account id from paired device: %lld --> %lld, addEntityToLibraryWhenFavoritingBehavior=%{public}@, clientFeatures=%{public}@, maxPinCount=%d", buf, 0x30u);
    }

    if (!v7)
    {
      v21 = v14;
      v22 = v13;
      [v5 clearSagaCloudAccountID];
      [v5 setSagaOnDiskDatabaseRevision:0];
      [v5 clearSagaClientFeaturesVersion];
      [v5 clearSagaCloudFavoriteSongAddToLibraryBehavior];
      [v5 clearSagaLastUpdatedClientBuildVersion];
      [v5 clearSagaMaxLibraryPinCount];
      goto LABEL_16;
    }

    v24 = [NSNumber numberWithUnsignedLongLong:v7];
    [v5 setSagaAccountID:v24];

    [v5 setSagaOnDiskDatabaseRevision:v10];
    [v5 setSagaClientFeaturesVersion:v13];
    if (v14)
    {
      [v5 setSagaCloudFavoriteSongAddToLibraryBehavior:{objc_msgSend(v14, "intValue")}];
    }

    v25 = MSVCopySystemBuildVersion();
    if ([v25 length])
    {
      [v5 setSagaLastCloudUpdateClientBuildVersion:v25];
    }

    if (v16)
    {
      [v5 setSagaMaximumLibraryPinCount:v16];
    }

    v21 = v14;

LABEL_14:
    v22 = v13;
    v26 = [NSNumber numberWithUnsignedLongLong:v7];
    goto LABEL_17;
  }

  v21 = v14;
  if (v7)
  {
    goto LABEL_14;
  }

  v22 = v13;
LABEL_16:
  v26 = 0;
LABEL_17:
  v27 = +[ICUserIdentityStore defaultIdentityStore];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_53EF0;
  v49[3] = &unk_9E5A0;
  v49[4] = v7;
  v49[5] = v18;
  [v27 setActiveLockerAccountWithDSID:v26 completionHandler:v49];

  if (v48 != v47)
  {
    v28 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v51 = v47;
      v52 = 2048;
      v53 = v48;
      _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "updating jalisco account id from paired device: %lld --> %lld", buf, 0x16u);
    }

    if (v48)
    {
      v29 = [NSNumber numberWithUnsignedLongLong:?];
      [v5 setJaliscoAccountID:v29];

      v30 = v46;
    }

    else
    {
      [v5 clearJaliscoAccountID];
      v30 = 0;
    }

    [v5 setJaliscoOnDiskDatabaseRevision:v30];
  }

  if (!v20)
  {
    [v5 setSagaOnDiskDatabaseRevision:v10];
    v32 = v22;
    [v5 setSagaClientFeaturesVersion:v22];
    [v5 setSagaMaximumLibraryPinCount:v42];
    v34 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v51 = v10;
      v52 = 2114;
      v53 = v22;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "setting saga on disk revision=%llu, sagaClientFeaturesVersion=%{public}@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v31 = v7 == v18;
  v32 = v22;
  if (v31 && v10 > v20)
  {
    v33 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "paired device has newer saga revision - triggering a poll", buf, 2u);
    }

    v34 = objc_alloc_init(ICCloudClient);
    [v34 updateSagaLibraryWithReason:3 completionHandler:0];
LABEL_33:
  }

  if (!v44)
  {
    [v5 setJaliscoOnDiskDatabaseRevision:v46];
    v35 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v51 = v46;
      v36 = "setting jalisco on disk revision=%llu";
      v37 = v35;
      v38 = 12;
      goto LABEL_41;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (v48 == v47 && v46 > v44)
  {
    v35 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v51 = v44;
      v52 = 2048;
      v53 = v46;
      v36 = "paired device has newer jalisco revision (ours:%llu, theirs: %llu";
      v37 = v35;
      v38 = 22;
LABEL_41:
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, v36, buf, v38);
      goto LABEL_42;
    }

    goto LABEL_42;
  }

LABEL_43:
  if (!v45)
  {
    [v5 setSagaDatabaseUserVersion:v43];
  }

  v39 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [v4 objectForKey:@"MLSyncParamStorefrontIdentifier"];
    *buf = 138412290;
    v51 = v40;
    _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "setting storefront id to %@", buf, 0xCu);
  }

  v41 = [v4 objectForKey:@"MLSyncParamStorefrontIdentifier"];
  [v5 setStorefrontIdentifier:v41];
}

- (int)_DMAPEntityKindFromMLEntityKind:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return 2;
  }

  else
  {
    return dword_885E8[a3 - 1];
  }
}

- (void)applyChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 fromStream:(id)a5 withSyncParams:(id)a6 withProgressHandler:(id)a7 withCompletionHandler:(id)a8
{
  v46 = a5;
  v12 = a6;
  v47 = a7;
  v44 = a8;
  v13 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = v46;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "writing incoming sync changes from stream %{public}@. params=%{public}@", buf, 0x16u);
  }

  v14 = [(MLSyncClient *)self _library];
  v15 = [v12 objectForKey:@"SyncItemCount"];
  v16 = [v15 unsignedIntegerValue];

  v47[2](v47, 0, v16);
  v45 = [v12 objectForKey:@"FormatType"];
  v17 = [v12 objectForKey:@"LibraryUUID"];
  v18 = [v12 objectForKey:@"SyncItemCount"];
  v42 = [v18 longLongValue];

  v19 = [v14 syncLibraryID];
  v20 = v19;
  if (v19 == v17)
  {
    LOBYTE(v41) = 0;
  }

  else
  {
    v41 = [v19 isEqual:v17] ^ 1;
  }

  v21 = [v12 objectForKey:@"MLSyncParamCanProcessCollectionsAsStandaloneCollections"];
  v40 = [v21 BOOLValue];

  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = [v14 currentRevision];
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = v80[3];
  if (([@"Proto" isEqualToString:v45] & 1) == 0)
  {
    v37 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "unsupported format type %{public}@", buf, 0xCu);
    }

    v27 = [NSError errorWithDomain:@"ATError" code:11 userInfo:0];
    v44[2](v44, v27, v80[3], v76[3]);
    goto LABEL_13;
  }

  if (v46 && v42)
  {
    v22 = [[MSVStreamReader alloc] initWithInputStream:v46 queue:self->_queue];
    v23 = objc_alloc_init(MSVFileBufferedPipe);
    v24 = [v23 fileHandleForWriting];
    v25 = [v23 fileHandleForReading];
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_546F4;
    block[3] = &unk_9E4B8;
    block[4] = self;
    v27 = v22;
    v71 = v27;
    v39 = v23;
    v72 = v39;
    v28 = v24;
    v73 = v28;
    v29 = v25;
    v74 = v29;
    dispatch_sync(queue, block);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3042000000;
    v84 = sub_5475C;
    v85 = sub_54768;
    objc_initWeak(v86, v27);
    v63 = _NSConcreteStackBlock;
    v64 = 3221225472;
    v65 = sub_54770;
    v66 = &unk_9E508;
    v67 = self;
    v68 = v28;
    v69 = buf;
    v38 = v68;
    [v27 readAllDataIntoFileHandle:? withCompletion:?];
    v30 = [ML3MutableDatabaseImport alloc];
    v31 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
    v32 = [v30 initWithLibraryPath:v31 trackData:0 playlistData:0];

    [v32 setFileHandle:v29];
    [v32 setIsServerImport:a4 == 1];
    [v32 setSyncLibraryID:v17];
    [v32 setSuspendable:0];
    [v32 setPairedDeviceCanProcessStandaloneCollections:v40];
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_548F0;
    v60[3] = &unk_9E530;
    v61 = v47;
    v62 = v42;
    v33 = objc_retainBlock(v60);
    v34 = +[MLMediaLibraryService sharedMediaLibraryService];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_5494C;
    v48[3] = &unk_9E580;
    v35 = v29;
    v49 = v35;
    v50 = self;
    v36 = v39;
    v51 = v36;
    v55 = buf;
    v56 = &v79;
    v57 = &v75;
    v58 = a4;
    v52 = v12;
    v59 = v41;
    v53 = v14;
    v54 = v44;
    [v34 performImport:v32 fromSource:7 withProgressBlock:v33 completionHandler:v48];

    _Block_object_dispose(buf, 8);
    objc_destroyWeak(v86);

LABEL_13:
    goto LABEL_17;
  }

  if (!a4)
  {
    [(MLSyncClient *)self _applyLibrarySettingsFromSyncParams:v12];
  }

  v44[2](v44, 0, v80[3], v76[3]);
LABEL_17:
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
}

- (void)getChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 afterRevision:(unint64_t)a5 upToRevision:(unint64_t)a6 withSyncParams:(id)a7 intoOutputStream:(id)a8 withStartHandler:(id)a9 withProgressHandler:(id)a10 withCompletionHandler:(id)a11
{
  v13 = a7;
  v84 = a8;
  v85 = a9;
  v87 = a10;
  v83 = a11;
  v148 = 0;
  v149 = &v148;
  v150 = 0x3032000000;
  v151 = sub_55DA4;
  v152 = sub_55DB4;
  v153 = 0;
  v75 = self;
  v14 = [(MLSyncClient *)self _library];
  v88 = v13;
  v15 = [v13 objectForKey:@"MLSyncParamCanProcessCollectionsAsStandaloneCollections"];
  v78 = [v15 BOOLValue];

  v144 = 0;
  v145 = &v144;
  v146 = 0x2020000000;
  v147 = 0;
  if (a4 == 1)
  {
    v16 = [v14 countOfChangedPersistentIdsAfterRevision:a5 revisionTrackingCode:+[ML3AlbumArtist revisionTrackingCode](ML3AlbumArtist maximumRevisionType:{"revisionTrackingCode"), 3}];
    v17 = [v14 countOfChangedPersistentIdsAfterRevision:a5 revisionTrackingCode:+[ML3Album revisionTrackingCode](ML3Album maximumRevisionType:{"revisionTrackingCode"), 1}];
    v143[0] = _NSConcreteStackBlock;
    v143[1] = 3221225472;
    v143[2] = sub_55DBC;
    v143[3] = &unk_9E3A0;
    v143[4] = &v144;
    [v14 databaseConnectionAllowingWrites:0 withBlock:v143];
    v18 = [v14 countOfChangedPersistentIdsAfterRevision:a5 revisionTrackingCode:+[ML3Container revisionTrackingCode](ML3Container maximumRevisionType:{"revisionTrackingCode"), 3}];
    v19 = [v14 countOfChangedPersistentIdsAfterRevision:a5 revisionTrackingCode:+[ML3Track revisionTrackingCode](ML3Track maximumRevisionType:{"revisionTrackingCode"), 3}];
  }

  else
  {
    v19 = [v14 countOfChangedPersistentIdsAfterRevision:a5 revisionTrackingCode:+[ML3Track revisionTrackingCode](ML3Track maximumRevisionType:{"revisionTrackingCode"), 1}];
    v17 = 0;
    v16 = 0;
    v18 = 0;
  }

  v20 = v145[3];
  if (a3 == 2)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v79 = v21;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x2020000000;
  v142[3] = 0;
  v81 = +[ICDeviceInfo currentDeviceInfo];
  v166[0] = @"Proto";
  v165[0] = @"FormatType";
  v165[1] = @"SyncItemCount";
  v89 = &v17[v16 + v18 + v19 + v20];
  v22 = [NSNumber numberWithUnsignedLongLong:?];
  v166[1] = v22;
  v166[2] = &__kCFBooleanTrue;
  v165[2] = @"SupportsNonLibraryContent";
  v165[3] = @"MLSyncParamCanProcessCollectionsAsStandaloneCollections";
  v23 = [NSNumber numberWithBool:1];
  v166[3] = v23;
  v165[4] = @"MLSyncParamCanProcessLibraryPins";
  v24 = [NSNumber numberWithBool:_os_feature_enabled_impl()];
  v166[4] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v166 forKeys:v165 count:5];
  v26 = [NSMutableDictionary dictionaryWithDictionary:v25];

  if (a4 == 1)
  {
    v27 = [v14 libraryUID];
    [v26 setObject:v27 forKey:@"LibraryUUID"];

    v28 = [v14 sagaAccountID];
    v29 = [v28 longLongValue];

    v30 = [v14 jaliscoAccountID];
    v31 = [v30 longLongValue];

    v32 = [v14 sagaOnDiskDatabaseRevision];
    v33 = [v14 jaliscoOnDiskDatabaseRevision];
    v34 = [v14 sagaDatabaseUserVersion];
    v35 = [v14 sagaClientFeaturesVersion];
    v76 = [v14 sagaMaximumLibraryPinCount];
    v36 = [v14 sagaCloudFavoriteSongAddToLibraryBehavior];
    v37 = [NSNumber numberWithUnsignedLongLong:v29];
    [v26 setObject:v37 forKey:@"MLCloudAccountID"];

    v38 = [NSNumber numberWithUnsignedLongLong:v31];
    [v26 setObject:v38 forKey:@"MLJaliscoAccountID"];

    v39 = [NSNumber numberWithInteger:v32];
    [v26 setObject:v39 forKey:@"MLCloudDatabaseRevision"];

    v40 = [NSNumber numberWithInteger:v33];
    [v26 setObject:v40 forKey:@"MLJaliscoDatabaseRevision"];

    v41 = [NSNumber numberWithInteger:v34];
    [v26 setObject:v41 forKey:@"MLSyncParamMLSagaDatabaseUserVersion"];

    if (v35)
    {
      v42 = v35;
    }

    else
    {
      v42 = &stru_9F828;
    }

    [v26 setObject:v42 forKey:@"MLSagaClientFeaturesVersion"];
    v43 = [NSNumber numberWithInteger:v76];
    [v26 setObject:v43 forKey:@"MLSyncParamMLSagaMaxAllowedLibraryPinCount"];

    v44 = [v14 storefrontIdentifier];
    if (v44)
    {
      [v26 setObject:v44 forKey:@"MLSyncParamStorefrontIdentifier"];
    }

    if (v36)
    {
      v45 = [NSNumber numberWithInteger:v36];
      [v26 setObject:v45 forKey:@"MLSyncParamMLSagaClientAddToLibraryWhenFavoriting"];
    }
  }

  else if ([v81 isWatch])
  {
    [v26 setObject:&off_A1398 forKey:@"SupportedMediaTypes"];
    if (_os_feature_enabled_impl())
    {
      [v26 setObject:&__kCFBooleanTrue forKey:@"MLSyncParamCanProcessLibraryPins"];
    }
  }

  v46 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219266;
    *&buf[4] = a5;
    *&buf[12] = 2048;
    *&buf[14] = a6;
    *&buf[22] = 1024;
    LODWORD(v161) = a3;
    WORD2(v161) = 2048;
    *(&v161 + 6) = v89;
    HIWORD(v161) = 2114;
    v162 = v26;
    v163 = 2114;
    v164 = v88;
    _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "gathering changes for sync. fromRevision=%lld, toRevision=%lld, syncType=%d, totalEntityCount=%lld, syncParams=%{public}@, requestSyncParams=%{public}@", buf, 0x3Au);
  }

  v85[2](v85, v26);
  v87[2](v87, 0, v89);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&v161 = sub_55DA4;
  *(&v161 + 1) = sub_55DB4;
  v162 = [[ML3ProtoSyncExportSession alloc] initWithLibrary:v14 outputStream:v84 syncType:v79];
  v47 = [*(*&buf[8] + 40) begin:v89];
  v48 = +[NSMutableSet set];
  v49 = +[NSMutableSet set];
  v80 = +[NSMutableSet set];
  v50 = [v88 objectForKey:@"SupportsNonLibraryContent"];
  v77 = [v50 BOOLValue];

  if (a5)
  {
    v51 = a3 == 2;
  }

  else
  {
    v51 = 1;
  }

  v52 = [v88 objectForKey:@"SupportedMediaTypes"];
  if (!a4)
  {
    v53 = objc_alloc_init(ICCloudClient);
    v54 = [v53 isAuthenticated];

    if (v54)
    {

      v52 = &__NSArray0__struct;
    }
  }

  if (v78)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v56 = v55;
    v138 = 0;
    v139 = &v138;
    v140 = 0x2020000000;
    v141 = 0;
    v57 = +[ML3AlbumArtist revisionTrackingCode];
    v127[0] = _NSConcreteStackBlock;
    v127[1] = 3221225472;
    v127[2] = sub_55E20;
    v127[3] = &unk_9E3C8;
    v136 = a4;
    v137 = v51;
    v130 = &v138;
    v131 = &v148;
    v132 = buf;
    v128 = v49;
    v133 = v142;
    v134 = v89;
    v58 = v87;
    v129 = v58;
    v135 = a6;
    [v14 enumerateAlbumArtistPersistentIDsAfterRevision:a5 revisionTrackingCode:v57 usingBlock:v127];
    v59 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v139[3];
      +[NSDate timeIntervalSinceReferenceDate];
      *v158 = 134218240;
      *&v158[4] = v60;
      *&v158[12] = 2048;
      *&v158[14] = v61 - v56;
      _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "finished exporting %lld album artists in %2f seconds", v158, 0x16u);
    }

    if (!v149[5])
    {
      +[NSDate timeIntervalSinceReferenceDate];
      v63 = v62;
      *v158 = 0;
      *&v158[8] = v158;
      *&v158[16] = 0x2020000000;
      v159 = 0;
      v64 = +[ML3Album revisionTrackingCode];
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_56300;
      v116[3] = &unk_9E3F0;
      v119 = v158;
      v125 = a4;
      v126 = v51;
      v117 = v80;
      v120 = &v148;
      v121 = buf;
      v122 = v142;
      v123 = v89;
      v118 = v58;
      v124 = a6;
      [v14 enumerateAlbumPersistentIDsAfterRevision:a5 revisionTrackingCode:v64 usingBlock:v116];
      v65 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *(*&v158[8] + 24);
        +[NSDate timeIntervalSinceReferenceDate];
        *v154 = 134218240;
        v155 = v66;
        v156 = 2048;
        v157 = v67 - v63;
        _os_log_impl(&dword_0, v65, OS_LOG_TYPE_DEFAULT, "finished exporting %lld album in %2f seconds", v154, 0x16u);
      }

      _Block_object_dispose(v158, 8);
    }

    _Block_object_dispose(&v138, 8);
  }

  if (!v149[5])
  {
    v68 = [v14 checkoutReaderConnection];
    v69 = +[ML3Track revisionTrackingCode];
    v105[0] = _NSConcreteStackBlock;
    v105[1] = 3221225472;
    v105[2] = sub_565A8;
    v105[3] = &unk_9E418;
    v112 = a6;
    v114 = a4;
    v115 = v51;
    v109 = &v148;
    v110 = buf;
    v106 = v48;
    v70 = v68;
    v107 = v70;
    v111 = v142;
    v113 = v89;
    v71 = v87;
    v108 = v71;
    [v14 enumeratePersistentIDsAfterRevision:a5 revisionTrackingCode:v69 maximumRevisionType:3 forMediaTypes:v52 inUsersLibrary:v77 ^ 1 usingBlock:v105];
    [v14 checkInDatabaseConnection:v70];

    if (!v149[5])
    {
      if (a4 == 1)
      {
        v72 = +[ML3Container revisionTrackingCode];
        v93[0] = _NSConcreteStackBlock;
        v93[1] = 3221225472;
        v93[2] = sub_56C00;
        v93[3] = &unk_9E440;
        v99 = a6;
        v93[4] = v75;
        v103 = v77;
        v104 = v78;
        v94 = v52;
        v96 = &v148;
        v102 = a3;
        v97 = buf;
        v98 = v142;
        v100 = a5;
        v101 = v89;
        v95 = v71;
        [v14 enumeratePersistentIDsAfterRevision:a5 revisionTrackingCode:v72 maximumRevisionType:3 usingBlock:v93];
      }

      if (_os_feature_enabled_impl() && a4 == 1 && !v149[5])
      {
        v92[0] = _NSConcreteStackBlock;
        v92[1] = 3221225472;
        v92[2] = sub_57004;
        v92[3] = &unk_9E490;
        v92[6] = buf;
        v92[5] = &v148;
        v92[4] = v75;
        [v14 databaseConnectionAllowingWrites:0 withBlock:v92];
      }
    }
  }

  v73 = [*(*&buf[8] + 40) end];
  if (v149[5])
  {
    v74 = v149[5];
  }

  else
  {
    v74 = v73;
  }

  objc_storeStrong(v149 + 5, v74);
  (v83)[2](v83, v149[5]);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v142, 8);
  _Block_object_dispose(&v144, 8);

  _Block_object_dispose(&v148, 8);
}

- (id)revisionVersionToken
{
  v2 = [(MLSyncClient *)self _library];
  v3 = [v2 libraryUID];

  return v3;
}

- (unint64_t)currentRevision
{
  v2 = [(MLSyncClient *)self _library];
  v3 = [v2 currentRevision];

  return v3;
}

- (id)_library
{
  library = self->_library;
  if (!library)
  {
    v4 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v5 = self->_library;
    self->_library = v4;

    library = self->_library;
  }

  return library;
}

- (void)_cancelSyncSessionsWithSessionIdentifier:(id)a3 groupingKey:(id)a4 waitToFinish:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v25 = a4;
  v9 = a6;
  v10 = [ATSession sessionsWithSessionTypeIdentifier:a3];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v23 = *v33;
    v24 = v10;
    do
    {
      v14 = 0;
      v26 = v12;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * v14);
        if (([v15 isCancelled] & 1) == 0 && (objc_msgSend(v15, "isFinished") & 1) == 0)
        {
          v27 = v14;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v16 = [v15 sessionTasksWithGroupingKey:v25];
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v29;
            do
            {
              for (i = 0; i != v18; i = i + 1)
              {
                if (*v29 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v28 + 1) + 8 * i);
                if (([v21 isCancelled] & 1) == 0 && (objc_msgSend(v21, "isFinished") & 1) == 0)
                {
                  v22 = _ATLogCategorySyncBundle();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v37 = v15;
                    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "canceling session %{public}@", buf, 0xCu);
                  }

                  [v15 setError:v9];
                  [v15 cancel];
                  if (v7)
                  {
                    [v15 waitToFinish];
                  }
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v18);
          }

          v13 = v23;
          v10 = v24;
          v12 = v26;
          v14 = v27;
        }

        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v12);
  }
}

- (void)_migrateSyncSettings
{
  v2 = +[ATDeviceSettings sharedInstance];
  v3 = [v2 versionForDataclass:@"Media"];
  v4 = _ATLogCategorySyncBundle();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 > 2)
  {
    if (v5)
    {
      *buf = 134218240;
      v23 = v3;
      v24 = 2048;
      v25 = 2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Media sync setting version (%lu) is newer than current version (%lu) - skipping migration", buf, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134218240;
      v23 = v3;
      v24 = 2048;
      v25 = 2;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Migrating media sync settings. version=%lu, latest version=%lu", buf, 0x16u);
    }

    if (v3 != &dword_0 + 2)
    {
      v6 = +[ICDeviceInfo currentDeviceInfo];
      v7 = [v6 isWatch];

      if (v7)
      {
        [v2 endpointInfo];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = v20 = 0u;
        v8 = [v16 allKeys];
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v17 + 1) + 8 * i);
              v14 = [v2 syncStateForLibrary:v13 dataClass:@"Media"];
              v15 = [v14 mutableCopy];

              if (v15)
              {
                [v15 setLastServerRevision:0];
                [v2 setSyncState:v15 forLibrary:v13 dataClass:@"Media"];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v10);
        }
      }
    }

    v4 = +[ATDeviceSettings sharedInstance];
    [v4 setVersion:2 forDataclass:@"Media"];
  }
}

- (id)_DSIDsForAssets
{
  v2 = [(MLSyncClient *)self _library];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_57B14;
  v5[3] = &unk_9E378;
  v3 = objc_alloc_init(NSMutableSet);
  v6 = v3;
  [v2 databaseConnectionAllowingWrites:0 withBlock:v5];

  return v3;
}

- (id)accountsForAssets
{
  v3 = [(MLSyncClient *)self _library];
  v18 = +[NSMutableSet set];
  v4 = [(MLSyncClient *)self _DSIDsForAssets];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 unsignedLongLongValue])
        {
          v10 = [v3 accountCacheDatabase];
          v11 = [v9 unsignedLongLongValue];
          v19 = 0;
          v20 = 0;
          v12 = [v10 getPropertiesForDSID:v11 appleID:&v20 altDSID:&v19];
          v13 = v20;
          v14 = v19;

          if (v12)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = objc_alloc_init(ATMutableAccountInfo);
            [v16 setDSID:v9];
            [v16 setAppleID:v13];
            [v16 setAltDSID:v14];
            [v18 addObject:v16];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v18;
}

- (id)appleIDsForAssets
{
  v3 = [(MLSyncClient *)self _library];
  v4 = [(MLSyncClient *)self _DSIDsForAssets];
  v5 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v3 accountCacheDatabase];
        v13 = [v12 appleIDForDSID:{objc_msgSend(v11, "longLongValue")}];

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)_postCurrentAssetNumber:(unint64_t)a3
{
  if ((byte_A76B4 & 1) != 0 || (v5 = notify_register_check("com.apple.mlsync.currentAssetNumber", &dword_A76B0), byte_A76B4 = v5 == 0, !v5))
  {
    notify_set_state(dword_A76B0, a3);
    obj = +[NSDate date];
    lastAssetNumberPostDate = self->_lastAssetNumberPostDate;
    p_lastAssetNumberPostDate = &self->_lastAssetNumberPostDate;
    if (!lastAssetNumberPostDate || ([obj timeIntervalSinceDate:?], v8 >= 1.0))
    {
      notify_post("com.apple.mlsync.currentAssetNumber");
      objc_storeStrong(p_lastAssetNumberPostDate, obj);
    }
  }
}

- (void)_postAssetTotal:(unint64_t)a3
{
  if ((byte_A76AC & 1) != 0 || (v4 = notify_register_check("com.apple.mlsync.assetTotal", &dword_A76A8), byte_A76AC = v4 == 0, !v4))
  {
    notify_set_state(dword_A76A8, a3);

    notify_post("com.apple.mlsync.assetTotal");
  }
}

- (id)disabledAssetTypes
{
  v2 = objc_opt_new();
  v3 = objc_alloc_init(ICCloudClient);
  v4 = [v3 isAuthenticated];

  if (v4)
  {
    [v2 addObjectsFromArray:&off_A1368];
  }

  v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.tv" allowPlaceholder:1 error:0];
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.videos" allowPlaceholder:1 error:0];
  v7 = [v5 applicationState];
  if ([v7 isValid])
  {
  }

  else
  {
    v8 = [v6 applicationState];
    v9 = [v8 isValid];

    if ((v9 & 1) == 0)
    {
      [v2 addObjectsFromArray:&off_A1380];
    }
  }

  return v2;
}

- (void)clearSyncData
{
  v2 = [(MLSyncClient *)self _library];
  [v2 deleteDatabaseProperty:@"MLSyncClientSyncAnchor"];
}

- (BOOL)_processArtworkIdentifier:(id)a3 artworkToken:(id)a4 artworkType:(int64_t)a5 mediaType:(unsigned int)a6 sourceType:(int64_t)a7
{
  v8 = *&a6;
  v12 = a3;
  v13 = a4;
  v14 = +[ATAirlock sharedInstance];
  v15 = [v14 artworkPathForDataclass:@"Media" artworkIdentifier:v12];

  if (v15)
  {
    if ([v13 length])
    {
      v16 = [(MLSyncClient *)self _library];
      v17 = [ML3MusicLibrary artworkRelativePathFromToken:v13];
      if ([v16 hasOriginalArtworkForRelativePath:v17])
      {
        v18 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v13;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Artwork already exists on disk, checking database consistency (artworkToken: %{public}@)", buf, 0xCu);
        }

        v19 = [v16 importExistingOriginalArtworkWithArtworkToken:v13 artworkType:a5 sourceType:a7 mediaType:v8];
        goto LABEL_34;
      }

      v21 = +[NSFileManager defaultManager];
      v40 = 0;
      v22 = [v21 attributesOfItemAtPath:v15 error:&v40];
      v39 = v40;

      if (!v22)
      {
        v23 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v42 = v15;
          v43 = 2114;
          v25 = v39;
          v44 = v39;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "Could not read file attributes for %{public}@: %{public}@", buf, 0x16u);
          v19 = 0;
LABEL_33:

LABEL_34:
          goto LABEL_35;
        }

LABEL_19:
        v19 = 0;
        v25 = v39;
        goto LABEL_33;
      }

      if ([v22 fileSize] > 0xA00000)
      {
        v23 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v22 fileSize];
          *buf = 134217984;
          v42 = v24;
          _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Artwork file too big: %llu bytes. Discarding.", buf, 0xCu);
        }

        goto LABEL_19;
      }

      v23 = [NSURL fileURLWithPath:v15 isDirectory:0];
      v26 = [v16 importOriginalArtworkFromFileURL:v23 withArtworkToken:v13 artworkType:a5 sourceType:a7 mediaType:v8];
      v27 = _ATLogCategorySyncBundle();
      v28 = v27;
      if (v26)
      {
        v25 = v39;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v42 = v13;
          v29 = "Inserted new artwork for token: %{public}@";
          v30 = v28;
          v31 = OS_LOG_TYPE_DEFAULT;
          v32 = 12;
LABEL_30:
          _os_log_impl(&dword_0, v30, v31, v29, buf, v32);
        }
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v42 = v13;
          _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "Failed to insert new artwork for token: %{public}@", buf, 0xCu);
        }

        v33 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v34 = +[NSFileManager defaultManager];
          v35 = [v34 subpathsAtPath:@"/var/mobile/Media/Airlock/Media/"];
          *buf = 138543362;
          v42 = v35;
          _os_log_impl(&dword_0, v33, OS_LOG_TYPE_ERROR, "Airlock contents %{public}@", buf, 0xCu);
        }

        v25 = v39;
        if (unlink([v15 fileSystemRepresentation]) != -1)
        {
          goto LABEL_32;
        }

        v28 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v36 = __error();
          v37 = strerror(*v36);
          *buf = 138543618;
          v42 = v15;
          v43 = 2080;
          v44 = v37;
          v29 = "Could not remove artwork file from %{public}@: %s";
          v30 = v28;
          v31 = OS_LOG_TYPE_ERROR;
          v32 = 22;
          goto LABEL_30;
        }
      }

LABEL_32:
      v19 = 1;
      goto LABEL_33;
    }

    v16 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v12;
      v20 = "Malformed artwork token on artwork asset with identifier: %{public}@";
      goto LABEL_11;
    }
  }

  else
  {
    v16 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v42 = v12;
      v20 = "Artwork (%{public}@) for asset had no path";
LABEL_11:
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    }
  }

  v19 = 0;
LABEL_35:

  return v19;
}

- (BOOL)_evaluateUploadTrackDatabaseChangeStep:(id)a3
{
  v4 = a3;
  v5 = [(MLSyncClient *)self _library];
  v6 = [v4 objectForKey:@"pid"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = [v6 longLongValue];
    v9 = [ML3Track newWithPersistentID:v8 inLibrary:v5];
    if (([v9 existsInLibrary]& 1) != 0)
    {
      v10 = v9;
LABEL_7:
      v29 = 0;
      v30 = ML3TrackPropertyFilePath;
      [v10 getValues:&v29 forProperties:&v30 count:1];
      if (v8)
      {
        v12 = &v33 + 1;
        quot = v8;
        do
        {
          v14 = lldiv(quot, 10);
          quot = v14.quot;
          if (v14.rem >= 0)
          {
            LOBYTE(v15) = v14.rem;
          }

          else
          {
            v15 = -v14.rem;
          }

          *(v12 - 2) = v15 + 48;
          v16 = (v12 - 2);
          --v12;
        }

        while (v14.quot);
        if (v8 < 0)
        {
          *(v12 - 2) = 45;
          v16 = (v12 - 2);
        }

        v17 = CFStringCreateWithBytes(0, v16, &v33 - v16, 0x8000100u, 0);
      }

      else
      {
        v17 = @"0";
      }

      v18 = v29;
      v19 = v18;
      if (v18 && [v18 length]> 1)
      {
        v28 = v17;
        v20 = [ATAsset uploadAssetWithIdentifier:v17 dataclass:@"Media" sourcePath:v19 prettyName:0];
        v22 = [v4 objectForKey:@"delete_after_upload"];
        v23 = [v22 BOOLValue];

        if (v23)
        {
          v24 = [NSNumber numberWithBool:1];
          v25 = [NSDictionary dictionaryWithObject:v24 forKey:@"delete_after_upload"];
          [v20 setVariantOptions:v25];
        }

        v26 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v32 = v20;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Enqueuing asset upload request: %{public}@", buf, 0xCu);
        }

        v17 = v28;
        [(NSMutableDictionary *)self->_pendingUploads setValue:v20 forKey:v28];
      }

      else
      {
        v20 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v32 = v19;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "Invalid upload source path %{public}@", buf, 0xCu);
        }
      }

      goto LABEL_30;
    }

    v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySyncID equalToInt64:v8];
    v10 = [ML3Track anyInLibrary:v5 predicate:v11 options:3];

    if (([v10 existsInLibrary]& 1) != 0)
    {
      goto LABEL_7;
    }

    v21 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Got upload_track for non-existant track: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v32 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "Got upload_track with invalid pid: %{public}@", buf, 0xCu);
    }
  }

LABEL_30:

  return isKindOfClass & 1;
}

- (id)_syncPlistFiles
{
  v2 = +[NSMutableArray array];
  v3 = +[NSFileManager defaultManager];
  v21 = 0;
  v4 = [v3 contentsOfDirectoryAtPath:@"/var/mobile/Media/iTunes_Control/Sync/Media/" error:&v21];
  v5 = v21;
  if (v4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v14 = v4;
      v15 = v5;
      v16 = v3;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          v12 = [@"/var/mobile/Media/iTunes_Control/Sync/Media/" stringByAppendingPathComponent:v11];
          if ([v11 hasPrefix:@"Sync_"] && objc_msgSend(v11, "hasSuffix:", @".plist"))
          {
            [v2 addObject:v12];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
      }

      while (v8);
      v5 = v15;
      v3 = v16;
      v4 = v14;
    }
  }

  else
  {
    v6 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = @"/var/mobile/Media/iTunes_Control/Sync/Media/";
      v24 = 2114;
      v25 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Could not read %{public}@: %{public}@", buf, 0x16u);
    }
  }

  [v2 sortUsingSelector:"compare:"];

  return v2;
}

- (void)initiateAssetDownloadsWithCompletion:(id)a3
{
  keepLocalEventHandlerWrapper = self->_keepLocalEventHandlerWrapper;
  v4 = a3;
  v5 = [(MLSyncClientKeepLocalEventHandlerWrapper *)keepLocalEventHandlerWrapper keepLocalEventHandler];
  [v5 startKeepLocalSessionInBackground:0 enqueueAssets:1 withCompletion:v4];
}

- (void)metadataUpdate:(id)a3 forAsset:(id)a4 withNewAnchor:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = dispatch_semaphore_create(0);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_58F80;
  block[3] = &unk_9ED18;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(utilityQueue, block);
  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

- (id)installedAssetMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [(MLSyncClient *)self _library];
  v5 = objc_autoreleasePoolPush();
  v25[0] = ML3TrackPropertyMediaType;
  v25[1] = ML3TrackPropertyTotalSize;
  v25[2] = ML3TrackPropertyIsTemporaryCloudDownload;
  v25[3] = ML3TrackPropertyChosenByAutoFill;
  v25[4] = ML3TrackPropertyIsMusicShow;
  v6 = [NSArray arrayWithObjects:v25 count:5];
  v7 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyBaseLocationID value:&off_A0DD8 comparison:2];
  v8 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v4 predicate:v7 orderingTerms:0];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_59518;
  v23[3] = &unk_9EC80;
  v9 = v3;
  v24 = v9;
  [v8 enumeratePersistentIDsAndProperties:v6 usingBlock:v23];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_59700;
  v19[3] = &unk_9E328;
  v10 = v4;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  [v10 enumeratePurgeableAlbumTracksForUrgency:2 usingBlock:v19];
  v13 = [v12 objectForKey:@"Music"];
  if (!v13)
  {
    v13 = [NSMutableDictionary dictionaryWithCapacity:2];
    [v12 setObject:v13 forKey:@"Music"];
  }

  v14 = [v13 objectForKey:@"_Count"];
  v15 = [v14 unsignedLongLongValue];

  v16 = [NSNumber numberWithUnsignedLongLong:v15];
  [v13 setObject:v16 forKey:@"_Count"];

  for (i = 4; i != -1; --i)
  {
  }

  objc_autoreleasePoolPop(v5);

  return v12;
}

- (id)enumeratePathsForBackupType:(int)a3 usingBlock:(id)a4
{
  v6 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v7 = [(MLSyncClient *)self _library];
  v8 = +[NSFileManager defaultManager];
  v9 = objc_autoreleasePoolPush();
  v10 = dispatch_semaphore_create(0);
  v11 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_59E0C;
  block[3] = &unk_9E288;
  v12 = v6;
  v41 = v12;
  v42 = &v43;
  v40 = v10;
  v13 = v10;
  dispatch_async(v11, block);

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  objc_autoreleasePoolPop(v9);
  if (a3 == 3 && (v44[3] & 1) != 0)
  {
    v14 = [v7 databasePath];
    v15 = [v8 fileExistsAtPath:v14];
    v16 = v44;
    if (v15)
    {
      (*(v12 + 2))(v12, v14, 0, v44 + 3);
      v16 = v44;
      if (*(v44 + 24) == 1)
      {
        v17 = [v14 stringByAppendingString:@"-wal"];
        if ([v8 fileExistsAtPath:v17])
        {
          (*(v12 + 2))(v12, v17, 0, v44 + 3);
        }

        v16 = v44;
        if (v44[3])
        {
          v18 = [v14 stringByAppendingString:@"-shm"];
          if ([v8 fileExistsAtPath:v18])
          {
            (*(v12 + 2))(v12, v18, 0, v44 + 3);
          }

          v16 = v44;
        }
      }
    }

    if (*(v16 + 24) == 1)
    {
      v19 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset equalToInteger:1];
      v48[0] = v19;
      v20 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreProtectionType equalToInt64:0];
      v48[1] = v20;
      v21 = [NSArray arrayWithObjects:v48 count:2];
      v22 = [ML3AllCompoundPredicate predicateMatchingPredicates:v21];

      v23 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v7 predicate:v22 orderingTerms:0];
      v47 = ML3TrackPropertyIsStoreRedownloadable;
      v24 = [NSArray arrayWithObjects:&v47 count:1];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_59EC4;
      v34[3] = &unk_9E2B0;
      v25 = v7;
      v35 = v25;
      v26 = v8;
      v36 = v26;
      v27 = v12;
      v37 = v27;
      v38 = &v43;
      [v23 enumeratePersistentIDsAndProperties:v24 usingBlock:v34];

      if (v44[3])
      {
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_59FB0;
        v29[3] = &unk_9E300;
        v30 = v25;
        v31 = v26;
        v32 = v27;
        v33 = &v43;
        [v30 databaseConnectionAllowingWrites:0 withBlock:v29];
      }
    }
  }

  _Block_object_dispose(&v43, 8);
  return 0;
}

- (void)pathsToBackup:(id *)a3 pathsNotToBackup:(id *)a4
{
  v5 = [NSMutableArray array:a3];
  v6 = objc_autoreleasePoolPush();
  v7 = dispatch_semaphore_create(0);
  v8 = dispatch_get_global_queue(0, 0);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_5A798;
  v12[3] = &unk_9EC30;
  v9 = v5;
  v13 = v9;
  v14 = v7;
  v10 = v7;
  dispatch_async(v8, v12);

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  objc_autoreleasePoolPop(v6);
  v11 = v9;
  *a3 = v9;
}

- (void)assetInstallFailed:(id)a3 withError:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MLSyncClient *)self _library];
  if (sub_6EC58(v6))
  {
    self->_hadUnsucessfulAssetTransfer = 1;
  }

  sub_6EE38(v9, v8, v6, @"install");

  objc_autoreleasePoolPop(v7);
}

- (void)assetTransfer:(id)a3 succeeded:(BOOL)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [(MLSyncClient *)self _library];
  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v37 = 138543618;
    *&v37[4] = v8;
    *&v37[12] = 2114;
    *&v37[14] = v9;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "asset transfer completed for asset %{public}@. err=%{public}@", v37, 0x16u);
  }

  v13 = [v8 variantOptions];
  v14 = [v13 objectForKey:@"AssetParts"];
  v15 = [v14 unsignedIntegerValue];

  if ([v8 isDownload])
  {
    if (v15)
    {
      v16 = [v8 assetType];
      v17 = [v16 isEqualToString:@"Music"];

      if (v17)
      {
        ++self->_currentAssetNumber;
        [(MLSyncClient *)self _postCurrentAssetNumber:?];
      }
    }
  }

  if (a4)
  {
    if ([v8 isDownload])
    {
      v18 = v8;
      v19 = v11;
      v20 = 1;
LABEL_13:
      sub_6FC1C(v18, v19, v20);
      goto LABEL_25;
    }

    v22 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 138543362;
      *&v37[4] = v8;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Asset upload complete: %{public}@", v37, 0xCu);
    }

    v23 = [v8 identifier];
    v24 = [v8 variantOptions];
    v25 = [v24 objectForKey:@"delete_after_upload"];
    v26 = [v25 BOOLValue];

    if (!v26)
    {
LABEL_24:
      [(NSMutableDictionary *)self->_pendingUploads removeObjectForKey:v23, *v37, *&v37[16]];

      goto LABEL_25;
    }

    v27 = [v23 longLongValue];
    v28 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySyncID equalToInt64:v27];
    v29 = [ML3Track anyInLibrary:v11 predicate:v28 options:3];

    v30 = [v29 deleteFromLibrary];
    v31 = _ATLogCategorySyncBundle();
    v32 = v31;
    if (v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *v37 = 138543362;
        *&v37[4] = v29;
        v33 = "Deleted track after upload by host request: %{public}@";
        v34 = v32;
        v35 = OS_LOG_TYPE_DEFAULT;
        v36 = 12;
LABEL_22:
        _os_log_impl(&dword_0, v34, v35, v33, v37, v36);
      }
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *v37 = 138543618;
      *&v37[4] = v8;
      *&v37[12] = 2114;
      *&v37[14] = v29;
      v33 = "Could not deleted track after upload by host request: %{public}@, %{public}@";
      v34 = v32;
      v35 = OS_LOG_TYPE_ERROR;
      v36 = 22;
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  self->_hadUnsucessfulAssetTransfer = 1;
  if (([v8 isDownload] & 1) != 0 || (objc_msgSend(v8, "path"), v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
  {
    v18 = v8;
    v19 = v11;
    v20 = 0;
    goto LABEL_13;
  }

LABEL_25:

  objc_autoreleasePoolPop(v10);
}

- (void)cancelSyncOperations
{
  v2 = dispatch_semaphore_create(0);
  v3 = +[MLMediaLibraryService sharedMediaLibraryService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5AD9C;
  v5[3] = &unk_9E210;
  v6 = v2;
  v4 = v2;
  [v3 cancelImportOperation:5 completionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)assetTransferEndedWithSuccess:(BOOL)a3
{
  v3 = a3;
  v33 = [(MLSyncClient *)self _library];
  context = objc_autoreleasePoolPush();
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v3;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Media asset transfer completed. success=%d", &buf, 8u);
  }

  self->_currentAssetNumber = 1;
  [(MLSyncClient *)self _postAssetTotal:0];
  [v33 setSyncGenerationID:ML3CreateIntegerUUID()];
  [v33 removeTombstonesForDeletedItems];
  if ([(NSArray *)self->_autoCreatedSmartPlaylistsPIDs count])
  {
    v5 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      autoCreatedSmartPlaylistsPIDs = self->_autoCreatedSmartPlaylistsPIDs;
      LODWORD(buf) = 138543362;
      *(&buf + 4) = autoCreatedSmartPlaylistsPIDs;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Removing canned smart playlists: %{public}@", &buf, 0xCu);
    }

    [ML3Container deleteAutoCreatedBuiltInSmartPlaylistsPIDs:self->_autoCreatedSmartPlaylistsPIDs inLibrary:v33];
    v7 = self->_autoCreatedSmartPlaylistsPIDs;
    self->_autoCreatedSmartPlaylistsPIDs = 0;
  }

  else
  {
    v7 = [NSNumber numberWithBool:1];
    [v33 setValue:v7 forDatabaseProperty:@"autoCreatedSmartPlaylistsDeleted"];
  }

  v8 = [NSNumber numberWithInt:1];
  [v33 setValue:v8 forDatabaseProperty:@"createdBuiltInSmartPlaylists"];

  if ([(NSMutableSet *)self->_modifiedPlaylistsPIDs count])
  {
    v9 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(NSMutableSet *)self->_modifiedPlaylistsPIDs count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Evaluating %lu playlists for Up-pinning...", &buf, 0xCu);
    }

    v11 = +[NSMutableSet set];
    v12 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset value:&off_A0DF0 comparison:1];
    v27 = [ML3Track unrestrictedAllItemsQueryWithlibrary:v33 predicate:v12 orderingTerms:&__NSArray0__struct];

    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_5B424;
    v43[3] = &unk_9EEC0;
    v30 = v11;
    v44 = v30;
    [v27 enumeratePersistentIDsUsingBlock:v43];
    if ([v30 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = self->_modifiedPlaylistsPIDs;
      v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v34)
      {
        v32 = *v40;
        v35 = ML3ContainerPropertyDistinguishedKind;
        v13 = ML3ContainerPropertySmartCriteria;
        v14 = ML3ContainerPropertyKeepLocal;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v40 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v39 + 1) + 8 * i);
            v17 = +[ML3Container newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [v16 longLongValue], v33);
            v50[0] = v35;
            v50[1] = v13;
            v50[2] = v14;
            v18 = [NSArray arrayWithObjects:v50 count:3];
            v19 = [v17 getValuesForProperties:v18];

            v20 = [v19 objectForKeyedSubscript:v35];
            v21 = [v20 intValue];

            v22 = [v19 objectForKeyedSubscript:v13];

            v23 = [v19 objectForKeyedSubscript:v14];
            v24 = [v23 intValue];

            if (!v21 && !v22 && v24 - 1 >= 0xFFFFFFFE)
            {
              *&buf = 0;
              *(&buf + 1) = &buf;
              v48 = 0x2020000000;
              v49 = 1;
              v25 = [ML3Track containerQueryWithContainer:v17];
              v36[0] = _NSConcreteStackBlock;
              v36[1] = 3221225472;
              v36[2] = sub_5B484;
              v36[3] = &unk_9E1E8;
              v37 = v30;
              p_buf = &buf;
              [v25 enumeratePersistentIDsUsingBlock:v36];
              if (*(*(&buf + 1) + 24) == 1)
              {
                v26 = _ATLogCategorySyncBundle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  *v45 = 138543362;
                  v46 = v16;
                  _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Up-pinning playlist with persistentID: %{public}@", v45, 0xCu);
                }

                [v17 setValue:&off_A0DF0 forProperty:v14];
              }

              _Block_object_dispose(&buf, 8);
            }
          }

          v34 = [(NSMutableSet *)obj countByEnumeratingWithState:&v39 objects:v51 count:16];
        }

        while (v34);
      }
    }

    [(NSMutableSet *)self->_modifiedPlaylistsPIDs removeAllObjects];
  }

  notify_post([ML3MusicLibraryBackgroundTasksShouldStopSuppressingChangesNotification UTF8String]);
  objc_autoreleasePoolPop(context);
}

- (id)outstandingAssetTransfersWithDownloadManager:(id)a3
{
  v54 = a3;
  v70 = self;
  v68 = [(MLSyncClient *)self _library];
  context = objc_autoreleasePoolPush();
  self->_hadUnsucessfulAssetTransfer = 0;
  v4 = [ML3OrderingTerm orderingTermWithProperty:ML3TrackPropertyAlbumArtistOrder];
  v127[0] = v4;
  v5 = [ML3OrderingTerm orderingTermWithProperty:ML3TrackPropertyAlbumOrder];
  v127[1] = v5;
  v6 = [ML3OrderingTerm orderingTermWithProperty:ML3TrackPropertyDiscNumber];
  v127[2] = v6;
  v7 = [ML3OrderingTerm orderingTermWithProperty:ML3TrackPropertyTrackNumber];
  v127[3] = v7;
  v56 = [NSArray arrayWithObjects:v127 count:4];

  v8 = ML3TrackPropertyStoreSagaID;
  v9 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreSagaID equalToInt64:0];
  v126[0] = v9;
  v10 = ML3TrackPropertySyncID;
  v11 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertySyncID value:&off_A0DD8 comparison:2];
  v126[1] = v11;
  v12 = [NSArray arrayWithObjects:v126 count:2];
  v53 = [ML3AllCompoundPredicate predicateMatchingPredicates:v12];

  v13 = ML3TrackPropertyNeedsRestore;
  v52 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyNeedsRestore equalToInt64:1];
  v125[0] = v53;
  v125[1] = v52;
  v14 = [NSArray arrayWithObjects:v125 count:2];
  v67 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v14];

  v50 = [ML3Track unrestrictedQueryWithLibrary:v68 predicate:v67 orderingTerms:v56];
  v15 = [v68 valueForDatabaseProperty:@"MLJaliscoHasCloudGeniusData"];
  v48 = [v15 BOOLValue];

  *&v101 = ML3TrackPropertyBaseLocationID;
  *(&v101 + 1) = ML3TrackPropertyDownloadIdentifier;
  v102 = ML3TrackPropertyMediaType;
  v103 = ML3TrackPropertyGlobalID;
  v104 = ML3TrackPropertyGeniusChecksum;
  v105 = ML3TrackPropertyPendingGeniusChecksum;
  v106 = ML3TrackPropertyPodcastExternalGUID;
  v107 = ML3TrackPropertyStoreAccountID;
  v108 = ML3TrackPropertyStoreItemID;
  v109 = ML3TrackPropertyStoreFlavor;
  v110 = ML3TrackPropertyStoreMatchedStatus;
  v111 = ML3TrackPropertyStoreRedownloadedStatus;
  v112 = v8;
  v113 = v10;
  v114 = v13;
  v115 = ML3TrackPropertyIsRental;
  v116 = ML3TrackPropertyTitle;
  v117 = ML3TrackPropertyPurchaseHistoryRedownloadParameters;
  v118 = ML3TrackPropertyMatchRedownloadParameters;
  v119 = ML3TrackPropertyLyricsChecksum;
  v120 = ML3TrackPropertyLyricsPendingChecksum;
  v121 = ML3TrackPropertyStorePlaybackEndpointType;
  v122 = ML3TrackPropertySubscriptionStoreItemID;
  v123 = ML3TrackPropertyTotalSize;
  v124 = ML3TrackPropertyTotalTime;
  v46 = [(MLSyncClient *)v70 _existingOutstandingAssetTransfersWithDownloadManager:v54];
  v45 = +[NSMutableSet set];
  v44 = +[NSMutableSet set];
  v66 = [NSArray arrayWithObjects:&v101 count:25];
  v64 = +[NSMutableArray array];
  v16 = +[NSMutableArray array];
  v17 = +[NSMutableArray array];
  v18 = +[NSMutableArray array];
  v19 = +[NSMutableArray array];
  v20 = +[NSMutableArray array];
  v21 = +[NSMutableArray array];
  v22 = +[NSMutableArray array];
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v23 = [ML3OrderingTerm orderingTermWithProperty:ML3TrackPropertyDatePlayed direction:2];
  v100 = v23;
  v55 = [NSArray arrayWithObjects:&v100 count:1];

  v24 = [ML3Track unrestrictedQueryWithLibrary:v68 predicate:v67 orderingTerms:v55];
  [v24 setLimit:20];
  v51 = v24;
  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_5C15C;
  v90[3] = &unk_9EC80;
  v25 = objc_alloc_init(NSMutableSet);
  v91 = v25;
  [v51 enumeratePersistentIDsAndProperties:v66 usingBlock:v90];
  v26 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v25 count];
    *buf = 134217984;
    v99 = v27;
    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "Will mark tracks for priority download: %lu", buf, 0xCu);
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_5C298;
  v74[3] = &unk_9E1C0;
  v74[4] = v70;
  v62 = v16;
  v75 = v62;
  v65 = v64;
  v76 = v65;
  v61 = v17;
  v77 = v61;
  v63 = v19;
  v78 = v63;
  v60 = v18;
  v79 = v60;
  v59 = v20;
  v80 = v59;
  v58 = v21;
  v81 = v58;
  v57 = v22;
  v82 = v57;
  v28 = v68;
  v83 = v28;
  v42 = v46;
  v84 = v42;
  v47 = v45;
  v85 = v47;
  v89 = v48;
  v49 = v44;
  v86 = v49;
  v69 = v25;
  v87 = v69;
  v88 = &v92;
  [v50 enumeratePersistentIDsAndProperties:v66 usingBlock:v74];
  v29 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", -[NSMutableDictionary count](v70->_pendingUploads, "count") + [v65 count] + objc_msgSend(v61, "count") + objc_msgSend(v62, "count") + objc_msgSend(v60, "count") + objc_msgSend(v63, "count") + objc_msgSend(v59, "count") + objc_msgSend(v57, "count") + objc_msgSend(v58, "count"));
  v30 = [(NSMutableDictionary *)v70->_pendingUploads allValues];
  [v29 addObjectsFromArray:v30];

  [v29 addObjectsFromArray:v65];
  [v29 addObjectsFromArray:v63];
  [v29 addObjectsFromArray:v62];
  [v29 addObjectsFromArray:v61];
  [v29 addObjectsFromArray:v60];
  [v29 addObjectsFromArray:v59];
  [v29 addObjectsFromArray:v58];
  [v29 addObjectsFromArray:v57];
  v31 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyCloudGlobalID equalToValue:&stru_9F828];
  v97[0] = v31;
  v32 = [ML3ComparisonPredicate predicateWithProperty:ML3ContainerPropertyStoreCloudID equalToInt64:0];
  v97[1] = v32;
  v33 = [NSArray arrayWithObjects:v97 count:2];
  v34 = [ML3AllCompoundPredicate predicateMatchingPredicates:v33];

  v35 = [ML3Container queryWithLibrary:v28 predicate:v34 orderingTerms:0];
  v96[0] = ML3ContainerPropertyName;
  v96[1] = ML3ContainerPropertySyncId;
  v36 = [NSArray arrayWithObjects:v96 count:2];
  v71[0] = _NSConcreteStackBlock;
  v71[1] = 3221225472;
  v71[2] = sub_5CB9C;
  v71[3] = &unk_9EC58;
  v37 = v28;
  v72 = v37;
  v38 = v29;
  v73 = v38;
  [v35 enumeratePersistentIDsAndProperties:v36 usingBlock:v71];

  [(MLSyncClient *)v70 _postAssetTotal:v93[3]];
  v70->_currentAssetNumber = 1;
  [(MLSyncClient *)v70 _postCurrentAssetNumber:1];

  _Block_object_dispose(&v92, 8);
  for (i = 192; i != -8; i -= 8)
  {
  }

  objc_autoreleasePoolPop(context);
  v40 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v101) = 138543362;
    *(&v101 + 4) = v38;
    _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "outstandingAssetTransfers = %{public}@", &v101, 0xCu);
  }

  return v38;
}

- (id)_existingOutstandingAssetTransfersWithDownloadManager:(id)a3
{
  v17 = a3;
  v3 = +[NSMutableDictionary dictionary];
  v4 = v17;
  if (v17)
  {
    [v17 downloads];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v5 = v19 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v31 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          v27 = 0;
          v28 = &v27;
          v29 = 0x2020000000;
          v10 = qword_A76D8;
          v30 = qword_A76D8;
          if (!qword_A76D8)
          {
            v22 = _NSConcreteStackBlock;
            v23 = 3221225472;
            v24 = sub_5D098;
            v25 = &unk_9EE58;
            v26 = &v27;
            v11 = sub_5A4BC();
            v12 = dlsym(v11, "SSDownloadPropertyLibraryItemIdentifier");
            *(v26[1] + 24) = v12;
            qword_A76D8 = *(v26[1] + 24);
            v10 = v28[3];
          }

          _Block_object_dispose(&v27, 8);
          if (!v10)
          {
            v15 = +[NSAssertionHandler currentHandler];
            v16 = [NSString stringWithUTF8String:"NSString *getSSDownloadPropertyLibraryItemIdentifier(void)"];
            [v15 handleFailureInFunction:v16 file:@"MLSyncClient.m" lineNumber:145 description:{@"%s", dlerror()}];

            __break(1u);
          }

          v13 = [v9 valueForProperty:*v10];
          if ([v13 length])
          {
            [v3 setValue:v9 forKey:v13];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v31 count:16];
      }

      while (v6);
    }

    v4 = v17;
  }

  return v3;
}

- (void)_clearDatabasePropertiesForRestore:(int)a3
{
  v4 = [(MLSyncClient *)self _library];
  v5 = v4;
  if ((a3 & 0xFFFFFFFD) == 1)
  {
    v6 = [v4 valueForDatabaseProperty:@"MLCloudDatabaseRevision"];
    v7 = [v6 intValue];
    if (v7)
    {
      v8 = v7;
      v9 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109376;
        LODWORD(v14[0]) = a3;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Setting value to skip genius upload flow for restore type=%d, currentDatabaseVersion=%d", &v13, 0xEu);
      }

      [v5 setValue:&__kCFBooleanTrue forDatabaseProperty:@"MLSagaInitiateClientResetSync"];
    }
  }

  [v5 deleteDatabaseProperty:@"MLCloudDatabaseRevision"];
  [v5 deleteDatabaseProperty:@"MLJaliscoDatabaseRevision"];
  [v5 deleteDatabaseProperty:@"MLSyncClientLastSyncedRevision"];
  [v5 deleteDatabaseProperty:@"MLSyncClientSyncAnchor"];
  [v5 deleteDatabaseProperty:@"MLArtistHeroImageImportDate"];
  [v5 deleteDatabaseProperty:@"MLArtworkShouldConvertToASTC"];
  [v5 deleteDatabaseProperty:@"MLLastUploadedExplicitContentAllowedBoolean"];
  v10 = +[NSUUID UUID];
  v11 = [v10 UUIDString];

  [v5 setValue:v11 forDatabaseProperty:@"MLRestoreToken"];
  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14[0] = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Set MLRestoreToken to unlock post-restore downloads in Podcasts app, token %{public}@", &v13, 0xCu);
  }
}

- (void)_rebuildStoreManifests
{
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5D3BC;
  block[3] = &unk_9F248;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)_setPreExistingStoreAccountIds
{
  v2 = +[NSMutableArray array];
  v3 = +[ICUserIdentityStore defaultIdentityStore];
  v27 = 0;
  v4 = [v3 userIdentitiesForAllStoreAccountsWithError:&v27];
  v5 = v27;

  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 count];
    *buf = 67109378;
    *v30 = v7;
    *&v30[4] = 2114;
    *&v30[6] = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Found %d store accounts with error=%{public}@", buf, 0x12u);
  }

  v21 = v5;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = +[ICUserIdentityStore defaultIdentityStore];
        v22 = 0;
        v15 = [v14 DSIDForUserIdentity:v13 outError:&v22];
        v16 = v22;

        if (v15)
        {
          [v2 addObject:v15];
          v17 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v15 longLongValue];
            *buf = 134217984;
            *v30 = v18;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "Adding DSID=%lld to all known store identifiers", buf, 0xCu);
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  if ([v2 count])
  {
    v19 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v30 = v2;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "Archiving all known store identifiers=%{public}@", buf, 0xCu);
    }

    v20 = +[ATDeviceSettings sharedInstance];
    [v20 setPreExistingStoreIdentifiers:v2];
  }
}

- (void)_setAutoEnableCloudLibrary
{
  v2 = [(MLSyncClient *)self _library];
  v3 = +[ATDeviceSettings sharedInstance];
  v4 = [v3 getCurrentInstallDisposition];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"WasDeviceUpgraded"];
    v7 = [v6 BOOLValue];

    v8 = [v5 objectForKey:@"WasDeviceRestoredFromBackup"];
    v9 = [v8 BOOLValue];

    v10 = [v5 objectForKey:@"WasDeviceRestoredFromCloudBackup"];
    v11 = [v10 BOOLValue];

    [v2 deleteDatabaseProperty:@"MLEnableICMLConfig"];
    if ((v7 & 1) != 0 || (v9 & v11) != 0)
    {
      v12 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Device was upgraded OR restored from cloud backup", buf, 2u);
      }

      v13 = [v2 valueForDatabaseProperty:@"MLCloudAccountID"];
      v14 = v13;
      if (v13 && [v13 intValue])
      {
        v15 = [NSDictionary dictionaryWithObjectsAndKeys:v14, @"MLActiveAccountDSID", &off_A0DF0, @"MLAutoEnableICML", 0];
        v16 = 0;
        if (!v15)
        {
LABEL_9:
          v17 = v16;
LABEL_26:

          goto LABEL_27;
        }
      }

      else
      {
        v18 = +[ICUserIdentity activeAccount];
        v19 = +[ICUserIdentityStore defaultIdentityStore];
        v29 = 0;
        v20 = [v19 DSIDForUserIdentity:v18 outError:&v29];
        v21 = v29;
        v16 = v21;
        if (!v20 || v21)
        {
          v22 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = v16;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "Error (%{public}@) getting the active account DSID", buf, 0xCu);
          }

          v15 = 0;
        }

        else
        {
          v15 = [NSDictionary dictionaryWithObjectsAndKeys:v20, @"MLActiveAccountDSID", &off_A0DD8, @"MLAutoEnableICML", 0];
        }

        if (!v15)
        {
          goto LABEL_9;
        }
      }

      v28 = v16;
      v23 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v28];
      v17 = v28;

      if (!v23 || v17)
      {
        v24 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v31 = v17;
          v32 = 2112;
          v33 = v15;
          v25 = "Error (%{public}@ serializing config dictionary %{Public}@";
          v26 = v24;
          v27 = 22;
          goto LABEL_24;
        }
      }

      else
      {
        [v2 setValue:v23 forDatabaseProperty:@"MLEnableICMLConfig"];
        v24 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v31 = v15;
          v25 = "Setting autoEnableICML=%{public}@";
          v26 = v24;
          v27 = 12;
LABEL_24:
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    [v2 deleteDatabaseProperty:@"MLEnableICMLConfig"];
  }

LABEL_27:
}

- (void)_clearAllRevisionsFromLibrary
{
  v3 = [(MLSyncClient *)self _library];
  [(MLSyncClient *)self _setAutoEnableCloudLibrary];
  [v3 deleteDatabaseProperty:@"MLCloudDatabaseRevision"];
  [v3 deleteDatabaseProperty:@"MLJaliscoDatabaseRevision"];
  [v3 deleteDatabaseProperty:@"MLSyncClientLastSyncedRevision"];
  [v3 deleteDatabaseProperty:@"MLSyncClientSyncAnchor"];
  [v3 deleteDatabaseProperty:@"MLArtistHeroImageImportDate"];
  [v3 deleteDatabaseProperty:@"MLArtworkShouldConvertToASTC"];
  [v3 deleteDatabaseProperty:@"MLLastUploadedExplicitContentAllowedBoolean"];
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];

  [v3 setValue:v5 forDatabaseProperty:@"MLRestoreToken"];
  v6 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Set MLRestoreToken to unlock post-restore downloads in Podcasts app, token %{public}@", &v7, 0xCu);
  }
}

- (BOOL)reconcileUpgradeWithError:(id *)a3
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting reconcile for upgrade", v6, 2u);
  }

  [(MLSyncClient *)self _setAutoEnableCloudLibrary];
  [(MLSyncClient *)self _setPreExistingStoreAccountIds];
  return 1;
}

- (BOOL)_performReconcileRestoreOfType:(int)a3 withError:(id *)a4
{
  [(MLSyncClient *)self _library:*&a3];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5DEDC;
  v9[3] = &unk_9E198;
  v11 = self;
  v10 = v12 = a2;
  v13 = a3;
  v14 = 1;
  v7 = v10;
  [v7 performDatabaseTransactionWithBlock:v9];

  return 1;
}

- (BOOL)reconcileRestoreOfType:(int)a3 withError:(id *)a4
{
  v5 = *&a3;
  v8 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Reconciling restore of type %d", buf, 8u);
  }

  if (v5 == 1 || v5 == 3)
  {
    v9 = [(MLSyncClient *)self _performReconcileRestoreOfType:v5 withError:a4];
    [(MLSyncClient *)self _setPreExistingStoreAccountIds];
  }

  else
  {
    if (v5 == 2)
    {
      [(MLSyncClient *)self _setPreExistingStoreAccountIds];
    }

    else
    {
      v10 = +[NSAssertionHandler currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"MLSyncClient.m" lineNumber:629 description:{@"unexpected restore type %d", v5}];
    }

    return 1;
  }

  return v9;
}

- (BOOL)reconcileSync:(unsigned int)a3 withNewAnchor:(id)a4 progressCallback:(id)a5 error:(id *)a6
{
  v62 = a4;
  v61 = a5;
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = sub_55DA4;
  v86 = sub_55DB4;
  v87 = 0;
  v64 = self;
  v63 = [(MLSyncClient *)self _library];
  v10 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v94 = a3;
    *&v94[4] = 2114;
    *&v94[6] = v62;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "reconcileSync. syncType=%d, anchor=%{public}@", buf, 0x12u);
  }

  [(NSMutableDictionary *)self->_pendingUploads removeAllObjects];
  if (a3)
  {
    v11 = [ML3Container autoCreatedBuiltInSmartPlaylistsPIDs:v63];
    autoCreatedSmartPlaylistsPIDs = self->_autoCreatedSmartPlaylistsPIDs;
    self->_autoCreatedSmartPlaylistsPIDs = v11;

    v13 = [v63 valueForDatabaseProperty:@"MLSyncClientLastSyncedRevision"];
    v14 = [v13 longLongValue];

    v80[0] = _NSConcreteStackBlock;
    v80[1] = 3221225472;
    v80[2] = sub_5FC40;
    v80[3] = &unk_9E0D0;
    v15 = v63;
    v81 = v15;
    [ML3Container enumeratePersistentIDsInLibrary:v15 afterRevision:v14 usingBlock:v80];
    v16 = [(MLSyncClient *)v64 _verifySyncPlistFiles];
    *(v89 + 24) = v16;
    if (v16)
    {
      v17 = dispatch_semaphore_create(0);
      utilityQueue = v64->_utilityQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_5FDD4;
      block[3] = &unk_9E148;
      v79 = a3;
      v72 = v62;
      v77 = &v88;
      v78 = &v82;
      v76 = v61;
      v73 = v64;
      v74 = v15;
      v75 = v17;
      v19 = v17;
      dispatch_async(utilityQueue, block);
      dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v21 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "failed to validate sync plist files - ignoring", buf, 2u);
      }

      v22 = [[NSError alloc] initWithDomain:@"ATError" code:4 userInfo:0];
      v23 = v83[5];
      v83[5] = v22;

      notify_post([ML3MusicLibraryBackgroundTasksShouldStopSuppressingChangesNotification UTF8String]);
    }
  }

  else
  {
    v20 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "sync type is ATSyncNoSync - nothing to do", buf, 2u);
    }

    notify_post([ML3MusicLibraryBackgroundTasksShouldStopSuppressingChangesNotification UTF8String]);
  }

  if (v89[3])
  {
    v24 = [(MLSyncClient *)v64 _processUploadTrackOperations];
    *(v89 + 24) = v24;
  }

  else if (a6)
  {
    *a6 = v83[5];
  }

  if (a3 == 2)
  {
    if (v89[3])
    {
      i = 0;
    }

    else
    {
      v26 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "recovering temporarily moved assets", buf, 2u);
      }

      v27 = +[NSFileManager defaultManager];
      v28 = [v27 enumeratorAtPath:@"/var/mobile/Media/Airlock/tmp/iTunes_Control/Music/"];
      v29 = 0;
      for (i = 0; ; i = v32)
      {
        v30 = [v28 nextObject];

        if (!v30)
        {
          break;
        }

        v31 = [@"/var/mobile/Media/iTunes_Control/Music/" stringByAppendingPathComponent:v30];
        if ([v27 fileExistsAtPath:v31])
        {
          v32 = i;
        }

        else
        {
          v33 = [@"/var/mobile/Media/Airlock/tmp/iTunes_Control/Music/" stringByAppendingPathComponent:v30];
          v70 = i;
          v34 = [v27 linkItemAtPath:v33 toPath:v31 error:&v70];
          v32 = v70;

          if ((v34 & 1) == 0)
          {
            v35 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              *v94 = v30;
              *&v94[8] = 2114;
              *&v94[10] = v32;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "failed to restore Music asset %{public}@ back from tmp location. err=%{public}@", buf, 0x16u);
            }
          }
        }

        v29 = v30;
      }
    }

    v36 = +[NSFileManager defaultManager];
    v69 = i;
    v37 = [v36 removeItemAtPath:@"/var/mobile/Media/Airlock/tmp/" error:&v69];
    v38 = v69;

    if ((v37 & 1) == 0)
    {
      v39 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *v94 = v38;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Could not remove temporary itunes asset directory. err=%{public}@", buf, 0xCu);
      }
    }

    v40 = objc_autoreleasePoolPush();
    [v63 updateTrackIntegrity];
    objc_autoreleasePoolPop(v40);
  }

  v41 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "cleaning up...", buf, 2u);
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v42 = [(MLSyncClient *)v64 _syncPlistFiles];
  v43 = [v42 countByEnumeratingWithState:&v65 objects:v92 count:16];
  if (v43)
  {
    v44 = *v66;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v66 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v65 + 1) + 8 * j);
        v47 = v46;
        if (unlink([v46 fileSystemRepresentation]) == -1)
        {
          v48 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = __error();
            v50 = strerror(*v49);
            *buf = 136315394;
            *v94 = v50;
            *&v94[8] = 2114;
            *&v94[10] = v46;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "Error: %s removing plist at %{public}@", buf, 0x16u);
          }
        }

        v51 = [v46 stringByAppendingPathExtension:@"cig"];
        v52 = v51;
        v53 = unlink([v51 fileSystemRepresentation]) == -1;

        if (v53)
        {
          v54 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            v55 = __error();
            v56 = strerror(*v55);
            *buf = 136315138;
            *v94 = v56;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Could not remove sync plists cig: %s", buf, 0xCu);
          }
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v65 objects:v92 count:16];
    }

    while (v43);
  }

  v57 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v58 = *(v89 + 24);
    *buf = 67109120;
    *v94 = v58;
    _os_log_impl(&dword_0, v57, OS_LOG_TYPE_DEFAULT, "reconcileSync complete. success=%d", buf, 8u);
  }

  v59 = *(v89 + 24);
  _Block_object_dispose(&v82, 8);

  _Block_object_dispose(&v88, 8);
  return v59 & 1;
}

- (BOOL)_processUploadTrackOperations
{
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(MLSyncClient *)self _syncPlistFiles];
  v3 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = &NRWatchOSVersionForRemoteDevice_ptr;
    v6 = &NRWatchOSVersionForRemoteDevice_ptr;
    v7 = *v30;
    v19 = *v30;
    do
    {
      v8 = 0;
      v20 = v4;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v24 = [v5[314] dataWithContentsOfFile:{*(*(&v29 + 1) + 8 * v8), v19}];
        v9 = [v6[303] propertyListWithData:? options:? format:? error:?];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v9;
          v10 = [v9 objectForKey:@"operations"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            v21 = v10;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v26;
              do
              {
                for (i = 0; i != v13; i = i + 1)
                {
                  if (*v26 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v16 = *(*(&v25 + 1) + 8 * i);
                  v17 = [v16 objectForKey:@"operation"];
                  if ([v17 isEqualToString:@"upload_track"])
                  {
                    [(MLSyncClient *)self _evaluateUploadTrackDatabaseChangeStep:v16];
                  }
                }

                v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
              }

              while (v13);
            }

            v5 = &NRWatchOSVersionForRemoteDevice_ptr;
            v6 = &NRWatchOSVersionForRemoteDevice_ptr;
            v7 = v19;
            v4 = v20;
            v10 = v21;
          }

          v9 = v23;
        }

        v8 = v8 + 1;
      }

      while (v8 != v4);
      v4 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  return 1;
}

- (BOOL)_verifySyncPlistFiles
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(MLSyncClient *)self _syncPlistFiles];
  v2 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v17;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v17 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v16 + 1) + 8 * i);
        v7 = [v6 stringByAppendingPathExtension:@"cig"];
        v8 = [NSData dataWithContentsOfFile:v7];
        [v6 UTF8String];
        [v8 bytes];
        [v8 length];
        sub_2B84();
        if (v9)
        {
          v11 = v9;
          v12 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v8 length];
            *buf = 134218240;
            v21 = v11;
            v22 = 2048;
            v23 = v13;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "This tastes like anise-flavored gasoline. GrappaVerify error = %ld cig length = %ld", buf, 0x16u);
          }

          v10 = 0;
          goto LABEL_13;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_13:

  return v10;
}

- (BOOL)prepareForSyncWithHostAnchor:(id)a3 progressCallback:(id)a4 grappaID:(unsigned int)a5 hostVersion:(id)a6 error:(id *)a7
{
  v29 = a3;
  v28 = a4;
  v27 = a6;
  context = objc_autoreleasePoolPush();
  notify_post([ML3MusicLibraryBackgroundTasksShouldSuppressChangesNotification UTF8String]);
  v11 = [(MLSyncClient *)self _library];
  self->_grappaID = a5;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_60A84;
  v34[3] = &unk_9E080;
  v34[4] = self;
  v35 = v11;
  v36 = a5;
  v25 = v35;
  [v35 performReadOnlyDatabaseTransactionWithBlock:v34];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = [(MLSyncClient *)self _syncPlistFiles];
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        if (unlink([v17 fileSystemRepresentation]) == -1)
        {
          v18 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = __error();
            v20 = strerror(*v19);
            *buf = 138543618;
            v38 = v17;
            v39 = 2080;
            v40 = v20;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "Could not remove sync plist at %{public}@ during prepare: %s", buf, 0x16u);
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v14);
  }

  v21 = +[NSFileManager defaultManager];
  [v21 removeItemAtPath:@"/var/tmp/Media/" error:0];

  v22 = +[NSFileManager defaultManager];
  [v22 createDirectoryAtPath:@"/var/tmp/Media/" withIntermediateDirectories:1 attributes:0 error:0];

  v23 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Prepared!", buf, 2u);
  }

  objc_autoreleasePoolPop(context);
  return 1;
}

- (id)currentSyncAnchor
{
  v2 = [(MLSyncClient *)self _library];
  v3 = [v2 valueForDatabaseProperty:@"MLSyncClientSyncAnchor"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = @"0";
  }

  v5 = v4;

  return v4;
}

- (void)dealloc
{
  v3 = [(MLSyncClient *)self _library];
  [v3 reconnectToDatabase];

  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self];
  v4 = ATStartupCompleteNotification;
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self name:ATStartupCompleteNotification object:0];
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self name:ML3MusicLibraryNonContentsPropertiesDidChangeNotification object:0];
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self name:@"com.apple.nanomusic.sync.defaults" object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanoregistry.devicedidpair", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.nanoregistry.devicedidunpair", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileipod-prefsChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunesstored.accountschanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.StoreServices.StoreFrontChanged", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.itunescloudd.artworkDownloadsDidCompleteNotification", 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.Music-SortAlbums", 0);
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self name:ML3MusicLibraryContentsDidChangeNotification object:0];
  [(NSNotificationCenter *)self->_notificationCenter removeObserver:self name:ML3MusicLibraryDisplayValuesDidChangeNotification object:0];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 bundleIdentifier];

  if ([v7 isEqualToString:@"com.apple.atc"])
  {
    [(MLSyncClientKeepLocalEventHandlerWrapper *)self->_keepLocalEventHandlerWrapper stopKeepLocalHandler];
    v8 = +[MLSyncClientEnvironmentPolicyChangeHandler sharedInstance];
    [v8 removeObserver:self];
  }

  v9.receiver = self;
  v9.super_class = MLSyncClient;
  [(MLSyncClient *)&v9 dealloc];
}

- (MLSyncClient)init
{
  v35.receiver = self;
  v35.super_class = MLSyncClient;
  v2 = [(MLSyncClient *)&v35 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.amp.MusicLibrarySyncBundle.MLSyncClient.queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v7 = dispatch_queue_create("com.apple.amp.MusicLibrarySyncBundle.MLSyncClient.utilityQueue", v6);
    utilityQueue = v2->_utilityQueue;
    v2->_utilityQueue = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v10 = dispatch_queue_create("com.apple.amp.MusicLibrarySyncBundle.MLSyncClient.cachedSettingsQueue", v9);
    cachedSettingsQueue = v2->_cachedSettingsQueue;
    v2->_cachedSettingsQueue = v10;

    v12 = dispatch_queue_create("com.apple.amp.MusicLibrarySyncBundle.MLSyncClient.callBackQueue", &_dispatch_queue_attr_concurrent);
    callBackQueue = v2->_callBackQueue;
    v2->_callBackQueue = v12;

    v14 = +[NSMutableArray array];
    downloadedAssets = v2->_downloadedAssets;
    v2->_downloadedAssets = v14;

    v16 = +[NSMutableArray array];
    streams = v2->_streams;
    v2->_streams = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    pendingUploads = v2->_pendingUploads;
    v2->_pendingUploads = v18;

    autoCreatedSmartPlaylistsPIDs = v2->_autoCreatedSmartPlaylistsPIDs;
    v2->_autoCreatedSmartPlaylistsPIDs = 0;

    v21 = +[NSNotificationCenter defaultCenter];
    notificationCenter = v2->_notificationCenter;
    v2->_notificationCenter = v21;

    v23 = +[NSMutableSet set];
    modifiedPlaylistsPIDs = v2->_modifiedPlaylistsPIDs;
    v2->_modifiedPlaylistsPIDs = v23;

    v25 = +[NSMutableArray array];
    observedSessions = v2->_observedSessions;
    v2->_observedSessions = v25;

    notify_post([ML3MusicLibraryBackgroundTasksShouldStopSuppressingChangesNotification UTF8String]);
    v27 = +[NSBundle mainBundle];
    v28 = [v27 bundleIdentifier];

    v29 = [v28 isEqualToString:@"com.apple.atc"];
    v30 = _ATLogCategorySyncBundle();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (v29)
    {
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Performing startup actions specific for atc", buf, 2u);
      }

      [(NSNotificationCenter *)v2->_notificationCenter addObserver:v2 selector:"_handleATCStartupCompletedNotification:" name:ATStartupCompleteNotification object:0];
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_61220, @"com.apple.nanoregistry.devicedidpair", 0, CFNotificationSuspensionBehaviorDrop);
      v33 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v33, v2, sub_61210, @"com.apple.nanoregistry.devicedidunpair", 0, CFNotificationSuspensionBehaviorDrop);
    }

    else
    {
      if (v31)
      {
        *buf = 138543362;
        v37 = v28;
        _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "Ignoring startup actions for %{public}@", buf, 0xCu);
      }
    }
  }

  return v2;
}

@end