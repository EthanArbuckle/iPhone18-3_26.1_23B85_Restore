@interface SBRingerControl
- (BOOL)_accessibilityIsRingerMuted;
- (BOOL)_isRingerUIDisplayableWithReason:(void *)a1;
- (BOOL)isRingerHUDVisibleOnWindowScene:(_BOOL8)a1;
- (SBControlCenterCoordinator)controlCenterCoordinator;
- (double)volume;
- (id)_avscOperationsQueue;
- (id)_ringerUICoordinator;
- (id)bannerManager;
- (id)initWithBannerManager:(void *)a3 soundController:;
- (id)observeRingerMutedWithBlock:(id)a3;
- (id)previewRingerStateForReason:(id)a3;
- (id)soundForRingerMuted:(BOOL)a3;
- (uint64_t)isRingerHUDVisible;
- (uint64_t)isRingerMuted;
- (uint64_t)setVolume:(uint64_t)result;
- (void)_avsc_setRingerMuted:(void *)a3 reason:(int)a4 clientType:;
- (void)_dismissRingerAlertElement:(void *)a3 forReason:;
- (void)_dismissRingerHUDViewController:(void *)a3 forReason:;
- (void)_handleRingerAlertPreviewingEvent:(uint64_t)a1;
- (void)_playSoundForRingerMuted:(void *)a1;
- (void)_setRingerMuted:(uint64_t)a1;
- (void)_updateRingerAlertPreviewingState;
- (void)activateRingerHUD:(uint64_t)a3 withInitialVolume:(NSObject *)a4 fromSource:(float)a5 forPreviewing:;
- (void)activateRingerHUDForMuteChange:(NSObject *)a3 forPreviewing:;
- (void)activateRingerHUDForMuteChange:(uint64_t)a1;
- (void)activateRingerHUDForVolumeChangeWithInitialVolume:(uint64_t)a1;
- (void)buttonReleased;
- (void)cache:(id)a3 didUpdateRingerMuted:(BOOL)a4;
- (void)controlCenter:(id)a3 willPresentOnWindowScene:(id)a4;
- (void)dismissRingerHUD;
- (void)nudgeUp:(id *)a1;
- (void)ringerAlertElementWantsToBePresented:(id)a3;
- (void)ringerAlertElementWantsToResetAutomaticInvalidationTimer:(id)a3;
- (void)ringerHUDViewControllerWantsToBeDismissed:(id)a3;
- (void)ringerHUDViewControllerWantsToBePresented:(id)a3;
- (void)setControlCenterCoordinator:(id)a3;
- (void)setRingerMuted:(BOOL)a3 withFeedback:(BOOL)a4 reason:(id)a5 clientType:(unsigned int)a6;
- (void)setRingerMuted:(uint64_t)a3 reason:;
- (void)setVolume:(float)a3 forKeyPress:;
@end

@implementation SBRingerControl

- (void)setRingerMuted:(BOOL)a3 withFeedback:(BOOL)a4 reason:(id)a5 clientType:(unsigned int)a6
{
  v7 = a4;
  v8 = a3;
  v10 = a5;
  if (v7)
  {
    [(SBRingerControl *)self _playSoundForRingerMuted:v8];
  }

  [(SBRingerControl *)&self->super.isa _avsc_setRingerMuted:v8 reason:v10 clientType:a6];
}

- (void)ringerHUDViewControllerWantsToBePresented:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isActivatedForPreviewing])
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
  v8 = [WeakRetained postPresentable:v4 withOptions:0 userInfo:v6 error:&v11];

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

- (void)ringerHUDViewControllerWantsToBeDismissed:(id)a3
{
  v4 = a3;
  if (([v4 isActivatedForPreviewing] & 1) == 0)
  {
    [(SBRingerControl *)self _dismissRingerHUDViewController:v4 forReason:@"SBRingerControlBannerRevocationReasonTimer"];
  }
}

