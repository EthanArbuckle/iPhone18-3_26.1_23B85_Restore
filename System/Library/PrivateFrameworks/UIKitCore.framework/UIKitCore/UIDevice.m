@interface UIDevice
+ (BOOL)_hasHomeButton;
+ (BOOL)_isLowEnd;
+ (BOOL)_isWatch;
+ (BOOL)_isWatchCompanion;
+ (UIDevice)currentDevice;
+ (id)modelSpecificLocalizedStringKeyForKey:(id)a3;
+ (int64_t)currentDeviceOrientationAllowingAmbiguous:(BOOL)a3;
+ (void)invalidateSystemSoundEnablement;
+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (BOOL)_hasTouchPad;
- (BOOL)_supportsDeepColor;
- (BOOL)_supportsForceTouch;
- (BOOL)_supportsPencil;
- (NSString)buildVersion;
- (NSString)model;
- (NSString)name;
- (NSString)systemName;
- (NSString)systemVersion;
- (NSUUID)identifierForVendor;
- (UIDevice)init;
- (UIDeviceOrientation)orientation;
- (UIUserInterfaceIdiom)userInterfaceIdiom;
- (float)batteryLevel;
- (id)_deviceInfoForKey:(__CFString *)a3;
- (id)_tapticEngine;
- (int64_t)_feedbackSupportLevel;
- (int64_t)_nativeScreenGamut;
- (uint64_t)_peripheralFeedbackSupportLevel;
- (void)_enableDeviceOrientationEvents:(BOOL)a3;
- (void)_hardwareKeyboardAvailabilityChanged;
- (void)_loadRemoteDeviceInfoIfNeeded;
- (void)_performShimmedRequestIfPossibleForDeviceOrientation:(int64_t)a3;
- (void)_playSystemSound:(unsigned int)a3;
- (void)_registerForSystemSounds:(id)a3;
- (void)_setActiveUserInterfaceIdiom:(int64_t)a3;
- (void)_setBacklightLevel:(float)a3;
- (void)_setBatteryLevel:(float)a3;
- (void)_setBatteryState:(int64_t)a3;
- (void)_setExpectsFaceContactInLandscape:(BOOL)a3;
- (void)_setHasTouchPad:(BOOL)a3;
- (void)_setProximityState:(BOOL)a3;
- (void)_unregisterForSystemSounds:(id)a3;
- (void)_updateSystemSoundActiveStatus:(id)a3;
- (void)beginGeneratingDeviceOrientationNotifications;
- (void)dealloc;
- (void)endGeneratingDeviceOrientationNotifications;
- (void)playInputClick;
- (void)setBatteryMonitoringEnabled:(BOOL)batteryMonitoringEnabled;
- (void)setOrientation:(int64_t)a3;
- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4;
- (void)setProximityMonitoringEnabled:(BOOL)proximityMonitoringEnabled;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation UIDevice

+ (UIDevice)currentDevice
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__UIDevice_currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED49E790 != -1)
  {
    dispatch_once(&qword_1ED49E790, block);
  }

  v2 = qword_1ED49E798;

  return v2;
}

- (UIUserInterfaceIdiom)userInterfaceIdiom
{
  if (initializeActiveUserInterfaceIdiom_once != -1)
  {
    dispatch_once(&initializeActiveUserInterfaceIdiom_once, &__block_literal_global_518);
  }

  return sActiveUserInterfaceIdiom;
}

+ (BOOL)_isWatch
{
  if (qword_1ED49E770 != -1)
  {
    dispatch_once(&qword_1ED49E770, &__block_literal_global_318);
  }

  return byte_1ED49E752;
}

+ (BOOL)_isWatchCompanion
{
  if (qword_1ED49E778 != -1)
  {
    dispatch_once(&qword_1ED49E778, &__block_literal_global_43_1);
  }

  return byte_1ED49E753;
}

+ (BOOL)_hasHomeButton
{
  if (qword_1ED49E850 != -1)
  {
    dispatch_once(&qword_1ED49E850, &__block_literal_global_356_0);
  }

  return byte_1ED49E757;
}

void __20__UIDevice__isWatch__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1 == 6)
  {
    byte_1ED49E752 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v4 infoDictionary];
    v3 = [v2 objectForKey:@"WKWatchKitApp"];
    byte_1ED49E752 = [v3 BOOLValue];
  }
}

- (UIDevice)init
{
  v6.receiver = self;
  v6.super_class = UIDevice;
  v2 = [(UIDevice *)&v6 init];
  if (v2)
  {
    *&v2->_deviceFlags = *&v2->_deviceFlags & 0xF7FF | ((GSEventIsHardwareKeyboardAttached() & 1) << 11);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69A28E0]];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, HardwareKeyboardAvailabilityChanged, v4, 0, 0);
  }

  return v2;
}

void __25__UIDevice_currentDevice__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED49E798;
  qword_1ED49E798 = v1;
}

void __29__UIDevice__isWatchCompanion__block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 infoDictionary];
  v6 = [v1 objectForKey:@"NSExtension"];

  v2 = v6;
  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v2 = v6;
    if (isKindOfClass)
    {
      v4 = [v6 objectForKey:@"NSExtensionPointIdentifier"];
      v5 = [v4 isEqualToString:@"com.apple.watchkit"];

      v2 = v6;
      if (v5)
      {
        byte_1ED49E753 = 1;
      }
    }
  }
}

