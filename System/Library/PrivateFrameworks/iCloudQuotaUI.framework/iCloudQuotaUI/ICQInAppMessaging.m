@interface ICQInAppMessaging
+ (id)shared;
- (BOOL)_isCellularDataOff;
- (BOOL)_termsNotAccepted;
- (BOOL)isAirplaneModeEnabled;
- (ICQInAppMessaging)init;
- (id)_accountIdentifier;
- (id)_actionsForBannerSpecification:(id)a3 offer:(id)a4;
- (id)_dismissActionForBannerSpecification:(id)a3 offer:(id)a4;
- (id)_recalculateCurrentMessage;
- (id)airplaneModeOnMessageFromDefaultOffer:(id)a3;
- (id)cellularConstraintMessageFromDefaultOffer:(id)a3;
- (id)cellularDataOffMessageFromDefaultOffer:(id)a3;
- (id)quotaMessageForOffer:(id)a3;
- (id)serverUnreachableMessageFromDefaultOffer:(id)a3;
- (id)termsNotAcceptedMessageFromDefaultOffer:(id)a3;
- (id)uploadFailureMessageForPendingItemCount:(id)a3 defaultOffer:(id)a4;
- (unint64_t)_contentTypeForDriveWithOffer:(id)a3;
- (unint64_t)_contentTypeForQuotaOffer:(id)a3;
- (void)_fetchBRCellularConstraintState;
- (void)_fetchDefaultOffer;
- (void)_fetchInitialOfferStates;
- (void)_fetchPremiumOffer;
- (void)_fetchRegularOffer;
- (void)_handleBRCellularConstraintChanged:(id)a3;
- (void)_isCellularDataOff;
- (void)_observeUpdatesForBundleID:(id)a3;
- (void)_postMessage:(id)a3;
- (void)_recalculateAndPostCurrentMessage;
- (void)_registerForNotifications;
- (void)_startMonitoringNetworkStatus;
- (void)airplaneModeChanged;
- (void)dataSettingsChanged:(id)a3;
- (void)fetchMessageForReason:(id)a3 pendingItemsCount:(id)a4 withCompletion:(id)a5;
- (void)fetchMessageForReason:(id)a3 withCompletion:(id)a4;
- (void)fetchMessageWithCompletion:(id)a3;
- (void)observeUpdates;
- (void)observeUpdatesForBundleID:(id)a3;
- (void)observeUpdatesForBundleID:(id)a3 placement:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

    v6 = [MEMORY[0x277CCA8D8] mainBundle];
    v7 = [v6 bundleIdentifier];
    bundleID = v2->_bundleID;
    v2->_bundleID = v7;

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
  v3 = [(ICQInAppMessaging *)self bundleID];
  [(ICQInAppMessaging *)self _observeUpdatesForBundleID:v3];
}

