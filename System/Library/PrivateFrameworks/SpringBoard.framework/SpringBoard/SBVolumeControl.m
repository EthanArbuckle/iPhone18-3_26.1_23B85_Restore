@interface SBVolumeControl
+ (BOOL)_isVolumeChangeAllowedForState:(id)a3 error:(id *)a4;
+ (BOOL)_isVolumeManagedForCategory:(id)a3;
- (BOOL)_displaysVolumeForCategory:(id)a3;
- (BOOL)_isCategoryAlwaysHidden:(id)a3;
- (BOOL)_isHUDDisplayableForCategory:(id)a3 outReason:(id *)a4;
- (BOOL)_isHUDDisplayableWithReason:(id *)a3;
- (BOOL)_isVolumeHUDVisible;
- (BOOL)_isVolumeHUDVisibleOnWindowScene:(id)a3;
- (BOOL)canChangeVolumeForActiveCategory:(id)a3 isAudioSessionPlaying:(BOOL)a4;
- (SBControlCenterCoordinator)controlCenterCoordinator;
- (SBVolumeControl)initWithHUDController:(id)a3 ringerControl:(id)a4 telephonyManager:(id)a5 conferenceManager:(id)a6;
- (float)_buttonRepeatDelay;
- (float)_effectiveVolume;
- (float)_getMediaVolumeForIAP;
- (id)_avscOperationsQueue;
- (id)acquireVolumeHUDHiddenAssertionForReason:(id)a3;
- (id)existingVolumeHUDViewController;
- (id)presentedVolumeHUDViewController;
- (void)_avscOperationsQueue;
- (void)_configureVolumeStepDeltaForVolumeHUDViewController:(id)a3;
- (void)_dispatchAVSystemControllerAsync:(id)a3;
- (void)_dispatchAVSystemControllerSync:(id)a3;
- (void)_effectiveVolumeChanged:(id)a3;
- (void)_presentVolumeHUDWithVolume:(float)a3;
- (void)_processZStackParticipantSettings:(id)a3;
- (void)_resetMediaServerConnection;
- (void)_setMediaVolumeForIAP:(float)a3;
- (void)_someSceneWillConnect:(id)a3;
- (void)_updateEffectiveVolume:(float)a3;
- (void)addAlwaysHiddenCategory:(id)a3;
- (void)cancelVolumeEvent;
- (void)changeVolumeByDelta:(float)a3;
- (void)controlCenter:(id)a3 willPresentOnWindowScene:(id)a4;
- (void)decreaseVolume;
- (void)elasticHUDViewControllerRequestsDismissal:(id)a3;
- (void)handleVolumeButtonWithType:(int64_t)a3 down:(BOOL)a4;
- (void)hideVolumeHUDIfVisible;
- (void)increaseVolume;
- (void)removeAlwaysHiddenCategory:(id)a3;
- (void)setActiveCategoryVolume:(float)a3;
- (void)setControlCenterCoordinator:(id)a3;
- (void)setVolume:(float)a3 forCategory:(id)a4;
- (void)toggleMute;
@end

@implementation SBVolumeControl

- (SBControlCenterCoordinator)controlCenterCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_controlCenterCoordinator);

  return WeakRetained;
}

- (id)presentedVolumeHUDViewController
{
  v2 = [(SBHUDController *)self->_hudController presentedHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  v3 = [v2 HUDViewController];

  return v3;
}

- (SBVolumeControl)initWithHUDController:(id)a3 ringerControl:(id)a4 telephonyManager:(id)a5 conferenceManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBVolumeControl initWithHUDController:ringerControl:telephonyManager:conferenceManager:];
    if (v12)
    {
LABEL_3:
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_10:
      [SBVolumeControl initWithHUDController:ringerControl:telephonyManager:conferenceManager:];
      if (v14)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  [SBVolumeControl initWithHUDController:ringerControl:telephonyManager:conferenceManager:];
  if (!v13)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v14)
  {
    goto LABEL_5;
  }

LABEL_11:
  [SBVolumeControl initWithHUDController:ringerControl:telephonyManager:conferenceManager:];
LABEL_5:
  v22.receiver = self;
  v22.super_class = SBVolumeControl;
  v15 = [(SBVolumeControl *)&v22 init];
  if (v15)
  {
    v16 = +[SBElasticHUDDomain rootSettings];
    elasticHUDSettings = v15->_elasticHUDSettings;
    v15->_elasticHUDSettings = v16;

    [(PTSettings *)v15->_elasticHUDSettings addKeyObserver:v15];
    objc_storeStrong(&v15->_hudController, a3);
    objc_storeStrong(&v15->_ringerControl, a4);
    objc_storeStrong(&v15->_telephonyManager, a5);
    objc_storeStrong(&v15->_conferenceManager, a6);
    v15->_mode = 0;
    v18 = +[SBAVSystemControllerCache sharedInstance];
    avCache = v15->_avCache;
    v15->_avCache = v18;

    *&v15->_volumeDownButtonIsDown = 0;
    [(SBVolumeControl *)v15 _resetMediaServerConnection];
    v15->_effectiveVolumeLock._os_unfair_lock_opaque = 0;
    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v15 selector:sel__effectiveVolumeChanged_ name:*MEMORY[0x277D26BA8] object:0];
    [v20 addObserver:v15 selector:sel__serverConnectionDied_ name:*MEMORY[0x277D26D40] object:0];
    [v20 addObserver:v15 selector:sel__someSceneWillConnect_ name:*MEMORY[0x277D76E70] object:0];
  }

  return v15;
}

