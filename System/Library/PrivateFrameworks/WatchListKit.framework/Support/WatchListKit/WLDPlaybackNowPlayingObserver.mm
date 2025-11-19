@interface WLDPlaybackNowPlayingObserver
- (BOOL)_isAnyAppPlaying;
- (BOOL)_isPlayerPathPlaying:(id)a3;
- (BOOL)_isSummary:(id)a3 signifantChangeFromSummary:(id)a4;
- (BOOL)_nowPlayingAppIsPlayingForPlayerPath:(id)a3;
- (BOOL)_shouldPlayerPathBeConsidered:(id)a3;
- (WLDPlaybackNowPlayingObserver)initWithUpdateHandler:(id)a3;
- (id)_fetchActivePlayerPaths;
- (id)_getActivePlayerPaths;
- (id)_nowPlayingInfoForPlayerPath:(id)a3;
- (id)_unsupportedMediaTypes;
- (id)nowPlayingSummaries;
- (void)_activePlayerPathsDidChangeNotification:(id)a3;
- (void)_fetchNowPlayingInfo:(id)a3;
- (void)_forceFetchNowPlayingInfofromActivePlayers;
- (void)_isPlayingDidChangeNotification:(id)a3;
- (void)_nowPlayingInfoDidChangeNotification:(id)a3;
- (void)_processLastSummary:(id)a3;
- (void)_setActivePlayerPaths:(id)a3;
- (void)_updateWithInfo:(id)a3 sessionID:(id)a4;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation WLDPlaybackNowPlayingObserver

- (WLDPlaybackNowPlayingObserver)initWithUpdateHandler:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = WLDPlaybackNowPlayingObserver;
  v5 = [(WLDPlaybackNowPlayingObserver *)&v17 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;

    v5->_isObserving = 0;
    v8 = dispatch_queue_create("WLDPlaybackNowPlayingObserverQueueNotif", 0);
    notificationQueue = v5->_notificationQueue;
    v5->_notificationQueue = v8;

    v10 = dispatch_queue_create("WLDPlaybackNowPlayingObserverQueueLookup", 0);
    lookupQueue = v5->_lookupQueue;
    v5->_lookupQueue = v10;

    v12 = objc_opt_new();
    lastSummaryDict = v5->_lastSummaryDict;
    v5->_lastSummaryDict = v12;

    v14 = [(WLDPlaybackNowPlayingObserver *)v5 _fetchActivePlayerPaths];
    activePlayerPaths = v5->_activePlayerPaths;
    v5->_activePlayerPaths = v14;

    [(WLDPlaybackNowPlayingObserver *)v5 startObserving];
  }

  return v5;
}

- (void)dealloc
{
  [(WLDPlaybackNowPlayingObserver *)self stopObserving];
  v3.receiver = self;
  v3.super_class = WLDPlaybackNowPlayingObserver;
  [(WLDPlaybackNowPlayingObserver *)&v3 dealloc];
}

- (void)startObserving
{
  if (!self->_isObserving)
  {
    v3 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Start Playback observation", buf, 2u);
    }

    self->_isObserving = 1;
    notificationQueue = self->_notificationQueue;
    MRMediaRemoteRegisterForNowPlayingNotifications();
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"_nowPlayingInfoDidChangeNotification:" name:kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_isPlayingDidChangeNotification:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_activePlayerPathsDidChangeNotification:" name:kMRMediaRemoteActivePlayerPathsDidChange object:0];

    v8 = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __47__WLDPlaybackNowPlayingObserver_startObserving__block_invoke;
    block[3] = &unk_100044DB8;
    block[4] = self;
    dispatch_async(v8, block);
  }
}

- (void)stopObserving
{
  if (self->_isObserving)
  {
    v8 = v2;
    v9 = v3;
    v5 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Stop Playback observation", v7, 2u);
    }

    self->_isObserving = 0;
    MRMediaRemoteUnregisterForNowPlayingNotifications();
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 removeObserver:self];
  }
}

- (id)nowPlayingSummaries
{
  v3 = +[TVAppAccountStoreObjC activeAccount];
  v4 = [v3 ams_DSID];
  v5 = [v4 stringValue];

  v6 = dispatch_semaphore_create(0);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = objc_opt_new();
  [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v7)
  {
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(obj);
        }

        lookupQueue = self->_lookupQueue;
        v15 = *(*(&v18 + 1) + 8 * i);
        v16 = v5;
        v17 = v6;
        MRMediaRemoteGetNowPlayingInfoForPlayer();
        v11 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v17, v11);
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v12 = [v23[5] copy];
  _Block_object_dispose(&v22, 8);

  return v12;
}

