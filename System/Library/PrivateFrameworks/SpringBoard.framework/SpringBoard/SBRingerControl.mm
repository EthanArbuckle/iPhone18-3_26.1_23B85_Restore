@interface SBRingerControl
- (BOOL)_accessibilityIsRingerMuted;
- (BOOL)_isRingerUIDisplayableWithReason:(void *)reason;
- (BOOL)isRingerHUDVisibleOnWindowScene:(_BOOL8)scene;
- (SBControlCenterCoordinator)controlCenterCoordinator;
- (double)volume;
- (id)_avscOperationsQueue;
- (id)_ringerUICoordinator;
- (id)bannerManager;
- (id)initWithBannerManager:(void *)manager soundController:;
- (id)observeRingerMutedWithBlock:(id)block;
- (id)previewRingerStateForReason:(id)reason;
- (id)soundForRingerMuted:(BOOL)muted;
- (uint64_t)isRingerHUDVisible;
- (uint64_t)isRingerMuted;
- (uint64_t)setVolume:(uint64_t)result;
- (void)_avsc_setRingerMuted:(void *)muted reason:(int)reason clientType:;
- (void)_dismissRingerAlertElement:(void *)element forReason:;
- (void)_dismissRingerHUDViewController:(void *)controller forReason:;
- (void)_handleRingerAlertPreviewingEvent:(uint64_t)event;
- (void)_playSoundForRingerMuted:(void *)muted;
- (void)_setRingerMuted:(uint64_t)muted;
- (void)_updateRingerAlertPreviewingState;
- (void)activateRingerHUD:(uint64_t)d withInitialVolume:(NSObject *)volume fromSource:(float)source forPreviewing:;
- (void)activateRingerHUDForMuteChange:(NSObject *)change forPreviewing:;
- (void)activateRingerHUDForMuteChange:(uint64_t)change;
- (void)activateRingerHUDForVolumeChangeWithInitialVolume:(uint64_t)volume;
- (void)buttonReleased;
- (void)cache:(id)cache didUpdateRingerMuted:(BOOL)muted;
- (void)controlCenter:(id)center willPresentOnWindowScene:(id)scene;
- (void)dismissRingerHUD;
- (void)nudgeUp:(id *)up;
- (void)ringerAlertElementWantsToBePresented:(id)presented;
- (void)ringerAlertElementWantsToResetAutomaticInvalidationTimer:(id)timer;
- (void)ringerHUDViewControllerWantsToBeDismissed:(id)dismissed;
- (void)ringerHUDViewControllerWantsToBePresented:(id)presented;
- (void)setControlCenterCoordinator:(id)coordinator;
- (void)setRingerMuted:(BOOL)muted withFeedback:(BOOL)feedback reason:(id)reason clientType:(unsigned int)type;
- (void)setRingerMuted:(uint64_t)muted reason:;
- (void)setVolume:(float)volume forKeyPress:;
@end

@implementation SBRingerControl

- (void)setRingerMuted:(BOOL)muted withFeedback:(BOOL)feedback reason:(id)reason clientType:(unsigned int)type
{
  feedbackCopy = feedback;
  mutedCopy = muted;
  reasonCopy = reason;
  if (feedbackCopy)
  {
    [(SBRingerControl *)self _playSoundForRingerMuted:mutedCopy];
  }

  [(SBRingerControl *)&self->super.isa _avsc_setRingerMuted:mutedCopy reason:reasonCopy clientType:type];
}

- (void)ringerHUDViewControllerWantsToBePresented:(id)presented
{
  v13[2] = *MEMORY[0x277D85DE8];
  presentedCopy = presented;
  if ([presentedCopy isActivatedForPreviewing])
  {
    v5 = *MEMORY[0x277D68088];
    v12[0] = *MEMORY[0x277D68070];
    v12[1] = v5;
    v13[0] = &unk_283370AA8;
    v13[1] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  else
  {
    v6 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_bannerManager);
  v11 = 0;
  v8 = [WeakRetained postPresentable:presentedCopy withOptions:0 userInfo:v6 error:&v11];

  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = SBLogRingerHUD();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SBRingerControl *)v9 ringerHUDViewControllerWantsToBePresented:v10];
    }
  }
}

