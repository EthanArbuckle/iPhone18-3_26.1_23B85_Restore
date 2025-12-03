@interface WBUFeatureManager
+ (BOOL)_hasManagedAutoFillDomains;
+ (BOOL)shouldAllowAddingNewPasswords;
+ (BOOL)shouldOfferVirtualCards;
+ (id)webui_sharedFeatureManager;
+ (int64_t)accessLevel;
+ (void)shouldOfferVirtualCards;
- (BOOL)_isUsingManagedAppleID;
- (BOOL)_locallyRestricted;
- (BOOL)isCloudAccountHSA2;
- (BOOL)isCloudHistorySyncAvailable;
- (BOOL)isCloudTabsAvailable;
- (BOOL)isContentFilteringEnabled;
- (BOOL)isCreditCardStorageAvailable;
- (BOOL)isSafariSyncEnabled;
- (WBUFeatureManager)init;
- (void)_determineIfContentFilteringEnabledOrManagedByParentWithCompletionHandler:(id)handler;
- (void)_primaryAppleAccountChanged;
- (void)_setAccountOnInternalQueue:(id)queue;
- (void)_updateFeatureAvailabilityByAccessLevel;
- (void)determineIfHistoryClearingIsAvailableWithCompletionHandler:(id)handler;
- (void)determineIfPrivateBrowsingIsAvailableWithCompletionHandler:(id)handler;
- (void)determineIfScreenTimeIsManagedByParentWithCompletionHandler:(id)handler;
- (void)determineIfScreenTimePasscodeIsSetWithCompletionHandler:(id)handler;
@end

@implementation WBUFeatureManager

+ (BOOL)shouldAllowAddingNewPasswords
{
  if ([self accessLevel] == 2)
  {
    return 0;
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] isSupervised])
  {
    _hasManagedAutoFillDomains = [self _hasManagedAutoFillDomains];

    if (_hasManagedAutoFillDomains)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

void __32__WBUFeatureManager_accessLevel__block_invoke()
{
  accessLevel_accessLevel = 0;
  v0 = [MEMORY[0x277D262A0] sharedConnection];
  v1 = [v0 isEphemeralMultiUser];

  if (v1)
  {
    accessLevel_accessLevel = 2;
  }

  else if (!accessLevel_accessLevel && [MEMORY[0x277D49A08] hasInternalContent])
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"SafariDebugOverrideLaunchMode", *MEMORY[0x277CBF008], &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      accessLevel_accessLevel = AppIntegerValue;
    }
  }
}

+ (int64_t)accessLevel
{
  if (accessLevel_onceToken != -1)
  {
    +[WBUFeatureManager accessLevel];
  }

  return accessLevel_accessLevel;
}

- (WBUFeatureManager)init
{
  v13.receiver = self;
  v13.super_class = WBUFeatureManager;
  v2 = [(WBUFeatureManager *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.WebUI.WBUFeatureManagerQueue.AppleAccount", v3);
    appleAccountQueue = v2->_appleAccountQueue;
    v2->_appleAccountQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.WebUI.WBUFeatureManagerQueue.ScreenTime", v6);
    screenTimeQueue = v2->_screenTimeQueue;
    v2->_screenTimeQueue = v7;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__primaryAppleAccountChanged name:*MEMORY[0x277D49CE0] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__accountsDidChange name:*MEMORY[0x277CB8DB8] object:0];

    [(WBUFeatureManager *)v2 _primaryAppleAccountChanged];
    [(WBUFeatureManager *)v2 _updateFeatureAvailabilityByAccessLevel];
    v11 = v2;
  }

  return v2;
}

- (void)_primaryAppleAccountChanged
{
  mEMORY[0x277D49AE8] = [MEMORY[0x277D49AE8] sharedObserver];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__WBUFeatureManager__primaryAppleAccountChanged__block_invoke;
  v4[3] = &unk_279EB1498;
  v4[4] = self;
  [mEMORY[0x277D49AE8] getPrimaryAppleAccountWithCompletionHandler:v4];
}