intptr_t __52__WLDPlaybackNowPlayingObserver_nowPlayingSummaries__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) client];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = a2;
      v7 = [WLKPlaybackSummary alloc];
      v8 = [*(a1 + 32) client];
      v9 = [v8 bundleIdentifier];
      v10 = [v7 initWithMediaRemoteDictionary:v6 bundleID:v9 accountID:*(a1 + 40) isFromActivePlayerPath:1];

      if (v10)
      {
        [*(*(*(a1 + 56) + 8) + 40) addObject:v10];
      }
    }
  }

  v11 = *(a1 + 48);

  return dispatch_semaphore_signal(v11);
}

- (void)_isPlayingDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKey:kMRNowPlayingPlayerPathUserInfoKey];

  if ([(WLDPlaybackNowPlayingObserver *)self _shouldPlayerPathBeConsidered:v8])
  {
    v5 = [(WLDPlaybackNowPlayingObserver *)self _isAnyAppPlaying];
    transaction = self->_transaction;
    if (v5)
    {
      if (transaction)
      {
        goto LABEL_9;
      }
    }

    else if (transaction)
    {
      v7 = 0;
LABEL_8:
      self->_transaction = v7;

      goto LABEL_9;
    }

    v7 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPlaybackNowPlayingObserver._updateTransactionState"];
    transaction = self->_transaction;
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_activePlayerPathsDidChangeNotification:(id)a3
{
  v4 = [(WLDPlaybackNowPlayingObserver *)self _fetchActivePlayerPaths];
  v5 = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if (([v5 containsObject:v11] & 1) == 0)
        {
          [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v18 + 1) + 8 * j);
        if (([v6 containsObject:{v17, v18}] & 1) == 0)
        {
          [(WLDPlaybackNowPlayingObserver *)self _processLastSummary:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  [(WLDPlaybackNowPlayingObserver *)self _setActivePlayerPaths:v6];
}

- (void)_nowPlayingInfoDidChangeNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:kMRNowPlayingPlayerPathUserInfoKey];

  if ([(WLDPlaybackNowPlayingObserver *)self _shouldPlayerPathBeConsidered:v5])
  {
    [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:v5];
  }
}

- (void)_fetchNowPlayingInfo:(id)a3
{
  v4 = a3;
  v5 = [(WLDPlaybackNowPlayingObserver *)self _nowPlayingInfoForPlayerPath:v4];
  v6 = [v4 client];
  v7 = [v6 bundleIdentifier];
  v8 = [v4 player];
  v9 = [v8 identifier];
  v10 = [NSString stringWithFormat:@"%@-%@", v7, v9];

  v11 = [v5 objectForKey:v10];
  v12 = self;
  objc_sync_enter(v12);
  v13 = [(NSMutableDictionary *)v12->_lastSummaryDict objectForKey:v10];
  objc_sync_exit(v12);

  if ([v11 isEquivalentToSummaryExcludingTimestamp:v13])
  {
    v14 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- ignoring duplicate NPI", buf, 2u);
    }

    goto LABEL_8;
  }

  if (v11)
  {
    if ([(WLDPlaybackNowPlayingObserver *)v12 _isSummary:v11 signifantChangeFromSummary:v13])
    {
      [(WLDPlaybackNowPlayingObserver *)v12 _updateWithInfo:v11 sessionID:v10];
    }

LABEL_7:
    v14 = v12;
    objc_sync_enter(v14);
    [(NSMutableDictionary *)v12->_lastSummaryDict setObject:v11 forKey:v10];
    objc_sync_exit(v14);
LABEL_8:

    goto LABEL_9;
  }

  if (v13 && [v13 playbackState] == 1)
  {
    v15 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Generating stopped playback event", v17, 2u);
    }

    v11 = [v13 elapsedTimeSummaryWithPlaybackState:0 timerDerived:0];
    [(WLDPlaybackNowPlayingObserver *)v12 _updateWithInfo:v11 sessionID:v10];
    if (v11)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (BOOL)_isPlayerPathPlaying:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lookupQueue = self->_lookupQueue;
  v9 = v5;
  MRMediaRemoteGetPlaybackStateForPlayer();
  v7 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v9, v7);
  LOBYTE(lookupQueue) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return lookupQueue;
}

