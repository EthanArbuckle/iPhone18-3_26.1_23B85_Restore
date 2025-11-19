@interface SDDevice
+ (id)_currentDevice;
+ (id)_devicesMatchingPlatforms:(unint64_t)a3;
+ (id)blankDeviceWithErrorMessage:(id)a3;
+ (id)currentDevice;
+ (id)deriveMacDeviceClassForProductType:(id)a3;
+ (id)deviceClass;
+ (id)deviceClassForProductType:(id)a3;
+ (id)deviceIdentifier;
+ (id)deviceName;
+ (id)deviceProductType;
+ (id)marketingProductName;
+ (id)osBuild;
+ (id)productVersion;
+ (unint64_t)devicePlatform;
+ (void)getCurrentDevice:(id)a3;
+ (void)getDevicesMatchingPlatforms:(unint64_t)a3 completion:(id)a4;
- (BOOL)_canFileFeedback;
- (BOOL)_isEnrolled;
- (BOOL)_unenrollWithUserIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isErrorDevice;
- (NSDictionary)dictionaryRepresentation;
- (SDDevice)initWithCoder:(id)a3;
- (SDDevice)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (void)_configureDeviceWithExpectedConfigurationWithUserIdentifier:(id)a3;
- (void)_enrollInBetaProgram:(id)a3 userIdentifier:(id)a4;
- (void)_verifyEnrollmentWithUserIdentifier:(id)a3 completion:(id)a4;
- (void)checkIn;
- (void)encodeWithCoder:(id)a3;
- (void)updateCurrentConfiguration;
@end

@implementation SDDevice

- (SDDevice)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SDDevice;
  v5 = [(SDDevice *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"name"];
    [(SDDevice *)v5 setName:v6];

    v7 = [v4 objectForKeyedSubscript:@"identifier"];
    [(SDDevice *)v5 setIdentifier:v7];

    v8 = [v4 objectForKeyedSubscript:@"platform"];
    -[SDDevice setPlatform:](v5, "setPlatform:", [v8 integerValue]);

    v9 = [v4 objectForKeyedSubscript:@"deviceClass"];
    [(SDDevice *)v5 setDeviceClass:v9];

    v10 = [v4 objectForKeyedSubscript:@"build"];
    [(SDDevice *)v5 setBuild:v10];

    v11 = [v4 objectForKeyedSubscript:@"updatedAt"];
    [(SDDevice *)v5 setUpdatedAt:v11];

    v12 = [SDSeedingConfiguration alloc];
    v13 = [v4 objectForKeyedSubscript:@"currentConfiguration"];
    v14 = [(SDSeedingConfiguration *)v12 initWithDictionaryRepresentation:v13];
    [(SDDevice *)v5 setCurrentConfiguration:v14];

    v15 = [SDSeedingConfiguration alloc];
    v16 = [v4 objectForKeyedSubscript:@"expectedConfiguration"];
    v17 = [(SDSeedingConfiguration *)v15 initWithDictionaryRepresentation:v16];
    [(SDDevice *)v5 setExpectedConfiguration:v17];

    v18 = [v4 objectForKeyedSubscript:@"isFeedbackAssistantAvailable"];
    -[SDDevice setIsFeedbackAssistantAvailable:](v5, "setIsFeedbackAssistantAvailable:", [v18 BOOLValue]);

    v19 = [v4 objectForKeyedSubscript:@"isRunningSeedBuild"];
    -[SDDevice setIsRunningSeedBuild:](v5, "setIsRunningSeedBuild:", [v19 BOOLValue]);

    v20 = [v4 objectForKeyedSubscript:@"hasDeviceManagementRestriction"];
    -[SDDevice setHasDeviceManagementRestriction:](v5, "setHasDeviceManagementRestriction:", [v20 BOOLValue]);
  }

  return v5;
}

