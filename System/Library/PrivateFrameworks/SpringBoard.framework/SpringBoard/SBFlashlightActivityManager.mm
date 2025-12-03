@interface SBFlashlightActivityManager
- (BOOL)isFlashlightOn;
- (id)_dynamicFlashlightState;
- (id)previewFlashlightActivityForReason:(uint64_t)reason;
- (uint64_t)_canTurnFlashlightOn;
- (uint64_t)shouldShowDynamicFlashlightUI;
- (uint64_t)shouldShowUIForFlashlightLevel;
- (uint64_t)toggleFlashlightForReason:(uint64_t)reason;
- (void)_dismissBanner;
- (void)_handleFlashlightElementsEvent:(id *)event;
- (void)_presentBanner;
- (void)_showFlashlightUnavailableAlertForReason:(uint64_t)reason;
- (void)_updateFlashlightElementsForReason:(uint64_t)reason;
- (void)_updateFlashlightPreviewForReason:(uint64_t)reason;
- (void)dynamicFlashlightActivityElementDidChangeIntensity:(double)intensity width:(double)width animated:(BOOL)animated;
- (void)dynamicFlashlightActivityElementDidUpdatePersistedIntensity:(double)intensity width:(double)width;
- (void)flashlightAvailabilityDidChange:(BOOL)change;
- (void)flashlightLevelDidChange:(unint64_t)change;
- (void)flashlightOverheatedDidChange:(BOOL)change;
- (void)initWithWindowScene:(void *)scene flashlightController:;
@end

@implementation SBFlashlightActivityManager

- (uint64_t)_canTurnFlashlightOn
{
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 96);
  v2 = v1;
  if (v1 && [v1 isAvailable])
  {
    v3 = [v2 isOverheated] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)initWithWindowScene:(void *)scene flashlightController:
{
  v5 = a2;
  sceneCopy = scene;
  if (self)
  {
    if (!v5)
    {
      [SBFlashlightActivityManager initWithWindowScene:? flashlightController:?];
    }

    v9.receiver = self;
    v9.super_class = SBFlashlightActivityManager;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    self = v7;
    if (v7)
    {
      [(SBFlashlightActivityManager *)v7 initWithWindowScene:v5 flashlightController:sceneCopy];
    }
  }

  return self;
}

