@interface SBFocusActivityManager
- (BOOL)setFocusWithModeIdentifier:(uint64_t)a1 active:(void *)a2 withReason:(int)a3;
- (BOOL)shouldPreviewSystemAction:(id)a3;
- (id)createPersistentFocusElementForActivityDescription:(id)a3 enabled:(BOOL)a4;
- (id)createPersistentFocusPickerElementForActivityDescription:(id)a3 enabled:(BOOL)a4;
- (id)initWithBannerPoster:(void *)a3 systemApertureElementRegistrar:;
- (id)previewFocusWithModeIdentifier:(void *)a3 withReason:;
- (uint64_t)toggleActivityPickerPresentation;
- (uint64_t)toggleFocusWithModeIdentifier:(void *)a3 withReason:;
- (void)_availableModesFetchQueue_fetchAvailableModes;
- (void)_handleFocusElementEvent:(uint64_t)a1;
- (void)_updateFocusElementWithReason:(uint64_t)a1;
- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6;
- (void)focusActivityPickerTransientOverlayViewController:(id)a3 didDismiss:(BOOL)a4;
- (void)modeSelectionService:(id)a3 didReceiveAvailableModesUpdate:(id)a4;
- (void)modeSelectionService:(id)a3 didReceiveUpdatedActiveModeAssertion:(id)a4 stateUpdate:(id)a5;
@end

@implementation SBFocusActivityManager

void __58__SBFocusActivityManager_toggleActivityPickerPresentation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)focusActivityPickerTransientOverlayViewController:(id)a3 didDismiss:(BOOL)a4
{
  transientOverlay = self->_transientOverlay;
  self->_transientOverlay = 0;
}

- (id)previewFocusWithModeIdentifier:(void *)a3 withReason:
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (!v7)
    {
      [SBFocusActivityManager previewFocusWithModeIdentifier:a1 withReason:?];
    }

    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v10 = v6;
    v11 = *MEMORY[0x277D66970];
    v12 = v10;
    if ([v10 isEqualToString:*MEMORY[0x277D66970]])
    {
      v12 = v10;
      if ([v10 isEqualToString:*(a1 + 88)])
      {
        os_unfair_lock_lock((a1 + 24));
        v13 = *(a1 + 96);
        os_unfair_lock_unlock((a1 + 24));
        if (v13)
        {
          v12 = v13;
          v14 = v10;
        }

        else if ([WeakRetained isActivityEnabled])
        {
          v14 = [WeakRetained activityDescription];
          v12 = [v14 activityIdentifier];
        }

        else
        {
          v14 = [MEMORY[0x277D0A9E8] sharedActivityManager];
          v24 = [v14 defaultActivity];
          v12 = [v24 activityIdentifier];
        }
      }
    }

    v15 = [*(a1 + 88) isEqualToString:v11];
    if (v15 != [v10 isEqualToString:v11] || WeakRetained && (objc_msgSend(WeakRetained, "activityDescription"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "activityIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", v12), v17, v16, (v18 & 1) == 0))
    {
      [*(a1 + 64) invalidateWithReason:@"Previewing activity changed"];
      objc_storeWeak((a1 + 72), 0);
    }

    objc_storeStrong((a1 + 88), a2);
    objc_initWeak(&location, a1);
    v19 = *(a1 + 56);
    if (!v19)
    {
      v20 = [SBSystemActionCompoundPreviewAssertion alloc];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke;
      v27[3] = &unk_2783B4BB0;
      objc_copyWeak(&v28, &location);
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke_2;
      v25[3] = &unk_2783AFD70;
      objc_copyWeak(&v26, &location);
      v21 = [(SBSystemActionCompoundPreviewAssertion *)v20 initWithIdentifier:v27 stateDidChangeBlock:v25 eventHandlingBlock:?];
      v22 = *(a1 + 56);
      *(a1 + 56) = v21;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      v19 = *(a1 + 56);
    }

    a1 = [(SBSystemActionCompoundPreviewAssertion *)v19 acquireForReason:v8];
    objc_destroyWeak(&location);
  }

  return a1;
}

