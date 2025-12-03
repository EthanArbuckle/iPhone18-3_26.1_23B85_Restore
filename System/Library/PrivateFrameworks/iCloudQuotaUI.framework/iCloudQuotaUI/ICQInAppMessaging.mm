@interface ICQInAppMessaging
+ (id)shared;
- (BOOL)_isCellularDataOff;
- (BOOL)_termsNotAccepted;
- (BOOL)isAirplaneModeEnabled;
- (ICQInAppMessaging)init;
- (id)_accountIdentifier;
- (id)_actionsForBannerSpecification:(id)specification offer:(id)offer;
- (id)_dismissActionForBannerSpecification:(id)specification offer:(id)offer;
- (id)_recalculateCurrentMessage;
- (id)airplaneModeOnMessageFromDefaultOffer:(id)offer;
- (id)cellularConstraintMessageFromDefaultOffer:(id)offer;
- (id)cellularDataOffMessageFromDefaultOffer:(id)offer;
- (id)quotaMessageForOffer:(id)offer;
- (id)serverUnreachableMessageFromDefaultOffer:(id)offer;
- (id)termsNotAcceptedMessageFromDefaultOffer:(id)offer;
- (id)uploadFailureMessageForPendingItemCount:(id)count defaultOffer:(id)offer;
- (unint64_t)_contentTypeForDriveWithOffer:(id)offer;
- (unint64_t)_contentTypeForQuotaOffer:(id)offer;
- (void)_fetchBRCellularConstraintState;
- (void)_fetchDefaultOffer;
- (void)_fetchInitialOfferStates;
- (void)_fetchPremiumOffer;
- (void)_fetchRegularOffer;
- (void)_handleBRCellularConstraintChanged:(id)changed;
- (void)_isCellularDataOff;
- (void)_observeUpdatesForBundleID:(id)d;
- (void)_postMessage:(id)message;
- (void)_recalculateAndPostCurrentMessage;
- (void)_registerForNotifications;
- (void)_startMonitoringNetworkStatus;
- (void)airplaneModeChanged;
- (void)dataSettingsChanged:(id)changed;
- (void)fetchMessageForReason:(id)reason pendingItemsCount:(id)count withCompletion:(id)completion;
- (void)fetchMessageForReason:(id)reason withCompletion:(id)completion;
- (void)fetchMessageWithCompletion:(id)completion;
- (void)observeUpdates;
- (void)observeUpdatesForBundleID:(id)d;
- (void)observeUpdatesForBundleID:(id)d placement:(id)placement;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)stopObservingUpdates;
@end

@implementation ICQInAppMessaging

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[ICQInAppMessaging shared];
  }

  v3 = shared_shared;

  return v3;
}

uint64_t __27__ICQInAppMessaging_shared__block_invoke()
{
  v0 = objc_alloc_init(ICQInAppMessaging);
  v1 = shared_shared;
  shared_shared = v0;

  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.cloud.quota"];
  [shared_shared setDefaults:v2];

  [shared_shared setICloudReachable:1];
  v3 = [MEMORY[0x277D7F390] sharedOfferManager];
  [shared_shared setSharedOfferManager:v3];

  v4 = [MEMORY[0x277CB8F48] defaultStore];
  [shared_shared setAccountStore:v4];

  v5 = shared_shared;

  return [v5 setIsCellularConstraintReached:0];
}

uint64_t __25__ICQInAppMessaging_init__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  v5 = *(*(a1 + 32) + 64);

  return [v5 setDelegate:?];
}

- (ICQInAppMessaging)init
{
  v21.receiver = self;
  v21.super_class = ICQInAppMessaging;
  v2 = [(ICQInAppMessaging *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.icq.in-app-Message", v3);
    messageQueue = v2->_messageQueue;
    v2->_messageQueue = v4;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    bundleID = v2->_bundleID;
    v2->_bundleID = bundleIdentifier;

    objc_storeStrong(&v2->_placement, @"InApp");
    v9 = objc_alloc_init(MEMORY[0x277D7F3C8]);
    unfairLock = v2->_unfairLock;
    v2->_unfairLock = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.icloud.quota.in-app-messaging-connectivity", v11);
    connectivityQueue = v2->_connectivityQueue;
    v2->_connectivityQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.icloud.quota.in-app-messaging-radios-prefs", v14);
    radiosPrefsQueue = v2->_radiosPrefsQueue;
    v2->_radiosPrefsQueue = v15;

    v17 = v2->_radiosPrefsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__ICQInAppMessaging_init__block_invoke;
    block[3] = &unk_27A65A820;
    v20 = v2;
    dispatch_sync(v17, block);
    BRStartCellularConstraintsNotificationsObserver();
  }

  return v2;
}

- (void)observeUpdates
{
  bundleID = [(ICQInAppMessaging *)self bundleID];
  [(ICQInAppMessaging *)self _observeUpdatesForBundleID:bundleID];
}

- (void)_registerForNotifications
{
  defaults = [(ICQInAppMessaging *)self defaults];
  [defaults addObserver:self forKeyPath:@"debug-in-app-message" options:5 context:0];

  [(ICQInAppMessaging *)self _fetchInitialOfferStates];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__fetchRegularOffer name:*MEMORY[0x277D7F2A0] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__fetchPremiumOffer name:*MEMORY[0x277D7F2A8] object:0];

  defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__fetchDefaultOffer name:*MEMORY[0x277D7F298] object:0];

  v7 = *MEMORY[0x277D76758];
  defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__recalculateAndPostCurrentMessage name:v7 object:0];

  defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__handleBRCellularConstraintChanged_ name:*MEMORY[0x277CFABB8] object:0];

  [(ICQInAppMessaging *)self _fetchBRCellularConstraintState];
  [(ICQInAppMessaging *)self _startMonitoringNetworkStatus];
  self->_cellularDataConnection = _CTServerConnectionCreateOnTargetQueue();
  v10 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:self->_connectivityQueue];
  ctClient = self->_ctClient;
  self->_ctClient = v10;

  v12 = self->_ctClient;

  [(CoreTelephonyClient *)v12 setDelegate:self];
}

- (void)_recalculateAndPostCurrentMessage
{
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICQInAppMessaging__recalculateAndPostCurrentMessage__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(messageQueue, block);
}