void __44__UIDevice_UIDeviceInternal___hasHomeButton__block_invoke()
{
  v3 = +[_UIDeviceInitialDeviceConfigurationLoader sharedLoader];
  v0 = [v3 initialDeviceContext];
  v1 = v0;
  if (!v0 || (v2 = [v0 deviceInfoIntegerValueForKey:*MEMORY[0x1E69DECC8]], v2 == -1))
  {
    v2 = MGGetSInt32Answer();
  }

  byte_1ED49E757 = v2 != 2;
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ForceHasNoHomeButton, @"ForceHasNoHomeButton") & 1) == 0 && byte_1ED48B1CC)
  {
    byte_1ED49E757 = 0;
  }
}

uint64_t __48__UIDevice_UIDevicePrivate___supportsForceTouch__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED49E754 = result;
  return result;
}

- (BOOL)_supportsForceTouch
{
  if (qword_1ED49E838 != -1)
  {
    dispatch_once(&qword_1ED49E838, &__block_literal_global_320_0);
  }

  return byte_1ED49E754;
}

- (void)beginGeneratingDeviceOrientationNotifications
{
  numDeviceOrientationObservers = self->_numDeviceOrientationObservers;
  self->_numDeviceOrientationObservers = numDeviceOrientationObservers + 1;
  if (!numDeviceOrientationObservers)
  {
    [(UIDevice *)self _enableDeviceOrientationEvents:1, v2];

    [UIDevice currentDeviceOrientationAllowingAmbiguous:0];
  }
}

- (UIDeviceOrientation)orientation
{
  if (self->_numDeviceOrientationObservers < 1)
  {
    return 0;
  }

  else
  {
    return (*&self->_deviceFlags >> 3) & 7;
  }
}

- (NSString)model
{
  v2 = [(UIDevice *)self _deviceInfoForKey:@"DeviceName"];
  if ([(__CFString *)v2 isEqualToString:@"iPod"])
  {

    v2 = @"iPod touch";
  }

  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = @"Unknown";
  }

  v4 = v3;

  return &v3->isa;
}

- (void)endGeneratingDeviceOrientationNotifications
{
  numDeviceOrientationObservers = self->_numDeviceOrientationObservers;
  v3 = numDeviceOrientationObservers == 1;
  v4 = numDeviceOrientationObservers < 1;
  v5 = numDeviceOrientationObservers - 1;
  if (!v4)
  {
    self->_numDeviceOrientationObservers = v5;
    if (v3)
    {
      [(UIDevice *)self _enableDeviceOrientationEvents:0];
      *&self->_deviceFlags &= 0xFFC7u;
    }
  }
}

- (NSString)systemVersion
{
  v2 = [(UIDevice *)self _deviceInfoForKey:@"ProductVersion"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return &v4->isa;
}

uint64_t __47__UIDevice_UIDevicePrivate___supportsDeepColor__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED49E755 = result;
  return result;
}

- (BOOL)_supportsDeepColor
{
  if (qword_1ED49E840 != -1)
  {
    dispatch_once(&qword_1ED49E840, &__block_literal_global_325_0);
  }

  return byte_1ED49E755;
}

- (NSString)systemName
{
  if (!dyld_program_sdk_at_least() || ([(UIDevice *)self _deviceInfoForKey:@"j9Th5smJpdztHwc+i39zIg"], v3 = objc_claimAutoreleasedReturnValue(), (v4 = v3) == 0))
  {
    v5 = [(UIDevice *)self _deviceInfoForKey:@"ProductName"];
    v4 = v5;
    if (v5)
    {
      v3 = v5;
    }

    else
    {
      v3 = @"Unknown";
    }
  }

  v6 = v3;

  return &v3->isa;
}

- (NSString)buildVersion
{
  v2 = [(UIDevice *)self _deviceInfoForKey:@"BuildVersion"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"Unknown";
  }

  v5 = v4;

  return &v4->isa;
}

- (int64_t)_feedbackSupportLevel
{
  if (qword_1ED499EA8 != -1)
  {
    dispatch_once(&qword_1ED499EA8, &__block_literal_global_234_0);
  }

  return qword_1ED499EB0;
}

uint64_t __59__UIDevice__UIFeedbackEngineSupport___feedbackSupportLevel__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = qword_1ED499EE8;
  v8 = qword_1ED499EE8;
  if (!qword_1ED499EE8)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getCHHapticEngineClass_block_invoke_0;
    v4[3] = &unk_1E70F2F20;
    v4[4] = &v5;
    __getCHHapticEngineClass_block_invoke_0(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  if (![v0 supports1stPartyHaptics] || (result = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_DisableLevel2Feedback, @"DisableLevel2Feedback"), v3 = 2, (result & 1) == 0) && byte_1ED48AD94)
  {
    result = MGGetBoolAnswer();
    v3 = result;
  }

  qword_1ED499EB0 = v3;
  return result;
}

- (BOOL)_supportsPencil
{
  v2 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_loadRemoteDeviceInfoIfNeeded
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  if (_loadRemoteDeviceInfoIfNeeded_onceToken != -1)
  {
    dispatch_once(&_loadRemoteDeviceInfoIfNeeded_onceToken, block);
  }
}

