@interface SBScreenSleepCoordinator
- (BOOL)_shouldPresentAmbientOnSleepAndLock;
- (SBScreenSleepCoordinator)initWithScreenWakeAnimationController:(id)a3 lockScreenManager:(id)a4 backlightController:(id)a5 coverSheetPresentationManager:(id)a6 authenticationStatusProvider:(id)a7 authenticationAssertionProvider:(id)a8 alertItemsController:(id)a9 windowScene:(id)a10;
- (int64_t)targetBacklightStateForSource:(int64_t)a3 isWake:(BOOL)a4;
- (void)_performLockAnimated:(BOOL)a3;
- (void)_setTransitionWindowVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)sleepAndLockUIFromSource:(int)a3 lockOptions:(id)a4 completion:(id)a5;
- (void)transitionToVisualState:(id)a3 fromVisualState:(id)a4 animated:(BOOL)a5 completion:(id)a6;
@end

@implementation SBScreenSleepCoordinator

- (SBScreenSleepCoordinator)initWithScreenWakeAnimationController:(id)a3 lockScreenManager:(id)a4 backlightController:(id)a5 coverSheetPresentationManager:(id)a6 authenticationStatusProvider:(id)a7 authenticationAssertionProvider:(id)a8 alertItemsController:(id)a9 windowScene:(id)a10
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a8;
  v25 = a9;
  v17 = a10;
  v32.receiver = self;
  v32.super_class = SBScreenSleepCoordinator;
  v18 = [(SBScreenSleepCoordinator *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_screenWakeAnimationController, a3);
    objc_storeStrong(&v19->_lockScreenManager, a4);
    objc_storeStrong(&v19->_backlightController, a5);
    objc_storeStrong(&v19->_coverSheetPresentationManager, a6);
    objc_storeStrong(&v19->_authenticationStatusProvider, a7);
    objc_storeStrong(&v19->_authenticationAssertionProvider, a8);
    objc_storeStrong(&v19->_alertItemsController, a9);
    objc_storeStrong(&v19->_windowScene, a10);
    [(SBScreenWakeAnimationController *)v19->_screenWakeAnimationController setDelegate:v19];
    v20 = +[SBAlwaysOnDomain rootSettings];
    alwaysOnSettings = v19->_alwaysOnSettings;
    v19->_alwaysOnSettings = v20;

    v22 = [[SBScreenSleepCoordinatorBacklightEnvironment alloc] initWithCoordinator:v19];
    backlightSceneHostEnvironment = v19->_backlightSceneHostEnvironment;
    v19->_backlightSceneHostEnvironment = v22;
  }

  return v19;
}

- (void)sleepAndLockUIFromSource:(int)a3 lockOptions:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(SBScreenSleepCoordinator *)self _shouldPresentAmbientOnSleepAndLock];
  if (v10)
  {
    v11 = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke;
    v27[3] = &unk_2783A9C70;
    v23 = &v28;
    v28 = v9;
    v12 = [v11 presentIfAllowedAndLockWithCompletion:v27];

    if (v12)
    {
      v13 = SBLogBacklight();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = NSStringFromLockSource();
        *buf = 138412290;
        v30 = v14;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: presented ambient for source %@", buf, 0xCu);
      }

LABEL_9:
      goto LABEL_10;
    }
  }

  v15 = SBUIConvertLockSourceToBacklightChangeSource();
  v16 = SBLogBacklight();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromLockSource();
    *buf = 138412290;
    v30 = v17;
    _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: beginning sleep for source %@", buf, 0xCu);
  }

  self->_didLock = 0;
  self->_lastLockSource = a3;
  v18 = [v8 copy];
  lastLockOptions = self->_lastLockOptions;
  self->_lastLockOptions = v18;

  screenWakeAnimationController = self->_screenWakeAnimationController;
  v21 = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
  v22 = [v21 screenWakeAnimationTarget];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke_3;
  v24[3] = &unk_2783C1010;
  v24[4] = self;
  v26 = a3;
  v25 = v9;
  [(SBScreenWakeAnimationController *)screenWakeAnimationController sleepForSource:v15 target:v22 completion:v24];

  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
}

uint64_t __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    result = *(result + 32);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