- (void)_updateFlashlightElementsForReason:(uint64_t)reason
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!reason || *(reason + 80) != 1)
  {
    goto LABEL_36;
  }

  v4 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    reasonCopy3 = reason;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updating flashlight elements for reason: '%{public}@'", buf, 0x16u);
  }

  canTurnFlashlight = [(SBFlashlightActivityManager *)reason _canTurnFlashlightOn];
  level = [*(reason + 96) level];
  state = [(SBSystemActionCompoundPreviewAssertion *)*(reason + 32) state];
  v8 = state;
  shouldRemainActiveWhileFlashlightIsOff = (level != 0) | ((level != 0) | canTurnFlashlight ^ 1) ^ 1;
  if (!((level != 0) | (canTurnFlashlight ^ 1) & 1) && (state & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((reason + 24));
    shouldRemainActiveWhileFlashlightIsOff = [WeakRetained shouldRemainActiveWhileFlashlightIsOff];
  }

  isValid = [*(reason + 40) isValid];
  if (!(isValid & 1 | ((shouldRemainActiveWhileFlashlightIsOff & 1) == 0)))
  {
    v13 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      reasonCopy3 = reason;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Creating flashlight activity for reason: '%{public}@'", buf, 0x16u);
    }

    if (*(reason + 81) == 1)
    {
      v14 = objc_loadWeakRetained((reason + 24));
      if (v14)
      {
        v15 = SBLogFlashlightHUD();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(SBFlashlightActivityManager *)reason _updateFlashlightElementsForReason:v14, v15];
        }
      }

      else
      {
        v16 = [SBDynamicFlashlightActivityElement alloc];
        _dynamicFlashlightState = [(SBFlashlightActivityManager *)reason _dynamicFlashlightState];
        v18 = *(reason + 88);
        coverSheetViewController = [v18 coverSheetViewController];
        isBeamWidthSupported = [*(reason + 96) isBeamWidthSupported];

        v14 = [(SBDynamicFlashlightActivityElement *)v16 initWithState:_dynamicFlashlightState coverSheetViewController:coverSheetViewController fixedWidth:isBeamWidthSupported ^ 1u];
        [(SBFlashlightActivityElement *)v14 setDelegate:reason];
        objc_storeWeak((reason + 24), v14);
      }
    }

    else
    {
      v14 = [[SBFlashlightActivityElement alloc] initWithFlashlightOn:level != 0];
      [(SBFlashlightActivityElement *)v14 setDelegate:reason];
      objc_storeWeak((reason + 8), v14);
    }

    systemApertureController = [*(reason + 88) systemApertureController];
    v22 = [systemApertureController registerElement:v14];
    v23 = *(reason + 40);
    *(reason + 40) = v22;

    objc_initWeak(buf, reason);
    v24 = *(reason + 40);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __66__SBFlashlightActivityManager__updateFlashlightElementsForReason___block_invoke;
    v31[3] = &unk_2783B4B88;
    objc_copyWeak(&v32, buf);
    [v24 addInvalidationBlock:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(buf);

LABEL_24:
    if (!canTurnFlashlight)
    {
      goto LABEL_26;
    }

LABEL_25:
    [(SBFlashlightActivityManager *)reason _updateFlashlightElementsForReason:v3];
    goto LABEL_26;
  }

  if (shouldRemainActiveWhileFlashlightIsOff & 1 | ((isValid & 1) == 0))
  {
    goto LABEL_24;
  }

  v12 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    reasonCopy3 = reason;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidating flashlight activity for reason: '%{public}@'", buf, 0x16u);
  }

  [*(reason + 40) invalidateWithReason:v3];
  if (canTurnFlashlight)
  {
    goto LABEL_25;
  }

  [(SBFlashlightActivityManager *)reason _showFlashlightUnavailableAlertForReason:v3];
LABEL_26:
  v25 = objc_loadWeakRetained((reason + 8));
  v26 = v25;
  if (v25)
  {
    [v25 setFlashlightOn:level != 0];
    [v26 setPreviewing:v8 & 1];
    [v26 setUrgent:HIBYTE(v8) & 1];
    [v26 setExpanding:BYTE1(v8) & 1];
    [v26 setProminent:HIWORD(v8) & 1];
  }

  v27 = objc_loadWeakRetained((reason + 16));
  v28 = v27;
  if (v27)
  {
    [v27 setProminent:HIWORD(v8) & 1];
  }

  v29 = objc_loadWeakRetained((reason + 24));
  if (v29)
  {
    _dynamicFlashlightState2 = [(SBFlashlightActivityManager *)reason _dynamicFlashlightState];
    [v29 setFlashlightState:_dynamicFlashlightState2];
    [v29 setPreviewing:v8 & 1];
    [v29 setUrgent:HIBYTE(v8) & 1];
    [v29 setExpanding:BYTE1(v8) & 1];
    [v29 setProminent:HIWORD(v8) & 1];
    if ([_dynamicFlashlightState2 isOn] && (*(reason + 64) & 1) == 0)
    {
      [v29 takeAlertingAssertionWithReason:@"SBFlashlightActivityManager: state -> on"];
    }

    *(reason + 64) = [_dynamicFlashlightState2 isOn];
  }

LABEL_36:
}

