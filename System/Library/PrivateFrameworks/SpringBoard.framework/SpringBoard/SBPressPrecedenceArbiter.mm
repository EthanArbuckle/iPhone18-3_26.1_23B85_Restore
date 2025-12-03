@interface SBPressPrecedenceArbiter
- (BOOL)_shouldArbitrateLockAndVolumeHardwareButtonPriorities;
- (SBPressPrecedenceArbiter)initWithHomeButtonType:(int64_t)type;
- (unint64_t)_currentButtonPriority;
- (void)_applyButtonPriority:(unint64_t)priority;
- (void)_updateButtonPriority;
- (void)setHardwareButtons:(id)buttons;
@end

@implementation SBPressPrecedenceArbiter

- (SBPressPrecedenceArbiter)initWithHomeButtonType:(int64_t)type
{
  v12.receiver = self;
  v12.super_class = SBPressPrecedenceArbiter;
  v4 = [(SBPressPrecedenceArbiter *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_volumeAndLockButtonPriority = -1;
    v4->_homeButtonType = type;
    _shouldArbitrateLockAndVolumeHardwareButtonPriorities = [(SBPressPrecedenceArbiter *)v4 _shouldArbitrateLockAndVolumeHardwareButtonPriorities];
    v7 = SBLogButtonsCombo();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (_shouldArbitrateLockAndVolumeHardwareButtonPriorities)
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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A48] object:0];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBFrontmostDisplayChangedNotification" object:0];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A20] object:0];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:*MEMORY[0x277D67A18] object:0];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBApplicationsRegisteredForVolumeButtonEventsChangedNotification" object:0];
      [defaultCenter addObserver:v5 selector:sel__updateButtonPrioritiesForNotification_ name:@"SBApplicationsRegisteredForLockButtonEventsChangedNotification" object:0];
    }

    else if (v8)
    {
      *v11 = 0;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "volume/lock precedence arbitration is disabled on this device", v11, 2u);
    }
  }

  return v5;
}

- (void)setHardwareButtons:(id)buttons
{
  objc_storeStrong(&self->_hardwareButtons, buttons);
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
  _currentButtonPriority = [(SBPressPrecedenceArbiter *)self _currentButtonPriority];
  v4 = SBLogButtonsCombo();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (_currentButtonPriority > 2)
    {
      v5 = @"<unknown>";
    }

    else
    {
      v5 = off_2783AFB70[_currentButtonPriority];
    }

    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "lock/volume priority is:%{public}@", &v6, 0xCu);
  }

  if (_currentButtonPriority != self->_volumeAndLockButtonPriority)
  {
    [(SBPressPrecedenceArbiter *)self _applyButtonPriority:_currentButtonPriority];
  }
}

- (void)_applyButtonPriority:(unint64_t)priority
{
  v19 = *MEMORY[0x277D85DE8];
  self->_volumeAndLockButtonPriority = priority;
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

        preemptablePressGestureRecognizers = [*(*(&v14 + 1) + 8 * v9) preemptablePressGestureRecognizers];
        [v4 addObjectsFromArray:preemptablePressGestureRecognizers];

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
  isUILocked = [v3 isUILocked];

  v5 = +[SBBacklightController sharedInstance];
  screenIsOn = [v5 screenIsOn];

  v7 = +[SBWorkspace mainWorkspace];
  transientOverlayPresentationManager = [v7 transientOverlayPresentationManager];
  hasActivePresentation = [transientOverlayPresentationManager hasActivePresentation];

  if (isUILocked)
  {
    v10 = 1;
    if (((screenIsOn | hasActivePresentation) & 1) == 0)
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
    appsRegisteredForLockButtonEvents = [SBApp appsRegisteredForLockButtonEvents];
    firstObject = [appsRegisteredForLockButtonEvents firstObject];

    appsRegisteredForVolumeEvents = [SBApp appsRegisteredForVolumeEvents];
    firstObject2 = [appsRegisteredForVolumeEvents firstObject];

    HasMatchingApplication = SBWorkspaceUnlockedEnvironmentLayoutStateHasMatchingApplication(firstObject);
    if (firstObject)
    {
      v17 = firstObject == firstObject2;
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