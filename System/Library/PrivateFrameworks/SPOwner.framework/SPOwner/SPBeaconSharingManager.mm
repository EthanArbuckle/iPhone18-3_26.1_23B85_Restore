@interface SPBeaconSharingManager
+ (id)exportedInterface;
+ (id)remoteInterface;
- (SPBeaconSharingManager)init;
- (SPBeaconSharingXPCProtocol)proxy;
- (void)acceptShare:(id)a3 completion:(id)a4;
- (void)allSharesIncludingHiddenWithCompletion:(id)a3;
- (void)allSharesWithCompletion:(id)a3;
- (void)checkDataIntegrityWithShareIdentifier:(id)a3 completion:(id)a4;
- (void)cleanupAllRecordsOfType:(unint64_t)a3 completion:(id)a4;
- (void)declineShare:(id)a3 completion:(id)a4;
- (void)delegatedShare:(id)a3 completion:(id)a4;
- (void)downloadKeysWithCircleIdentifier:(id)a3 fromBookmark:(BOOL)a4 completion:(id)a5;
- (void)forceBreakAllSharesOfType:(unint64_t)a3 completion:(id)a4;
- (void)forceBreakAllSharesWithUser:(id)a3 completion:(id)a4;
- (void)forceDeclineShare:(id)a3 completion:(id)a4;
- (void)forceStopSharing:(id)a3 completion:(id)a4;
- (void)importDelegatedShare:(id)a3 completion:(id)a4;
- (void)importSharePreview:(id)a3 completion:(id)a4;
- (void)interruptionHandler:(id)a3;
- (void)invalidationHandler:(id)a3;
- (void)isBeaconDelegated:(id)a3 completion:(id)a4;
- (void)lookForOrphanedRecordsWithCompletion:(id)a3;
- (void)receivedUpdatedShares:(id)a3;
- (void)removeExpiredSharesWithCompletion:(id)a3;
- (void)removeImportedShare:(id)a3 completion:(id)a4;
- (void)removeShare:(id)a3 completion:(id)a4;
- (void)requestShare:(id)a3 completion:(id)a4;
- (void)revokeShare:(id)a3 completion:(id)a4;
- (void)share:(id)a3 recipients:(id)a4 completion:(id)a5;
- (void)share:(id)a3 recipients:(id)a4 shareType:(unint64_t)a5 completion:(id)a6;
- (void)sharingLimitsWithCompletion:(id)a3;
- (void)startRefreshingSharesWithBlock:(id)a3 completion:(id)a4;
- (void)stopRefreshingSharesWithCompletion:(id)a3;
- (void)stopSharing:(id)a3 completion:(id)a4;
- (void)stopTemporaryItemLocationShare:(id)a3 completion:(id)a4;
- (void)updatedCircleIdentifiers:(id)a3 completion:(id)a4;
- (void)uploadKeysWithCircleIdentifier:(id)a3 isInitialUpload:(BOOL)a4 completion:(id)a5;
@end

@implementation SPBeaconSharingManager

- (SPBeaconSharingManager)init
{
  v9.receiver = self;
  v9.super_class = SPBeaconSharingManager;
  v2 = [(SPBeaconSharingManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icloud.searchpartyd.SPBeaconSharingManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(SPRetryCount);
    retryCount = v2->_retryCount;
    v2->_retryCount = v6;
  }

  return v2;
}

void __41__SPBeaconSharingManager_remoteInterface__block_invoke()
{
  v24[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287606D30];
  v1 = remoteInterface_interface_5;
  remoteInterface_interface_5 = v0;

  v2 = remoteInterface_interface_5;
  v3 = MEMORY[0x277CBEB98];
  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_allSharesWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = remoteInterface_interface_5;
  v7 = MEMORY[0x277CBEB98];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_allSharesIncludingHiddenWithCompletion_ argumentIndex:0 ofReply:1];

  v10 = remoteInterface_interface_5;
  v11 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_share_recipients_shareType_completion_ argumentIndex:1 ofReply:0];

  v14 = remoteInterface_interface_5;
  v15 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:3];
  v17 = [v15 setWithArray:{v16, v19, v20}];
  [v14 setClasses:v17 forSelector:sel_share_recipients_shareType_completion_ argumentIndex:1 ofReply:1];

  v18 = *MEMORY[0x277D85DE8];
}