- (void)_registerForNotifications
{
  v3 = [(ICQInAppMessaging *)self defaults];
  [v3 addObserver:self forKeyPath:@"debug-in-app-message" options:5 context:0];

  [(ICQInAppMessaging *)self _fetchInitialOfferStates];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__fetchRegularOffer name:*MEMORY[0x277D7F2A0] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 addObserver:self selector:sel__fetchPremiumOffer name:*MEMORY[0x277D7F2A8] object:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__fetchDefaultOffer name:*MEMORY[0x277D7F298] object:0];

  v7 = *MEMORY[0x277D76758];
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 addObserver:self selector:sel__recalculateAndPostCurrentMessage name:v7 object:0];

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 addObserver:self selector:sel__handleBRCellularConstraintChanged_ name:*MEMORY[0x277CFABB8] object:0];

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
  v3 = [(ICQInAppMessaging *)self unfairLock];
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
  [v3 synchronized:v21];

  v4 = [(ICQInAppMessaging *)self mockMessage];

  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages sending mock message", v20, 2u);
    }

    v6 = [(ICQInAppMessaging *)self mockMessage];
    goto LABEL_5;
  }

  if ((v27[3] & 1) == 0)
  {
    if ([(ICQInAppMessaging *)self isAirplaneModeEnabled])
    {
      v6 = [(ICQInAppMessaging *)self airplaneModeOnMessageFromDefaultOffer:v31[5]];
    }

    else
    {
      v14 = [(ICQInAppMessaging *)self _isCellularDataOff];
      v15 = v31[5];
      if (v14)
      {
        [(ICQInAppMessaging *)self cellularDataOffMessageFromDefaultOffer:v15];
      }

      else
      {
        [(ICQInAppMessaging *)self serverUnreachableMessageFromDefaultOffer:v15];
      }
      v6 = ;
    }

    goto LABEL_5;
  }

  if ([(ICQInAppMessaging *)self _termsNotAccepted])
  {
    v6 = [(ICQInAppMessaging *)self termsNotAcceptedMessageFromDefaultOffer:v31[5]];
LABEL_5:
    v7 = v6;
    goto LABEL_6;
  }

  v9 = *(v40[0] + 40);
  v10 = [(ICQInAppMessaging *)self placement];
  v11 = [v9 messageSpecificationForPlacement:v10];
  if (v11)
  {
    v12 = [*(v40[0] + 40) level];

    if (v12)
    {
      v13 = v40;
LABEL_24:
      v6 = [(ICQInAppMessaging *)self quotaMessageForOffer:*(*v13 + 40)];
      goto LABEL_5;
    }
  }

  else
  {
  }

  v16 = *(v37[0] + 40);
  v17 = [(ICQInAppMessaging *)self placement];
  v18 = [v16 messageSpecificationForPlacement:v17];
  if (v18)
  {
    v19 = [*(v37[0] + 40) level];

    if (v19)
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
    v6 = [(ICQInAppMessaging *)self cellularConstraintMessageFromDefaultOffer:v31[5]];
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
  v2 = [(ICQInAppMessaging *)self accountStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_needsToVerifyTerms];

  return v4;
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
  v3 = [(ICQInAppMessaging *)self sharedOfferManager];
  v4 = [(ICQInAppMessaging *)self bundleID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICQInAppMessaging__fetchRegularOffer__block_invoke;
  v5[3] = &unk_27A65C868;
  objc_copyWeak(&v6, &location);
  [v3 getOfferForBundleIdentifier:v4 completion:v5];

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
  v3 = [(ICQInAppMessaging *)self sharedOfferManager];
  v4 = [(ICQInAppMessaging *)self bundleID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ICQInAppMessaging__fetchPremiumOffer__block_invoke;
  v5[3] = &unk_27A65C890;
  objc_copyWeak(&v6, &location);
  [v3 getPremiumOfferForBundleIdentifier:v4 completion:v5];

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
  v3 = [(ICQInAppMessaging *)self sharedOfferManager];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__ICQInAppMessaging__fetchDefaultOffer__block_invoke;
  v4[3] = &unk_27A65C868;
  objc_copyWeak(&v5, &location);
  [v3 getDefaultOfferWithCompletion:v4];

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
      v7 = [(ICQInAppMessaging *)self unfairLock];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __52__ICQInAppMessaging__fetchBRCellularConstraintState__block_invoke;
      v8[3] = &unk_27A65B1C8;
      v8[4] = self;
      v8[5] = state64;
      [v7 synchronized:v8];
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

  v4 = [(ICQInAppMessaging *)self connectivityMonitor];
  nw_path_monitor_set_queue(v4, self->_connectivityQueue);

  v5 = [(ICQInAppMessaging *)self connectivityMonitor];
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __50__ICQInAppMessaging__startMonitoringNetworkStatus__block_invoke;
  update_handler[3] = &unk_27A65C818;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v5, update_handler);

  v6 = [(ICQInAppMessaging *)self connectivityMonitor];
  nw_path_monitor_start(v6);
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

- (void)observeUpdatesForBundleID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self observeUpdatesForBundleID:v4 placement:@"InApp"];
}

- (void)observeUpdatesForBundleID:(id)a3 placement:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@ with placement %{public}@", buf, 0x16u);
  }

  v9 = [(ICQInAppMessaging *)self bundleID];
  v10 = [v6 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [(ICQInAppMessaging *)self unfairLock];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __57__ICQInAppMessaging_observeUpdatesForBundleID_placement___block_invoke;
    v15 = &unk_27A65A708;
    v16 = self;
    v17 = v6;
    [v11 synchronized:&v12];
  }

  [(ICQInAppMessaging *)self setPlacement:v7, v12, v13, v14, v15, v16];
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
    v3 = [(ICQInAppMessaging *)self defaults];
    [v3 removeObserver:self forKeyPath:@"debug-in-app-message"];

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self];

    v5 = [(ICQInAppMessaging *)self connectivityMonitor];
    nw_path_monitor_cancel(v5);

    [(ICQInAppMessaging *)self setICloudReachable:1];

    [(ICQInAppMessaging *)self setIsRegisteredForNotifications:0];
  }
}