void __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke_2;
    handler[3] = &unk_1E70FFAF8;
    handler[4] = *(a1 + 32);
    v2 = notify_register_dispatch("com.apple.TVPeripheralAgent.RemoteFlagsDidChange", &_loadRemoteDeviceInfoIfNeeded_remoteTypeToken, MEMORY[0x1E69E96A0], handler);
    if (v2)
    {
      v3 = v2;
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Device", &qword_1ED49E800);
      if (*CategoryCachedImpl)
      {
        v5 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v40) = v3;
          v6 = "Error creating notification handler for remote type. status=%d";
LABEL_10:
          v10 = v5;
          v11 = OS_LOG_TYPE_ERROR;
          v12 = 8;
LABEL_55:
          _os_log_impl(&dword_188A29000, v10, v11, v6, buf, v12);
          return;
        }
      }

      return;
    }

    state64 = 0;
    if (notify_get_state(_loadRemoteDeviceInfoIfNeeded_remoteTypeToken, &state64))
    {
      return;
    }

    v13 = state64;
    v14 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7D8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v40) = v13;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Initial remote flags value: %i", buf, 8u);
    }

    v15 = v13 & 1;
    if ((v13 & 2) != 0)
    {
      v15 = 2;
    }

    *(*(a1 + 32) + 24) = v15;
    v16 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7E0) + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(*(a1 + 32) + 24);
      v18 = @"Unknown";
      if (v17 == 1)
      {
        v18 = @"Default";
      }

      if (v17 == 2)
      {
        v19 = @"Rotary";
      }

      else
      {
        v19 = v18;
      }

      v20 = v19;
      *buf = 138543362;
      v40 = v20;
      v21 = v16;
      _os_log_impl(&dword_188A29000, v21, OS_LOG_TYPE_DEFAULT, "Remote touch surface type has been initialized to: %{public}@", buf, 0xCu);
    }

    *(*(a1 + 32) + 32) = (v13 & 8) != 0;
    v22 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7E8) + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 32))
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      *buf = 138412290;
      v40 = v23;
      _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_DEFAULT, "Remote microphone capability has been initialized to: %@", buf, 0xCu);
    }

    *(*(a1 + 32) + 33) = (v13 & 4) != 0;
    v24 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7F0) + 8);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (*(*(a1 + 32) + 33))
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      *buf = 138412290;
      v40 = v25;
      _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "Remote mute capability has been initialized to: %@", buf, 0xCu);
    }

    *(*(a1 + 32) + 34) = (v13 & 0x10) != 0;
    v26 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7F8) + 8);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(*(a1 + 32) + 34))
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    *buf = 138412290;
    v40 = v27;
    v6 = "Remote PushToTalk capability has been initialized to: %@";
LABEL_54:
    v10 = v26;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_55;
  }

  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke_313;
  v36[3] = &unk_1E70FFAF8;
  v36[4] = *(a1 + 32);
  v7 = notify_register_dispatch("com.apple.TVPeripheralAgent.RemoteTypeDidChange", &_loadRemoteDeviceInfoIfNeeded_remoteTypeToken, MEMORY[0x1E69E96A0], v36);
  if (!v7)
  {
    state64 = 0;
    if (notify_get_state(_loadRemoteDeviceInfoIfNeeded_remoteTypeToken, &state64))
    {
      return;
    }

    if (state64 - 1 > 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = qword_18A67CE18[state64 - 1];
    }

    *(*(a1 + 32) + 24) = v28;
    v29 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E820) + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(*(a1 + 32) + 24);
      v31 = @"Unknown";
      if (v30 == 1)
      {
        v31 = @"Default";
      }

      if (v30 == 2)
      {
        v32 = @"Rotary";
      }

      else
      {
        v32 = v31;
      }

      v33 = v32;
      *buf = 138543362;
      v40 = v33;
      v34 = v29;
      _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "Remote touch surface type has been initialized to: %{public}@", buf, 0xCu);
    }

    *(*(a1 + 32) + 32) = state64 - 1 < 5;
    v26 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E828) + 8);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    if (*(*(a1 + 32) + 32))
    {
      v35 = @"YES";
    }

    else
    {
      v35 = @"NO";
    }

    *buf = 138412290;
    v40 = v35;
    v6 = "Remote microphone capability has been initialized to: %@";
    goto LABEL_54;
  }

  v8 = v7;
  v9 = __UILogGetCategoryCachedImpl("Device", &qword_1ED49E830);
  if (*v9)
  {
    v5 = *(v9 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v40) = v8;
      v6 = "Error creating notification handler for remote type. status=%d";
      goto LABEL_10;
    }
  }
}

+ (void)invalidateSystemSoundEnablement
{
  __systemSoundEnabled = -1;
  if (qword_1ED49E7A0 && CFArrayGetCount(qword_1ED49E7A0) >= 1)
  {

    UpdateSystemSoundActiveStatus();
  }
}

