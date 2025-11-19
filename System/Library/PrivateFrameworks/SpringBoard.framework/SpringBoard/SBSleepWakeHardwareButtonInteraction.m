@interface SBSleepWakeHardwareButtonInteraction
- (BOOL)consumeInitialPressDown;
- (BOOL)consumeSinglePressUp;
- (BOOL)reverseSleepIfNeededAndPossible;
- (SBSleepWakeHardwareButtonInteraction)init;
- (void)_performSleep;
- (void)_performWake;
- (void)_playLockSound;
- (void)performSleepForReason:(id)a3;
- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4;
- (void)setDeferOrientationUpdatesAssertion:(id)a3;
@end

@implementation SBSleepWakeHardwareButtonInteraction

- (SBSleepWakeHardwareButtonInteraction)init
{
  v14.receiver = self;
  v14.super_class = SBSleepWakeHardwareButtonInteraction;
  v2 = [(SBSleepWakeHardwareButtonInteraction *)&v14 init];
  if (v2)
  {
    v3 = +[SBBacklightController sharedInstance];
    backlightController = v2->_backlightController;
    v2->_backlightController = v3;

    v5 = +[SBLockScreenManager sharedInstance];
    lockScreenManager = v2->_lockScreenManager;
    v2->_lockScreenManager = v5;

    v7 = +[SBScreenWakeAnimationController sharedInstance];
    screenWakeAnimationController = v2->_screenWakeAnimationController;
    v2->_screenWakeAnimationController = v7;

    v9 = +[SBSoundController sharedInstance];
    soundController = v2->_soundController;
    v2->_soundController = v9;

    v11 = [SBApp HIDUISensorController];
    sensorModeController = v2->_sensorModeController;
    v2->_sensorModeController = v11;

    objc_storeStrong(&v2->_SBApp, SBApp);
  }

  return v2;
}

- (BOOL)reverseSleepIfNeededAndPossible
{
  v12[2] = *MEMORY[0x277D85DE8];
  fadeOutInProgressFromLockButtonWhileUnlocked = self->_fadeOutInProgressFromLockButtonWhileUnlocked;
  if (fadeOutInProgressFromLockButtonWhileUnlocked)
  {
    self->_undidFadeOutFromLockButton = 1;
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "reverse sleep", v10, 2u);
    }

    [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:1 withOptions:0];
    lockScreenManager = self->_lockScreenManager;
    v11[0] = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v12[0] = v6;
    v11[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v12[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
    [(SBLockScreenManager *)lockScreenManager unlockUIFromSource:1 withOptions:v8];

    self->_undidFadeOutFromLockButton = 0;
  }

  return fadeOutInProgressFromLockButtonWhileUnlocked;
}

- (void)performSleepForReason:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  inhibitNextSinglePressUp = self->_inhibitNextSinglePressUp;
  v6 = SBLogButtonsInteraction();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (inhibitNextSinglePressUp)
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "ignoring sleep attempt (%{public}@) because a wake from button press is in progress", &v8, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 138543362;
      v9 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "sleeping (%{public}@)", &v8, 0xCu);
    }

    [(SBSleepWakeHardwareButtonInteraction *)self _performSleep];
  }
}

- (BOOL)consumeInitialPressDown
{
  self->_inhibitNextSinglePressUp = 0;
  v3 = [(SBBacklightController *)self->_backlightController screenIsDim];
  v4 = +[SBAlwaysOnDomain rootSettings];
  if ([v4 sideButtonBehavior] == 1)
  {
    v5 = [(SBBacklightController *)self->_backlightController backlightState]!= 3;

    if (!v5 || !v3)
    {
      return 0;
    }
  }

  else
  {

    if (!v3)
    {
      return 0;
    }
  }

  [(SBSleepWakeHardwareButtonInteraction *)self _performWake];
  return 1;
}

- (BOOL)consumeSinglePressUp
{
  inhibitNextSinglePressUp = self->_inhibitNextSinglePressUp;
  v4 = SBLogButtonsInteraction();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (inhibitNextSinglePressUp)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "wake/sleep consumeSinglePressUp: ignored due to _inhibitNextSinglePressUp (we may be waking the device instead)", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "wake/sleep _performSleep", v7, 2u);
    }

    [(SBSleepWakeHardwareButtonInteraction *)self _performSleep];
  }

  return 1;
}

- (void)provider:(id)a3 didUpdateButtonGestureParameters:(id)a4
{
  [a4 multiplePressTimeInterval];

  [(SBSleepWakeHardwareButtonInteraction *)self setMultiplePressTimeInterval:?];
}