- (void)ringerAlertElementWantsToBePresented:(id)a3
{
  v4 = a3;
  v5 = [v4 assertion];
  v6 = [v5 isValid];

  if ((v6 & 1) == 0)
  {
    v7 = [SBApp systemApertureControllerForMainDisplay];
    v8 = [v7 registerElement:v4];
    objc_initWeak(&location, self);
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __56__SBRingerControl_ringerAlertElementWantsToBePresented___block_invoke;
    v12 = &unk_2783B4B88;
    objc_copyWeak(&v13, &location);
    [v8 addInvalidationBlock:&v9];
    [v4 setAssertion:{v8, v9, v10, v11, v12}];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

- (void)ringerAlertElementWantsToResetAutomaticInvalidationTimer:(id)a3
{
  v3 = [a3 alertHost];
  v4 = [v3 alertAssertion];

  [v4 resetAutomaticInvalidationTimer];
}

- (void)setControlCenterCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);
  if (WeakRetained != obj)
  {
    [WeakRetained removeObserver:self];
    objc_storeWeak(&self->_controlCenterCoordinator, obj);
    [obj addObserver:self];
  }
}

- (id)soundForRingerMuted:(BOOL)a3
{
  if (a3)
  {
    v3 = 1004;
  }

  else
  {
    v3 = 1005;
  }

  return [MEMORY[0x277D679C8] soundWithFeedbackEventType:v3];
}

- (id)previewRingerStateForReason:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBRingerControl *)a2 previewRingerStateForReason:?];
  }

  v6 = v5;
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

- (id)observeRingerMutedWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBRingerControl *)a2 observeRingerMutedWithBlock:?];
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __47__SBRingerControl_observeRingerMutedWithBlock___block_invoke;
  v16[3] = &unk_2783B4BD8;
  v17 = v5;
  v8 = v5;
  v9 = [v6 addObserverForName:@"SBRingerChangedNotification" object:0 queue:v7 usingBlock:v16];

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

- (id)initWithBannerManager:(void *)a3 soundController:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (v5)
  {
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:sel_initWithBannerManager_soundController_ object:a1 file:@"SBRingerControl.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"bannerManager"}];

    if (v7)
    {
      goto LABEL_4;
    }
  }

  v13 = [MEMORY[0x277CCA890] currentHandler];
  [v13 handleFailureInMethod:sel_initWithBannerManager_soundController_ object:a1 file:@"SBRingerControl.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"soundController"}];

LABEL_4:
  v14.receiver = a1;
  v14.super_class = SBRingerControl;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  a1 = v8;
  if (v8)
  {
    objc_storeWeak(v8 + 4, v5);
    objc_storeStrong(a1 + 5, a3);
    v9 = +[SBAVSystemControllerCache sharedInstance];
    v10 = a1[1];
    a1[1] = v9;

    [a1[1] addObserver:a1];
    *(a1 + 24) = 1;
  }

LABEL_6:

  return a1;
}

- (void)_setRingerMuted:(uint64_t)a1
{
  if (a1 && *(a1 + 24) != a2)
  {
    v5 = SBLogRingerHUD();
    if (OUTLINED_FUNCTION_3_12(v5))
    {
      OUTLINED_FUNCTION_1_14();
      _os_log_impl(v6, v7, v8, v9, v10, 0xEu);
    }

    *(a1 + 24) = a2;
    v11 = MEMORY[0x277CBEAC0];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v13 = [v11 dictionaryWithObject:v12 forKey:@"SBRingerChangedRingerMutedUserInfoKey"];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"SBRingerChangedNotification" object:0 userInfo:v13];
  }
}

- (void)setRingerMuted:(uint64_t)a3 reason:
{
  if (a1)
  {
    return [a1 setRingerMuted:a2 withFeedback:1 reason:a3 clientType:1];
  }

  return a1;
}

- (void)_playSoundForRingerMuted:(void *)a1
{
  if (a1)
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
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6 == 1)
      {
        return;
      }
    }

    v4 = a1[5];
    v7 = [a1 soundForRingerMuted:a2];
    [v4 playSoundWithDefaultEnvironment:v7];
  }
}

- (void)_avsc_setRingerMuted:(void *)a3 reason:(int)a4 clientType:
{
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (!v7)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:sel__avsc_setRingerMuted_reason_clientType_ object:a1 file:@"SBRingerControl.m" lineNumber:433 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
    }

    v9 = [(SBRingerControl *)a1 _avscOperationsQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SBRingerControl__avsc_setRingerMuted_reason_clientType___block_invoke;
    block[3] = &unk_2783B4C00;
    v14 = a2;
    v12 = v8;
    v13 = a4;
    dispatch_async(v9, block);
  }
}