- (SDDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SDDevice;
  v5 = [(SDDevice *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SDDevice *)v5 setName:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(SDDevice *)v5 setIdentifier:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    -[SDDevice setPlatform:](v5, "setPlatform:", [v8 integerValue]);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &stru_28424D460;
    }

    [(SDDevice *)v5 setDeviceClass:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    [(SDDevice *)v5 setBuild:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updatedAt"];
    [(SDDevice *)v5 setUpdatedAt:v13];

    -[SDDevice setIsFeedbackAssistantAvailable:](v5, "setIsFeedbackAssistantAvailable:", [v4 decodeBoolForKey:@"isFeedbackAssistantAvailable"]);
    -[SDDevice setIsRunningSeedBuild:](v5, "setIsRunningSeedBuild:", [v4 decodeBoolForKey:@"isRunningSeedBuild"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentConfiguration"];
    [(SDDevice *)v5 setCurrentConfiguration:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expectedConfiguration"];
    [(SDDevice *)v5 setExpectedConfiguration:v15];

    -[SDDevice setHasDeviceManagementRestriction:](v5, "setHasDeviceManagementRestriction:", [v4 decodeBoolForKey:@"hasDeviceManagementRestriction"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16 = a3;
  v4 = [(SDDevice *)self name];
  [v16 encodeObject:v4 forKey:@"name"];

  v5 = [(SDDevice *)self identifier];
  [v16 encodeObject:v5 forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDDevice platform](self, "platform")}];
  [v16 encodeObject:v6 forKey:@"platform"];

  v7 = [(SDDevice *)self deviceClass];
  if (v7)
  {
    v8 = v7;
    v9 = [(SDDevice *)self deviceClass];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [(SDDevice *)self deviceClass];
      [v16 encodeObject:v11 forKey:@"deviceClass"];
    }
  }

  v12 = [(SDDevice *)self build];
  [v16 encodeObject:v12 forKey:@"build"];

  v13 = [(SDDevice *)self updatedAt];
  [v16 encodeObject:v13 forKey:@"updatedAt"];

  v14 = [(SDDevice *)self currentConfiguration];
  [v16 encodeObject:v14 forKey:@"currentConfiguration"];

  v15 = [(SDDevice *)self expectedConfiguration];
  [v16 encodeObject:v15 forKey:@"expectedConfiguration"];

  [v16 encodeBool:-[SDDevice isFeedbackAssistantAvailable](self forKey:{"isFeedbackAssistantAvailable"), @"isFeedbackAssistantAvailable"}];
  [v16 encodeBool:-[SDDevice isRunningSeedBuild](self forKey:{"isRunningSeedBuild"), @"isRunningSeedBuild"}];
  [v16 encodeBool:-[SDDevice hasDeviceManagementRestriction](self forKey:{"hasDeviceManagementRestriction"), @"hasDeviceManagementRestriction"}];
}

+ (void)getCurrentDevice:(id)a3
{
  v3 = a3;
  v4 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SDDevice_getCurrentDevice___block_invoke;
  v6[3] = &unk_2787CBA60;
  v7 = v3;
  v5 = v3;
  [v4 getCurrentDevice:v6];
}

+ (id)currentDevice
{
  v2 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v3 = [v2 getCurrentDeviceSynchronously];

  return v3;
}

+ (id)blankDeviceWithErrorMessage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SDDevice);
  [(SDDevice *)v4 setName:&stru_28424D460];
  [(SDDevice *)v4 setIdentifier:@"__BLANK_ERROR_DEVICE__"];
  [(SDDevice *)v4 setPlatform:1];
  [(SDDevice *)v4 setDeviceClass:v3];
  [(SDDevice *)v4 setBuild:v3];

  v5 = [MEMORY[0x277CBEAA8] now];
  [(SDDevice *)v4 setUpdatedAt:v5];

  [(SDDevice *)v4 setIsFeedbackAssistantAvailable:0];
  [(SDDevice *)v4 setIsRunningSeedBuild:0];
  [(SDDevice *)v4 setHasDeviceManagementRestriction:0];
  v6 = +[SDSeedingConfiguration nullConfiguration];
  [(SDDevice *)v4 setCurrentConfiguration:v6];

  v7 = +[SDSeedingConfiguration nullConfiguration];
  [(SDDevice *)v4 setExpectedConfiguration:v7];

  return v4;
}

- (BOOL)isErrorDevice
{
  v2 = [(SDDevice *)self identifier];
  v3 = [v2 isEqualToString:@"__BLANK_ERROR_DEVICE__"];

  return v3;
}

+ (id)_currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SDDevice__currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_currentDevice_onceToken != -1)
  {
    dispatch_once(&_currentDevice_onceToken, block);
  }

  v2 = +[SDBetaManager sharedManager];
  v3 = [v2 _isEnrollmentAllowedByDeviceManagement_legacy];
  [_currentDevice_currentDevice setHasDeviceManagementRestriction:v3 ^ 1u];

  [_currentDevice_currentDevice checkIn];
  v4 = _currentDevice_currentDevice;

  return v4;
}

