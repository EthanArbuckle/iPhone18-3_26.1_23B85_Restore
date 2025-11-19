@interface MTSyncClient
- (BOOL)_canEnqueueAssetsUnderBatteryAndThermalLevels;
- (BOOL)_isPodcastsSyncSessionCurrentlyRunning;
- (BOOL)_shouldRunPodcastsSyncClient;
- (BOOL)isEnabled;
- (MTSyncClient)init;
- (PFFairPlayInvalidationManager)fairplayInvalidationManager;
- (id)_episodePropertiesToFetch;
- (id)_episodeUUIDsFromDownloadInfo;
- (id)_episodesWithDownloadBehavior:(int64_t)a3;
- (id)_requestForEpisodesPendingDownloadDisablementWithDownloadableUUIDs:(id)a3;
- (id)_requestForEpisodesPendingDownloadEnablementWithDownloadableUUIDs:(id)a3;
- (id)_stringForAsset:(id)a3;
- (int64_t)_cannotEnqueueAssetsDownloadError;
- (int64_t)_episodeDownloadErrorForATError:(id)a3;
- (unint64_t)_hashWithEpisodeSet:(id)a3;
- (void)_NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification;
- (void)_cancelAsset:(id)a3 withError:(id)a4;
- (void)_clearAssetURLForEpisode:(id)a3;
- (void)_clearAssetURLForEpisodeWithUUID:(id)a3;
- (void)_clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets;
- (void)_deleteEpisodesNotInUUIDs:(id)a3;
- (void)_deletePlayedManualDownloadsIfCharging;
- (void)_handleDownloadInfoDidInvalidateNotification:(id)a3;
- (void)_handleNewBatteryAndThermalLevelsWithMonitor:(id)a3;
- (void)_performCleanupTask;
- (void)_pruneActiveDownloadsWithCompletion:(id)a3;
- (void)_setCannotEnqueueAssetsError:(int64_t)a3;
- (void)_setDownloadError:(id)a3 forEpisodeWithAsset:(id)a4;
- (void)applicationsDidUninstall:(id)a3;
- (void)applyChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 fromStream:(id)a5 withSyncParams:(id)a6 withProgressHandler:(id)a7 withCompletionHandler:(id)a8;
- (void)assetLinkController:(id)a3 didEnqueueAsset:(id)a4;
- (void)assetLinkController:(id)a3 didFinishAsset:(id)a4;
- (void)assetLinkController:(id)a3 didProcessAllTrackAssetsWithAssetType:(id)a4;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)environmentMonitorDidChangePower:(id)a3;
- (void)extensionAccessDidChange;
- (void)getChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 afterRevision:(unint64_t)a5 upToRevision:(unint64_t)a6 withSyncParams:(id)a7 intoOutputStream:(id)a8 withStartHandler:(id)a9 withProgressHandler:(id)a10 withCompletionHandler:(id)a11;
- (void)initiateAssetDownloadsWithCompletion:(id)a3;
- (void)manualDownloadsDidChange;
- (void)resetSyncDataWithCompletion:(id)a3;
@end

@implementation MTSyncClient

- (MTSyncClient)init
{
  v15.receiver = self;
  v15.super_class = MTSyncClient;
  v2 = [(MTSyncClient *)&v15 init];
  if (v2)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v3 = off_19A90;
    v24 = off_19A90;
    if (!off_19A90)
    {
      *buf = _NSConcreteStackBlock;
      v17 = 3221225472;
      v18 = sub_A0F8;
      v19 = &unk_14348;
      v20 = &v21;
      v4 = sub_A148();
      v5 = dlsym(v4, "_MTLogCategoryDefault");
      *(v20[1] + 24) = v5;
      off_19A90 = *(v20[1] + 24);
      v3 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v3)
    {
      sub_AA9C();
    }

    v6 = v3();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "MTSyncBundle was loaded.", buf, 2u);
    }

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.Podcasts.MTSyncClient", v7);
    v9 = *(v2 + 1);
    *(v2 + 1) = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.Podcasts.MTSyncClient.callBackQueue", v10);
    v12 = *(v2 + 2);
    *(v2 + 2) = v11;

    *(v2 + 48) = 0;
    dispatch_async(*(v2 + 1), &stru_143C8);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_22B4, NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification, 0);
  v4.receiver = self;
  v4.super_class = MTSyncClient;
  [(MTSyncClient *)&v4 dealloc];
}

- (PFFairPlayInvalidationManager)fairplayInvalidationManager
{
  fairplayInvalidationManager = self->_fairplayInvalidationManager;
  if (!fairplayInvalidationManager)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = qword_19AA8;
    v13 = qword_19AA8;
    if (!qword_19AA8)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_A314;
      v9[3] = &unk_14348;
      v9[4] = &v10;
      sub_A314(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_fairplayInvalidationManager;
    self->_fairplayInvalidationManager = v6;

    fairplayInvalidationManager = self->_fairplayInvalidationManager;
  }

  return fairplayInvalidationManager;
}