- (uint64_t)isRingerMuted
{
  if (a1)
  {
    return OUTLINED_FUNCTION_0_26(a1);
  }

  return a1;
}

- (uint64_t)isRingerHUDVisible
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v1 = (WeakRetained | *(v1 + 64)) != 0;
  }

  return v1;
}

- (BOOL)isRingerHUDVisibleOnWindowScene:(_BOOL8)a1
{
  v3 = a2;
  if (a1)
  {
    if ([(SBRingerControl *)a1 isRingerHUDVisible])
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v5 = [WeakRetained _sbWindowScene];
      a1 = v5 == v3;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)activateRingerHUDForMuteChange:(uint64_t)a1
{
  if (a1)
  {
    [(SBRingerControl *)a1 activateRingerHUD:0 withInitialVolume:0 fromSource:-1.0 forPreviewing:?];
  }
}

- (void)activateRingerHUDForMuteChange:(NSObject *)a3 forPreviewing:
{
  if (a1)
  {
    [(SBRingerControl *)a1 activateRingerHUD:0 withInitialVolume:a3 fromSource:-1.0 forPreviewing:?];
  }
}

- (void)activateRingerHUD:(uint64_t)a3 withInitialVolume:(NSObject *)a4 fromSource:(float)a5 forPreviewing:
{
  v35 = *MEMORY[0x277D85DE8];
  if (a1)
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
    v13 = [(SBRingerControl *)a1 _isRingerUIDisplayableWithReason:?];
    v14 = v30;
    if (!v13)
    {
      v28 = SBLogRingerHUD();
      if (OUTLINED_FUNCTION_3_12(v28))
      {
        v33 = 138543362;
        v34 = v14;
        OUTLINED_FUNCTION_2_14(&dword_21ED4E000, a4, v29, "SBRingerControl HUD is not displayable; %{public}@", &v33);
      }

      [(SBRingerControl *)a1 dismissRingerHUD];
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
        v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v32 = v18;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        [v17 unlockUIFromSource:16 withOptions:v20];

LABEL_18:
      }
    }

    else
    {
      v18 = [MEMORY[0x277D75418] currentDevice];
      if ([v18 userInterfaceIdiom] != 1 && (v15 || v16))
      {
        goto LABEL_18;
      }

      v19 = [v17 isUILocked];

      if (v19)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if (SBSIsSystemApertureAvailable())
    {
      v21 = *(a1 + 64);
      v22 = v21 != 0;
      if (v21)
      {
        WeakRetained = v21;
        if ([(SBRingerAlertElement *)v21 source]!= a3)
        {
          [(SBRingerControl *)a1 _dismissRingerAlertElement:@"Ringer source has changed" forReason:?];
          [(SBRingerControl *)a1 activateRingerHUD:a2 withInitialVolume:a3 fromSource:a4 forPreviewing:a5];
LABEL_42:

LABEL_43:
          return;
        }

        [(SBRingerAlertElement *)WeakRetained setActivatedForPreviewing:a4];
LABEL_27:
        if ([(SBRingerAlertElement *)WeakRetained isPresented])
        {
          if (![(SBRingerAlertElement *)WeakRetained isPresented])
          {
LABEL_34:
            if (a5 <= 0.0)
            {
              a5 = *(a1 + 28);
            }

            [(SBRingerAlertElement *)WeakRetained setRingerSilent:a2 == 0];
            if (!v22)
            {
              *&v26 = a5;
              [(SBRingerAlertElement *)WeakRetained setVolume:0 animated:a3 == 1 forKeyPress:v26];
            }

            if (a3)
            {
              v27 = 0;
            }

            else
            {
              v27 = a4 ^ 1;
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

        if (a3 == 1 && v25)
        {
          [(SBRingerControl *)a1 _playSoundForRingerMuted:?];
        }

        goto LABEL_34;
      }

      WeakRetained = [[SBRingerAlertElement alloc] initWithSource:a3 ringerSilent:a2 == 0 forPreviewing:a4];
      v24 = *(a1 + 64);
      *(a1 + 64) = WeakRetained;

      [(SBRingerAlertElement *)WeakRetained setDelegate:a1];
      if (WeakRetained)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v22 = 1;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (!WeakRetained)
    {
      WeakRetained = [[SBRingerHUDViewController alloc] initWithActivatedForPreviewing:a4];
      objc_storeWeak((a1 + 48), WeakRetained);
      [(SBRingerAlertElement *)WeakRetained setDelegate:a1];
      v22 = 0;
    }

    goto LABEL_27;
  }
}

- (void)activateRingerHUDForVolumeChangeWithInitialVolume:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 8) isRingerMuted] ^ 1;

    [(SBRingerControl *)a1 activateRingerHUD:v4 withInitialVolume:1 fromSource:0 forPreviewing:a2];
  }
}