uint64_t __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = SBLogBacklight();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: sleep completed", v10, 2u);
  }

  v3 = [*(*(a1 + 32) + 16) lockScreenEnvironment];
  v4 = [v3 backlightController];
  [v4 screenSleepCompletedForSource:*(a1 + 48)];

  v5 = [*(*(a1 + 32) + 24) screenIsOn];
  v6 = [*(*(a1 + 32) + 8) isWakeAnimationInProgress];
  v7 = SBLogBacklight();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5 & 1) != 0 || (v6)
  {
    if (v8)
    {
      v10[0] = 67109376;
      v10[1] = v5;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: skipping UI lock (screen on = %{BOOL}u wakeInProgress = %{BOOL}u)", v10, 0xEu);
    }
  }

  else
  {
    if (v8)
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: beginning UI lock", v10, 2u);
    }

    [*(a1 + 32) _performLock];
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int64_t)targetBacklightStateForSource:(int64_t)a3 isWake:(BOOL)a4
{
  if (a4)
  {
    return 1;
  }

  if (a3 == 39)
  {
    return 4;
  }

  if (a3 != 3)
  {
    return 3;
  }

  v6 = [(SBAlwaysOnSettings *)self->_alwaysOnSettings sideButtonBehavior];
  if (v6 == 1)
  {
    if ([(SBBacklightController *)self->_backlightController backlightState]== 3)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  else if (v6)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (void)_performLockAnimated:(BOOL)a3
{
  if (!self->_didLock)
  {
    v4 = a3;
    v9 = [(NSDictionary *)self->_lastLockOptions mutableCopy];
    v6 = [v9 objectForKey:@"SBUILockOptionsAnimateLockScreenActivationKey"];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:v4];
      [v9 setObject:v7 forKeyedSubscript:@"SBUILockOptionsAnimateLockScreenActivationKey"];
    }

    [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:self->_lastLockSource withOptions:v9];
    [(SBLockScreenManager *)self->_lockScreenManager setPasscodeVisible:0 animated:1];
    self->_didLock = 1;
    lastLockOptions = self->_lastLockOptions;
    self->_lastLockOptions = 0;
  }
}

- (void)_setTransitionWindowVisible:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  if (v6 && !self->_transitionWindow)
  {
    v9 = [SBScreenSleepTransitionWindow alloc];
    v10 = [MEMORY[0x277D759A0] mainScreen];
    v11 = [(_UIRootWindow *)v9 initWithScreen:v10];

    [(SBScreenSleepTransitionWindow *)v11 setWindowLevel:*MEMORY[0x277D76A38] + 801.0];
    v12 = [MEMORY[0x277D75348] blackColor];
    [(SBScreenSleepTransitionWindow *)v11 setBackgroundColor:v12];

    [(SBScreenSleepTransitionWindow *)v11 setAlpha:0.0];
    [(_UIRootWindow *)v11 setHidden:0];
    transitionWindow = self->_transitionWindow;
    self->_transitionWindow = v11;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke;
  v21[3] = &unk_2783A9F58;
  v22 = v6;
  v21[4] = self;
  v14 = MEMORY[0x223D6F7F0](v21);
  v15 = v14;
  if (v5)
  {
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke_2;
    v18[3] = &unk_2783B1E48;
    if (v6)
    {
      v17 = 65540;
    }

    else
    {
      v17 = 131076;
    }

    v20 = v6;
    v18[4] = self;
    v19 = v8;
    [v16 animateWithDuration:v17 delay:v15 options:v18 animations:0.185 completion:0.0];
  }

  else
  {
    (*(v14 + 16))(v14);
    if (v8)
    {
      (*(v8 + 2))(v8, 1);
    }
  }
}

uint64_t __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 104) setAlpha:v1];
}

