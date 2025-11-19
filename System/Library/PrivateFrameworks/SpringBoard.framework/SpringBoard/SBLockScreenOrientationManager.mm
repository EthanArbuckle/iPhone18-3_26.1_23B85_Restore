@interface SBLockScreenOrientationManager
- (SBLockScreenOrientationManager)init;
- (void)_lockStateChanged:(id)a3;
- (void)_updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:(int64_t)a3;
- (void)assistantDidAppear:(id)a3 windowScene:(id)a4;
- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)a3 animated:(BOOL)a4;
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

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    if (__sb__runningInSpringBoard())
    {
      if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6)
      {
LABEL_8:

        return v2;
      }
    }

    [v4 addObserver:v2 selector:sel__lockStateChanged_ name:@"SBAggregateLockStateDidChangeNotification" object:0];
    goto LABEL_8;
  }

  return v2;
}

- (void)assistantDidAppear:(id)a3 windowScene:(id)a4
{
  v10 = a3;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    v5 = +[SBLockScreenManager sharedInstance];
    v6 = [v5 lockScreenEnvironment];
    v7 = [v6 rootViewController];

    if ([v7 bs_isAppearingOrAppeared])
    {
      v8 = [v10 window];
      v9 = [v8 interfaceOrientation];

      [(SBLockScreenOrientationManager *)self updateInterfaceOrientationWithRequestedOrientation:v9 animated:1];
    }
  }
}

- (void)updateInterfaceOrientationWithRequestedOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet"))
  {
    return;
  }

  v21 = +[SBCoverSheetPresentationManager sharedInstance];
  v7 = +[SBLockScreenManager sharedInstance];
  v8 = [v7 coverSheetViewController];

  v9 = +[SBOrientationLockManager sharedInstance];
  [v21 setActiveInterfaceOrientationLocked:0];
  if ([v9 isUserLocked])
  {
    a3 = [v9 userLockOrientation];
  }

  if ((a3 - 1) >= 4)
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
      v10 = [MEMORY[0x277D75418] currentDevice];
      v11 = [v10 userInterfaceIdiom];

      if (!v11)
      {
LABEL_8:
        a3 = 1;
        [(SBLockScreenOrientationManager *)self _updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:1];
        goto LABEL_11;
      }
    }

    a3 = [SBApp interfaceOrientationForCurrentDeviceOrientation:0];
  }

LABEL_11:
  [SBApp pushTransientActiveInterfaceOrientation:a3 forReason:@"SBLockScreenTransientActiveInterfaceOrientationForUndimReason"];
  [SBApp updateNativeOrientationWithOrientation:a3 updateMirroredDisplays:1 animated:v4 logMessage:@"LockScreen updated interface orientation"];
  [SBApp popTransientActiveInterfaceOrientationForReason:@"SBLockScreenTransientActiveInterfaceOrientationForUndimReason"];
  v12 = [v8 _sbWindowScene];
  v13 = [v12 homeScreenController];
  v14 = [v13 homeScreenViewController];
  [v14 nudgeIconInterfaceOrientation:a3 duration:0.0];

  if (__sb__runningInSpringBoard())
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v15 = [MEMORY[0x277D75418] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1)
  {
LABEL_15:
    [SBApp setStatusBarOrientation:a3 forEmbeddedDisplayAnimated:0];
    v17 = +[SBUIController sharedInstance];
    v18 = [v17 window];
    v19 = [v18 rootViewController];
    [v19 setInterfaceOrientation:a3];
  }

LABEL_16:
  v20 = [SBApp activeInterfaceOrientation];
  [v21 updateInterfaceOrientationToMatchOrientation:v20];
  [v8 setEffectiveInterfaceOrientationOverride:v20];
  [v21 setActiveInterfaceOrientationLocked:1];
}

- (void)_lockStateChanged:(id)a3
{
  v4 = a3;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRoleCoverSheet") & 1) == 0)
  {
    v5 = [v4 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"SBAggregateLockStateKey"];
    v7 = [v6 unsignedIntegerValue];

    v8 = v7 & 1;
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

- (void)_updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:(int64_t)a3
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
      v5 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v5 userInterfaceIdiom];

      if (v6)
      {
        return;
      }
    }

    v7 = [SBApp deviceOrientationForDeferredUpdateIfAny];
    if (!v7)
    {
      v8 = [MEMORY[0x277D75418] currentDevice];
      v7 = [v8 orientation];
    }

    if ((v7 - 1) < 4)
    {
      v9 = BKLogOrientationDevice();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [(SBLockScreenOrientationManager *)v7 _updateDeviceOrientationIfNeededForPhoneUnlockToOrientation:v9];
      }

LABEL_18:

      return;
    }

    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v10 isAfterDate:self->_updateForAmbiguousOrientationsAfterDate];

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

    [v12 _setDeviceOrientation:a3 animated:0 logMessage:@"Forcibly updating SpringBoard's device orientation for unlock in an ambiguous orientation"];
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