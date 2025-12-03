@interface SPOwnerSessionDelegatedLocation
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPOwnerSessionXPCProtocol)proxy;
- (void)delegatedLocationForContext:(id)context completion:(id)completion;
- (void)didPublishDelegatedLocation:(id)location;
- (void)subscribeDelegatedLocationUpdatesForContext:(id)context completion:(id)completion;
- (void)unsubscribeDelegatedLocationUpdatesWithCompletion:(id)completion;
@end

@implementation SPOwnerSessionDelegatedLocation

- (SPOwnerSessionXPCProtocol)proxy
{
  v18 = *MEMORY[0x277D85DE8];
  session = [(SPOwnerSessionDelegatedLocation *)self session];

  if (!session)
  {
    v4 = objc_alloc(MEMORY[0x277D07BA0]);
    v5 = +[SPOwnerSessionDelegatedLocation exportedInterface];
    v6 = +[SPOwnerSessionDelegatedLocation remoteInterface];
    v7 = [v4 initWithMachServiceName:@"com.apple.icloud.searchparty.delegatedlocationpublish.items" options:0 exportedObject:self exportedInterface:v5 remoteObjectInterface:v6 interruptionHandler:0 invalidationHandler:0];

    v8 = [objc_alloc(MEMORY[0x277D07BA8]) initWithServiceDescription:v7];
    [(SPOwnerSessionDelegatedLocation *)self setSession:v8];

    v9 = LogCategory_SecureLocations();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      machService = [v7 machService];
      *buf = 138412290;
      v17 = machService;
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionLocationFetch: Establishing XPC connection to %@", buf, 0xCu);
    }

    session2 = [(SPOwnerSessionDelegatedLocation *)self session];
    [session2 resume];
  }

  session3 = [(SPOwnerSessionDelegatedLocation *)self session];
  proxy = [session3 proxy];

  v14 = *MEMORY[0x277D85DE8];

  return proxy;
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_7 != -1)
  {
    +[SPOwnerSessionDelegatedLocation exportedInterface];
  }

  v3 = exportedInterface_interface_7;

  return v3;
}

uint64_t __52__SPOwnerSessionDelegatedLocation_exportedInterface__block_invoke()
{
  exportedInterface_interface_7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287602448];

  return MEMORY[0x2821F96F8]();
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_10 != -1)
  {
    +[SPOwnerSessionDelegatedLocation remoteInterface];
  }

  v3 = remoteInterface_interface_9;

  return v3;
}

uint64_t __50__SPOwnerSessionDelegatedLocation_remoteInterface__block_invoke()
{
  remoteInterface_interface_9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606D90];

  return MEMORY[0x2821F96F8]();
}

- (void)didPublishDelegatedLocation:(id)location
{
  locationCopy = location;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPOwnerSessionDelegatedLocation_didPublishDelegatedLocation___block_invoke;
  v6[3] = &unk_279B58C78;
  v6[4] = self;
  v7 = locationCopy;
  v5 = locationCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionDelegatedLocation.didPublishDelegatedLocation", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __63__SPOwnerSessionDelegatedLocation_didPublishDelegatedLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locationUpdateBlock];

  if (v2)
  {
    v4 = [*(a1 + 32) locationUpdateBlock];
    v4[2](v4, *(a1 + 40));
  }

  else
  {
    v3 = LogCategory_LocationFetch();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionDelegatedLocation - received updated locations but no registered block", buf, 2u);
    }
  }
}

- (void)subscribeDelegatedLocationUpdatesForContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [contextCopy setBundleIdentifier:bundleIdentifier];

  v10 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionDelegatedLocation.subscribeDelegatedLocationUpdatesForContext:completion", buf, 2u);
  }

  locationUpdateBlock = [(SPOwnerSessionDelegatedLocation *)self locationUpdateBlock];

  if (locationUpdateBlock)
  {
    [contextCopy setSubscribe:1];
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke;
  activity_block[3] = &unk_279B58BA8;
  objc_copyWeak(&v17, buf);
  v15 = contextCopy;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = contextCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionDelegatedLocation.subscribeDelegatedLocationUpdatesForContext:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v17);
  objc_destroyWeak(buf);
}

void __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke_2;
  v5[3] = &unk_279B5A670;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  objc_copyWeak(&v7, (a1 + 48));
  [v3 delegatedLocationForContext:v4 completion:v5];

  objc_destroyWeak(&v7);
}

void __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 32) + 16))();
  if (v6)
  {
    WeakRetained = LogCategory_LocationFetch();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke_2_cold_1(v6, WeakRetained);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained didPublishDelegatedLocation:v5];
  }
}

- (void)unsubscribeDelegatedLocationUpdatesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionDelegatedLocation.unsubscribeDelegatedLocationUpdatesWithCompletion", v7, 2u);
  }

  [(SPOwnerSessionDelegatedLocation *)self setLocationUpdateBlock:0];
  session = [(SPOwnerSessionDelegatedLocation *)self session];
  [session invalidate];

  [(SPOwnerSessionDelegatedLocation *)self setSession:0];
  completionCopy[2](completionCopy, 0);
}

- (void)delegatedLocationForContext:(id)context completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = LogCategory_LocationFetch();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuids = [contextCopy uuids];
    *buf = 134217984;
    v18 = [uuids count];
    _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "SPOwnerSessionDelegatedLocation.delegatedLocationForContext:completion: %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __74__SPOwnerSessionDelegatedLocation_delegatedLocationForContext_completion___block_invoke;
  activity_block[3] = &unk_279B59718;
  v14 = contextCopy;
  v10 = contextCopy;
  objc_copyWeak(&v16, buf);
  v15 = completionCopy;
  v11 = completionCopy;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSessionDelegatedLocation.delegatedLocationForContext:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __74__SPOwnerSessionDelegatedLocation_delegatedLocationForContext_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  [*(a1 + 32) setBundleIdentifier:v3];

  [*(a1 + 32) setSubscribe:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained proxy];
  [v4 delegatedLocationForContext:*(a1 + 32) completion:*(a1 + 40)];
}

void __90__SPOwnerSessionDelegatedLocation_subscribeDelegatedLocationUpdatesForContext_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPOwnerSessionDelegatedLocation Error receiving subscribed location update %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end