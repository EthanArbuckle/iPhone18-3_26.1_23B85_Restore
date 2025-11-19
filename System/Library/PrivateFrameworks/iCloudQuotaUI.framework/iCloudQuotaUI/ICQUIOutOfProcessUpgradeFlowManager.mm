@interface ICQUIOutOfProcessUpgradeFlowManager
+ (id)sharedManager;
- (BOOL)_canUseExtensionKitForURL:(id)a3;
- (BOOL)_isDefaultOfferFlow:(id)a3;
- (ICQUIOutOfProcessUpgradeFlowManager)init;
- (ICQUpgradeFlowManager)flowManager;
- (ICQUpgradeFlowManagerDelegate)delegate;
- (id)_rootViewController;
- (id)_topMostPresentingViewController;
- (void)_beginExtensionKitFlowWithViewController:(id)a3;
- (void)_beginSBRemoteAlertFlow;
- (void)_startUpsellWithOffer:(id)a3 link:(id)a4 preloadedRemoteUIData:(id)a5 error:(id)a6 isPostPurchaseFlow:(BOOL)a7;
- (void)_topMostPresentingViewController;
- (void)beginFlowWithViewController:(id)a3;
- (void)beginPostPurchaseFlowWithOffer:(id)a3 link:(id)a4;
@end

@implementation ICQUIOutOfProcessUpgradeFlowManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ICQUIOutOfProcessUpgradeFlowManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_sRemoteUpgradeFlowManager;

  return v2;
}

void __52__ICQUIOutOfProcessUpgradeFlowManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(objc_opt_class());
  v1 = sharedManager_sRemoteUpgradeFlowManager;
  sharedManager_sRemoteUpgradeFlowManager = v0;
}

- (ICQUIOutOfProcessUpgradeFlowManager)init
{
  v6.receiver = self;
  v6.super_class = ICQUIOutOfProcessUpgradeFlowManager;
  v2 = [(ICQUIOutOfProcessUpgradeFlowManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICQRemoteUIDataLoader);
    loader = v2->_loader;
    v2->_loader = v3;

    v2->_presentationLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)beginPostPurchaseFlowWithOffer:(id)a3 link:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOutOfProcessUpgradeFlowManager beginPostPurchaseFlowWithOffer:link:];
  }

  v9 = [v7 actionURL];
  [v6 _updateRequestedServerUIURLWithURL:v9];

  [(ICQUIOutOfProcessUpgradeFlowManager *)self _startUpsellWithOffer:v6 link:v7 preloadedRemoteUIData:0 error:0 isPostPurchaseFlow:1];
}

- (void)beginFlowWithViewController:(id)a3
{
  v4 = a3;
  v5 = [(ICQUIOutOfProcessUpgradeFlowManager *)self offer];
  v6 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _isDefaultOfferFlow:v5];

  v7 = [(ICQUIOutOfProcessUpgradeFlowManager *)self offer];
  v8 = [v7 serverUIURL];
  v9 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _canUseExtensionKitForURL:v8];

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _topMostPresentingViewController];
    v10 = v11 == 0;
  }

  v12 = [(ICQUIOutOfProcessUpgradeFlowManager *)self link];
  v13 = [v12 action];

  v14 = [(ICQUIOutOfProcessUpgradeFlowManager *)self presentingSceneIdentifier];

  if (!v14)
  {
    v21 = v6;
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Unknown scene identifier! Falling back to topmost viewcontroller's scene", buf, 2u);
    }

    v16 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _topMostPresentingViewController];
    v17 = [v16 view];
    v18 = [v17 window];
    v19 = [v18 windowScene];
    v20 = [v19 _sceneIdentifier];
    [(ICQUIOutOfProcessUpgradeFlowManager *)self setPresentingSceneIdentifier:v20];

    v6 = v21;
  }

  if (v6 || !v9 || v10 || v13 == 127)
  {
    [(ICQUIOutOfProcessUpgradeFlowManager *)self _beginSBRemoteAlertFlow];
  }

  else
  {
    [(ICQUIOutOfProcessUpgradeFlowManager *)self _beginExtensionKitFlowWithViewController:v4];
  }
}

