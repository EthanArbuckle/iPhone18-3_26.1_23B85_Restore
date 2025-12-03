@interface SBFocusActivityManager
- (BOOL)setFocusWithModeIdentifier:(uint64_t)identifier active:(void *)active withReason:(int)reason;
- (BOOL)shouldPreviewSystemAction:(id)action;
- (id)createPersistentFocusElementForActivityDescription:(id)description enabled:(BOOL)enabled;
- (id)createPersistentFocusPickerElementForActivityDescription:(id)description enabled:(BOOL)enabled;
- (id)initWithBannerPoster:(void *)poster systemApertureElementRegistrar:;
- (id)previewFocusWithModeIdentifier:(void *)identifier withReason:;
- (uint64_t)toggleActivityPickerPresentation;
- (uint64_t)toggleFocusWithModeIdentifier:(void *)identifier withReason:;
- (void)_availableModesFetchQueue_fetchAvailableModes;
- (void)_handleFocusElementEvent:(uint64_t)event;
- (void)_updateFocusElementWithReason:(uint64_t)reason;
- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info;
- (void)focusActivityPickerTransientOverlayViewController:(id)controller didDismiss:(BOOL)dismiss;
- (void)modeSelectionService:(id)service didReceiveAvailableModesUpdate:(id)update;
- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update;
@end

@implementation SBFocusActivityManager

void __58__SBFocusActivityManager_toggleActivityPickerPresentation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)focusActivityPickerTransientOverlayViewController:(id)controller didDismiss:(BOOL)dismiss
{
  transientOverlay = self->_transientOverlay;
  self->_transientOverlay = 0;
}

- (id)previewFocusWithModeIdentifier:(void *)identifier withReason:
{
  v6 = a2;
  identifierCopy = identifier;
  v8 = identifierCopy;
  if (self)
  {
    if (!identifierCopy)
    {
      [SBFocusActivityManager previewFocusWithModeIdentifier:self withReason:?];
    }

    WeakRetained = objc_loadWeakRetained((self + 72));
    v10 = v6;
    v11 = *MEMORY[0x277D66970];
    activityIdentifier = v10;
    if ([v10 isEqualToString:*MEMORY[0x277D66970]])
    {
      activityIdentifier = v10;
      if ([v10 isEqualToString:*(self + 88)])
      {
        os_unfair_lock_lock((self + 24));
        v13 = *(self + 96);
        os_unfair_lock_unlock((self + 24));
        if (v13)
        {
          activityIdentifier = v13;
          activityDescription = v10;
        }

        else if ([WeakRetained isActivityEnabled])
        {
          activityDescription = [WeakRetained activityDescription];
          activityIdentifier = [activityDescription activityIdentifier];
        }

        else
        {
          activityDescription = [MEMORY[0x277D0A9E8] sharedActivityManager];
          defaultActivity = [activityDescription defaultActivity];
          activityIdentifier = [defaultActivity activityIdentifier];
        }
      }
    }

    v15 = [*(self + 88) isEqualToString:v11];
    if (v15 != [v10 isEqualToString:v11] || WeakRetained && (objc_msgSend(WeakRetained, "activityDescription"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "activityIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", activityIdentifier), v17, v16, (v18 & 1) == 0))
    {
      [*(self + 64) invalidateWithReason:@"Previewing activity changed"];
      objc_storeWeak((self + 72), 0);
    }

    objc_storeStrong((self + 88), a2);
    objc_initWeak(&location, self);
    v19 = *(self + 56);
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
      v22 = *(self + 56);
      *(self + 56) = v21;

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v28);
      v19 = *(self + 56);
    }

    self = [(SBSystemActionCompoundPreviewAssertion *)v19 acquireForReason:v8];
    objc_destroyWeak(&location);
  }

  return self;
}

void __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFocusActivityManager *)WeakRetained _updateFocusElementWithReason:?];
}

- (void)_updateFocusElementWithReason:(uint64_t)reason
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (reason)
  {
    WeakRetained = objc_loadWeakRetained((reason + 72));
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
      reasonCopy = reason;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Updating focus element for reason: '%{public}@'", buf, 0x16u);
    }

    state = [(SBSystemActionCompoundPreviewAssertion *)*(reason + 56) state];
    v7 = *(reason + 64);
    isValid = [v7 isValid];
    v9 = objc_loadWeakRetained((reason + 80));
    v10 = v9;
    if (isValid)
    {
      if ((state & 0x100) != 0)
      {
        view = [v9 view];
        [view sb_setInflated];
      }

      if ((state & 1) == 0)
      {
        view2 = [v10 view];
        [view2 sb_setDeflated];

        [v7 invalidateWithReason:v3];
      }
    }

    else if (state)
    {
      v13 = [*(reason + 88) isEqualToString:*MEMORY[0x277D66970]];
      v14 = *(reason + 48);
      if (v13)
      {
        [v14 postPersistentActivityPickerWithSystemApertureElementProvider:reason];
      }

      else
      {
        [v14 postPersistentActivityWithModeIdentifier:*(reason + 88) systemApertureElementProvider:reason];
      }
      v15 = ;
      v16 = *(reason + 64);
      *(reason + 64) = v15;

      objc_initWeak(buf, reason);
      v17 = *(reason + 64);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __56__SBFocusActivityManager__updateFocusElementWithReason___block_invoke;
      v20[3] = &unk_2783B4B88;
      objc_copyWeak(&v21, buf);
      [v17 addInvalidationBlock:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }

    v18 = objc_loadWeakRetained((reason + 72));
    v19 = v18;
    if (v18)
    {
      [v18 setPreviewing:state & 1];
      [v19 setUrgent:HIBYTE(state) & 1];
      [v19 setExpanding:(state >> 8) & 1];
      [v19 setProminent:HIWORD(state) & 1];
    }
  }

