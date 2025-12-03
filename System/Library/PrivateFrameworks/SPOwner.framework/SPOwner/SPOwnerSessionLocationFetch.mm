@interface SPOwnerSessionLocationFetch
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPOwnerSessionLocationFetch)init;
- (SPOwnerSessionXPCProtocol)proxy;
- (void)interruptionHandler:(id)handler;
- (void)invalidationHandler:(id)handler;
- (void)locationForContext:(id)context completion:(id)completion;
- (void)receivedUpdatedDeviceEvents:(id)events;
- (void)receivedUpdatedLocation:(id)location;
- (void)subscribeAndFetchLocationForContext:(id)context completion:(id)completion;
- (void)unsubscribeLocationUpdatesWithCompletion:(id)completion;
@end

@implementation SPOwnerSessionLocationFetch

- (SPOwnerSessionLocationFetch)init
{
  v6.receiver = self;
  v6.super_class = SPOwnerSessionLocationFetch;
  v2 = [(SPOwnerSessionLocationFetch *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SPRetryCount);
    retryCount = v2->_retryCount;
    v2->_retryCount = v3;
  }

  return v2;
}

- (void)interruptionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch interruptionHandler %@", buf, 0xCu);
  }

  v6 = self->_lastContext;
  objc_initWeak(buf, self);
  [(SPRetryCount *)self->_retryCount decayWaitInterval];
  v8 = dispatch_time(0, (v7 * 1000000000.0));
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke;
  v14 = &unk_279B59228;
  objc_copyWeak(&v16, buf);
  v9 = v6;
  v15 = v9;
  dispatch_after(v8, MEMORY[0x277D85CD0], &v11);
  [(SPRetryCount *)self->_retryCount increment:v11];

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (*(a1 + 32))
  {
    v4 = [WeakRetained proxy];
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke_2;
    v6[3] = &unk_279B59EF0;
    v6[4] = v3;
    [v4 locationForContext:v5 completion:v6];
  }
}

void __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = LogCategory_LocationFetch();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke_2_cold_1(v6, v7);
    }
  }

  else
  {
    v8 = [*(a1 + 32) retryCount];
    [v8 reset];

    [*(a1 + 32) receivedUpdatedLocation:v5];
  }
}

- (void)invalidationHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = handlerCopy;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch invalidationHandler %@", &v10, 0xCu);
  }

  locationFetchSessionInvalidationBlock = [(SPOwnerSessionLocationFetch *)self locationFetchSessionInvalidationBlock];

  if (locationFetchSessionInvalidationBlock)
  {
    locationFetchSessionInvalidationBlock2 = [(SPOwnerSessionLocationFetch *)self locationFetchSessionInvalidationBlock];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.icloud.searchpartyd.SPOwnerSession.ErrorDomain" code:19 userInfo:0];
    (locationFetchSessionInvalidationBlock2)[2](locationFetchSessionInvalidationBlock2, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (SPOwnerSessionXPCProtocol)proxy
{
  v28 = *MEMORY[0x277D85DE8];
  session = [(SPOwnerSessionLocationFetch *)self session];

  if (!session)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __36__SPOwnerSessionLocationFetch_proxy__block_invoke;
    aBlock[3] = &unk_279B58B10;
    objc_copyWeak(&v24, &location);
    v4 = _Block_copy(aBlock);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __36__SPOwnerSessionLocationFetch_proxy__block_invoke_2;
    v21 = &unk_279B58B10;
    objc_copyWeak(&v22, &location);
    v5 = _Block_copy(&v18);
    v6 = objc_alloc(MEMORY[0x277D07BA0]);
    v7 = +[SPOwnerSessionLocationFetch exportedInterface];
    v8 = +[SPOwnerSessionLocationFetch remoteInterface];
    v9 = [v6 initWithMachServiceName:@"com.apple.icloud.searchparty.locationfetch.items" options:0 exportedObject:self exportedInterface:v7 remoteObjectInterface:v8 interruptionHandler:v4 invalidationHandler:{v5, v18, v19, v20, v21}];

    v10 = [objc_alloc(MEMORY[0x277D07BA8]) initWithServiceDescription:v9];
    [(SPOwnerSessionLocationFetch *)self setSession:v10];

    v11 = LogCategory_SecureLocations();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      machService = [v9 machService];
      *buf = 138412290;
      v27 = machService;
      _os_log_impl(&dword_2643D0000, v11, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch: Establishing XPC connection to %@", buf, 0xCu);
    }

    session2 = [(SPOwnerSessionLocationFetch *)self session];
    [session2 resume];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  session3 = [(SPOwnerSessionLocationFetch *)self session];
  proxy = [session3 proxy];

  v16 = *MEMORY[0x277D85DE8];

  return proxy;
}

void __36__SPOwnerSessionLocationFetch_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __36__SPOwnerSessionLocationFetch_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_5 != -1)
  {
    +[SPOwnerSessionLocationFetch exportedInterface];
  }

  v3 = exportedInterface_interface_5;

  return v3;
}

uint64_t __48__SPOwnerSessionLocationFetch_exportedInterface__block_invoke()
{
  exportedInterface_interface_5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287600080];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_7 != -1)
  {
    +[SPOwnerSessionLocationFetch remoteInterface];
  }

  v3 = remoteInterface_interface_6;

  return v3;
}