- (void)_clearAssetURLForEpisode:(id)a3
{
  v4 = a3;
  if (+[MTStoreIdentifier isNotEmpty:](MTStoreIdentifier, "isNotEmpty:", [v4 storeTrackId]))
  {
    v5 = [v4 assetURL];

    if (v5)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v4 uuid];
        v8 = [v4 title];
        v12 = 138412802;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2048;
        v17 = [v4 storeTrackId];
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Requesting secure deletion for episode <%@ - %@> with adam id %lld", &v12, 0x20u);
      }

      v9 = [(MTSyncClient *)self fairplayInvalidationManager];
      v10 = [v4 assetURL];
      v11 = [NSURL fileURLWithPath:v10];
      [v9 markKeyForInvalidationAt:v11 shouldRemove:1];
    }
  }

  [v4 setAssetURL:0];
}

- (void)_clearAssetURLForEpisodeWithUUID:(id)a3
{
  v4 = a3;
  v5 = [sub_2690() sharedInstance];
  v6 = [v5 privateQueueContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2770;
  v9[3] = &unk_143F0;
  v10 = v6;
  v11 = v4;
  v12 = self;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWaitWithSave:v9];
}

- (void)initiateAssetDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sub_29E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Initiating asset downloads", buf, 2u);
  }

  if (![(MTSyncClient *)self _shouldRunPodcastsSyncClient])
  {
    v6 = sub_29E0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "No assets to sync for Podcasts sync client", v7, 2u);
    }
  }

  if (v4)
  {
    v4[2](v4);
  }
}

- (void)environmentMonitorDidChangePower:(id)a3
{
  v4 = [a3 isCharging];
  v5 = sub_29E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Device is now on charger %x", &buf, 8u);
  }

  objc_initWeak(&buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C1C;
  block[3] = &unk_14418;
  objc_copyWeak(&v8, &buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&buf);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  v5 = sub_29E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = [v4 networkType];
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Network type is now %ld", buf, 0xCu);
  }

  if ([v4 isRemoteServerLikelyReachable])
  {
    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2DAC;
    block[3] = &unk_14418;
    objc_copyWeak(&v8, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v27 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v9 = qword_19AC8;
        v26 = qword_19AC8;
        if (!qword_19AC8)
        {
          *buf = _NSConcreteStackBlock;
          v19 = 3221225472;
          v20 = sub_A464;
          v21 = &unk_14348;
          v22 = &v23;
          v10 = sub_A148();
          v11 = dlsym(v10, "kMTApplicationBundleIdentifier");
          *(v22[1] + 24) = v11;
          qword_19AC8 = *(v22[1] + 24);
          v9 = v24[3];
        }

        _Block_object_dispose(&v23, 8);
        if (!v9)
        {
          sub_AA9C();
        }

        v12 = [v8 isEqualToString:*v9];

        if (v12)
        {
          v13 = sub_29E0();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Podcasts app was uninstalled.", buf, 2u);
          }

          [(MTSyncClient *)self _cancelPodcastsDownloadsWithError:0 excludeActiveDownloads:0];
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v27 count:16];
    }

    while (v5);
  }
}

- (void)assetLinkController:(id)a3 didEnqueueAsset:(id)a4
{
  v5 = a4;
  v6 = [v5 assetType];
  v7 = [v6 isEqualToString:@"Podcast"];

  if (v7)
  {
    v8 = sub_29E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(MTSyncClient *)self _stringForAsset:v5];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Did enqueue asset %@", &v10, 0xCu);
    }
  }
}

- (void)assetLinkController:(id)a3 didFinishAsset:(id)a4
{
  v5 = a4;
  v6 = [v5 assetType];
  v7 = [v6 isEqualToString:@"Podcast"];

  if (v7)
  {
    if ([(MTSyncClient *)self _shouldRunPodcastsSyncClient])
    {
      v8 = [sub_32E0() sharedInstance];
      v9 = [v8 isReady];

      if (v9)
      {
        queue = self->_queue;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_33C0;
        v15[3] = &unk_14440;
        v16 = v5;
        v17 = self;
        dispatch_async(queue, v15);

        goto LABEL_10;
      }

      v12 = sub_29E0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "MTSyncClient cannot open Podcasts DB. Will not handle completed asset.", buf, 2u);
      }

      v13 = [sub_32E0() sharedInstance];
      [v13 attemptToFix];

      v11 = 27;
    }

    else
    {
      v11 = 9;
    }

    v14 = [NSError errorWithDomain:@"ATError" code:v11 userInfo:0];
    [(MTSyncClient *)self _cancelAsset:v5 withError:v14];
  }

LABEL_10:
}