void __54__ICQInAppMessaging__recalculateAndPostCurrentMessage__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _recalculateCurrentMessage];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) lastMessage];
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v2;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Last in-app message: %{public}@.\nNew in-app message: %{public}@", &v8, 0x16u);
  }

  v5 = [*(a1 + 32) lastMessage];
  if ([v2 isEqual:v5])
  {
  }

  else
  {
    if (v2)
    {

      goto LABEL_12;
    }

    v7 = [*(a1 + 32) lastMessage];

    if (v7)
    {
      goto LABEL_12;
    }
  }

  if ([*(a1 + 32) hasNewObserver])
  {
LABEL_12:
    [*(a1 + 32) _postMessage:v2];
    goto LABEL_13;
  }

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v2;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "In-app messages skipping notification for message because there has been no change to message: %{public}@", &v8, 0xCu);
  }

LABEL_13:
  [*(a1 + 32) setLastMessage:v2];
}

- (id)_recalculateCurrentMessage
{
  dispatch_assert_queue_V2(self->_messageQueue);
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__13;
  v40[3] = __Block_byref_object_dispose__13;
  v41 = 0;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x3032000000;
  v37[2] = __Block_byref_object_copy__13;
  v37[3] = __Block_byref_object_dispose__13;
  v38 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__13;
  v34 = __Block_byref_object_dispose__13;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  unfairLock = [(ICQInAppMessaging *)self unfairLock];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __47__ICQInAppMessaging__recalculateCurrentMessage__block_invoke;
  v21[3] = &unk_27A65C8B8;
  v21[4] = self;
  v21[5] = &v39;
  v21[6] = &v36;
  v21[7] = &v30;
  v21[8] = &v26;
  v21[9] = &v22;
  [unfairLock synchronized:v21];

  mockMessage = [(ICQInAppMessaging *)self mockMessage];

  if (mockMessage)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages sending mock message", v20, 2u);
    }

    mockMessage2 = [(ICQInAppMessaging *)self mockMessage];
    goto LABEL_5;
  }

  if ((v27[3] & 1) == 0)
  {
    if ([(ICQInAppMessaging *)self isAirplaneModeEnabled])
    {
      mockMessage2 = [(ICQInAppMessaging *)self airplaneModeOnMessageFromDefaultOffer:v31[5]];
    }

    else
    {
      _isCellularDataOff = [(ICQInAppMessaging *)self _isCellularDataOff];
      v15 = v31[5];
      if (_isCellularDataOff)
      {
        [(ICQInAppMessaging *)self cellularDataOffMessageFromDefaultOffer:v15];
      }

      else
      {
        [(ICQInAppMessaging *)self serverUnreachableMessageFromDefaultOffer:v15];
      }
      mockMessage2 = ;
    }

    goto LABEL_5;
  }

  if ([(ICQInAppMessaging *)self _termsNotAccepted])
  {
    mockMessage2 = [(ICQInAppMessaging *)self termsNotAcceptedMessageFromDefaultOffer:v31[5]];
LABEL_5:
    v7 = mockMessage2;
    goto LABEL_6;
  }

  v9 = *(v40[0] + 40);
  placement = [(ICQInAppMessaging *)self placement];
  v11 = [v9 messageSpecificationForPlacement:placement];
  if (v11)
  {
    level = [*(v40[0] + 40) level];

    if (level)
    {
      v13 = v40;
LABEL_24:
      mockMessage2 = [(ICQInAppMessaging *)self quotaMessageForOffer:*(*v13 + 40)];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v16 = *(v37[0] + 40);
  placement2 = [(ICQInAppMessaging *)self placement];
  v18 = [v16 messageSpecificationForPlacement:placement2];
  if (v18)
  {
    level2 = [*(v37[0] + 40) level];

    if (level2)
    {
      v13 = v37;
      goto LABEL_24;
    }
  }

  else
  {
  }

  if (*(v23 + 24) == 1)
  {
    mockMessage2 = [(ICQInAppMessaging *)self cellularConstraintMessageFromDefaultOffer:v31[5]];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v39, 8);

  return v7;
}

uint64_t __47__ICQInAppMessaging__recalculateCurrentMessage__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) regularOffer];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) premiumOffer];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) defaultOffer];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) isICloudReachable];
  result = [*(a1 + 32) isCellularConstraintReached];
  *(*(*(a1 + 72) + 8) + 24) = result;
  return result;
}

- (BOOL)_termsNotAccepted
{
  accountStore = [(ICQInAppMessaging *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  aa_needsToVerifyTerms = [aa_primaryAppleAccount aa_needsToVerifyTerms];

  return aa_needsToVerifyTerms;
}

- (void)_fetchInitialOfferStates
{
  [(ICQInAppMessaging *)self _fetchRegularOffer];
  [(ICQInAppMessaging *)self _fetchPremiumOffer];

  [(ICQInAppMessaging *)self _fetchDefaultOffer];
}

- (void)_fetchRegularOffer
{
  objc_initWeak(&location, self);
  sharedOfferManager = [(ICQInAppMessaging *)self sharedOfferManager];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICQInAppMessaging__fetchRegularOffer__block_invoke;
  v5[3] = &unk_27A65C868;
  objc_copyWeak(&v6, &location);
  [sharedOfferManager getOfferForBundleIdentifier:bundleID completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__ICQInAppMessaging__fetchRegularOffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 debugDescription];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "In-app messages received regular offer %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained unfairLock];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __39__ICQInAppMessaging__fetchRegularOffer__block_invoke_95;
  v16 = &unk_27A65C718;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v5;
  v17 = v11;
  [v10 synchronized:&v13];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 _recalculateAndPostCurrentMessage];

  objc_destroyWeak(&v18);
}

void __39__ICQInAppMessaging__fetchRegularOffer__block_invoke_95(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setRegularOffer:v1];
}

