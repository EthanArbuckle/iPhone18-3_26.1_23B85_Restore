@interface SDDevice
+ (id)_currentDevice;
+ (id)_devicesMatchingPlatforms:(unint64_t)platforms;
+ (id)blankDeviceWithErrorMessage:(id)message;
+ (id)currentDevice;
+ (id)deriveMacDeviceClassForProductType:(id)type;
+ (id)deviceClass;
+ (id)deviceClassForProductType:(id)type;
+ (id)deviceIdentifier;
+ (id)deviceName;
+ (id)deviceProductType;
+ (id)marketingProductName;
+ (id)osBuild;
+ (id)productVersion;
+ (unint64_t)devicePlatform;
+ (void)getCurrentDevice:(id)device;
+ (void)getDevicesMatchingPlatforms:(unint64_t)platforms completion:(id)completion;
- (BOOL)_canFileFeedback;
- (BOOL)_isEnrolled;
- (BOOL)_unenrollWithUserIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isErrorDevice;
- (NSDictionary)dictionaryRepresentation;
- (SDDevice)initWithCoder:(id)coder;
- (SDDevice)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (void)_configureDeviceWithExpectedConfigurationWithUserIdentifier:(id)identifier;
- (void)_enrollInBetaProgram:(id)program userIdentifier:(id)identifier;
- (void)_verifyEnrollmentWithUserIdentifier:(id)identifier completion:(id)completion;
- (void)checkIn;
- (void)encodeWithCoder:(id)coder;
- (void)updateCurrentConfiguration;
@end

@implementation SDDevice

- (SDDevice)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v22.receiver = self;
  v22.super_class = SDDevice;
  v5 = [(SDDevice *)&v22 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"name"];
    [(SDDevice *)v5 setName:v6];

    v7 = [representationCopy objectForKeyedSubscript:@"identifier"];
    [(SDDevice *)v5 setIdentifier:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"platform"];
    -[SDDevice setPlatform:](v5, "setPlatform:", [v8 integerValue]);

    v9 = [representationCopy objectForKeyedSubscript:@"deviceClass"];
    [(SDDevice *)v5 setDeviceClass:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"build"];
    [(SDDevice *)v5 setBuild:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"updatedAt"];
    [(SDDevice *)v5 setUpdatedAt:v11];

    v12 = [SDSeedingConfiguration alloc];
    v13 = [representationCopy objectForKeyedSubscript:@"currentConfiguration"];
    v14 = [(SDSeedingConfiguration *)v12 initWithDictionaryRepresentation:v13];
    [(SDDevice *)v5 setCurrentConfiguration:v14];

    v15 = [SDSeedingConfiguration alloc];
    v16 = [representationCopy objectForKeyedSubscript:@"expectedConfiguration"];
    v17 = [(SDSeedingConfiguration *)v15 initWithDictionaryRepresentation:v16];
    [(SDDevice *)v5 setExpectedConfiguration:v17];

    v18 = [representationCopy objectForKeyedSubscript:@"isFeedbackAssistantAvailable"];
    -[SDDevice setIsFeedbackAssistantAvailable:](v5, "setIsFeedbackAssistantAvailable:", [v18 BOOLValue]);

    v19 = [representationCopy objectForKeyedSubscript:@"isRunningSeedBuild"];
    -[SDDevice setIsRunningSeedBuild:](v5, "setIsRunningSeedBuild:", [v19 BOOLValue]);

    v20 = [representationCopy objectForKeyedSubscript:@"hasDeviceManagementRestriction"];
    -[SDDevice setHasDeviceManagementRestriction:](v5, "setHasDeviceManagementRestriction:", [v20 BOOLValue]);
  }

  return v5;
}