- (void)ringerHUDViewControllerWantsToBeDismissed:(id)dismissed
{
  dismissedCopy = dismissed;
  if (([dismissedCopy isActivatedForPreviewing] & 1) == 0)
  {
    [(SBRingerControl *)self _dismissRingerHUDViewController:dismissedCopy forReason:@"SBRingerControlBannerRevocationReasonTimer"];
  }
}

- (void)ringerAlertElementWantsToBePresented:(id)presented
{
  presentedCopy = presented;
  assertion = [presentedCopy assertion];
  isValid = [assertion isValid];

  if ((isValid & 1) == 0)
  {
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v8 = [systemApertureControllerForMainDisplay registerElement:presentedCopy];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __56__SBRingerControl_ringerAlertElementWantsToBePresented___block_invoke;
    v12 = &unk_2783B4B88;
    objc_copyWeak(&v13, &location);
    [v8 addInvalidationBlock:&v9];
    [presentedCopy setAssertion:{v8, v9, v10, v11, v12}];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)ringerAlertElementWantsToResetAutomaticInvalidationTimer:(id)timer
{
  alertHost = [timer alertHost];
  alertAssertion = [alertHost alertAssertion];

  [alertAssertion resetAutomaticInvalidationTimer];
}

- (void)setControlCenterCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);
  if (WeakRetained != obj)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_controlCenterCoordinator, obj);
    [obj addObserver:self];
  }
}

- (id)soundForRingerMuted:(BOOL)muted
{
  if (muted)
  {
    v3 = 1004;
  }

  else
  {
    v3 = 1005;
  }

  return [MEMORY[0x277D679C8] soundWithFeedbackEventType:v3];
}

- (id)previewRingerStateForReason:(id)reason
{
  reasonCopy = reason;
  if (!reasonCopy)
  {
    [(SBRingerControl *)a2 previewRingerStateForReason:?];
  }

  v6 = reasonCopy;
  if ((SBSIsSystemApertureAvailable() & 1) != 0 || _os_feature_enabled_impl())
  {
    objc_initWeak(&location, self);
    compoundPreviewAssertion = self->_compoundPreviewAssertion;
    if (!compoundPreviewAssertion)
    {
      v8 = [SBSystemActionCompoundPreviewAssertion alloc];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __47__SBRingerControl_previewRingerStateForReason___block_invoke;
      v15[3] = &unk_2783B4BB0;
      objc_copyWeak(&v16, &location);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __47__SBRingerControl_previewRingerStateForReason___block_invoke_2;
      v13[3] = &unk_2783AFD70;
      objc_copyWeak(&v14, &location);
      v9 = [(SBSystemActionCompoundPreviewAssertion *)v8 initWithIdentifier:v15 stateDidChangeBlock:v13 eventHandlingBlock:?];
      v10 = self->_compoundPreviewAssertion;
      self->_compoundPreviewAssertion = v9;

      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      compoundPreviewAssertion = self->_compoundPreviewAssertion;
    }

    v11 = [(SBSystemActionCompoundPreviewAssertion *)compoundPreviewAssertion acquireForReason:v6];
    objc_destroyWeak(&location);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __47__SBRingerControl_previewRingerStateForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBRingerControl *)WeakRetained _updateRingerAlertPreviewingState];
}

void __47__SBRingerControl_previewRingerStateForReason___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBRingerControl *)WeakRetained _handleRingerAlertPreviewingEvent:a3];
}