- (void)fetchMessageWithCompletion:(id)a3
{
  v4 = a3;
  messageQueue = self->_messageQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ICQInAppMessaging_fetchMessageWithCompletion___block_invoke;
  v7[3] = &unk_27A65AF58;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)fetchMessageForReason:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  [(ICQInAppMessaging *)self fetchMessageForReason:v6 pendingItemsCount:0 withCompletion:v7];
}

- (void)fetchMessageForReason:(id)a3 pendingItemsCount:(id)a4 withCompletion:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = [(ICQInAppMessaging *)self unfairLock];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __76__ICQInAppMessaging_fetchMessageForReason_pendingItemsCount_withCompletion___block_invoke;
  v30[3] = &unk_27A65C840;
  v30[4] = self;
  v30[5] = &v42;
  v30[6] = &v39;
  v30[7] = &v33;
  v30[8] = v31;
  [v11 synchronized:v30];

  if ([v8 isEqualToString:@"AirplaneModeOn"])
  {
    v12 = [(ICQInAppMessaging *)self airplaneModeOnMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"WiFiConnectivityIssues"])
  {
    v12 = [(ICQInAppMessaging *)self serverUnreachableMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"CellularDataOff"])
  {
    v12 = [(ICQInAppMessaging *)self cellularDataOffMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"TermsNotAccepted"])
  {
    v12 = [(ICQInAppMessaging *)self termsNotAcceptedMessageFromDefaultOffer:v34[5]];
    goto LABEL_19;
  }

  if ([v8 isEqualToString:@"UploadFailure"])
  {
    v12 = [(ICQInAppMessaging *)self uploadFailureMessageForPendingItemCount:v9 defaultOffer:v34[5]];
    goto LABEL_19;
  }

  v13 = *(v43[0] + 40);
  v14 = [(ICQInAppMessaging *)self placement];
  v15 = [v13 messageSpecificationForPlacement:v14];
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
          v24 = [(ICQInAppMessaging *)self bundleID];
          *buf = 138412546;
          v46 = v22;
          v47 = 2112;
          v48 = v24;
          _os_log_impl(&dword_275623000, v23, OS_LOG_TYPE_DEFAULT, "Returning in-app message: %@, to client: %@", buf, 0x16u);
        }

        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __76__ICQInAppMessaging_fetchMessageForReason_pendingItemsCount_withCompletion___block_invoke_91;
        v27[3] = &unk_27A65B398;
        v29 = v10;
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
  v19 = [(ICQInAppMessaging *)self placement];
  v20 = [v18 messageSpecificationForPlacement:v19];
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
    [ICQInAppMessaging fetchMessageForReason:v8 pendingItemsCount:v26 withCompletion:?];
  }

  v25 = ICQCreateError();
  (*(v10 + 2))(v10, 0, v25);
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
    v4 = [(ICQInAppMessaging *)self isAirplaneModeEnabled];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "In-app message: Airplane mode changed to %@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self _recalculateAndPostCurrentMessage];
}

- (void)dataSettingsChanged:(id)a3
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = [(ICQInAppMessaging *)self defaults:a3];
  v11 = [v7 objectForKey:@"debug-in-app-message"];

  v8 = [MEMORY[0x277CBEB68] null];
  v9 = [v11 isEqual:v8];

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

- (unint64_t)_contentTypeForQuotaOffer:(id)a3
{
  v4 = a3;
  v5 = [(ICQInAppMessaging *)self bundleID];
  if ([v5 isEqualToString:@"com.apple.iCloudDriveApp"])
  {
    goto LABEL_6;
  }

  v6 = [(ICQInAppMessaging *)self bundleID];
  if ([v6 isEqualToString:@"com.apple.finder"])
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v7 = [(ICQInAppMessaging *)self bundleID];
  if ([v7 isEqualToString:@"com.apple.DocumentsApp"])
  {

    goto LABEL_5;
  }

  v11 = [(ICQInAppMessaging *)self bundleID];
  v12 = [v11 isEqualToString:@"com.apple.appkit.xpc.openAndSavePanelService"];

  if ((v12 & 1) == 0)
  {
    v8 = [(ICQInAppMessaging *)self _contentTypeForMessageWithOffer:v4];
    goto LABEL_8;
  }

LABEL_7:
  v8 = [(ICQInAppMessaging *)self _contentTypeForDriveWithOffer:v4];
LABEL_8:
  v9 = v8;

  return v9;
}