- (BOOL)canChangeVolumeForActiveCategory:(id)a3 isAudioSessionPlaying:(BOOL)a4
{
  v5 = a3;
  if ([v5 isEqualToString:@"FindMyPhone"])
  {
    v6 = !a4;
  }

  else
  {
    v6 = [objc_opt_class() _isVolumeManagedForCategory:v5];
  }

  return v6;
}

- (void)addAlwaysHiddenCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v10 = v4, v6 = [(__CFString *)v4 length], v5 = v10, !v6))
  {

    v5 = @"com.apple.springboard.volumeControl.HUDCategories.all";
  }

  alwaysHiddenCategories = self->_alwaysHiddenCategories;
  v11 = v5;
  if (!alwaysHiddenCategories)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = self->_alwaysHiddenCategories;
    self->_alwaysHiddenCategories = v8;

    v5 = v11;
    alwaysHiddenCategories = self->_alwaysHiddenCategories;
  }

  [(NSMutableSet *)alwaysHiddenCategories addObject:v5];
}

- (void)toggleMute
{
  if (MGGetBoolAnswer())
  {
    MGGetBoolAnswer();
LABEL_3:
    v3 = [(SBAVSystemControllerCache *)self->_avCache isFullyMuted];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__SBVolumeControl_toggleMute__block_invoke;
    v5[3] = &__block_descriptor_33_e28_v16__0__AVSystemController_8l;
    v6 = !v3;
    [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v5];
    return;
  }

  v4 = MGGetBoolAnswer();
  if (!MGGetBoolAnswer() || v4)
  {
    goto LABEL_3;
  }
}

void __29__SBVolumeControl_toggleMute__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  [v4 setAttribute:v5 forKey:*MEMORY[0x277D26BE8] error:0];
}

- (float)_effectiveVolume
{
  os_unfair_lock_lock(&self->_effectiveVolumeLock);
  effectiveVolume = self->_effectiveVolume;
  os_unfair_lock_unlock(&self->_effectiveVolumeLock);
  return effectiveVolume;
}

- (void)_updateEffectiveVolume:(float)a3
{
  os_unfair_lock_lock(&self->_effectiveVolumeLock);
  self->_effectiveVolume = a3;

  os_unfair_lock_unlock(&self->_effectiveVolumeLock);
}

- (void)setVolume:(float)a3 forCategory:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    [SBVolumeControl setVolume:forCategory:];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBVolumeControl_setVolume_forCategory___block_invoke;
  v8[3] = &unk_2783AC000;
  v10 = a3;
  v9 = v6;
  v7 = v6;
  [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v8];
}

- (void)increaseVolume
{
  v6[1] = *MEMORY[0x277D85DE8];
  [(SBVolumeControl *)self _buttonRepeatDelay];
  v4 = v3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  [(SBVolumeControl *)self volumeStepUp];
  [(SBVolumeControl *)self changeVolumeByDelta:?];
  v6[0] = *MEMORY[0x277CBE738];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [(SBVolumeControl *)self performSelector:sel_increaseVolume withObject:0 afterDelay:v5 inModes:v4];

  self->_debounce = 0;
}

- (void)decreaseVolume
{
  v8[1] = *MEMORY[0x277D85DE8];
  [(SBVolumeControl *)self _buttonRepeatDelay];
  v4 = v3;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
  [(SBVolumeControl *)self volumeStepDown];
  *&v6 = -v5;
  [(SBVolumeControl *)self changeVolumeByDelta:v6];
  v8[0] = *MEMORY[0x277CBE738];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [(SBVolumeControl *)self performSelector:sel_decreaseVolume withObject:0 afterDelay:v7 inModes:v4];

  self->_debounce = 0;
}