- (id)observeRingerMutedWithBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [(SBRingerControl *)a2 observeRingerMutedWithBlock:?];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__SBRingerControl_observeRingerMutedWithBlock___block_invoke;
  v16[3] = &unk_2783B4BD8;
  v17 = blockCopy;
  v8 = blockCopy;
  v9 = [defaultCenter addObserverForName:@"SBRingerChangedNotification" object:0 queue:mainQueue usingBlock:v16];

  v10 = objc_alloc(MEMORY[0x277CF0CE8]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__SBRingerControl_observeRingerMutedWithBlock___block_invoke_2;
  v14[3] = &unk_2783A8A98;
  v15 = v9;
  v11 = v9;
  v12 = [v10 initWithIdentifier:@"RingerMuteObservation" forReason:@"ObserverToken" invalidationBlock:v14];

  return v12;
}

uint64_t __47__SBRingerControl_observeRingerMutedWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKey:@"SBRingerChangedRingerMutedUserInfoKey"];
  [v4 BOOLValue];

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void __47__SBRingerControl_observeRingerMutedWithBlock___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];
}

void __58__SBRingerControl__avsc_setRingerMuted_reason_clientType___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedInstance];
  v3 = [v2 setSilentMode:*(a1 + 44) untilTime:0 reason:*(a1 + 32) clientType:*(a1 + 40)];
  v4 = SBLogRingerHUD();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 44);
      v7 = *(a1 + 40);
      v8 = *(a1 + 32);
      v12 = 67109634;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 2114;
      v17 = v8;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Set ringer muted=%{BOOL}u for client '%u' with reason: '%{public}@'", &v12, 0x18u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v9 = *(a1 + 44);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = 67109634;
    v13 = v9;
    v14 = 1024;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_fault_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_FAULT, "Failed to set ringer muted=%{BOOL}u for client '%u' with reason: '%{public}@'", &v12, 0x18u);
  }
}

- (SBControlCenterCoordinator)controlCenterCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);

  return WeakRetained;
}

- (id)initWithBannerManager:(void *)manager soundController:
{
  v5 = a2;
  managerCopy = manager;
  v7 = managerCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    if (managerCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithBannerManager_soundController_ object:self file:@"SBRingerControl.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"bannerManager"}];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithBannerManager_soundController_ object:self file:@"SBRingerControl.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"soundController"}];

LABEL_4:
  v14.receiver = self;
  v14.super_class = SBRingerControl;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  self = v8;
  if (v8)
  {
    objc_storeWeak(v8 + 4, v5);
    objc_storeStrong(self + 5, manager);
    v9 = +[SBAVSystemControllerCache sharedInstance];
    v10 = self[1];
    self[1] = v9;

    [self[1] addObserver:self];
    *(self + 24) = 1;
  }

LABEL_6:

  return self;
}

- (void)_setRingerMuted:(uint64_t)muted
{
  if (muted && *(muted + 24) != a2)
  {
    v5 = SBLogRingerHUD();
    if (OUTLINED_FUNCTION_3_12(v5))
    {
      OUTLINED_FUNCTION_1_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0xEu);
    }

    *(muted + 24) = a2;
    v11 = MEMORY[0x277CBEAC0];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v13 = [v11 dictionaryWithObject:v12 forKey:@"SBRingerChangedRingerMutedUserInfoKey"];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBRingerChangedNotification" object:0 userInfo:v13];
  }
}

- (void)setRingerMuted:(uint64_t)muted reason:
{
  if (self)
  {
    return [self setRingerMuted:a2 withFeedback:1 reason:muted clientType:1];
  }

  return self;
}

- (void)_playSoundForRingerMuted:(void *)muted
{
  if (muted)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        return;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        return;
      }
    }

    v4 = muted[5];
    v7 = [muted soundForRingerMuted:a2];
    [v4 playSoundWithDefaultEnvironment:v7];
  }
}

