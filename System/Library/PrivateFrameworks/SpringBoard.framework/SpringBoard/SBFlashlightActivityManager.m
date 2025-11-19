@interface SBFlashlightActivityManager
- (BOOL)isFlashlightOn;
- (id)_dynamicFlashlightState;
- (id)previewFlashlightActivityForReason:(uint64_t)a1;
- (uint64_t)_canTurnFlashlightOn;
- (uint64_t)shouldShowDynamicFlashlightUI;
- (uint64_t)shouldShowUIForFlashlightLevel;
- (uint64_t)toggleFlashlightForReason:(uint64_t)a1;
- (void)_dismissBanner;
- (void)_handleFlashlightElementsEvent:(id *)a1;
- (void)_presentBanner;
- (void)_showFlashlightUnavailableAlertForReason:(uint64_t)a1;
- (void)_updateFlashlightElementsForReason:(uint64_t)a1;
- (void)_updateFlashlightPreviewForReason:(uint64_t)a1;
- (void)dynamicFlashlightActivityElementDidChangeIntensity:(double)a3 width:(double)a4 animated:(BOOL)a5;
- (void)dynamicFlashlightActivityElementDidUpdatePersistedIntensity:(double)a3 width:(double)a4;
- (void)flashlightAvailabilityDidChange:(BOOL)a3;
- (void)flashlightLevelDidChange:(unint64_t)a3;
- (void)flashlightOverheatedDidChange:(BOOL)a3;
- (void)initWithWindowScene:(void *)a3 flashlightController:;
@end

@implementation SBFlashlightActivityManager

- (uint64_t)_canTurnFlashlightOn
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 96);
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

- (void)initWithWindowScene:(void *)a3 flashlightController:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      [SBFlashlightActivityManager initWithWindowScene:? flashlightController:?];
    }

    v9.receiver = a1;
    v9.super_class = SBFlashlightActivityManager;
    v7 = objc_msgSendSuper2(&v9, sel_init);
    a1 = v7;
    if (v7)
    {
      [(SBFlashlightActivityManager *)v7 initWithWindowScene:v5 flashlightController:v6];
    }
  }

  return a1;
}

- (void)_updateFlashlightElementsForReason:(uint64_t)a1
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!a1 || *(a1 + 80) != 1)
  {
    goto LABEL_36;
  }

  v4 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = a1;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updating flashlight elements for reason: '%{public}@'", buf, 0x16u);
  }

  canTurnFlashlight = [(SBFlashlightActivityManager *)a1 _canTurnFlashlightOn];
  v6 = [*(a1 + 96) level];
  v7 = [(SBSystemActionCompoundPreviewAssertion *)*(a1 + 32) state];
  v8 = v7;
  v9 = (v6 != 0) | ((v6 != 0) | canTurnFlashlight ^ 1) ^ 1;
  if (!((v6 != 0) | (canTurnFlashlight ^ 1) & 1) && (v7 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v9 = [WeakRetained shouldRemainActiveWhileFlashlightIsOff];
  }

  v11 = [*(a1 + 40) isValid];
  if (!(v11 & 1 | ((v9 & 1) == 0)))
  {
    v13 = SBLogFlashlightHUD();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v34 = a1;
      v35 = 2114;
      v36 = v3;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Creating flashlight activity for reason: '%{public}@'", buf, 0x16u);
    }

    if (*(a1 + 81) == 1)
    {
      v14 = objc_loadWeakRetained((a1 + 24));
      if (v14)
      {
        v15 = SBLogFlashlightHUD();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [(SBFlashlightActivityManager *)a1 _updateFlashlightElementsForReason:v14, v15];
        }
      }

      else
      {
        v16 = [SBDynamicFlashlightActivityElement alloc];
        v17 = [(SBFlashlightActivityManager *)a1 _dynamicFlashlightState];
        v18 = *(a1 + 88);
        v19 = [v18 coverSheetViewController];
        v20 = [*(a1 + 96) isBeamWidthSupported];

        v14 = [(SBDynamicFlashlightActivityElement *)v16 initWithState:v17 coverSheetViewController:v19 fixedWidth:v20 ^ 1u];
        [(SBFlashlightActivityElement *)v14 setDelegate:a1];
        objc_storeWeak((a1 + 24), v14);
      }
    }

    else
    {
      v14 = [[SBFlashlightActivityElement alloc] initWithFlashlightOn:v6 != 0];
      [(SBFlashlightActivityElement *)v14 setDelegate:a1];
      objc_storeWeak((a1 + 8), v14);
    }

    v21 = [*(a1 + 88) systemApertureController];
    v22 = [v21 registerElement:v14];
    v23 = *(a1 + 40);
    *(a1 + 40) = v22;

    objc_initWeak(buf, a1);
    v24 = *(a1 + 40);
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
    [(SBFlashlightActivityManager *)a1 _updateFlashlightElementsForReason:v3];
    goto LABEL_26;
  }

  if (v9 & 1 | ((v11 & 1) == 0))
  {
    goto LABEL_24;
  }

  v12 = SBLogFlashlightHUD();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v34 = a1;
    v35 = 2114;
    v36 = v3;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@) Invalidating flashlight activity for reason: '%{public}@'", buf, 0x16u);
  }

  [*(a1 + 40) invalidateWithReason:v3];
  if (canTurnFlashlight)
  {
    goto LABEL_25;
  }

  [(SBFlashlightActivityManager *)a1 _showFlashlightUnavailableAlertForReason:v3];