uint64_t __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke_2(uint64_t a1)
{
  if ((*(a1 + 48) & 1) == 0)
  {
    [*(*(a1 + 32) + 104) setHidden:1];
    v2 = *(a1 + 32);
    v3 = *(v2 + 104);
    *(v2 + 104) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)_shouldPresentAmbientOnSleepAndLock
{
  v3 = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
  if ([v3 isPresentationRequested])
  {
    v4 = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
    v5 = [v4 isPresented] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)transitionToVisualState:(id)a3 fromVisualState:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v68 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = (self->_transitionGeneration + 1);
  self->_transitionGeneration = v12;
  v13 = SBLogBacklight();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v63 = v10;
    v64 = 2112;
    v65 = v9;
    v66 = 2048;
    v67 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: request to transition from %@ to %@ (generation %lu)", buf, 0x20u);
  }

  v14 = [v9 adjustedLuminance];
  v15 = [v9 activeAppearance];
  v16 = [v9 activeAppearance] == 1 && objc_msgSend(v9, "adjustedLuminance") == 2;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  if (v15)
  {
    [(SBScreenSleepCoordinator *)self _setTransitionWindowVisible:0 animated:1 completion:0];
    [(SBAlertItemsController *)self->_alertItemsController setForceAlertsToPend:0 forReason:v18];
  }

  if (!v14)
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

  if (v16)
  {
    if (v11)
    {
LABEL_11:
      v11[2](v11);
    }
  }

  else if (!v15)
  {
    v44 = [(SBLockScreenManager *)self->_lockScreenManager hasWakeToContentForInactiveDisplay];
    v42 = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    v19 = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider hasPasscodeSet];
    v20 = [(SBFAuthenticationAssertionProviding *)self->_authenticationAssertionProvider createSecureDisplayDeferralAssertionWithReason:v18];
    [(SBLockScreenManager *)self->_lockScreenManager noteBacklightWillTransitionToInactive];
    [(SBAlertItemsController *)self->_alertItemsController setForceAlertsToPend:1 forReason:v18];
    v21 = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
    v22 = [v21 lockController];
    [v22 prepareForUILock];

    objc_initWeak(buf, self);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke;
    v55[3] = &unk_2783C1038;
    v40 = v20;
    v56 = v40;
    objc_copyWeak(v60, buf);
    v57 = self;
    v60[1] = v12;
    v61 = v19;
    v23 = v18;
    v58 = v23;
    v59 = v11;
    v24 = MEMORY[0x223D6F7F0](v55);
    v25 = MEMORY[0x277CF0BA0];
    v26 = MEMORY[0x277D85CD0];
    v27 = MEMORY[0x277D85CD0];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_13;
    v53[3] = &unk_2783C1060;
    v41 = v24;
    v54 = v41;
    v28 = [v25 sentinelWithQueue:v26 signalHandler:v53];
    if ((v42 - 3) < 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = v44 & v19;
    }

    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_15;
    v51[3] = &unk_2783A8C18;
    v43 = v28;
    v52 = v43;
    v30 = MEMORY[0x223D6F7F0](v51);
    if (v29)
    {
      if ([(SBLockScreenManager *)self->_lockScreenManager isUILocked]&& v44)
      {
        v31 = [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager acquirePreserveSecureAppAssertionForReason:@"Inactive transition"];
        v30[2](v30);
        [v31 invalidate];
      }

      else
      {
        v33 = [(SBLockScreenManager *)self->_lockScreenManager acquireLockScreenPresentationPendingAssertionWithReason:v23];
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_3;
        v46[3] = &unk_2783C1088;
        objc_copyWeak(&v49, buf);
        v48 = v30;
        v34 = v33;
        v47 = v34;
        [(SBScreenSleepCoordinator *)self _setTransitionWindowVisible:1 animated:1 completion:v46];

        objc_destroyWeak(&v49);
      }
    }

    else
    {
      if (CSFeatureEnabled())
      {
        if ([v10 activeAppearance] == 1)
        {
          v32 = [v10 isDimmed];
        }

        else
        {
          v32 = 0;
        }

        if ([v9 activeAppearance])
        {
          v35 = 0;
        }

        else
        {
          v35 = v32;
        }

        v45 = v35;
        v36 = [MEMORY[0x277D02C20] rootSettings];
        v37 = [v36 coverSheetTransitionsSettings];
        v38 = [v37 flyInSettings];
        v39 = [v38 animatesFlyOutToAODFromIdleDim];

        [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager setCoverSheetTranslationToPresented:1 forcingTransition:1 ignoringPreflightRequirements:0 suppressingIconFly:v45 & (v39 ^ 1u) animated:1];
      }

      [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager setCoverSheetPresented:1 animated:1 withCompletion:v30];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_2_17;
      v50[3] = &unk_2783A8C18;
      v50[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v50];
    }

    objc_destroyWeak(v60);
    objc_destroyWeak(buf);
  }

LABEL_32:
}

void __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CD9FF0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_2;
  v13[3] = &unk_2783A8C18;
  v14 = *(a1 + 32);
  [v2 bs_performAfterSynchronizedCommit:v13];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v4 = *(*(a1 + 40) + 88);
    v5 = *(a1 + 72);
    v6 = SBLogBacklight();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4 == v5)
    {
      if (v7)
      {
        v8 = *(a1 + 72);
        *buf = 134217984;
        v16 = v8;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: Performing lock UI for inactive transition generation %lu", buf, 0xCu);
      }

      [WeakRetained _performLockAnimated:0];
      if (*(a1 + 80) != 1)
      {
        goto LABEL_10;
      }

      v9 = WeakRetained[2];
      v19[0] = @"SBUIUnlockOptionsOnlyWakeToActionsKey";
      v19[1] = @"SBUIUnlockOptionsNoBacklightChangesKey";
      v20[0] = MEMORY[0x277CBEC38];
      v20[1] = MEMORY[0x277CBEC38];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
      [v9 unlockUIFromSource:32 withOptions:v6];
    }

    else if (v7)
    {
      v10 = *(a1 + 72);
      v11 = *(*(a1 + 40) + 88);
      *buf = 134218240;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: Skipping lock UI for inactive transition generation %lu as we are now on generation %lu", buf, 0x16u);
    }

LABEL_10:
    [WeakRetained[7] setForceAlertsToPend:0 forReason:*(a1 + 48)];
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))();
  }
}

uint64_t __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_13(uint64_t a1, void *a2)
{
  if ([a2 isFailed])
  {
    v3 = SBLogBacklight();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_13_cold_1(v3);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_2_17(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) lockScreenEnvironment];
  v1 = [v2 backlightController];
  [v1 setInScreenOffMode:1 preservingCoverSheetPresentationState:1];
}

void __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
  v3 = dispatch_time(0, 300000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke_4;
  block[3] = &unk_2783A8C18;
  block[4] = WeakRetained;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

@end