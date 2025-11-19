@interface SBUIBiometricResource
+ (SBUIBiometricResource)sharedInstance;
- (BOOL)hasBiometricAuthenticationCapabilityEnabled;
- (SBUIBiometricResource)init;
- (SBUIBiometricResource)initWithBiometricKitInterface:(id)a3;
- (double)fallbackIndicatorMinimumDurationLeewayForBiometricKitInterface:(id)a3;
- (id)acquireFaceDetectionWantedAssertionForReason:(id)a3;
- (id)acquireFingerDetectionWantedAssertionForReason:(id)a3 HIDEventsOnly:(BOOL)a4;
- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4;
- (id)acquireSimulatedLockoutAssertionWithLockoutState:(unint64_t)a3 forReason:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)biometricLockoutState;
- (unint64_t)wakeSourceForBiometricKitInterface:(id)a3;
- (void)_activateFaceDetectAssertion:(id)a3;
- (void)_activateFingerDetectAssertion:(id)a3;
- (void)_activateMatchAssertion:(id)a3;
- (void)_addFaceDetectionWantedAssertion:(id)a3;
- (void)_addFingerDetectionWantedAssertion:(id)a3 HIDEventsOnly:(BOOL)a4;
- (void)_addMatchingAssertion:(id)a3;
- (void)_addSimulatedLockoutAssertion:(id)a3;
- (void)_clearFinishedOperationsIfNeededForAssertion:(id)a3;
- (void)_deactivateAllPearlAssertions;
- (void)_deactivateAssertion:(id)a3;
- (void)_deviceWillWake;
- (void)_forceBioLockout;
- (void)_matchingAllowedStateMayHaveChangedForReason:(id)a3;
- (void)_notifyObserversOfEvent:(unint64_t)a3;
- (void)_presenceDetectAllowedStateMayHaveChangedForReason:(id)a3;
- (void)_profileSettingsChanged:(id)a3;
- (void)_reallyResumeMatchingForAssertion:(id)a3 advisory:(BOOL)a4;
- (void)_reallySetAuthenticated:(BOOL)a3 keybagState:(id)a4;
- (void)_reevaluateFaceDetection;
- (void)_reevaluateFingerDetection;
- (void)_reevaluateMatching;
- (void)_removeFaceDetectionWantedAssertion:(id)a3;
- (void)_removeFingerDetectionWantedAssertion:(id)a3 HIDEventsOnly:(BOOL)a4;
- (void)_removeMatchingAssertion:(id)a3;
- (void)_removeSimulatedLockoutAssertion:(id)a3;
- (void)_updateHandlersForEvent:(unint64_t)a3;
- (void)addObserver:(id)a3;
- (void)biometricKitInterface:(id)a3 enrolledIdentitiesDidChange:(BOOL)a4;
- (void)biometricKitInterface:(id)a3 handleEvent:(unint64_t)a4;
- (void)dealloc;
- (void)keybag:(id)a3 extendedStateDidChange:(id)a4;
- (void)noteScreenDidTurnOff;
- (void)noteScreenWillTurnOff;
- (void)noteScreenWillTurnOn;
- (void)removeObserver:(id)a3;
- (void)resumeMatchingAdvisory:(BOOL)a3;
- (void)resumeMatchingForAssertion:(id)a3 advisory:(BOOL)a4;
@end

@implementation SBUIBiometricResource

+ (SBUIBiometricResource)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[SBUIBiometricResource sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_4;

  return v3;
}

- (BOOL)hasBiometricAuthenticationCapabilityEnabled
{
  if (![(SBFMobileKeyBag *)self->_keybag hasPasscodeSet]|| ![(SBUIBiometricResource *)self hasEnrolledIdentities])
  {
    return 0;
  }

  profileConnection = self->_profileConnection;

  return [(MCProfileConnection *)profileConnection isFingerprintUnlockAllowed];
}

- (unint64_t)biometricLockoutState
{
  result = [(_SBUIBiometricKitInterface *)self->_biometricInterface lockoutState];
  if (!result)
  {
    result = [(NSMutableOrderedSet *)self->_simulatedLockoutAssertions count];
    if (result)
    {
      v4 = [(NSMutableOrderedSet *)self->_simulatedLockoutAssertions firstObject];
      v5 = [v4 lockoutState];

      return v5;
    }
  }

  return result;
}

- (void)_reevaluateMatching
{
  v47 = *MEMORY[0x1E69E9840];
  isMatchingEnabled = self->_isMatchingEnabled;
  if (self->_isMatchingAllowed && [(NSMutableOrderedSet *)self->_matchAssertions count])
  {
    v4 = [(NSMutableOrderedSet *)self->_simulatedLockoutAssertions count]== 0;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v6 = SBLogBiometricResource();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromBOOL();
    v8 = NSStringFromBOOL();
    v9 = NSStringFromBOOL();
    matchAssertions = self->_matchAssertions;
    *buf = 138544130;
    v40 = v7;
    v41 = 2114;
    v42 = v8;
    v43 = 2114;
    v44 = v9;
    v45 = 2112;
    v46 = matchAssertions;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "Reevaluating matching. _isMatchingEnabled = %{public}@ shouldBeEnabled = %{public}@ _isMatchingAllowed = %{public}@ _matchAssertions = %@", buf, 0x2Au);
  }

  if (self->_isMatchingEnabled != v5)
  {
    v11 = SBLogBiometricResource();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromBOOL();
      v13 = self->_matchAssertions;
      *buf = 138412546;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_INFO, "Changing matching to %@. _matchAssertions = %@", buf, 0x16u);
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = self->_matchAssertions;
  v15 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v33 + 1) + 8 * i);
        if (v4)
        {
          [(SBUIBiometricResource *)self _activateMatchAssertion:v19];
        }

        else
        {
          [(SBUIBiometricResource *)self _deactivateAssertion:v19];
        }
      }

      v16 = [(NSMutableOrderedSet *)v14 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v16);
  }

  if (isMatchingEnabled != v5)
  {
    self->_isMatchingEnabled = v5;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [(NSHashTable *)self->_observers copy];
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v30;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v29 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v25 biometricResource:self matchingEnabledDidChange:self->_isMatchingEnabled];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v22);
    }

    v26 = SBLogBiometricResource();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = NSStringFromBOOL();
      v28 = self->_matchAssertions;
      *buf = 138412546;
      v40 = v27;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_1A9A79000, v26, OS_LOG_TYPE_INFO, "Changed matching to %@. _matchAssertions = %@", buf, 0x16u);
    }
  }
}