- (void)_avsc_setRingerMuted:(void *)muted reason:(int)reason clientType:
{
  mutedCopy = muted;
  v8 = mutedCopy;
  if (self)
  {
    if (!mutedCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__avsc_setRingerMuted_reason_clientType_ object:self file:@"SBRingerControl.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
    }

    _avscOperationsQueue = [(SBRingerControl *)self _avscOperationsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBRingerControl__avsc_setRingerMuted_reason_clientType___block_invoke;
    block[3] = &unk_2783B4C00;
    v14 = a2;
    v12 = v8;
    reasonCopy = reason;
    dispatch_async(_avscOperationsQueue, block);
  }
}

- (uint64_t)isRingerMuted
{
  if (self)
  {
    return OUTLINED_FUNCTION_0_26(self);
  }

  return self;
}

- (uint64_t)isRingerHUDVisible
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 48));
    selfCopy = (WeakRetained | *(selfCopy + 64)) != 0;
  }

  return selfCopy;
}

- (BOOL)isRingerHUDVisibleOnWindowScene:(_BOOL8)scene
{
  v3 = a2;
  if (scene)
  {
    if ([(SBRingerControl *)scene isRingerHUDVisible])
    {
      WeakRetained = objc_loadWeakRetained((scene + 48));
      _sbWindowScene = [WeakRetained _sbWindowScene];
      scene = _sbWindowScene == v3;
    }

    else
    {
      scene = 0;
    }
  }

  return scene;
}

- (void)activateRingerHUDForMuteChange:(uint64_t)change
{
  if (change)
  {
    [(SBRingerControl *)change activateRingerHUD:0 withInitialVolume:0 fromSource:-1.0 forPreviewing:?];
  }
}

- (void)activateRingerHUDForMuteChange:(NSObject *)change forPreviewing:
{
  if (self)
  {
    [(SBRingerControl *)self activateRingerHUD:0 withInitialVolume:change fromSource:-1.0 forPreviewing:?];
  }
}

- (void)activateRingerHUD:(uint64_t)d withInitialVolume:(NSObject *)volume fromSource:(float)source forPreviewing:
{
  v35 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v10 = SBLogRingerHUD();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"tone";
      if (!a2)
      {
        v12 = @"silent";
      }

      v33 = 138543362;
      v34 = v12;
      OUTLINED_FUNCTION_2_14(&dword_21ED4E000, v10, v11, "SBRingerControl activateRingerHUD: %{public}@", &v33);
    }

    v30 = 0;
    v13 = [(SBRingerControl *)self _isRingerUIDisplayableWithReason:?];
    v14 = v30;
    if (!v13)
    {
      v28 = SBLogRingerHUD();
      if (OUTLINED_FUNCTION_3_12(v28))
      {
        v33 = 138543362;
        v34 = v14;
        OUTLINED_FUNCTION_2_14(&dword_21ED4E000, volume, v29, "SBRingerControl HUD is not displayable; %{public}@", &v33);
      }

      [(SBRingerControl *)self dismissRingerHUD];
      goto LABEL_43;
    }

    v15 = +[SBSoundPreferences vibrateWhenSilent];
    v16 = +[SBSoundPreferences vibrateWhenRinging];
    v17 = +[SBLockScreenManager sharedInstance];
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() == 2)
      {
        if (([v17 isUILocked] & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_17;
      }

      if (!v15 && !v16 && [v17 isUILocked])
      {
LABEL_17:
        v31 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
        currentDevice = [MEMORY[0x277CCABB0] numberWithBool:1];
        v32 = currentDevice;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v17 unlockUIFromSource:16 withOptions:v20];

LABEL_18:
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1 && (v15 || v16))
      {
        goto LABEL_18;
      }

      isUILocked = [v17 isUILocked];

      if (isUILocked)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if (SBSIsSystemApertureAvailable())
    {
      v21 = *(self + 64);
      v22 = v21 != 0;
      if (v21)
      {
        WeakRetained = v21;
        if ([(SBRingerAlertElement *)v21 source]!= d)
        {
          [(SBRingerControl *)self _dismissRingerAlertElement:@"Ringer source has changed" forReason:?];
          [(SBRingerControl *)self activateRingerHUD:a2 withInitialVolume:d fromSource:volume forPreviewing:source];
LABEL_42:

LABEL_43:
          return;
        }

        [(SBRingerAlertElement *)WeakRetained setActivatedForPreviewing:volume];
LABEL_27:
        if ([(SBRingerAlertElement *)WeakRetained isPresented])
        {
          if (![(SBRingerAlertElement *)WeakRetained isPresented])
          {
LABEL_34:
            if (source <= 0.0)
            {
              source = *(self + 28);
            }

            [(SBRingerAlertElement *)WeakRetained setRingerSilent:a2 == 0];
            if (!v22)
            {
              *&v26 = source;
              [(SBRingerAlertElement *)WeakRetained setVolume:0 animated:d == 1 forKeyPress:v26];
            }

            if (d)
            {
              v27 = 0;
            }

            else
            {
              v27 = volume ^ 1;
            }

            [(SBRingerAlertElement *)WeakRetained presentForMuteChange:v27];
            goto LABEL_42;
          }

          v25 = (a2 == 0) ^ [(SBRingerAlertElement *)WeakRetained isRingerSilent];
        }

        else
        {
          v25 = 1;
        }

        if (d == 1 && v25)
        {
          [(SBRingerControl *)self _playSoundForRingerMuted:?];
        }

        goto LABEL_34;
      }

      WeakRetained = [[SBRingerAlertElement alloc] initWithSource:d ringerSilent:a2 == 0 forPreviewing:volume];
      v24 = *(self + 64);
      *(self + 64) = WeakRetained;

      [(SBRingerAlertElement *)WeakRetained setDelegate:self];
      if (WeakRetained)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = 1;
    }

    WeakRetained = objc_loadWeakRetained((self + 48));
    if (!WeakRetained)
    {
      WeakRetained = [[SBRingerHUDViewController alloc] initWithActivatedForPreviewing:volume];
      objc_storeWeak((self + 48), WeakRetained);
      [(SBRingerAlertElement *)WeakRetained setDelegate:self];
      v22 = 0;
    }

    goto LABEL_27;
  }
}

