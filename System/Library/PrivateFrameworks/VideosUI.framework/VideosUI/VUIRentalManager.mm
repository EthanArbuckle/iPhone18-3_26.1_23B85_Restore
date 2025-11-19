@interface VUIRentalManager
+ (id)sharedInstance;
- (BOOL)_areDownloadManagersInitialized;
- (id)_init;
- (void)_activeAccountDidChange:(id)a3;
- (void)_checkInRentalsNeedingCheckIn;
- (void)_didFetchInitialStoreDownloads:(id)a3;
- (void)_networkReachbilityDidChange:(id)a3;
- (void)_sendPlaybackStartDatesToServerIfNecessary;
- (void)checkInRentalWithID:(id)a3 dsid:(id)a4 completion:(id)a5;
- (void)checkOutRentalWithID:(id)a3 dsid:(id)a4 checkoutType:(unint64_t)a5 startPlaybackClock:(BOOL)a6 completion:(id)a7;
- (void)dealloc;
- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4;
- (void)downloadManagerDidBecomeInitialized:(id)a3;
- (void)initializeRentals;
@end

@implementation VUIRentalManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_33 != -1)
  {
    +[VUIRentalManager sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

void __34__VUIRentalManager_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIRentalManager");
  v1 = sLogObject_21;
  sLogObject_21 = v0;

  v2 = [[VUIRentalManager alloc] _init];
  v3 = sharedInstance_sInstance;
  sharedInstance_sInstance = v2;
}

- (id)_init
{
  v19.receiver = self;
  v19.super_class = VUIRentalManager;
  v2 = [(VUIRentalManager *)&v19 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    deferredRentalCheckinContexts = v2->_deferredRentalCheckinContexts;
    v2->_deferredRentalCheckinContexts = v3;

    v5 = dispatch_queue_create("com.VideosUI.VUIRentalManager", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_serialQueue;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __25__VUIRentalManager__init__block_invoke;
    v16 = &unk_1E872E4B8;
    objc_copyWeak(&v17, &location);
    dispatch_async(v7, &v13);
    v8 = [MEMORY[0x1E69709A8] sharedManager];
    [v8 addObserver:v2 forDownloads:0];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
    [v9 addObserver:v2 selector:sel__networkReachbilityDidChange_ name:v10 object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v2 selector:sel__activeAccountDidChange_ name:*MEMORY[0x1E69D4A40] object:0];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__VUIRentalManager__init__block_invoke(uint64_t a1)
{
  v22[3] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v3 = v2;
  v4 = MEMORY[0x1E69B3428];
  v5 = [MEMORY[0x1E69B3488] predicateWithProperty:*MEMORY[0x1E69B30E8] equalToInteger:1];
  v22[0] = v5;
  v6 = MEMORY[0x1E69B3488];
  v7 = *MEMORY[0x1E69B31A8];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v9 = [v6 predicateWithProperty:v7 value:v8 comparison:6];
  v22[1] = v9;
  v10 = MEMORY[0x1E69B3488];
  v11 = *MEMORY[0x1E69B31B0];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v13 = [v10 predicateWithProperty:v11 value:v12 comparison:4];
  v22[2] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v15 = [v4 predicateMatchingPredicates:v14];

  v16 = MEMORY[0x1E69B3538];
  v17 = [MEMORY[0x1E69B34E0] autoupdatingSharedLibrary];
  v18 = [v16 queryWithLibrary:v17 predicate:v15 orderingTerms:0];

  [v18 setIgnoreSystemFilterPredicates:1];
  v19 = [objc_alloc(MEMORY[0x1E69B3510]) initWithQuery:v18];
  [v19 updateToLibraryCurrentRevision];
  if ([v19 count])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__VUIRentalManager__init__block_invoke_2;
    block[3] = &unk_1E872E4B8;
    objc_copyWeak(&v21, (a1 + 32));
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v21);
  }
}

- (void)initializeRentals
{
  if (![(VUIRentalManager *)self initialized])
  {
    [(VUIRentalManager *)self setInitialized:1];
    [(VUIRentalManager *)self _sendPlaybackStartDatesToServerIfNecessary];
    v3 = +[VUIRentalExpirationMonitor sharedInstance];
    [v3 startMonitoring];

    v4 = +[VUIDownloadManager sharedInstance];
    [v4 addDelegate:self];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__didFetchInitialStoreDownloads_ name:*MEMORY[0x1E69703A8] object:0];

    if ([(VUIRentalManager *)self _areDownloadManagersInitialized])
    {

      [(VUIRentalManager *)self _checkInRentalsNeedingCheckIn];
    }

    else
    {
      v6 = sLogObject_21;
      if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Waiting for list of downloads to be populated before checking in rentals", v7, 2u);
      }
    }
  }
}