- (SPBeaconSharingXPCProtocol)proxy
{
  location[3] = *MEMORY[0x277D85DE8];
  v3 = [(SPBeaconSharingManager *)self session];

  if (!v3)
  {
    v4 = [(SPBeaconSharingManager *)self serviceDescription];

    if (!v4)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __31__SPBeaconSharingManager_proxy__block_invoke;
      aBlock[3] = &unk_279B58B10;
      objc_copyWeak(&v29, location);
      v5 = _Block_copy(aBlock);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __31__SPBeaconSharingManager_proxy__block_invoke_2;
      v26[3] = &unk_279B58B10;
      objc_copyWeak(&v27, location);
      v6 = _Block_copy(v26);
      v7 = objc_alloc(MEMORY[0x277D07BA0]);
      v8 = +[SPBeaconSharingManager exportedInterface];
      v9 = +[SPBeaconSharingManager remoteInterface];
      v10 = [v7 initWithMachServiceName:@"com.apple.icloud.searchpartyd.beaconsharingservice" options:0 exportedObject:self exportedInterface:v8 remoteObjectInterface:v9 interruptionHandler:v5 invalidationHandler:v6];

      serviceDescription = self->_serviceDescription;
      self->_serviceDescription = v10;

      objc_destroyWeak(&v27);
      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }

    v12 = objc_alloc(MEMORY[0x277D07BA8]);
    v13 = [(SPBeaconSharingManager *)self serviceDescription];
    v14 = [v12 initWithServiceDescription:v13];
    [(SPBeaconSharingManager *)self setSession:v14];

    v15 = LogCategory_BeaconSharing();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SPBeaconSharingManager *)self serviceDescription];
      v17 = [v16 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v17;
      _os_log_impl(&dword_2643D0000, v15, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: Establishing XPC connection to %@", location, 0xCu);
    }

    v18 = [(SPBeaconSharingManager *)self session];
    [v18 resume];

    v19 = LogCategory_BeaconSharing();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(SPBeaconSharingManager *)self serviceDescription];
      v21 = [v20 machService];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v21;
      _os_log_impl(&dword_2643D0000, v19, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: Established XPC connection to %@", location, 0xCu);
    }
  }

  v22 = [(SPBeaconSharingManager *)self session];
  v23 = [v22 proxy];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __31__SPBeaconSharingManager_proxy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained interruptionHandler:v3];
}

void __31__SPBeaconSharingManager_proxy__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidationHandler:v3];
}

- (void)interruptionHandler:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: interruptionHandler %@", buf, 0xCu);
  }

  v6 = [(SPBeaconSharingManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SPBeaconSharingManager_interruptionHandler___block_invoke;
  block[3] = &unk_279B58AE8;
  block[4] = self;
  dispatch_async(v6, block);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__SPBeaconSharingManager_interruptionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) shareUpdateBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) retryCount];
    [v3 decayWaitInterval];
    v5 = v4;

    v6 = LogCategory_BeaconSharing();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = v5;
      _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: Will attempt to re-subscribe to share updates after %f seconds", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v7 = dispatch_time(0, (v5 * 1000000000.0));
    v8 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SPBeaconSharingManager_interruptionHandler___block_invoke_9;
    block[3] = &unk_279B58D88;
    objc_copyWeak(&v13, buf);
    dispatch_after(v7, v8, block);

    v9 = [*(a1 + 32) retryCount];
    [v9 increment];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = LogCategory_BeaconSharing();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v10, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: Will *NOT* attempt to re-subscribe to share updates", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__SPBeaconSharingManager_interruptionHandler___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained shareUpdateBlock];
  v3 = LogCategory_BeaconSharing();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager Successfully: re-subscribing to share updates", buf, 2u);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__SPBeaconSharingManager_interruptionHandler___block_invoke_10;
    v5[3] = &unk_279B58A20;
    v5[4] = WeakRetained;
    [WeakRetained startRefreshingSharesWithBlock:v2 completion:v5];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager shareUpdateBlock is nil, not resubscribing.", buf, 2u);
    }
  }
}

void __46__SPBeaconSharingManager_interruptionHandler___block_invoke_10(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = LogCategory_BeaconSharing();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager Successfully: re-subscribed to share updates", v8, 2u);
    }

    v7 = [*(a1 + 32) retryCount];
    [v7 reset];
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __46__SPBeaconSharingManager_interruptionHandler___block_invoke_10_cold_1(v5, v7);
  }
}