- (void)activateRingerHUDForVolumeChangeWithInitialVolume:(uint64_t)volume
{
  if (volume)
  {
    v4 = [*(volume + 8) isRingerMuted] ^ 1;

    [(SBRingerControl *)volume activateRingerHUD:v4 withInitialVolume:1 fromSource:0 forPreviewing:a2];
  }
}

- (BOOL)_isRingerUIDisplayableWithReason:(void *)reason
{
  if (!reason)
  {
    return 0;
  }

  controlCenterCoordinator = [reason controlCenterCoordinator];
  v4 = controlCenterCoordinator;
  if (controlCenterCoordinator && [controlCenterCoordinator isPresented])
  {
    presentedControlCenterController = [v4 presentedControlCenterController];
    viewController = [presentedControlCenterController viewController];

    if ([viewController includesVisiblyUnobscuredModuleWithIdentifier:@"com.apple.control-center.MuteModule"])
    {
      v7 = @"Control Center with visible Mute Module presented";
    }

    else
    {
      v7 = 0;
    }

    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = 0;
  if (a2)
  {
LABEL_10:
    *a2 = v7;
  }

LABEL_11:
  v8 = v7 == 0;

  return v8;
}

- (void)dismissRingerHUD
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 48));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      [(SBRingerControl *)self _dismissRingerHUDViewController:@"SBRingerControlBannerRevocationReasonDismiss" forReason:?];
      WeakRetained = v6;
    }

    v3 = *(self + 64);
    if (v3)
    {
      v7 = WeakRetained;
      v4 = v3;
      v5 = NSStringFromSelector(sel_dismissRingerHUD);
      [(SBRingerControl *)self _dismissRingerAlertElement:v4 forReason:v5];

      WeakRetained = v7;
    }
  }
}

