@interface SBVolumeHardwareButtonActions
- (BOOL)_handleVolumeButtonDownForIncrease:(BOOL)a3 modifiers:(int64_t)a4;
- (BOOL)_handleVolumeButtonUpForIncrease:(BOOL)a3;
- (BOOL)_handleVolumeDecreaseUp;
- (BOOL)_handleVolumeIncreaseUp;
- (BOOL)_sendVolumeButtonToSBUIControllerForIncrease:(BOOL)a3 down:(BOOL)a4;
- (id)_sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:(BOOL)a3;
- (id)_sendVolumeButtonDownToOverridingSceneForIncrease:(BOOL)a3;
- (id)_sendVolumeButtonDownToSBUIControllerForIncrease:(BOOL)a3;
- (id)_sendVolumeButtonDownToSoundControllerForIncrease:(BOOL)a3;
- (id)_sendVolumeButtonDownToSpringBoardInternalUIForIncrease:(BOOL)a3;
- (void)_launchVolumeSettings;
- (void)_sendBanditsVolumeDecreased;
- (void)_sendBanditsVolumeIncreased;
- (void)addVolumePressBandit:(id)a3;
- (void)cancelVolumePress;
- (void)removeVolumePressBandit:(id)a3;
- (void)volumeDecreasePressUp;
- (void)volumeIncreasePressUp;
@end

@implementation SBVolumeHardwareButtonActions

- (void)volumeIncreasePressUp
{
  if (self->_volumeIncreaseIsDown)
  {
    self->_volumeIncreaseIsDown = 0;
    [(SBVolumeHardwareButtonActions *)self _handleVolumeButtonUpForIncrease:1];
  }
}

- (void)volumeDecreasePressUp
{
  if (self->_volumeDecreaseIsDown)
  {
    self->_volumeDecreaseIsDown = 0;
    [(SBVolumeHardwareButtonActions *)self _handleVolumeButtonUpForIncrease:0];
  }
}

- (void)cancelVolumePress
{
  v3 = SBLogButtonsVolume();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "canceling volume button presses", v4, 2u);
  }

  [(SBVolumeHardwareButtonActions *)self volumeIncreasePressUp];
  [(SBVolumeHardwareButtonActions *)self volumeDecreasePressUp];
}

- (void)addVolumePressBandit:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138543362;
    *&v10[4] = objc_opt_class();
    v6 = *&v10[4];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "bandit added: %{public}@", v10, 0xCu);
  }

  volumePressBandits = self->_volumePressBandits;
  if (!volumePressBandits)
  {
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v9 = self->_volumePressBandits;
    self->_volumePressBandits = v8;

    volumePressBandits = self->_volumePressBandits;
  }

  [(NSHashTable *)volumePressBandits addObject:v4, *v10];
}

- (void)removeVolumePressBandit:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v6 = v8;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "bandit removed: %{public}@", &v7, 0xCu);
  }

  [(NSHashTable *)self->_volumePressBandits removeObject:v4];
}

- (void)_sendBanditsVolumeIncreased
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_volumePressBandits copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = SBLogButtonsVolume();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          *buf = 138543362;
          v17 = v10;
          v11 = v10;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "sending volume increase to bandit: %{public}@", buf, 0xCu);
        }

        [v8 handleVolumeIncrease];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (void)_sendBanditsVolumeDecreased
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(NSHashTable *)self->_volumePressBandits copy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = SBLogButtonsVolume();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = objc_opt_class();
          *buf = 138543362;
          v17 = v10;
          v11 = v10;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "sending volume decrease to bandit: %{public}@", buf, 0xCu);
        }

        [v8 handleVolumeDecrease];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }
}

- (BOOL)_sendVolumeButtonToSBUIControllerForIncrease:(BOOL)a3 down:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = +[SBUIController sharedInstance];
  v7 = v6;
  if (v5)
  {
    v8 = 102;
  }

  else
  {
    v8 = 103;
  }

  [v6 handleVolumeButtonWithType:v8 down:v4];

  return 1;
}

- (BOOL)_handleVolumeIncreaseUp
{
  volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
  if (volumeIncreaseUpEventBlock)
  {
    volumeIncreaseUpEventBlock[2](self->_volumeIncreaseUpEventBlock, a2);
    v4 = self->_volumeIncreaseUpEventBlock;
    self->_volumeIncreaseUpEventBlock = 0;
  }

  return volumeIncreaseUpEventBlock != 0;
}