- (void)invalidationHandler:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SPBeaconSharingManager *)self serviceDescription];
    v6 = [v5 debugDescription];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "SPBeaconSharingManager: invalidationHandler %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)exportedInterface
{
  if (exportedInterface_onceToken_4 != -1)
  {
    +[SPBeaconSharingManager exportedInterface];
  }

  v3 = exportedInterface_interface_4;

  return v3;
}

void __43__SPBeaconSharingManager_exportedInterface__block_invoke()
{
  v7[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2875FC0E0];
  v1 = exportedInterface_interface_4;
  exportedInterface_interface_4 = v0;

  v2 = exportedInterface_interface_4;
  v3 = MEMORY[0x277CBEB98];
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_receivedUpdatedShares_ argumentIndex:0 ofReply:0];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)remoteInterface
{
  if (remoteInterface_onceToken_6 != -1)
  {
    +[SPBeaconSharingManager remoteInterface];
  }

  v3 = remoteInterface_interface_5;

  return v3;
}

- (void)share:(id)a3 recipients:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__SPBeaconSharingManager_share_recipients_completion___block_invoke;
  v14[3] = &unk_279B593C0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling share:recipient:completion", OS_ACTIVITY_FLAG_DEFAULT, v14);
}

void __54__SPBeaconSharingManager_share_recipients_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPBeaconSharingManager_share_recipients_completion___block_invoke_2;
  block[3] = &unk_279B593C0;
  v3 = a1[5];
  v4 = a1[6];
  v8 = a1[4];
  v5 = a1[7];
  *&v6 = v8;
  *(&v6 + 1) = v5;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  v10 = v7;
  v11 = v6;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __54__SPBeaconSharingManager_share_recipients_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v15 = v3;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Offering a share of %@ to %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [v5 proxy];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__SPBeaconSharingManager_share_recipients_completion___block_invoke_122;
  v10[3] = &unk_279B59778;
  v11 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  [v6 share:v11 recipients:v8 shareType:2 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __54__SPBeaconSharingManager_share_recipients_completion___block_invoke_122(void *a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v10 = 138413058;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Completed offering a share of %@ to %@ (%d, %@)", &v10, 0x26u);
  }

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)share:(id)a3 recipients:(id)a4 shareType:(unint64_t)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke;
  activity_block[3] = &unk_279B593E8;
  activity_block[4] = self;
  v17 = v10;
  v19 = v12;
  v20 = a5;
  v18 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling share:recipient:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke_2;
  block[3] = &unk_279B593E8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v13 = *(a1 + 64);
  v9 = *(a1 + 32);
  v6 = v5;
  *&v7 = v9;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138412546;
    v16 = v3;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Offering a share of %@ to %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v6 = [v5 proxy];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke_124;
  v11[3] = &unk_279B59778;
  v12 = v7;
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  [v6 share:v12 recipients:v8 shareType:v9 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __64__SPBeaconSharingManager_share_recipients_shareType_completion___block_invoke_124(void *a1, int a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[4];
    v8 = a1[5];
    v10 = 138413058;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 1024;
    v15 = a2;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Completed offering a share of %@ to %@ (%d, %@)", &v10, 0x26u);
  }

  (*(a1[6] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__SPBeaconSharingManager_requestShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling requestShare:unknownBeacon:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __50__SPBeaconSharingManager_requestShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SPBeaconSharingManager_requestShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __50__SPBeaconSharingManager_requestShare_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Requesting a share of %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SPBeaconSharingManager_requestShare_completion___block_invoke_125;
  v8[3] = &unk_279B597A0;
  v9 = v6;
  v10 = *(a1 + 48);
  [v5 requestShare:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __50__SPBeaconSharingManager_requestShare_completion___block_invoke_125(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_2643D0000, v6, OS_LOG_TYPE_DEFAULT, "Completed requesting a share of %@ (%d, %@)", &v9, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__SPBeaconSharingManager_removeShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling removeShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__SPBeaconSharingManager_removeShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SPBeaconSharingManager_removeShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __49__SPBeaconSharingManager_removeShare_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Removing share %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SPBeaconSharingManager_removeShare_completion___block_invoke_126;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 removeShare:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)revokeShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__SPBeaconSharingManager_revokeShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling revokeShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__SPBeaconSharingManager_revokeShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SPBeaconSharingManager_revokeShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __49__SPBeaconSharingManager_revokeShare_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Marking revoke for share %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SPBeaconSharingManager_revokeShare_completion___block_invoke_127;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 revokeShare:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)acceptShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__SPBeaconSharingManager_acceptShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling acceptShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__SPBeaconSharingManager_acceptShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SPBeaconSharingManager_acceptShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __49__SPBeaconSharingManager_acceptShare_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Accepting share %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SPBeaconSharingManager_acceptShare_completion___block_invoke_128;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 acceptShare:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)declineShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __50__SPBeaconSharingManager_declineShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling declineShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __50__SPBeaconSharingManager_declineShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SPBeaconSharingManager_declineShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __50__SPBeaconSharingManager_declineShare_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Declining share %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SPBeaconSharingManager_declineShare_completion___block_invoke_129;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 declineShare:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopSharing:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __49__SPBeaconSharingManager_stopSharing_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling stopSharing:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __49__SPBeaconSharingManager_stopSharing_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__SPBeaconSharingManager_stopSharing_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __49__SPBeaconSharingManager_stopSharing_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Stopping sharing for beacon %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SPBeaconSharingManager_stopSharing_completion___block_invoke_130;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 stopSharing:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanupAllRecordsOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __61__SPBeaconSharingManager_cleanupAllRecordsOfType_completion___block_invoke;
  activity_block[3] = &unk_279B597F0;
  v9 = v6;
  v10 = a3;
  activity_block[4] = self;
  v7 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling cleanupAllRecordsOfType:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __61__SPBeaconSharingManager_cleanupAllRecordsOfType_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SPBeaconSharingManager_cleanupAllRecordsOfType_completion___block_invoke_2;
  v5[3] = &unk_279B597F0;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[4] = *(a1 + 32);
  v7 = v3;
  v6 = v4;
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __61__SPBeaconSharingManager_cleanupAllRecordsOfType_completion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "cleanup All Item Sharing Info", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SPBeaconSharingManager_cleanupAllRecordsOfType_completion___block_invoke_131;
  v6[3] = &unk_279B597C8;
  v5 = *(a1 + 48);
  v7 = *(a1 + 40);
  [v4 cleanupAllRecordsOfType:v5 completion:v6];
}

- (void)forceBreakAllSharesOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __63__SPBeaconSharingManager_forceBreakAllSharesOfType_completion___block_invoke;
  activity_block[3] = &unk_279B597F0;
  v9 = v6;
  v10 = a3;
  activity_block[4] = self;
  v7 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling forceBreakAllSharesOfType:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __63__SPBeaconSharingManager_forceBreakAllSharesOfType_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SPBeaconSharingManager_forceBreakAllSharesOfType_completion___block_invoke_2;
  v5[3] = &unk_279B597F0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v7 = *(a1 + 48);
  v5[4] = v4;
  v6 = v3;
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __63__SPBeaconSharingManager_forceBreakAllSharesOfType_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Force breaking all shares of type %lu", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4 proxy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SPBeaconSharingManager_forceBreakAllSharesOfType_completion___block_invoke_132;
  v8[3] = &unk_279B597C8;
  v6 = *(a1 + 48);
  v9 = *(a1 + 40);
  [v5 forceBreakAllSharesOfType:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceBreakAllSharesWithUser:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __65__SPBeaconSharingManager_forceBreakAllSharesWithUser_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling forceBreakAllSharesWithUser:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __65__SPBeaconSharingManager_forceBreakAllSharesWithUser_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SPBeaconSharingManager_forceBreakAllSharesWithUser_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __65__SPBeaconSharingManager_forceBreakAllSharesWithUser_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Force breaking all shares with user %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SPBeaconSharingManager_forceBreakAllSharesWithUser_completion___block_invoke_133;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 forceBreakAllSharesWithUser:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceDeclineShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __55__SPBeaconSharingManager_forceDeclineShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling forceDeclineShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __55__SPBeaconSharingManager_forceDeclineShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SPBeaconSharingManager_forceDeclineShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __55__SPBeaconSharingManager_forceDeclineShare_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "SPOwnerSession: Calling forceDeclineShare of shareIdentifier = %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPBeaconSharingManager_forceDeclineShare_completion___block_invoke_134;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 forceDeclineShare:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)forceStopSharing:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __54__SPBeaconSharingManager_forceStopSharing_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling forceStopSharing:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __54__SPBeaconSharingManager_forceStopSharing_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SPBeaconSharingManager_forceStopSharing_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __54__SPBeaconSharingManager_forceStopSharing_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Force stopping sharing for beacon %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SPBeaconSharingManager_forceStopSharing_completion___block_invoke_135;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 forceStopSharing:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allSharesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling allSharesWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Listing all shares", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke_136;
  v5[3] = &unk_279B59348;
  v6 = *(a1 + 40);
  [v4 allSharesWithCompletion:v5];
}

void __50__SPBeaconSharingManager_allSharesWithCompletion___block_invoke_136(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Completed listing all shares: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allSharesIncludingHiddenWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling allSharesIncludingHidden:completion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Listing all shares, including hidden", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke_138;
  v5[3] = &unk_279B59348;
  v6 = *(a1 + 40);
  [v4 allSharesIncludingHiddenWithCompletion:v5];
}

void __65__SPBeaconSharingManager_allSharesIncludingHiddenWithCompletion___block_invoke_138(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Completed listing all shares, including hidden: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startRefreshingSharesWithBlock:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke;
  activity_block[3] = &unk_279B59868;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling startRefreshingSharesWithBlock:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_2;
  v4[3] = &unk_279B59868;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, v4);

  objc_destroyWeak(&location);
}