- (void)assetLinkController:(id)a3 didProcessAllTrackAssetsWithAssetType:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_42D8;
  block[3] = &unk_144B8;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)extensionAccessDidChange
{
  v3 = [sub_32E0() sharedInstance];
  v4 = [v3 isReady];

  if (v4)
  {
    v5 = sub_29E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "MTSyncClient can open Podcasts DB again.", buf, 2u);
    }

    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_4510;
    block[3] = &unk_14468;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)manualDownloadsDidChange
{
  v3 = sub_29E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Manual downloads did change.", buf, 2u);
  }

  v4 = [sub_32E0() sharedInstance];
  v5 = [v4 isReady];

  if ((v5 & 1) == 0)
  {
    v8 = sub_29E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "MTSyncClient cannot open Podcasts DB. Will not handle manual downloads change.", buf, 2u);
    }

    v6 = [sub_32E0() sharedInstance];
    [(MTSyncClient *)v6 attemptToFix];
    goto LABEL_11;
  }

  v6 = self;
  objc_sync_enter(v6);
  if (v6->_isProcessingManualEpisodesChange)
  {
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Manual downloads did change task already running. Will wait until current task finishes.", buf, 2u);
    }

    v6->_isManualEpisodesChangePending = 1;
    objc_sync_exit(v6);
LABEL_11:

    return;
  }

  *&v6->_isProcessingManualEpisodesChange = 1;
  objc_sync_exit(v6);

  objc_initWeak(buf, v6);
  queue = v6->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_4724;
  v10[3] = &unk_144B8;
  objc_copyWeak(&v11, buf);
  v10[4] = v6;
  dispatch_async(queue, v10);
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

- (void)_handleDownloadInfoDidInvalidateNotification:(id)a3
{
  v4 = a3;
  v5 = sub_29E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Automatic downloads did change.", buf, 2u);
  }

  v6 = [sub_32E0() sharedInstance];
  v7 = [v6 isReady];

  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    if (!v8->_isProcessingAutomaticEpisodesChange)
    {
      *&v8->_isProcessingAutomaticEpisodesChange = 1;
      objc_sync_exit(v8);

      objc_initWeak(buf, v8);
      queue = v8->_queue;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_4DA4;
      v12[3] = &unk_144B8;
      objc_copyWeak(&v13, buf);
      v12[4] = v8;
      dispatch_async(queue, v12);
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
      goto LABEL_13;
    }

    v9 = sub_29E0();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "Automatic downloads did change task already running. Will wait until current task finishes.", buf, 2u);
    }

    v8->_isAutomaticEpisodesChangePending = 1;
    objc_sync_exit(v8);
  }

  else
  {
    v10 = sub_29E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "MTSyncClient cannot open Podcasts DB. Will not handle download info invalidation.", buf, 2u);
    }

    v8 = [sub_32E0() sharedInstance];
    [(MTSyncClient *)v8 attemptToFix];
  }

LABEL_13:
}

- (void)_NRPairedDeviceRegistryWatchDidBecomeActiveDarwinNotification
{
  v3 = sub_29E0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Received watch did become active darwin notification", buf, 2u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55E8;
  block[3] = &unk_14468;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_shouldRunPodcastsSyncClient
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.atc"];

  if (v4)
  {
    v5 = +[NRPairedDeviceRegistry sharedInstance];
    v6 = [v5 getActivePairedDevice];
    v7 = [[NSUUID alloc] initWithUUIDString:@"B743795D-BA43-40D7-BA73-D1415B0895D4"];
    v8 = [v6 supportsCapability:v7];

    return v8;
  }

  else
  {
    v10 = sub_29E0();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "MTSyncClient was loaded outside of atc. Will not run Podcasts sync client.", v11, 2u);
    }

    return 0;
  }
}

- (BOOL)_canEnqueueAssetsUnderBatteryAndThermalLevels
{
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  [v2 currentBatteryLevel];
  if (v3 <= 0.8)
  {
    v4 = 20;
  }

  else
  {
    v4 = 30;
  }

  v5 = [v2 currentThermalLevel] < v4;

  return v5;
}

- (void)_handleNewBatteryAndThermalLevelsWithMonitor:(id)a3
{
  v4 = a3;
  v5 = [(MTSyncClient *)self _canEnqueueAssetsUnderBatteryAndThermalLevels];
  v6 = v5;
  if (self->_cachedCanEnqueueAssetsUnderBatteryAndThermalLevels || !v5)
  {
    if (!(v5 & 1 | !self->_cachedCanEnqueueAssetsUnderBatteryAndThermalLevels))
    {
      v10 = sub_29E0();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        [v4 currentBatteryLevel];
        *buf = 134218240;
        v16 = v11;
        v17 = 2048;
        v18 = [v4 currentThermalLevel];
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "New battery and thermal levels DO NOT allow sync battery %.2f thermal %llu", buf, 0x16u);
      }

      v12 = [NSError errorWithDomain:@"ATError" code:33 userInfo:0];
      [(MTSyncClient *)self _cancelPodcastsDownloadsWithError:v12 excludeActiveDownloads:1];
    }
  }

  else
  {
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v4 currentBatteryLevel];
      *buf = 134218240;
      v16 = v8;
      v17 = 2048;
      v18 = [v4 currentThermalLevel];
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "New battery and thermal levels allow sync battery %.2f thermal %llu", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5998;
    block[3] = &unk_14418;
    objc_copyWeak(&v14, buf);
    dispatch_async(queue, block);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  self->_cachedCanEnqueueAssetsUnderBatteryAndThermalLevels = v6;
}