- (void)_sendPlaybackStartDatesToServerIfNecessary
{
  if ([(VUIRentalManager *)self needToSendPlaybackStartDatesToServer]&& +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v3 = [MEMORY[0x1E69D5920] activeAccount];
    v4 = [v3 ams_DSID];

    if (v4 && [v4 unsignedLongLongValue])
    {
      v5 = [objc_alloc(MEMORY[0x1E69D49D0]) initWithAccountIdentifier:v4];
      objc_initWeak(location, self);
      v6 = sLogObject_21;
      if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Sending rental playback start dates to server", buf, 2u);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __62__VUIRentalManager__sendPlaybackStartDatesToServerIfNecessary__block_invoke;
      v9[3] = &unk_1E87360B0;
      objc_copyWeak(&v10, location);
      [v5 startWithConnectionResponseBlock:v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
    }

    else
    {
      v8 = sLogObject_21;
      if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Not sending rental playback start dates to server since no user is signed in", location, 2u);
      }
    }
  }

  else
  {
    v7 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Not sending rental playback start dates to server since we have no updates or because network is not available", location, 2u);
    }
  }
}

- (BOOL)_areDownloadManagersInitialized
{
  v2 = [MEMORY[0x1E69709A8] sharedManager];
  if ([v2 hasFetchedInitialDownloads])
  {
    v3 = +[VUIDownloadManager sharedInstance];
    v4 = [v3 isInitialized];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_checkInRentalsNeedingCheckIn
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D5920] activeAccount];

  v4 = sLogObject_21;
  v5 = os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Looking for rentals that should not be checked out", &buf, 2u);
    }

    v32 = [MEMORY[0x1E6970618] movieRentalsQuery];
    [v32 setIgnoreSystemFilterPredicates:1];
    v33 = [MEMORY[0x1E695DF70] array];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = MEMORY[0x1E6970610];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v31 = [v6 predicateWithValue:v7 forProperty:*MEMORY[0x1E696FAE8] comparisonType:101];

    [v33 addObject:v31];
    v30 = [MEMORY[0x1E6970610] predicateWithValue:MEMORY[0x1E695E110] forProperty:*MEMORY[0x1E696FA48] comparisonType:0];
    [v33 addObject:v30];
    v8 = MEMORY[0x1E6970598];
    v9 = [v33 copy];
    v29 = [v8 predicateMatchingPredicates:v9];

    [v32 addFilterPredicate:v29];
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [v32 items];
    v12 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v11 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu unexpired rentals", &buf, 0xCu);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v11;
    v15 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v15)
    {
      v16 = *v49;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v49 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          if (([v18 vui_isDownloadedOrDownloadingOrEnqueued] & 1) == 0)
          {
            [v10 addObject:v18];
          }
        }

        v15 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v15);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v54 = 0x2020000000;
    v55 = 0;
    v19 = dispatch_group_create();
    objc_initWeak(&location, self);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v34 = v10;
    v20 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v20)
    {
      v21 = *v44;
      v22 = *MEMORY[0x1E696FB78];
      v23 = *MEMORY[0x1E696FB38];
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v44 != v21)
          {
            objc_enumerationMutation(v34);
          }

          v25 = *(*(&v43 + 1) + 8 * j);
          v26 = [v25 valueForProperty:{v22, v29}];
          v27 = [v25 valueForProperty:v23];
          if ([v26 unsignedLongLongValue])
          {
            if ([v27 unsignedLongLongValue])
            {
              v28 = [objc_alloc(MEMORY[0x1E69D49C8]) initWithAccountIdentifier:v27 rentalKeyIdentifier:v26];
              dispatch_group_enter(v19);
              v37[0] = MEMORY[0x1E69E9820];
              v37[1] = 3221225472;
              v37[2] = __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke;
              v37[3] = &unk_1E8736100;
              objc_copyWeak(&v42, &location);
              v38 = v26;
              p_buf = &buf;
              v39 = v27;
              v40 = v19;
              [v28 startWithResponseBlock:v37];

              objc_destroyWeak(&v42);
            }
          }
        }

        v20 = [v34 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v20);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke_88;
    block[3] = &unk_1E8732C30;
    block[4] = &buf;
    dispatch_group_notify(v19, MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }

  else if (v5)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Not looking for rentals that should not be checked out because no user is signed in", &buf, 2u);
  }
}