void __26__SDDevice__currentDevice__block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) deviceIdentifier];
  v2 = [SDKeyValueStore deviceDictionaryForDeviceIdentifier:?];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    v4 = [[SDDevice alloc] initWithDictionaryRepresentation:v3];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = _currentDevice_currentDevice;
  _currentDevice_currentDevice = v4;

  [_currentDevice_currentDevice setIdentifier:v13];
  v6 = [*(a1 + 32) devicePlatform];
  [_currentDevice_currentDevice setPlatform:v6];
  v7 = [*(a1 + 32) deviceClass];
  [_currentDevice_currentDevice setDeviceClass:v7];

  v8 = [*(a1 + 32) deviceName];
  [_currentDevice_currentDevice setName:v8];

  v9 = [*(a1 + 32) osBuild];
  [_currentDevice_currentDevice setBuild:v9];

  v10 = +[SDSeedingConfiguration currentConfiguration];
  [_currentDevice_currentDevice setCurrentConfiguration:v10];

  v11 = +[SDBuildInfo isFeedbackAssistantAvailable];
  [_currentDevice_currentDevice setIsFeedbackAssistantAvailable:v11];
  v12 = +[SDBuildInfo currentBuildIsSeed];
  [_currentDevice_currentDevice setIsRunningSeedBuild:v12];
}

- (void)updateCurrentConfiguration
{
  v3 = +[SDSeedingConfiguration currentConfiguration];
  [(SDDevice *)self setCurrentConfiguration:v3];

  [SDKeyValueStore insertOrUpdateDevice:self];
}

+ (void)getDevicesMatchingPlatforms:(unint64_t)a3 completion:(id)a4
{
  v5 = a4;
  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SDDevice_getDevicesMatchingPlatforms_completion___block_invoke;
  v8[3] = &unk_2787CBAA8;
  v9 = v5;
  v7 = v5;
  [v6 getDevicesForPlatforms:a3 completion:v8];
}

+ (id)_devicesMatchingPlatforms:(unint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = +[SDKeyValueStore devicesDictionary];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [SDDevice alloc];
        v13 = [(SDDevice *)v12 initWithDictionaryRepresentation:v11, v16];
        if (([(SDDevice *)v13 platform]& a3) != 0)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)checkIn
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(SDDevice *)self setUpdatedAt:v3];

  [(SDDevice *)self updateCurrentConfiguration];
}

- (NSDictionary)dictionaryRepresentation
{
  v25[11] = *MEMORY[0x277D85DE8];
  v24[0] = @"name";
  v23 = [(SDDevice *)self name];
  v25[0] = v23;
  v24[1] = @"identifier";
  v22 = [(SDDevice *)self identifier];
  v25[1] = v22;
  v24[2] = @"platform";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDDevice platform](self, "platform")}];
  v25[2] = v21;
  v24[3] = @"deviceClass";
  v20 = [(SDDevice *)self deviceClass];
  v25[3] = v20;
  v24[4] = @"build";
  v19 = [(SDDevice *)self build];
  v25[4] = v19;
  v24[5] = @"updatedAt";
  v3 = [(SDDevice *)self updatedAt];
  v25[5] = v3;
  v24[6] = @"isFeedbackAssistantAvailable";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SDDevice isFeedbackAssistantAvailable](self, "isFeedbackAssistantAvailable")}];
  v25[6] = v4;
  v24[7] = @"hasDeviceManagementRestriction";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SDDevice hasDeviceManagementRestriction](self, "hasDeviceManagementRestriction")}];
  v25[7] = v5;
  v24[8] = @"isRunningSeedBuild";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[SDDevice isRunningSeedBuild](self, "isRunningSeedBuild")}];
  v25[8] = v6;
  v24[9] = @"currentConfiguration";
  v7 = [(SDDevice *)self currentConfiguration];
  v8 = [v7 dictionaryRepresentation];
  v9 = v8;
  v10 = MEMORY[0x277CBEC10];
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v25[9] = v11;
  v24[10] = @"expectedConfiguration";
  v12 = [(SDDevice *)self expectedConfiguration];
  v13 = [v12 dictionaryRepresentation];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v10;
  }

  v25[10] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:11];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(SDDevice *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(SDDevice *)self identifier];
    v7 = [v5 identifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_enrollInBetaProgram:(id)a3 userIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v14 = Log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_INFO, "Program was nil, no change will be made to the beta program.", buf, 2u);
    }

    goto LABEL_13;
  }

  v8 = [(SDDevice *)self platform];
  if (v8 != [v6 platform])
  {
    v14 = Log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SDDevice _enrollInBetaProgram:v14 userIdentifier:?];
    }

    goto LABEL_13;
  }

  v9 = [[SDSeedingConfiguration alloc] initWithBetaProgram:v6];
  [(SDDevice *)self setExpectedConfiguration:v9];

  [(SDDevice *)self updateCurrentConfiguration];
  v10 = [(SDDevice *)self currentConfiguration];
  v11 = [(SDDevice *)self expectedConfiguration];
  v12 = [v10 isEqual:v11];

  if (!v12)
  {
    v15 = +[SDDevice _currentDevice];
    v16 = [(SDDevice *)self isEqual:v15];

    if (!v16)
    {
      goto LABEL_14;
    }

    [(SDDevice *)self _configureDeviceWithExpectedConfigurationWithUserIdentifier:v7];
    v14 = +[SDBetaManager sharedManager];
    [v14 _saveBetaProgram:v6];
LABEL_13:

    goto LABEL_14;
  }

  v13 = Log_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Seeding configuration matches expected configuration.", v17, 2u);
  }

  [(SDDevice *)self _configureDeviceWithExpectedConfigurationWithUserIdentifier:v7];