- (void)_deviceWillWake
{
  if (self->_isMatchingEnabled)
  {
    v3 = SBLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [SBUIBiometricResource _deviceWillWake];
    }

    [(SBUIBiometricResource *)self _reevaluateMatching];
  }
}

- (void)noteScreenWillTurnOn
{
  if (!self->_screenIsOn)
  {
    self->_screenIsOn = 1;
    [(SBUIBiometricResource *)self _matchingAllowedStateMayHaveChangedForReason:@"Screen On"];

    [(SBUIBiometricResource *)self _presenceDetectAllowedStateMayHaveChangedForReason:@"Screen On"];
  }
}

- (void)_reevaluateFingerDetection
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = self->_isPresenceDetectionAllowed && ([(NSMutableOrderedSet *)self->_HIDEventsOnlyFingerDetectAssertions count]|| [(NSMutableOrderedSet *)self->_normalFingerDetectAssertions count]) && self->_hasMesaHardware;
  v4 = v3;
  v5 = self->_isPresenceDetectionAllowed && [(NSMutableOrderedSet *)self->_normalFingerDetectAssertions count]&& self->_hasMesaHardware;
  v6 = v5;
  if (self->_isBackgroundFingerDetectionEnabled != v4)
  {
    self->_isBackgroundFingerDetectionEnabled = v4;
    v7 = SBLogBiometricResource();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (self->_isBackgroundFingerDetectionEnabled)
      {
        v8 = @"ENABLED";
      }

      else
      {
        v8 = @"DISABLED";
      }

      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_INFO, "Background FingerDetection %@", buf, 0xCu);
    }

    if (self->_isBackgroundFingerDetectionEnabled)
    {
      biometricInterface = self->_biometricInterface;
      v38 = 0;
      v10 = [(_SBUIBiometricKitInterface *)biometricInterface enableBackgroundFingerDetection:1 error:&v38];
      v11 = v38;
      self->_isFingerDetectionEnabledThroughHIDChannel = v10;
      v12 = SBLogBiometricResource();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v11;
        }

        *buf = 138412290;
        v42 = v13;
        v14 = "FingerDetection ENABLED through HID channel (error %@)";
LABEL_27:
        _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_INFO, v14, buf, 0xCu);
      }
    }

    else
    {
      self->_isFingerDetectionEnabledThroughHIDChannel = 0;
      v15 = self->_biometricInterface;
      v37 = 0;
      v16 = [(_SBUIBiometricKitInterface *)v15 enableBackgroundFingerDetection:0 error:&v37];
      v11 = v37;
      v12 = SBLogBiometricResource();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        if (v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = v11;
        }

        *buf = 138412290;
        v42 = v17;
        v14 = "FingerDetection DISABLED through HID channel (error %@)";
        goto LABEL_27;
      }
    }
  }

  if (self->_isForegroundFingerDetectionEnabled != v6)
  {
    self->_isForegroundFingerDetectionEnabled = v6;
    v18 = SBLogBiometricResource();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v18, OS_LOG_TYPE_INFO, "FingerDetection ENABLED through biometricKit channel.", buf, 2u);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v20 = self->_normalFingerDetectAssertions;
      v21 = [(NSMutableOrderedSet *)v20 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [(SBUIBiometricResource *)self _activateFingerDetectAssertion:*(*(&v33 + 1) + 8 * i)];
          }

          v22 = [(NSMutableOrderedSet *)v20 countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v22);
      }
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v18, OS_LOG_TYPE_INFO, "FingerDetection DISABLED through biometricKit channel", buf, 2u);
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v20 = self->_normalFingerDetectAssertions;
      v25 = [(NSMutableOrderedSet *)v20 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v30;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v30 != v27)
            {
              objc_enumerationMutation(v20);
            }

            [(SBUIBiometricResource *)self _deactivateAssertion:*(*(&v29 + 1) + 8 * j), v29];
          }

          v26 = [(NSMutableOrderedSet *)v20 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v26);
      }
    }
  }
}

- (void)_reevaluateFaceDetection
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self->_isPresenceDetectionAllowed && [(NSMutableOrderedSet *)self->_faceDetectAssertions count]&& self->_hasPearlHardware;
  v4 = v3;
  if (self->_isFaceDetectionEnabled == v4)
  {
    if (!self->_isFaceDetectionEnabled)
    {
LABEL_7:
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = self->_faceDetectAssertions;
      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [(SBUIBiometricResource *)self _deactivateAssertion:*(*(&v16 + 1) + 8 * i), v16];
          }

          v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v7);
      }

      goto LABEL_28;
    }
  }

  else
  {
    self->_isFaceDetectionEnabled = v4;
    v10 = SBLogBiometricResource();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (self->_isFaceDetectionEnabled)
      {
        v11 = @"ENABLED";
      }

      else
      {
        v11 = @"DISABLED";
      }

      *buf = 138412290;
      v27 = v11;
      _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_INFO, "FaceDetection %@", buf, 0xCu);
    }

    if (!self->_isFaceDetectionEnabled)
    {
      goto LABEL_7;
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_faceDetectAssertions;
  v12 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v5);
        }

        [(SBUIBiometricResource *)self _activateFaceDetectAssertion:*(*(&v20 + 1) + 8 * j)];
      }

      v13 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v13);
  }

LABEL_28:
}

uint64_t __39__SBUIBiometricResource_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIBiometricResource);
  v1 = sharedInstance___sharedInstance_4;
  sharedInstance___sharedInstance_4 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBUIBiometricResource)init
{
  v3 = objc_alloc_init(_SBUIBiometricKitInterface);
  v4 = [(SBUIBiometricResource *)self initWithBiometricKitInterface:v3];

  return v4;
}