- (BOOL)_isRingerUIDisplayableWithReason:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1 controlCenterCoordinator];
  v4 = v3;
  if (v3 && [v3 isPresented])
  {
    v5 = [v4 presentedControlCenterController];
    v6 = [v5 viewController];

    if ([v6 includesVisiblyUnobscuredModuleWithIdentifier:@"com.apple.control-center.MuteModule"])
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
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      [(SBRingerControl *)a1 _dismissRingerHUDViewController:@"SBRingerControlBannerRevocationReasonDismiss" forReason:?];
      WeakRetained = v6;
    }

    v3 = *(a1 + 64);
    if (v3)
    {
      v7 = WeakRetained;
      v4 = v3;
      v5 = NSStringFromSelector(sel_dismissRingerHUD);
      [(SBRingerControl *)a1 _dismissRingerAlertElement:v4 forReason:v5];

      WeakRetained = v7;
    }
  }
}

- (void)_dismissRingerAlertElement:(void *)a3 forReason:
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 assertion];
    if ([v7 isValid])
    {
      v8 = SBLogRingerHUD();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v6;
        OUTLINED_FUNCTION_2_14(&dword_21ED4E000, v8, v9, "SBRingerControl dismiss ringer alert element, reason: %@", &v11);
      }

      [v7 invalidateWithReason:v6];
    }

    v10 = *(a1 + 64);
    if (v10 == v5)
    {
      *(a1 + 64) = 0;
    }
  }
}

- (void)nudgeUp:(id *)a1
{
  if (a1)
  {
    v3 = [(SBRingerControl *)a1 _ringerUICoordinator];
    [v3 nudgeUp:a2];
  }
}

- (id)_ringerUICoordinator
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v3 = WeakRetained;
    if (!WeakRetained)
    {
      v3 = v1[8];
    }

    v1 = v3;
  }

  return v1;
}

- (void)buttonReleased
{
  if (a1)
  {
    v1 = [(SBRingerControl *)a1 _ringerUICoordinator];
    [v1 buttonReleased];
  }
}

- (void)_dismissRingerHUDViewController:(void *)a3 forReason:
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a1)
  {
    v6 = a2;
    v7 = SBLogRingerHUD();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      OUTLINED_FUNCTION_2_14(&dword_21ED4E000, v7, v8, "SBRingerControl _dismissRingerHUDViewController; reason: %@", &v17);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = MEMORY[0x277CF0AC0];
    v11 = [v6 requesterIdentifier];

    v12 = [v10 identificationWithRequesterIdentifier:v11];
    v15 = *MEMORY[0x277D68068];
    v16 = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = [WeakRetained revokePresentablesWithIdentification:v12 reason:v5 options:0 userInfo:v13 error:0];
  }
}

- (void)setVolume:(float)a3 forKeyPress:
{
  if (a1)
  {
    v7 = SBLogRingerHUD();
    if (OUTLINED_FUNCTION_3_12(v7))
    {
      OUTLINED_FUNCTION_1_14();
      _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
    }

    *(a1 + 28) = a3;
    v13 = [(SBRingerControl *)a1 _ringerUICoordinator];
    LODWORD(v14) = *(a1 + 28);
    [v13 setVolume:1 animated:a2 forKeyPress:v14];
  }
}