void __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFocusActivityManager *)WeakRetained _updateFocusElementWithReason:?];
}

- (void)_updateFocusElementWithReason:(uint64_t)a1
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    if (WeakRetained)
    {
    }

    else if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_20;
    }

    v5 = SBLogFocusModes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = a1;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updating focus element for reason: '%{public}@'", buf, 0x16u);
    }

    v6 = [(SBSystemActionCompoundPreviewAssertion *)*(a1 + 56) state];
    v7 = *(a1 + 64);
    v8 = [v7 isValid];
    v9 = objc_loadWeakRetained((a1 + 80));
    v10 = v9;
    if (v8)
    {
      if ((v6 & 0x100) != 0)
      {
        v11 = [v9 view];
        [v11 sb_setInflated];
      }

      if ((v6 & 1) == 0)
      {
        v12 = [v10 view];
        [v12 sb_setDeflated];

        [v7 invalidateWithReason:v3];
      }
    }

    else if (v6)
    {
      v13 = [*(a1 + 88) isEqualToString:*MEMORY[0x277D66970]];
      v14 = *(a1 + 48);
      if (v13)
      {
        [v14 postPersistentActivityPickerWithSystemApertureElementProvider:a1];
      }

      else
      {
        [v14 postPersistentActivityWithModeIdentifier:*(a1 + 88) systemApertureElementProvider:a1];
      }
      v15 = ;
      v16 = *(a1 + 64);
      *(a1 + 64) = v15;

      objc_initWeak(buf, a1);
      v17 = *(a1 + 64);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__SBFocusActivityManager__updateFocusElementWithReason___block_invoke;
      v20[3] = &unk_2783B4B88;
      objc_copyWeak(&v21, buf);
      [v17 addInvalidationBlock:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    v18 = objc_loadWeakRetained((a1 + 72));
    v19 = v18;
    if (v18)
    {
      [v18 setPreviewing:v6 & 1];
      [v19 setUrgent:HIBYTE(v6) & 1];
      [v19 setExpanding:(v6 >> 8) & 1];
      [v19 setProminent:HIWORD(v6) & 1];
    }
  }

LABEL_20:
}

void __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFocusActivityManager *)WeakRetained _handleFocusElementEvent:a3];
}

- (BOOL)shouldPreviewSystemAction:(id)a3
{
  v4 = [a3 configuredAction];
  v5 = [v4 identifier];
  v6 = [v5 hasSuffix:*MEMORY[0x277D66958]];

  if (v6)
  {
    v7 = [v4 sb_configuredIntentAction];
    v8 = [(WFConfiguredStaccatoIntentAction *)v7 sb_focusModeIdentifier];

    if ([v8 isEqualToString:*MEMORY[0x277D66970]])
    {
      v9 = 1;
    }

    else
    {
      os_unfair_lock_lock(&self->_modesLock);
      v10 = self->_availableModes;
      os_unfair_lock_unlock(&self->_modesLock);
      if (v10)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__SBFocusActivityManager_shouldPreviewSystemAction___block_invoke;
        v13[3] = &unk_2783BFA70;
        v14 = v8;
        v11 = [(NSSet *)v10 bs_firstObjectPassingTest:v13];
        v9 = v11 != 0;
      }

      else
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t __52__SBFocusActivityManager_shouldPreviewSystemAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 modeIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)createPersistentFocusElementForActivityDescription:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[SBFocusEnablementIndicatorSystemApertureActivityElement alloc] initWithActivityDescription:v6 enabled:v4];

  objc_storeWeak(&self->_focusElement, v7);

  return v7;
}

- (id)createPersistentFocusPickerElementForActivityDescription:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)[SBFocusEnablementIndicatorSystemApertureActivityElement alloc] initForPickerWithActivityDescription:v6 enabled:v4];

  objc_storeWeak(&self->_focusElement, v7);

  return v7;
}