- (id)_tapticEngine
{
  v3 = objc_getAssociatedObject(self, &_UIDeviceTapticEngineAssocitatedObjectKey);
  if (!v3)
  {
    if ([(UIDevice *)self _supportsForceTouch])
    {
      v3 = objc_alloc_init(_UITapticEngine);
      objc_setAssociatedObject(self, &_UIDeviceTapticEngineAssocitatedObjectKey, v3, 1);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (uint64_t)_peripheralFeedbackSupportLevel
{
  if (result)
  {
    if (qword_1ED499EB8 != -1)
    {
      dispatch_once(&qword_1ED499EB8, &__block_literal_global_243);
    }

    return _MergedGlobals_17_2;
  }

  return result;
}

uint64_t __79__UIDevice__UIFeedbackEnginePeripheralSupport___peripheralFeedbackSupportLevel__block_invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_17_2 = result;
  return result;
}

- (void)_enableDeviceOrientationEvents:(BOOL)a3
{
  if (([UIApp _isSpringBoard] & 1) == 0)
  {
    v4 = [UIApp _mainScene];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __52__UIDevice_Private___enableDeviceOrientationEvents___block_invoke;
    v5[3] = &__block_descriptor_33_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
    v6 = a3;
    [v4 updateUIClientSettingsWithBlock:v5];
  }
}

+ (int64_t)currentDeviceOrientationAllowingAmbiguous:(BOOL)a3
{
  v3 = a3;
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom] != 6;

  v6 = [UIApp _mainScene];
  v7 = [v6 settings];

  if (v7)
  {
    if ([v7 isUISubclass])
    {
      v8 = [v7 deviceOrientation];
      if (v8 || v3)
      {
        goto LABEL_12;
      }
    }
  }

  if (v3)
  {
    v9 = &_MergedGlobals_1151;
    v10 = &dword_1ED49E75C;
    if ((_MergedGlobals_1151 & 1) == 0)
    {
      v10 = &dword_1ED49E75C;
      v11 = "com.apple.backboardd.orientation";
      goto LABEL_10;
    }

LABEL_11:
    v13 = *v10;
    state64 = 0;
    notify_get_state(v13, &state64);
    v8 = state64;
    goto LABEL_12;
  }

  v9 = &byte_1ED49E751;
  v10 = &dword_1ED49E760;
  if (byte_1ED49E751)
  {
    goto LABEL_11;
  }

  v10 = &dword_1ED49E760;
  v11 = "com.apple.backboardd.unambiguousOrientation";
LABEL_10:
  v12 = notify_register_check(v11, v10);
  *v9 = v12 == 0;
  v8 = v5;
  if (!v12)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*MEMORY[0x1E69A28E0]];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v4, 0);

  v5.receiver = self;
  v5.super_class = UIDevice;
  [(UIDevice *)&v5 dealloc];
}

- (id)_deviceInfoForKey:(__CFString *)a3
{
  v3 = MGCopyAnswer();

  return v3;
}

- (NSString)name
{
  if (!UISelfHasEntitlement(@"com.apple.developer.device-information.user-assigned-device-name") || ([(UIDevice *)self _deviceInfoForKey:@"UserAssignedDeviceName"], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [(UIDevice *)self model];
  }

  return v3;
}

- (NSUUID)identifierForVendor
{
  v2 = [MEMORY[0x1E6963608] defaultWorkspace];
  v3 = [v2 deviceIdentifierForVendor];

  return v3;
}

- (void)setOrientation:(int64_t)a3 animated:(BOOL)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_numDeviceOrientationObservers >= 1)
  {
    v4 = a3;
    if (((*&self->_deviceFlags >> 3) & 7) != a3)
    {
      v6 = a4;
      if (qword_1ED49E878 != -1)
      {
        dispatch_once(&qword_1ED49E878, &__block_literal_global_452);
      }

      v7 = qword_1ED49E870;
      if (os_log_type_enabled(qword_1ED49E870, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240192;
        v13 = v4;
        _os_log_debug_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEBUG, "Setting device orientation to %{public}d and sending notification.", buf, 8u);
      }

      *&self->_deviceFlags = *&self->_deviceFlags & 0xFFC7 | (8 * (v4 & 7));
      v8 = objc_alloc(MEMORY[0x1E695DF20]);
      v9 = [MEMORY[0x1E696AD98] numberWithBool:v6];
      v10 = [v8 initWithObjectsAndKeys:{v9, @"UIDeviceOrientationRotateAnimatedUserInfoKey", 0}];

      v11 = [MEMORY[0x1E696AD88] defaultCenter];
      [v11 postNotificationName:@"UIDeviceOrientationDidChangeNotification" object:self userInfo:v10];
    }
  }
}