- (SDDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SDDevice;
  v5 = [(SDDevice *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(SDDevice *)v5 setName:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(SDDevice *)v5 setIdentifier:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    -[SDDevice setPlatform:](v5, "setPlatform:", [v8 integerValue]);
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
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

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"build"];
    [(SDDevice *)v5 setBuild:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updatedAt"];
    [(SDDevice *)v5 setUpdatedAt:v13];

    -[SDDevice setIsFeedbackAssistantAvailable:](v5, "setIsFeedbackAssistantAvailable:", [coderCopy decodeBoolForKey:@"isFeedbackAssistantAvailable"]);
    -[SDDevice setIsRunningSeedBuild:](v5, "setIsRunningSeedBuild:", [coderCopy decodeBoolForKey:@"isRunningSeedBuild"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentConfiguration"];
    [(SDDevice *)v5 setCurrentConfiguration:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expectedConfiguration"];
    [(SDDevice *)v5 setExpectedConfiguration:v15];

    -[SDDevice setHasDeviceManagementRestriction:](v5, "setHasDeviceManagementRestriction:", [coderCopy decodeBoolForKey:@"hasDeviceManagementRestriction"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(SDDevice *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  identifier = [(SDDevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDDevice platform](self, "platform")}];
  [coderCopy encodeObject:v6 forKey:@"platform"];

  deviceClass = [(SDDevice *)self deviceClass];
  if (deviceClass)
  {
    v8 = deviceClass;
    deviceClass2 = [(SDDevice *)self deviceClass];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      deviceClass3 = [(SDDevice *)self deviceClass];
      [coderCopy encodeObject:deviceClass3 forKey:@"deviceClass"];
    }
  }

  build = [(SDDevice *)self build];
  [coderCopy encodeObject:build forKey:@"build"];

  updatedAt = [(SDDevice *)self updatedAt];
  [coderCopy encodeObject:updatedAt forKey:@"updatedAt"];

  currentConfiguration = [(SDDevice *)self currentConfiguration];
  [coderCopy encodeObject:currentConfiguration forKey:@"currentConfiguration"];

  expectedConfiguration = [(SDDevice *)self expectedConfiguration];
  [coderCopy encodeObject:expectedConfiguration forKey:@"expectedConfiguration"];

  [coderCopy encodeBool:-[SDDevice isFeedbackAssistantAvailable](self forKey:{"isFeedbackAssistantAvailable"), @"isFeedbackAssistantAvailable"}];
  [coderCopy encodeBool:-[SDDevice isRunningSeedBuild](self forKey:{"isRunningSeedBuild"), @"isRunningSeedBuild"}];
  [coderCopy encodeBool:-[SDDevice hasDeviceManagementRestriction](self forKey:{"hasDeviceManagementRestriction"), @"hasDeviceManagementRestriction"}];
}

+ (void)getCurrentDevice:(id)device
{
  deviceCopy = device;
  v4 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__SDDevice_getCurrentDevice___block_invoke;
  v6[3] = &unk_2787CBA60;
  v7 = deviceCopy;
  v5 = deviceCopy;
  [v4 getCurrentDevice:v6];
}

+ (id)currentDevice
{
  v2 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  getCurrentDeviceSynchronously = [v2 getCurrentDeviceSynchronously];

  return getCurrentDeviceSynchronously;
}

+ (id)blankDeviceWithErrorMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(SDDevice);
  [(SDDevice *)v4 setName:&stru_28424D460];
  [(SDDevice *)v4 setIdentifier:@"__BLANK_ERROR_DEVICE__"];
  [(SDDevice *)v4 setPlatform:1];
  [(SDDevice *)v4 setDeviceClass:messageCopy];
  [(SDDevice *)v4 setBuild:messageCopy];

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
  identifier = [(SDDevice *)self identifier];
  v3 = [identifier isEqualToString:@"__BLANK_ERROR_DEVICE__"];

  return v3;
}

+ (id)_currentDevice
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SDDevice__currentDevice__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_currentDevice_onceToken != -1)
  {
    dispatch_once(&_currentDevice_onceToken, block);
  }

  v2 = +[SDBetaManager sharedManager];
  _isEnrollmentAllowedByDeviceManagement_legacy = [v2 _isEnrollmentAllowedByDeviceManagement_legacy];
  [_currentDevice_currentDevice setHasDeviceManagementRestriction:_isEnrollmentAllowedByDeviceManagement_legacy ^ 1u];

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

+ (void)getDevicesMatchingPlatforms:(unint64_t)platforms completion:(id)completion
{
  completionCopy = completion;
  v6 = +[SDBetaEnrollmentServiceProxy sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SDDevice_getDevicesMatchingPlatforms_completion___block_invoke;
  v8[3] = &unk_2787CBAA8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 getDevicesForPlatforms:platforms completion:v8];
}

+ (id)_devicesMatchingPlatforms:(unint64_t)platforms
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
        if (([(SDDevice *)v13 platform]& platforms) != 0)
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
  date = [MEMORY[0x277CBEAA8] date];
  [(SDDevice *)self setUpdatedAt:date];

  [(SDDevice *)self updateCurrentConfiguration];
}

- (NSDictionary)dictionaryRepresentation
{
  v25[11] = *MEMORY[0x277D85DE8];
  v24[0] = @"name";
  name = [(SDDevice *)self name];
  v25[0] = name;
  v24[1] = @"identifier";
  identifier = [(SDDevice *)self identifier];
  v25[1] = identifier;
  v24[2] = @"platform";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDDevice platform](self, "platform")}];
  v25[2] = v21;
  v24[3] = @"deviceClass";
  deviceClass = [(SDDevice *)self deviceClass];
  v25[3] = deviceClass;
  v24[4] = @"build";
  build = [(SDDevice *)self build];
  v25[4] = build;
  v24[5] = @"updatedAt";
  updatedAt = [(SDDevice *)self updatedAt];
  v25[5] = updatedAt;
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
  currentConfiguration = [(SDDevice *)self currentConfiguration];
  dictionaryRepresentation = [currentConfiguration dictionaryRepresentation];
  v9 = dictionaryRepresentation;
  v10 = MEMORY[0x277CBEC10];
  if (dictionaryRepresentation)
  {
    v11 = dictionaryRepresentation;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v25[9] = v11;
  v24[10] = @"expectedConfiguration";
  expectedConfiguration = [(SDDevice *)self expectedConfiguration];
  dictionaryRepresentation2 = [expectedConfiguration dictionaryRepresentation];
  v14 = dictionaryRepresentation2;
  if (dictionaryRepresentation2)
  {
    v15 = dictionaryRepresentation2;
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
  dictionaryRepresentation = [(SDDevice *)self dictionaryRepresentation];
  v4 = [v2 stringWithFormat:@"%@", dictionaryRepresentation];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(SDDevice *)self identifier];
    identifier2 = [v5 identifier];

    v8 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_enrollInBetaProgram:(id)program userIdentifier:(id)identifier
{
  programCopy = program;
  identifierCopy = identifier;
  if (!programCopy)
  {
    v14 = Log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22E41E000, v14, OS_LOG_TYPE_INFO, "Program was nil, no change will be made to the beta program.", buf, 2u);
    }

    goto LABEL_13;
  }

  platform = [(SDDevice *)self platform];
  if (platform != [programCopy platform])
  {
    v14 = Log_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SDDevice _enrollInBetaProgram:v14 userIdentifier:?];
    }

    goto LABEL_13;
  }

  v9 = [[SDSeedingConfiguration alloc] initWithBetaProgram:programCopy];
  [(SDDevice *)self setExpectedConfiguration:v9];

  [(SDDevice *)self updateCurrentConfiguration];
  currentConfiguration = [(SDDevice *)self currentConfiguration];
  expectedConfiguration = [(SDDevice *)self expectedConfiguration];
  v12 = [currentConfiguration isEqual:expectedConfiguration];

  if (!v12)
  {
    v15 = +[SDDevice _currentDevice];
    v16 = [(SDDevice *)self isEqual:v15];

    if (!v16)
    {
      goto LABEL_14;
    }

    [(SDDevice *)self _configureDeviceWithExpectedConfigurationWithUserIdentifier:identifierCopy];
    v14 = +[SDBetaManager sharedManager];
    [v14 _saveBetaProgram:programCopy];
LABEL_13:

    goto LABEL_14;
  }

  v13 = Log_0();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_22E41E000, v13, OS_LOG_TYPE_DEFAULT, "Seeding configuration matches expected configuration.", v17, 2u);
  }

  [(SDDevice *)self _configureDeviceWithExpectedConfigurationWithUserIdentifier:identifierCopy];