- (void)modeSelectionService:(id)a3 didReceiveAvailableModesUpdate:(id)a4
{
  v5 = a4;
  os_unfair_lock_lock(&self->_modesLock);
  v6 = [MEMORY[0x277CBEB98] setWithArray:v5];

  availableModes = self->_availableModes;
  self->_availableModes = v6;

  os_unfair_lock_unlock(&self->_modesLock);
}

- (void)modeSelectionService:(id)a3 didReceiveUpdatedActiveModeAssertion:(id)a4 stateUpdate:(id)a5
{
  v12 = a4;
  v7 = a5;
  os_unfair_lock_lock(&self->_modesLock);
  v8 = [v7 state];

  if ([v8 isActive])
  {
    v9 = [v12 details];
    v10 = [v9 modeIdentifier];
    activeModeIdentifier = self->_activeModeIdentifier;
    self->_activeModeIdentifier = v10;
  }

  else
  {
    v9 = self->_activeModeIdentifier;
    self->_activeModeIdentifier = 0;
  }

  os_unfair_lock_unlock(&self->_modesLock);
}

void __56__SBFocusActivityManager__updateFocusElementWithReason___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 8);
    if (v5 == v6)
    {
      *(WeakRetained + 8) = 0;
    }
  }
}

- (void)bannerManager:(id)a3 willPresentPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v11 = a4;
  v7 = [v11 requesterIdentifier];
  v8 = +[SBFocusActivityBannerAuthority requesterIdentifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v10 = UIViewControllerFromPresentable();
    objc_storeWeak(&self->_focusPresentable, v10);
  }
}

- (void)bannerManager:(id)a3 willDismissPresentable:(id)a4 withTransitionCoordinator:(id)a5 userInfo:(id)a6
{
  v11 = a4;
  v7 = [v11 requesterIdentifier];
  v8 = +[SBFocusActivityBannerAuthority requesterIdentifier];
  if ([v7 isEqualToString:v8])
  {
    WeakRetained = objc_loadWeakRetained(&self->_focusPresentable);
    v10 = [WeakRetained isEqual:v11];

    if (v10)
    {
      objc_storeWeak(&self->_focusPresentable, 0);
    }
  }

  else
  {
  }
}

- (id)initWithBannerPoster:(void *)a3 systemApertureElementRegistrar:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = SBFocusActivityManager;
    a1 = objc_msgSendSuper2(&v26, sel_init);
    if (a1)
    {
      v7 = [MEMORY[0x277D0AA10] managerWithBannerPoster:v5 systemApertureElementRegistrar:v6];
      v8 = *(a1 + 6);
      *(a1 + 6) = v7;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(SBFocusActivityBannerAuthority);
        v10 = *(a1 + 13);
        *(a1 + 13) = v9;

        v11 = *(a1 + 13);
        v12 = v5;
        v13 = +[SBFocusActivityBannerAuthority requesterIdentifier];
        [v12 registerAuthority:v11 forRequesterIdentifier:v13];

        [v12 addTransitionObserver:a1];
      }

      *(a1 + 6) = 0;
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.springboard.focus-activity-manager.fetch", v14);
      v16 = *(a1 + 4);
      *(a1 + 4) = v15;

      v17 = [MEMORY[0x277D059F0] serviceForClientIdentifier:@"com.apple.private.SpringBoard.focus.intents"];
      v18 = *(a1 + 1);
      *(a1 + 1) = v17;

      [*(a1 + 1) addListener:a1 withCompletionHandler:0];
      v19 = *(a1 + 4);
      OUTLINED_FUNCTION_1_4();
      v22 = 3221225472;
      v23 = __78__SBFocusActivityManager_initWithBannerPoster_systemApertureElementRegistrar___block_invoke;
      v24 = &unk_2783A8C18;
      a1 = a1;
      v25 = a1;
      dispatch_async(v19, block);
    }
  }

  return a1;
}