- (void)setOrientation:(int64_t)a3
{
  v5 = *(__UILogGetCategoryCachedImpl("Orientation", &setOrientation____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Setting UIDevice.orientation is not supported. Please use UIWindowScene.requestGeometryUpdate(_:)", v6, 2u);
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    a3 &= 0xFu;
    [(UIDevice *)self _performShimmedRequestIfPossibleForDeviceOrientation:a3];
  }

  [(UIDevice *)self setOrientation:a3 animated:1];
}

- (void)setBatteryMonitoringEnabled:(BOOL)batteryMonitoringEnabled
{
  v3 = batteryMonitoringEnabled;
  deviceFlags = self->_deviceFlags;
  if ((deviceFlags & 1) == batteryMonitoringEnabled)
  {
    v16 = _batteryLog();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v18 = "Battery monitoring already enabled, doing nothing";
    }

    else
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      *buf = 0;
      v18 = "Battery monitoring already disabled, doing nothing";
    }

    _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_INFO, v18, buf, 2u);
    goto LABEL_31;
  }

  *&self->_deviceFlags = deviceFlags & 0xFFFE | batteryMonitoringEnabled;
  v6 = _batteryLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "Battery monitoring enabled", buf, 2u);
    }

    if ([UIApp _isSpringBoard])
    {
      *buf = 0;
      v8 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
      qword_1ED49E890 = v8;
      if (v8)
      {
        RunLoopSource = IONotificationPortGetRunLoopSource(v8);
        if (RunLoopSource)
        {
          v10 = RunLoopSource;
          Current = CFRunLoopGetCurrent();
          CFRunLoopAddSource(Current, v10, *MEMORY[0x1E695E8D0]);
          v12 = qword_1ED49E890;
          v13 = IOServiceMatching("IOPMPowerSource");
          LODWORD(v12) = IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", v13, _MatchedBatteries, &qword_1ED49E890, buf);
          v14 = _batteryLog();
          v15 = v14;
          if (v12)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *v28 = 0;
              _os_log_error_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Failed to register for battery status changes: couldn't add matching notification", v28, 2u);
            }
          }

          else
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *v28 = 0;
              _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_INFO, "Registered for battery status changes: added matching notification", v28, 2u);
            }

            _MatchedBatteries(&qword_1ED49E890, *buf);
          }

          IOObjectRelease(*buf);
          return;
        }

        IONotificationPortDestroy(qword_1ED49E890);
        qword_1ED49E890 = 0;
        v16 = _batteryLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v28 = 0;
          v25 = "Failed to register for battery status changes: couldn't get run loop source";
          goto LABEL_42;
        }
      }

      else
      {
        v16 = _batteryLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v28 = 0;
          v25 = "Failed to register for battery status changes: couldn't create notification port";
LABEL_42:
          v26 = v28;
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (dword_1ED49E76C)
      {
        return;
      }

      if (!notify_register_dispatch("com.apple.system.powersources.timeremaining", &dword_1ED49E76C, MEMORY[0x1E69E96A0], &__block_literal_global_499))
      {
        _3rdParty_batteryInformationChanged();
        return;
      }

      v16 = _batteryLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = "Could not register for battery change notification";
        v26 = buf;
LABEL_43:
        _os_log_error_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, v25, v26, 2u);
      }
    }

LABEL_31:

    return;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_INFO, "Battery monitoring disabled", buf, 2u);
  }

  if ([UIApp _isSpringBoard])
  {
    v19 = _batteryLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_INFO, "Unregistering for battery status changes", buf, 2u);
    }

    if (dword_1ED49E768)
    {
      v20 = _batteryLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEBUG, "Unregistering for battery status changes: releasing matching notification", buf, 2u);
      }

      IOObjectRelease(dword_1ED49E768);
      dword_1ED49E768 = 0;
    }

    if (qword_1ED49E890)
    {
      v21 = IONotificationPortGetRunLoopSource(qword_1ED49E890);
      if (v21)
      {
        v22 = v21;
        v23 = CFRunLoopGetCurrent();
        CFRunLoopRemoveSource(v23, v22, *MEMORY[0x1E695E8D0]);
        v24 = _batteryLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEBUG, "Unregistering for battery status changes: removed run loop source", buf, 2u);
        }
      }

      else
      {
        v24 = _batteryLog();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "Unregistering for battery status changes: no run loop source", buf, 2u);
        }
      }

      v27 = _batteryLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v27, OS_LOG_TYPE_DEBUG, "Unregistering for battery status changes: destroying notification port", buf, 2u);
      }

      IONotificationPortDestroy(qword_1ED49E890);
      qword_1ED49E890 = 0;
    }
  }

  else if (dword_1ED49E76C)
  {
    notify_cancel(dword_1ED49E76C);
    dword_1ED49E76C = 0;
  }

  *&self->_deviceFlags &= 0xFF3Fu;
}

- (float)batteryLevel
{
  if ((*&self->_deviceFlags & 0xC0) != 0)
  {
    return self->_batteryLevel;
  }

  else
  {
    return -1.0;
  }
}

- (void)setProximityMonitoringEnabled:(BOOL)proximityMonitoringEnabled
{
  v3 = proximityMonitoringEnabled;
  if (MGGetBoolAnswer())
  {
    deviceFlags = self->_deviceFlags;
    if (((deviceFlags & 2) == 0) == v3)
    {
      if (v3)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *&self->_deviceFlags = deviceFlags & 0xFFFD | v6;
      [UIApp setProximityEventsEnabled:v3];
      v7 = UIApp;
      v8 = (*&self->_deviceFlags >> 2) & 1;

      [v7 setExpectsFaceContact:v3 inLandscape:v8];
    }
  }
}