LABEL_14:
}

- (void)_configureDeviceWithExpectedConfigurationWithUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "Updating seeding configuration with expected configuration.", v8, 2u);
  }

  v6 = +[SDBetaManager sharedManager];
  v7 = [(SDDevice *)self expectedConfiguration];
  [v6 _enrollUsingSeedingConfiguration:v7 userIdentifier:v4];

  [(SDDevice *)self updateCurrentConfiguration];
}

- (BOOL)_unenrollWithUserIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SDSeedingConfiguration nullConfiguration];
  [(SDDevice *)self setExpectedConfiguration:v5];

  v6 = +[SDDevice _currentDevice];
  v7 = [(SDDevice *)self isEqual:v6];

  if (v7)
  {
    v8 = +[SDBetaManager sharedManager];
    v9 = [v8 _unenrollFromBetaProgramWithUserIdentifier:v4];

    [(SDDevice *)self updateCurrentConfiguration];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_isEnrolled
{
  v3 = +[SDDevice _currentDevice];
  v4 = [(SDDevice *)self isEqual:v3];

  if (v4)
  {
    v5 = +[SDBetaManager sharedManager];
    v6 = [v5 _isEnrolledInBetaProgram];
  }

  else
  {
    v5 = [(SDDevice *)self currentConfiguration];
    v6 = [v5 seedProgram] != 0;
  }

  return v6;
}

- (void)_verifyEnrollmentWithUserIdentifier:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SDDevice _currentDevice];
  v9 = [(SDDevice *)self isEqual:v8];

  if (v9)
  {
    [(SDDevice *)self updateCurrentConfiguration];
    v10 = [(SDDevice *)self currentConfiguration];
    v11 = [v10 assetAudience];

    v12 = [(SDDevice *)self currentConfiguration];
    v13 = [v12 seedProgramID];
    v14 = [v13 integerValue];

    v15 = [(SDDevice *)self currentConfiguration];
    v16 = [v15 accountID];

    v17 = Log_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v24 = v11;
      v25 = 2048;
      v26 = v14;
      v27 = 2114;
      v28 = v16;
      _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_DEFAULT, "Verifying with assetAudience [%{public}@], programID [%lu], accountID [%{public}@]", buf, 0x20u);
    }

    v18 = +[SDBetaManager sharedManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__SDDevice__verifyEnrollmentWithUserIdentifier_completion___block_invoke;
    v20[3] = &unk_2787CBAD0;
    v20[4] = self;
    v21 = v6;
    v22 = v7;
    [v18 verifyAssetAudience:v11 programID:v14 accountID:v16 withCompletion:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __59__SDDevice__verifyEnrollmentWithUserIdentifier_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1[4];
  v8 = v5;
  if (a2)
  {
    [v6 _enrollInBetaProgram:v5];
  }

  else
  {
    [v6 _unenrollWithUserIdentifier:a1[5]];
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

- (BOOL)_canFileFeedback
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = +[SDDevice _currentDevice];
  v4 = [(SDDevice *)self isEqual:v3];

  if (v4)
  {
    [(SDDevice *)self updateCurrentConfiguration];
  }

  if ([(SDDevice *)self platform]== 4)
  {
    v5 = 0;
  }

  else
  {
    if ([(SDDevice *)self platform]== 1 || [(SDDevice *)self platform]== 2 || [(SDDevice *)self platform]== 32)
    {
      v6 = [(SDDevice *)self _isEnrolled];
      v7 = [(SDDevice *)self isRunningSeedBuild];
      v8 = [(SDDevice *)self isFeedbackAssistantAvailable];
      v5 = (v6 || v7) && v8;
      v9 = Log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109888;
        *v13 = v6;
        *&v13[4] = 1024;
        *&v13[6] = v7;
        LOWORD(v14) = 1024;
        *(&v14 + 2) = v8;
        HIWORD(v14) = 1024;
        v15 = v5;
        _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_DEFAULT, "canFileFeedback: enrolledInSeed: %d, onSeedBuild: %d, isFBAAvailable %d, -> result: %d", &v12, 0x1Au);
      }
    }

    else
    {
      v9 = Log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        *v13 = "[SDDevice _canFileFeedback]";
        *&v13[8] = 2048;
        v14 = [(SDDevice *)self platform];
        _os_log_impl(&dword_22E41E000, v9, OS_LOG_TYPE_DEFAULT, "%s is not supported on platform [%lu]", &v12, 0x16u);
      }

      v5 = 0;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)deviceIdentifier
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (unint64_t)devicePlatform
{
  if ([a1 deviceIsHomePod])
  {
    return 16;
  }

  else
  {
    return 1;
  }
}

+ (id)deviceClass
{
  if ([a1 deviceIsHomePod])
  {
    v2 = @"HomePod";
  }

  else
  {
    v2 = MGCopyAnswer();
  }

  return v2;
}

+ (id)deviceProductType
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)deviceClassForProductType:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = @"AppleTV";
    if (([v4 containsString:@"AppleTV"] & 1) == 0)
    {
      v6 = @"iPhone";
      if (([v5 containsString:@"iPhone"] & 1) == 0)
      {
        v6 = @"iPad";
        if (([v5 containsString:@"iPad"] & 1) == 0)
        {
          v6 = @"Watch";
          if (([v5 containsString:@"Watch"] & 1) == 0)
          {
            if ([v5 containsString:@"AudioAccessory"])
            {
              v6 = @"HomePod";
            }

            else if ([v5 containsString:@"Mac"])
            {
              v6 = [a1 deriveMacDeviceClassForProductType:v5];
            }

            else
            {
              v8 = Log_0();
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [(SDDevice *)v5 deviceClassForProductType:v8];
              }

              v6 = &stru_28424D460;
            }
          }
        }
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = &stru_28424D460;
  }

  return v7;
}