void __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Starting share update monitoring", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_139;
  v6[3] = &unk_279B59840;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v6[5] = v3;
  v7 = v5;
  v8 = *(a1 + 48);
  [v4 startRefreshingSharesWithCompletion:v6];
}

void __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_139(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_2_140;
  v11[3] = &unk_279B59818;
  v13 = a2;
  v11[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v11[5] = *(a1 + 40);
  v12 = v8;
  dispatch_sync(v7, v11);

  (*(*(a1 + 56) + 16))(*(a1 + 56), a2, v6, v9, v10);
}

void __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_2_140(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v7 = v1;
    v8 = v2;
    [*(a1 + 32) setShareUpdateBlock:*(a1 + 48)];
    v4 = [*(a1 + 40) proxy];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_3;
    v5[3] = &unk_279B59348;
    v6 = *(a1 + 48);
    [v4 allSharesWithCompletion:v5];
  }
}

void __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(17, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SPBeaconSharingManager_startRefreshingSharesWithBlock_completion___block_invoke_4;
  v7[3] = &unk_279B59398;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)stopRefreshingSharesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SPBeaconSharingManager_stopRefreshingSharesWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling stopRefreshingSharesWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __61__SPBeaconSharingManager_stopRefreshingSharesWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SPBeaconSharingManager_stopRefreshingSharesWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __61__SPBeaconSharingManager_stopRefreshingSharesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Stopping share update monitoring", buf, 2u);
  }

  [*(a1 + 32) setShareUpdateBlock:0];
  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SPBeaconSharingManager_stopRefreshingSharesWithCompletion___block_invoke_141;
  v5[3] = &unk_279B597C8;
  v6 = *(a1 + 40);
  [v4 stopRefreshingSharesWithCompletion:v5];
}

