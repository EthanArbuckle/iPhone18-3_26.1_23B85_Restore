@interface RadioAvailabilityController
- (BOOL)_calculateRadioRestricted;
- (BOOL)hasLoadedRadioAvailability;
- (BOOL)isRadioAvailable;
- (RadioAvailabilityController)init;
- (id)_currentStoreFrontIdentifier;
- (id)_userDefaultsDomain;
- (void)_currentStoreFrontIdentifierWithCompletion:(id)a3;
- (void)_reloadRadioBagAvailabilityWithCompletionHandler:(id)a3;
- (void)_reloadRadioRestriction;
- (void)_updateRadioAvailabilityWithStoreURLBag:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)getRadioAvailabilityWithCompletionHandler:(id)a3;
@end

@implementation RadioAvailabilityController

- (RadioAvailabilityController)init
{
  v19.receiver = self;
  v19.super_class = RadioAvailabilityController;
  v2 = [(RadioAvailabilityController *)&v19 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Radio.RadioAvailabilityController.accessQueue", MEMORY[0x277D85CD8]);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = dispatch_queue_create("com.apple.Radio.RadioAvailabilityController.calloutSerialQueue", 0);
    calloutSerialQueue = v2->_calloutSerialQueue;
    v2->_calloutSerialQueue = v5;

    v7 = dispatch_queue_create("com.apple.Radio.RadioAvailabilityController.restrictionLoadQueue", 0);
    restrictionLoadQueue = v2->_restrictionLoadQueue;
    v2->_restrictionLoadQueue = v7;

    v9 = [(RadioAvailabilityController *)v2 _currentStoreFrontIdentifier];
    v10 = CFPreferencesCopyAppValue(@"RadioLastKnownAvailableStoreFrontIdentifier", [(RadioAvailabilityController *)v2 _userDefaultsDomain]);
    if ([v10 isNSString] && objc_msgSend(v10, "isEqualToString:", v9))
    {
      isRadioAvailableFromBag = v2->_isRadioAvailableFromBag;
      v2->_isRadioAvailableFromBag = MEMORY[0x277CBEC38];
    }

    else
    {
      keyExistsAndHasValidFormat = 0;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"IsRadioAvailable", @"com.apple.mobileipod", &keyExistsAndHasValidFormat);
      if (!keyExistsAndHasValidFormat)
      {
LABEL_8:
        v15 = [MEMORY[0x277D262A0] sharedConnection];
        [v15 registerObserver:v2];
        v16 = [MEMORY[0x277D7FA90] sharedMonitor];
        [v16 registerObserver:v2];

        v2->_isRadioRestricted = [(RadioAvailabilityController *)v2 _calculateRadioRestricted];
        [(RadioAvailabilityController *)v2 _updateRadioAvailabilityAllowingNotifications:0];
        [(RadioAvailabilityController *)v2 _reloadRadioBagAvailabilityWithCompletionHandler:0];

        return v2;
      }

      v13 = AppBooleanValue != 0;
      CFPreferencesSetAppValue(@"IsRadioAvailable", 0, @"com.apple.mobileipod");
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
      isRadioAvailableFromBag = v2->_isRadioAvailableFromBag;
      v2->_isRadioAvailableFromBag = v14;
    }

    goto LABEL_8;
  }

  return v2;
}

- (id)_currentStoreFrontIdentifier
{
  v2 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v3 = [MEMORY[0x277D7FCA0] activeAccount];
  v4 = [v2 getPropertiesForUserIdentity:v3 error:0];

  v5 = [v4 storefrontIdentifier];
  if (!v5)
  {
    v6 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    v7 = [v6 localStoreAccountProperties];
    v5 = [v7 storefrontIdentifier];
  }

  return v5;
}

- (id)_userDefaultsDomain
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (BOOL)_calculateRadioRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D26010]] == 2;

  return v3;
}

- (BOOL)isRadioAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__RadioAvailabilityController_isRadioAvailable__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __77__RadioAvailabilityController__updateRadioAvailabilityAllowingNotifications___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"RadioAvailabilityControllerRadioAvailableDidChangeNotification" object:*(a1 + 32)];
}

- (void)_updateRadioAvailabilityWithStoreURLBag:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = [v11 radioConfigurationDictionary];
    v16 = v15 != 0;

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke;
    v21[3] = &unk_279AEA728;
    v24 = v16;
    v22 = 0;
    v23 = v10;
    v21[4] = self;
    v17 = v10;
    [(RadioAvailabilityController *)self _currentStoreFrontIdentifierWithCompletion:v21];

    v14 = v23;
    goto LABEL_6;
  }

  v11 = [[RadioStoreBag alloc] _initWithURLBag:v8];
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  calloutSerialQueue = self->_calloutSerialQueue;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_4;
  v18[3] = &unk_279AEACF0;
  v20 = v10;
  v19 = v9;
  v13 = v10;
  dispatch_async(calloutSerialQueue, v18);

  v14 = v20;
LABEL_6:
}