- (SBUIBiometricResource)initWithBiometricKitInterface:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = SBUIBiometricResource;
  v6 = [(SBUIBiometricResource *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x1E69D4000] sharedInstance];
    keybag = v6->_keybag;
    v6->_keybag = v7;

    [(SBFMobileKeyBag *)v6->_keybag addObserver:v6];
    v9 = [(SBFMobileKeyBag *)v6->_keybag extendedState];
    v6->_isAuthenticated = [v9 isEffectivelyLocked] ^ 1;

    v6->_bkMatchPearlOperationClass = _SBUIEffectiveBiometricClassFromString(@"BKMatchPearlOperation");
    __SBUIBiometricEMRootDomainConnect = IORegisterForSystemPower(0, &__ioPortRef, _PowerChanged, &__ioPMNotifier);
    if (__SBUIBiometricEMRootDomainConnect)
    {
      IONotificationPortSetDispatchQueue(__ioPortRef, MEMORY[0x1E69E96A0]);
    }

    v10 = [MEMORY[0x1E69ADFB8] sharedConnection];
    profileConnection = v6->_profileConnection;
    v6->_profileConnection = v10;

    objc_storeStrong(&v6->_biometricInterface, a3);
    [(_SBUIBiometricKitInterface *)v6->_biometricInterface setDelegate:v6];
    v6->_hasMesaHardware = [(_SBUIBiometricKitInterface *)v6->_biometricInterface isTouchIDCapable];
    v6->_hasPearlHardware = [(_SBUIBiometricKitInterface *)v6->_biometricInterface isPearlIDCapable];
    if (!v6->_hasMesaHardware)
    {
      [(_SBUIBiometricKitInterface *)v6->_biometricInterface enableBackgroundFingerDetection:0 error:0];
    }

    if (MGGetSInt32Answer() == 2)
    {
      v6->_hasPoseidonMesaTypeHardware = 1;
    }

    v6->_lastEvent = 0;
    v6->_shouldSendFingerOffNotification = 0;
    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v6 selector:sel__profileSettingsChanged_ name:*MEMORY[0x1E69ADD68] object:0];
  }

  return v6;
}

- (void)dealloc
{
  if (__SBUIBiometricEMRootDomainConnect)
  {
    IONotificationPortSetDispatchQueue(__ioPortRef, 0);
    IODeregisterForSystemPower(&__ioPMNotifier);
    IOServiceClose(__SBUIBiometricEMRootDomainConnect);
    IONotificationPortDestroy(__ioPortRef);
    __SBUIBiometricEMRootDomainConnect = 0;
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  [(_SBUIBiometricKitInterface *)self->_biometricInterface setDelegate:0];
  v4.receiver = self;
  v4.super_class = SBUIBiometricResource;
  [(SBUIBiometricResource *)&v4 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (!v4)
  {
    [SBUIBiometricResource addObserver:];
    v4 = 0;
  }

  observers = self->_observers;
  if (!observers)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    [SBUIBiometricResource removeObserver:];
    v4 = 0;
  }

  [(NSHashTable *)self->_observers removeObject:v4];
}

- (id)acquireMatchingAssertionWithMode:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [_SBUIBiometricMatchingAssertion alloc];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__SBUIBiometricResource_acquireMatchingAssertionWithMode_reason___block_invoke;
  v13 = &unk_1E789FB60;
  objc_copyWeak(&v14, &location);
  v8 = [(_SBUIBiometricMatchingAssertion *)v7 initWithMatchMode:a3 reason:v6 invalidationBlock:&v10];
  if (v8)
  {
    [(SBUIBiometricResource *)self _addMatchingAssertion:v8, v10, v11, v12, v13];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __65__SBUIBiometricResource_acquireMatchingAssertionWithMode_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeMatchingAssertion:v6];
}

- (void)resumeMatchingForAssertion:(id)a3 advisory:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v10 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(SBUIBiometricResource *)self _reevaluateMatching];
  [(SBUIBiometricResource *)self _reallyResumeMatchingForAssertion:v9 advisory:v4];
}

- (void)resumeMatchingAdvisory:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  [(SBUIBiometricResource *)self _reevaluateMatching];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_matchAssertions;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SBUIBiometricResource *)self _reallyResumeMatchingForAssertion:*(*(&v10 + 1) + 8 * v9++) advisory:v3, v10];
      }

      while (v7 != v9);
      v7 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)acquireFingerDetectionWantedAssertionForReason:(id)a3 HIDEventsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [_SBUIBiometricOperationAssertion alloc];
  v8 = MEMORY[0x1E69E96A0];
  v9 = MEMORY[0x1E69E96A0];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __86__SBUIBiometricResource_acquireFingerDetectionWantedAssertionForReason_HIDEventsOnly___block_invoke;
  v12[3] = &unk_1E789FB88;
  objc_copyWeak(&v13, &location);
  v14 = v4;
  v10 = [(_SBUIBiometricOperationAssertion *)v7 initWithIdentifier:@"FingerDetectionWanted" forReason:v6 queue:v8 invalidationBlock:v12];

  if (v10)
  {
    [(SBUIBiometricResource *)self _addFingerDetectionWantedAssertion:v10 HIDEventsOnly:v4];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __86__SBUIBiometricResource_acquireFingerDetectionWantedAssertionForReason_HIDEventsOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeFingerDetectionWantedAssertion:v6 HIDEventsOnly:*(a1 + 40)];
}

- (id)acquireFaceDetectionWantedAssertionForReason:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [_SBUIBiometricOperationAssertion alloc];
  v6 = MEMORY[0x1E69E96A0];
  v7 = MEMORY[0x1E69E96A0];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __70__SBUIBiometricResource_acquireFaceDetectionWantedAssertionForReason___block_invoke;
  v13 = &unk_1E789FB60;
  objc_copyWeak(&v14, &location);
  v8 = [(_SBUIBiometricOperationAssertion *)v5 initWithIdentifier:@"FaceDetectionWanted" forReason:v4 queue:v6 invalidationBlock:&v10];

  if (v8)
  {
    [(SBUIBiometricResource *)self _addFaceDetectionWantedAssertion:v8, v10, v11, v12, v13];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __70__SBUIBiometricResource_acquireFaceDetectionWantedAssertionForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeFaceDetectionWantedAssertion:v6];
}

- (id)acquireSimulatedLockoutAssertionWithLockoutState:(unint64_t)a3 forReason:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [_SBUISimulatedLockoutAssertion alloc];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __84__SBUIBiometricResource_acquireSimulatedLockoutAssertionWithLockoutState_forReason___block_invoke;
  v13 = &unk_1E789FB60;
  objc_copyWeak(&v14, &location);
  v8 = [(_SBUISimulatedLockoutAssertion *)v7 initWithLockoutState:a3 reason:v6 invalidationBlock:&v10];
  if (v8)
  {
    [(SBUIBiometricResource *)self _addSimulatedLockoutAssertion:v8, v10, v11, v12, v13];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

void __84__SBUIBiometricResource_acquireSimulatedLockoutAssertionWithLockoutState_forReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeSimulatedLockoutAssertion:v6];
}