- (void)_setExpectsFaceContactInLandscape:(BOOL)a3
{
  v3 = a3;
  if (MGGetBoolAnswer())
  {
    deviceFlags = self->_deviceFlags;
    if (((deviceFlags & 4) == 0) == v3)
    {
      v6 = v3 ? 4 : 0;
      *&self->_deviceFlags = deviceFlags & 0xFFFB | v6;
      if ((deviceFlags & 2) != 0)
      {
        v7 = UIApp;

        [v7 setExpectsFaceContact:1 inLandscape:v3];
      }
    }
  }
}

- (void)_setActiveUserInterfaceIdiom:(int64_t)a3
{
  if (initializeActiveUserInterfaceIdiom_once != -1)
  {
    dispatch_once(&initializeActiveUserInterfaceIdiom_once, &__block_literal_global_518);
  }

  sActiveUserInterfaceIdiom = a3;
}

- (void)playInputClick
{
  if (pthread_main_np() == 1)
  {
    v7 = +[UIPeripheralHost sharedInstance];
    if ([v7 keyClicksEnabled])
    {
      v3 = +[UIKeyboardImpl activeInstance];
      v4 = v3;
      if (!v3 || ([v3 playInputClick] & 1) == 0)
      {
        [(UIDevice *)self _playSystemSound:1104];
      }
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];

    [v5 raise:v6 format:@"Call must be made on main thread"];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__UIDevice_playInputClick__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)_setBacklightLevel:(float)a3
{
  v4 = [objc_opt_self() mainScreen];
  v5 = [_UISceneLifecycleMultiplexer mostActiveWindowSceneOnScreen:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__UIDevice__setBacklightLevel___block_invoke;
  v6[3] = &__block_descriptor_36_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
  v7 = a3;
  [v5 _updateUIClientSettingsWithBlock:v6];
}

+ (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (_KVOContext == a6)
  {
    if (pthread_main_np() == 1)
    {

      [a1 invalidateSystemSoundEnablement];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__UIDevice_observeValueForKeyPath_ofObject_change_context___block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___UIDevice;
    objc_msgSendSuper2(&v7, sel_observeValueForKeyPath_ofObject_change_context_, a3, a4, a5);
  }
}

- (void)_updateSystemSoundActiveStatus:(id)a3
{
  v4 = a3;
  if (pthread_main_np())
  {
    UpdateSystemSoundActiveStatus();
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__UIDevice__updateSystemSoundActiveStatus___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = self;
    v6 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)_registerForSystemSounds:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = qword_1ED49E7A0;
    value = v4;
    if (qword_1ED49E7A0 || (qword_1ED49E7A0 = CFArrayCreateMutable(0, 0, 0), [MEMORY[0x1E696AD88] defaultCenter], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "addObserver:selector:name:object:", self, sel__updateSystemSoundActiveStatus_, @"UIApplicationSuspendedNotification", 0), objc_msgSend(v7, "addObserver:selector:name:object:", self, sel__updateSystemSoundActiveStatus_, @"UIApplicationSuspendedEventsOnlyNotification", 0), v7, v5 = value, (v6 = qword_1ED49E7A0) != 0))
    {
      v11.length = CFArrayGetCount(v6);
      v11.location = 0;
      v8 = CFArrayContainsValue(v6, v11, value);
      v5 = value;
      if (!v8)
      {
        CFArrayAppendValue(qword_1ED49E7A0, value);
        UpdateSystemSoundActiveStatus();
        v5 = value;
      }
    }
  }
}

- (void)_unregisterForSystemSounds:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = qword_1ED49E7A0;
    if (qword_1ED49E7A0)
    {
      value = v3;
      v8.length = CFArrayGetCount(qword_1ED49E7A0);
      v8.location = 0;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, value);
      v3 = value;
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(qword_1ED49E7A0, FirstIndexOfValue);
        UpdateSystemSoundActiveStatus();
        v3 = value;
      }
    }
  }
}

- (void)_playSystemSound:(unsigned int)a3
{
  v3 = *&a3;
  if (IsSystemSoundEnabled())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v4 = getAudioServicesPlaySystemSoundSymbolLoc_ptr;
    v11 = getAudioServicesPlaySystemSoundSymbolLoc_ptr;
    if (!getAudioServicesPlaySystemSoundSymbolLoc_ptr)
    {
      v5 = AudioToolboxLibrary_1();
      v9[3] = dlsym(v5, "AudioServicesPlaySystemSound");
      getAudioServicesPlaySystemSoundSymbolLoc_ptr = v9[3];
      v4 = v9[3];
    }

    _Block_object_dispose(&v8, 8);
    if (v4)
    {
      v4(v3);
    }

    else
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __AudioServicesPlaySystemSound(SystemSoundID)"];
      [v6 handleFailureInFunction:v7 file:@"UIDevice.m" lineNumber:95 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

- (void)_hardwareKeyboardAvailabilityChanged
{
  IsHardwareKeyboardAttached = GSEventIsHardwareKeyboardAttached();
  deviceFlags = self->_deviceFlags;
  if ((IsHardwareKeyboardAttached != 0) == ((deviceFlags & 0x800) == 0))
  {
    *&self->_deviceFlags = deviceFlags & 0xF7FF | ((IsHardwareKeyboardAttached != 0) << 11);
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];
  }
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (pthread_main_np() == 1)
  {
    if ([v7 isEqualToString:@"orientation"])
    {
      v8 = *(__UILogGetCategoryCachedImpl("Orientation", &setValue_forKey____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "BUG IN CLIENT OF UIKIT: Setting UIDevice.orientation is not supported. Please use UIWindowScene.requestGeometryUpdate(_:)", buf, 2u);
      }

      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        v9 = objc_opt_class();
        v10 = v6;
        if (v9)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v13 = [v12 unsignedIntValue];
        [(UIDevice *)self _performShimmedRequestIfPossibleForDeviceOrientation:v13];
      }
    }

    else
    {
      v14.receiver = self;
      v14.super_class = UIDevice;
      [(UIDevice *)&v14 setValue:v6 forKey:v7];
    }
  }
}