LABEL_14:
}

- (void)_configureDeviceWithExpectedConfigurationWithUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = Log_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_22E41E000, v5, OS_LOG_TYPE_DEFAULT, "Updating seeding configuration with expected configuration.", v8, 2u);
  }

  v6 = +[SDBetaManager sharedManager];
  expectedConfiguration = [(SDDevice *)self expectedConfiguration];
  [v6 _enrollUsingSeedingConfiguration:expectedConfiguration userIdentifier:identifierCopy];

  [(SDDevice *)self updateCurrentConfiguration];
}

- (BOOL)_unenrollWithUserIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[SDSeedingConfiguration nullConfiguration];
  [(SDDevice *)self setExpectedConfiguration:v5];

  v6 = +[SDDevice _currentDevice];
  v7 = [(SDDevice *)self isEqual:v6];

  if (v7)
  {
    v8 = +[SDBetaManager sharedManager];
    v9 = [v8 _unenrollFromBetaProgramWithUserIdentifier:identifierCopy];

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
    currentConfiguration = +[SDBetaManager sharedManager];
    _isEnrolledInBetaProgram = [currentConfiguration _isEnrolledInBetaProgram];
  }

  else
  {
    currentConfiguration = [(SDDevice *)self currentConfiguration];
    _isEnrolledInBetaProgram = [currentConfiguration seedProgram] != 0;
  }

  return _isEnrolledInBetaProgram;
}