- (void)_forceBioLockout
{
  [(_SBUIBiometricKitInterface *)self->_biometricInterface forceBioLockout];

  MEMORY[0x1EEDEDA80](4294967293);
}

- (void)noteScreenWillTurnOff
{
  if (self->_screenIsOn)
  {
    self->_screenIsOn = 0;
    [(SBUIBiometricResource *)self _matchingAllowedStateMayHaveChangedForReason:@"Screen Off"];

    [(SBUIBiometricResource *)self _presenceDetectAllowedStateMayHaveChangedForReason:@"Screen Off"];
  }
}

- (void)noteScreenDidTurnOff
{
  if (self->_screenIsOn)
  {
    self->_screenIsOn = 0;
    self->_requiresSecureIndicator = 0;
    [(SBUIBiometricResource *)self _matchingAllowedStateMayHaveChangedForReason:@"Screen Off"];

    [(SBUIBiometricResource *)self _presenceDetectAllowedStateMayHaveChangedForReason:@"Screen Off"];
  }
}

- (void)_profileSettingsChanged:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SBUIBiometricResource__profileSettingsChanged___block_invoke;
  block[3] = &unk_1E789DA38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __49__SBUIBiometricResource__profileSettingsChanged___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    [*(*(a1 + 32) + 16) isFingerprintUnlockAllowed];
    v3 = NSStringFromBOOL();
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_INFO, "Profile settings did change - authentication allowed via mesa? %@", &v5, 0xCu);
  }

  return [*(a1 + 32) _matchingAllowedStateMayHaveChangedForReason:@"Profile settings changed"];
}

- (void)keybag:(id)a3 extendedStateDidChange:(id)a4
{
  v5 = a4;
  v4 = v5;
  BSDispatchMain();
}

uint64_t __55__SBUIBiometricResource_keybag_extendedStateDidChange___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    [*(*(a1 + 32) + 32) hasPasscodeSet];
    v3 = NSStringFromBOOL();
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A9A79000, v2, OS_LOG_TYPE_INFO, "Keybag state change (passcodeSet? %{public}@)", &v5, 0xCu);
  }

  [*(a1 + 32) _reallySetAuthenticated:objc_msgSend(*(a1 + 40) keybagState:{"isEffectivelyLocked") ^ 1, *(a1 + 40)}];
  return [*(a1 + 32) _matchingAllowedStateMayHaveChangedForReason:@"Keybag state did change"];
}

- (id)succinctDescription
{
  v2 = [(SBUIBiometricResource *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBUIBiometricResource *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBUIBiometricResource *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__SBUIBiometricResource_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E789DD98;
  v5 = v4;
  v10 = v5;
  v11 = self;
  v6 = [v5 modifyBody:v9];
  v7 = v5;

  return v5;
}

id __63__SBUIBiometricResource_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:{"isFingerOn"), @"isFingerOn"}];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 53) withName:@"isPresenceDetectionAllowed"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 54) withName:@"isForegroundFingerDetectionEnabled"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 55) withName:@"isBackgroundFingerDetectionEnabled"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 56) withName:@"isFingerDetectionEnabledThroughHIDChannel"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 51) withName:@"isMatchingAllowed"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 52) withName:@"isMatchingEnabled"];
  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 96) withName:@"MatchingAssertions"];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 104) withName:@"NormalFingerDetectWantedAssertions"];
  v11 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 112) withName:@"HIDEventsOnlyFingerDetectWantedAssertions"];
  v12 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 120) withName:@"FaceDetectWantedAssertions"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 128) withName:@"PasscodeRequiredAssertions"];
}

- (void)biometricKitInterface:(id)a3 enrolledIdentitiesDidChange:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x1E69E9840];
  v6 = SBLogBiometricResource();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = NSStringFromBOOL();
    *buf = 138543362;
    v11 = v7;
    _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "Enrolled identities did change - now enrolled: %{public}@", buf, 0xCu);
  }

  v8 = @"Not Enrolled";
  if (v4)
  {
    v8 = @"Enrolled";
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Enrolled identities may have changed to %@", v8];
  [(SBUIBiometricResource *)self _matchingAllowedStateMayHaveChangedForReason:v9];
}