- (void)uploadKeysWithCircleIdentifier:(id)a3 isInitialUpload:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke;
  v12[3] = &unk_279B59890;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  _os_activity_initiate(&dword_2643D0000, "os_activity_initiate: Calling uploadKeysWithCircleIdentifier:isInitialUpload:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke_2;
  block[3] = &unk_279B59890;
  v3 = *(a1 + 40);
  v9 = *(a1 + 56);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = @"low";
    if (*(a1 + 56))
    {
      v4 = @"high";
    }

    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Uploading keys for owner circle identifier: %@, priority: %@", buf, 0x16u);
  }

  v5 = *(a1 + 40);
  v6 = [v5 proxy];
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke_148;
  v10[3] = &unk_279B597C8;
  v11 = *(a1 + 48);
  [v6 uploadKeysWithCircleIdentifier:v7 isInitialUpload:v8 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __84__SPBeaconSharingManager_uploadKeysWithCircleIdentifier_isInitialUpload_completion___block_invoke_148(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Completed keys upload", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)downloadKeysWithCircleIdentifier:(id)a3 fromBookmark:(BOOL)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke;
  v12[3] = &unk_279B59890;
  v12[4] = self;
  v13 = v8;
  v15 = a4;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  _os_activity_initiate(&dword_2643D0000, "os_activity_initiate: Calling downloadKeysWithCircleIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, v12);
}

void __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke_2;
  block[3] = &unk_279B59890;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v9 = *(a1 + 56);
  v8 = *(a1 + 48);
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Downloading keys for member circle identifier: %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke_149;
  v9[3] = &unk_279B597C8;
  v10 = *(a1 + 48);
  [v5 downloadKeysWithCircleIdentifier:v6 fromBookmark:v7 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __83__SPBeaconSharingManager_downloadKeysWithCircleIdentifier_fromBookmark_completion___block_invoke_149(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Completed keys download", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updatedCircleIdentifiers:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __62__SPBeaconSharingManager_updatedCircleIdentifiers_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling updatedCircleIdentifiers:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __62__SPBeaconSharingManager_updatedCircleIdentifiers_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SPBeaconSharingManager_updatedCircleIdentifiers_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __62__SPBeaconSharingManager_updatedCircleIdentifiers_completion___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Updating circle identifiers: %@ ", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__SPBeaconSharingManager_updatedCircleIdentifiers_completion___block_invoke_150;
  v8[3] = &unk_279B597C8;
  v9 = *(a1 + 48);
  [v5 updatedCircleIdentifiers:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)checkDataIntegrityWithShareIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __75__SPBeaconSharingManager_checkDataIntegrityWithShareIdentifier_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling checkDataIntegrityWithShareIdentifier:completion:", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __75__SPBeaconSharingManager_checkDataIntegrityWithShareIdentifier_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__SPBeaconSharingManager_checkDataIntegrityWithShareIdentifier_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __75__SPBeaconSharingManager_checkDataIntegrityWithShareIdentifier_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@": %@", v2];
  }

  else
  {
    v3 = &stru_2875DB468;
  }

  v4 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v4, OS_LOG_TYPE_DEFAULT, "Checking data integrity%@ ", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  v6 = [v5 proxy];
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__SPBeaconSharingManager_checkDataIntegrityWithShareIdentifier_completion___block_invoke_158;
  v9[3] = &unk_279B598B8;
  v10 = *(a1 + 48);
  [v6 checkDataIntegrityWithShareIdentifier:v7 completion:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)lookForOrphanedRecordsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SPBeaconSharingManager_lookForOrphanedRecordsWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling lookForOrphanedRecordsWithCompletion:", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __63__SPBeaconSharingManager_lookForOrphanedRecordsWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SPBeaconSharingManager_lookForOrphanedRecordsWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __63__SPBeaconSharingManager_lookForOrphanedRecordsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Looking for orphaned item sharing records.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SPBeaconSharingManager_lookForOrphanedRecordsWithCompletion___block_invoke_160;
  v5[3] = &unk_279B598E0;
  v6 = *(a1 + 40);
  [v4 lookForOrphanedRecordsWithCompletion:v5];
}

- (void)removeExpiredSharesWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SPBeaconSharingManager_removeExpiredSharesWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling removeExpiredSharesWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __60__SPBeaconSharingManager_removeExpiredSharesWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SPBeaconSharingManager_removeExpiredSharesWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __60__SPBeaconSharingManager_removeExpiredSharesWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Removing expired share suggestions and share requests.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SPBeaconSharingManager_removeExpiredSharesWithCompletion___block_invoke_162;
  v5[3] = &unk_279B597C8;
  v6 = *(a1 + 40);
  [v4 removeExpiredSharesWithCompletion:v5];
}

- (void)sharingLimitsWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SPBeaconSharingManager_sharingLimitsWithCompletion___block_invoke;
  v6[3] = &unk_279B58B80;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling sharingLimitsWithCompletion", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __54__SPBeaconSharingManager_sharingLimitsWithCompletion___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SPBeaconSharingManager_sharingLimitsWithCompletion___block_invoke_2;
  block[3] = &unk_279B58B80;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);

  objc_destroyWeak(&location);
}