- (BOOL)_handleVolumeDecreaseUp
{
  volumeDecreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
  if (volumeDecreaseUpEventBlock)
  {
    volumeDecreaseUpEventBlock[2](self->_volumeDecreaseUpEventBlock, a2);
    v4 = self->_volumeDecreaseUpEventBlock;
    self->_volumeDecreaseUpEventBlock = 0;
  }

  return volumeDecreaseUpEventBlock != 0;
}

- (BOOL)_handleVolumeButtonUpForIncrease:(BOOL)a3
{
  if (a3)
  {
    if ([(SBVolumeHardwareButtonActions *)self _handleVolumeIncreaseUp])
    {
      return 1;
    }
  }

  else if ([(SBVolumeHardwareButtonActions *)self _handleVolumeDecreaseUp])
  {
    return 1;
  }

  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SBVolumeHardwareButtonActions *)a3 _handleVolumeButtonUpForIncrease:v5];
  }

  return 0;
}

- (id)_sendVolumeButtonDownToSpringBoardInternalUIForIncrease:(BOOL)a3
{
  v3 = a3;
  v4 = [SBApp windowSceneManager];
  v5 = [v4 activeDisplayWindowScene];

  v6 = +[SBWorkspace mainWorkspace];
  v7 = [v6 transientOverlayPresentationManager];
  v8 = [v7 transientOverlayPresenterForWindowScene:v5];

  v9 = [SBApp systemApertureControllerForMainDisplay];
  v10 = v9;
  if (v3)
  {
    if (([v9 handleVolumeUpButtonPress] & 1) == 0)
    {
LABEL_3:
      v11 = 0;
      v12 = 0;
      goto LABEL_6;
    }
  }

  else if (![v9 handleVolumeDownButtonPress])
  {
    goto LABEL_3;
  }

  v12 = @"SystemApertureController";
  v11 = 1;
LABEL_6:
  v13 = [SBApp bannerManager];
  v14 = v13;
  if (v11)
  {
    goto LABEL_29;
  }

  v15 = [v13 bannerWindowInWindowScene:v5];
  [v15 windowLevel];
  v16 = [v8 hasPresentationAboveWindowLevel:?];

  if ((v16 & 1) == 0)
  {
    if (v3)
    {
      if (([v14 handleVolumeUpButtonPress] & 1) == 0)
      {
        if (([v8 canHandleButtonEvents] & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else if (([v14 handleVolumeDownButtonPress] & 1) == 0)
    {
      if (([v8 canHandleButtonEvents] & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    v12 = @"BannerManager";
LABEL_29:
    v21 = [@"SpringBoard Internal UI: " stringByAppendingString:v12];
    goto LABEL_30;
  }

  if (([v8 canHandleButtonEvents] & 1) == 0)
  {
    goto LABEL_21;
  }

  if (!v3)
  {
LABEL_19:
    if ([v8 handleVolumeDownButtonPress])
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_14:
  if ([v8 handleVolumeUpButtonPress])
  {
LABEL_20:
    v12 = @"TransientOverlayPresenter";
    goto LABEL_29;
  }

LABEL_21:
  v17 = +[SBLockScreenManager sharedInstance];
  v18 = [v17 lockScreenEnvironment];
  v19 = [v18 buttonEventsHandler];

  if (v3)
  {
    if ([v19 handleVolumeUpButtonPress])
    {
LABEL_23:
      v12 = @"LockScreenEnvironment";
LABEL_28:

      goto LABEL_29;
    }
  }

  else if ([v19 handleVolumeDownButtonPress])
  {
    goto LABEL_23;
  }

  v20 = +[SBMainSwitcherControllerCoordinator sharedInstance];
  v19 = v20;
  if (v3)
  {
    if ([v20 handleVolumeUpButtonPress])
    {
LABEL_27:
      v12 = @"Switcher";
      goto LABEL_28;
    }
  }

  else if ([v20 handleVolumeDownButtonPress])
  {
    goto LABEL_27;
  }

  v21 = 0;
LABEL_30:

  return v21;
}

- (id)_sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [SBApp appsRegisteredForVolumeEvents];
  v6 = [v5 firstObject];

  if (v6 && SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v6))
  {
    v7 = [v6 bundleIdentifier];
    v8 = [@"Legacy Registered Client: " stringByAppendingString:v7];

    v9 = [v6 bundleIdentifier];
    v10 = [v6 processState];
    v11 = [v10 pid];
    if (v3)
    {
      v12 = 102;
    }

    else
    {
      v12 = 103;
    }

    SBSendFakeButtonPressEventToApplication(v9, v11, v12, 1);

    v13 = SBLogButtonsVolume();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v14)
      {
        v15 = [v6 bundleIdentifier];
        *buf = 138543362;
        v26 = v15;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "sent volume increase down to %{public}@", buf, 0xCu);
      }

      v16 = v24;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v17 = 24;
      v18 = __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke;
    }

    else
    {
      if (v14)
      {
        v19 = [v6 bundleIdentifier];
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "sent volume decrease down to %{public}@", buf, 0xCu);
      }

      v16 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v17 = 32;
      v18 = __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke_47;
    }

    v16[2] = v18;
    v16[3] = &unk_2783A8C18;
    v16[4] = v6;
    v20 = [v16 copy];
    v21 = *(&self->super.isa + v17);
    *(&self->super.isa + v17) = v20;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = SBLogButtonsVolume();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "sending volume increase up to previous down receipient: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) processState];
  SBSendFakeButtonPressEventToApplication(v2, [v4 pid], 102, 0);
}

void __91__SBVolumeHardwareButtonActions__sendVolumeButtonDownToLegacyRegisteredClientsForIncrease___block_invoke_47(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) bundleIdentifier];
  v3 = SBLogButtonsVolume();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "sending volume decrease up to previous down receipient: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 32) processState];
  SBSendFakeButtonPressEventToApplication(v2, [v4 pid], 103, 0);
}

- (id)_sendVolumeButtonDownToSoundControllerForIncrease:(BOOL)a3
{
  v3 = +[SBSoundController sharedInstance];
  v4 = [v3 handleVolumeButtonDownEvent];

  if (v4)
  {
    return @"SBSoundController";
  }

  else
  {
    return 0;
  }
}

- (id)_sendVolumeButtonDownToSBUIControllerForIncrease:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v5 = SBLogButtonsVolume();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "decrease";
    if (v3)
    {
      v6 = "increase";
    }

    *buf = 136446210;
    v17 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBUIController will process %{public}s down event", buf, 0xCu);
  }

  [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonToSBUIControllerForIncrease:v3 down:1];
  objc_initWeak(buf, self);
  if (v3)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, buf);
    v7 = [v14 copy];
    volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
    self->_volumeIncreaseUpEventBlock = v7;

    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke_55;
    v12[3] = &unk_2783A8C68;
    objc_copyWeak(&v13, buf);
    v9 = [v12 copy];
    volumeDecreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
    self->_volumeDecreaseUpEventBlock = v9;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return @"SBUIController";
}