- (int64_t)_cannotEnqueueAssetsDownloadError
{
  if ((ICSystemApplicationIsInstalled() & 1) == 0)
  {
    v5 = sub_29E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "Podcasts app not installed. Will not enqueue assets to sync.", &v13, 2u);
    }

    goto LABEL_12;
  }

  v3 = [sub_32E0() sharedInstance];
  v4 = [v3 isReady];

  if ((v4 & 1) == 0)
  {
    v7 = sub_29E0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Cannot open Podcasts DB. Will not enqueue assets to sync.", &v13, 2u);
    }

    v5 = [sub_32E0() sharedInstance];
    [v5 attemptToFix];
LABEL_12:
    v6 = 1;
    goto LABEL_13;
  }

  if ([(MTSyncClient *)self _canEnqueueAssetsUnderBatteryAndThermalLevels])
  {
    v5 = +[ICStorageManager sharedManager];
    if ([v5 storageSpaceAvailable])
    {
      if (([v5 cachingEnabled]& 1) != 0)
      {
        v6 = 0;
        goto LABEL_13;
      }

      v12 = sub_29E0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "System caching is not enabled. Will not enqueue assets to sync.", &v13, 2u);
      }

      v6 = 1;
    }

    else
    {
      v12 = sub_29E0();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        v6 = 2;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "No storage space remaining. Will not enqueue assets to sync.", &v13, 2u);
      }

      else
      {
        v6 = 2;
      }
    }

    goto LABEL_13;
  }

  v5 = +[ICEnvironmentMonitor sharedMonitor];
  v9 = sub_29E0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 currentThermalLevel];
    [v5 currentBatteryLevel];
    v13 = 134218240;
    v14 = v10;
    v15 = 2048;
    v16 = v11;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Thermal level too high %llu for battery level %f. Will not enqueue assets to sync.", &v13, 0x16u);
  }

  v6 = 10;
LABEL_13:

  return v6;
}

- (BOOL)_isPodcastsSyncSessionCurrentlyRunning
{
  [ATSession sessionsWithSessionTypeIdentifier:ATSessionTypeDeviceSync dataClass:@"Podcasts"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = v23 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if (([v7 isCancelled] & 1) == 0 && (objc_msgSend(v7, "isFinished") & 1) == 0)
        {
          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [v7 sessionTasksWithGroupingKey:{@"ATDeviceSyncSessionAssetTaskGroupingKey", 0}];
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v17;
            while (2)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v17 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v16 + 1) + 8 * j);
                if (([v13 isCancelled] & 1) == 0 && !objc_msgSend(v13, "isFinished"))
                {

                  v14 = 1;
                  goto LABEL_23;
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
      v14 = 0;
    }

    while (v4);
  }

  else
  {
    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (void)_setCannotEnqueueAssetsError:(int64_t)a3
{
  v4 = sub_27EC();
  v5 = [NSFetchRequest fetchRequestWithEntityName:v4];

  v6 = [sub_6008() predicateForDownloadBehavior:2];
  v7 = [sub_6008() predicateForDownloadBehavior:6];
  v8 = [v6 OR:v7];
  v9 = [sub_6008() predicateForDownloaded:0 excludeHidden:0];
  v10 = [v8 AND:v9];
  [v5 setPredicate:v10];

  [v5 setFetchBatchSize:200];
  v11 = [sub_2690() sharedInstance];
  v12 = [v11 privateQueueContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_60E8;
  v15[3] = &unk_14530;
  v16 = v12;
  v17 = v5;
  v18 = a3;
  v13 = v5;
  v14 = v12;
  [v14 performBlockAndWait:v15];
}

- (void)_clearPlayedDownloadsAndSyncPodcastsIfCanEnqueueAssets
{
  dispatch_assert_queue_V2(self->_queue);
  self->_isPendingSync = 1;
  v3 = [sub_32E0() sharedInstance];
  v4 = [v3 isReady];

  if (v4)
  {
    v5 = [(MTSyncClient *)self _isPodcastsSyncSessionCurrentlyRunning];
    v6 = sub_29E0();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Sync Attempt] Podcasts sync session is currently running. Will attempt later.", buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Sync Attempt] Can enqueue assets and no sync session is running. Syncing Podcasts.", buf, 2u);
      }

      [(MTSyncClient *)self _deletePlayedManualDownloadsIfCharging];
      v10 = [(MTSyncClient *)self _cannotEnqueueAssetsDownloadError];
      if (v10)
      {
        [(MTSyncClient *)self _setCannotEnqueueAssetsError:v10];
        v11 = sub_29E0();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v16 = v10;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[Sync Attempt] Cannot enqueue assets with error %lld. Will attempt later.", buf, 0xCu);
        }
      }

      else
      {
        self->_isPendingSync = 0;
        objc_initWeak(buf, self);
        v12 = +[ATDeviceService sharedInstance];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_6654;
        v13[3] = &unk_14558;
        objc_copyWeak(&v14, buf);
        [v12 initiateAssetDownloadSessionsWithCompletion:v13];

        objc_destroyWeak(&v14);
        objc_destroyWeak(buf);
      }
    }
  }

  else
  {
    v8 = sub_29E0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "[Sync Attempt] MTSyncClient cannot open Podcasts DB. Will attempt later.", buf, 2u);
    }

    v9 = [sub_32E0() sharedInstance];
    [v9 attemptToFix];
  }
}