- (void)_fetchPremiumOffer
{
  objc_initWeak(&location, self);
  sharedOfferManager = [(ICQInAppMessaging *)self sharedOfferManager];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICQInAppMessaging__fetchPremiumOffer__block_invoke;
  v5[3] = &unk_27A65C890;
  objc_copyWeak(&v6, &location);
  [sharedOfferManager getPremiumOfferForBundleIdentifier:bundleID completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__ICQInAppMessaging__fetchPremiumOffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 debugDescription];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "In-app messages received premium offer %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained unfairLock];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __39__ICQInAppMessaging__fetchPremiumOffer__block_invoke_97;
  v16 = &unk_27A65C718;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v5;
  v17 = v11;
  [v10 synchronized:&v13];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 _recalculateAndPostCurrentMessage];

  objc_destroyWeak(&v18);
}

void __39__ICQInAppMessaging__fetchPremiumOffer__block_invoke_97(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPremiumOffer:v1];
}

- (void)_fetchDefaultOffer
{
  objc_initWeak(&location, self);
  sharedOfferManager = [(ICQInAppMessaging *)self sharedOfferManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ICQInAppMessaging__fetchDefaultOffer__block_invoke;
  v4[3] = &unk_27A65C868;
  objc_copyWeak(&v5, &location);
  [sharedOfferManager getDefaultOfferWithCompletion:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __39__ICQInAppMessaging__fetchDefaultOffer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 debugDescription];
    *buf = 138543362;
    v20 = v8;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "In-app messages received default offer %{public}@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained unfairLock];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __39__ICQInAppMessaging__fetchDefaultOffer__block_invoke_99;
  v16 = &unk_27A65C718;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v5;
  v17 = v11;
  [v10 synchronized:&v13];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 _recalculateAndPostCurrentMessage];

  objc_destroyWeak(&v18);
}

void __39__ICQInAppMessaging__fetchDefaultOffer__block_invoke_99(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDefaultOffer:v1];
}

- (void)_fetchBRCellularConstraintState
{
  v15 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v3 = notify_register_check([*MEMORY[0x277CFABB8] UTF8String], &out_token);
  if (v3)
  {
    v4 = v3;
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "[ICQInAppMessaging _fetchBRCellularConstraintState]";
      v13 = 1024;
      v14 = v4;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "%s: BRCellularConstraintChangedNotification status is %d, bailing", buf, 0x12u);
    }
  }

  else
  {
    state64 = 0;
    if (notify_get_state(out_token, &state64))
    {
      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v12 = "[ICQInAppMessaging _fetchBRCellularConstraintState]";
        _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "%s: notify_get_state status is not okay, bailing", buf, 0xCu);
      }
    }

    else
    {
      unfairLock = [(ICQInAppMessaging *)self unfairLock];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__ICQInAppMessaging__fetchBRCellularConstraintState__block_invoke;
      v8[3] = &unk_27A65B1C8;
      v8[4] = self;
      v8[5] = state64;
      [unfairLock synchronized:v8];
    }

    notify_cancel(out_token);
  }
}

void __52__ICQInAppMessaging__fetchBRCellularConstraintState__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setIsCellularConstraintReached:*(a1 + 40) == 1];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) isCellularConstraintReached];
    v4 = *(a1 + 40);
    v5 = 136315650;
    v6 = "[ICQInAppMessaging _fetchBRCellularConstraintState]_block_invoke";
    v7 = 1024;
    v8 = v3;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "%s: Set cellular constraint state %d. Received %llu", &v5, 0x1Cu);
  }
}

- (void)_startMonitoringNetworkStatus
{
  v3 = nw_path_monitor_create();
  [(ICQInAppMessaging *)self setConnectivityMonitor:v3];

  connectivityMonitor = [(ICQInAppMessaging *)self connectivityMonitor];
  nw_path_monitor_set_queue(connectivityMonitor, self->_connectivityQueue);

  connectivityMonitor2 = [(ICQInAppMessaging *)self connectivityMonitor];
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __50__ICQInAppMessaging__startMonitoringNetworkStatus__block_invoke;
  update_handler[3] = &unk_27A65C818;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(connectivityMonitor2, update_handler);

  connectivityMonitor3 = [(ICQInAppMessaging *)self connectivityMonitor];
  nw_path_monitor_start(connectivityMonitor3);
}

uint64_t __50__ICQInAppMessaging__startMonitoringNetworkStatus__block_invoke(uint64_t a1, nw_path_t path)
{
  v3 = (nw_path_get_status(path) & 0xFFFFFFFD) == 1;
  v4 = [*(a1 + 32) unfairLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ICQInAppMessaging__startMonitoringNetworkStatus__block_invoke_2;
  v6[3] = &unk_27A65A930;
  v6[4] = *(a1 + 32);
  v7 = v3;
  [v4 synchronized:v6];

  return [*(a1 + 32) _recalculateAndPostCurrentMessage];
}

void __50__ICQInAppMessaging__startMonitoringNetworkStatus__block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setICloudReachable:*(a1 + 40)];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "In-app message: iCloud Reachability changed to %@", &v4, 0xCu);
  }
}

- (void)observeUpdatesForBundleID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self observeUpdatesForBundleID:dCopy placement:@"InApp"];
}

- (void)observeUpdatesForBundleID:(id)d placement:(id)placement
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  placementCopy = placement;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = dCopy;
    v20 = 2114;
    v21 = placementCopy;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@ with placement %{public}@", buf, 0x16u);
  }

  bundleID = [(ICQInAppMessaging *)self bundleID];
  v10 = [dCopy isEqualToString:bundleID];

  if ((v10 & 1) == 0)
  {
    unfairLock = [(ICQInAppMessaging *)self unfairLock];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__ICQInAppMessaging_observeUpdatesForBundleID_placement___block_invoke;
    v15 = &unk_27A65A708;
    selfCopy = self;
    v17 = dCopy;
    [unfairLock synchronized:&v12];
  }

  [(ICQInAppMessaging *)self setPlacement:placementCopy, v12, v13, v14, v15, selfCopy];
  [(ICQInAppMessaging *)self setHasNewObserver:1];
  if (![(ICQInAppMessaging *)self isRegisteredForNotifications])
  {
    [(ICQInAppMessaging *)self setIsRegisteredForNotifications:1];
    [(ICQInAppMessaging *)self _registerForNotifications];
  }

  [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage];
}