- (BOOL)_canUseExtensionKitForURL:(id)a3
{
  v3 = a3;
  v4 = +[ICQUIExtensionKitHelpers isExtensionKitFlagEnabled];
  v5 = [ICQUIExtensionKitHelpers isExtensionKitURL:v3];

  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(ICQUIOutOfProcessUpgradeFlowManager *)v4 _canUseExtensionKitForURL:v5, v6];
  }

  return (v4 | v5) & 1;
}

- (BOOL)_isDefaultOfferFlow:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.icq"];

  v6 = [v3 serverUIURL];

  if (v6)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

- (void)_beginSBRemoteAlertFlow
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = [(ICQUIOutOfProcessUpgradeFlowManager *)self offer];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = [(ICQUIOutOfProcessUpgradeFlowManager *)self link];
  os_unfair_lock_lock(&self->_presentationLock);
  if (!self->_isPresented)
  {
    self->_isPresented = 1;
    os_unfair_lock_unlock(&self->_presentationLock);
    v8 = [v24[5] requestedServerUIURL];
    if (v8)
    {
      if ([v18[5] action] != 115 && objc_msgSend(v18[5], "action") != 121)
      {
        objc_initWeak(buf, self);
        v9 = [(ICQUIOutOfProcessUpgradeFlowManager *)self loader];
        v10 = [v24[5] serverUIURL];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __62__ICQUIOutOfProcessUpgradeFlowManager__beginSBRemoteAlertFlow__block_invoke;
        v11[3] = &unk_27A65BC40;
        objc_copyWeak(&v15, buf);
        v13 = &v23;
        v12 = v8;
        v14 = &v17;
        [v9 loadDataFromURL:v10 completion:v11];

        objc_destroyWeak(&v15);
        objc_destroyWeak(buf);
        goto LABEL_12;
      }

      [v24[5] _updateRequestedServerUIURLWithURL:v8];
    }

    [(ICQUIOutOfProcessUpgradeFlowManager *)self _startUpsellWithOffer:v24[5] link:v18[5] preloadedRemoteUIData:0 error:0 isPostPurchaseFlow:0];
LABEL_12:

    goto LABEL_13;
  }

  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Remote flow already presented! Wait until it's complete.", buf, 2u);
  }

  v4 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
    v7 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowManager];
    [v6 upgradeFlowManagerDidCancel:v7];
  }

  os_unfair_lock_unlock(&self->_presentationLock);
LABEL_13:
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
}

void __62__ICQUIOutOfProcessUpgradeFlowManager__beginSBRemoteAlertFlow__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v11 || !WeakRetained)
  {
    [*(*(*(a1 + 40) + 8) + 40) _updateRequestedServerUIURLWithURL:*(a1 + 32)];
    [WeakRetained _startUpsellWithOffer:*(*(*(a1 + 40) + 8) + 40) link:*(*(*(a1 + 48) + 8) + 40) preloadedRemoteUIData:v11 error:v5 isPostPurchaseFlow:0];
  }

  else
  {
    [WeakRetained setIsPresented:0];
    [WeakRetained _clearServerUIURL];
    v7 = [WeakRetained delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [WeakRetained delegate];
      v10 = [WeakRetained flowManager];
      [v9 upgradeFlowManagerDidCancel:v10];
    }
  }
}