uint64_t __46__SPOwnerSessionLocationFetch_remoteInterface__block_invoke()
{
  remoteInterface_interface_6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606D90];

  return MEMORY[0x2821F96F8]();
}

- (void)receivedUpdatedLocation:(id)location
{
  locationCopy = location;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SPOwnerSessionLocationFetch_receivedUpdatedLocation___block_invoke;
  v6[3] = &unk_279B58C78;
  v7 = locationCopy;
  selfCopy = self;
  v5 = locationCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionLocationFetch.receivedUpdatedLocation", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __55__SPOwnerSessionLocationFetch_receivedUpdatedLocation___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) locationsByBeaconIdentifier];
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch receivedUpdatedLocation %lu", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) locationUpdates];

  if (v4)
  {
    v5 = [*(a1 + 40) locationUpdates];
    (*(v5 + 16))(v5, *(a1 + 32));
  }

  else
  {
    v5 = LogCategory_LocationFetch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch - received updated locations but no registered block", &v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)receivedUpdatedDeviceEvents:(id)events
{
  eventsCopy = events;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__SPOwnerSessionLocationFetch_receivedUpdatedDeviceEvents___block_invoke;
  v6[3] = &unk_279B58C78;
  v7 = eventsCopy;
  selfCopy = self;
  v5 = eventsCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionLocationFetch.receivedUpdatedLocation", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __59__SPOwnerSessionLocationFetch_receivedUpdatedDeviceEvents___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) beaconEventByBeaconIdentifier];
    v7 = 134217984;
    v8 = [v3 count];
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch receivedUpdatedDeviceEvents %lu.", &v7, 0xCu);
  }

  v4 = [*(a1 + 40) deviceEventUpdates];

  if (v4)
  {
    v5 = [*(a1 + 40) deviceEventUpdates];
    (*(v5 + 16))(v5, *(a1 + 32));
  }

  else
  {
    v5 = LogCategory_LocationFetch();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch - received updated device events but no registered block.", &v7, 2u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)subscribeAndFetchLocationForContext:(id)context completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [contextCopy setBundleIdentifier:bundleIdentifier];

  locationUpdates = [(SPOwnerSessionLocationFetch *)self locationUpdates];

  if (locationUpdates)
  {
    [contextCopy setSubscribe:1];
  }

  deviceEventUpdates = [(SPOwnerSessionLocationFetch *)self deviceEventUpdates];

  if (deviceEventUpdates)
  {
    [contextCopy setReportDeviceEvents:1];
  }

  objc_storeStrong(&self->_lastContext, context);
  v13 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    searchIdentifiers = [contextCopy searchIdentifiers];
    *buf = 134217984;
    v23 = [searchIdentifiers count];
    _os_log_impl(&dword_2643D0000, v13, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch.subscribeAndFetchLocationForContext %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke;
  activity_block[3] = &unk_279B58BA8;
  objc_copyWeak(&v21, buf);
  v19 = contextCopy;
  v20 = completionCopy;
  v15 = completionCopy;
  v16 = contextCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionLocationFetch.subscribeAndFetchLocationForContext:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v17 = *MEMORY[0x277D85DE8];
}

void __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke_2;
  v5[3] = &unk_279B59F18;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v7, (a1 + 48));
  [v3 locationForContext:v4 completion:v5];

  objc_destroyWeak(&v7);
}

void __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    WeakRetained = LogCategory_LocationFetch();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke_2_cold_1(v6, WeakRetained);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained receivedUpdatedLocation:v5];
  }
}

- (void)unsubscribeLocationUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch.unsubscribeLocationUpdatesWithCompletion", v7, 2u);
  }

  [(SPOwnerSessionLocationFetch *)self setLocationFetchSessionInvalidationBlock:0];
  [(SPOwnerSessionLocationFetch *)self setLocationUpdates:0];
  session = [(SPOwnerSessionLocationFetch *)self session];
  [session invalidate];

  [(SPOwnerSessionLocationFetch *)self setSession:0];
  completionCopy[2](completionCopy, 0);
}

- (void)locationForContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    searchIdentifiers = [contextCopy searchIdentifiers];
    *buf = 134217984;
    v18 = [searchIdentifiers count];
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch.locationForContext:completion: %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__SPOwnerSessionLocationFetch_locationForContext_completion___block_invoke;
  activity_block[3] = &unk_279B59718;
  v14 = contextCopy;
  v10 = contextCopy;
  objc_copyWeak(&v16, buf);
  v15 = completionCopy;
  v11 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionLocationFetch.locationForContext:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __61__SPOwnerSessionLocationFetch_locationForContext_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  [*(a1 + 32) setBundleIdentifier:v3];

  [*(a1 + 32) setSubscribe:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained proxy];
  [v4 locationForContext:*(a1 + 32) completion:*(a1 + 40)];
}

void __51__SPOwnerSessionLocationFetch_interruptionHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPOwnerSessionLocationFetch Error re-subscribing location update %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __78__SPOwnerSessionLocationFetch_subscribeAndFetchLocationForContext_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPOwnerSessionLocationFetch Error receiving subscribed location update %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end