- (void)handleVolumeButtonWithType:(int64_t)a3 down:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v7 = +[SBLockScreenManager sharedInstance];
  v8 = [v7 isUILocked];
  v9 = [(SBVolumeControl *)self presentedVolumeHUDViewController];
  v10 = SBLogButtonsVolume();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (a3 == 103)
  {
    if (v11)
    {
      v13 = "up";
      if (v4)
      {
        v13 = "down";
      }

      *buf = 136446210;
      v26 = v13;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBVolumeControl -- volume decrement -- button state: %{public}s", buf, 0xCu);
    }

    if (v4)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
      self->_volumeDownButtonIsDown = 1;
      self->_debounce = 1;
      [(SBVolumeControl *)self decreaseVolume];
    }

    else
    {
      self->_volumeDownButtonIsDown = 0;
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
    }

    if (self->_volumeDownButtonIsDown)
    {
      if (![(SBVolumeControl *)self _isHUDDisplayableForLastEventCategoryWithReason:0])
      {
        goto LABEL_30;
      }

      volumeDownButtonIsDown = self->_volumeDownButtonIsDown;
    }

    else
    {
      volumeDownButtonIsDown = 0;
    }

    [v9 noteButtonDownWasHit:volumeDownButtonIsDown];
    goto LABEL_30;
  }

  if (a3 == 102)
  {
    if (v11)
    {
      v12 = "up";
      if (v4)
      {
        v12 = "down";
      }

      *buf = 136446210;
      v26 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBVolumeControl -- volume increment -- button state: %{public}s", buf, 0xCu);
    }

    if (v4)
    {
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
      self->_volumeUpButtonIsDown = 1;
      self->_debounce = 1;
      [(SBVolumeControl *)self increaseVolume];
    }

    else
    {
      self->_volumeUpButtonIsDown = 0;
      [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
    }

    if (!self->_volumeUpButtonIsDown)
    {
      volumeUpButtonIsDown = 0;
      goto LABEL_23;
    }

    if ([(SBVolumeControl *)self _isHUDDisplayableForLastEventCategoryWithReason:0])
    {
      volumeUpButtonIsDown = self->_volumeUpButtonIsDown;
LABEL_23:
      [v9 noteButtonUpWasHit:volumeUpButtonIsDown];
    }
  }

  else
  {
    if (v11)
    {
      v14 = SB_NSStringFromUIPressType();
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "SBVolumeControl -- unknown volume press: %{public}@", buf, 0xCu);
    }
  }

LABEL_30:
  if (v8)
  {
    v17 = [v7 lockScreenEnvironment];
    v18 = [v17 backlightController];
    v19 = [v18 isInScreenOffMode];

    if ((v19 & 1) == 0)
    {
      v20 = +[SBIdleTimerGlobalCoordinator sharedInstance];
      v21 = MEMORY[0x277CCACA8];
      v22 = SB_NSStringFromUIPressType();
      v23 = [v21 stringWithFormat:@"SBVolumeButton:%@", v22];
      [v20 resetIdleTimerForReason:v23];
    }
  }

  if (!v4)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __51__SBVolumeControl_handleVolumeButtonWithType_down___block_invoke;
    v24[3] = &unk_2783AC028;
    v24[4] = self;
    [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v24];
  }
}

void __51__SBVolumeControl_handleVolumeButtonWithType_down___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBVolumeControl_handleVolumeButtonWithType_down___block_invoke_2;
  block[3] = &unk_2783A8C18;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)cancelVolumeEvent
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel_increaseVolume object:0];
  v3 = MEMORY[0x277D82BB8];

  [v3 cancelPreviousPerformRequestsWithTarget:self selector:sel_decreaseVolume object:0];
}

- (void)removeAlwaysHiddenCategory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || (v7 = v4, v6 = [(__CFString *)v4 length], v5 = v7, !v6))
  {

    v5 = @"com.apple.springboard.volumeControl.HUDCategories.all";
  }

  v8 = v5;
  [(NSMutableSet *)self->_alwaysHiddenCategories removeObject:v5];
}

- (id)existingVolumeHUDViewController
{
  v2 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  v3 = [v2 HUDViewController];

  return v3;
}

- (void)hideVolumeHUDIfVisible
{
  v2 = [(SBHUDController *)self->_hudController presentedHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  [v2 dismiss];
}

- (id)acquireVolumeHUDHiddenAssertionForReason:(id)a3
{
  v4 = a3;
  [(SBVolumeControl *)self cancelVolumeEvent];
  v5 = [(SBHUDController *)self->_hudController acquireHUDHiddenAssertionForIdentifier:*MEMORY[0x277D67040] withReason:v4];

  return v5;
}

- (void)setActiveCategoryVolume:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__SBVolumeControl_setActiveCategoryVolume___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__AVSystemController_8l;
  v4 = a3;
  [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v3];
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

- (void)_setMediaVolumeForIAP:(float)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__SBVolumeControl__setMediaVolumeForIAP___block_invoke;
  v3[3] = &__block_descriptor_36_e28_v16__0__AVSystemController_8l;
  v4 = a3;
  [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v3];
}

void __41__SBVolumeControl__setMediaVolumeForIAP___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 volumeCategoryForAudioCategory:@"MediaPlayback"];
  LODWORD(v4) = *(a1 + 32);
  [v3 setVolumeTo:v5 forCategory:v4];
}

- (float)_getMediaVolumeForIAP
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__SBVolumeControl__getMediaVolumeForIAP__block_invoke;
  v4[3] = &unk_2783AC070;
  v4[4] = &v5;
  [(SBVolumeControl *)self _dispatchAVSystemControllerSync:v4];
  v2 = v6[6];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __40__SBVolumeControl__getMediaVolumeForIAP__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 volumeCategoryForAudioCategory:@"MediaPlayback"];
  [v3 getVolume:*(*(a1 + 32) + 8) + 24 forCategory:v4];
}