void __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke(uint64_t a1)
{
  v2 = SBLogButtonsVolume();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBUIController will process increase up event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:1 down:0];
}

void __82__SBVolumeHardwareButtonActions__sendVolumeButtonDownToSBUIControllerForIncrease___block_invoke_55(uint64_t a1)
{
  v2 = SBLogButtonsVolume();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "SBUIController will process decrease up event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:0 down:0];
}

- (void)_launchVolumeSettings
{
  v2 = SBLogButtonsVolume();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "launching volume prefs", v4, 2u);
  }

  v3 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=Sounds"];
  SBWorkspaceActivateApplicationFromURL(v3, 0, 0);
}

- (id)_sendVolumeButtonDownToOverridingSceneForIncrease:(BOOL)a3
{
  v3 = a3;
  v5 = +[SBSceneManagerCoordinator mainDisplaySceneManager];
  v6 = [v5 physicalButtonSceneOverrideManager];
  v26 = 0;
  v7 = [(SBPhysicalButtonSceneOverrideManager *)v6 sendVolumeButtonDownForIncrease:v3 shouldAlsoChangeVolume:&v26];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 identifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke;
    v24[3] = &unk_2783A8C18;
    v25 = v8;
    v10 = [v24 copy];
    if (v26 == 1)
    {
      [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonToSBUIControllerForIncrease:v3 down:1];
      v11 = [v9 stringByAppendingString:@" + SBUIController"];

      objc_initWeak(&location, self);
      v12 = [v10 copy];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke_2;
      v19[3] = &unk_2783C2478;
      v13 = v12;
      v20 = v13;
      objc_copyWeak(&v21, &location);
      v22 = v3;
      v14 = [v19 copy];

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
      v10 = v14;
      v9 = v11;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v15 = MEMORY[0x223D6F7F0](v10);
  v16 = 32;
  if (v3)
  {
    v16 = 24;
  }

  v17 = *(&self->super.isa + v16);
  *(&self->super.isa + v16) = v15;

  return v9;
}

void __83__SBVolumeHardwareButtonActions__sendVolumeButtonDownToOverridingSceneForIncrease___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _sendVolumeButtonToSBUIControllerForIncrease:*(a1 + 48) down:0];
}