- (void)biometricKitInterface:(id)a3 handleEvent:(unint64_t)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  switch(a4)
  {
    case 0uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Finger OFF sensor";
      goto LABEL_87;
    case 1uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Finger ON sensor";
      goto LABEL_87;
    case 2uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: request to remove the finger";
      goto LABEL_87;
    case 3uLL:
      kdebug_trace();
      if (self->_isAuthenticated)
      {
        goto LABEL_89;
      }

      v7 = SBLogBiometricResource();
      if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromBOOL();
        matchAssertions = self->_matchAssertions;
        *buf = 138412546;
        v38 = v13;
        v39 = 2112;
        v40 = matchAssertions;
        _os_log_impl(&dword_1A9A79000, &v7->super.super, OS_LOG_TYPE_INFO, "Identity match - authenticated: %@, matchingAssertions: %@", buf, 0x16u);
      }

      goto LABEL_88;
    case 4uLL:
      goto LABEL_90;
    case 5uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt but passcode locked out";
      goto LABEL_87;
    case 6uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt but bio locked out";
      goto LABEL_87;
    case 7uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt but bio unlock is expired";
      goto LABEL_87;
    case 8uLL:
      kdebug_trace();
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt before first unlock";
      goto LABEL_87;
    case 9uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match failed with dirt on sensor";
      goto LABEL_87;
    case 0xAuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt failed";
      goto LABEL_87;
    case 0xBuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match attempt failed and reached bio lockout";
      goto LABEL_87;
    case 0xCuLL:
      v15 = [(SBUIBiometricResource *)self biometricLockoutState];
      v16 = SBLogBiometricResource();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v16, OS_LOG_TYPE_INFO, "Status: match operation started", buf, 2u);
      }

      if (!v15)
      {
        goto LABEL_89;
      }

      goto LABEL_90;
    case 0xDuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face in view";
      goto LABEL_87;
    case 0xEuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face not in view";
      goto LABEL_87;
    case 0xFuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: match ended without result";
      goto LABEL_87;
    case 0x10uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: No Feedback";
      goto LABEL_87;
    case 0x11uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face too far";
      goto LABEL_87;
    case 0x12uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face too close";
      goto LABEL_87;
    case 0x13uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Camera Obstructed";
      goto LABEL_87;
    case 0x14uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: No attention";
      goto LABEL_87;
    case 0x15uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face occluded";
      goto LABEL_87;
    case 0x16uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face out of view";
      goto LABEL_87;
    case 0x17uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Marginal Pose";
      goto LABEL_87;
    case 0x18uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: pearl interlocked";
      goto LABEL_87;
    case 0x19uLL:
      v17 = SBLogBiometricResource();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_INFO, "Status: device too hot", buf, 2u);
      }

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v7 = self->_matchAssertions;
      v18 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v32;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v32 != v20)
            {
              objc_enumerationMutation(v7);
            }

            [(SBUIBiometricResource *)self _deactivateAssertion:*(*(&v31 + 1) + 8 * i)];
          }

          v19 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v19);
      }

      goto LABEL_88;
    case 0x1AuLL:
      v22 = SBLogBiometricResource();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v22, OS_LOG_TYPE_INFO, "Status: device too cold", buf, 2u);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = self->_matchAssertions;
      v23 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v28;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v28 != v25)
            {
              objc_enumerationMutation(v7);
            }

            [(SBUIBiometricResource *)self _deactivateAssertion:*(*(&v27 + 1) + 8 * j), v27];
          }

          v24 = [(NSMutableOrderedSet *)v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
        }

        while (v24);
      }

      goto LABEL_88;
    case 0x1BuLL:
      v12 = SBLogBiometricResource();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_INFO, "Status: operation failed", buf, 2u);
      }

      [(SBUIBiometricResource *)self _deactivateAllPearlAssertions];
      goto LABEL_89;
    case 0x1CuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Bottom of face occluded";
      goto LABEL_87;
    case 0x1DuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Face wu pose eligible";
      goto LABEL_87;
    case 0x1EuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Unsupported glasses";
      goto LABEL_87;
    case 0x1FuLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Pose out of negative pitch range";
      goto LABEL_87;
    case 0x20uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: Periocular timed out";
      goto LABEL_87;
    case 0x21uLL:
      v7 = SBLogBiometricResource();
      if (!os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_88;
      }

      *buf = 0;
      v8 = "Status: unlock token dropped";
LABEL_87:
      _os_log_impl(&dword_1A9A79000, &v7->super.super, OS_LOG_TYPE_INFO, v8, buf, 2u);
LABEL_88:

      goto LABEL_89;
    case 0x22uLL:
      v10 = SBLogBiometricResource();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v11 = "Status: Fallback indicator required";
      goto LABEL_14;
    case 0x23uLL:
      v9 = SBLogBiometricResource();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_INFO, "Status: Fallback indicator not required", buf, 2u);
      }

      self->_requiresSecureIndicator = 0;
      goto LABEL_89;
    case 0x24uLL:
      v10 = SBLogBiometricResource();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v11 = "Status: Indicator required";
LABEL_14:
      _os_log_impl(&dword_1A9A79000, v10, OS_LOG_TYPE_INFO, v11, buf, 2u);
LABEL_15:

      self->_requiresSecureIndicator = 1;
LABEL_89:
      [(SBUIBiometricResource *)self _updateHandlersForEvent:a4, v27];
LABEL_90:

      return;
    default:
      goto LABEL_89;
  }
}

- (unint64_t)wakeSourceForBiometricKitInterface:(id)a3
{
  if (self->_biometricInterface != a3)
  {
    return 0;
  }

  lastBacklightChangeSource = self->_lastBacklightChangeSource;
  if (lastBacklightChangeSource > 0x2F)
  {
    return 6;
  }

  else
  {
    return qword_1A9B2ADC0[lastBacklightChangeSource];
  }
}

- (double)fallbackIndicatorMinimumDurationLeewayForBiometricKitInterface:(id)a3
{
  result = 0.0;
  if (self->_biometricInterface == a3)
  {
    return self->_pearlIndicatorConfiguration.fallbackIndicatorMinimumDurationLeeway;
  }

  return result;
}

- (void)_reallySetAuthenticated:(BOOL)a3 keybagState:(id)a4
{
  v4 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (self->_isAuthenticated != v4)
  {
    self->_isAuthenticated = v4;
    v7 = SBLogBiometricResource();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromBOOL();
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_INFO, "Authentication state changed - authenticated: %@", &v13, 0xCu);
    }

    if (v4)
    {
      v9 = v6;
      v10 = v9;
      if (!v9)
      {
        v10 = [(SBFMobileKeyBag *)self->_keybag extendedState];
      }

      v11 = SBLogBiometricResource();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543618;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEFAULT, "Became authenticated with keybag state: %{public}@, local keybag state: %{public}@", &v13, 0x16u);
      }

      if ([v10 lockState] == 7)
      {
        v12 = SBLogBiometricResource();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&dword_1A9A79000, v12, OS_LOG_TYPE_INFO, "Identity match reported by the keybag - BioUnlocked", &v13, 2u);
        }

        [(SBUIBiometricResource *)self _updateHandlersForEvent:4];
      }
    }
  }
}

- (void)_reallyResumeMatchingForAssertion:(id)a3 advisory:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  v8 = v4 && [v6 restartCount] == 0;
  v9 = SBLogBiometricResource();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109634;
    v36 = v4;
    v37 = 1024;
    v38 = v8;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_1A9A79000, v9, OS_LOG_TYPE_INFO, "evaluating resumption (advisory: %{BOOL}u advisoryRestart: %{BOOL}u) for assertion %@", buf, 0x18u);
  }

  if (!v8 && v4 || !self->_bkMatchPearlOperationClass)
  {
    goto LABEL_35;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v7 operations];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v11)
  {

    v26 = 0;
    goto LABEL_34;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v29;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v29 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v28 + 1) + 8 * i);
      if (objc_opt_isKindOfClass())
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      if ([v18 shouldAutoRetry])
      {
        v27 = 0;
        [v18 enableAutoRetry:0 error:&v27];
        v19 = v27;
        if (v19)
        {
          v20 = SBLogBiometricResource();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [(SBUIBiometricResource *)buf _reallyResumeMatchingForAssertion:v19 advisory:&v36, v20];
          }
        }
      }

      v21 = [v18 startNewMatchAttemptWithError:0];
      v22 = SBLogBiometricResource();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_28;
        }

        *v32 = 138412290;
        v33 = v18;
        v24 = v22;
        v25 = "operation %@ resumed";
      }

      else
      {
        if (!v23)
        {
          goto LABEL_28;
        }

        *v32 = 138412290;
        v33 = v18;
        v24 = v22;
        v25 = "operation %@ not resumed";
      }

      _os_log_impl(&dword_1A9A79000, v24, OS_LOG_TYPE_INFO, v25, v32, 0xCu);