- (BOOL)_isCategoryAlwaysHidden:(id)a3
{
  if (([(NSMutableSet *)self->_alwaysHiddenCategories containsObject:a3]& 1) != 0)
  {
    return 1;
  }

  alwaysHiddenCategories = self->_alwaysHiddenCategories;

  return [(NSMutableSet *)alwaysHiddenCategories containsObject:@"com.apple.springboard.volumeControl.HUDCategories.all"];
}

- (BOOL)_isHUDDisplayableWithReason:(id *)a3
{
  v5 = [(SBVolumeControl *)self controlCenterCoordinator];
  v6 = [v5 isVisible];
  v7 = v6;
  if (v6)
  {
    v8 = @"Control Center is visible";
  }

  else
  {
    v8 = 0;
  }

  v9 = +[SBLockScreenManager sharedInstance];
  v10 = v9;
  if ((v7 & 1) == 0)
  {
    if ([v9 isUILocked])
    {
      v12 = [v10 lockScreenEnvironment];
      v13 = [v12 backlightController];
      v14 = [v13 backlightLuminance];

      if (!v14)
      {
        v8 = @"UI Locked and backlight is fully off";
        goto LABEL_5;
      }

      v15 = [v10 lockScreenEnvironment];
      v16 = [v15 mediaControlsPresenter];
      [v16 isShowingMediaControls];

      if (![(SBTelephonyManager *)self->_telephonyManager inCall])
      {
        [(SBConferenceManager *)self->_conferenceManager inFaceTime];
      }
    }

    v11 = [(SBVolumeControl *)self _isHUDDisplayableForLastEventCategoryWithReason:a3];
    goto LABEL_12;
  }

LABEL_5:
  v11 = 0;
  if (a3)
  {
    *a3 = v8;
  }

LABEL_12:

  return v11;
}

- (BOOL)_isHUDDisplayableForCategory:(id)a3 outReason:(id *)a4
{
  v6 = a3;
  if (SBFAudioCategoriesDisablingVolumeHUDIncludesCategory())
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Z-stack participant is suppressing the HUD for category '%@'", v6];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v8 = +[SBAssistantController sharedInstanceIfExists];
  v9 = v8;
  if (v8 && [v8 isVisible] && !objc_msgSend(v9, "shouldShowSystemVolumeHUDForCategory:", v6))
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Siri is visible and is suppressing the HUD for category '%@'", v6];

    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v10 = +[SBWorkspace mainWorkspace];
  v11 = [v10 inCallPresentationManager];
  v12 = [v11 disablesSystemVolumeHUDForCategory:v6];

  if (v12)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBInCallPresentationManager is suppressing the HUD for category '%@'", v6];
    if (v7)
    {
      goto LABEL_11;
    }
  }

  if ([(SBVolumeControl *)self _isCategoryAlwaysHidden:v6])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"category '%@' is always hidden", v6];
LABEL_11:
    v13 = v7;
    goto LABEL_14;
  }

  v13 = 0;
LABEL_14:
  if (a4)
  {
    v14 = v13;
    *a4 = v13;
  }

  return v13 == 0;
}