- (void)stopObservingUpdates
{
  if ([(ICQInAppMessaging *)self isRegisteredForNotifications])
  {
    defaults = [(ICQInAppMessaging *)self defaults];
    [defaults removeObserver:self forKeyPath:@"debug-in-app-message"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    connectivityMonitor = [(ICQInAppMessaging *)self connectivityMonitor];
    nw_path_monitor_cancel(connectivityMonitor);

    [(ICQInAppMessaging *)self setICloudReachable:1];

    [(ICQInAppMessaging *)self setIsRegisteredForNotifications:0];
  }
}

- (void)fetchMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  messageQueue = self->_messageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ICQInAppMessaging_fetchMessageWithCompletion___block_invoke;
  v7[3] = &unk_27A65AF58;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(messageQueue, v7);
}

void __48__ICQInAppMessaging_fetchMessageWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) bundleID];
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "Client requested single in-app message updates in bundle %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) _recalculateCurrentMessage];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) bundleID];
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Returning message: %@, to client: %@", buf, 0x16u);
  }

  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__ICQInAppMessaging_fetchMessageWithCompletion___block_invoke_90;
    v7[3] = &unk_27A65B398;
    v9 = *(a1 + 40);
    v8 = v4;
    [v8 fetchIconIfNeededWithCompletion:v7];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchMessageForReason:(id)reason withCompletion:(id)completion
{
  reasonCopy = reason;
  v7 = [completion copy];
  [(ICQInAppMessaging *)self fetchMessageForReason:reasonCopy pendingItemsCount:0 withCompletion:v7];
}

- (void)fetchMessageForReason:(id)reason pendingItemsCount:(id)count withCompletion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  countCopy = count;
  completionCopy = completion;
  v42 = 0;
  v43[0] = &v42;
  v43[1] = 0x3032000000;
  v43[2] = __Block_byref_object_copy__13;
  v43[3] = __Block_byref_object_dispose__13;
  v44 = 0;
  v39 = 0;
  v40[0] = &v39;
  v40[1] = 0x3032000000;
  v40[2] = __Block_byref_object_copy__13;
  v40[3] = __Block_byref_object_dispose__13;
  v41 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__13;
  v37 = __Block_byref_object_dispose__13;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  unfairLock = [(ICQInAppMessaging *)self unfairLock];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __76__ICQInAppMessaging_fetchMessageForReason_pendingItemsCount_withCompletion___block_invoke;
  v30[3] = &unk_27A65C840;
  v30[4] = self;
  v30[5] = &v42;
  v30[6] = &v39;
  v30[7] = &v33;
  v30[8] = v31;
  [unfairLock synchronized:v30];

  if ([reasonCopy isEqualToString:@"AirplaneModeOn"])
  {
    v12 = [(ICQInAppMessaging *)self airplaneModeOnMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([reasonCopy isEqualToString:@"WiFiConnectivityIssues"])
  {
    v12 = [(ICQInAppMessaging *)self serverUnreachableMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([reasonCopy isEqualToString:@"CellularDataOff"])
  {
    v12 = [(ICQInAppMessaging *)self cellularDataOffMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([reasonCopy isEqualToString:@"TermsNotAccepted"])
  {
    v12 = [(ICQInAppMessaging *)self termsNotAcceptedMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([reasonCopy isEqualToString:@"UploadFailure"])
  {
    v12 = [(ICQInAppMessaging *)self uploadFailureMessageForPendingItemCount:countCopy defaultOffer:v34[5]];
    goto LABEL_19;
  }

  v13 = *(v43[0] + 40);
  placement = [(ICQInAppMessaging *)self placement];
  v15 = [v13 messageSpecificationForPlacement:placement];
  if (v15)
  {
    v16 = [*(v43[0] + 40) level] == 0;

    if (!v16)
    {
      v17 = v43;
LABEL_18:
      v12 = [(ICQInAppMessaging *)self quotaMessageForOffer:*(*v17 + 40)];
LABEL_19:
      v22 = v12;
      if (v12)
      {
        v23 = _ICQGetLogSystem();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          bundleID = [(ICQInAppMessaging *)self bundleID];
          *buf = 138412546;
          v46 = v22;
          v47 = 2112;
          v48 = bundleID;
          _os_log_impl(&dword_275623000, v23, OS_LOG_TYPE_DEFAULT, "Returning in-app message: %@, to client: %@", buf, 0x16u);
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __76__ICQInAppMessaging_fetchMessageForReason_pendingItemsCount_withCompletion___block_invoke_91;
        v27[3] = &unk_27A65B398;
        v29 = completionCopy;
        v25 = v22;
        v28 = v25;
        [v25 fetchIconIfNeededWithCompletion:v27];

        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else
  {
  }

  v18 = *(v40[0] + 40);
  placement2 = [(ICQInAppMessaging *)self placement];
  v20 = [v18 messageSpecificationForPlacement:placement2];
  if (!v20)
  {

    goto LABEL_24;
  }

  v21 = [*(v40[0] + 40) level] == 0;

  if (!v21)
  {
    v17 = v40;
    goto LABEL_18;
  }

LABEL_24:
  v26 = _ICQGetLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [ICQInAppMessaging fetchMessageForReason:reasonCopy pendingItemsCount:v26 withCompletion:?];
  }

  v25 = ICQCreateError();
  (*(completionCopy + 2))(completionCopy, 0, v25);
LABEL_27:

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v42, 8);
}

uint64_t __76__ICQInAppMessaging_fetchMessageForReason_pendingItemsCount_withCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) regularOffer];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) premiumOffer];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) defaultOffer];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  result = [*(a1 + 32) isICloudReachable];
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (BOOL)isAirplaneModeEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  radiosPrefsQueue = self->_radiosPrefsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__ICQInAppMessaging_isAirplaneModeEnabled__block_invoke;
  v5[3] = &unk_27A65B320;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(radiosPrefsQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __42__ICQInAppMessaging_isAirplaneModeEnabled__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) radioPrefs];
  *(*(*(a1 + 40) + 8) + 24) = [v2 airplaneMode];
}

- (void)airplaneModeChanged
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    isAirplaneModeEnabled = [(ICQInAppMessaging *)self isAirplaneModeEnabled];
    v5 = @"NO";
    if (isAirplaneModeEnabled)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "In-app message: Airplane mode changed to %@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage];
}