intptr_t __54__WLDPlaybackNowPlayingObserver__isPlayerPathPlaying___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldPlayerPathBeConsidered:(id)a3
{
  v3 = a3;
  v4 = [v3 origin];
  v5 = [v4 isLocal];

  if (v5)
  {
    v6 = [v3 client];
    v7 = [v6 bundleIdentifier];

    v8 = +[WLKAppLibrary defaultAppLibrary];
    v9 = [v8 allAppBundleIdentifiers];

    v10 = (+[WLKChannelUtilities isItunesBundleID:](WLKChannelUtilities, "isItunesBundleID:", v7) & 1) != 0 || [v9 containsObject:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_getActivePlayerPaths
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_activePlayerPaths;
  objc_sync_exit(v2);

  v4 = [(NSArray *)v3 copy];

  return v4;
}

- (void)_setActivePlayerPaths:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  activePlayerPaths = obj->_activePlayerPaths;
  obj->_activePlayerPaths = v4;

  objc_sync_exit(obj);
}

- (id)_fetchActivePlayerPaths
{
  v3 = dispatch_semaphore_create(0);
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  lookupQueue = self->_lookupQueue;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke;
  v26 = &unk_100045C18;
  v28 = &v29;
  v5 = v3;
  v27 = v5;
  MRMediaRemoteGetActivePlayerPathsForOrigin();
  v6 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = +[WLKAppLibrary defaultAppLibrary];
  v8 = [v7 allAppBundleIdentifiers];

  v9 = objc_alloc_init(NSMutableArray);
  v10 = v30[5];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke_2;
  v20 = &unk_100045C40;
  v11 = v8;
  v21 = v11;
  v12 = v9;
  v22 = v12;
  [v10 enumerateObjectsUsingBlock:&v17];
  v13 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v12 count];
    *buf = 134217984;
    v36 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _fetchActivePlayerPaths filtered paths count: %lu", buf, 0xCu);
  }

  v15 = [v12 copy];
  _Block_object_dispose(&v29, 8);

  return v15;
}

intptr_t __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void __56__WLDPlaybackNowPlayingObserver__fetchActivePlayerPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 client];
  v4 = [v3 bundleIdentifier];

  if ((+[WLKChannelUtilities isItunesBundleID:](WLKChannelUtilities, "isItunesBundleID:", v4) & 1) != 0 || [*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (id)_nowPlayingInfoForPlayerPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = objc_opt_new();
    v5 = dispatch_semaphore_create(0);
    lookupQueue = self->_lookupQueue;
    v11 = v4;
    v12 = v5;
    MRMediaRemoteGetNowPlayingInfoForPlayer();
    v7 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v12, v7);
    v8 = [*(v14 + 5) copy];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _nowPlayingInfoForPlayerPath invalid player path", buf, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __62__WLDPlaybackNowPlayingObserver__nowPlayingInfoForPlayerPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:kMRMediaRemoteNowPlayingInfoMediaType];
  if (!v4 || ([*(a1 + 32) _unsupportedMediaTypes], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v4), v5, (v6 & 1) == 0))
  {
    v7 = +[TVAppAccountStoreObjC activeAccount];
    v8 = [v7 ams_DSID];
    v9 = [v8 stringValue];

    v10 = [*(a1 + 32) _getActivePlayerPaths];
    v11 = [v10 containsObject:*(a1 + 40)];

    v12 = [WLKPlaybackSummary alloc];
    v13 = [*(a1 + 40) client];
    v14 = [v13 bundleIdentifier];
    v15 = [v12 initWithMediaRemoteDictionary:v3 bundleID:v14 accountID:v9 isFromActivePlayerPath:v11];

    v16 = [*(a1 + 40) client];
    v17 = [v16 bundleIdentifier];
    v18 = [*(a1 + 40) player];
    v19 = [v18 identifier];
    v20 = [NSString stringWithFormat:@"%@-%@", v17, v19];

    if (v15)
    {
      [*(*(*(a1 + 56) + 8) + 40) setObject:v15 forKey:v20];
    }

    else
    {
      v21 = WLKPlaybackTrackingLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - WLDPlaybackNowPlayingObserver: _nowPlayingInfoForPlayerPath summary is nil, activePlayingInfo is not set.", buf, 2u);
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

- (BOOL)_isAnyAppPlaying
{
  v3 = dispatch_semaphore_create(0);
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:16];
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

        v8 = *(*(&v14 + 1) + 8 * i);
        lookupQueue = self->_lookupQueue;
        v13 = v3;
        MRMediaRemoteGetPlaybackStateForPlayer();
        v10 = dispatch_time(0, 2000000000);
        dispatch_semaphore_wait(v13, v10);
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v22 count:{16, _NSConcreteStackBlock, 3221225472, __49__WLDPlaybackNowPlayingObserver__isAnyAppPlaying__block_invoke, &unk_100045BF0}];
    }

    while (v5);
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11 & 1;
}

intptr_t __49__WLDPlaybackNowPlayingObserver__isAnyAppPlaying__block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_nowPlayingAppIsPlayingForPlayerPath:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  lookupQueue = self->_lookupQueue;
  v9 = v5;
  MRMediaRemoteGetPlaybackStateForPlayer();
  v7 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v9, v7);
  LOBYTE(lookupQueue) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return lookupQueue;
}