void __25__VUIRentalManager__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Found at least one rental still in rental window.  Will send playback start dates to server", v3, 2u);
  }

  [WeakRetained setNeedToSendPlaybackStartDatesToServer:1];
  if ([WeakRetained initialized])
  {
    [WeakRetained _sendPlaybackStartDatesToServerIfNecessary];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIRentalManager;
  [(VUIRentalManager *)&v4 dealloc];
}

- (void)checkOutRentalWithID:(id)a3 dsid:(id)a4 checkoutType:(unint64_t)a5 startPlaybackClock:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v29 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (!v13 || ![v13 unsignedLongLongValue])
  {
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_ERROR))
    {
      [VUIRentalManager checkOutRentalWithID:dsid:checkoutType:startPlaybackClock:completion:];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v12 || ![v12 unsignedLongLongValue])
  {
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_ERROR))
    {
      [VUIRentalManager checkOutRentalWithID:dsid:checkoutType:startPlaybackClock:completion:];
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v14)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v20 = [v19 initWithDomain:VUIStoreMediaItemErrorDomain code:-123008 userInfo:0];
    v14[2](v14, 0, v20);

    goto LABEL_19;
  }

  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v15 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"Download";
      if (a5 == 2)
      {
        v16 = @"Streaming";
      }

      v17 = @"YES";
      if (!v8)
      {
        v17 = @"NO";
      }

      *buf = 138412546;
      v26 = v16;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Checking out rental with type %@; using play param: %@", buf, 0x16u);
    }

    v18 = [objc_alloc(MEMORY[0x1E69D49C0]) initWithAccountIdentifier:v13 rentalKeyIdentifier:v12];
    [v18 setCheckoutType:a5];
    [v18 setCheckoutWithPlay:v8];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __89__VUIRentalManager_checkOutRentalWithID_dsid_checkoutType_startPlaybackClock_completion___block_invoke;
    v23[3] = &unk_1E8736060;
    v24 = v14;
    [v18 startWithConnectionResponseBlock:v23];
  }

  else
  {
    if (v8)
    {
      v21 = sLogObject_21;
      if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "Network is not reachable.  Will send playback start date to server when network becomes reachable.", buf, 2u);
      }

      [(VUIRentalManager *)self setNeedToSendPlaybackStartDatesToServer:1];
    }

    v22 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "Not checking out rental because network is not available.  Return YES for success anyway so playback can proceed", buf, 2u);
    }

    if (v14)
    {
      v14[2](v14, 1, 0);
    }
  }

LABEL_19:
}