LABEL_28:
      v13 |= v21;
    }

    v12 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  }

  while (v12);

  if (v13)
  {
    v26 = [v7 restartCount] + 1;
  }

  else
  {
    v26 = 0;
  }

LABEL_34:
  [v7 setRestartCount:v26];
LABEL_35:
}

- (void)_activateMatchAssertion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SBUIBiometricResource *)self _clearFinishedOperationsIfNeededForAssertion:v4];
  v5 = [v4 matchMode];
  if (v5 == 3)
  {
    unlockCredentialSet = self->_unlockCredentialSet;
  }

  else
  {
    unlockCredentialSet = 0;
  }

  v7 = unlockCredentialSet;
  v8 = [v4 operations];

  if (!v8)
  {
    if (v5)
    {
      biometricInterface = self->_biometricInterface;
      v28 = 0;
      v10 = [(_SBUIBiometricKitInterface *)biometricInterface createMatchOperationsWithMode:v5 andCredentialSet:v7 error:&v28];
      v11 = v28;
      if (v10)
      {
        v12 = [MEMORY[0x1E695DFD8] setWithArray:v10];
        [v4 setOperations:v12];

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v13 = [v4 operations];
        v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v20 = v7;
          v16 = *v25;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v24 + 1) + 8 * i);
              v21[0] = MEMORY[0x1E69E9820];
              v21[1] = 3221225472;
              v21[2] = __49__SBUIBiometricResource__activateMatchAssertion___block_invoke;
              v21[3] = &unk_1E789FBB0;
              v22 = v4;
              v23 = self;
              [v18 startWithReply:v21];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
          }

          while (v15);
          v7 = v20;
        }
      }

      else
      {
        v13 = SBLogBiometricResource();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [SBUIBiometricResource _activateMatchAssertion:];
        }
      }
    }

    else
    {
      v19 = [MEMORY[0x1E695DFD8] set];
      [v4 setOperations:v19];
    }
  }
}

void __49__SBUIBiometricResource__activateMatchAssertion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__SBUIBiometricResource__activateMatchAssertion___block_invoke_2;
    block[3] = &unk_1E789DD48;
    v9 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __49__SBUIBiometricResource__activateMatchAssertion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __49__SBUIBiometricResource__activateMatchAssertion___block_invoke_2_cold_1();
  }

  return [*(a1 + 48) _deactivateAssertion:*(a1 + 32)];
}

- (void)_clearFinishedOperationsIfNeededForAssertion:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SBLogBiometricResource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "_clearFinishedOperationsIfNeededForAssertion: %{public}@", buf, 0xCu);
  }

  if (self->_isAuthenticated && [v4 matchMode] == 3)
  {
    v6 = SBLogBiometricResource();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "Not clearing operations because we're already authenticated.", buf, 2u);
    }
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v4 operations];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v12 + 1) + 8 * v10) state] == 4)
          {

            v11 = SBLogBiometricResource();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_INFO, "Clearing operations because we found a finished one.", buf, 2u);
            }

            [v4 setOperations:0];
            goto LABEL_19;
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_19:
}

- (void)_activateFingerDetectAssertion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 operations];

  if (!v5)
  {
    biometricInterface = self->_biometricInterface;
    v24 = 0;
    v7 = [(_SBUIBiometricKitInterface *)biometricInterface createFingerDetectOperationsWithError:&v24];
    v8 = v24;
    if (v7)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      [v4 setOperations:v9];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [v4 operations];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v16 = v7;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke;
            v17[3] = &unk_1E789FBB0;
            v18 = v4;
            v19 = self;
            [v15 startWithReply:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
        v7 = v16;
      }
    }

    else
    {
      v10 = SBLogBiometricResource();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBUIBiometricResource _activateFingerDetectAssertion:];
      }
    }
  }
}

void __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke_2;
    block[3] = &unk_1E789DD48;
    v9 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke_2_cold_1();
  }

  return [*(a1 + 48) _deactivateAssertion:*(a1 + 32)];
}

- (void)_activateFaceDetectAssertion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 operations];

  if (!v5)
  {
    biometricInterface = self->_biometricInterface;
    v24 = 0;
    v7 = [(_SBUIBiometricKitInterface *)biometricInterface createFaceDetectOperationsWithError:&v24];
    v8 = v24;
    if (v7)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithArray:v7];
      [v4 setOperations:v9];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = [v4 operations];
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v16 = v7;
        v13 = *v21;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke;
            v17[3] = &unk_1E789FBB0;
            v18 = v4;
            v19 = self;
            [v15 startWithReply:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v12);
        v7 = v16;
      }
    }

    else
    {
      v10 = SBLogBiometricResource();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBUIBiometricResource _activateFaceDetectAssertion:];
      }
    }
  }
}

void __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke_2;
    block[3] = &unk_1E789DD48;
    v9 = *(a1 + 32);
    v6 = v5;
    v7 = *(a1 + 40);
    v10 = v6;
    v11 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke_2(uint64_t a1)
{
  v2 = SBLogBiometricResource();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke_2_cold_1();
  }

  return [*(a1 + 48) _deactivateAssertion:*(a1 + 32)];
}

- (void)_deactivateAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 operations];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [v3 setOperations:0];
}

- (void)_deactivateAllPearlAssertions
{
  v24 = *MEMORY[0x1E69E9840];
  if (self->_bkMatchPearlOperationClass)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v3 = self->_matchAssertions;
    v4 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v18 + 1) + 8 * v7);
          v15 = 0u;
          v16 = 0u;
          v17 = 0u;
          v9 = [v8 operations];
          v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v15;
            while (2)
            {
              v13 = 0;
              do
              {
                if (*v15 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                if (objc_opt_isKindOfClass())
                {

                  [(SBUIBiometricResource *)self _deactivateAssertion:v8];
                  goto LABEL_17;
                }

                ++v13;
              }

              while (v11 != v13);
              v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
          ++v7;
        }

        while (v7 != v5);
        v5 = [(NSMutableOrderedSet *)v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }
  }
}