- (void)dataSettingsChanged:(id)changed
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInAppMessaging dataSettingsChanged:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "In-app message: %s", &v5, 0xCu);
  }

  [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [(ICQInAppMessaging *)self defaults:path];
  v11 = [v7 objectForKey:@"debug-in-app-message"];

  null = [MEMORY[0x277CBEB68] null];
  v9 = [v11 isEqual:null];

  if (v9)
  {
    [(ICQInAppMessaging *)self setMockMessage:0];
  }

  else
  {
    v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
    [(ICQInAppMessaging *)self setMockMessage:v10];

    [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage];
  }
}

- (unint64_t)_contentTypeForQuotaOffer:(id)offer
{
  offerCopy = offer;
  bundleID = [(ICQInAppMessaging *)self bundleID];
  if ([bundleID isEqualToString:@"com.apple.iCloudDriveApp"])
  {
    goto LABEL_6;
  }

  bundleID2 = [(ICQInAppMessaging *)self bundleID];
  if ([bundleID2 isEqualToString:@"com.apple.finder"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  bundleID3 = [(ICQInAppMessaging *)self bundleID];
  if ([bundleID3 isEqualToString:@"com.apple.DocumentsApp"])
  {

    goto LABEL_5;
  }

  bundleID4 = [(ICQInAppMessaging *)self bundleID];
  v12 = [bundleID4 isEqualToString:@"com.apple.appkit.xpc.openAndSavePanelService"];

  if ((v12 & 1) == 0)
  {
    v8 = [(ICQInAppMessaging *)self _contentTypeForMessageWithOffer:offerCopy];
    goto LABEL_8;
  }

LABEL_7:
  v8 = [(ICQInAppMessaging *)self _contentTypeForDriveWithOffer:offerCopy];
LABEL_8:
  v9 = v8;

  return v9;
}

- (unint64_t)_contentTypeForDriveWithOffer:(id)offer
{
  if ([offer level] == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)_actionsForBannerSpecification:(id)specification offer:(id)offer
{
  v20 = *MEMORY[0x277D85DE8];
  specificationCopy = specification;
  offerCopy = offer;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  links = [specificationCopy links];
  v9 = [links countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(links);
        }

        v13 = [[ICQLinkInAppAction alloc] initWithLink:*(*(&v15 + 1) + 8 * i) inOffer:offerCopy];
        [v7 addObject:v13];
      }

      v10 = [links countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_dismissActionForBannerSpecification:(id)specification offer:(id)offer
{
  specificationCopy = specification;
  offerCopy = offer;
  dismissLink = [specificationCopy dismissLink];

  if (dismissLink)
  {
    v8 = [ICQLinkInAppAction alloc];
    dismissLink2 = [specificationCopy dismissLink];
    dismissLink = [(ICQLinkInAppAction *)v8 initWithLink:dismissLink2 inOffer:offerCopy];
  }

  return dismissLink;
}

- (id)quotaMessageForOffer:(id)offer
{
  v40 = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isPremiumOffer = [offerCopy isPremiumOffer];
    v7 = @"regular";
    if (isPremiumOffer)
    {
      v7 = @"premium";
    }

    *buf = 138543362;
    v39 = v7;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages sending %{public}@ offer message", buf, 0xCu);
  }

  deviceInfo = [offerCopy deviceInfo];
  placement = [(ICQInAppMessaging *)self placement];
  v10 = [offerCopy messageSpecificationForPlacement:placement];

  v11 = [deviceInfo key];
  v36 = [v10 titleWithKey:v11];

  v12 = [deviceInfo key];
  v35 = [v10 messageWithKey:v12];

  v37 = deviceInfo;
  v13 = [deviceInfo key];
  v34 = [v10 conciseTitleWithKey:v13];

  symbolSpecification = [v10 symbolSpecification];
  sfSymbolId = [symbolSpecification sfSymbolId];

  if (sfSymbolId)
  {
    sfSymbolId2 = [symbolSpecification sfSymbolId];
  }

  else
  {
    sfSymbolId2 = @"exclamationmark.triangle";
  }

  sfSymbolColor = [symbolSpecification sfSymbolColor];

  v33 = symbolSpecification;
  if (sfSymbolColor)
  {
    sfSymbolColor2 = [symbolSpecification sfSymbolColor];
    v32 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:sfSymbolColor2];
  }

  else
  {
    v32 = 0;
  }

  v29 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v10 offer:offerCopy];
  v28 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v10 offer:offerCopy];
  reason = [v10 reason];
  v19 = [(ICQInAppMessaging *)self _contentTypeForQuotaOffer:offerCopy];
  v20 = [ICQInAppMessage alloc];
  offerId = [offerCopy offerId];
  [(ICQInAppMessaging *)self _accountIdentifier];
  v22 = v31 = offerCopy;
  bundleID = [(ICQInAppMessaging *)self bundleID];
  iconSpecification = [v10 iconSpecification];
  LOBYTE(v26) = 1;
  v27 = [(ICQInAppMessage *)v20 initWithContentType:v19 identifier:offerId reason:reason title:v36 subTitle:v35 conciseTitle:v34 sfSymbolName:sfSymbolId2 sfSymbolColor:v32 accountId:v22 bundleID:bundleID actions:v29 dismissAction:v28 iconSpecification:iconSpecification serverGenerated:v26];

  return v27;
}