- (void)cache:(id)a3 didUpdateRingerMuted:(BOOL)a4
{
  v5 = a4;
  v7 = SBLogRingerHUD();
  if (OUTLINED_FUNCTION_3_12(v7))
  {
    OUTLINED_FUNCTION_1_14();
    _os_log_impl(v8, v9, v10, v11, v12, 8u);
  }

  [(SBRingerControl *)self _setRingerMuted:v5];
  if (SBUIHasHIDRingerSwitch())
  {
    if (!self)
    {
      return;
    }

    goto LABEL_5;
  }

  v13 = [(SBRingerControl *)self isRingerHUDVisible];
  if (self && (v13 & 1) != 0)
  {
LABEL_5:
    [(SBRingerControl *)self activateRingerHUD:0 withInitialVolume:0 fromSource:-1.0 forPreviewing:?];
  }
}

- (void)controlCenter:(id)a3 willPresentOnWindowScene:(id)a4
{
  if ([(SBRingerControl *)self isRingerHUDVisibleOnWindowScene:a4]&& ![(SBRingerControl *)self _isRingerUIDisplayableWithReason:?])
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
  if (a1)
  {
    v2 = *(a1 + 64);
    v12 = v2;
    if (v2)
    {
      v3 = [v2 alertHost];
      v4 = [v3 alertAssertion];

      v5 = [(SBSystemActionCompoundPreviewAssertion *)*(a1 + 56) state];
      if (v5)
      {
        v6 = objc_opt_class();
        v7 = NSStringFromClass(v6);
        [v4 setAutomaticallyInvalidatable:0 lockingWithKey:v7 reason:@"Previewing"];
      }

      else
      {
        [v4 invalidateWithReason:@"Stop previewing"];
      }

      [v12 setPreviewing:v5 & 1];
      [v12 setUrgent:HIBYTE(v5) & 1];
      [v12 setExpanding:(v5 >> 8) & 1];
      [v12 setProminent:HIWORD(v5) & 1];
    }

    else
    {
      v8 = [(SBSystemActionCompoundPreviewAssertion *)*(a1 + 56) state];
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      v4 = WeakRetained;
      if (v8)
      {
        if ([WeakRetained isPresentableAppearingOrAppeared] && (v8 & 0x100) != 0)
        {
          v11 = [v4 view];
          [v11 sb_setInflated];
        }

        -[SBRingerControl activateRingerHUD:withInitialVolume:fromSource:forPreviewing:](a1, [*(a1 + 8) isRingerMuted] ^ 1, 0, 1, -1.0);
      }

      else if (WeakRetained)
      {
        v10 = [WeakRetained view];
        [v10 sb_setDeflated];

        [(SBRingerControl *)a1 _dismissRingerHUDViewController:v4 forReason:@"SBRingerControlBannerRevocationReasonDismiss"];
      }
    }
  }
}

- (void)_handleRingerAlertPreviewingEvent:(uint64_t)a1
{
  if (!a1)
  {
    return;
  }

  v7 = *(a1 + 64);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2 == 1)
  {
    v6 = [WeakRetained view];
    [v6 sb_setDeflated];
    goto LABEL_6;
  }

  if (!a2)
  {
    [v7 pop];
    v6 = [v5 view];
    [v6 sb_stopInflating];
LABEL_6:
  }
}

- (id)_avscOperationsQueue
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[2];
    if (!v3)
    {
      v4 = [a1[1] avscOperationsWorkloop];
      if (!v4)
      {
        v11 = [MEMORY[0x277CCA890] currentHandler];
        [v11 handleFailureInMethod:sel__avscOperationsQueue object:v2 file:@"SBRingerControl.m" lineNumber:425 description:@"Must use the AVSC cache's target workloop"];
      }

      v5 = [MEMORY[0x277CF0C18] serial];
      v6 = [v5 serviceClass:25 relativePriority:2];
      v7 = [v6 targetQueue:v4];

      v8 = BSDispatchQueueCreate();
      v9 = v2[2];
      v2[2] = v8;

      v3 = v2[2];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
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
  if (!a1)
  {
    return 0.0;
  }

  LODWORD(result) = *(a1 + 28);
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