- (void)_performShimmedRequestIfPossibleForDeviceOrientation:(int64_t)a3
{
  IsValid = BSInterfaceOrientationIsValid();
  if (a3 && IsValid)
  {
    v5 = [_UISceneLifecycleMultiplexer mostActiveSceneWithTest:&__block_literal_global_169_0];
    if (v5)
    {
      v7 = v5;
      v6 = objc_alloc_init(UIWindowSceneGeometryPreferencesIOS);
      [(UIWindowSceneGeometryPreferencesIOS *)v6 setInterfaceOrientations:1 << a3];
      [v7 requestGeometryUpdateWithPreferences:v6 errorHandler:0];

      v5 = v7;
    }
  }
}

uint64_t __65__UIDevice__performShimmedRequestIfPossibleForDeviceOrientation___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 activationState])
  {
    isKindOfClass = 0;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)modelSpecificLocalizedStringKeyForKey:(id)a3
{
  v3 = a3;
  v4 = MGCopyAnswer();
  v5 = [v4 uppercaseString];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  if ([v6 hasSuffix:@"_SIMULATOR"])
  {
    v7 = [v6 substringToIndex:{objc_msgSend(v6, "rangeOfString:", @"_SIMULATOR"}];

    v6 = v7;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v3, v6];

  return v8;
}

- (void)_setProximityState:(BOOL)a3
{
  deviceFlags = self->_deviceFlags;
  if (((((deviceFlags & 0x100) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    *&self->_deviceFlags = deviceFlags & 0xFEFF | v6;
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"UIDeviceProximityStateDidChangeNotification" object:self userInfo:0];
  }
}

- (void)_setBatteryState:(int64_t)a3
{
  deviceFlags = self->_deviceFlags;
  if (deviceFlags >> 6 != a3)
  {
    *&self->_deviceFlags = deviceFlags & 0xFF3F | ((a3 & 3) << 6);
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"UIDeviceBatteryStateDidChangeNotification" object:self userInfo:0];
  }
}

- (void)_setBatteryLevel:(float)a3
{
  v3 = fminf(fmaxf(roundf(a3 * 100.0) / 100.0, 0.0), 1.0);
  if (v3 != self->_batteryLevel)
  {
    self->_batteryLevel = v3;
    if ((*&self->_deviceFlags & 0xC0) != 0)
    {
      v5 = [MEMORY[0x1E696AD88] defaultCenter];
      [v5 postNotificationName:@"UIDeviceBatteryLevelDidChangeNotification" object:self userInfo:0];
    }
  }
}

- (BOOL)_hasTouchPad
{
  if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_DeviceHasTouchPadOverride, @"DeviceHasTouchPadOverride") & 1) == 0 && byte_1ED48B1C4)
  {
    goto LABEL_3;
  }

  deviceFlags = self->_deviceFlags;
  if ((*&deviceFlags & 0x200) != 0)
  {
    return (*&deviceFlags >> 10) & 1;
  }

  if (qword_1ED49E7A8 != -1)
  {
    dispatch_once(&qword_1ED49E7A8, &__block_literal_global_291_0);
  }

  if (dword_1ED49E764)
  {
    state64 = 0;
    notify_get_state(dword_1ED49E764, &state64);
    LOBYTE(v3) = state64 != 0;
  }

  else
  {
LABEL_3:
    LOBYTE(v3) = 1;
  }

  return v3;
}

const char *__41__UIDevice_UIDevicePrivate___hasTouchPad__block_invoke()
{
  result = [*MEMORY[0x1E698E458] UTF8String];
  if (result)
  {

    return notify_register_check(result, &dword_1ED49E764);
  }

  return result;
}

- (void)_setHasTouchPad:(BOOL)a3
{
  if (a3)
  {
    v3 = 1536;
  }

  else
  {
    v3 = 512;
  }

  *&self->_deviceFlags = *&self->_deviceFlags & 0xFBFF | v3;
}