- (void)_availableModesFetchQueue_fetchAvailableModes
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 32));
    v2 = [*(a1 + 8) availableModesWithError:0];
    os_unfair_lock_lock((a1 + 24));
    v3 = *(a1 + 16);
    *(a1 + 16) = v2;

    os_unfair_lock_unlock((a1 + 24));
  }
}

- (BOOL)setFocusWithModeIdentifier:(uint64_t)a1 active:(void *)a2 withReason:(int)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [*(a1 + 8) activeModeAssertionWithError:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 details];
      v9 = [v8 modeIdentifier];
      v10 = [v9 isEqualToString:v5];
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    if ((v10 & 1) == 0 && ((a3 ^ 1) & 1) == 0)
    {
      v11 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v11 setIdentifier:@"com.apple.private.SpringBoard.focus.intents"];
      [v11 setModeIdentifier:v5];
      [v11 setReason:1];
      v12 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
      if (v12)
      {
        [v11 setLifetime:v12];
      }
    }

    if (v11)
    {
      v13 = a3 ^ 1;
    }

    else
    {
      v13 = 1;
    }

    if (v10 ^ 1 | a3) == 1 && (v13)
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v15 = *(a1 + 8);
    v21 = 0;
    v16 = [v15 activateModeWithDetails:v11 error:&v21];
    v14 = v21;
    if (v16)
    {
      goto LABEL_22;
    }

    v17 = SBLogFocusModes();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (a3)
    {
      if (v18)
      {
        OUTLINED_FUNCTION_1_33();
        v19 = "Failed to activate Focus: %{public}@; error: %{public}@";
LABEL_25:
        _os_log_error_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_ERROR, v19, buf, 0x16u);
      }
    }

    else if (v18)
    {
      OUTLINED_FUNCTION_1_33();
      v19 = "Failed to deactivate Focus: %{public}@; error: %{public}@";
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_23:

  return a1 != 0;
}

- (uint64_t)toggleFocusWithModeIdentifier:(void *)a3 withReason:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [*(a1 + 8) activeModeAssertionWithError:0];
    v8 = v7;
    v12 = 1;
    if (v7)
    {
      v9 = [v7 details];
      v10 = [v9 modeIdentifier];
      v11 = [v10 isEqualToString:v5];

      if (v11)
      {
        v12 = 0;
      }
    }

    a1 = [SBFocusActivityManager setFocusWithModeIdentifier:a1 active:v5 withReason:v12];
  }

  return a1;
}

- (uint64_t)toggleActivityPickerPresentation
{
  v1 = a1;
  if (a1)
  {
    if (*(a1 + 40))
    {
      v2 = +[SBWorkspace mainWorkspace];
      OUTLINED_FUNCTION_1_4();
      v8 = 3221225472;
      v9 = __58__SBFocusActivityManager_toggleActivityPickerPresentation__block_invoke;
      v10 = &unk_2783A8C18;
      v11 = v1;
      v4 = [v3 dismissTransientOverlayViewController:? animated:? completion:?];
    }

    else
    {
      v5 = objc_alloc_init(SBFocusActivityPickerTransientOverlayViewController);
      v6 = *(v1 + 40);
      *(v1 + 40) = v5;

      [*(v1 + 40) setDelegate:v1];
      v2 = +[SBWorkspace mainWorkspace];
      v4 = [v2 presentTransientOverlayViewController:*(v1 + 40) animated:1 completion:0];
    }

    v1 = v4;
  }

  return v1;
}

- (void)_handleFocusElementEvent:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  if (a2 == 1)
  {
    v7 = WeakRetained;
    v6 = [WeakRetained view];
    [v6 sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    v7 = WeakRetained;
    v5 = objc_loadWeakRetained((a1 + 72));
    [v5 pop];

    v6 = [v7 view];
    [v6 sb_stopInflating];
LABEL_6:

    WeakRetained = v7;
  }
}

- (void)previewFocusWithModeIdentifier:(const char *)a1 withReason:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"reason != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"SBFocusActivityManager.m";
    v17 = 1024;
    v18 = 427;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end