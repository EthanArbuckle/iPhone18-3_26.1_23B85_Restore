@interface SBPressPrecedenceArbiter
- (BOOL)_shouldArbitrateLockAndVolumeHardwareButtonPriorities;
- (SBPressPrecedenceArbiter)initWithHomeButtonType:(int64_t)a3;
- (unint64_t)_currentButtonPriority;
- (void)_applyButtonPriority:(unint64_t)a3;
- (void)_updateButtonPriority;
- (void)setHardwareButtons:(id)a3;
@end

@implementation SBPressPrecedenceArbiter

- (SBPressPrecedenceArbiter)initWithHomeButtonType:(int64_t)a3
{
  v12.receiver = self;
  v12.super_class = SBPressPrecedenceArbiter;
  v4 = [(SBPressPrecedenceArbiter *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_volumeAndLockButtonPriority = -1;
    v4->_homeButtonType = a3;
    v6 = [(SBPressPrecedenceArbiter *)v4 _shouldArbitrateLockAndVolumeHardwareButtonPriorities];
    v7 = SBLogButtonsCombo();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *v11 = 0;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "volume/lock precedence arbitration is enabled on this device", v11, 2u);
      }

      v7 = +[SBAVSystemControllerCache sharedInstance];
      [v7 addObserver:v5];
      v5->_isAudioPlayingSomewhere = [v7 isAudioSessionPlaying];
      [(SBPressPrecedenceArbiter *)v5 _updateButtonPrioritiesForNotification:0];
      v9 = [MEMORY[0x277CCAB98] defaultCenter];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A48] object:0];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBFrontmostDisplayChangedNotification" object:0];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A20] object:0];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A18] object:0];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBApplicationsRegisteredForVolumeButtonEventsChangedNotification" object:0];
      [v9 addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBApplicationsRegisteredForLockButtonEventsChangedNotification" object:0];
    }

    else if (v8)
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "volume/lock precedence arbitration is disabled on this device", v11, 2u);
    }
  }

  return v5;
}

- (void)setHardwareButtons:(id)a3
{
  objc_storeStrong(&self->_hardwareButtons, a3);
  volumeAndLockButtonPriority = self->_volumeAndLockButtonPriority;

  [(SBPressPrecedenceArbiter *)self _applyButtonPriority:volumeAndLockButtonPriority];
}

- (BOOL)_shouldArbitrateLockAndVolumeHardwareButtonPriorities
{
  if (self->_homeButtonType == 2)
  {
    return 0;
  }

  else
  {
    return MGGetBoolAnswer();
  }
}

- (void)_updateButtonPriority
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [(SBPressPrecedenceArbiter *)self _currentButtonPriority];
  v4 = SBLogButtonsCombo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 2)
    {
      v5 = @"<unknown>";
    }

    else
    {
      v5 = off_2783AFB70[v3];
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "lock/volume priority is:%{public}@", &v6, 0xCu);
  }

  if (v3 != self->_volumeAndLockButtonPriority)
  {
    [(SBPressPrecedenceArbiter *)self _applyButtonPriority:v3];
  }
}

- (void)_applyButtonPriority:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  self->_volumeAndLockButtonPriority = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_hardwareButtons;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) preemptablePressGestureRecognizers];
        [v4 addObjectsFromArray:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  volumeAndLockButtonPriority = self->_volumeAndLockButtonPriority;
  v12 = &unk_28336DF38;
  if (volumeAndLockButtonPriority != 2)
  {
    v12 = 0;
  }

  if (volumeAndLockButtonPriority == 1)
  {
    v13 = &unk_28336DF20;
  }

  else
  {
    v13 = v12;
  }

  [v4 makeObjectsPerformSelector:sel_setPressTypesWithPrecedence_ withObject:{v13, v14}];
}

- (unint64_t)_currentButtonPriority
{
  v3 = +[SBLockScreenManager sharedInstanceIfExists];
  v4 = [v3 isUILocked];

  v5 = +[SBBacklightController sharedInstance];
  v6 = [v5 screenIsOn];

  v7 = +[SBWorkspace mainWorkspace];
  v8 = [v7 transientOverlayPresentationManager];
  v9 = [v8 hasActivePresentation];

  if (v4)
  {
    v10 = 1;
    if (((v6 | v9) & 1) == 0)
    {
      v10 = 2;
    }

    if (self->_isAudioPlayingSomewhere)
    {
      return v10;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    v12 = [SBApp appsRegisteredForLockButtonEvents];
    v13 = [v12 firstObject];

    v14 = [SBApp appsRegisteredForVolumeEvents];
    v15 = [v14 firstObject];

    HasMatchingApplication = SBWorkspaceUnlockedEnvironmentLayoutStateHasMatchingApplication(v13);
    if (v13)
    {
      v17 = v13 == v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v11 = v18 & HasMatchingApplication ^ 1u;
  }

  return v11;
}

@end