void __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke_2(uint64_t a1, int token)
{
  v29 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = state;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Device", &qword_1ED49E7B0);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v28) = v4;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unable to get remote capabilities. status=%d", buf, 8u);
      }
    }
  }

  else
  {
    v7 = state64;
    v8 = 2;
    if ((state64 & 2) == 0)
    {
      v8 = state64 & 1;
    }

    v9 = *(a1 + 32);
    if (v8 != *(v9 + 24))
    {
      *(v9 + 24) = v8;
      v10 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7B8) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 24);
        v12 = @"Unknown";
        if (v11 == 1)
        {
          v12 = @"Default";
        }

        if (v11 == 2)
        {
          v13 = @"Rotary";
        }

        else
        {
          v13 = v12;
        }

        v14 = v13;
        *buf = 138543362;
        v28 = v14;
        v15 = v10;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Remote touch surface type has changed. Posting _UIDeviceRemoteTouchSurfaceTypeDidChangeNotification. remoteTouchSurfaceType=%{public}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"_UIDeviceRemoteTouchSurfaceTypeDidChangeNotification" object:0];

      v9 = *(a1 + 32);
    }

    if (((v7 >> 3) & 1) != *(v9 + 32))
    {
      *(v9 + 32) = (v7 & 8) != 0;
      v17 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7C0) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 32))
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEFAULT, "Remote microphone capability has changed. Posting _UIDeviceRemoteHasMicrophoneDidChangeNotification. remoteHasMicrophone=%@", buf, 0xCu);
      }

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      [v19 postNotificationName:@"_UIDeviceRemoteHasMicrophoneDidChangeNotification" object:0];

      v9 = *(a1 + 32);
    }

    if (((v7 >> 2) & 1) != *(v9 + 33))
    {
      *(v9 + 33) = (v7 & 4) != 0;
      v20 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7C8) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 33))
        {
          v21 = @"YES";
        }

        else
        {
          v21 = @"NO";
        }

        *buf = 138412290;
        v28 = v21;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "Remote mute capability has changed. Posting _UIDeviceRemoteHasMuteDidChangeNotification. remoteHasMute=%@", buf, 0xCu);
      }

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      [v22 postNotificationName:@"_UIDeviceRemoteHasMuteDidChangeNotification" object:0];

      v9 = *(a1 + 32);
    }

    if (((v7 >> 4) & 1) != *(v9 + 34))
    {
      *(v9 + 34) = (v7 & 0x10) != 0;
      v23 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E7D0) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 34))
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        *buf = 138412290;
        v28 = v24;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "Remote PushToTalk capability has changed. Posting _UIDeviceRemoteSupportsPushToTalkDidChangeNotification. remoteSupportsPushToTalk=%@", buf, 0xCu);
      }

      v25 = [MEMORY[0x1E696AD88] defaultCenter];
      [v25 postNotificationName:@"_UIDeviceRemoteHasPushToTalkDidChangeNotification" object:0];
    }
  }
}

void __58__UIDevice_UIDevicePrivate___loadRemoteDeviceInfoIfNeeded__block_invoke_313(uint64_t a1, int token)
{
  v24 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v4 = state;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Device", &qword_1ED49E808);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v23) = v4;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Unable to get remote type. status=%d", buf, 8u);
      }
    }
  }

  else
  {
    v7 = state64;
    if (state64 - 1 > 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_18A67CE18[state64 - 1];
    }

    v9 = *(a1 + 32);
    if (v8 != *(v9 + 24))
    {
      *(v9 + 24) = v8;
      v10 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E810) + 8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 24);
        v12 = @"Unknown";
        if (v11 == 1)
        {
          v12 = @"Default";
        }

        if (v11 == 2)
        {
          v13 = @"Rotary";
        }

        else
        {
          v13 = v12;
        }

        v14 = v13;
        *buf = 138543362;
        v23 = v14;
        v15 = v10;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "Remote touch surface type has changed. Posting _UIDeviceRemoteTouchSurfaceTypeDidChangeNotification. remoteTouchSurfaceType=%{public}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [v16 postNotificationName:@"_UIDeviceRemoteTouchSurfaceTypeDidChangeNotification" object:0];

      v7 = state64;
      v9 = *(a1 + 32);
    }

    v17 = v7 - 1 < 5;
    if (*(v9 + 32) != v17)
    {
      *(v9 + 32) = v17;
      v18 = *(__UILogGetCategoryCachedImpl("Device", &qword_1ED49E818) + 8);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (*(*(a1 + 32) + 32))
        {
          v19 = @"YES";
        }

        else
        {
          v19 = @"NO";
        }

        *buf = 138412290;
        v23 = v19;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEFAULT, "Remote microphone capability has changed. Posting _UIDeviceRemoteHasMicrophoneDidChangeNotification. remoteHasMicrophone=%@", buf, 0xCu);
      }

      v20 = [MEMORY[0x1E696AD88] defaultCenter];
      [v20 postNotificationName:@"_UIDeviceRemoteHasMicrophoneDidChangeNotification" object:0];
    }
  }
}

+ (BOOL)_isLowEnd
{
  if (qword_1ED49E848 != -1)
  {
    dispatch_once(&qword_1ED49E848, &__block_literal_global_351_1);
  }

  return byte_1ED49E756;
}

uint64_t __39__UIDevice_UIDeviceInternal___isLowEnd__block_invoke()
{
  result = MGGetBoolAnswer();
  byte_1ED49E756 = result;
  return result;
}

- (int64_t)_nativeScreenGamut
{
  if (qword_1ED49E860 != -1)
  {
    dispatch_once(&qword_1ED49E860, &__block_literal_global_361);
  }

  return qword_1ED49E858;
}

uint64_t __48__UIDevice_UIDeviceInternal___nativeScreenGamut__block_invoke()
{
  result = CUIGetDeviceArtworkDisplayGamut();
  qword_1ED49E858 = result;
  return result;
}

@end