- (int64_t)_episodeDownloadErrorForATError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:@"ATError"];

  if (v5)
  {
    v6 = [v3 code];
    if (v6 <= 32)
    {
      if (v6 == &dword_C + 2)
      {
        v7 = 2;
        goto LABEL_10;
      }

      if (v6 == &dword_1C + 3)
      {
        v7 = 8;
        goto LABEL_10;
      }
    }

    else
    {
      if (v6 == &stru_20.cmd + 1)
      {
        v7 = 10;
        goto LABEL_10;
      }

      if (v6 == &stru_20.cmd + 2)
      {
        v7 = 4;
        goto LABEL_10;
      }

      if (v6 == &stru_20.cmd + 3)
      {
        v7 = 6;
        goto LABEL_10;
      }
    }

    v7 = 3;
    goto LABEL_10;
  }

  v8 = [v3 domain];
  v9 = [v8 isEqualToString:@"MTSyncClientErrorDomain"];

  v7 = !v9 || [v3 code];
LABEL_10:

  return v7;
}

- (void)_setDownloadError:(id)a3 forEpisodeWithAsset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [sub_32E0() sharedInstance];
  v9 = [v8 isReady];

  if (v9)
  {
    v10 = [v7 identifier];
    if (v10)
    {
      v11 = [sub_2690() sharedInstance];
      v12 = [v11 privateQueueContext];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_6AB8;
      v15[3] = &unk_14508;
      v16 = v12;
      v10 = v10;
      v17 = v10;
      v18 = self;
      v19 = v6;
      v13 = v12;
      [v13 performBlockAndWaitWithSave:v15];
    }
  }

  else
  {
    v14 = sub_29E0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "MTSyncClient cannot open Podcasts DB. Will not set download error for asset.", buf, 2u);
    }

    v10 = [sub_32E0() sharedInstance];
    [v10 attemptToFix];
  }
}

- (void)_cancelAsset:(id)a3 withError:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(MTSyncClient *)self _setDownloadError:v6 forEpisodeWithAsset:v7];
  v8 = +[ATAssetLinkController sharedInstance];
  v13 = v7;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  [v8 cancelAssets:v9 withError:v6 completion:0];

  v10 = +[ATAssetLinkController sharedInstance];
  v12 = v7;
  v11 = [NSArray arrayWithObjects:&v12 count:1];

  [v10 installCompleteForAssets:v11];
}

- (id)_episodePropertiesToFetch
{
  v2 = sub_7284();
  v23[0] = v2;
  v3 = sub_7388();
  v23[1] = v3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v4 = qword_19AF0;
  v22 = qword_19AF0;
  if (!qword_19AF0)
  {
    v5 = sub_A148();
    v20[3] = dlsym(v5, "kEpisodeEnclosureUrl");
    qword_19AF0 = v20[3];
    v4 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v4)
  {
    sub_AA9C();
  }

  v6 = *v4;
  v23[2] = v6;
  v7 = sub_748C();
  v23[3] = v7;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v8 = qword_19B00;
  v22 = qword_19B00;
  if (!qword_19B00)
  {
    v9 = sub_A148();
    v20[3] = dlsym(v9, "kEpisodeGuid");
    qword_19B00 = v20[3];
    v8 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v8)
  {
    sub_AA9C();
  }

  v10 = *v8;
  v23[4] = v10;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = qword_19B08;
  v22 = qword_19B08;
  if (!qword_19B08)
  {
    v12 = sub_A148();
    v20[3] = dlsym(v12, "kEpisodeAssetURL");
    qword_19B08 = v20[3];
    v11 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v11)
  {
    sub_AA9C();
  }

  v13 = *v11;
  v23[5] = v13;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v14 = qword_19B10;
  v22 = qword_19B10;
  if (!qword_19B10)
  {
    v15 = sub_A148();
    v20[3] = dlsym(v15, "kEpisodeDownloadBehavior");
    qword_19B10 = v20[3];
    v14 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v14)
  {
    sub_AA9C();
  }

  v24 = *v14;
  v16 = v24;
  v17 = [NSArray arrayWithObjects:v23 count:7];

  return v17;
}

- (id)_episodeUUIDsFromDownloadInfo
{
  v2 = +[NSMutableSet set];
  v3 = +[NMSMediaPinningManager sharedManager];
  v4 = [v3 downloadInfo];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_7680;
  v8[3] = &unk_14580;
  v9 = v2;
  v5 = v2;
  [v4 enumerateMediaItemsUsingBlock:v8];
  v6 = [v5 copy];

  return v6;
}