- (id)airplaneModeOnMessageFromDefaultOffer:(id)offer
{
  v53[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "In-app messages sending airplane mode message", buf, 2u);
  }

  deviceInfo = [offerCopy deviceInfo];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v8 = [offerCopy messageSpecificationForReason:@"AirplaneModeOn" bundleId:bundleID placement:placement];

  v45 = deviceInfo;
  if (v8)
  {
    v9 = [deviceInfo key];
    v48 = [v8 titleWithKey:v9];

    v10 = [deviceInfo key];
    v11 = [v8 messageWithKey:v10];

    v12 = [deviceInfo key];
    v13 = [v8 conciseTitleWithKey:v12];

    symbolSpecification = [v8 symbolSpecification];
    sfSymbolId = [symbolSpecification sfSymbolId];

    if (sfSymbolId)
    {
      sfSymbolId2 = [symbolSpecification sfSymbolId];
    }

    else
    {
      sfSymbolId2 = @"exclamationmark.triangle";
    }

    sfSymbolColor = [symbolSpecification sfSymbolColor];

    v43 = v13;
    v44 = v11;
    v41 = sfSymbolId2;
    v42 = symbolSpecification;
    if (sfSymbolColor)
    {
      sfSymbolColor2 = [symbolSpecification sfSymbolColor];
      v47 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:sfSymbolColor2];
    }

    else
    {
      v47 = 0;
    }

    _accountIdentifier2 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:offerCopy];
    bundleID3 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:offerCopy];
    v36 = [ICQInAppMessage alloc];
    _accountIdentifier = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID2 = [(ICQInAppMessaging *)self bundleID];
    iconSpecification = [v8 iconSpecification];
    LOBYTE(v40) = 1;
    v26 = v41;
    v38 = v36;
    v25 = v44;
    v23 = v43;
    v33 = [(ICQInAppMessage *)v38 initWithContentType:0 identifier:@"AirplaneMode" reason:@"AirplaneModeOn" title:v48 subTitle:v44 conciseTitle:v43 sfSymbolName:v41 sfSymbolColor:v47 accountId:_accountIdentifier bundleID:bundleID2 actions:_accountIdentifier2 dismissAction:bundleID3 iconSpecification:iconSpecification serverGenerated:v40];

    v24 = v42;
  }

  else
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "No message content found for Airplane Mode On, using default message", buf, 2u);
    }

    v18 = MEMORY[0x277D7F370];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"AIRPLANE_MODE_ON_BUTTON_TITLE" value:? table:?];
    v52 = *MEMORY[0x277D7F280];
    v53[0] = *MEMORY[0x277D7F2C8];
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v48 = [v18 linkWithText:v20 options:0 action:6 parameters:v21];

    v22 = [[ICQLinkInAppAction alloc] initWithLink:v48];
    v46 = [ICQInAppMessage alloc];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"AIRPLANE_MODE_ON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v25 = v22;
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"AIRPLANE_MODE_ON_SUBTITLE" value:&stru_28844FC60 table:@"Localizable"];
    _accountIdentifier2 = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID3 = [(ICQInAppMessaging *)self bundleID];
    v51 = v25;
    _accountIdentifier = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    bundleID2 = [0 iconSpecification];
    v32 = v46;
    v47 = v27;
    v33 = [(ICQInAppMessage *)v32 initWithContentType:0 identifier:@"AirplaneMode" reason:@"AirplaneModeOn" title:v24 subTitle:v27 sfSymbolName:0 accountId:_accountIdentifier2 bundleID:bundleID3 actions:_accountIdentifier iconSpecification:bundleID2];
    v8 = 0;
  }

  return v33;
}

- (id)serverUnreachableMessageFromDefaultOffer:(id)offer
{
  offerCopy = offer;
  deviceInfo = [offerCopy deviceInfo];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v44 = offerCopy;
  v8 = [offerCopy messageSpecificationForReason:@"WiFiConnectivityIssues" bundleId:bundleID placement:placement];

  if (v8)
  {
    v9 = [deviceInfo key];
    v10 = [v8 titleWithKey:v9];

    v11 = [deviceInfo key];
    v42 = [v8 messageWithKey:v11];

    v12 = [deviceInfo key];
    v13 = [v8 conciseTitleWithKey:v12];

    symbolSpecification = [v8 symbolSpecification];
    sfSymbolId = [symbolSpecification sfSymbolId];

    if (sfSymbolId)
    {
      sfSymbolId2 = [symbolSpecification sfSymbolId];
    }

    else
    {
      sfSymbolId2 = @"exclamationmark.triangle";
    }

    v43 = deviceInfo;
    sfSymbolColor = [symbolSpecification sfSymbolColor];

    v45 = v10;
    v40 = symbolSpecification;
    v41 = v13;
    if (sfSymbolColor)
    {
      sfSymbolColor2 = [symbolSpecification sfSymbolColor];
      v38 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:sfSymbolColor2];
    }

    else
    {
      v38 = 0;
    }

    v29 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v44];
    v37 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v44];
    v30 = [ICQInAppMessage alloc];
    _accountIdentifier = [(ICQInAppMessaging *)self _accountIdentifier];
    [(ICQInAppMessaging *)self bundleID];
    v33 = v32 = v8;
    iconSpecification = [v32 iconSpecification];
    LOBYTE(v36) = 1;
    bundleID2 = v38;
    v23 = sfSymbolId2;
    v19 = v42;
    v18 = v41;
    v26 = [(ICQInAppMessage *)v30 initWithContentType:4 identifier:@"ServerUnreeachable" reason:@"WiFiConnectivityIssues" title:v45 subTitle:v42 conciseTitle:v41 sfSymbolName:sfSymbolId2 sfSymbolColor:v38 accountId:_accountIdentifier bundleID:v33 actions:v29 dismissAction:v37 iconSpecification:iconSpecification serverGenerated:v36];

    v8 = v32;
    iconSpecification2 = v29;

    deviceInfo = v43;
    v20 = v40;
  }

  else
  {
    v16 = [ICQInAppMessage alloc];
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v45 localizedStringForKey:@"SERVER_UNREACHABLE_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = v17;
    v20 = [v18 localizedStringForKey:@"SERVER_UNREACHABLE_SUBTITLE" value:&stru_28844FC60 table:@"Localizable"];
    _accountIdentifier2 = [(ICQInAppMessaging *)self _accountIdentifier];
    selfCopy = self;
    v23 = _accountIdentifier2;
    bundleID2 = [(ICQInAppMessaging *)selfCopy bundleID];
    iconSpecification2 = [0 iconSpecification];
    v26 = [(ICQInAppMessage *)v16 initWithContentType:4 identifier:@"ServerUnreeachable" reason:@"WiFiConnectivityIssues" title:v19 subTitle:v20 sfSymbolName:0 accountId:v23 bundleID:bundleID2 actions:MEMORY[0x277CBEBF8] iconSpecification:iconSpecification2];
  }

  return v26;
}