void __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 56))
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 32);
  v5 = a2;
  CFPreferencesSetAppValue(@"RadioLastKnownAvailableStoreFrontIdentifier", v3, [v4 _userDefaultsDomain]);

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_2;
  v8[3] = &unk_279AEA700;
  v8[4] = v6;
  v11 = *(a1 + 56);
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  dispatch_barrier_async(v7, v8);
}

void __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) msv_errorByRemovingUnsafeUserInfo];
    (*(v1 + 16))(v1, 0, v2);
  }
}

void __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 56) != [*(*(a1 + 32) + 40) BOOLValue])
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:?];
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    *(*(a1 + 32) + 32) = 1;
    [*(a1 + 32) _updateRadioAvailabilityAllowingNotifications:1];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_3;
    block[3] = &unk_279AEAC00;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12 = v7;
    block[4] = v8;
    v11 = v9;
    dispatch_async(v6, block);
  }
}

void __95__RadioAvailabilityController__updateRadioAvailabilityWithStoreURLBag_error_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(*(a1 + 32) + 33);
  v3 = [*(a1 + 40) msv_errorByRemovingUnsafeUserInfo];
  (*(v1 + 16))(v1, v2, v3);
}

- (void)_reloadRadioRestriction
{
  restrictionLoadQueue = self->_restrictionLoadQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__RadioAvailabilityController__reloadRadioRestriction__block_invoke;
  block[3] = &unk_279AEAE60;
  block[4] = self;
  dispatch_async(restrictionLoadQueue, block);
}

void __54__RadioAvailabilityController__reloadRadioRestriction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _calculateRadioRestricted];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__RadioAvailabilityController__reloadRadioRestriction__block_invoke_2;
  v5[3] = &unk_279AEAC50;
  v5[4] = v3;
  v6 = v2;
  dispatch_barrier_async(v4, v5);
}

uint64_t __54__RadioAvailabilityController__reloadRadioRestriction__block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  if (*(v1 + 48) != v2)
  {
    *(v1 + 48) = v2;
    return [*(result + 32) _updateRadioAvailabilityAllowingNotifications:1];
  }

  return result;
}

- (void)_reloadRadioBagAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D7FC30]) initWithBlock:&__block_literal_global_59];
  v6 = [MEMORY[0x277D7FC68] sharedBagProvider];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__RadioAvailabilityController__reloadRadioBagAvailabilityWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279AEA6D8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 getBagForRequestContext:v5 withCompletionHandler:v8];
}

void __80__RadioAvailabilityController__reloadRadioBagAvailabilityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAllowsExpiredBags:1];
  v3 = [MEMORY[0x277D7FCA0] activeAccount];
  [v2 setIdentity:v3];
}

- (void)_currentStoreFrontIdentifierWithCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
  v5 = [MEMORY[0x277D7FCA0] activeAccount];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__RadioAvailabilityController__currentStoreFrontIdentifierWithCompletion___block_invoke;
  v7[3] = &unk_279AEA690;
  v8 = v3;
  v6 = v3;
  [v4 getPropertiesForUserIdentity:v5 completionHandler:v7];
}

void __74__RadioAvailabilityController__currentStoreFrontIdentifierWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 storefrontIdentifier];
  if (!v5)
  {
    v6 = [MEMORY[0x277D7FCA8] defaultIdentityStore];
    v7 = [v6 localStoreAccountProperties];
    v5 = [v7 storefrontIdentifier];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getRadioAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__RadioAvailabilityController_getRadioAvailabilityWithCompletionHandler___block_invoke;
  v7[3] = &unk_279AEACF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(accessQueue, v7);
}

void __73__RadioAvailabilityController_getRadioAvailabilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (*(v3 + 32))
  {
    if (v4)
    {
      v5 = *(v3 + 33);
      v6 = *(v3 + 16);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __73__RadioAvailabilityController_getRadioAvailabilityWithCompletionHandler___block_invoke_2;
      v7[3] = &unk_279AEA668;
      v8 = v4;
      v9 = v5;
      dispatch_async(v6, v7);
    }
  }

  else
  {

    [v3 _reloadRadioBagAvailabilityWithCompletionHandler:v4];
  }
}

- (BOOL)hasLoadedRadioAvailability
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__RadioAvailabilityController_hasLoadedRadioAvailability__block_invoke;
  v5[3] = &unk_279AEAE88;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  if ([a3 isRemoteServerLikelyReachable])
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78__RadioAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke;
    block[3] = &unk_279AEAE60;
    block[4] = self;
    dispatch_async(accessQueue, block);
  }
}

_BYTE *__78__RadioAvailabilityController_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[32] & 1) == 0)
  {
    return [result _reloadRadioBagAvailabilityWithCompletionHandler:0];
  }

  return result;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 unregisterObserver:self];
  v4 = [MEMORY[0x277D7FA90] sharedMonitor];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = RadioAvailabilityController;
  [(RadioAvailabilityController *)&v5 dealloc];
}

@end