void __89__VUIRentalManager_checkOutRentalWithID_dsid_checkoutType_startPlaybackClock_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Rental checkout complete", buf, 2u);
  }

  if (v6)
  {
    v8 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Rental checkout failed with error: %@", buf, 0xCu);
    }

    v9 = v6;
    v10 = [v5 bodyData];
    if (v10)
    {
      v11 = [MEMORY[0x1E696AE40] propertyListWithData:v10 options:0 format:0 error:0];
    }

    else
    {
      v11 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 objectForKey:@"failureType"];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [v12 integerValue] == 5102)
      {
        v21 = *MEMORY[0x1E696AA08];
        v22 = v9;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v14 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:812 userInfo:v13];

        v9 = v14;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__VUIRentalManager_checkOutRentalWithID_dsid_checkoutType_startPlaybackClock_completion___block_invoke_74;
  block[3] = &unk_1E87317D0;
  v15 = *(a1 + 32);
  v20 = v6 == 0;
  v18 = v9;
  v19 = v15;
  v16 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __89__VUIRentalManager_checkOutRentalWithID_dsid_checkoutType_startPlaybackClock_completion___block_invoke_74(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)checkInRentalWithID:(id)a3 dsid:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && [v9 unsignedLongLongValue])
  {
    if (v8 && [v8 unsignedLongLongValue])
    {
      v11 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
      v12 = sLogObject_21;
      v13 = os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 138412290;
          v23 = v8;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Checking in rental with ID %@", buf, 0xCu);
        }

        v14 = [objc_alloc(MEMORY[0x1E69D49B8]) initWithAccountIdentifier:v9 rentalKeyIdentifier:v8];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __56__VUIRentalManager_checkInRentalWithID_dsid_completion___block_invoke;
        v17[3] = &unk_1E8736088;
        v18 = v8;
        v19 = v9;
        v20 = self;
        v21 = v10;
        [(VUIRentalCheckInContext *)v14 startWithConnectionResponseBlock:v17];
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "Network is not reachable.  Will check in rental when network becomes available.", buf, 2u);
        }

        v14 = [[VUIRentalCheckInContext alloc] initWithRentalID:v8 dsid:v9];
        v16 = [(VUIRentalManager *)self deferredRentalCheckinContexts];
        [v16 addObject:v14];
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_ERROR))
    {
      [VUIRentalManager checkInRentalWithID:dsid:completion:];
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_ERROR))
  {
    [VUIRentalManager checkInRentalWithID:dsid:completion:];
    if (!v10)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (v10)
  {
LABEL_14:
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = [v15 initWithDomain:VUIStoreMediaItemErrorDomain code:-123008 userInfo:0];
    (*(v10 + 2))(v10, 0, v14);
LABEL_15:
  }

LABEL_16:
}

void __56__VUIRentalManager_checkInRentalWithID_dsid_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Rental checkin complete for ID %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Rental checkin failed with error.  Will try to check in later. %@", buf, 0xCu);
    }

    v10 = [[VUIRentalCheckInContext alloc] initWithRentalID:*(a1 + 32) dsid:*(a1 + 40)];
    v11 = [*(a1 + 48) deferredRentalCheckinContexts];
    [v11 addObject:v10];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__VUIRentalManager_checkInRentalWithID_dsid_completion___block_invoke_77;
  v14[3] = &unk_1E872DC10;
  v12 = *(a1 + 56);
  v15 = v6;
  v16 = v12;
  v13 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

uint64_t __56__VUIRentalManager_checkInRentalWithID_dsid_completion___block_invoke_77(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32) == 0);
  }

  return result;
}

