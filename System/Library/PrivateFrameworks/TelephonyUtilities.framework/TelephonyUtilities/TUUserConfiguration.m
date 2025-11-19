@interface TUUserConfiguration
+ (BOOL)isFilterAsNewCallersEnabledForFaceTime;
+ (BOOL)isFilterAsNewCallersEnabledForPhone;
+ (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4 dataSource:(id)a5;
+ (id)registeredDefaults;
+ (id)userDefaults;
- (BOOL)isBrandedCallingEnabled:(id)a3;
- (BOOL)isBusinessConnectCallingEnabled;
- (BOOL)isCallHapticsEnabled;
- (BOOL)isCallRecordingEnabled;
- (BOOL)isCallScreeningEnabled;
- (BOOL)isEligibleForReceptionistOnboardingNotification;
- (BOOL)isFilterAsNewCallersEnabledForFaceTime;
- (BOOL)isFilterAsNewCallersEnabledForPhone;
- (BOOL)isHoldAssistDetectionEnabled;
- (BOOL)isReceptionistEnabled;
- (BOOL)isSilenceJunkCallingEnabled;
- (BOOL)isSilenceUnknownCallersEnabledForFaceTime;
- (BOOL)isSilenceUnknownCallersEnabledForPhone;
- (BOOL)isSpamFilterEnabledForFaceTime;
- (BOOL)isUplevelFTAEnabled;
- (TUUserConfiguration)init;
- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setBusinessConnectCallingEnabled:(BOOL)a3;
- (void)setCallRecordingEnabled:(BOOL)a3;
- (void)setCallScreeningEnabled:(BOOL)a3;
- (void)setReceptionistEnabled:(BOOL)a3;
- (void)setSilenceJunkCallingEnabled:(BOOL)a3;
- (void)setSpamFilterEnabledForFaceTime:(BOOL)a3;
- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4;
- (void)synchronize;
@end

@implementation TUUserConfiguration

- (TUUserConfiguration)init
{
  v3 = [objc_opt_class() userDefaults];
  v10.receiver = self;
  v10.super_class = TUUserConfiguration;
  v4 = [(TUConfiguration *)&v10 initWithDataSource:v3];
  if (v4)
  {
    [v3 addObserver:v4 forKeyPath:@"announceCalls" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [v3 addObserver:v4 forKeyPath:@"conversationLinkBaseURL" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [v3 addObserver:v4 forKeyPath:@"simulateFatalPersistentStoreError" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    [v3 addObserver:v4 forKeyPath:@"simulateInternationalCall" options:0 context:&TUUserConfigurationKeyValueObserverContext];
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("TUConfigurationProviderQueue", v5);
    v7 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v6];
    coreTelephonyClient = v4->_coreTelephonyClient;
    v4->_coreTelephonyClient = v7;
  }

  return v4;
}

void __35__TUUserConfiguration_userDefaults__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.TelephonyUtilities"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.TelephonyUtilities"];
  }

  v6 = userDefaults_sUserDefaults;
  userDefaults_sUserDefaults = v5;

  v7 = userDefaults_sUserDefaults;
  v8 = [*(a1 + 32) registeredDefaults];
  [v7 registerDefaults:v8];
}

+ (id)registeredDefaults
{
  if (registeredDefaults_onceToken != -1)
  {
    +[TUUserConfiguration registeredDefaults];
  }

  v3 = registeredDefaults_sRegisteredDefaults;

  return v3;
}

void __41__TUUserConfiguration_registeredDefaults__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"announceCalls";
  v3[1] = @"simulateFatalPersistentStoreError";
  v4[0] = &unk_1F09C5FC8;
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"simulateInternationalCall";
  v4[2] = MEMORY[0x1E695E110];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  v1 = registeredDefaults_sRegisteredDefaults;
  registeredDefaults_sRegisteredDefaults = v0;

  v2 = *MEMORY[0x1E69E9840];
}

+ (id)userDefaults
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__TUUserConfiguration_userDefaults__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (userDefaults_onceToken != -1)
  {
    dispatch_once(&userDefaults_onceToken, block);
  }

  v2 = userDefaults_sUserDefaults;

  return v2;
}

- (BOOL)isFilterAsNewCallersEnabledForFaceTime
{
  v2 = objc_opt_class();

  return [v2 isFilterAsNewCallersEnabledForFaceTime];
}