- (id)cellularDataOffMessageFromDefaultOffer:(id)offer
{
  v50[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  deviceInfo = [offerCopy deviceInfo];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v8 = [offerCopy messageSpecificationForReason:@"CellularDataOff" bundleId:bundleID placement:placement];

  v47 = deviceInfo;
  v45 = offerCopy;
  if (v8)
  {
    v9 = [deviceInfo key];
    v43 = [v8 titleWithKey:v9];

    v10 = [deviceInfo key];
    v41 = [v8 messageWithKey:v10];

    v11 = [deviceInfo key];
    v40 = [v8 conciseTitleWithKey:v11];

    symbolSpecification = [v8 symbolSpecification];
    sfSymbolId = [symbolSpecification sfSymbolId];

    if (sfSymbolId)
    {
      sfSymbolId2 = [symbolSpecification sfSymbolId];
    }

    else
    {
      sfSymbolId2 = @"exclamationmark.triangle";
    }

    sfSymbolColor = [symbolSpecification sfSymbolColor];

    v38 = symbolSpecification;
    if (sfSymbolColor)
    {
      sfSymbolColor2 = [symbolSpecification sfSymbolColor];
      sfSymbolColor = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:sfSymbolColor2];
    }

    v30 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:offerCopy];
    v31 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:offerCopy];
    v32 = [ICQInAppMessage alloc];
    _accountIdentifier = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID2 = [(ICQInAppMessaging *)self bundleID];
    iconSpecification = [v8 iconSpecification];
    LOBYTE(v37) = 1;
    v46 = [(ICQInAppMessage *)v32 initWithContentType:0 identifier:@"CellularDataOff" reason:@"CellularDataOff" title:v43 subTitle:v41 conciseTitle:v40 sfSymbolName:sfSymbolId2 sfSymbolColor:sfSymbolColor accountId:_accountIdentifier bundleID:bundleID2 actions:v30 dismissAction:v31 iconSpecification:iconSpecification serverGenerated:v37];
  }

  else
  {
    v14 = MEMORY[0x277D7F370];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CELLULAR_OFF_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v49 = *MEMORY[0x277D7F280];
    v50[0] = *MEMORY[0x277D7F290];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v44 = [v14 linkWithText:v16 options:0 action:6 parameters:v17];

    v18 = [[ICQLinkInAppAction alloc] initWithLink:v44];
    v42 = [ICQInAppMessage alloc];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"CELLULAR_OFF_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"CELLULAR_OFF_SUBTITLE" value:&stru_28844FC60 table:@"Localizable"];
    _accountIdentifier2 = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID3 = [(ICQInAppMessaging *)self bundleID];
    v48 = v18;
    v25 = v18;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    iconSpecification2 = [0 iconSpecification];
    v46 = [(ICQInAppMessage *)v42 initWithContentType:0 identifier:@"CellularDataOff" reason:@"CellularDataOff" title:v20 subTitle:v22 sfSymbolName:0 accountId:_accountIdentifier2 bundleID:bundleID3 actions:v26 iconSpecification:iconSpecification2];
  }

  return v46;
}

- (id)termsNotAcceptedMessageFromDefaultOffer:(id)offer
{
  v54[1] = *MEMORY[0x277D85DE8];
  offerCopy = offer;
  deviceInfo = [offerCopy deviceInfo];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v8 = [offerCopy messageSpecificationForReason:@"TermsNotAccepted" bundleId:bundleID placement:placement];

  v49 = deviceInfo;
  v50 = offerCopy;
  if (v8)
  {
    v9 = [deviceInfo key];
    v46 = [v8 titleWithKey:v9];

    v10 = [deviceInfo key];
    v44 = [v8 messageWithKey:v10];

    v11 = [deviceInfo key];
    v43 = [v8 conciseTitleWithKey:v11];

    symbolSpecification = [v8 symbolSpecification];
    sfSymbolId = [symbolSpecification sfSymbolId];

    if (sfSymbolId)
    {
      sfSymbolId2 = [symbolSpecification sfSymbolId];
    }

    else
    {
      sfSymbolId2 = @"exclamationmark.triangle";
    }

    sfSymbolColor = [symbolSpecification sfSymbolColor];

    v41 = symbolSpecification;
    if (sfSymbolColor)
    {
      sfSymbolColor2 = [symbolSpecification sfSymbolColor];
      v32 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:sfSymbolColor2];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:offerCopy];
    v34 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:offerCopy];
    v35 = [ICQInAppMessage alloc];
    _accountIdentifier = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID2 = [(ICQInAppMessaging *)self bundleID];
    iconSpecification = [v8 iconSpecification];
    LOBYTE(v40) = 1;
    v48 = [(ICQInAppMessage *)v35 initWithContentType:1 identifier:@"TermsNotAccepted" reason:@"TermsNotAccepted" title:v46 subTitle:v44 conciseTitle:v43 sfSymbolName:sfSymbolId2 sfSymbolColor:v32 accountId:_accountIdentifier bundleID:bundleID2 actions:v33 dismissAction:v34 iconSpecification:iconSpecification serverGenerated:v40];

    v29 = v50;
  }

  else
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "No message content found for Terms not Accepted, using default message", buf, 2u);
    }

    v15 = MEMORY[0x277D7F370];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"TERMS_NOT_ACCEPTED_BUTTON_TITLE" value:? table:?];
    v53 = *MEMORY[0x277D7F280];
    v54[0] = @"https://setup.icloud.com/email/prefs/storage?root=APPLE_ACCOUNT";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v47 = [v15 linkWithText:v17 options:0 action:6 parameters:v18];

    v19 = [[ICQLinkInAppAction alloc] initWithLink:v47];
    v45 = [ICQInAppMessage alloc];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"TERMS_NOT_ACCEPTED_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"TERMS_NOT_ACCEPTED_SUBTITLE" value:&stru_28844FC60 table:@"Localizable"];
    _accountIdentifier2 = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID3 = [(ICQInAppMessaging *)self bundleID];
    v52 = v19;
    v26 = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    iconSpecification2 = [0 iconSpecification];
    v48 = [(ICQInAppMessage *)v45 initWithContentType:1 identifier:@"TermsNotAccepted" reason:@"TermsNotAccepted" title:v21 subTitle:v23 sfSymbolName:0 accountId:_accountIdentifier2 bundleID:bundleID3 actions:v27 iconSpecification:iconSpecification2];

    v29 = v50;
  }

  return v48;
}