+ (BOOL)_isVolumeChangeAllowedForState:(id)a3 error:(id *)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  if ([v6 isLocked] && (objc_msgSend(v7, "isHostingAppOnLockScreen") & 1) == 0 && (objc_msgSend(v7, "isAudioPlayingSomewhere") & 1) == 0 && (objc_msgSend(v7, "isCallOrFaceTimeActive") & 1) == 0 && (objc_msgSend(v7, "isShowingLockScreenMediaControls") & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_13;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v20[0] = @"state";
    v20[1] = v17;
    v21[0] = v7;
    v21[1] = @"SpringBoard can't change the volume because the device is locked, no app is being hosted on the lock screen, and no audio is playing anywhere.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v13 = v16;
    v14 = 1;
LABEL_12:
    *a4 = [v13 errorWithDomain:@"com.apple.springboard.volumeControl.state" code:v14 userInfo:v12];

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if ([v7 currentRouteHasVolumeControl])
  {
    v8 = 1;
    goto LABEL_14;
  }

  v9 = [v7 isFullyMuted];
  v8 = v9;
  if (a4 && (v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v18[0] = @"state";
    v18[1] = v11;
    v19[0] = a1;
    v19[1] = @"SpringBoard can change the volume only if the current route has volume control, or if we're fully muted..";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
    v13 = v10;
    v14 = 2;
    goto LABEL_12;
  }

LABEL_14:

  return v8;
}

+ (BOOL)_isVolumeManagedForCategory:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"Audio/Video"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Alarm") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"Ringtone") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"PhoneCall"))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isEqualToString:@"VoiceCommand"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_displaysVolumeForCategory:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _isVolumeManagedForCategory:v3];

  return v4;
}

- (void)changeVolumeByDelta:(float)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBVolumeControl changeVolumeByDelta:];
  }

  ++changeVolumeByDelta__volumeChangeSessionId;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v6 = [v5 description];

  v7 = +[SBLockScreenManager sharedInstanceIfExists];
  if (v7)
  {
    v8 = +[SBCoverSheetPresentationManager sharedInstance];
    v9 = [SBApp authenticationController];
    [(SBVolumeControl *)self _effectiveVolume];
    if (!self->_debounce)
    {
      v11 = v10;
      if ((BSFloatLessThanOrEqualToFloat() & 1) == 0 && (BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
      {
        v12 = [(SBVolumeControl *)self presentedVolumeHUDViewController];
        *&v13 = fminf(fmaxf(v11 + a3, 0.0), 1.0);
        [v12 noteValueWillDeltaStepToValue:v13];
      }
    }

    if ([v7 isUILocked])
    {
      if (![v9 isAuthenticated])
      {
        v14 = 1;
        goto LABEL_16;
      }

      if (([v9 hasPasscodeSet] & 1) == 0)
      {
        v14 = [v8 hasBeenDismissedSinceKeybagLock]^ 1;
        goto LABEL_16;
      }
    }

    v14 = 0;
LABEL_16:
    v15 = [v7 lockScreenEnvironment];
    v16 = [v15 applicationHoster];
    v17 = [v16 isHostingAnApp];

    v18 = [v7 lockScreenEnvironment];
    v19 = [v18 mediaControlsPresenter];
    v20 = [v19 isShowingMediaControls];

    v21 = [(SBTelephonyManager *)self->_telephonyManager inCall]|| [(SBConferenceManager *)self->_conferenceManager inFaceTime];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __39__SBVolumeControl_changeVolumeByDelta___block_invoke;
    v22[3] = &unk_2783AC0C0;
    v22[4] = self;
    v23 = v6;
    v24 = a3;
    v25 = v21;
    v26 = v14;
    v27 = v17;
    v28 = v20;
    [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v22];

    goto LABEL_20;
  }

  v8 = SBLogAudioControl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(SBVolumeControl *)v6 changeVolumeByDelta:v8, a3];
  }

LABEL_20:
}

void __39__SBVolumeControl_changeVolumeByDelta___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(*(a1 + 32) + 112);
  v5 = [v4 activeCategoryName];
  v6 = [v4 isAudioSessionPlaying];
  if ([*(a1 + 32) canChangeVolumeForActiveCategory:v5 isAudioSessionPlaying:v6])
  {
    v7 = objc_alloc_init(SBVolumeControlState);
    [(SBVolumeControlState *)v7 setAudioPlayingSomewhere:v6];
    [(SBVolumeControlState *)v7 setCallOrFaceTimeActive:*(a1 + 52)];
    -[SBVolumeControlState setFullyMuted:](v7, "setFullyMuted:", [v4 isFullyMuted]);
    [(SBVolumeControlState *)v7 setRingerMuted:[(SBRingerControl *)*(*(a1 + 32) + 24) isRingerMuted]];
    -[SBVolumeControlState setCurrentRouteHasVolumeControl:](v7, "setCurrentRouteHasVolumeControl:", [v3 currentRouteHasVolumeControl]);
    [(SBVolumeControlState *)v7 setActiveVolumeCategoryName:v5];
    [(SBVolumeControlState *)v7 setLocked:*(a1 + 53)];
    [(SBVolumeControlState *)v7 setHostingAppOnLockScreen:*(a1 + 54)];
    [(SBVolumeControlState *)v7 setShowingLockScreenMediaControls:*(a1 + 55)];
    v27 = 0;
    v8 = [objc_opt_class() _isVolumeChangeAllowedForState:v7 error:&v27];
    v9 = v27;
    v10 = v5;
    if (([v10 isEqualToString:@"Audio/Video"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"PhoneCall") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Ringtone") & 1) == 0 && (objc_msgSend(v10, "isEqualToString:", @"RingtonePreview") & 1) == 0)
    {
    }

    else
    {

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__SBVolumeControl_changeVolumeByDelta___block_invoke_123;
      block[3] = &unk_2783AC098;
      block[4] = *(a1 + 32);
      v26 = *(a1 + 48);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v11 = SBLogAudioControl();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = *(a1 + 48);
        *buf = 138543874;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        v32 = 2114;
        v33 = v7;
        _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "(%{public}@) Attempting to change volume by delta %f for state '%{public}@'", buf, 0x20u);
      }

      if (([v3 changeActiveCategoryVolume:*(a1 + 48) > 0.0] & 1) == 0)
      {
        v11 = SBLogAudioControl();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __39__SBVolumeControl_changeVolumeByDelta___block_invoke_cold_1(a1, (a1 + 48), v11);
        }

        goto LABEL_22;
      }

      v11 = SBLogAudioControl();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 48);
        *buf = 138543618;
        v29 = v23;
        v30 = 2048;
        v31 = v24;
        v20 = "(%{public}@)Volume Change by delta '%f' was Accepted";
        v21 = v11;
        v22 = 22;
        goto LABEL_19;
      }
    }

    else if (v12)
    {
      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      *buf = 138543874;
      v29 = v18;
      v30 = 2048;
      v31 = v19;
      v32 = 2114;
      v33 = v9;
      v20 = "(%{public}@)Volume Change by delta '%f' was Denied; reason: %{public}@";
      v21 = v11;
      v22 = 32;
LABEL_19:
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
    }