- (void)_updateFeatureAvailabilityByAccessLevel
{
  *&self->_autoFillAvailable = 16843009;
  p_autoFillAvailable = &self->_autoFillAvailable;
  *&self->_cloudSyncAvailable = 257;
  accessLevel = [objc_opt_class() accessLevel];
  if (accessLevel == 1)
  {
    *(p_autoFillAvailable + 2) = 0;
    *p_autoFillAvailable = 0;
  }

  else if (accessLevel == 2)
  {
    self->_offlineReadingListAvailable = 0;
    self->_inMemoryBookmarkChangeTrackingAvailable = 0;
  }
}

void __48__WBUFeatureManager__primaryAppleAccountChanged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__WBUFeatureManager__primaryAppleAccountChanged__block_invoke_2;
  v7[3] = &unk_279EB1470;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

- (BOOL)isCloudTabsAvailable
{
  _isUsingManagedAppleID = [(WBUFeatureManager *)self _isUsingManagedAppleID];

  return [(WBUFeatureManager *)self _isCloudTabsAvailableUsingManagedAppleID:_isUsingManagedAppleID];
}

- (BOOL)_isUsingManagedAppleID
{
  selfCopy = self;
  dispatch_assert_queue_not_V2(self->_appleAccountQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  appleAccountQueue = selfCopy->_appleAccountQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__WBUFeatureManager__isUsingManagedAppleID__block_invoke;
  v5[3] = &unk_279EB13A8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(appleAccountQueue, v5);
  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __43__WBUFeatureManager__isUsingManagedAppleID__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) aa_isManagedAppleID];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isCloudHistorySyncAvailable
{
  isCloudSyncAvailable = [(WBUFeatureManager *)self isCloudSyncAvailable];
  if (isCloudSyncAvailable)
  {
    LOBYTE(isCloudSyncAvailable) = [objc_opt_class() accessLevel] == 2 || !-[WBUFeatureManager _isUsingManagedAppleID](self, "_isUsingManagedAppleID");
  }

  return isCloudSyncAvailable;
}

+ (id)webui_sharedFeatureManager
{
  if (webui_sharedFeatureManager_onceToken != -1)
  {
    +[WBUFeatureManager webui_sharedFeatureManager];
  }

  v3 = webui_sharedFeatureManager_webuiSharedFeatureManager;

  return v3;
}

uint64_t __47__WBUFeatureManager_webui_sharedFeatureManager__block_invoke()
{
  webui_sharedFeatureManager_webuiSharedFeatureManager = objc_alloc_init(WBUFeatureManager);

  return MEMORY[0x2821F96F8]();
}

- (void)_setAccountOnInternalQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(self->_appleAccountQueue);
  v6 = [(WBUFeatureManager *)self _isCloudTabsAvailableUsingManagedAppleID:[(ACAccount *)self->_primaryAppleAccount aa_isManagedAppleID]];
  objc_storeStrong(&self->_primaryAppleAccount, queue);
  if (v6 != -[WBUFeatureManager _isCloudTabsAvailableUsingManagedAppleID:](self, "_isCloudTabsAvailableUsingManagedAppleID:", [queueCopy aa_isManagedAppleID]))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__WBUFeatureManager__setAccountOnInternalQueue___block_invoke;
    block[3] = &unk_279EB12E0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__WBUFeatureManager__setAccountOnInternalQueue___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"WBUFeatureManagerCloudTabsAvailabilityDidChangeNotification" object:*(a1 + 32)];
}

- (BOOL)isCreditCardStorageAvailable
{
  if (([objc_opt_class() accessLevel] - 1) >= 2)
  {
    return ![(WBUFeatureManager *)self _isUsingManagedAppleID];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_locallyRestricted
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - self->_lastRestrictedSettingRequestedTime >= 2.0 || (v4 = self->_cachedLocallyRestricted) == 0)
  {
    self->_lastRestrictedSettingRequestedTime = Current;
    v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D4D8E8], "settingEnabled")}];
    cachedLocallyRestricted = self->_cachedLocallyRestricted;
    self->_cachedLocallyRestricted = v5;

    v4 = self->_cachedLocallyRestricted;
  }

  return [(NSNumber *)v4 BOOLValue];
}

- (BOOL)isContentFilteringEnabled
{
  mEMORY[0x277D7B590] = [MEMORY[0x277D7B590] sharedWebFilterSettings];
  isWebFilterEnabled = [mEMORY[0x277D7B590] isWebFilterEnabled];

  return isWebFilterEnabled;
}