- (id)_requestForEpisodesPendingDownloadEnablementWithDownloadableUUIDs:(id)a3
{
  v4 = a3;
  v5 = sub_27EC();
  v6 = [NSFetchRequest fetchRequestWithEntityName:v5];

  v7 = [sub_6008() predicateForEpisodeUuids:v4];

  v8 = [sub_6008() predicateForDownloadBehavior:2];
  v9 = [v8 NOT];
  v10 = [sub_6008() predicateForDownloadBehavior:3];
  v11 = [v10 NOT];
  v12 = [v9 AND:v11];
  v13 = [v7 AND:v12];
  [v6 setPredicate:v13];

  v14 = [(MTSyncClient *)self _episodePropertiesToFetch];
  [v6 setPropertiesToFetch:v14];

  [v6 setFetchBatchSize:200];

  return v6;
}

- (id)_requestForEpisodesPendingDownloadDisablementWithDownloadableUUIDs:(id)a3
{
  v4 = a3;
  v5 = sub_27EC();
  v6 = [NSFetchRequest fetchRequestWithEntityName:v5];

  v7 = [sub_6008() predicateForEpisodeUuids:v4];

  v8 = [v7 NOT];
  v9 = [sub_6008() predicateForDownloadBehavior:6];
  v10 = [v8 AND:v9];
  [v6 setPredicate:v10];

  v11 = [(MTSyncClient *)self _episodePropertiesToFetch];
  [v6 setPropertiesToFetch:v11];

  [v6 setFetchBatchSize:200];

  return v6;
}

- (id)_episodesWithDownloadBehavior:(int64_t)a3
{
  v5 = sub_27EC();
  v6 = [NSFetchRequest fetchRequestWithEntityName:v5];

  v7 = [sub_6008() predicateForDownloadBehavior:a3];
  [v6 setPredicate:v7];

  v8 = [(MTSyncClient *)self _episodePropertiesToFetch];
  [v6 setPropertiesToFetch:v8];

  [v6 setFetchBatchSize:200];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_7B5C;
  v23 = sub_7B6C;
  v24 = 0;
  v9 = [sub_2690() sharedInstance];
  v10 = [v9 privateQueueContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_7B74;
  v15[3] = &unk_145A8;
  v18 = &v19;
  v11 = v10;
  v16 = v11;
  v12 = v6;
  v17 = v12;
  [v11 performBlockAndWait:v15];
  v13 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v13;
}

- (id)_stringForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 prettyName];
  v5 = [NSString stringWithFormat:@"<%p> %@", v3, v4];

  return v5;
}

- (void)_deleteEpisodesNotInUUIDs:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [sub_2690() sharedInstance];
  v6 = [v5 privateQueueContext];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_809C;
  v33[3] = &unk_143F0;
  v22 = v3;
  v34 = v22;
  v35 = v6;
  v7 = v4;
  v36 = v7;
  v21 = v35;
  [v35 performBlockAndWait:v33];
  v8 = +[NSFileManager defaultManager];
  v24 = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = [v7 copy];
  v9 = [v20 keyEnumerator];
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * i);
        v15 = [v14 assetPathFromFileURL];
        if ([v8 fileExistsAtPath:v15])
        {
          v28 = 0;
          v16 = [v8 removeItemAtPath:v15 error:&v28];
          v17 = v28;
          if ((v16 & 1) == 0)
          {
            v18 = sub_29E0();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v38 = v15;
              v39 = 2112;
              v40 = v17;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "Failed to remove episode asset at path %@ - %@", buf, 0x16u);
            }

            [v24 removeObjectForKey:v14];
          }
        }

        else
        {
          v17 = sub_29E0();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v38 = v15;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Tried to remove episode asset at path %@ but file does not exist", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v11);
  }

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_82F4;
  v25[3] = &unk_14440;
  v26 = v24;
  v27 = self;
  v19 = v24;
  [v21 performBlockAndWaitWithSave:v25];
}