- (id)uploadFailureMessageForPendingItemCount:(id)count defaultOffer:(id)offer
{
  countCopy = count;
  offerCopy = offer;
  v8 = [MEMORY[0x277D7F3D0] templateKeyForItemCount:countCopy];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v11 = [offerCopy messageSpecificationForReason:@"UploadFailure" bundleId:bundleID placement:placement];

  if (v11)
  {
    v12 = [MEMORY[0x277D7F3D0] wordsToReplaceForItemCount:countCopy];
    v13 = MEMORY[0x277D7F3E0];
    v14 = [v11 titleWithKey:v8];
    v32 = v12;
    v31 = [v13 replaceWordsIn:v14 with:v12];

    v15 = MEMORY[0x277D7F3E0];
    v16 = [v11 messageWithKey:v8];
    v29 = [v15 replaceWordsIn:v16 with:v12];

    v28 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v11 offer:offerCopy];
    v27 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v11 offer:offerCopy];
    v30 = offerCopy;
    v17 = countCopy;
    v18 = [ICQInAppMessage alloc];
    _accountIdentifier = [(ICQInAppMessaging *)self _accountIdentifier];
    bundleID2 = [(ICQInAppMessaging *)self bundleID];
    [v11 iconSpecification];
    v22 = v21 = v8;
    LOBYTE(v26) = 1;
    v23 = v18;
    countCopy = v17;
    offerCopy = v30;
    v24 = [(ICQInAppMessage *)v23 initWithContentType:1 identifier:@"UploadFailure" reason:@"UploadFailure" title:v31 subTitle:v29 sfSymbolName:0 accountId:_accountIdentifier bundleID:bundleID2 actions:v28 dismissAction:v27 iconSpecification:v22 serverGenerated:v26];

    v8 = v21;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)cellularConstraintMessageFromDefaultOffer:(id)offer
{
  offerCopy = offer;
  deviceInfo = [offerCopy deviceInfo];
  bundleID = [(ICQInAppMessaging *)self bundleID];
  placement = [(ICQInAppMessaging *)self placement];
  v8 = [offerCopy messageSpecificationForReason:@"CellularConstraintReached" bundleId:bundleID placement:placement];

  if (v8)
  {
    v9 = [deviceInfo key];
    v22 = [v8 titleWithKey:v9];

    v10 = [deviceInfo key];
    v11 = [v8 messageWithKey:v10];

    v12 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:offerCopy];
    v13 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:offerCopy];
    v14 = [ICQInAppMessage alloc];
    [(ICQInAppMessaging *)self _accountIdentifier];
    v15 = v23 = deviceInfo;
    bundleID2 = [(ICQInAppMessaging *)self bundleID];
    iconSpecification = [v8 iconSpecification];
    LOBYTE(v21) = 1;
    v18 = [(ICQInAppMessage *)v14 initWithContentType:0 identifier:@"CellularConstraintReached" reason:@"CellularConstraintReached" title:v22 subTitle:v11 sfSymbolName:0 accountId:v15 bundleID:bundleID2 actions:v12 dismissAction:v13 iconSpecification:iconSpecification serverGenerated:v21];

    deviceInfo = v23;
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "No message content found for Cellular Constraint using default message", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)_postMessage:(id)message
{
  v12 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  [(ICQInAppMessaging *)self setHasNewObserver:0];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = messageCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages posting notification for message: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ICQInAppMessaging__postMessage___block_invoke;
  block[3] = &unk_27A65A820;
  v9 = messageCopy;
  v6 = messageCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
  bundleID = [(ICQInAppMessaging *)self bundleID];
  [ICQAnalytics logInAppBannerImpressionWithAppIdentifier:bundleID];
}

void __34__ICQInAppMessaging__postMessage___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __34__ICQInAppMessaging__postMessage___block_invoke_2;
    v3[3] = &unk_27A65A820;
    v4 = v1;
    [v4 fetchIconIfNeededWithCompletion:v3];
  }

  else
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"ICQCurrentInAppMessageChangedNotification" object:0 userInfo:MEMORY[0x277CBEC10]];
  }
}

void __34__ICQInAppMessaging__postMessage___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *(a1 + 32);
  v5 = @"ICQInAppMessage";
  v6[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"ICQCurrentInAppMessageChangedNotification" object:0 userInfo:v4];
}

- (id)_accountIdentifier
{
  accountStore = [(ICQInAppMessaging *)self accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];
  identifier = [aa_primaryAppleAccount identifier];

  return identifier;
}

- (BOOL)_isCellularDataOff
{
  v6 = 1;
  v5 = 1;
  CellularDataSettings = _CTServerConnectionGetCellularDataSettings();
  if (CellularDataSettings)
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(ICQInAppMessaging *)CellularDataSettings _isCellularDataOff];
    }
  }

  return v5 == 0;
}

- (void)_handleBRCellularConstraintChanged:(id)changed
{
  changedCopy = changed;
  unfairLock = [(ICQInAppMessaging *)self unfairLock];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__ICQInAppMessaging__handleBRCellularConstraintChanged___block_invoke;
  v10 = &unk_27A65A708;
  selfCopy = self;
  v12 = changedCopy;
  v6 = changedCopy;
  [unfairLock synchronized:&v7];

  [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage:v7];
}

void __56__ICQInAppMessaging__handleBRCellularConstraintChanged___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CFABC0]];
  [*(a1 + 32) setIsCellularConstraintReached:{objc_msgSend(v3, "BOOLValue")}];

  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) isCellularConstraintReached];
    v6 = 136315394;
    v7 = "[ICQInAppMessaging _handleBRCellularConstraintChanged:]_block_invoke";
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s isCellularConstraintReached: %d", &v6, 0x12u);
  }
}

- (void)_observeUpdatesForBundleID:(id)d
{
  v8 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = dCopy;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self observeUpdatesForBundleID:dCopy placement:@"InApp"];
}

- (void)fetchMessageForReason:(uint64_t)a1 pendingItemsCount:(NSObject *)a2 withCompletion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Unable to find in-app message for reason %@", &v2, 0xCu);
}

- (void)_isCellularDataOff
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = self;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Error retrieving state for cellular data switch. Domain: %d, error: %d", v3, 0xEu);
}

@end