+ (id)deriveMacDeviceClassForProductType:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:a3];
  v4 = [v3 identifier];
  v5 = [v4 stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_28424D460];
  v6 = [v5 lowercaseString];

  if ([v6 containsString:@"macbookpro"])
  {
    v7 = @"MacBookPro";
  }

  else if ([v6 containsString:@"macbookair"])
  {
    v7 = @"MacBookAir";
  }

  else if ([v6 containsString:@"macbook"])
  {
    v7 = @"MacBook";
  }

  else if ([v6 containsString:@"imac"])
  {
    v7 = @"iMac";
  }

  else if ([v6 containsString:@"macmini"])
  {
    v7 = @"Macmini";
  }

  else if ([v6 containsString:@"macpro"])
  {
    v7 = @"MacPro";
  }

  else if ([v6 containsString:@"macstudio"])
  {
    v7 = @"MacStudio";
  }

  else
  {
    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_22E41E000, v8, OS_LOG_TYPE_DEFAULT, "No Mac product mapping for [%{public}@]", &v11, 0xCu);
    }

    v7 = &stru_28424D460;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)deviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)osBuild
{
  v2 = MGCopyAnswer();
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

  return v4;
}

+ (id)marketingProductName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)productVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (void)deviceClassForProductType:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_22E41E000, a2, OS_LOG_TYPE_ERROR, "No deviceClass for product [%{public}@]", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end