- (void)_pruneActiveDownloadsWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = sub_29E0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Pruning active downloads", buf, 2u);
  }

  v6 = sub_27EC();
  v7 = [NSFetchRequest fetchRequestWithEntityName:v6];

  v8 = [sub_6008() predicateForDownloadBehavior:2];
  v9 = [sub_6008() predicateForDownloadBehavior:6];
  v10 = [v8 OR:v9];
  [v7 setPredicate:v10];

  v11 = sub_7284();
  v37 = v11;
  v12 = [NSArray arrayWithObjects:&v37 count:1];
  [v7 setPropertiesToFetch:v12];

  *buf = 0;
  v32 = buf;
  v33 = 0x3032000000;
  v34 = sub_7B5C;
  v35 = sub_7B6C;
  v36 = +[NSMutableSet set];
  v13 = [sub_2690() sharedInstance];
  v14 = [v13 privateQueueContext];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_88B8;
  v27[3] = &unk_145D0;
  v15 = v14;
  v28 = v15;
  v16 = v7;
  v29 = v16;
  v30 = buf;
  [v15 performBlockAndWait:v27];
  objc_initWeak(&location, self);
  v17 = [*(v32 + 5) copy];
  v18 = [NSPredicate predicateWithFormat:@"variantOptions.AssetParts=%d and dataclass=%@ and NOT identifier IN %@", 1, @"Podcasts", v17];

  v19 = [NSError errorWithDomain:@"MTSyncClientErrorDomain" code:0 userInfo:0];
  v20 = +[ATAssetLinkController sharedInstance];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_8A78;
  v22[3] = &unk_14620;
  objc_copyWeak(&v25, &location);
  v21 = v4;
  v23 = v21;
  v24 = buf;
  [v20 cancelAllAssetsMatchingPredicate:v18 excludeActiveDownloads:0 withError:v19 completion:v22];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
}

- (void)_deletePlayedManualDownloadsIfCharging
{
  v3 = +[ICEnvironmentMonitor sharedMonitor];
  v4 = [v3 isCharging];

  if (v4)
  {
    v5 = sub_29E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Checking for fully played manual downloads", buf, 2u);
    }

    v6 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
    v7 = [sub_6008() predicateForDownloadBehavior:2];
    v8 = [sub_6008() predicateForDownloaded:1 excludeHidden:0];
    v9 = [v7 AND:v8];
    v10 = [sub_6008() predicateForPlayed:1];
    v11 = [v9 AND:v10];
    [v6 setPredicate:v11];

    [v6 setFetchBatchSize:200];
    [v6 setReturnsObjectsAsFaults:0];
    v12 = [sub_2690() sharedInstance];
    v13 = [v12 privateQueueContext];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_8E14;
    v17[3] = &unk_143F0;
    v18 = v13;
    v19 = v6;
    v20 = self;
    v14 = v6;
    v15 = v13;
    [v15 performBlockAndWaitWithSave:v17];
    v16 = sub_29E0();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Done deleting fully played manual downloads", buf, 2u);
    }
  }
}