LABEL_26:
  v25 = objc_loadWeakRetained((a1 + 8));
  v26 = v25;
  if (v25)
  {
    [v25 setFlashlightOn:v6 != 0];
    [v26 setPreviewing:v8 & 1];
    [v26 setUrgent:HIBYTE(v8) & 1];
    [v26 setExpanding:BYTE1(v8) & 1];
    [v26 setProminent:HIWORD(v8) & 1];
  }

  v27 = objc_loadWeakRetained((a1 + 16));
  v28 = v27;
  if (v27)
  {
    [v27 setProminent:HIWORD(v8) & 1];
  }

  v29 = objc_loadWeakRetained((a1 + 24));
  if (v29)
  {
    v30 = [(SBFlashlightActivityManager *)a1 _dynamicFlashlightState];
    [v29 setFlashlightState:v30];
    [v29 setPreviewing:v8 & 1];
    [v29 setUrgent:HIBYTE(v8) & 1];
    [v29 setExpanding:BYTE1(v8) & 1];
    [v29 setProminent:HIWORD(v8) & 1];
    if ([v30 isOn] && (*(a1 + 64) & 1) == 0)
    {
      [v29 takeAlertingAssertionWithReason:@"SBFlashlightActivityManager: state -> on"];
    }

    *(a1 + 64) = [v30 isOn];
  }

LABEL_36:
}

- (id)previewFlashlightActivityForReason:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [SBFlashlightActivityManager previewFlashlightActivityForReason:?];
    }

    if (*(a1 + 80) == 1)
    {
      objc_initWeak(&location, a1);
      v5 = *(a1 + 32);
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
        v8 = *(a1 + 32);
        *(a1 + 32) = v7;

        objc_destroyWeak(&v11);
        objc_destroyWeak(&v13);
        v5 = *(a1 + 32);
      }

      a1 = [(SBSystemActionCompoundPreviewAssertion *)v5 acquireForReason:v4];
      objc_destroyWeak(&location);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
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

- (uint64_t)toggleFlashlightForReason:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      [SBFlashlightActivityManager toggleFlashlightForReason:?];
    }

    if (([(SBFlashlightActivityManager *)a1 _canTurnFlashlightOn]& 1) != 0)
    {
      [(SBFlashlightActivityManager *)a1 toggleFlashlightForReason:v4];
      a1 = 1;
    }

    else
    {
      [(SBFlashlightActivityManager *)a1 _showFlashlightUnavailableAlertForReason:v4];
      a1 = 0;
    }
  }

  return a1;
}

- (void)_showFlashlightUnavailableAlertForReason:(uint64_t)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 && *(a1 + 80) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v5 = [WeakRetained alertHost];
    v6 = [v5 alertAssertion];

    LODWORD(v5) = [v6 isValid];
    v7 = SBLogFlashlightHUD();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        *buf = 138543618;
        v17 = a1;
        v18 = 2114;
        v19 = v3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Resetting invalidation timer for flashlight-unavailable alert for reason: '%{public}@'", buf, 0x16u);
      }

      [v6 resetAutomaticInvalidationTimer];
    }

    else
    {
      if (v8)
      {
        *buf = 138543618;
        v17 = a1;
        v18 = 2114;
        v19 = v3;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Showing flashlight-unavailable alert for reason: '%{public}@'", buf, 0x16u);
      }

      v9 = +[SBFlashlightAlertElement flashlightUnavailableAlert];
      objc_storeWeak((a1 + 16), v9);
      v10 = [*(a1 + 88) systemApertureController];
      v11 = [v10 registerElement:v9];
      v12 = *(a1 + 48);
      *(a1 + 48) = v11;

      objc_initWeak(buf, a1);
      v13 = *(a1 + 48);
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

- (void)flashlightLevelDidChange:(unint64_t)a3
{
  v4 = NSStringFromSelector(a2);
  [(SBFlashlightActivityManager *)self _updateFlashlightElementsForReason:v4];
}

- (void)flashlightAvailabilityDidChange:(BOOL)a3
{
  v4 = NSStringFromSelector(a2);
  [(SBFlashlightActivityManager *)self _updateFlashlightElementsForReason:v4];
}

- (void)flashlightOverheatedDidChange:(BOOL)a3
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
  if (a1)
  {
    v1 = *(a1 + 80);
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

- (void)_updateFlashlightPreviewForReason:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v9 = v3;
    if (SBSIsSystemApertureAvailable())
    {
      [(SBFlashlightActivityManager *)a1 _updateFlashlightElementsForReason:v9];
    }

    else
    {
      v4 = [(SBSystemActionCompoundPreviewAssertion *)*(a1 + 32) state];
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v6 = WeakRetained;
      if (v4)
      {
        if ([WeakRetained isPresentableAppearingOrAppeared] && (v4 & 0x100) != 0)
        {
          v7 = [v6 view];
          [v7 sb_setInflated];
        }

        [(SBFlashlightActivityManager *)a1 _presentBanner];
      }

      else
      {
        v8 = [WeakRetained view];
        [v8 sb_setDeflated];

        [(SBFlashlightActivityManager *)a1 _dismissBanner];
      }
    }

    v3 = v9;
  }
}