- (void)_performWake
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SpringBoard *)self->_SBApp shouldNeverLock])
  {
    v3 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "performWake: ignoring because [SBApp shouldNeverLock]", buf, 2u);
    }

    [(SBBacklightController *)self->_backlightController screenIsDim];
    return;
  }

  if (![(SBBacklightController *)self->_backlightController screenIsDim])
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "performWake: ignoring because the screen is not dimmed";
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  if ([(SpringBoard *)self->_SBApp caseIsEnabledAndLatched])
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "performWake: ignoring because case is on and closed";
LABEL_11:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  if (![(SBSleepWakeHardwareButtonInteraction *)self reverseSleepIfNeededAndPossible])
  {
    [(SBBacklightController *)self->_backlightController setBacklightState:3 source:3];
    v7 = self->_lockScreenManager;
    if ([(SBLockScreenManager *)v7 isUILocked])
    {
      v8 = SBLogButtonsInteraction();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v17 = 1;
        _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "performWake: Unlocking from lock button source with fade-in animation: %d", buf, 8u);
      }

      v9 = [MEMORY[0x277CCABB0] numberWithBool:{1, @"SBUIUnlockOptionsTurnOnScreenFirstKey"}];
      v15[0] = v9;
      v14[1] = @"SBUIUnlockOptionsStartFadeInAnimation";
      v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v15[1] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
      [(SBLockScreenManager *)v7 unlockUIFromSource:1 withOptions:v11];
    }

    else
    {
      v12 = [(SBSleepWakeHardwareButtonInteraction *)self isSOSGestureActive];
      v9 = SBLogButtonsInteraction();
      v13 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (!v12)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "performWake: locking UI from lock button source.", buf, 2u);
        }

        [(SBLockScreenManager *)self->_lockScreenManager lockUIFromSource:1 withOptions:0];
        goto LABEL_29;
      }

      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "performWake: aborting locking UI because the SOS gesture is active", buf, 2u);
      }
    }

LABEL_29:
    self->_inhibitNextSinglePressUp = 1;

    return;
  }

  v6 = SBLogButtonsInteraction();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "performWake: ended fade-out to lock early, and told the screen to fade-in back in right away.", buf, 2u);
  }

  self->_inhibitNextSinglePressUp = 1;
}

- (void)_performSleep
{
  v3 = self->_lockScreenManager;
  if ([(SpringBoard *)self->_SBApp shouldNeverLock])
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v5 = "performSleep: ignored due to [SBApp shouldNeverLock]";
LABEL_10:
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  if ([(SpringBoard *)self->_SBApp caseIsEnabledAndLatched])
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v5 = "performSleep: ignored due to [SBApp caseIsEnabledAndLatched]";
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

  if ([(SBSleepWakeHardwareButtonInteraction *)self isSOSGestureActive])
  {
    v4 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v5 = "performSleep: ignored due to isSOSGestureActive";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v6 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& [(SBLockScreenManager *)v3 shouldLockUIAfterEndingCall];
  [(SBSleepWakeHardwareButtonInteraction *)self _playLockSound];
  v7 = [SBApp bannerManager];
  [v7 dismissAllBannersInAllWindowScenesAnimated:1 reason:@"performSleep"];

  v8 = +[SBWorkspace mainWorkspace];
  v9 = [v8 inCallPresentationManager];
  if ([v9 supportsHandlingDeviceLock])
  {

LABEL_19:
    v11 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "performSleep: in call supports handling device lock, passing to lock screen manager", buf, 2u);
    }

    [(SBLockScreenManager *)v3 lockUIFromSource:1 withOptions:0];
    goto LABEL_12;
  }

  v10 = !+[SBInCallPresentationManager isSpecializedAPISupported]&& v6;

  if (v10)
  {
    goto LABEL_19;
  }

  v12 = [(SBScreenWakeAnimationController *)self->_screenWakeAnimationController isWakeAnimationInProgressForSource:20];
  v13 = SBLogButtonsInteraction();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "performSleep: swallowing lock button press because we are in the process of fading in for LTW", buf, 2u);
    }
  }

  else
  {
    if (v14)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "performSleep: locking the device with lock button source and animating fade-out", buf, 2u);
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBLockForScreenFadeOut-%i", ++_performSleep_lockReasonCount];
    v15 = [(SpringBoard *)self->_SBApp authenticationController];
    self->_fadeOutInProgressFromLockButtonWhileUnlocked = [v15 isAuthenticated];

    v16 = [(SpringBoard *)self->_SBApp deviceOrientationUpdateDeferralAssertionWithReason:v13];
    [(SBSleepWakeHardwareButtonInteraction *)self setDeferOrientationUpdatesAssertion:v16];

    v17 = SBLogButtonsInteraction();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "performSleep: start sleep", buf, 2u);
    }

    objc_initWeak(buf, self);
    v18 = [SBApp screenSleepCoordinator];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __53__SBSleepWakeHardwareButtonInteraction__performSleep__block_invoke;
    v19[3] = &unk_2783A8C68;
    objc_copyWeak(&v20, buf);
    [v18 sleepAndLockUIFromSource:1 completion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

LABEL_12:
}

void __53__SBSleepWakeHardwareButtonInteraction__performSleep__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFadeOutInProgressFromLockButtonWhileUnlocked:0];
  [WeakRetained setDeferOrientationUpdatesAssertion:0];
}

- (void)setDeferOrientationUpdatesAssertion:(id)a3
{
  v5 = a3;
  deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
  p_deferOrientationUpdatesAssertion = &self->_deferOrientationUpdatesAssertion;
  v6 = deferOrientationUpdatesAssertion;
  if (deferOrientationUpdatesAssertion != v5)
  {
    v9 = v5;
    if (v6)
    {
      [(BSInvalidatable *)v6 invalidate];
    }

    objc_storeStrong(p_deferOrientationUpdatesAssertion, a3);
    v5 = v9;
  }
}

- (void)_playLockSound
{
  v2 = [(SBLockScreenManager *)self->_lockScreenManager playLockSoundIfPermitted];
  v3 = SBLogButtonsInteraction();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v8 = 0;
      v5 = "_playLockSound is playing the lock sound";
      v6 = &v8;
LABEL_6:
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v7 = 0;
    v5 = "_playLockSound couldn't play the lock sound";
    v6 = &v7;
    goto LABEL_6;
  }
}

@end