- (void)_addMatchingAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _addMatchingAssertion:];
  }

  matchAssertions = self->_matchAssertions;
  if (!matchAssertions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_matchAssertions;
    self->_matchAssertions = v6;

    matchAssertions = self->_matchAssertions;
  }

  [(NSMutableOrderedSet *)matchAssertions addObject:v4];
  v8 = SBLogBiometricResource();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self->_matchAssertions;
    v10 = 134218242;
    v11 = v4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_INFO, "Biometric matching assertion added (%p) - all assertions: %@", &v10, 0x16u);
  }

  [(SBUIBiometricResource *)self _reevaluateMatching];
}

- (void)_removeMatchingAssertion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _removeMatchingAssertion:];
  }

  [(SBUIBiometricResource *)self _deactivateAssertion:v4];
  [(NSMutableOrderedSet *)self->_matchAssertions removeObject:v4];
  v5 = SBLogBiometricResource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    matchAssertions = self->_matchAssertions;
    v8 = 134218242;
    v9 = v4;
    v10 = 2112;
    v11 = matchAssertions;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "Biometric matching wanted assertion removed (%p) - remaining reasons: %@", &v8, 0x16u);
  }

  if (![(NSMutableOrderedSet *)self->_matchAssertions count])
  {
    v7 = self->_matchAssertions;
    self->_matchAssertions = 0;
  }

  [(SBUIBiometricResource *)self _reevaluateMatching];
}

- (void)_addFingerDetectionWantedAssertion:(id)a3 HIDEventsOnly:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [SBUIBiometricResource _addFingerDetectionWantedAssertion:HIDEventsOnly:];
  }

  if (v4)
  {
    p_HIDEventsOnlyFingerDetectAssertions = &self->_HIDEventsOnlyFingerDetectAssertions;
    HIDEventsOnlyFingerDetectAssertions = self->_HIDEventsOnlyFingerDetectAssertions;
    if (HIDEventsOnlyFingerDetectAssertions)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  p_HIDEventsOnlyFingerDetectAssertions = &self->_normalFingerDetectAssertions;
  HIDEventsOnlyFingerDetectAssertions = self->_normalFingerDetectAssertions;
  if (!HIDEventsOnlyFingerDetectAssertions)
  {
LABEL_5:
    v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v10 = *p_HIDEventsOnlyFingerDetectAssertions;
    *p_HIDEventsOnlyFingerDetectAssertions = v9;

    HIDEventsOnlyFingerDetectAssertions = *p_HIDEventsOnlyFingerDetectAssertions;
  }

LABEL_6:
  [(NSMutableOrderedSet *)HIDEventsOnlyFingerDetectAssertions addObject:v6];
  v11 = SBLogBiometricResource();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    normalFingerDetectAssertions = self->_normalFingerDetectAssertions;
    v13 = self->_HIDEventsOnlyFingerDetectAssertions;
    v14 = 134218754;
    v15 = v6;
    v16 = 1024;
    v17 = v4;
    v18 = 2112;
    v19 = normalFingerDetectAssertions;
    v20 = 2112;
    v21 = v13;
    _os_log_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_INFO, "Finger detect wanted assertion added (%p) (HIDEventsOnly: %{BOOL}u) - all assertions: %@ %@", &v14, 0x26u);
  }

  [(SBUIBiometricResource *)self _reevaluateFingerDetection];
}

- (void)_removeFingerDetectionWantedAssertion:(id)a3 HIDEventsOnly:(BOOL)a4
{
  v4 = a4;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    [SBUIBiometricResource _removeFingerDetectionWantedAssertion:HIDEventsOnly:];
  }

  [(SBUIBiometricResource *)self _deactivateAssertion:v6];
  v7 = 104;
  if (v4)
  {
    v7 = 112;
  }

  [*(&self->super.isa + v7) removeObject:v6];
  v8 = SBLogBiometricResource();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    normalFingerDetectAssertions = self->_normalFingerDetectAssertions;
    HIDEventsOnlyFingerDetectAssertions = self->_HIDEventsOnlyFingerDetectAssertions;
    v11 = 134218754;
    v12 = v6;
    v13 = 1024;
    v14 = v4;
    v15 = 2112;
    v16 = normalFingerDetectAssertions;
    v17 = 2112;
    v18 = HIDEventsOnlyFingerDetectAssertions;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_INFO, "Finger detect wanted assertion removed (%p) (HIDEventsOnly: %{BOOL}u) - remaining assertions: %@ %@", &v11, 0x26u);
  }

  [(SBUIBiometricResource *)self _reevaluateFingerDetection];
}

- (void)_addFaceDetectionWantedAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _addFaceDetectionWantedAssertion:];
  }

  faceDetectAssertions = self->_faceDetectAssertions;
  if (!faceDetectAssertions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_faceDetectAssertions;
    self->_faceDetectAssertions = v6;

    faceDetectAssertions = self->_faceDetectAssertions;
  }

  [(NSMutableOrderedSet *)faceDetectAssertions addObject:v4];
  v8 = SBLogBiometricResource();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self->_faceDetectAssertions;
    v10 = 134218242;
    v11 = v4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_INFO, "Face detect wanted assertion added (%p) - all assertions: %@", &v10, 0x16u);
  }

  [(SBUIBiometricResource *)self _reevaluateFaceDetection];
}

- (void)_removeFaceDetectionWantedAssertion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _removeFaceDetectionWantedAssertion:];
  }

  [(SBUIBiometricResource *)self _deactivateAssertion:v4];
  [(NSMutableOrderedSet *)self->_faceDetectAssertions removeObject:v4];
  v5 = SBLogBiometricResource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    faceDetectAssertions = self->_faceDetectAssertions;
    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = faceDetectAssertions;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "Face detect wanted assertion removed (%p) - remaining assertions: %@", &v7, 0x16u);
  }

  [(SBUIBiometricResource *)self _reevaluateFaceDetection];
}