- (void)_determineIfContentFilteringEnabledOrManagedByParentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(WBUFeatureManager *)self isContentFilteringEnabled])
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __95__WBUFeatureManager__determineIfContentFilteringEnabledOrManagedByParentWithCompletionHandler___block_invoke;
    v5[3] = &unk_279EB13D0;
    v6 = handlerCopy;
    [(WBUFeatureManager *)self determineIfScreenTimeIsManagedByParentWithCompletionHandler:v5];
  }
}

- (void)determineIfPrivateBrowsingIsAvailableWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277D49A08];
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [v4 isPrivateBrowsingEnabled]);
}

- (void)determineIfHistoryClearingIsAvailableWithCompletionHandler:(id)handler
{
  v4 = MEMORY[0x277D49A08];
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [v4 isHistoryClearingEnabled]);
}

- (void)determineIfScreenTimePasscodeIsSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  screenTimeQueue = self->_screenTimeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__WBUFeatureManager_determineIfScreenTimePasscodeIsSetWithCompletionHandler___block_invoke;
  block[3] = &unk_279EB13F8;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(screenTimeQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __77__WBUFeatureManager_determineIfScreenTimePasscodeIsSetWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    if (!v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277D4BA08]);
      v5 = v6[4];
      v6[4] = v4;

      v3 = v6[4];
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), [v3 isRestrictionsPasscodeSet]);
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }
}

- (void)determineIfScreenTimeIsManagedByParentWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  screenTimeQueue = self->_screenTimeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__WBUFeatureManager_determineIfScreenTimeIsManagedByParentWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EB1448;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(screenTimeQueue, v7);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __81__WBUFeatureManager_determineIfScreenTimeIsManagedByParentWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[4])
  {
    v3 = objc_alloc_init(MEMORY[0x277D4BA08]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1 + 32);
  }

  if ([v2 _locallyRestricted])
  {
    v6 = *(*(a1 + 32) + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__WBUFeatureManager_determineIfScreenTimeIsManagedByParentWithCompletionHandler___block_invoke_21;
    v8[3] = &unk_279EB1420;
    objc_copyWeak(&v10, (a1 + 48));
    v9 = *(a1 + 40);
    [v6 shouldRequestMoreTime:v8];

    objc_destroyWeak(&v10);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXScreenTime();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_273D58000, v7, OS_LOG_TYPE_INFO, "Determined user is not restricted because there is not a Screen Time passcode set", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __81__WBUFeatureManager_determineIfScreenTimeIsManagedByParentWithCompletionHandler___block_invoke_21(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXScreenTime();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"not";
      if (a2)
      {
        v6 = &stru_2882C1EC0;
      }

      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_273D58000, v5, OS_LOG_TYPE_INFO, "Determined user is %{public}@ an iCloud managed child", &v9, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v7 = *(*(a1 + 32) + 16);
  }

  v7();

  v8 = *MEMORY[0x277D85DE8];
}

+ (BOOL)shouldOfferVirtualCards
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  v2 = objc_alloc_init(MEMORY[0x277CD4790]);
  v7 = 0;
  v3 = [v2 canEvaluatePolicy:2 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXAutoFill();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[(WBUFeatureManager *)v5];
    }
  }

  return v3;
}

+ (BOOL)_hasManagedAutoFillDomains
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveValuesForUnionSetting:*MEMORY[0x277D25CF0]];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isCloudAccountHSA2
{
  if (!self->_accountInformationProvider)
  {
    v3 = objc_alloc_init(off_279EB0F28);
    accountInformationProvider = self->_accountInformationProvider;
    self->_accountInformationProvider = v3;

    [(WBUFeatureManager *)self _accountsDidChange];
  }

  return self->_cloudAccountIsHSA2;
}

- (BOOL)isSafariSyncEnabled
{
  if (!self->_accountInformationProvider)
  {
    v3 = objc_alloc_init(off_279EB0F28);
    accountInformationProvider = self->_accountInformationProvider;
    self->_accountInformationProvider = v3;

    [(WBUFeatureManager *)self _accountsDidChange];
  }

  return self->_isCloudSyncEnabled;
}

+ (void)shouldOfferVirtualCards
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = safari_privacyPreservingDescription;
  _os_log_error_impl(&dword_273D58000, selfCopy, OS_LOG_TYPE_ERROR, "Encountered error when determining can evaluate policy: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end