- (unint64_t)_contentTypeForDriveWithOffer:(id)a3
{
  if ([a3 level] == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)_actionsForBannerSpecification:(id)a3 offer:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBF8] mutableCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v5 links];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [[ICQLinkInAppAction alloc] initWithLink:*(*(&v15 + 1) + 8 * i) inOffer:v6];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)_dismissActionForBannerSpecification:(id)a3 offer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 dismissLink];

  if (v7)
  {
    v8 = [ICQLinkInAppAction alloc];
    v9 = [v5 dismissLink];
    v7 = [(ICQLinkInAppAction *)v8 initWithLink:v9 inOffer:v6];
  }

  return v7;
}

- (id)quotaMessageForOffer:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 isPremiumOffer];
    v7 = @"regular";
    if (v6)
    {
      v7 = @"premium";
    }

    *buf = 138543362;
    v39 = v7;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages sending %{public}@ offer message", buf, 0xCu);
  }

  v8 = [v4 deviceInfo];
  v9 = [(ICQInAppMessaging *)self placement];
  v10 = [v4 messageSpecificationForPlacement:v9];

  v11 = [v8 key];
  v36 = [v10 titleWithKey:v11];

  v12 = [v8 key];
  v35 = [v10 messageWithKey:v12];

  v37 = v8;
  v13 = [v8 key];
  v34 = [v10 conciseTitleWithKey:v13];

  v14 = [v10 symbolSpecification];
  v15 = [v14 sfSymbolId];

  if (v15)
  {
    v30 = [v14 sfSymbolId];
  }

  else
  {
    v30 = @"exclamationmark.triangle";
  }

  v16 = [v14 sfSymbolColor];

  v33 = v14;
  if (v16)
  {
    v17 = [v14 sfSymbolColor];
    v32 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:v17];
  }

  else
  {
    v32 = 0;
  }

  v29 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v10 offer:v4];
  v28 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v10 offer:v4];
  v18 = [v10 reason];
  v19 = [(ICQInAppMessaging *)self _contentTypeForQuotaOffer:v4];
  v20 = [ICQInAppMessage alloc];
  v21 = [v4 offerId];
  [(ICQInAppMessaging *)self _accountIdentifier];
  v22 = v31 = v4;
  v23 = [(ICQInAppMessaging *)self bundleID];
  v24 = [v10 iconSpecification];
  LOBYTE(v26) = 1;
  v27 = [(ICQInAppMessage *)v20 initWithContentType:v19 identifier:v21 reason:v18 title:v36 subTitle:v35 conciseTitle:v34 sfSymbolName:v30 sfSymbolColor:v32 accountId:v22 bundleID:v23 actions:v29 dismissAction:v28 iconSpecification:v24 serverGenerated:v26];

  return v27;
}

- (id)airplaneModeOnMessageFromDefaultOffer:(id)a3
{
  v53[1] = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "In-app messages sending airplane mode message", buf, 2u);
  }

  v5 = [v49 deviceInfo];
  v6 = [(ICQInAppMessaging *)self bundleID];
  v7 = [(ICQInAppMessaging *)self placement];
  v8 = [v49 messageSpecificationForReason:@"AirplaneModeOn" bundleId:v6 placement:v7];

  v45 = v5;
  if (v8)
  {
    v9 = [v5 key];
    v48 = [v8 titleWithKey:v9];

    v10 = [v5 key];
    v11 = [v8 messageWithKey:v10];

    v12 = [v5 key];
    v13 = [v8 conciseTitleWithKey:v12];

    v14 = [v8 symbolSpecification];
    v15 = [v14 sfSymbolId];

    if (v15)
    {
      v16 = [v14 sfSymbolId];
    }

    else
    {
      v16 = @"exclamationmark.triangle";
    }

    v34 = [v14 sfSymbolColor];

    v43 = v13;
    v44 = v11;
    v41 = v16;
    v42 = v14;
    if (v34)
    {
      v35 = [v14 sfSymbolColor];
      v47 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:v35];
    }

    else
    {
      v47 = 0;
    }

    v28 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v49];
    v29 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v49];
    v36 = [ICQInAppMessage alloc];
    v30 = [(ICQInAppMessaging *)self _accountIdentifier];
    v31 = [(ICQInAppMessaging *)self bundleID];
    v37 = [v8 iconSpecification];
    LOBYTE(v40) = 1;
    v26 = v41;
    v38 = v36;
    v25 = v44;
    v23 = v43;
    v33 = [(ICQInAppMessage *)v38 initWithContentType:0 identifier:@"AirplaneMode" reason:@"AirplaneModeOn" title:v48 subTitle:v44 conciseTitle:v43 sfSymbolName:v41 sfSymbolColor:v47 accountId:v30 bundleID:v31 actions:v28 dismissAction:v29 iconSpecification:v37 serverGenerated:v40];

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
    v28 = [(ICQInAppMessaging *)self _accountIdentifier];
    v29 = [(ICQInAppMessaging *)self bundleID];
    v51 = v25;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v31 = [0 iconSpecification];
    v32 = v46;
    v47 = v27;
    v33 = [(ICQInAppMessage *)v32 initWithContentType:0 identifier:@"AirplaneMode" reason:@"AirplaneModeOn" title:v24 subTitle:v27 sfSymbolName:0 accountId:v28 bundleID:v29 actions:v30 iconSpecification:v31];
    v8 = 0;
  }

  return v33;
}