- (void)_startUpsellWithOffer:(id)a3 link:(id)a4 preloadedRemoteUIData:(id)a5 error:(id)a6 isPostPurchaseFlow:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = _ICQGetLogSystem();
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICQUIOutOfProcessUpgradeFlowManager _startUpsellWithOffer:v15 link:? preloadedRemoteUIData:? error:? isPostPurchaseFlow:?];
    }

    self->_isPresented = 0;
    [(ICQUIOutOfProcessUpgradeFlowManager *)self _clearServerUIURL];
    v18 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
      v21 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowManager];
      [v20 upgradeFlowManagerDidCancel:v21];
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Presenting out-of-process upgrade flow.", buf, 2u);
    }

    v22 = objc_alloc(MEMORY[0x277D7F3A0]);
    v23 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowOptions];
    v24 = [v23 serializedData];
    v25 = [v22 initWithOffer:v12 link:v13 flowOptionsData:v24 preloadedRemoteUIData:v14 isPostPurchaseFlow:v7];
    [(ICQUIOutOfProcessUpgradeFlowManager *)self setRemoteContext:v25];

    [(ICQRemoteContext *)self->_remoteContext setPresentingSceneIdentifier:self->_presentingSceneIdentifier];
    [(ICQRemoteContext *)self->_remoteContext setPresentingSceneBundleIdentifier:self->_presentingSceneBundleIdentifier];
    objc_initWeak(&location, self);
    v38 = 0;
    v39 = &v38;
    v40 = 0x2050000000;
    v26 = getINDaemonConnectionClass_softClass_3;
    v41 = getINDaemonConnectionClass_softClass_3;
    if (!getINDaemonConnectionClass_softClass_3)
    {
      *buf = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __getINDaemonConnectionClass_block_invoke_3;
      v36 = &unk_27A65A9F8;
      v37 = &v38;
      __getINDaemonConnectionClass_block_invoke_3(buf);
      v26 = v39[3];
    }

    v27 = v26;
    _Block_object_dispose(&v38, 8);
    v28 = objc_alloc_init(v26);
    v29 = [(ICQUIOutOfProcessUpgradeFlowManager *)self remoteContext];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __113__ICQUIOutOfProcessUpgradeFlowManager__startUpsellWithOffer_link_preloadedRemoteUIData_error_isPostPurchaseFlow___block_invoke;
    v30[3] = &unk_27A65BC68;
    objc_copyWeak(&v31, &location);
    v30[4] = self;
    [v28 presentHiddenFreshmintWithContext:v29 completion:v30];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }
}

void __113__ICQUIOutOfProcessUpgradeFlowManager__startUpsellWithOffer_link_preloadedRemoteUIData_error_isPostPurchaseFlow___block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (!WeakRetained)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __113__ICQUIOutOfProcessUpgradeFlowManager__startUpsellWithOffer_link_preloadedRemoteUIData_error_isPostPurchaseFlow___block_invoke_cold_1();
    }

    goto LABEL_18;
  }

  [WeakRetained setRemoteContext:0];
  [v7 setIsPresented:0];
  [v7 _clearServerUIURL];
  v8 = _ICQGetLogSystem();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    v19 = 138412290;
    v20 = v5;
    v10 = "[Within Client] presentHiddenFreshmintWithUserInfo ERROR = %@";
    v11 = v8;
    v12 = 12;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    LOWORD(v19) = 0;
    v10 = "[Within Client] presentHiddenFreshmintWithUserInfo didCancel flow";
    v11 = v8;
    v12 = 2;
LABEL_14:
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, v10, &v19, v12);
LABEL_15:

    v17 = [v7 delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      v13 = [v7 delegate];
      v16 = [v7 flowManager];
      [v13 upgradeFlowManagerDidCancel:v16];
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (v9)
  {
    LOWORD(v19) = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "[Within Client] presentHiddenFreshmintWithUserInfo didComplete flow", &v19, 2u);
  }

  v14 = [v7 delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    v13 = [v7 delegate];
    v16 = [v7 flowManager];
    [v13 upgradeFlowManagerDidComplete:v16];
LABEL_17:

LABEL_18:
  }

LABEL_19:
}

- (void)_beginExtensionKitFlowWithViewController:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_presentationLock);
  if (!self->_isPresented)
  {
    self->_isPresented = 1;
    os_unfair_lock_unlock(&self->_presentationLock);
    v10 = [v4 presentedViewController];

    if (v10)
    {
      v11 = _ICQGetLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [ICQUIOutOfProcessUpgradeFlowManager _beginExtensionKitFlowWithViewController:v11];
      }
    }

    else if (v4)
    {
      v12 = v4;
      goto LABEL_13;
    }

    v12 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _topMostPresentingViewController];