void __54__SPBeaconSharingManager_sharingLimitsWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Looking for current share limits.", buf, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [v3 proxy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SPBeaconSharingManager_sharingLimitsWithCompletion___block_invoke_163;
  v5[3] = &unk_279B59908;
  v6 = *(a1 + 40);
  [v4 sharingLimitsWithCompletion:v5];
}

- (void)importSharePreview:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling importSharePreview:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke_2(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] inputUrl];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Previewing delegated share for import url %@", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = [v4 proxy];
  v6 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke_165;
  v8[3] = &unk_279B597A0;
  v9 = v6;
  v10 = a1[6];
  [v5 importSharePreview:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __56__SPBeaconSharingManager_importSharePreview_completion___block_invoke_165(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) inputUrl];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Previewed delegated share for import url %@ (%@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)importDelegatedShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling importDelegatedShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke_2(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] inputUrl];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Importing delegated share %@", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = [v4 proxy];
  v6 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke_166;
  v8[3] = &unk_279B59930;
  v9 = v6;
  v10 = a1[6];
  [v5 importDelegatedShare:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __58__SPBeaconSharingManager_importDelegatedShare_completion___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) inputUrl];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "Imported delegated share %@ (%@)", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeImportedShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling removeImportedShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Removing imported share %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = [v4 proxy];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke_168;
  v8[3] = &unk_279B597A0;
  v9 = v6;
  v10 = *(a1 + 48);
  [v5 removeImportedShare:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __57__SPBeaconSharingManager_removeImportedShare_completion___block_invoke_168(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Remove imported share %@ (%@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)delegatedShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling delegatedShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke_2(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] beaconIdentifier];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Creating delegated share of %@", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = [v4 proxy];
  v6 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke_169;
  v8[3] = &unk_279B59958;
  v9 = v6;
  v10 = a1[6];
  [v5 delegatedShare:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __52__SPBeaconSharingManager_delegatedShare_completion___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) beaconIdentifier];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "Created delegated share of %@ (%@)", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopTemporaryItemLocationShare:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling stopTemporaryItemLocationShare:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke_2(id *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] beaconIdentifier];
    v4 = [a1[4] bundleIdentifier];
    v5 = [v4 appName];
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Stopping temporary item location share of %@ to recipient %@", buf, 0x16u);
  }

  v6 = a1[5];
  v7 = [v6 proxy];
  v8 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke_171;
  v10[3] = &unk_279B597A0;
  v11 = v8;
  v12 = a1[6];
  [v7 stopTemporaryItemLocationShare:v11 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __68__SPBeaconSharingManager_stopTemporaryItemLocationShare_completion___block_invoke_171(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) beaconIdentifier];
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Stopped location share of %@ (%@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)isBeaconDelegated:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke;
  activity_block[3] = &unk_279B58BD0;
  activity_block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Calling isBeaconDelegated:completion", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke_2;
  v5[3] = &unk_279B58BD0;
  v3 = a1[5];
  v4 = a1[4];
  v6 = v3;
  v7 = v4;
  v8 = a1[6];
  dispatch_async(v2, v5);

  objc_destroyWeak(&location);
}