- (id)previewFlashlightActivityForReason:(uint64_t)reason
{
  v3 = a2;
  v4 = v3;
  if (reason)
  {
    if (!v3)
    {
      [SBFlashlightActivityManager previewFlashlightActivityForReason:?];
    }

    if (*(reason + 80) == 1)
    {
      objc_initWeak(&location, reason);
      v5 = *(reason + 32);
      if (!v5)
      {
        v6 = [SBSystemActionCompoundPreviewAssertion alloc];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __66__SBFlashlightActivityManager_previewFlashlightActivityForReason___block_invoke;
        v12[3] = &unk_2783B4BB0;
        objc_copyWeak(&v13, &location);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __66__SBFlashlightActivityManager_previewFlashlightActivityForReason___block_invoke_2;
        v10[3] = &unk_2783AFD70;
        objc_copyWeak(&v11, &location);
        v7 = [(SBSystemActionCompoundPreviewAssertion *)v6 initWithIdentifier:v12 stateDidChangeBlock:v10 eventHandlingBlock:?];
        v8 = *(reason + 32);
        *(reason + 32) = v7;

        objc_destroyWeak(&v11);
        objc_destroyWeak(&v13);
        v5 = *(reason + 32);
      }

      reason = [(SBSystemActionCompoundPreviewAssertion *)v5 acquireForReason:v4];
      objc_destroyWeak(&location);
    }

    else
    {
      reason = 0;
    }
  }

  return reason;
}

void __66__SBFlashlightActivityManager_previewFlashlightActivityForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFlashlightActivityManager *)WeakRetained _updateFlashlightPreviewForReason:?];
}

void __66__SBFlashlightActivityManager_previewFlashlightActivityForReason___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFlashlightActivityManager *)WeakRetained _handleFlashlightElementsEvent:a3];
}

- (uint64_t)toggleFlashlightForReason:(uint64_t)reason
{
  v3 = a2;
  v4 = v3;
  if (reason)
  {
    if (!v3)
    {
      [SBFlashlightActivityManager toggleFlashlightForReason:?];
    }

    if (([(SBFlashlightActivityManager *)reason _canTurnFlashlightOn]& 1) != 0)
    {
      [(SBFlashlightActivityManager *)reason toggleFlashlightForReason:v4];
      reason = 1;
    }

    else
    {
      [(SBFlashlightActivityManager *)reason _showFlashlightUnavailableAlertForReason:v4];
      reason = 0;
    }
  }

  return reason;
}