- (id)serverUnreachableMessageFromDefaultOffer:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceInfo];
  v6 = [(ICQInAppMessaging *)self bundleID];
  v7 = [(ICQInAppMessaging *)self placement];
  v44 = v4;
  v8 = [v4 messageSpecificationForReason:@"WiFiConnectivityIssues" bundleId:v6 placement:v7];

  if (v8)
  {
    v9 = [v5 key];
    v10 = [v8 titleWithKey:v9];

    v11 = [v5 key];
    v42 = [v8 messageWithKey:v11];

    v12 = [v5 key];
    v13 = [v8 conciseTitleWithKey:v12];

    v14 = [v8 symbolSpecification];
    v15 = [v14 sfSymbolId];

    if (v15)
    {
      v39 = [v14 sfSymbolId];
    }

    else
    {
      v39 = @"exclamationmark.triangle";
    }

    v43 = v5;
    v27 = [v14 sfSymbolColor];

    v45 = v10;
    v40 = v14;
    v41 = v13;
    if (v27)
    {
      v28 = [v14 sfSymbolColor];
      v38 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:v28];
    }

    else
    {
      v38 = 0;
    }

    v29 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v44];
    v37 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v44];
    v30 = [ICQInAppMessage alloc];
    v31 = [(ICQInAppMessaging *)self _accountIdentifier];
    [(ICQInAppMessaging *)self bundleID];
    v33 = v32 = v8;
    v34 = [v32 iconSpecification];
    LOBYTE(v36) = 1;
    v24 = v38;
    v23 = v39;
    v19 = v42;
    v18 = v41;
    v26 = [(ICQInAppMessage *)v30 initWithContentType:4 identifier:@"ServerUnreeachable" reason:@"WiFiConnectivityIssues" title:v45 subTitle:v42 conciseTitle:v41 sfSymbolName:v39 sfSymbolColor:v38 accountId:v31 bundleID:v33 actions:v29 dismissAction:v37 iconSpecification:v34 serverGenerated:v36];

    v8 = v32;
    v25 = v29;

    v5 = v43;
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
    v21 = [(ICQInAppMessaging *)self _accountIdentifier];
    v22 = self;
    v23 = v21;
    v24 = [(ICQInAppMessaging *)v22 bundleID];
    v25 = [0 iconSpecification];
    v26 = [(ICQInAppMessage *)v16 initWithContentType:4 identifier:@"ServerUnreeachable" reason:@"WiFiConnectivityIssues" title:v19 subTitle:v20 sfSymbolName:0 accountId:v23 bundleID:v24 actions:MEMORY[0x277CBEBF8] iconSpecification:v25];
  }

  return v26;
}