- (void)_dismissRingerAlertElement:(void *)element forReason:
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  elementCopy = element;
  if (self)
  {
    assertion = [v5 assertion];
    if ([assertion isValid])
    {
      v8 = SBLogRingerHUD();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = elementCopy;
        OUTLINED_FUNCTION_2_14(&dword_21ED4E000, v8, v9, "SBRingerControl dismiss ringer alert element, reason: %@", &v11);
      }

      [assertion invalidateWithReason:elementCopy];
    }

    v10 = *(self + 64);
    if (v10 == v5)
    {
      *(self + 64) = 0;
    }
  }
}

- (void)nudgeUp:(id *)up
{
  if (up)
  {
    _ringerUICoordinator = [(SBRingerControl *)up _ringerUICoordinator];
    [_ringerUICoordinator nudgeUp:a2];
  }
}

- (id)_ringerUICoordinator
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(self + 6);
    v3 = WeakRetained;
    if (!WeakRetained)
    {
      v3 = selfCopy[8];
    }

    selfCopy = v3;
  }

  return selfCopy;
}

- (void)buttonReleased
{
  if (self)
  {
    _ringerUICoordinator = [(SBRingerControl *)self _ringerUICoordinator];
    [_ringerUICoordinator buttonReleased];
  }
}

- (void)_dismissRingerHUDViewController:(void *)controller forReason:
{
  v19 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (self)
  {
    v6 = a2;
    v7 = SBLogRingerHUD();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = controllerCopy;
      OUTLINED_FUNCTION_2_14(&dword_21ED4E000, v7, v8, "SBRingerControl _dismissRingerHUDViewController; reason: %@", &v17);
    }

    WeakRetained = objc_loadWeakRetained((self + 32));
    v10 = MEMORY[0x277CF0AC0];
    requesterIdentifier = [v6 requesterIdentifier];

    v12 = [v10 identificationWithRequesterIdentifier:requesterIdentifier];
    v15 = *MEMORY[0x277D68068];
    v16 = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [WeakRetained revokePresentablesWithIdentification:v12 reason:controllerCopy options:0 userInfo:v13 error:0];
  }
}

- (void)setVolume:(float)volume forKeyPress:
{
  if (self)
  {
    v7 = SBLogRingerHUD();
    if (OUTLINED_FUNCTION_3_12(v7))
    {
      OUTLINED_FUNCTION_1_14();
      _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    *(self + 28) = volume;
    _ringerUICoordinator = [(SBRingerControl *)self _ringerUICoordinator];
    LODWORD(v14) = *(self + 28);
    [_ringerUICoordinator setVolume:1 animated:a2 forKeyPress:v14];
  }
}

- (void)cache:(id)cache didUpdateRingerMuted:(BOOL)muted
{
  mutedCopy = muted;
  v7 = SBLogRingerHUD();
  if (OUTLINED_FUNCTION_3_12(v7))
  {
    OUTLINED_FUNCTION_1_14();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
  }

  [(SBRingerControl *)self _setRingerMuted:mutedCopy];
  if (SBUIHasHIDRingerSwitch())
  {
    if (!self)
    {
      return;
    }

    goto LABEL_5;
  }

  isRingerHUDVisible = [(SBRingerControl *)self isRingerHUDVisible];
  if (self && (isRingerHUDVisible & 1) != 0)
  {
LABEL_5:
    [(SBRingerControl *)self activateRingerHUD:0 withInitialVolume:0 fromSource:-1.0 forPreviewing:?];
  }
}

- (void)controlCenter:(id)center willPresentOnWindowScene:(id)scene
{
  if ([(SBRingerControl *)self isRingerHUDVisibleOnWindowScene:scene]&& ![(SBRingerControl *)self _isRingerUIDisplayableWithReason:?])
  {

    [(SBRingerControl *)self dismissRingerHUD];
  }
}

void __56__SBRingerControl_ringerAlertElementWantsToBePresented___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(SBCameraHardwareButton *)WeakRetained setForegroundPendingRemovalCameraShutterButtonPIDs:?];
}