LABEL_22:

    goto LABEL_23;
  }

  v7 = SBLogAudioControl();
  if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = [v5 copy];
    *buf = 138543874;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    v32 = 2114;
    v33 = v17;
    _os_log_impl(&dword_21ED4E000, &v7->super, OS_LOG_TYPE_DEFAULT, "(%{public}@)Volume Change by delta '%f' was Denied; reason: active category '%{public}@' is not managed by SBVolumeControl", buf, 0x20u);
  }

LABEL_23:
}

- (float)_buttonRepeatDelay
{
  result = 0.041667;
  if (self->_debounce)
  {
    return 0.333;
  }

  return result;
}

- (void)_presentVolumeHUDWithVolume:(float)a3
{
  if (self->_mode == 3)
  {
    return;
  }

  v6 = *MEMORY[0x277D67040];
  v7 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  v8 = [v7 HUDViewController];
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [SBElasticValueViewControllerFactory factoryWithVolumeDataSource:self];
    v11 = [[SBElasticHUDViewController alloc] initWithFactory:v10];

    [(SBElasticHUDViewController *)v11 setDelegate:self];
    [(SBVolumeControl *)self _configureVolumeStepDeltaForVolumeHUDViewController:v11];
    v13 = [(SBHUDController *)self->_hudController HUDSessionForViewController:v11 identifier:v6];

    v9 = v13;
    v8 = v11;
  }

  v14 = v9;
  [v9 presentWithDismissalInterval:0 animated:60.0];
  *&v12 = a3;
  [v8 noteValueDidChange:v12];
  if (!v7)
  {
    if (self->_volumeUpButtonIsDown)
    {
      if (!self->_volumeDownButtonIsDown)
      {
        goto LABEL_11;
      }
    }

    else if (!self->_volumeDownButtonIsDown)
    {
      goto LABEL_12;
    }

    [v8 noteButtonDownWasHit:1];
    if (self->_volumeUpButtonIsDown)
    {
LABEL_11:
      [v8 noteButtonUpWasHit:1];
    }
  }

LABEL_12:
}

- (void)_configureVolumeStepDeltaForVolumeHUDViewController:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0.0;
  v4 = MEMORY[0x277D26E58];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 getVolumeButtonDelta:0 outVolumeDelta:&v12];

  v8 = v12;
  v9 = SBLogAudioControl();
  v10 = v9;
  if (v7 || v8 <= 0.0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(SBVolumeControl *)&v12 _configureVolumeStepDeltaForVolumeHUDViewController:v7, v10];
    }

    [(SBElasticHUDSettings *)self->_elasticHUDSettings volumeStepDelta];
    v12 = v11;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v12;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Configuring volume HUD with volume delta: %f", buf, 0xCu);
    }

    v11 = v12;
  }

  [v5 setButtonStepCount:vcvtas_u32_f32(1.0 / v11)];
}

- (BOOL)_isVolumeHUDVisible
{
  v2 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isVisible];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isVolumeHUDVisibleOnWindowScene:(id)a3
{
  v4 = a3;
  if ([(SBVolumeControl *)self _isVolumeHUDVisible])
  {
    v5 = [(SBHUDController *)self->_hudController windowScene];
    v6 = v5 == v4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_someSceneWillConnect:(id)a3
{
  v11 = a3;
  v5 = [v11 object];
  v6 = [(SBHUDController *)self->_hudController windowScene];
  v7 = v6;
  if (v5 && v5 == v6)
  {
    v8 = [v6 zStackResolver];
    if (!v8)
    {
      [(SBVolumeControl *)a2 _someSceneWillConnect:?];
    }

    v9 = v8;
    v10 = [v8 addObserver:self ofParticipantWithIdentifier:29];
    [(SBVolumeControl *)self _processZStackParticipantSettings:v10];
  }
}

- (void)_processZStackParticipantSettings:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 audioCategoriesDisablingVolumeHUD];
  if ((BSEqualSets() & 1) == 0)
  {
    objc_storeStrong(&self->_audioCategoriesDisablingVolumeHUD, v4);
    v5 = [(SBVolumeControl *)self lastDisplayedCategory];
    if (SBFAudioCategoriesDisablingVolumeHUDIncludesCategory())
    {
      v6 = SBLogAudioControl();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412802;
        v8 = self;
        v9 = 2114;
        v10 = v5;
        v11 = 2114;
        v12 = v4;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "%@ Hiding Volume HUD if visible; lastDisplayedCategory='%{public}@', audioCategoriesDisablingVolumeHUD=%{public}@", &v7, 0x20u);
      }

      [(SBVolumeControl *)self hideVolumeHUDIfVisible];
    }
  }
}