- (id)cellularDataOffMessageFromDefaultOffer:(id)a3
{
  v50[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceInfo];
  v6 = [(ICQInAppMessaging *)self bundleID];
  v7 = [(ICQInAppMessaging *)self placement];
  v8 = [v4 messageSpecificationForReason:@"CellularDataOff" bundleId:v6 placement:v7];

  v47 = v5;
  v45 = v4;
  if (v8)
  {
    v9 = [v5 key];
    v43 = [v8 titleWithKey:v9];

    v10 = [v5 key];
    v41 = [v8 messageWithKey:v10];

    v11 = [v5 key];
    v40 = [v8 conciseTitleWithKey:v11];

    v12 = [v8 symbolSpecification];
    v13 = [v12 sfSymbolId];

    if (v13)
    {
      v39 = [v12 sfSymbolId];
    }

    else
    {
      v39 = @"exclamationmark.triangle";
    }

    v28 = [v12 sfSymbolColor];

    v38 = v12;
    if (v28)
    {
      v29 = [v12 sfSymbolColor];
      v28 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:v29];
    }

    v30 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v4];
    v31 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v4];
    v32 = [ICQInAppMessage alloc];
    v33 = [(ICQInAppMessaging *)self _accountIdentifier];
    v34 = [(ICQInAppMessaging *)self bundleID];
    v35 = [v8 iconSpecification];
    LOBYTE(v37) = 1;
    v46 = [(ICQInAppMessage *)v32 initWithContentType:0 identifier:@"CellularDataOff" reason:@"CellularDataOff" title:v43 subTitle:v41 conciseTitle:v40 sfSymbolName:v39 sfSymbolColor:v28 accountId:v33 bundleID:v34 actions:v30 dismissAction:v31 iconSpecification:v35 serverGenerated:v37];
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
    v23 = [(ICQInAppMessaging *)self _accountIdentifier];
    v24 = [(ICQInAppMessaging *)self bundleID];
    v48 = v18;
    v25 = v18;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    v27 = [0 iconSpecification];
    v46 = [(ICQInAppMessage *)v42 initWithContentType:0 identifier:@"CellularDataOff" reason:@"CellularDataOff" title:v20 subTitle:v22 sfSymbolName:0 accountId:v23 bundleID:v24 actions:v26 iconSpecification:v27];
  }

  return v46;
}

- (id)termsNotAcceptedMessageFromDefaultOffer:(id)a3
{
  v54[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 deviceInfo];
  v6 = [(ICQInAppMessaging *)self bundleID];
  v7 = [(ICQInAppMessaging *)self placement];
  v8 = [v4 messageSpecificationForReason:@"TermsNotAccepted" bundleId:v6 placement:v7];

  v49 = v5;
  v50 = v4;
  if (v8)
  {
    v9 = [v5 key];
    v46 = [v8 titleWithKey:v9];

    v10 = [v5 key];
    v44 = [v8 messageWithKey:v10];

    v11 = [v5 key];
    v43 = [v8 conciseTitleWithKey:v11];

    v12 = [v8 symbolSpecification];
    v13 = [v12 sfSymbolId];

    if (v13)
    {
      v42 = [v12 sfSymbolId];
    }

    else
    {
      v42 = @"exclamationmark.triangle";
    }

    v30 = [v12 sfSymbolColor];

    v41 = v12;
    if (v30)
    {
      v31 = [v12 sfSymbolColor];
      v32 = [_TtC13iCloudQuotaUI25ICQUISwiftHelperFunctions platformColorFromString:v31];
    }

    else
    {
      v32 = 0;
    }

    v33 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v4];
    v34 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v4];
    v35 = [ICQInAppMessage alloc];
    v36 = [(ICQInAppMessaging *)self _accountIdentifier];
    v37 = [(ICQInAppMessaging *)self bundleID];
    v38 = [v8 iconSpecification];
    LOBYTE(v40) = 1;
    v48 = [(ICQInAppMessage *)v35 initWithContentType:1 identifier:@"TermsNotAccepted" reason:@"TermsNotAccepted" title:v46 subTitle:v44 conciseTitle:v43 sfSymbolName:v42 sfSymbolColor:v32 accountId:v36 bundleID:v37 actions:v33 dismissAction:v34 iconSpecification:v38 serverGenerated:v40];

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
    v24 = [(ICQInAppMessaging *)self _accountIdentifier];
    v25 = [(ICQInAppMessaging *)self bundleID];
    v52 = v19;
    v26 = v19;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
    v28 = [0 iconSpecification];
    v48 = [(ICQInAppMessage *)v45 initWithContentType:1 identifier:@"TermsNotAccepted" reason:@"TermsNotAccepted" title:v21 subTitle:v23 sfSymbolName:0 accountId:v24 bundleID:v25 actions:v27 iconSpecification:v28];

    v29 = v50;
  }

  return v48;
}