- (void)_handleFlashlightElementsEvent:(id *)a1
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (a2 == 1)
  {
    v9 = WeakRetained;
    v8 = [WeakRetained view];
    [v8 sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    v9 = WeakRetained;
    v5 = objc_loadWeakRetained(a1 + 1);
    [v5 pop];

    v6 = objc_loadWeakRetained(a1 + 2);
    [v6 pop];

    v7 = objc_loadWeakRetained(a1 + 3);
    [v7 pop];

    v8 = [v9 view];
    [v8 sb_stopInflating];
LABEL_6:

    WeakRetained = v9;
  }
}

- (void)dynamicFlashlightActivityElementDidChangeIntensity:(double)a3 width:(double)a4 animated:(BOOL)a5
{
  if (self)
  {
    self = self->_flashlightController;
  }

  [(SBFlashlightActivityManager *)self setIntensity:a5 width:a3 animated:a4];
}

- (void)dynamicFlashlightActivityElementDidUpdatePersistedIntensity:(double)a3 width:(double)a4
{
  if (self)
  {
    self = self->_flashlightController;
  }

  *&a3 = a3;
  *&a4 = a4;
  [(SBFlashlightActivityManager *)self storeFlashlightIntensity:a3 width:a4];
}

- (id)_dynamicFlashlightState
{
  if (a1)
  {
    v1 = *(a1 + 96);
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
  if (a1)
  {
    v2 = [SBApp bannerManager];
    if (!*(a1 + 72))
    {
      v3 = objc_opt_new();
      v4 = *(a1 + 72);
      *(a1 + 72) = v3;

      v5 = *(a1 + 72);
      v6 = +[SBFlashlightPreviewPresentableViewController requesterIdentifier];
      [v2 registerAuthority:v5 forRequesterIdentifier:v6];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v8 = WeakRetained;
    if (!WeakRetained || (v9 = -[SBFlashlightPreviewPresentableViewController isFlashlightOn](WeakRetained, "isFlashlightOn"), v9 != ([*(a1 + 96) level] != 0)))
    {
      v10 = -[SBFlashlightPreviewPresentableViewController initWithFlashlightOn:]([SBFlashlightPreviewPresentableViewController alloc], "initWithFlashlightOn:", [*(a1 + 96) level] != 0);

      objc_storeWeak((a1 + 56), v10);
      v11 = *MEMORY[0x277D68088];
      v13[0] = *MEMORY[0x277D68070];
      v13[1] = v11;
      v14[0] = &unk_283371A20;
      v14[1] = MEMORY[0x277CBEC38];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
      [v2 postPresentable:v10 withOptions:1 userInfo:v12 error:0];

      v8 = v10;
    }
  }
}

- (void)_dismissBanner
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if (WeakRetained)
    {
      v3 = [SBApp bannerManager];
      v4 = MEMORY[0x277CF0AC0];
      v5 = [WeakRetained requesterIdentifier];
      v6 = [v4 identificationWithRequesterIdentifier:v5];
      v9 = *MEMORY[0x277D68068];
      v10[0] = MEMORY[0x277CBEC38];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
      v8 = [v3 revokePresentablesWithIdentification:v6 reason:@"action preview banner dismissed" options:0 userInfo:v7 error:0];

      objc_storeWeak((a1 + 56), 0);
    }
  }
}

- (uint64_t)shouldShowDynamicFlashlightUI
{
  if (a1)
  {
    v1 = *(a1 + 81);
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