- (void)_effectiveVolumeChanged:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 userInfo];
  [v5 objectForKey:*MEMORY[0x277D26BB8]];
  v6 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  if ([(SBVolumeControl *)self _displaysVolumeForCategory:*&v6])
  {
    v7 = [v5 objectForKey:*MEMORY[0x277D26BD0]];
    v8 = SBLogAudioControl();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v47 = v6;
      v48 = 2114;
      v49 = v7;
      v50 = 2048;
      v51 = v4;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "_effectiveVolumeChanged for '%{public}@' for reason: %{public}@/%p", buf, 0x20u);
    }

    v9 = [v7 isEqualToString:@"ExplicitVolumeChange"];
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = [v7 isEqualToString:@"FullMuteChange"];
    }

    v11 = [v7 isEqualToString:@"RouteChange"];
    v12 = [v7 isEqualToString:@"CategoryChange"];
    if ((v10 & 1) != 0 || (v11 & 1) != 0 || v12)
    {
      v41 = v9;
      v13 = [v5 objectForKey:*MEMORY[0x277D26BC8]];
      [v13 floatValue];
      v15 = v14;

      v44 = COERCE_DOUBLE([(NSString *)self->_lastEventCategory copy]);
      mode = self->_mode;
      objc_storeStrong(&self->_lastEventCategory, *&v6);
      v17 = self->_lastEventCategory;
      if ([(NSString *)v17 isEqualToString:@"Audio/Video"])
      {
        v18 = 1;
      }

      else if ([(NSString *)v17 isEqualToString:@"PhoneCall"])
      {
        v18 = 2;
      }

      else if ([(NSString *)v17 isEqualToString:@"Ringtone"])
      {
        v18 = 3;
      }

      else if ([(NSString *)v17 isEqualToString:@"RingtonePreview"])
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      self->_mode = v18;
      v19 = BSEqualObjects();
      if (mode != self->_mode)
      {
        v21 = SBLogAudioControl();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          NSStringFromSBVolumeMode(mode);
          v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v22 = NSStringFromSBVolumeMode(self->_mode);
          *buf = 138543618;
          v47 = v42;
          v48 = 2114;
          v49 = v22;
          v23 = v22;
          _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "Updating Mode from '%{public}@' -> '%{public}@'", buf, 0x16u);
        }
      }

      if ((v19 & 1) == 0)
      {
        v24 = SBLogAudioControl();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          lastEventCategory = self->_lastEventCategory;
          *buf = 138543618;
          v47 = v44;
          v48 = 2114;
          v49 = lastEventCategory;
          _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "Updating Last Event category from '%{public}@' -> '%{public}@'", buf, 0x16u);
        }
      }

      *&v20 = v15;
      [(SBVolumeControl *)self _updateEffectiveVolume:v20];
      v26 = SBLogAudioControl();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v47 = v15;
        _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Caching newEffectiveVolume: %f from AVSystemController", buf, 0xCu);
      }

      v43 = v10;

      v45 = 0;
      v27 = [(SBVolumeControl *)self _isHUDDisplayableWithReason:&v45];
      v28 = COERCE_DOUBLE(v45);
      if (!v27)
      {
        v29 = SBLogAudioControl();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v28;
          _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "HUD is not displayable; %{public}@", buf, 0xCu);
        }
      }

      v30 = [v5 objectForKey:*MEMORY[0x277D26BC0]];
      v31 = [v30 BOOLValue];

      if ((v43 & v31) == 1)
      {
        v32 = SBLogAudioControl();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "Volume change is explicitly suppressing HUD presentation", buf, 2u);
        }
      }

      if (((v43 ^ 1 | v31) & 1) != 0 || !v27)
      {
        v36 = [(SBVolumeControl *)self presentedVolumeHUDViewController];
        if (v36)
        {
          v37 = v27;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          v38 = [(NSString *)self->_lastEventCategory copy];
          lastDisplayedCategory = self->_lastDisplayedCategory;
          self->_lastDisplayedCategory = v38;

          *&v40 = v15;
          [v36 noteValueDidChange:v40];
        }
      }

      else
      {
        v33 = [(NSString *)self->_lastEventCategory copy];
        v34 = self->_lastDisplayedCategory;
        self->_lastDisplayedCategory = v33;

        *&v35 = v15;
        [(SBVolumeControl *)self _presentVolumeHUDWithVolume:v35];
      }

      if (v43 && self->_mode == 3)
      {
        if (v27)
        {
          [(SBRingerControl *)self->_ringerControl activateRingerHUDForVolumeChangeWithInitialVolume:v15];
        }

        [(SBRingerControl *)self->_ringerControl setVolume:v41 forKeyPress:v15];
      }
    }
  }

  else
  {
    v7 = SBLogAudioControl();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v47 = v6;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "_effectiveVolumeChanged for '%{public}@' but volume category is not displayed by SBVolumeControl", buf, 0xCu);
    }
  }
}