- (id)uploadFailureMessageForPendingItemCount:(id)a3 defaultOffer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D7F3D0] templateKeyForItemCount:v6];
  v9 = [(ICQInAppMessaging *)self bundleID];
  v10 = [(ICQInAppMessaging *)self placement];
  v11 = [v7 messageSpecificationForReason:@"UploadFailure" bundleId:v9 placement:v10];

  if (v11)
  {
    v12 = [MEMORY[0x277D7F3D0] wordsToReplaceForItemCount:v6];
    v13 = MEMORY[0x277D7F3E0];
    v14 = [v11 titleWithKey:v8];
    v32 = v12;
    v31 = [v13 replaceWordsIn:v14 with:v12];

    v15 = MEMORY[0x277D7F3E0];
    v16 = [v11 messageWithKey:v8];
    v29 = [v15 replaceWordsIn:v16 with:v12];

    v28 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v11 offer:v7];
    v27 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v11 offer:v7];
    v30 = v7;
    v17 = v6;
    v18 = [ICQInAppMessage alloc];
    v19 = [(ICQInAppMessaging *)self _accountIdentifier];
    v20 = [(ICQInAppMessaging *)self bundleID];
    [v11 iconSpecification];
    v22 = v21 = v8;
    LOBYTE(v26) = 1;
    v23 = v18;
    v6 = v17;
    v7 = v30;
    v24 = [(ICQInAppMessage *)v23 initWithContentType:1 identifier:@"UploadFailure" reason:@"UploadFailure" title:v31 subTitle:v29 sfSymbolName:0 accountId:v19 bundleID:v20 actions:v28 dismissAction:v27 iconSpecification:v22 serverGenerated:v26];

    v8 = v21;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)cellularConstraintMessageFromDefaultOffer:(id)a3
{
  v4 = a3;
  v5 = [v4 deviceInfo];
  v6 = [(ICQInAppMessaging *)self bundleID];
  v7 = [(ICQInAppMessaging *)self placement];
  v8 = [v4 messageSpecificationForReason:@"CellularConstraintReached" bundleId:v6 placement:v7];

  if (v8)
  {
    v9 = [v5 key];
    v22 = [v8 titleWithKey:v9];

    v10 = [v5 key];
    v11 = [v8 messageWithKey:v10];

    v12 = [(ICQInAppMessaging *)self _actionsForBannerSpecification:v8 offer:v4];
    v13 = [(ICQInAppMessaging *)self _dismissActionForBannerSpecification:v8 offer:v4];
    v14 = [ICQInAppMessage alloc];
    [(ICQInAppMessaging *)self _accountIdentifier];
    v15 = v23 = v5;
    v16 = [(ICQInAppMessaging *)self bundleID];
    v17 = [v8 iconSpecification];
    LOBYTE(v21) = 1;
    v18 = [(ICQInAppMessage *)v14 initWithContentType:0 identifier:@"CellularConstraintReached" reason:@"CellularConstraintReached" title:v22 subTitle:v11 sfSymbolName:0 accountId:v15 bundleID:v16 actions:v12 dismissAction:v13 iconSpecification:v17 serverGenerated:v21];

    v5 = v23;
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

- (void)_postMessage:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(ICQInAppMessaging *)self setHasNewObserver:0];
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "In-app messages posting notification for message: %{public}@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__ICQInAppMessaging__postMessage___block_invoke;
  block[3] = &unk_27A65A820;
  v9 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = [(ICQInAppMessaging *)self bundleID];
  [ICQAnalytics logInAppBannerImpressionWithAppIdentifier:v7];
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
  v2 = [(ICQInAppMessaging *)self accountStore];
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 identifier];

  return v4;
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

- (void)_handleBRCellularConstraintChanged:(id)a3
{
  v4 = a3;
  v5 = [(ICQInAppMessaging *)self unfairLock];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __56__ICQInAppMessaging__handleBRCellularConstraintChanged___block_invoke;
  v10 = &unk_27A65A708;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [v5 synchronized:&v7];

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

- (void)_observeUpdatesForBundleID:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Client requested in-app message updates in bundle %{public}@", &v6, 0xCu);
  }

  [(ICQInAppMessaging *)self observeUpdatesForBundleID:v4 placement:@"InApp"];
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
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "Error retrieving state for cellular data switch. Domain: %d, error: %d", v3, 0xEu);
}

@end