- (void)_updateRingerAlertPreviewingState
{
  if (self)
  {
    v2 = *(self + 64);
    v12 = v2;
    if (v2)
    {
      alertHost = [v2 alertHost];
      alertAssertion = [alertHost alertAssertion];

      state = [(SBSystemActionCompoundPreviewAssertion *)*(self + 56) state];
      if (state)
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        [alertAssertion setAutomaticallyInvalidatable:0 lockingWithKey:v7 reason:@"Previewing"];
      }

      else
      {
        [alertAssertion invalidateWithReason:@"Stop previewing"];
      }

      [v12 setPreviewing:state & 1];
      [v12 setUrgent:HIBYTE(state) & 1];
      [v12 setExpanding:(state >> 8) & 1];
      [v12 setProminent:HIWORD(state) & 1];
    }

    else
    {
      state2 = [(SBSystemActionCompoundPreviewAssertion *)*(self + 56) state];
      WeakRetained = objc_loadWeakRetained((self + 48));
      alertAssertion = WeakRetained;
      if (state2)
      {
        if ([WeakRetained isPresentableAppearingOrAppeared] && (state2 & 0x100) != 0)
        {
          view = [alertAssertion view];
          [view sb_setInflated];
        }

        -[SBRingerControl activateRingerHUD:withInitialVolume:fromSource:forPreviewing:](self, [*(self + 8) isRingerMuted] ^ 1, 0, 1, -1.0);
      }

      else if (WeakRetained)
      {
        view2 = [WeakRetained view];
        [view2 sb_setDeflated];

        [(SBRingerControl *)self _dismissRingerHUDViewController:alertAssertion forReason:@"SBRingerControlBannerRevocationReasonDismiss"];
      }
    }
  }
}

- (void)_handleRingerAlertPreviewingEvent:(uint64_t)event
{
  if (!event)
  {
    return;
  }

  v7 = *(event + 64);
  WeakRetained = objc_loadWeakRetained((event + 48));
  v5 = WeakRetained;
  if (a2 == 1)
  {
    view = [WeakRetained view];
    [view sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    [v7 pop];
    view = [v5 view];
    [view sb_stopInflating];
LABEL_6:
  }
}

- (id)_avscOperationsQueue
{
  if (self)
  {
    selfCopy = self;
    v3 = self[2];
    if (!v3)
    {
      avscOperationsWorkloop = [self[1] avscOperationsWorkloop];
      if (!avscOperationsWorkloop)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel__avscOperationsQueue object:selfCopy file:@"SBRingerControl.m" lineNumber:425 description:@"Must use the AVSC cache's target workloop"];
      }

      serial = [MEMORY[0x277CF0C18] serial];
      v6 = [serial serviceClass:25 relativePriority:2];
      v7 = [v6 targetQueue:avscOperationsWorkloop];

      v8 = BSDispatchQueueCreate();
      v9 = selfCopy[2];
      selfCopy[2] = v8;

      v3 = selfCopy[2];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)bannerManager
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 4);
    v1 = vars8;
  }

  return WeakRetained;
}

- (double)volume
{
  if (!self)
  {
    return 0.0;
  }

  LODWORD(result) = *(self + 28);
  return result;
}

- (uint64_t)setVolume:(uint64_t)result
{
  if (result)
  {
    *(result + 28) = a2;
  }

  return result;
}

- (BOOL)_accessibilityIsRingerMuted
{
  if (self)
  {
    LOBYTE(self) = OUTLINED_FUNCTION_0_26(self);
  }

  return self;
}

- (void)ringerHUDViewControllerWantsToBePresented:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Failed to post Ringer HUD: %@", &v4, 0xCu);
}

- (void)previewRingerStateForReason:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
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
    v16 = @"SBRingerControl.m";
    v17 = 1024;
    v18 = 384;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)observeRingerMutedWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBRingerControl.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

@end