- (void)_resetMediaServerConnection
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __46__SBVolumeControl__resetMediaServerConnection__block_invoke;
  v2[3] = &unk_2783AC028;
  v2[4] = self;
  [(SBVolumeControl *)self _dispatchAVSystemControllerAsync:v2];
}

void __46__SBVolumeControl__resetMediaServerConnection__block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = a2;
  [v3 getActiveCategoryVolume:&v8 andName:0];
  LODWORD(v4) = v8;
  [*(a1 + 32) _updateEffectiveVolume:v4];
  v7 = 0;
  [v3 getVolume:&v7 forCategory:@"Ringtone"];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SBVolumeControl__resetMediaServerConnection__block_invoke_2;
  block[3] = &unk_2783AC098;
  block[4] = *(a1 + 32);
  v6 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (id)_avscOperationsQueue
{
  avscOperationsQueue = self->_avscOperationsQueue;
  if (!avscOperationsQueue)
  {
    v4 = [(SBAVSystemControllerCache *)self->_avCache avscOperationsWorkloop];
    if (!v4)
    {
      [SBVolumeControl _avscOperationsQueue];
    }

    v5 = [MEMORY[0x277CF0C18] serial];
    v6 = [v5 serviceClass:25 relativePriority:1];
    v7 = [v6 targetQueue:v4];

    v8 = BSDispatchQueueCreate();
    v9 = self->_avscOperationsQueue;
    self->_avscOperationsQueue = v8;

    avscOperationsQueue = self->_avscOperationsQueue;
  }

  return avscOperationsQueue;
}

- (void)_dispatchAVSystemControllerAsync:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBVolumeControl _dispatchAVSystemControllerAsync:];
  }

  v5 = [(SBVolumeControl *)self _avscOperationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SBVolumeControl__dispatchAVSystemControllerAsync___block_invoke;
  block[3] = &unk_2783A9348;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

void __52__SBVolumeControl__dispatchAVSystemControllerAsync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  (*(v1 + 16))(v1, v2);
}

- (void)_dispatchAVSystemControllerSync:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBVolumeControl _dispatchAVSystemControllerSync:];
  }

  v5 = [(SBVolumeControl *)self _avscOperationsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBVolumeControl__dispatchAVSystemControllerSync___block_invoke;
  block[3] = &unk_2783A9348;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(v5, block);
}

void __51__SBVolumeControl__dispatchAVSystemControllerSync___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  (*(v1 + 16))(v1, v2);
}

- (void)controlCenter:(id)a3 willPresentOnWindowScene:(id)a4
{
  if ([(SBVolumeControl *)self _isVolumeHUDVisibleOnWindowScene:a4])
  {
    v5 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D67040]];
    [v5 dismiss];
  }
}

- (void)elasticHUDViewControllerRequestsDismissal:(id)a3
{
  v3 = [(SBHUDController *)self->_hudController presentedHUDControllerForIdentifier:*MEMORY[0x277D67040]];
  [v3 dismissAnimated:0];
}

- (void)initWithHUDController:ringerControl:telephonyManager:conferenceManager:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"HUDController" object:? file:? lineNumber:? description:?];
}

- (void)initWithHUDController:ringerControl:telephonyManager:conferenceManager:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"ringerControl" object:? file:? lineNumber:? description:?];
}

- (void)initWithHUDController:ringerControl:telephonyManager:conferenceManager:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"telephonyManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithHUDController:ringerControl:telephonyManager:conferenceManager:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"conferenceManager" object:? file:? lineNumber:? description:?];
}

- (void)setVolume:forCategory:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"category" object:? file:? lineNumber:? description:?];
}

- (void)changeVolumeByDelta:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBVolumeControl changeVolumeByDelta:]"];
  [v1 handleFailureInFunction:v0 file:@"SBVolumeControl.m" lineNumber:538 description:@"this call must be made on the main thread"];
}

- (void)changeVolumeByDelta:(float)a3 .cold.2(uint64_t a1, NSObject *a2, float a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "(%{public}@)Volume Change by delta '%f' was Denied; reason: SBLockScreenManager not initialized", &v3, 0x16u);
}

double __39__SBVolumeControl_changeVolumeByDelta___block_invoke_cold_1(uint64_t a1, float *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v4 = *a2;
  v6 = 138543874;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  v10 = 2114;
  v11 = @"Active Category volume change came back false.";
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "(%{public}@)Volume Change by delta '%f' was Denied; reason: %{public}@", &v6, 0x20u);
  return result;
}

- (double)_configureVolumeStepDeltaForVolumeHUDViewController:(os_log_t)log .cold.1(float *a1, int a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Failed to retrieve valid volume delta (%f) with result: %d", &v5, 0x12u);
  return result;
}

- (void)_someSceneWillConnect:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"The connected window scene should have a zStackResolver"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBVolumeControl.m";
    v16 = 1024;
    v17 = 728;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_avscOperationsQueue
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_dispatchAVSystemControllerAsync:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

- (void)_dispatchAVSystemControllerSync:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"block" object:? file:? lineNumber:? description:?];
}

@end