LABEL_20:
}

void __68__SBFocusActivityManager_previewFocusWithModeIdentifier_withReason___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBFocusActivityManager *)WeakRetained _handleFocusElementEvent:a3];
}

- (BOOL)shouldPreviewSystemAction:(id)action
{
  configuredAction = [action configuredAction];
  identifier = [configuredAction identifier];
  v6 = [identifier hasSuffix:*MEMORY[0x277D66958]];

  if (v6)
  {
    sb_configuredIntentAction = [configuredAction sb_configuredIntentAction];
    sb_focusModeIdentifier = [(WFConfiguredStaccatoIntentAction *)sb_configuredIntentAction sb_focusModeIdentifier];

    if ([sb_focusModeIdentifier isEqualToString:*MEMORY[0x277D66970]])
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
        v14 = sb_focusModeIdentifier;
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

- (id)createPersistentFocusElementForActivityDescription:(id)description enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  descriptionCopy = description;
  v7 = [[SBFocusEnablementIndicatorSystemApertureActivityElement alloc] initWithActivityDescription:descriptionCopy enabled:enabledCopy];

  objc_storeWeak(&self->_focusElement, v7);

  return v7;
}

- (id)createPersistentFocusPickerElementForActivityDescription:(id)description enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  descriptionCopy = description;
  v7 = [(FCUIFocusEnablementIndicatorSystemApertureElement *)[SBFocusEnablementIndicatorSystemApertureActivityElement alloc] initForPickerWithActivityDescription:descriptionCopy enabled:enabledCopy];

  objc_storeWeak(&self->_focusElement, v7);

  return v7;
}

- (void)modeSelectionService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  updateCopy = update;
  os_unfair_lock_lock(&self->_modesLock);
  v6 = [MEMORY[0x277CBEB98] setWithArray:updateCopy];

  availableModes = self->_availableModes;
  self->_availableModes = v6;

  os_unfair_lock_unlock(&self->_modesLock);
}

- (void)modeSelectionService:(id)service didReceiveUpdatedActiveModeAssertion:(id)assertion stateUpdate:(id)update
{
  assertionCopy = assertion;
  updateCopy = update;
  os_unfair_lock_lock(&self->_modesLock);
  state = [updateCopy state];

  if ([state isActive])
  {
    details = [assertionCopy details];
    modeIdentifier = [details modeIdentifier];
    activeModeIdentifier = self->_activeModeIdentifier;
    self->_activeModeIdentifier = modeIdentifier;
  }

  else
  {
    details = self->_activeModeIdentifier;
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

- (void)bannerManager:(id)manager willPresentPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  presentableCopy = presentable;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v8 = +[SBFocusActivityBannerAuthority requesterIdentifier];
  v9 = [requesterIdentifier isEqualToString:v8];

  if (v9)
  {
    v10 = UIViewControllerFromPresentable();
    objc_storeWeak(&self->_focusPresentable, v10);
  }
}

- (void)bannerManager:(id)manager willDismissPresentable:(id)presentable withTransitionCoordinator:(id)coordinator userInfo:(id)info
{
  presentableCopy = presentable;
  requesterIdentifier = [presentableCopy requesterIdentifier];
  v8 = +[SBFocusActivityBannerAuthority requesterIdentifier];
  if ([requesterIdentifier isEqualToString:v8])
  {
    WeakRetained = objc_loadWeakRetained(&self->_focusPresentable);
    v10 = [WeakRetained isEqual:presentableCopy];

    if (v10)
    {
      objc_storeWeak(&self->_focusPresentable, 0);
    }
  }

  else
  {
  }
}

- (id)initWithBannerPoster:(void *)poster systemApertureElementRegistrar:
{
  v5 = a2;
  posterCopy = poster;
  if (self)
  {
    v26.receiver = self;
    v26.super_class = SBFocusActivityManager;
    self = objc_msgSendSuper2(&v26, sel_init);
    if (self)
    {
      v7 = [MEMORY[0x277D0AA10] managerWithBannerPoster:v5 systemApertureElementRegistrar:posterCopy];
      v8 = *(self + 6);
      *(self + 6) = v7;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = objc_alloc_init(SBFocusActivityBannerAuthority);
        v10 = *(self + 13);
        *(self + 13) = v9;

        v11 = *(self + 13);
        v12 = v5;
        v13 = +[SBFocusActivityBannerAuthority requesterIdentifier];
        [v12 registerAuthority:v11 forRequesterIdentifier:v13];

        [v12 addTransitionObserver:self];
      }

      *(self + 6) = 0;
      v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v15 = dispatch_queue_create("com.apple.springboard.focus-activity-manager.fetch", v14);
      v16 = *(self + 4);
      *(self + 4) = v15;

      v17 = [MEMORY[0x277D059F0] serviceForClientIdentifier:@"com.apple.private.SpringBoard.focus.intents"];
      v18 = *(self + 1);
      *(self + 1) = v17;

      [*(self + 1) addListener:self withCompletionHandler:0];
      v19 = *(self + 4);
      OUTLINED_FUNCTION_1_4();
      v22 = 3221225472;
      v23 = __78__SBFocusActivityManager_initWithBannerPoster_systemApertureElementRegistrar___block_invoke;
      v24 = &unk_2783A8C18;
      self = self;
      selfCopy = self;
      dispatch_async(v19, block);
    }
  }

  return self;
}