- (void)dealloc
{
  v3 = [(TUConfiguration *)self dataSource];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 removeObserver:self forKeyPath:@"announceCalls" context:&TUUserConfigurationKeyValueObserverContext];
    [v3 removeObserver:self forKeyPath:@"conversationLinkBaseURL" context:&TUUserConfigurationKeyValueObserverContext];
    [v3 removeObserver:self forKeyPath:@"simulateFatalPersistentStoreError" context:&TUUserConfigurationKeyValueObserverContext];
    [v3 removeObserver:self forKeyPath:@"simulateInternationalCall" context:&TUUserConfigurationKeyValueObserverContext];
  }

  v4.receiver = self;
  v4.super_class = TUUserConfiguration;
  [(TUUserConfiguration *)&v4 dealloc];
}

- (BOOL)isFilterAsNewCallersEnabledForPhone
{
  v2 = objc_opt_class();

  return [v2 isFilterAsNewCallersEnabledForPhone];
}

- (void)synchronize
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFD8] setWithObjects:{@"announceCalls", @"filterUnknownCallersAsNewCallers", @"filterUnknownFaceTimeCallersAsNewCallers", @"ReceptionistDisabled", 0}];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = @"com.apple.TelephonyUtilities";
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Synchronizing user configuration for %@ to Apple Watch", &buf, 0xCu);
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = getNPSManagerClass_softClass;
  v11 = getNPSManagerClass_softClass;
  if (!getNPSManagerClass_softClass)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v13 = __getNPSManagerClass_block_invoke;
    v14 = &unk_1E7424CD8;
    v15 = &v8;
    __getNPSManagerClass_block_invoke(&buf);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  v6 = objc_alloc_init(v4);
  [v6 synchronizeUserDefaultsDomain:@"com.apple.TelephonyUtilities" keys:v2];

  v7 = *MEMORY[0x1E69E9840];
}

- (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [(TUConfiguration *)self dataSource];
  v10 = [v8 getBooleanFromUserDefaults:v7 default:v6 dataSource:v9];

  return v10;
}

+ (id)getBooleanFromUserDefaults:(id)a3 default:(id)a4 dataSource:(id)a5
{
  v7 = a4;
  v8 = [a5 objectForKey:a3];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10;

  return v10;
}

- (void)setValueInUserDefaults:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUConfiguration *)self dataSource];
  [v8 setObject:v7 forKey:v6];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%@) object (%@).", buf, 0x16u);
  }

  if (a6 == &TUUserConfigurationKeyValueObserverContext)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (([v9 isEqualToString:@"announceCalls"] & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"conversationLinkBaseURL") & 1) != 0 || (objc_msgSend(v9, "isEqualToString:", @"simulateFatalPersistentStoreError") & 1) != 0 || objc_msgSend(v9, "isEqualToString:", @"simulateInternationalCall")))
    {
      v12 = [(TUConfiguration *)self delegateController];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v14[3] = &unk_1E7426418;
      v14[4] = self;
      [v12 enumerateDelegatesUsingBlock:v14];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 conformsToProtocol:&unk_1F0A0A0A0])
  {
    v7 = v5;
    if (objc_opt_respondsToSelector())
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __70__TUUserConfiguration_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
      v10[3] = &unk_1E7424898;
      v8 = v7;
      v9 = *(a1 + 32);
      v11 = v8;
      v12 = v9;
      dispatch_async(v6, v10);
    }
  }
}

- (BOOL)isCallScreeningEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallScreeningEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"CallScreeningDisabled" default:&unk_1F09C5FE0];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1;
}

- (void)setCallScreeningEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setCallScreeningEnabled called %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"CallScreeningDisabled"];

  [(TUUserConfiguration *)self synchronize];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isHoldAssistDetectionEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isHoldAssistDetectionEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"HoldAssistDetectionEnabled" default:&unk_1F09C5FF8];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isReceptionistEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isReceptionistEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"ReceptionistDisabled" default:&unk_1F09C5FF8];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1;
}