LABEL_13:
    v8 = v12;
    v9 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
    if (!v8)
    {
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ICQUIOutOfProcessUpgradeFlowManager _beginExtensionKitFlowWithViewController:v21];
      }

      [(ICQUIOutOfProcessUpgradeFlowManager *)self setIsPresented:0];
      [(ICQUIOutOfProcessUpgradeFlowManager *)self _clearServerUIURL];
      if (objc_opt_respondsToSelector())
      {
        v22 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowManager];
        v23 = ICQCreateError();
        [v9 upgradeFlowManagerDidFail:v22 error:v23];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_22;
        }

        v22 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowManager];
        [v9 upgradeFlowManagerDidCancel:v22];
      }

      goto LABEL_22;
    }

    v13 = objc_alloc(MEMORY[0x277D7F3A0]);
    v14 = [(ICQUIOutOfProcessUpgradeFlowManager *)self offer];
    v15 = [(ICQUIOutOfProcessUpgradeFlowManager *)self link];
    v16 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowOptions];
    v17 = [v16 serializedData];
    v18 = [v13 initWithOffer:v14 link:v15 flowOptionsData:v17 preloadedRemoteUIData:0];
    [(ICQUIOutOfProcessUpgradeFlowManager *)self setRemoteContext:v18];

    [(ICQRemoteContext *)self->_remoteContext setPresentingSceneIdentifier:self->_presentingSceneIdentifier];
    [(ICQRemoteContext *)self->_remoteContext setPresentingSceneBundleIdentifier:self->_presentingSceneBundleIdentifier];
    v19 = [(ICQUIOutOfProcessUpgradeFlowManager *)self remoteContext];
    v20 = [v19 toDictionary];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __80__ICQUIOutOfProcessUpgradeFlowManager__beginExtensionKitFlowWithViewController___block_invoke;
    v24[3] = &unk_27A65BC90;
    v24[4] = self;
    v9 = v9;
    v25 = v9;
    [ICQUIRemoteExtensionEntry presentRemoteViewControllerWithContext:v20 presentingViewController:v8 completion:v24];

LABEL_22:
    goto LABEL_23;
  }

  os_unfair_lock_unlock(&self->_presentationLock);
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Remote extension flow already presented! Wait until it's complete.", buf, 2u);
  }

  v6 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ICQUIOutOfProcessUpgradeFlowManager *)self delegate];
    v9 = [(ICQUIOutOfProcessUpgradeFlowManager *)self flowManager];
    [v8 upgradeFlowManagerDidCancel:v9];
    goto LABEL_22;
  }

LABEL_23:
}

void __80__ICQUIOutOfProcessUpgradeFlowManager__beginExtensionKitFlowWithViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 12) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  [*(a1 + 32) _clearServerUIURL];
  if (a2)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v4 = *(a1 + 40);
    v6 = [*(a1 + 32) flowManager];
    [v4 upgradeFlowManagerDidCancel:?];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      return;
    }

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) flowManager];
    [v5 upgradeFlowManagerDidComplete:?];
  }
}

- (id)_topMostPresentingViewController
{
  v2 = [(ICQUIOutOfProcessUpgradeFlowManager *)self _rootViewController];
  v3 = [v2 topMostViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 presentingViewController];
    if (v4)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
      v5 = v4;

      v6 = _ICQGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [ICQUIOutOfProcessUpgradeFlowManager _topMostPresentingViewController];
      }

      v3 = v5;
    }
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOutOfProcessUpgradeFlowManager _topMostPresentingViewController];
  }

  return v3;
}

- (id)_rootViewController
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 keyWindow];
  v4 = [v3 rootViewController];

  return v4;
}

- (ICQUpgradeFlowManager)flowManager
{
  WeakRetained = objc_loadWeakRetained(&self->_flowManager);

  return WeakRetained;
}

- (ICQUpgradeFlowManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_canUseExtensionKitForURL:(NSObject *)a3 .cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v3 = @"NO";
  if (a1)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (a2)
  {
    v3 = @"YES";
  }

  *v5 = 138412546;
  *&v5[4] = v4;
  *&v5[12] = 2112;
  *&v5[14] = v3;
  OUTLINED_FUNCTION_1_3(&dword_275623000, a2, a3, "isExtensionKitFlagEnabled: %@, isExtensionKitURL: %@", *v5, *&v5[8], *&v5[16], *MEMORY[0x277D85DE8]);
}

- (void)_startUpsellWithOffer:(void *)a1 link:preloadedRemoteUIData:error:isPostPurchaseFlow:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "Unable to present at this time, %@.", v4, v5, v6, v7, v8);
}

void __113__ICQUIOutOfProcessUpgradeFlowManager__startUpsellWithOffer_link_preloadedRemoteUIData_error_isPostPurchaseFlow___block_invoke_cold_1()
{
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  OUTLINED_FUNCTION_0_2(&dword_275623000, v2, v3, "%@ instance no longer exist.", v4, v5, v6, v7, v8);
}

- (void)_topMostPresentingViewController
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_275623000, v0, OS_LOG_TYPE_DEBUG, "Returning topmost VC %@", v1, 0xCu);
}

@end