- (void)_verifyEnrollmentWithUserIdentifier:(id)identifier completion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = +[SDDevice _currentDevice];
  v9 = [(SDDevice *)self isEqual:v8];

  if (v9)
  {
    [(SDDevice *)self updateCurrentConfiguration];
    currentConfiguration = [(SDDevice *)self currentConfiguration];
    assetAudience = [currentConfiguration assetAudience];

    currentConfiguration2 = [(SDDevice *)self currentConfiguration];
    seedProgramID = [currentConfiguration2 seedProgramID];
    integerValue = [seedProgramID integerValue];

    currentConfiguration3 = [(SDDevice *)self currentConfiguration];
    accountID = [currentConfiguration3 accountID];

    v17 = Log_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v24 = assetAudience;
      v25 = 2048;
      v26 = integerValue;
      v27 = 2114;
      v28 = accountID;
      _os_log_impl(&dword_22E41E000, v17, OS_LOG_TYPE_DEFAULT, "Verifying with assetAudience [%{public}@], programID [%lu], accountID [%{public}@]", buf, 0x20u);
    }

    v18 = +[SDBetaManager sharedManager];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __59__SDDevice__verifyEnrollmentWithUserIdentifier_completion___block_invoke;
    v20[3] = &unk_2787CBAD0;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = completionCopy;
    [v18 verifyAssetAudience:assetAudience programID:integerValue accountID:accountID withCompletion:v20];
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
      _isEnrolled = [(SDDevice *)self _isEnrolled];
      isRunningSeedBuild = [(SDDevice *)self isRunningSeedBuild];
      isFeedbackAssistantAvailable = [(SDDevice *)self isFeedbackAssistantAvailable];
      v5 = (_isEnrolled || isRunningSeedBuild) && isFeedbackAssistantAvailable;
      v9 = Log_0();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 67109888;
        *v13 = _isEnrolled;
        *&v13[4] = 1024;
        *&v13[6] = isRunningSeedBuild;
        LOWORD(platform) = 1024;
        *(&platform + 2) = isFeedbackAssistantAvailable;
        HIWORD(platform) = 1024;
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
        platform = [(SDDevice *)self platform];
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
  if ([self deviceIsHomePod])
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
  if ([self deviceIsHomePod])
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

+ (id)deviceClassForProductType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  if (typeCopy)
  {
    v6 = @"AppleTV";
    if (([typeCopy containsString:@"AppleTV"] & 1) == 0)
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
              v6 = [self deriveMacDeviceClassForProductType:v5];
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

+ (id)deriveMacDeviceClassForProductType:(id)type
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE1CB8] _typeWithDeviceModelCode:type];
  identifier = [v3 identifier];
  v5 = [identifier stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_28424D460];
  lowercaseString = [v5 lowercaseString];

  if ([lowercaseString containsString:@"macbookpro"])
  {
    v7 = @"MacBookPro";
  }

  else if ([lowercaseString containsString:@"macbookair"])
  {
    v7 = @"MacBookAir";
  }

  else if ([lowercaseString containsString:@"macbook"])
  {
    v7 = @"MacBook";
  }

  else if ([lowercaseString containsString:@"imac"])
  {
    v7 = @"iMac";
  }

  else if ([lowercaseString containsString:@"macmini"])
  {
    v7 = @"Macmini";
  }

  else if ([lowercaseString containsString:@"macpro"])
  {
    v7 = @"MacPro";
  }

  else if ([lowercaseString containsString:@"macstudio"])
  {
    v7 = @"MacStudio";
  }

  else
  {
    v8 = Log_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = lowercaseString;
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