- (void)_addSimulatedLockoutAssertion:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _addSimulatedLockoutAssertion:];
  }

  simulatedLockoutAssertions = self->_simulatedLockoutAssertions;
  if (!simulatedLockoutAssertions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v7 = self->_simulatedLockoutAssertions;
    self->_simulatedLockoutAssertions = v6;

    simulatedLockoutAssertions = self->_simulatedLockoutAssertions;
  }

  [(NSMutableOrderedSet *)simulatedLockoutAssertions addObject:v4];
  v8 = SBLogBiometricResource();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = self->_simulatedLockoutAssertions;
    v10 = 134218242;
    v11 = v4;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1A9A79000, v8, OS_LOG_TYPE_INFO, "Passcode required assertion added (%p) - all assertions: %@", &v10, 0x16u);
  }

  [(SBUIBiometricResource *)self _reevaluateMatching];
}

- (void)_removeSimulatedLockoutAssertion:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [SBUIBiometricResource _removeSimulatedLockoutAssertion:];
  }

  [(NSMutableOrderedSet *)self->_simulatedLockoutAssertions removeObject:v4];
  v5 = SBLogBiometricResource();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    simulatedLockoutAssertions = self->_simulatedLockoutAssertions;
    v7 = 134218242;
    v8 = v4;
    v9 = 2112;
    v10 = simulatedLockoutAssertions;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_INFO, "Passcode required assertion removed (%p) - remaining assertions: %@", &v7, 0x16u);
  }

  [(SBUIBiometricResource *)self _reevaluateMatching];
}

- (void)_presenceDetectAllowedStateMayHaveChangedForReason:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  screenIsOn = self->_screenIsOn;
  if (self->_isPresenceDetectionAllowed != screenIsOn)
  {
    self->_isPresenceDetectionAllowed = screenIsOn;
    v6 = SBLogBiometricResource();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromBOOL();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_INFO, "PresenceDetection allowed changed to %{public}@ for reason: %@", &v8, 0x16u);
    }
  }

  [(SBUIBiometricResource *)self _reevaluateFingerDetection];
  [(SBUIBiometricResource *)self _reevaluateFaceDetection];
}

- (void)_matchingAllowedStateMayHaveChangedForReason:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SBUIBiometricResource *)self hasBiometricAuthenticationCapabilityEnabled])
  {
    screenIsOn = self->_screenIsOn;
  }

  else
  {
    screenIsOn = 0;
  }

  v6 = screenIsOn;
  if (self->_isMatchingAllowed != v6)
  {
    self->_isMatchingAllowed = v6;
    v7 = SBLogBiometricResource();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = NSStringFromBOOL();
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_INFO, "Matching allowed changed to %{public}@ for reason: %@", buf, 0x16u);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = [(NSHashTable *)self->_observers copy];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v14 biometricResource:self matchingAllowedDidChange:self->_isMatchingAllowed];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  [(SBUIBiometricResource *)self _reevaluateMatching];
}

- (void)_updateHandlersForEvent:(unint64_t)a3
{
  v21 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  lastEvent = self->_lastEvent;
  self->_lastEvent = a3;
  if (a3 != 4)
  {
    goto LABEL_9;
  }

  v6 = self->_isMatchingEnabled ? [(SBUIBiometricAuthenticationPolicy *)self->_authenticationPolicy shouldRelockAfterBioUnlock]^ 1 : 0;
  if (lastEvent == 4)
  {
    goto LABEL_9;
  }

  v7 = SBLogBiometricResource();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromBOOL();
    [(SBUIBiometricAuthenticationPolicy *)self->_authenticationPolicy shouldRelockAfterBioUnlock];
    v9 = NSStringFromBOOL();
    *buf = 138412546;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_INFO, "_isMatchingEnabled: %@, [_authenticationPolicy shouldRelockAfterBioUnlock]: %@", buf, 0x16u);
  }

  if (v6)
  {
LABEL_9:
    if (self->_isMatchingEnabled)
    {
      if (a3 == 1)
      {
        v10 = 1;
        goto LABEL_20;
      }

      if (!a3)
      {
        v10 = 0;
        goto LABEL_20;
      }

      [(SBUIBiometricResource *)self _notifyObserversOfEvent:a3];
      if (a3 == 4)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __49__SBUIBiometricResource__updateHandlersForEvent___block_invoke;
        block[3] = &unk_1E789DA38;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }
    }

    else
    {
      if (!a3 && self->_shouldSendFingerOffNotification)
      {
        self->_shouldSendFingerOffNotification = 0;
        v11 = self;
        v12 = 0;
LABEL_22:
        [(SBUIBiometricResource *)v11 _notifyObserversOfEvent:v12];
        return;
      }

      if (self->_isForegroundFingerDetectionEnabled)
      {
        if (a3 > 1)
        {
LABEL_21:
          v11 = self;
          v12 = a3;
          goto LABEL_22;
        }

        v10 = a3 == 1;
LABEL_20:
        self->_shouldSendFingerOffNotification = v10;
        goto LABEL_21;
      }

      if (self->_isFaceDetectionEnabled)
      {
        if (a3 == 13)
        {
          v15 = 1;
        }

        else
        {
          if (a3 != 22)
          {
            goto LABEL_21;
          }

          v15 = 0;
        }

        self->_shouldSendFaceOutOfViewNotification = v15;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v13 = SBLogBiometricResource();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBUIBiometricResource _updateHandlersForEvent:];
    }

    v14 = [MEMORY[0x1E69ADFB8] sharedConnection];
    [v14 lockDeviceImmediately:1];
  }
}

void __49__SBUIBiometricResource__updateHandlersForEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"SBBiometricEventMonitorHasAuthenticated" object:*(a1 + 32)];
}

- (void)_notifyObserversOfEvent:(unint64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 biometricResource:self observeEvent:a3];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"observer" object:? file:? lineNumber:? description:?];
}

- (void)_reallyResumeMatchingForAssertion:(void *)a3 advisory:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 localizedDescription];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1A9A79000, a4, OS_LOG_TYPE_ERROR, "Could not disable auto-retry: %@", a1, 0xCu);
}

void __49__SBUIBiometricResource__activateMatchAssertion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __56__SBUIBiometricResource__activateFingerDetectAssertion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __54__SBUIBiometricResource__activateFaceDetectAssertion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_addMatchingAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_removeMatchingAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_addFingerDetectionWantedAssertion:HIDEventsOnly:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_removeFingerDetectionWantedAssertion:HIDEventsOnly:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_addFaceDetectionWantedAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_removeFaceDetectionWantedAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_addSimulatedLockoutAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

- (void)_removeSimulatedLockoutAssertion:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

@end