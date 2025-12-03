@interface TLCapabilitiesManager
+ (TLCapabilitiesManager)sharedCapabilitiesManager;
- (BOOL)hasSynchronizedEmbeddedVibrationsCapability;
- (BOOL)hasSynchronizedVibrationsCapability;
- (BOOL)supportsNanoEncore;
- (BOOL)supportsReflectionRemixes;
- (BOOL)wantsModernDefaultRingtone;
- (NSString)deviceCodeName;
- (NSString)simplifiedDeviceCodeName;
- (TLCapabilitiesManager)init;
- (void)_checkRingtoneStoreAvailability;
- (void)_updateRingtoneStoreAvailabilityWithAvailableKinds:(id)kinds error:(id)error;
- (void)dealloc;
@end

@implementation TLCapabilitiesManager

+ (TLCapabilitiesManager)sharedCapabilitiesManager
{
  if (sharedCapabilitiesManager__TLCapabilitiesManagerOnceToken != -1)
  {
    +[TLCapabilitiesManager sharedCapabilitiesManager];
  }

  v3 = sharedCapabilitiesManager__TLCapabilitiesSharedManager;

  return v3;
}

uint64_t __50__TLCapabilitiesManager_sharedCapabilitiesManager__block_invoke()
{
  sharedCapabilitiesManager__TLCapabilitiesSharedManager = objc_alloc_init(TLCapabilitiesManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TLCapabilitiesManager)init
{
  v8.receiver = self;
  v8.super_class = TLCapabilitiesManager;
  v2 = [(TLCapabilitiesManager *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 9) = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = getSSDeviceAvailableItemKindsChangedNotification();
    [defaultCenter addObserver:v3 selector:sel__handleStoreAvailableItemKindsChangedNotification_ name:v5 object:0];

    [(TLCapabilitiesManager *)v3 _checkRingtoneStoreAvailability];
    deviceCodeNameSimplicationMapping = v3->_deviceCodeNameSimplicationMapping;
    v3->_deviceCodeNameSimplicationMapping = MEMORY[0x1E695E0F8];

    v3->_isInternalInstall = MGGetBoolAnswer();
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = getSSDeviceAvailableItemKindsChangedNotification();
  [defaultCenter removeObserver:self name:v4 object:0];

  v5.receiver = self;
  v5.super_class = TLCapabilitiesManager;
  [(TLCapabilitiesManager *)&v5 dealloc];
}

- (void)_checkRingtoneStoreAvailability
{
  if ([(TLCapabilitiesManager *)self _hasTelephonyCapability])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getSSDeviceClass_softClass;
    v11 = getSSDeviceClass_softClass;
    if (!getSSDeviceClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getSSDeviceClass_block_invoke;
      v7[3] = &unk_1E8578D30;
      v7[4] = &v8;
      __getSSDeviceClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    currentDevice = [v3 currentDevice];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __56__TLCapabilitiesManager__checkRingtoneStoreAvailability__block_invoke;
    v6[3] = &unk_1E8579920;
    v6[4] = self;
    [currentDevice getAvailableItemKindsWithBlock:v6];
  }
}

- (void)_updateRingtoneStoreAvailabilityWithAvailableKinds:(id)kinds error:(id)error
{
  kindsCopy = kinds;
  errorCopy = error;
  if (!errorCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v8 = getSSItemKindRingtoneSymbolLoc_ptr_0;
    v16 = getSSItemKindRingtoneSymbolLoc_ptr_0;
    if (!getSSItemKindRingtoneSymbolLoc_ptr_0)
    {
      v9 = StoreServicesLibrary_0();
      v14[3] = dlsym(v9, "SSItemKindRingtone");
      getSSItemKindRingtoneSymbolLoc_ptr_0 = v14[3];
      v8 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (v8)
    {
      self->_isRingtoneStoreAvailable = [kindsCopy containsObject:*v8];
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v10 = getSSItemKindToneSymbolLoc_ptr_0;
      v16 = getSSItemKindToneSymbolLoc_ptr_0;
      if (!getSSItemKindToneSymbolLoc_ptr_0)
      {
        v11 = StoreServicesLibrary_0();
        v14[3] = dlsym(v11, "SSItemKindTone");
        getSSItemKindToneSymbolLoc_ptr_0 = v14[3];
        v10 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v10)
      {
        self->_isAlertToneStoreAvailable = [kindsCopy containsObject:*v10];
        goto LABEL_10;
      }
    }

    else
    {
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    }

    v12 = __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  *&self->_isRingtoneStoreAvailable = 0;
LABEL_10:
}

- (BOOL)wantsModernDefaultRingtone
{
  if ([(TLCapabilitiesManager *)self hasFaceIDCapability])
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

- (BOOL)supportsReflectionRemixes
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (BOOL)supportsNanoEncore
{
  v29 = *MEMORY[0x1E69E9840];
  activePairedDeviceSelectorBlock = [getNRPairedDeviceRegistryClass() activePairedDeviceSelectorBlock];
  sharedInstance = [getNRPairedDeviceRegistryClass() sharedInstance];
  v4 = [sharedInstance getAllDevicesWithArchivedAltAccountDevicesMatching:activePairedDeviceSelectorBlock];

  firstObject = [v4 firstObject];
  if (firstObject)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v6 = getNRDevicePropertyNameSymbolLoc_ptr;
    v24 = getNRDevicePropertyNameSymbolLoc_ptr;
    if (!getNRDevicePropertyNameSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v26 = __getNRDevicePropertyNameSymbolLoc_block_invoke;
      v27 = &unk_1E8578D30;
      v28 = &v21;
      v7 = NanoRegistryLibrary();
      v8 = dlsym(v7, "NRDevicePropertyName");
      *(v28[1] + 24) = v8;
      getNRDevicePropertyNameSymbolLoc_ptr = *(v28[1] + 24);
      v6 = v22[3];
    }

    _Block_object_dispose(&v21, 8);
    if (!v6)
    {
      __73__TLToneManager__ensureTCCAccessPreflightAndCheckForFileExistenceAtPath___block_invoke_cold_2();
      __break(1u);
    }

    v9 = [firstObject valueForProperty:*v6];
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"<%@: %p name = %@>", v12, firstObject, v9];;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9B2FB519-D14B-49AB-BB91-67A6BF4E2B9A"];
  v15 = [firstObject supportsCapability:v14];

  v16 = TLLogToneManagement();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      v18 = "Active paired watch %{public}@ supports NanoEncore.";
LABEL_12:
      _os_log_impl(&dword_1D9356000, v16, OS_LOG_TYPE_DEFAULT, v18, &buf, 0xCu);
    }
  }

  else if (v17)
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    v18 = "Active paired watch %{public}@ does NOT support NanoEncore.";
    goto LABEL_12;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)hasSynchronizedVibrationsCapability
{
  v11 = *MEMORY[0x1E69E9840];
  if ([(TLCapabilitiesManager *)self hasVibratorCapability])
  {
    v3 = MGGetBoolAnswer();
    v4 = TLLogVibrationManagement();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543618;
      selfCopy = self;
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_1D9356000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: -hasSynchronizedVibrationsCapability. MobileGestalt returned %{BOOL}u for the deviceSupportsHaptics capability.", &v7, 0x12u);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)hasSynchronizedEmbeddedVibrationsCapability
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(TLCapabilitiesManager *)self hasVibratorCapability])
  {
    v3 = MGGetBoolAnswer();
    v4 = MGGetBoolAnswer();
    v5 = v4;
    v6 = v3 & v4;
    v7 = TLLogVibrationManagement();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138544130;
      selfCopy = self;
      v12 = 1024;
      v13 = v3;
      v14 = 1024;
      v15 = v5 & 1;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_1D9356000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: -hasSynchronizedVibrationsCapability. MobileGestalt returned %{BOOL}u for the deviceSupportsHaptics capability, and %{BOOL}u for the deviceSupportsClosedLoopHaptics capability; hasSynchronizedEmbeddedVibrationsCapability = %{BOOL}u.", &v10, 0x1Eu);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

- (NSString)deviceCodeName
{
  v2 = MGCopyAnswer();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFStringGetTypeID())
    {
      v5 = v3;
      if ([v5 hasSuffix:@"AP"])
      {
        v6 = [v5 substringToIndex:{objc_msgSend(v5, "length") - objc_msgSend(@"AP", "length")}];

        v5 = v6;
      }

      v7 = [v5 copy];
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)simplifiedDeviceCodeName
{
  deviceCodeName = [(TLCapabilitiesManager *)self deviceCodeName];
  if (deviceCodeName)
  {
    v4 = [(NSDictionary *)self->_deviceCodeNameSimplicationMapping objectForKey:deviceCodeName];
    if (!v4)
    {
      v4 = deviceCodeName;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end