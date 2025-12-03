@interface SBLockScreenOrientationManager
- (SBLockScreenOrientationManager)init;
- (void)_lockStateChanged:(id)changed;
- (void)_updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:(int64_t)orientation;
- (void)assistantDidAppear:(id)appear windowScene:(id)scene;
- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)orientation animated:(BOOL)animated;
@end

@implementation SBLockScreenOrientationManager

- (SBLockScreenOrientationManager)init
{
  v8.receiver = self;
  v8.super_class = SBLockScreenOrientationManager;
  v2 = [(SBLockScreenOrientationManager *)&v8 init];
  if (v2)
  {
    v3 = +[SBAssistantController sharedInstance];
    [v3 addObserver:v2];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
LABEL_8:

        return v2;
      }
    }

    [defaultCenter addObserver:v2 selector:sel__lockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    goto LABEL_8;
  }

  return v2;
}

- (void)assistantDidAppear:(id)appear windowScene:(id)scene
{
  appearCopy = appear;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    v5 = +[SBLockScreenManager sharedInstance];
    lockScreenEnvironment = [v5 lockScreenEnvironment];
    rootViewController = [lockScreenEnvironment rootViewController];

    if ([rootViewController bs_isAppearingOrAppeared])
    {
      window = [appearCopy window];
      interfaceOrientation = [window interfaceOrientation];

      [(SBLockScreenOrientationManager *)self updateInterfaceOrientationWithRequestedOrientation:interfaceOrientation animated:1];
    }
  }
}

- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet"))
  {
    return;
  }

  v21 = +[SBCoverSheetPresentationManager sharedInstance];
  v7 = +[SBLockScreenManager sharedInstance];
  coverSheetViewController = [v7 coverSheetViewController];

  v9 = +[SBOrientationLockManager sharedInstance];
  [v21 setActiveInterfaceOrientationLocked:0];
  if ([v9 isUserLocked])
  {
    orientation = [v9 userLockOrientation];
  }

  if ((orientation - 1) >= 4)
  {
    if (__sb__runningInSpringBoard())
    {
      if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (!userInterfaceIdiom)
      {
LABEL_8:
        orientation = 1;
        [(SBLockScreenOrientationManager *)self _updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:1];
        goto LABEL_11;
      }
    }

    orientation = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
  }

LABEL_11:
  [SBApp pushTransientActiveInterfaceOrientation:orientation forReason:@"SBLockScreenTransientActiveInterfaceOrientationForUndimReason"];
  [SBApp updateNativeOrientationWithOrientation:orientation updateMirroredDisplays:1 animated:animatedCopy logMessage:@"LockScreen updated interface orientation"];
  [SBApp popTransientActiveInterfaceOrientationForReason:@"SBLockScreenTransientActiveInterfaceOrientationForUndimReason"];
  _sbWindowScene = [coverSheetViewController _sbWindowScene];
  homeScreenController = [_sbWindowScene homeScreenController];
  homeScreenViewController = [homeScreenController homeScreenViewController];
  [homeScreenViewController nudgeIconInterfaceOrientation:orientation duration:0.0];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
LABEL_15:
    [SBApp setStatusBarOrientation:orientation forEmbeddedDisplayAnimated:0];
    v17 = +[SBUIController sharedInstance];
    window = [v17 window];
    rootViewController = [window rootViewController];
    [rootViewController setInterfaceOrientation:orientation];
  }

LABEL_16:
  activeInterfaceOrientation = [SBApp activeInterfaceOrientation];
  [v21 updateInterfaceOrientationToMatchOrientation:activeInterfaceOrientation];
  [coverSheetViewController setEffectiveInterfaceOrientationOverride:activeInterfaceOrientation];
  [v21 setActiveInterfaceOrientationLocked:1];
}

- (void)_lockStateChanged:(id)changed
{
  changedCopy = changed;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    userInfo = [changedCopy userInfo];
    v6 = [userInfo objectForKeyedSubscript:@"SBAggregateLockStateKey"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    v8 = unsignedIntegerValue & 1;
    if (self->_wasUILocked != v8)
    {
      if (v8)
      {
        v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:480.0];
        updateForAmbiguousOrientationsAfterDate = self->_updateForAmbiguousOrientationsAfterDate;
        self->_updateForAmbiguousOrientationsAfterDate = v11;

        v10 = BKLogOrientationDevice();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [(SBLockScreenOrientationManager *)&self->_updateForAmbiguousOrientationsAfterDate _lockStateChanged:v10];
        }
      }

      else
      {
        v9 = self->_updateForAmbiguousOrientationsAfterDate;
        self->_updateForAmbiguousOrientationsAfterDate = 0;

        v10 = BKLogOrientationDevice();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [SBLockScreenOrientationManager _lockStateChanged:v10];
        }
      }

      self->_wasUILocked = v8;
    }
  }
}

- (void)_updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:(int64_t)orientation
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        return;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom)
      {
        return;
      }
    }

    deviceOrientationForDeferredUpdateIfAny = [SBApp deviceOrientationForDeferredUpdateIfAny];
    if (!deviceOrientationForDeferredUpdateIfAny)
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      deviceOrientationForDeferredUpdateIfAny = [currentDevice2 orientation];
    }

    if ((deviceOrientationForDeferredUpdateIfAny - 1) < 4)
    {
      v9 = BKLogOrientationDevice();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SBLockScreenOrientationManager *)deviceOrientationForDeferredUpdateIfAny _updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:v9];
      }

LABEL_18:

      return;
    }

    date = [MEMORY[0x277CBEAA8] date];
    v11 = [date isAfterDate:self->_updateForAmbiguousOrientationsAfterDate];

    if (!v11)
    {
      v9 = BKLogOrientationDevice();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Not updating SpringBoard's device orientation for unlock in an ambiguous orientation as we locked too recently", v13, 2u);
      }

      goto LABEL_18;
    }

    v12 = SBApp;

    [v12 _setDeviceOrientation:orientation animated:0 logMessage:@"Forcibly updating SpringBoard's device orientation for unlock in an ambiguous orientation"];
  }
}

- (void)_lockStateChanged:(uint64_t *)a1 .cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "We are now UI locked. Will update device orientation for unlocks in ambiguous orientations after %@", &v3, 0xCu);
}

- (void)_updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = BSDeviceOrientationDescription();
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Not updating SpringBoard's device orientation for unlock because our orientation isn't ambiguous, it's: %@", &v4, 0xCu);
}

@end