- (void)_showFlashlightUnavailableAlertForReason:(uint64_t)reason
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason && *(reason + 80) == 1)
  {
    WeakRetained = objc_loadWeakRetained((reason + 16));
    alertHost = [WeakRetained alertHost];
    alertAssertion = [alertHost alertAssertion];

    LODWORD(alertHost) = [alertAssertion isValid];
    v7 = SBLogFlashlightHUD();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (alertHost)
    {
      if (v8)
      {
        *buf = 138543618;
        reasonCopy2 = reason;
        v18 = 2114;
        v19 = v3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Resetting invalidation timer for flashlight-unavailable alert for reason: '%{public}@'", buf, 0x16u);
      }

      [alertAssertion resetAutomaticInvalidationTimer];
    }

    else
    {
      if (v8)
      {
        *buf = 138543618;
        reasonCopy2 = reason;
        v18 = 2114;
        v19 = v3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Showing flashlight-unavailable alert for reason: '%{public}@'", buf, 0x16u);
      }

      v9 = +[SBFlashlightAlertElement flashlightUnavailableAlert];
      objc_storeWeak((reason + 16), v9);
      systemApertureController = [*(reason + 88) systemApertureController];
      v11 = [systemApertureController registerElement:v9];
      v12 = *(reason + 48);
      *(reason + 48) = v11;

      objc_initWeak(buf, reason);
      v13 = *(reason + 48);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __72__SBFlashlightActivityManager__showFlashlightUnavailableAlertForReason___block_invoke;
      v14[3] = &unk_2783B4B88;
      objc_copyWeak(&v15, buf);
      [v13 addInvalidationBlock:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

- (void)flashlightLevelDidChange:(unint64_t)change
{
  v4 = NSStringFromSelector(a2);
  [(SBFlashlightActivityManager *)self _updateFlashlightElementsForReason:v4];
}

- (void)flashlightAvailabilityDidChange:(BOOL)change
{
  v4 = NSStringFromSelector(a2);
  [(SBFlashlightActivityManager *)self _updateFlashlightElementsForReason:v4];
}

- (void)flashlightOverheatedDidChange:(BOOL)change
{
  v4 = NSStringFromSelector(a2);
  [(SBFlashlightActivityManager *)self _updateFlashlightElementsForReason:v4];
}

void __66__SBFlashlightActivityManager__updateFlashlightElementsForReason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = WeakRetained[5];
    if (v8 == v9)
    {
      WeakRetained[5] = 0;

      [v7[12] turnFlashlightOffForReason:v5 withCoolDown:1];
    }
  }
}

void __72__SBFlashlightActivityManager__showFlashlightUnavailableAlertForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[6];
    WeakRetained[6] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (uint64_t)shouldShowUIForFlashlightLevel
{
  if (self)
  {
    v1 = *(self + 80);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (BOOL)isFlashlightOn
{
  if (result)
  {
    return [*(result + 96) level] != 0;
  }

  return result;
}

- (void)_updateFlashlightPreviewForReason:(uint64_t)reason
{
  v3 = a2;
  if (reason)
  {
    v9 = v3;
    if (SBSIsSystemApertureAvailable())
    {
      [(SBFlashlightActivityManager *)reason _updateFlashlightElementsForReason:v9];
    }

    else
    {
      state = [(SBSystemActionCompoundPreviewAssertion *)*(reason + 32) state];
      WeakRetained = objc_loadWeakRetained((reason + 56));
      v6 = WeakRetained;
      if (state)
      {
        if ([WeakRetained isPresentableAppearingOrAppeared] && (state & 0x100) != 0)
        {
          view = [v6 view];
          [view sb_setInflated];
        }

        [(SBFlashlightActivityManager *)reason _presentBanner];
      }

      else
      {
        view2 = [WeakRetained view];
        [view2 sb_setDeflated];

        [(SBFlashlightActivityManager *)reason _dismissBanner];
      }
    }

    v3 = v9;
  }
}

- (void)_handleFlashlightElementsEvent:(id *)event
{
  if (!event)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(event + 7);
  if (a2 == 1)
  {
    v9 = WeakRetained;
    view = [WeakRetained view];
    [view sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = WeakRetained;
    v5 = objc_loadWeakRetained(event + 1);
    [v5 pop];

    v6 = objc_loadWeakRetained(event + 2);
    [v6 pop];

    v7 = objc_loadWeakRetained(event + 3);
    [v7 pop];

    view = [v9 view];
    [view sb_stopInflating];
LABEL_6:

    WeakRetained = v9;
  }
}

- (void)dynamicFlashlightActivityElementDidChangeIntensity:(double)intensity width:(double)width animated:(BOOL)animated
{
  if (self)
  {
    self = self->_flashlightController;
  }

  [(SBFlashlightActivityManager *)self setIntensity:animated width:intensity animated:width];
}

- (void)dynamicFlashlightActivityElementDidUpdatePersistedIntensity:(double)intensity width:(double)width
{
  if (self)
  {
    self = self->_flashlightController;
  }

  *&intensity = intensity;
  *&width = width;
  [(SBFlashlightActivityManager *)self storeFlashlightIntensity:intensity width:width];
}

- (id)_dynamicFlashlightState
{
  if (self)
  {
    v1 = *(self + 96);
    [v1 intensity];
    v3 = v2;
    if (BSFloatIsZero())
    {
      +[SBDynamicFlashlightState offState];
    }

    else
    {
      [v1 width];
      [SBDynamicFlashlightState onStateWithInitialIntensity:v3 width:v4];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_presentBanner
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (self)
  {
    bannerManager = [SBApp bannerManager];
    if (!*(self + 72))
    {
      v3 = objc_opt_new();
      v4 = *(self + 72);
      *(self + 72) = v3;

      v5 = *(self + 72);
      v6 = +[SBFlashlightPreviewPresentableViewController requesterIdentifier];
      [bannerManager registerAuthority:v5 forRequesterIdentifier:v6];
    }

    WeakRetained = objc_loadWeakRetained((self + 56));
    v8 = WeakRetained;
    if (!WeakRetained || (v9 = -[SBFlashlightPreviewPresentableViewController isFlashlightOn](WeakRetained, "isFlashlightOn"), v9 != ([*(self + 96) level] != 0)))
    {
      v10 = -[SBFlashlightPreviewPresentableViewController initWithFlashlightOn:]([SBFlashlightPreviewPresentableViewController alloc], "initWithFlashlightOn:", [*(self + 96) level] != 0);

      objc_storeWeak((self + 56), v10);
      v11 = *MEMORY[0x277D68088];
      v13[0] = *MEMORY[0x277D68070];
      v13[1] = v11;
      v14[0] = &unk_283371A20;
      v14[1] = MEMORY[0x277CBEC38];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      [bannerManager postPresentable:v10 withOptions:1 userInfo:v12 error:0];

      v8 = v10;
    }
  }
}

- (void)_dismissBanner
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 56));
    if (WeakRetained)
    {
      bannerManager = [SBApp bannerManager];
      v4 = MEMORY[0x277CF0AC0];
      requesterIdentifier = [WeakRetained requesterIdentifier];
      v6 = [v4 identificationWithRequesterIdentifier:requesterIdentifier];
      v9 = *MEMORY[0x277D68068];
      v10[0] = MEMORY[0x277CBEC38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v8 = [bannerManager revokePresentablesWithIdentification:v6 reason:@"action preview banner dismissed" options:0 userInfo:v7 error:0];

      objc_storeWeak((self + 56), 0);
    }
  }
}

- (uint64_t)shouldShowDynamicFlashlightUI
{
  if (self)
  {
    v1 = *(self + 81);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (void)initWithWindowScene:(const char *)a1 flashlightController:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"windowScene != ((void *)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithWindowScene:(void *)a3 flashlightController:.cold.2(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((a1 + 88), a2);
  objc_storeStrong((a1 + 96), a3);
  if (SBSIsSystemApertureAvailable())
  {
    v5 = 1;
  }

  else
  {
    v5 = _os_feature_enabled_impl();
  }

  *(a1 + 80) = v5;
  *(a1 + 81) = [a3 deviceSupportsDynamicFlashlightInterface];
  if (a3 && (*(a1 + 80) & 1) != 0)
  {
    [a3 addObserver:a1];
  }

  [(SBFlashlightActivityManager *)a1 _updateFlashlightElementsForReason:?];
}

- (void)_updateFlashlightElementsForReason:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&dword_21ED4E000, log, OS_LOG_TYPE_DEBUG, "(%{public}@) Recycling existing flashlight activity %{public}@", &v3, 0x16u);
}

- (uint64_t)_updateFlashlightElementsForReason:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 48) isValid];
  if (result)
  {
    v5 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_29(&dword_21ED4E000, v6, v7, "(%{public}@) Invalidating flashlight-unavailable alert for reason: '%{public}@'", v8, v9, v10, v11, 2u);
    }

    return [*(a1 + 48) invalidateWithReason:a2];
  }

  return result;
}

- (void)previewFlashlightActivityForReason:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"reason != ((void *)0)", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)toggleFlashlightForReason:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_3(&dword_21ED4E000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"reason != ((void *)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)toggleFlashlightForReason:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  v5 = [*(a1 + 96) level];
  v6 = SBLogFlashlightHUD();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      OUTLINED_FUNCTION_2_32();
      OUTLINED_FUNCTION_1_29(&dword_21ED4E000, v8, v9, "(%{public}@) Toggling flashlight OFF for reason: '%{public}@'", v10, v11, v12, v13, v20);
    }

    [v4 turnFlashlightOffForReason:a2 withCoolDown:1];
  }

  else
  {
    if (v7)
    {
      OUTLINED_FUNCTION_2_32();
      OUTLINED_FUNCTION_1_29(&dword_21ED4E000, v14, v15, "(%{public}@) Toggling flashlight ON for reason: '%{public}@'", v16, v17, v18, v19, v20);
    }

    [v4 turnFlashlightOnForReason:a2];
  }
}

@end