- (void)setReceptionistEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setReceptionistEnabled called %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"ReceptionistDisabled"];

  [(TUUserConfiguration *)self synchronize];
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEligibleForReceptionistOnboardingNotification
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isEligibleForReceptionistOnboardingNotification called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"EligibleForReceptionistOnboardingNotification" default:&unk_1F09C5FF8];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isSilenceUnknownCallersEnabledForFaceTime
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:TUSilenceUnknownFaceTimeCallersDefaultValue()];
  v4 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"silenceUnknownFaceTimeCallers" default:v3];
  v5 = [v4 BOOLValue];

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 1024;
    v13 = v5;
    v7 = v11;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabledForFaceTime called, returning %d", &v10, 0x12u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isSilenceUnknownCallersEnabledForPhone
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"allowContactsOnly" default:&unk_1F09C5FE0];
  v3 = [v2 BOOLValue];

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = objc_opt_class();
    v10 = 1024;
    v11 = v3;
    v5 = v9;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "%@ isSilenceUnknownCallersEnabledForPhone called, returning %d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (BOOL)isFilterAsNewCallersEnabledForFaceTime
{
  v3 = [objc_opt_class() userDefaults];
  v4 = [a1 getBooleanFromUserDefaults:@"filterUnknownFaceTimeCallersAsNewCallers" default:&unk_1F09C5FE0 dataSource:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (BOOL)isFilterAsNewCallersEnabledForPhone
{
  v3 = [objc_opt_class() userDefaults];
  v4 = [a1 getBooleanFromUserDefaults:@"filterUnknownCallersAsNewCallers" default:&unk_1F09C5FE0 dataSource:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

- (BOOL)isBrandedCallingEnabled:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  coreTelephonyClient = self->_coreTelephonyClient;
  v6 = *MEMORY[0x1E6965158];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient context:v4 getCapability:v6 status:&v16 with:&v15];
  v8 = v15;
  v9 = TUDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(TUUserConfiguration *)v4 isBrandedCallingEnabled:v10];
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"Off";
      if (v16)
      {
        v12 = @"On";
      }

      *buf = 138412546;
      v18 = v4;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Fetched state of branded calling for context: %@, state: %@", buf, 0x16u);
    }

    v11 = v16;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (BOOL)isSilenceJunkCallingEnabled
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 138412290;
    *&v11[4] = objc_opt_class();
    v4 = *&v11[4];
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ getSilenceJunkCallingEnabled called", v11, 0xCu);
  }

  v5 = +[TUCall acceptableJunkConfidence];
  v6 = [(TUConfiguration *)self dataSource];
  v7 = [v6 objectForKey:@"maxJunkLevel"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v7 integerValue];
  }

  v8 = [TUCall isJunkConfidenceLevelJunk:v5, *v11];

  v9 = *MEMORY[0x1E69E9840];
  return !v8;
}

- (void)setSilenceJunkCallingEnabled:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 138412546;
    *&v10[4] = objc_opt_class();
    *&v10[12] = 1024;
    *&v10[14] = v3;
    v6 = *&v10[4];
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSilenceJunkCallingEnabled called %d", v10, 0x12u);
  }

  v7 = +[TUCall maxJunkConfidence];
  if (v3)
  {
    v7 = +[TUCall acceptableJunkConfidence];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{v7, *v10, *&v10[16], v11}];
  [(TUUserConfiguration *)self setValueInUserDefaults:v8 forKey:@"maxJunkLevel"];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)isBusinessConnectCallingEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ getBusinessConnectCallingEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"BusinessConnectCallingDisabled" default:&unk_1F09C5FE0];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1;
}

- (void)setBusinessConnectCallingEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setBusinessConnectCallingEnabled called %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"BusinessConnectCallingDisabled"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isUplevelFTAEnabled
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isUplevelFTAEnabled called", &v11, 0xCu);
  }

  v5 = [MEMORY[0x1E699BE70] sharedInstance];
  if ([v5 deviceType] == 2)
  {
    v6 = &unk_1F09C5FE0;
  }

  else
  {
    v6 = &unk_1F09C5FF8;
  }

  v7 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"TUFTAUplevelKey" default:v6];
  v8 = [v7 BOOLValue];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)isCallRecordingEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallRecordingEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"CallRecordingDisabled" default:&unk_1F09C5FE0];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1;
}

- (void)setCallRecordingEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setCallRecordingEnabled called %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"CallRecordingDisabled"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isSpamFilterEnabledForFaceTime
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isSpamFilterEnabledForFaceTime called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"spamFilterFaceTimeDisabled" default:&unk_1F09C5FE0];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6 ^ 1;
}

- (void)setSpamFilterEnabledForFaceTime:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 1024;
    v12 = v3;
    v6 = v10;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "%@ setSpamFilterEnabledForFaceTime called %d", &v9, 0x12u);
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:!v3];
  [(TUUserConfiguration *)self setValueInUserDefaults:v7 forKey:@"spamFilterFaceTimeDisabled"];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCallHapticsEnabled
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v4 = v10;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ isCallHapticsEnabled called", &v9, 0xCu);
  }

  v5 = [(TUUserConfiguration *)self getBooleanFromUserDefaults:@"TUCallHapticsEnabled" default:&unk_1F09C5FF8];
  v6 = [v5 BOOLValue];

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)isBrandedCallingEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch state of branded calling for context: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)setBrandedCallingEnabled:(uint64_t)a1 subscription:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to set state of branded calling for context: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end