intptr_t __70__WLDPlaybackNowPlayingObserver__nowPlayingAppIsPlayingForPlayerPath___block_invoke(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_processLastSummary:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 client];
  v7 = [v6 bundleIdentifier];
  v8 = [v4 player];
  v9 = [v8 identifier];
  v10 = [NSString stringWithFormat:@"%@-%@", v7, v9];

  v11 = [(NSMutableDictionary *)v5->_lastSummaryDict objectForKey:v10];
  v12 = v11;
  if (v11 && [v11 playbackState] == 1)
  {
    v13 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - _processLastSummary Generating stopped playback event", buf, 2u);
    }

    v14 = [v12 elapsedTimeSummaryWithPlaybackState:0 timerDerived:0];
    [(WLDPlaybackNowPlayingObserver *)v5 _updateWithInfo:v14 sessionID:v10];
  }

  lastSummaryDict = v5->_lastSummaryDict;
  v18 = v10;
  v16 = [NSArray arrayWithObjects:&v18 count:1];
  [(NSMutableDictionary *)lastSummaryDict removeObjectsForKeys:v16];

  objc_sync_exit(v5);
}

- (void)_forceFetchNowPlayingInfofromActivePlayers
{
  v3 = [(WLDPlaybackNowPlayingObserver *)self _getActivePlayerPaths];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(WLDPlaybackNowPlayingObserver *)self _fetchNowPlayingInfo:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_unsupportedMediaTypes
{
  if (_unsupportedMediaTypes_onceToken != -1)
  {
    [WLDPlaybackNowPlayingObserver _unsupportedMediaTypes];
  }

  v3 = _unsupportedMediaTypes___unsupportedTypes;

  return v3;
}

void __55__WLDPlaybackNowPlayingObserver__unsupportedMediaTypes__block_invoke(id a1)
{
  v3[0] = kMRMediaRemoteMediaTypeMusic;
  v3[1] = kMRMediaRemoteMediaTypeAudioBook;
  v3[2] = kMRMediaRemoteMediaTypePodcast;
  v1 = [NSArray arrayWithObjects:v3 count:3];
  v2 = _unsupportedMediaTypes___unsupportedTypes;
  _unsupportedMediaTypes___unsupportedTypes = v1;
}

- (void)_updateWithInfo:(id)a3 sessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_updateHandler)
  {
    notificationQueue = self->_notificationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __59__WLDPlaybackNowPlayingObserver__updateWithInfo_sessionID___block_invoke;
    block[3] = &unk_1000458B8;
    v10 = v6;
    v11 = self;
    v12 = v7;
    dispatch_async(notificationQueue, block);
  }
}

uint64_t __59__WLDPlaybackNowPlayingObserver__updateWithInfo_sessionID___block_invoke(void *a1)
{
  v2 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - Calling update handler with summary: %@", &v7, 0xCu);
  }

  v4 = a1[4];
  v5 = a1[6];
  return (*(*(a1[5] + 56) + 16))();
}

- (BOOL)_isSummary:(id)a3 signifantChangeFromSummary:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (![v5 isSameContent:v6])
  {
    LOBYTE(v25) = 1;
    v24 = @"content changed";
    goto LABEL_19;
  }

  v7 = [v6 playbackState];
  if (v7 != [v5 playbackState] || (v8 = objc_msgSend(v6, "completionState"), v8 != objc_msgSend(v5, "completionState")) || objc_msgSend(v6, "playbackState") != 1)
  {
    v24 = @"significant change";
    goto LABEL_11;
  }

  v9 = [v5 elapsedTime];
  [v9 doubleValue];
  v11 = v10;

  v12 = +[NSDate date];
  v13 = [v6 timestamp];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  v16 = [v6 playbackRate];
  objc_opt_class();
  LOBYTE(v13) = objc_opt_isKindOfClass();

  v17 = 1.0;
  if (v13)
  {
    v18 = [v6 playbackRate];
    [v18 doubleValue];
    v17 = v19;
  }

  v20 = [v6 elapsedTime];
  [v20 doubleValue];
  v22 = v21 + v15 * v17;

  v23 = vabdd_f64(v11, v22);
  if (v23 > 1.0)
  {
    v24 = [NSString stringWithFormat:@"elapsed time drift exceeds maximum: %.5f", *&v23];
LABEL_11:
    v26 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31[0] = v6;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- update %@ ->", buf, 0xCu);
    }

    v27 = WLKPlaybackTrackingLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31[0] = v5;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- %@", buf, 0xCu);
    }

    v25 = 1;
    goto LABEL_16;
  }

  v25 = 0;
  v24 = @"nominal elapsed time update";
LABEL_16:
  v28 = WLKPlaybackTrackingLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    LODWORD(v31[0]) = v25;
    WORD2(v31[0]) = 2112;
    *(v31 + 6) = v24;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "WLDPlaybackNowPlayingObserver - -SigEval- [%d] reason: %@", buf, 0x12u);
  }

LABEL_19:
  return v25;
}

@end