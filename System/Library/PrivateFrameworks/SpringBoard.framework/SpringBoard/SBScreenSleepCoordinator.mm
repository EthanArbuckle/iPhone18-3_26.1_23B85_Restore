@interface SBScreenSleepCoordinator
- (BOOL)_shouldPresentAmbientOnSleepAndLock;
- (SBScreenSleepCoordinator)initWithScreenWakeAnimationController:(id)controller lockScreenManager:(id)manager backlightController:(id)backlightController coverSheetPresentationManager:(id)presentationManager authenticationStatusProvider:(id)provider authenticationAssertionProvider:(id)assertionProvider alertItemsController:(id)itemsController windowScene:(id)self0;
- (int64_t)targetBacklightStateForSource:(int64_t)source isWake:(BOOL)wake;
- (void)_performLockAnimated:(BOOL)animated;
- (void)_setTransitionWindowVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)sleepAndLockUIFromSource:(int)source lockOptions:(id)options completion:(id)completion;
- (void)transitionToVisualState:(id)state fromVisualState:(id)visualState animated:(BOOL)animated completion:(id)completion;
@end

@implementation SBScreenSleepCoordinator

- (SBScreenSleepCoordinator)initWithScreenWakeAnimationController:(id)controller lockScreenManager:(id)manager backlightController:(id)backlightController coverSheetPresentationManager:(id)presentationManager authenticationStatusProvider:(id)provider authenticationAssertionProvider:(id)assertionProvider alertItemsController:(id)itemsController windowScene:(id)self0
{
  controllerCopy = controller;
  managerCopy = manager;
  backlightControllerCopy = backlightController;
  presentationManagerCopy = presentationManager;
  providerCopy = provider;
  assertionProviderCopy = assertionProvider;
  itemsControllerCopy = itemsController;
  sceneCopy = scene;
  v32.receiver = self;
  v32.super_class = SBScreenSleepCoordinator;
  v18 = [(SBScreenSleepCoordinator *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_screenWakeAnimationController, controller);
    objc_storeStrong(&v19->_lockScreenManager, manager);
    objc_storeStrong(&v19->_backlightController, backlightController);
    objc_storeStrong(&v19->_coverSheetPresentationManager, presentationManager);
    objc_storeStrong(&v19->_authenticationStatusProvider, provider);
    objc_storeStrong(&v19->_authenticationAssertionProvider, assertionProvider);
    objc_storeStrong(&v19->_alertItemsController, itemsController);
    objc_storeStrong(&v19->_windowScene, scene);
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

- (void)sleepAndLockUIFromSource:(int)source lockOptions:(id)options completion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  completionCopy = completion;
  _shouldPresentAmbientOnSleepAndLock = [(SBScreenSleepCoordinator *)self _shouldPresentAmbientOnSleepAndLock];
  if (_shouldPresentAmbientOnSleepAndLock)
  {
    _ambientPresentationController = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke;
    v27[3] = &unk_2783A9C70;
    v23 = &v28;
    v28 = completionCopy;
    v12 = [_ambientPresentationController presentIfAllowedAndLockWithCompletion:v27];

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
  self->_lastLockSource = source;
  v18 = [optionsCopy copy];
  lastLockOptions = self->_lastLockOptions;
  self->_lastLockOptions = v18;

  screenWakeAnimationController = self->_screenWakeAnimationController;
  lockScreenEnvironment = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
  screenWakeAnimationTarget = [lockScreenEnvironment screenWakeAnimationTarget];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__SBScreenSleepCoordinator_sleepAndLockUIFromSource_lockOptions_completion___block_invoke_3;
  v24[3] = &unk_2783C1010;
  v24[4] = self;
  sourceCopy = source;
  v25 = completionCopy;
  [(SBScreenWakeAnimationController *)screenWakeAnimationController sleepForSource:v15 target:screenWakeAnimationTarget completion:v24];

  if (_shouldPresentAmbientOnSleepAndLock)
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

- (int64_t)targetBacklightStateForSource:(int64_t)source isWake:(BOOL)wake
{
  if (wake)
  {
    return 1;
  }

  if (source == 39)
  {
    return 4;
  }

  if (source != 3)
  {
    return 3;
  }

  sideButtonBehavior = [(SBAlwaysOnSettings *)self->_alwaysOnSettings sideButtonBehavior];
  if (sideButtonBehavior == 1)
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

  else if (sideButtonBehavior)
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

- (void)_performLockAnimated:(BOOL)animated
{
  if (!self->_didLock)
  {
    animatedCopy = animated;
    v9 = [(NSDictionary *)self->_lastLockOptions mutableCopy];
    v6 = [v9 objectForKey:@"SBUILockOptionsAnimateLockScreenActivationKey"];

    if (!v6)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithBool:animatedCopy];
      [v9 setObject:v7 forKeyedSubscript:@"SBUILockOptionsAnimateLockScreenActivationKey"];
    }

    [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:self->_lastLockSource withOptions:v9];
    [(SBLockScreenManager *)self->_lockScreenManager setPasscodeVisible:0 animated:1];
    self->_didLock = 1;
    lastLockOptions = self->_lastLockOptions;
    self->_lastLockOptions = 0;
  }
}

- (void)_setTransitionWindowVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if (visibleCopy && !self->_transitionWindow)
  {
    v9 = [SBScreenSleepTransitionWindow alloc];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    v11 = [(_UIRootWindow *)v9 initWithScreen:mainScreen];

    [(SBScreenSleepTransitionWindow *)v11 setWindowLevel:*MEMORY[0x277D76A38] + 801.0];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(SBScreenSleepTransitionWindow *)v11 setBackgroundColor:blackColor];

    [(SBScreenSleepTransitionWindow *)v11 setAlpha:0.0];
    [(_UIRootWindow *)v11 setHidden:0];
    transitionWindow = self->_transitionWindow;
    self->_transitionWindow = v11;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke;
  v21[3] = &unk_2783A9F58;
  v22 = visibleCopy;
  v21[4] = self;
  v14 = MEMORY[0x223D6F7F0](v21);
  v15 = v14;
  if (animatedCopy)
  {
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__SBScreenSleepCoordinator__setTransitionWindowVisible_animated_completion___block_invoke_2;
    v18[3] = &unk_2783B1E48;
    if (visibleCopy)
    {
      v17 = 65540;
    }

    else
    {
      v17 = 131076;
    }

    v20 = visibleCopy;
    v18[4] = self;
    v19 = completionCopy;
    [v16 animateWithDuration:v17 delay:v15 options:v18 animations:0.185 completion:0.0];
  }

  else
  {
    (*(v14 + 16))(v14);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 1);
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
  _ambientPresentationController = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
  if ([_ambientPresentationController isPresentationRequested])
  {
    _ambientPresentationController2 = [(SBScreenSleepCoordinator *)self _ambientPresentationController];
    v5 = [_ambientPresentationController2 isPresented] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)transitionToVisualState:(id)state fromVisualState:(id)visualState animated:(BOOL)animated completion:(id)completion
{
  v68 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  visualStateCopy = visualState;
  completionCopy = completion;
  v12 = (self->_transitionGeneration + 1);
  self->_transitionGeneration = v12;
  v13 = SBLogBacklight();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v63 = visualStateCopy;
    v64 = 2112;
    v65 = stateCopy;
    v66 = 2048;
    v67 = v12;
    _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "ScreenSleepCoordinator: request to transition from %@ to %@ (generation %lu)", buf, 0x20u);
  }

  adjustedLuminance = [stateCopy adjustedLuminance];
  activeAppearance = [stateCopy activeAppearance];
  v16 = [stateCopy activeAppearance] == 1 && objc_msgSend(stateCopy, "adjustedLuminance") == 2;
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  if (activeAppearance)
  {
    [(SBScreenSleepCoordinator *)self _setTransitionWindowVisible:0 animated:1 completion:0];
    [(SBAlertItemsController *)self->_alertItemsController setForceAlertsToPend:0 forReason:v18];
  }

  if (!adjustedLuminance)
  {
    if (!completionCopy)
    {
      goto LABEL_32;
    }

    goto LABEL_11;
  }

  if (v16)
  {
    if (completionCopy)
    {
LABEL_11:
      completionCopy[2](completionCopy);
    }
  }

  else if (!activeAppearance)
  {
    hasWakeToContentForInactiveDisplay = [(SBLockScreenManager *)self->_lockScreenManager hasWakeToContentForInactiveDisplay];
    activeInterfaceOrientation = [*MEMORY[0x277D76620] activeInterfaceOrientation];
    hasPasscodeSet = [(SBFAuthenticationStatusProvider *)self->_authenticationStatusProvider hasPasscodeSet];
    v20 = [(SBFAuthenticationAssertionProviding *)self->_authenticationAssertionProvider createSecureDisplayDeferralAssertionWithReason:v18];
    [(SBLockScreenManager *)self->_lockScreenManager noteBacklightWillTransitionToInactive];
    [(SBAlertItemsController *)self->_alertItemsController setForceAlertsToPend:1 forReason:v18];
    lockScreenEnvironment = [(SBLockScreenManager *)self->_lockScreenManager lockScreenEnvironment];
    lockController = [lockScreenEnvironment lockController];
    [lockController prepareForUILock];

    objc_initWeak(buf, self);
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __88__SBScreenSleepCoordinator_transitionToVisualState_fromVisualState_animated_completion___block_invoke;
    v55[3] = &unk_2783C1038;
    v40 = v20;
    v56 = v40;
    objc_copyWeak(v60, buf);
    selfCopy = self;
    v60[1] = v12;
    v61 = hasPasscodeSet;
    v23 = v18;
    v58 = v23;
    v59 = completionCopy;
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
    if ((activeInterfaceOrientation - 3) < 2)
    {
      v29 = 1;
    }

    else
    {
      v29 = hasWakeToContentForInactiveDisplay & hasPasscodeSet;
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
      if ([(SBLockScreenManager *)self->_lockScreenManager isUILocked]&& hasWakeToContentForInactiveDisplay)
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
        if ([visualStateCopy activeAppearance] == 1)
        {
          isDimmed = [visualStateCopy isDimmed];
        }

        else
        {
          isDimmed = 0;
        }

        if ([stateCopy activeAppearance])
        {
          v35 = 0;
        }

        else
        {
          v35 = isDimmed;
        }

        v45 = v35;
        rootSettings = [MEMORY[0x277D02C20] rootSettings];
        coverSheetTransitionsSettings = [rootSettings coverSheetTransitionsSettings];
        flyInSettings = [coverSheetTransitionsSettings flyInSettings];
        animatesFlyOutToAODFromIdleDim = [flyInSettings animatesFlyOutToAODFromIdleDim];

        [(SBCoverSheetPresentationManager *)self->_coverSheetPresentationManager setCoverSheetTranslationToPresented:1 forcingTransition:1 ignoringPreflightRequirements:0 suppressingIconFly:v45 & (animatesFlyOutToAODFromIdleDim ^ 1u) animated:1];
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