- (void)_availableModesFetchQueue_fetchAvailableModes
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 32));
    v2 = [*(self + 8) availableModesWithError:0];
    os_unfair_lock_lock((self + 24));
    v3 = *(self + 16);
    *(self + 16) = v2;

    os_unfair_lock_unlock((self + 24));
  }
}

- (BOOL)setFocusWithModeIdentifier:(uint64_t)identifier active:(void *)active withReason:(int)reason
{
  v23 = *MEMORY[0x277D85DE8];
  activeCopy = active;
  if (identifier)
  {
    v6 = [*(identifier + 8) activeModeAssertionWithError:0];
    v7 = v6;
    if (v6)
    {
      details = [v6 details];
      modeIdentifier = [details modeIdentifier];
      v10 = [modeIdentifier isEqualToString:activeCopy];
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    if ((v10 & 1) == 0 && ((reason ^ 1) & 1) == 0)
    {
      v11 = objc_alloc_init(MEMORY[0x277D05A40]);
      [v11 setIdentifier:@"com.apple.private.SpringBoard.focus.intents"];
      [v11 setModeIdentifier:activeCopy];
      [v11 setReason:1];
      v12 = [MEMORY[0x277D05970] lifetimeUntilEndOfScheduleWithIdentifier:*MEMORY[0x277D05838]];
      if (v12)
      {
        [v11 setLifetime:v12];
      }
    }

    if (v11)
    {
      v13 = reason ^ 1;
    }

    else
    {
      v13 = 1;
    }

    if (v10 ^ 1 | reason) == 1 && (v13)
    {
      v14 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v15 = *(identifier + 8);
    v21 = 0;
    v16 = [v15 activateModeWithDetails:v11 error:&v21];
    v14 = v21;
    if (v16)
    {
      goto LABEL_22;
    }

    v17 = SBLogFocusModes();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (reason)
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

  return identifier != 0;
}

- (uint64_t)toggleFocusWithModeIdentifier:(void *)identifier withReason:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    v7 = [*(self + 8) activeModeAssertionWithError:0];
    v8 = v7;
    v12 = 1;
    if (v7)
    {
      details = [v7 details];
      modeIdentifier = [details modeIdentifier];
      v11 = [modeIdentifier isEqualToString:v5];

      if (v11)
      {
        v12 = 0;
      }
    }

    self = [SBFocusActivityManager setFocusWithModeIdentifier:self active:v5 withReason:v12];
  }

  return self;
}

- (uint64_t)toggleActivityPickerPresentation
{
  selfCopy = self;
  if (self)
  {
    if (*(self + 40))
    {
      v2 = +[SBWorkspace mainWorkspace];
      OUTLINED_FUNCTION_1_4();
      v8 = 3221225472;
      v9 = __58__SBFocusActivityManager_toggleActivityPickerPresentation__block_invoke;
      v10 = &unk_2783A8C18;
      v11 = selfCopy;
      v4 = [v3 dismissTransientOverlayViewController:? animated:? completion:?];
    }

    else
    {
      v5 = objc_alloc_init(SBFocusActivityPickerTransientOverlayViewController);
      v6 = *(selfCopy + 40);
      *(selfCopy + 40) = v5;

      [*(selfCopy + 40) setDelegate:selfCopy];
      v2 = +[SBWorkspace mainWorkspace];
      v4 = [v2 presentTransientOverlayViewController:*(selfCopy + 40) animated:1 completion:0];
    }

    selfCopy = v4;
  }

  return selfCopy;
}

- (void)_handleFocusElementEvent:(uint64_t)event
{
  if (!event)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((event + 80));
  if (a2 == 1)
  {
    v7 = WeakRetained;
    view = [WeakRetained view];
    [view sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    v7 = WeakRetained;
    v5 = objc_loadWeakRetained((event + 72));
    [v5 pop];

    view = [v7 view];
    [view sb_stopInflating];
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