void __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke_2(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] beaconIdentifier];
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Checking if beacon %@ is delegated", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = [v4 proxy];
  v6 = a1[4];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke_172;
  v8[3] = &unk_279B59958;
  v9 = v6;
  v10 = a1[6];
  [v5 getDelegation:v9 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __55__SPBeaconSharingManager_isBeaconDelegated_completion___block_invoke_172(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) beaconIdentifier];
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "Checked delegated share status of %@ , error: (%@)", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)receivedUpdatedShares:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke;
  v6[3] = &unk_279B58C78;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  _os_activity_initiate(&dword_2643D0000, "SPOwnerSession: Called receivedUpdatedShares", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke_2;
  v4[3] = &unk_279B58C78;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_sync(v2, v4);
}

void __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke_2(uint64_t a1)
{
  v2 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v2, OS_LOG_TYPE_DEFAULT, "Received updated shares", buf, 2u);
  }

  v3 = [*(a1 + 32) shareUpdateBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) shareUpdateBlock];
    v5 = dispatch_get_global_queue(17, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke_173;
    v7[3] = &unk_279B59398;
    v9 = v4;
    v8 = *(a1 + 40);
    v6 = v4;
    dispatch_async(v5, v7);
  }
}

void __48__SPBeaconSharingManager_receivedUpdatedShares___block_invoke_173(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v1 = LogCategory_BeaconSharing();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_2643D0000, v1, OS_LOG_TYPE_DEFAULT, "Share update block called.", v2, 2u);
  }
}

void __46__SPBeaconSharingManager_interruptionHandler___block_invoke_10_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2643D0000, a2, OS_LOG_TYPE_ERROR, "SPBeaconSharingManager: Error re-subscribing share updates %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end