- (void)_performCleanupTask
{
  dispatch_assert_queue_V2(self->_queue);
  v2 = +[ICEnvironmentMonitor sharedMonitor];
  v3 = [v2 isCharging];

  if (v3)
  {
    v4 = [sub_32E0() sharedInstance];
    v5 = [v4 isReady];

    v6 = sub_29E0();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Cleanup task beggining", buf, 2u);
      }

      *buf = 0;
      v83 = buf;
      v84 = 0x3032000000;
      v85 = sub_7B5C;
      v86 = sub_7B6C;
      v87 = 0;
      v8 = +[NSFileManager defaultManager];
      v9 = [sub_21D4() managedAssetsDirectoryURL];
      v10 = [v9 path];
      v11 = (v83 + 40);
      obj = *(v83 + 5);
      v58 = [v8 contentsOfDirectoryAtPath:v10 error:&obj];
      objc_storeStrong(v11, obj);

      if (*(v83 + 5))
      {
        v12 = sub_29E0();
        v57 = v12;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v83 + 5);
          *v90 = 138412290;
          v91 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "Cleanup task unable to fetch episode asset paths - %@", v90, 0xCu);
        }
      }

      else
      {
        v57 = [NSMutableSet setWithArray:v58];
        v16 = sub_27EC();
        v17 = [NSFetchRequest fetchRequestWithEntityName:v16];

        v18 = [sub_6008() predicateForDownloaded:1 excludeHidden:1];
        [v17 setPredicate:v18];

        v19 = [sub_6008() propertiesToFetchAssetURL];
        [v17 setPropertiesToFetch:v19];

        v20 = [sub_2690() sharedInstance];
        v21 = [v20 privateQueueContext];

        v22 = +[NSMutableDictionary dictionary];
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_9B04;
        v76[3] = &unk_14648;
        v77 = v21;
        v55 = v17;
        v78 = v55;
        v80 = buf;
        v23 = v22;
        v79 = v23;
        v56 = v77;
        [v77 performBlockAndWait:v76];
        if (*(v83 + 5))
        {
          v24 = sub_29E0();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = *(v83 + 5);
            *v90 = 138412290;
            v91 = v25;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "Cleanup task unable to fetch downloaded episodes - %@", v90, 0xCu);
          }
        }

        else
        {
          v26 = +[NSMutableArray array];
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v27 = v57;
          v28 = [v27 countByEnumeratingWithState:&v72 objects:v94 count:16];
          if (v28)
          {
            v29 = *v73;
            do
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v73 != v29)
                {
                  objc_enumerationMutation(v27);
                }

                v31 = *(*(&v72 + 1) + 8 * i);
                v32 = [v23 objectForKey:v31];
                v33 = v32 == 0;

                if (v33)
                {
                  [v26 addObject:v31];
                }
              }

              v28 = [v27 countByEnumeratingWithState:&v72 objects:v94 count:16];
            }

            while (v28);
          }

          v34 = sub_29E0();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [v26 count];
            *v90 = 134218242;
            v91 = v35;
            v92 = 2112;
            v93 = v26;
            _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "Cleanup task found %lu files to delete %@", v90, 0x16u);
          }

          v59 = +[NSMutableArray array];
          v70 = 0u;
          v71 = 0u;
          v69 = 0u;
          v68 = 0u;
          v36 = [v23 allKeys];
          v37 = [v36 countByEnumeratingWithState:&v68 objects:v89 count:16];
          if (v37)
          {
            v38 = *v69;
            do
            {
              for (j = 0; j != v37; j = j + 1)
              {
                if (*v69 != v38)
                {
                  objc_enumerationMutation(v36);
                }

                v40 = *(*(&v68 + 1) + 8 * j);
                if (([v27 containsObject:v40] & 1) == 0)
                {
                  [v59 addObject:v40];
                }
              }

              v37 = [v36 countByEnumeratingWithState:&v68 objects:v89 count:16];
            }

            while (v37);
          }

          v41 = sub_29E0();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v59 count];
            *v90 = 134218242;
            v91 = v42;
            v92 = 2112;
            v93 = v59;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "Cleanup task found %lu assetURLs to clear %@", v90, 0x16u);
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v24 = v26;
          v43 = [v24 countByEnumeratingWithState:&v64 objects:v88 count:16];
          if (v43)
          {
            v44 = *v65;
            do
            {
              for (k = 0; k != v43; k = k + 1)
              {
                if (*v65 != v44)
                {
                  objc_enumerationMutation(v24);
                }

                v46 = *(*(&v64 + 1) + 8 * k);
                v47 = +[NSFileManager defaultManager];
                v48 = [sub_21D4() managedAssetsDirectoryURL];
                v49 = [v48 URLByAppendingPathComponent:v46];
                v50 = (v83 + 40);
                v63 = *(v83 + 5);
                [v47 removeItemAtURL:v49 error:&v63];
                objc_storeStrong(v50, v63);

                if (*(v83 + 5))
                {
                  v51 = sub_29E0();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    v52 = *(v83 + 5);
                    *v90 = 138412546;
                    v91 = v46;
                    v92 = 2112;
                    v93 = v52;
                    _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "Cleanup task unable to delete asset at path %@ - %@", v90, 0x16u);
                  }

                  v53 = *(v83 + 5);
                  *(v83 + 5) = 0;
                }

                else
                {
                  v53 = sub_29E0();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                  {
                    *v90 = 138412290;
                    v91 = v46;
                    _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "Cleanup task deleted asset at path %@", v90, 0xCu);
                  }
                }
              }

              v43 = [v24 countByEnumeratingWithState:&v64 objects:v88 count:16];
            }

            while (v43);
          }

          if ([v59 count])
          {
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_9C6C;
            v60[3] = &unk_14440;
            v61 = v59;
            v62 = v23;
            [v56 performBlockAndWaitWithSave:v60];
          }

          v54 = sub_29E0();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *v90 = 0;
            _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "Cleanup task finished", v90, 2u);
          }
        }
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Cleanup task will not begin because DB is not ready", buf, 2u);
      }

      v15 = [sub_32E0() sharedInstance];
      [v15 attemptToFix];
    }
  }

  else
  {
    v14 = sub_29E0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Cleanup task will not begin off charger", buf, 2u);
    }
  }
}

- (unint64_t)_hashWithEpisodeSet:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 sortedArrayUsingComparator:&stru_14688];
  v5 = [v4 componentsJoinedByString:&stru_14800];
  v6 = [v5 hash];

  return v6;
}

- (BOOL)isEnabled
{
  if (![(MTSyncClient *)self _shouldRunPodcastsSyncClient])
  {
    v5 = sub_29E0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v7 = "Podcasts sync client is disabled.";
      v8 = &v12;
LABEL_10:
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  v2 = +[ICStorageManager sharedManager];
  v3 = [v2 cachingEnabled];

  v4 = sub_29E0();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "Disabling Podcasts sync client since caching is disabled.";
      v8 = &v10;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Enabling Podcasts sync client since caching is enabled.", buf, 2u);
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (void)getChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 afterRevision:(unint64_t)a5 upToRevision:(unint64_t)a6 withSyncParams:(id)a7 intoOutputStream:(id)a8 withStartHandler:(id)a9 withProgressHandler:(id)a10 withCompletionHandler:(id)a11
{
  if (a9)
  {
    v11 = a11 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = *(a9 + 2);
    v13 = a11;
    v12(a9, 0);
    v13[2](v13, 0);
  }
}

- (void)applyChangesForSyncType:(unsigned int)a3 endpointType:(int)a4 fromStream:(id)a5 withSyncParams:(id)a6 withProgressHandler:(id)a7 withCompletionHandler:(id)a8
{
  if (a8)
  {
    (*(a8 + 2))(a8, 0, 1, 1);
  }
}

- (void)resetSyncDataWithCompletion:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

@end