- (void)downloadManager:(id)a3 downloadDidFinish:(id)a4
{
  v5 = a4;
  v6 = [v5 phaseIdentifier];
  if (([v6 isEqualToString:*MEMORY[0x1E69703B0]] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", *MEMORY[0x1E69703C0]))
  {
    v7 = [v5 storeItemIdentifier];
    v8 = MEMORY[0x1E6970610];
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
    v10 = [v8 predicateWithValue:v9 forProperty:*MEMORY[0x1E696FB60]];

    v11 = [MEMORY[0x1E6970610] predicateWithValue:&unk_1F5E5DD40 forProperty:*MEMORY[0x1E696FA88]];
    v12 = objc_alloc(MEMORY[0x1E6970618]);
    v13 = [MEMORY[0x1E695DFD8] setWithObjects:{v10, v11, 0}];
    v14 = [v12 initWithFilterPredicates:v13];

    [v14 setEntityLimit:1];
    [v14 setIgnoreSystemFilterPredicates:1];
    v15 = [v14 items];
    v16 = [v15 firstObject];

    if ([v16 isRental])
    {
      v17 = [v16 valueForProperty:*MEMORY[0x1E696FB78]];
      v18 = [v16 valueForProperty:*MEMORY[0x1E696FB38]];
      v19 = sLogObject_21;
      if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "Checking in rental for download that was cancelled or failed", buf, 2u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__VUIRentalManager_downloadManager_downloadDidFinish___block_invoke;
      block[3] = &unk_1E872E008;
      block[4] = self;
      v23 = v17;
      v24 = v18;
      v20 = v18;
      v21 = v17;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)downloadManagerDidBecomeInitialized:(id)a3
{
  if ([(VUIRentalManager *)self _areDownloadManagersInitialized])
  {
    v4 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Initial downloads have been retrieved.  Checking in rentals as necessary", v5, 2u);
    }

    [(VUIRentalManager *)self _checkInRentalsNeedingCheckIn];
  }
}

- (void)_networkReachbilityDidChange:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
    v8 = @"NO";
    if (v7)
    {
      v8 = @"YES";
    }

    v19 = 138412290;
    v20 = v8;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "Network reachability did change.  Is reachable: %@", &v19, 0xCu);
  }

  [(VUIRentalManager *)self _sendPlaybackStartDatesToServerIfNecessary];
  v9 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(VUIRentalManager *)self deferredRentalCheckinContexts];
    v12 = [v11 count];
    v19 = 134217984;
    v20 = v12;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "%lu rental checkins have been deferred", &v19, 0xCu);
  }

  v13 = [(VUIRentalManager *)self deferredRentalCheckinContexts];
  v14 = [v13 count];

  if (v14)
  {
    v15 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
    v16 = sLogObject_21;
    v17 = os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        LOWORD(v19) = 0;
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Validating that deferred checkins are still okay to check in", &v19, 2u);
      }

      v18 = [(VUIRentalManager *)self deferredRentalCheckinContexts];
      [v18 removeAllObjects];

      [(VUIRentalManager *)self _checkInRentalsNeedingCheckIn];
    }

    else if (v17)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "Network is not available, not checking in rentals that have been deferred", &v19, 2u);
    }
  }
}

- (void)_activeAccountDidChange:(id)a3
{
  objc_initWeak(&location, self);
  v3 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Active account did change", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VUIRentalManager__activeAccountDidChange___block_invoke;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __44__VUIRentalManager__activeAccountDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendPlaybackStartDatesToServerIfNecessary];
  [WeakRetained _checkInRentalsNeedingCheckIn];
}

void __62__VUIRentalManager__sendPlaybackStartDatesToServerIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Finished sending rental playback start dates to server", v10, 2u);
  }

  if (v6)
  {
    v8 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_ERROR))
    {
      __62__VUIRentalManager__sendPlaybackStartDatesToServerIfNecessary__block_invoke_cold_1(v6, v8);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained setNeedToSendPlaybackStartDatesToServer:0];
  }
}

void __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke(uint64_t a1, char a2)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke_2;
  v8[3] = &unk_1E87360D8;
  v12 = a2;
  objc_copyWeak(&v11, (a1 + 64));
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v4;
  *&v7 = v3;
  *(&v7 + 1) = v5;
  v9 = v7;
  v10 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v11);
}

void __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 72) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v3 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "Found rental with id %@ that needs to be checked in", &v5, 0xCu);
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    [WeakRetained checkInRentalWithID:*(a1 + 32) dsid:*(a1 + 40) completion:0];
  }

  dispatch_group_leave(*(a1 + 48));
}

void __49__VUIRentalManager__checkInRentalsNeedingCheckIn__block_invoke_88(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = sLogObject_21;
  if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "Found %lu rentals needing to be checked in", &v4, 0xCu);
  }
}

- (void)_didFetchInitialStoreDownloads:(id)a3
{
  if ([(VUIRentalManager *)self _areDownloadManagersInitialized])
  {
    v4 = sLogObject_21;
    if (os_log_type_enabled(sLogObject_21, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Initial downloads have been retrieved.  Checking in rentals as necessary", v5, 2u);
    }

    [(VUIRentalManager *)self _checkInRentalsNeedingCheckIn];
  }
}

void __62__VUIRentalManager__sendPlaybackStartDatesToServerIfNecessary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Error sending rental playback start dates to server: %@", &v2, 0xCu);
}

@end