- (BOOL)_handleVolumeButtonDownForIncrease:(BOOL)a3 modifiers:(int64_t)a4
{
  v4 = a3;
  v36 = *MEMORY[0x277D85DE8];
  if (a4 == 0x80000)
  {
    [(SBVolumeHardwareButtonActions *)self _launchVolumeSettings];
    v6 = 32;
    if (v4)
    {
      v6 = 24;
      v7 = &__block_literal_global_406;
    }

    else
    {
      v7 = &__block_literal_global_65_2;
    }

    v8 = *(&self->super.isa + v6);
    *(&self->super.isa + v6) = v7;

    v9 = @"Volume Settings";
  }

  else
  {
    if (![(NSHashTable *)self->_volumePressBandits count])
    {
      goto LABEL_11;
    }

    if (v4)
    {
      [(SBVolumeHardwareButtonActions *)self _sendBanditsVolumeIncreased];
    }

    else
    {
      [(SBVolumeHardwareButtonActions *)self _sendBanditsVolumeDecreased];
    }

    v10 = [(NSHashTable *)self->_volumePressBandits allObjects];
    v11 = [v10 bs_map:&__block_literal_global_71_0];
    v12 = [v11 componentsJoinedByString:{@", "}];

    v9 = [@"bandit(s): " stringByAppendingString:v12];

    if (!v9)
    {
LABEL_11:
      v13 = +[SBPrototypeController sharedInstance];
      v14 = v13;
      if (v4)
      {
        v15 = [v13 handleVolumeIncreaseEvent];
      }

      else
      {
        v15 = [v13 handleVolumeDecreaseEvent];
      }

      v16 = v15;

      if (v16)
      {
        v9 = @"SBPrototypeController";
        goto LABEL_18;
      }

      v17 = [MEMORY[0x277CCAB98] defaultCenter];
      [v17 postNotificationName:*MEMORY[0x277D67AF8] object:0];

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 postNotificationName:*MEMORY[0x277D67AF0] object:0];

      v19 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSpringBoardInternalUIForIncrease:v4];
      if (!v19)
      {
        v23 = +[SBHardwareButtonService sharedInstance];
        v24 = v23;
        if (v4)
        {
          v31 = 0;
          v25 = [v23 consumeVolumeIncreaseButtonSinglePressDownWithPriority:0 continuation:&v31];
          v26 = MEMORY[0x223D6F7F0](v31);

          v27 = MEMORY[0x223D6F7F0](v26);
          volumeIncreaseUpEventBlock = self->_volumeIncreaseUpEventBlock;
          self->_volumeIncreaseUpEventBlock = v27;
        }

        else
        {
          v30 = 0;
          v25 = [v23 consumeVolumeDecreaseButtonSinglePressDownWithPriority:0 continuation:&v30];
          v26 = MEMORY[0x223D6F7F0](v30);

          v29 = MEMORY[0x223D6F7F0](v26);
          volumeIncreaseUpEventBlock = self->_volumeDecreaseUpEventBlock;
          self->_volumeDecreaseUpEventBlock = v29;
        }

        if (v25)
        {
          v9 = @"SBHardwareButtonService";
          goto LABEL_18;
        }

        v19 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSoundControllerForIncrease:v4];
        if (!v19)
        {
          v19 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToOverridingSceneForIncrease:v4];
          if (!v19)
          {
            v19 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToLegacyRegisteredClientsForIncrease:v4];
            if (!v19)
            {
              v19 = [(SBVolumeHardwareButtonActions *)self _sendVolumeButtonDownToSBUIControllerForIncrease:v4];
            }
          }
        }
      }

      v9 = v19;
    }
  }

LABEL_18:
  v20 = SBLogButtonsVolume();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"decrease";
    if (v4)
    {
      v21 = @"increase";
    }

    *buf = 138543618;
    v33 = v21;
    v34 = 2114;
    v35 = v9;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Hardware Volume %{public}@ press handled by %{public}@", buf, 0x16u);
  }

  return v9 != 0;
}

uint64_t __78__SBVolumeHardwareButtonActions__handleVolumeButtonDownForIncrease_modifiers___block_invoke_3()
{
  v0 = objc_opt_class();

  return [v0 description];
}

- (void)_handleVolumeButtonUpForIncrease:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "decrease";
  if (a1)
  {
    v2 = "increase";
  }

  v3 = 136446210;
  v4 = v2;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "ignoring %{public}s up event", &v3, 0xCu);
}

@end