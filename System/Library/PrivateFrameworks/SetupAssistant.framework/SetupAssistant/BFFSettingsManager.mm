@interface BFFSettingsManager
+ (BOOL)hasStashedValuesOnDisk;
+ (BOOL)removeSafeHaven;
+ (id)loadConfigurationFromDisk;
+ (id)stashBuildVersion;
+ (id)stashProductVersion;
+ (int64_t)stashConfigurationType;
+ (unint64_t)stashVersion;
+ (void)loadConfigurationFromDisk;
+ (void)postDidRestoreSafeHavenNotification;
- (BFFSettingsManager)init;
- (BFFSettingsManager)initWithManagedConfiguration:(id)configuration flowSkipController:(id)controller;
- (BOOL)_commitStash;
- (BOOL)_stashConfiguration:(BOOL)configuration;
- (BOOL)_stashPaths;
- (BOOL)hasStashedValuesOnDisk;
- (id)_preferencesForDomain:(id)domain;
- (id)_shovePath:(id)path toPath:(id)toPath;
- (unint64_t)_restoreConfiguration;
- (void)_applyAssistantPreferences;
- (void)_applyLocationServices;
- (void)_applyLocationServicesSettings;
- (void)_applyScreenTimePreferences;
- (void)_applySeedEnrollmentData;
- (void)_applyStashedFlowSkipIdentifiers;
- (void)_applyStashedManagedConfiguration;
- (void)_applyStashedPreferences;
- (void)_applyUpdatePreferences;
- (void)_applyUserInterfaceStyleMode;
- (void)_reset:(BOOL)_reset;
- (void)_restoreAccessibilityData;
- (void)_restoreAnalyticsData;
- (void)_restoreIPadMultitaskingMode;
- (void)_restoreStashedFiles;
- (void)_restoreWatchData;
- (void)applySafeHavenStashWithIsIntelligenceEnabledBlock:(id)block notificationOnboardingDefaultsBlock:(id)defaultsBlock;
- (void)populatePathsToStash;
- (void)removeBoolSettingForManagedConfigurationSetting:(id)setting;
- (void)reset;
- (void)setAssistantOutputVoice:(id)voice languageCode:(id)code;
- (void)setIPadMultitaskingMode:(id)mode;
- (void)setObject:(id)object forDomain:(id)domain key:(id)key;
- (void)setSeedEnrollmentProgramName:(id)name assetAudience:(id)audience programID:(id)d;
- (void)setUserInterfaceStyleMode:(int64_t)mode;
- (void)stashAnalyticEvent:(id)event payload:(id)payload;
- (void)stashCurrentActionButtonData;
- (void)stashPath:(id)path;
@end

@implementation BFFSettingsManager

- (BFFSettingsManager)init
{
  v3 = objc_alloc_init(BYFlowSkipController);
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v5 = [(BFFSettingsManager *)self initWithManagedConfiguration:mEMORY[0x1E69ADFB8] flowSkipController:v3];

  return v5;
}

- (BFFSettingsManager)initWithManagedConfiguration:(id)configuration flowSkipController:(id)controller
{
  configurationCopy = configuration;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = BFFSettingsManager;
  v9 = [(BFFSettingsManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_managedConfiguration, configuration);
    objc_storeStrong(&v10->_flowSkipController, controller);
    [(BFFSettingsManager *)v10 _reset:1];
  }

  return v10;
}

- (BOOL)hasStashedValuesOnDisk
{
  v2 = objc_opt_class();

  return [v2 hasStashedValuesOnDisk];
}

+ (BOOL)hasStashedValuesOnDisk
{
  v2 = +[BFFSettingsManager loadConfigurationFromDisk];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"type"];

    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"type"];
      integerValue = [v5 integerValue];

      v7 = integerValue == 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)loadConfigurationFromDisk
{
  v2 = MEMORY[0x1E695DF20];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v10 = 0;
  v4 = [v2 dictionaryWithContentsOfURL:v3 error:&v10];
  v5 = v10;

  if (v5)
  {
    domain = [v5 domain];
    if (([domain isEqualToString:*MEMORY[0x1E696A250]]& 1) == 0)
    {
      code = [v5 code];

      if (code == 260)
      {
LABEL_7:
        v8 = 0;
        goto LABEL_9;
      }

      domain = _BYLoggingFacility();
      if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
      {
        +[(BFFSettingsManager *)v5];
      }
    }

    goto LABEL_7;
  }

  v8 = v4;
LABEL_9:

  return v8;
}

+ (unint64_t)stashVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

+ (id)stashBuildVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"buildVersion"];

  return v3;
}

+ (id)stashProductVersion
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = [loadConfigurationFromDisk objectForKeyedSubscript:@"productVersion"];

  return v3;
}

+ (int64_t)stashConfigurationType
{
  loadConfigurationFromDisk = [self loadConfigurationFromDisk];
  v3 = loadConfigurationFromDisk;
  if (loadConfigurationFromDisk)
  {
    v4 = [loadConfigurationFromDisk objectForKeyedSubscript:@"type"];

    if (v4)
    {
      v5 = [v3 objectForKeyedSubscript:@"type"];
      integerValue = [v5 integerValue];
    }

    else
    {
      integerValue = 2;
    }
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (void)removeBoolSettingForManagedConfigurationSetting:(id)setting
{
  managedConfiguration = self->_managedConfiguration;
  settingCopy = setting;
  [(MCProfileConnection *)managedConfiguration removeBoolSetting:settingCopy];
  [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings removeObjectForKey:settingCopy];
}

- (void)setObject:(id)object forDomain:(id)domain key:(id)key
{
  keyCopy = key;
  domainCopy = domain;
  objectCopy = object;
  CFPreferencesSetAppValue(keyCopy, objectCopy, domainCopy);
  CFPreferencesAppSynchronize(domainCopy);
  v11 = [(BFFSettingsManager *)self _preferencesForDomain:domainCopy];

  [v11 setObject:objectCopy forKey:keyCopy];
}

- (void)populatePathsToStash
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to read Wallet preferences: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)stashPath:(id)path
{
  v9 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([pathCopy length])
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = pathCopy;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Adding %@ to the list of paths to stash...", &v7, 0xCu);
    }

    [(NSMutableArray *)self->_stashedPaths addObject:pathCopy];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setAssistantOutputVoice:(id)voice languageCode:(id)code
{
  voiceCopy = voice;
  codeCopy = code;
  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = voiceCopy;
  v10 = voiceCopy;

  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = codeCopy;
}

- (void)setUserInterfaceStyleMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  self->_stashedUserInterfaceStyleMode = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setSeedEnrollmentProgramName:(id)name assetAudience:(id)audience programID:(id)d
{
  nameCopy = name;
  audienceCopy = audience;
  dCopy = d;
  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = nameCopy;
  v15 = nameCopy;

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = audienceCopy;
  v13 = audienceCopy;

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = dCopy;
}

- (void)stashCurrentActionButtonData
{
  _currentActionButtonData = [(BFFSettingsManager *)self _currentActionButtonData];
  if (!_currentActionButtonData)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BFFSettingsManager *)v4 stashCurrentActionButtonData];
    }
  }

  [(BFFSettingsManager *)self stashActionButtonData:_currentActionButtonData];
}

- (void)setIPadMultitaskingMode:(id)mode
{
  modeCopy = mode;
  currentDevice = [getUIDeviceClass() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    objc_storeStrong(&self->_stashedIPadMultitaskingMode, mode);
  }
}

- (void)stashAnalyticEvent:(id)event payload:(id)payload
{
  v12[2] = *MEMORY[0x1E69E9840];
  stashedAnalytics = self->_stashedAnalytics;
  v11[0] = @"event";
  v11[1] = @"payload";
  v12[0] = event;
  v12[1] = payload;
  v6 = MEMORY[0x1E695DF20];
  payloadCopy = payload;
  eventCopy = event;
  v9 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:2];
  [(NSMutableArray *)stashedAnalytics addObject:v9];

  v10 = *MEMORY[0x1E69E9840];
}

void __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = *(a1 + 32);
    v9 = *(v8 + 48);
    *(v8 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (BOOL)_stashConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v57 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_new();
  [v5 setObject:&unk_1F30A77C0 forKeyedSubscript:@"version"];
  if (configurationCopy)
  {
    v6 = &unk_1F30A77D8;
  }

  else
  {
    v6 = &unk_1F30A77F0;
  }

  [v5 setObject:v6 forKeyedSubscript:@"type"];
  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v8 = [v7 objectForKeyedSubscript:@"ProductBuildVersion"];
  [v5 setObject:v8 forKeyedSubscript:@"buildVersion"];

  v9 = [v7 objectForKeyedSubscript:@"ProductVersion"];
  [v5 setObject:v9 forKeyedSubscript:@"productVersion"];

  if ([(NSMutableDictionary *)self->_stashedPreferences count])
  {
    [v5 setObject:self->_stashedPreferences forKeyedSubscript:@"defaults"];
  }

  if ([(NSMutableDictionary *)self->_stashedManagedConfigurationSettings count])
  {
    [v5 setObject:self->_stashedManagedConfigurationSettings forKeyedSubscript:@"managedConfiguration"];
  }

  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  if (stashedAssistantEnabled)
  {
    [v5 setObject:stashedAssistantEnabled forKeyedSubscript:@"assistant"];
  }

  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  if (stashedAssistantVoiceTriggerEnabled)
  {
    [v5 setObject:stashedAssistantVoiceTriggerEnabled forKeyedSubscript:@"assistantVoiceTrigger"];
  }

  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  if (stashedSiriDataSharingOptInStatus)
  {
    [v5 setObject:stashedSiriDataSharingOptInStatus forKeyedSubscript:@"siriDataSharingOptInStatus2"];
  }

  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  if (stashedLocationServicesEnabled)
  {
    [v5 setObject:stashedLocationServicesEnabled forKeyedSubscript:@"locationServices"];
  }

  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  if (stashedLocationServicesSettings)
  {
    [v5 setObject:stashedLocationServicesSettings forKeyedSubscript:@"locationServicesSettings"];
  }

  stashedWatchData = self->_stashedWatchData;
  if (stashedWatchData)
  {
    [v5 setObject:stashedWatchData forKeyedSubscript:@"watch"];
  }

  if ([(NSArray *)self->_stashedFlowSkipIdentifiers count])
  {
    [v5 setObject:self->_stashedFlowSkipIdentifiers forKeyedSubscript:@"flowSkipIdentifiers"];
  }

  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  if (stashedScreenTimeEnabled)
  {
    [v5 setObject:stashedScreenTimeEnabled forKeyedSubscript:@"screenTime"];
  }

  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  if (stashedAutoUpdateEnabled)
  {
    [v5 setObject:stashedAutoUpdateEnabled forKeyedSubscript:@"autoUpdate"];
  }

  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  if (stashedAutoDownloadEnabled)
  {
    [v5 setObject:stashedAutoDownloadEnabled forKeyedSubscript:@"autoDownload"];
  }

  stashedAccessibilityData = self->_stashedAccessibilityData;
  if (stashedAccessibilityData)
  {
    [v5 setObject:stashedAccessibilityData forKeyedSubscript:@"accessibilityData"];
  }

  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  if (stashedUserInterfaceStyleMode)
  {
    [v5 setObject:stashedUserInterfaceStyleMode forKeyedSubscript:@"userInterfaceStyleMode"];
  }

  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  if (stashedSeedEnrollmentProgramName)
  {
    [v5 setObject:stashedSeedEnrollmentProgramName forKeyedSubscript:@"seedEnrollmentProgramName"];
  }

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  if (stashedSeedEnrollmentAssetAudience)
  {
    [v5 setObject:stashedSeedEnrollmentAssetAudience forKeyedSubscript:@"seedEnrollmentAssetAudience"];
  }

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  if (stashedSeedEnrollmentProgramID)
  {
    [v5 setObject:stashedSeedEnrollmentProgramID forKeyedSubscript:@"seedEnrollmentProgramID"];
  }

  stashedAnalytics = self->_stashedAnalytics;
  if (stashedAnalytics)
  {
    [v5 setObject:stashedAnalytics forKeyedSubscript:@"analytics"];
  }

  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  if (stashedSiriOutputVoice)
  {
    [v5 setObject:stashedSiriOutputVoice forKeyedSubscript:@"siriOutputVoice"];
  }

  if ([(NSString *)self->_stashedSiriLanguage length])
  {
    [v5 setObject:self->_stashedSiriLanguage forKeyedSubscript:@"siriLanguage"];
  }

  stashedActionButtonData = self->_stashedActionButtonData;
  if (stashedActionButtonData)
  {
    [v5 setObject:stashedActionButtonData forKeyedSubscript:@"actionButton"];
  }

  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  if (stashedIPadMultitaskingMode)
  {
    [v5 setObject:stashedIPadMultitaskingMode forKeyedSubscript:@"multitaskingModeKey"];
  }

  stashedIntelligenceState = self->_stashedIntelligenceState;
  if (stashedIntelligenceState)
  {
    [v5 setObject:stashedIntelligenceState forKeyedSubscript:@"intelligenceStateKey"];
  }

  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  if (stashedNotificationOnboardingDefaults)
  {
    [v5 setObject:stashedNotificationOnboardingDefaults forKeyedSubscript:@"notificationOnboardingDefaultsKey"];
  }

  v30 = _BYLoggingFacility();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v30, OS_LOG_TYPE_DEFAULT, "Writing configuration to disk...", buf, 2u);
  }

  v31 = _BYLoggingFacility();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v56 = v5;
    _os_log_impl(&dword_1B862F000, v31, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v54 = 0;
  domain = [v5 writeToURL:v32 error:&v54];
  v34 = v54;

  if ((domain & 1) == 0)
  {
    v35 = _BYLoggingFacility();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      if (_BYIsInternalInstall())
      {
        v36 = 0;
        v37 = v34;
      }

      else if (v34)
      {
        v38 = MEMORY[0x1E696AEC0];
        domain = [v34 domain];
        v37 = [v38 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v34, "code")];
        v36 = 1;
      }

      else
      {
        v36 = 0;
        v37 = 0;
      }

      *buf = 138543362;
      v56 = v37;
      _os_log_impl(&dword_1B862F000, v35, OS_LOG_TYPE_DEFAULT, "Failed to write configuration to safe haven: %{public}@", buf, 0xCu);
      if (v36)
      {
      }
    }

    if (![(NSMutableArray *)self->_stashedPaths count])
    {
      v46 = 0;
      goto LABEL_77;
    }

    v39 = _BYLoggingFacility();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v39, OS_LOG_TYPE_DEFAULT, "Attempting to write minimal configuration...", buf, 2u);
    }

    v40 = objc_opt_new();
    [v40 setObject:&unk_1F30A77C0 forKeyedSubscript:@"version"];
    domain2 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
    v53 = v34;
    v42 = [v40 writeToURL:domain2 error:&v53];
    v43 = v53;

    if ((v42 & 1) == 0)
    {
      v47 = _BYLoggingFacility();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        if (_BYIsInternalInstall())
        {
          v50 = 0;
          v51 = v43;
        }

        else if (v43)
        {
          v52 = MEMORY[0x1E696AEC0];
          domain2 = [v43 domain];
          v51 = [v52 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, objc_msgSend(v43, "code")];
          v50 = 1;
        }

        else
        {
          v50 = 0;
          v51 = 0;
        }

        *buf = 138543362;
        v56 = v51;
        _os_log_impl(&dword_1B862F000, v47, OS_LOG_TYPE_DEFAULT, "Failed to write configuration to safe haven: %{public}@", buf, 0xCu);
        if (v50)
        {
        }
      }

      goto LABEL_75;
    }

    v34 = v43;
    v5 = v40;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v45 = [defaultManager fileExistsAtPath:@"/private/var/buddy/Configuration.plist"];

  if ((v45 & 1) == 0)
  {
    v47 = _BYLoggingFacility();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v47, OS_LOG_TYPE_DEFAULT, "Configuration does not exist in safe haven after writing it!", buf, 2u);
    }

    v43 = v34;
    v40 = v5;
LABEL_75:

    v46 = 0;
    v34 = v43;
    v5 = v40;
    goto LABEL_77;
  }

  v46 = 1;
LABEL_77:

  v48 = *MEMORY[0x1E69E9840];
  return v46;
}

- (BOOL)_stashPaths
{
  p_super = &self->super;
  v78 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_stashedPaths count])
  {
    v25 = 1;
    goto LABEL_68;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v69 = 0;
  v4 = [defaultManager createDirectoryAtPath:@"/private/var/buddy/Root/" withIntermediateDirectories:0 attributes:0 error:&v69];
  domain3 = v69;

  if ((v4 & 1) == 0)
  {
    obja = domain3;
    v26 = _BYLoggingFacility();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_66;
    }

    if (_BYIsInternalInstall())
    {
      v27 = 0;
    }

    else
    {
      v27 = domain3;
      if (domain3)
      {
        v46 = MEMORY[0x1E696AEC0];
        p_super = [obja domain];
        domain3 = [v46 stringWithFormat:@"<Error domain: %@, code %ld>", p_super, objc_msgSend(obja, "code")];
        v27 = 1;
      }

      else
      {
        domain3 = 0;
      }
    }

    *buf = 138543362;
    v72 = domain3;
    _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "Unable to create root within safe haven: %{public}@", buf, 0xCu);
    if (!v27)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = p_super[1].isa;
  v6 = [(objc_class *)obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  if (!v6)
  {
    v56 = 1;
    goto LABEL_38;
  }

  v7 = v6;
  v57 = *v66;
  v56 = 1;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v66 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v65 + 1) + 8 * i);
      v10 = [@"/private/var/buddy/Root/" stringByAppendingPathComponent:v9];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      stringByDeletingLastPathComponent = [v10 stringByDeletingLastPathComponent];
      v64 = domain3;
      v13 = [defaultManager2 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v64];
      v14 = v64;

      v15 = _BYLoggingFacility();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if ((v13 & 1) == 0)
      {
        if (v16)
        {
          if (_BYIsInternalInstall())
          {
            v21 = 0;
            v22 = v14;
          }

          else if (v14)
          {
            v23 = MEMORY[0x1E696AEC0];
            domain = [v14 domain];
            [v23 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v14, "code")];
            v52 = v21 = 1;
            v22 = v52;
          }

          else
          {
            v21 = 0;
            v22 = 0;
          }

          *buf = 138543362;
          v72 = v22;
          _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "Unable to create parent directories within safe haven: %{public}@", buf, 0xCu);
          if (v21)
          {
          }
        }

        goto LABEL_29;
      }

      if (v16)
      {
        *buf = 138412290;
        v72 = v9;
        _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "Copying %@ into the safe haven...", buf, 0xCu);
      }

      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v63 = v14;
      v18 = [defaultManager3 copyItemAtPath:v9 toPath:v10 error:&v63];
      domain3 = v63;

      if ((v18 & 1) == 0)
      {
        v15 = _BYLoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if (_BYIsInternalInstall())
          {
            v19 = 0;
            v20 = domain3;
          }

          else if (domain3)
          {
            v24 = MEMORY[0x1E696AEC0];
            domain2 = [domain3 domain];
            [v24 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, objc_msgSend(domain3, "code")];
            v50 = v19 = 1;
            v20 = v50;
          }

          else
          {
            v19 = 0;
            v20 = 0;
          }

          *buf = 138412802;
          v72 = v9;
          v73 = 2112;
          v74 = v10;
          v75 = 2114;
          v76 = v20;
          _os_log_impl(&dword_1B862F000, v15, OS_LOG_TYPE_DEFAULT, "Failed to copy %@ to %@: %{public}@", buf, 0x20u);
          if (v19)
          {
          }
        }

        v14 = domain3;
LABEL_29:

        v56 = 0;
        domain3 = v14;
      }
    }

    v7 = [(objc_class *)obj countByEnumeratingWithState:&v65 objects:v77 count:16];
  }

  while (v7);
LABEL_38:

  defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
  v62 = domain3;
  v26 = [defaultManager4 subpathsOfDirectoryAtPath:@"/private/var/buddy/Root/" error:&v62];
  obja = v62;

  if (!v26)
  {
    p_super = _BYLoggingFacility();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_65;
    }

    if (_BYIsInternalInstall())
    {
      v44 = 0;
      v45 = obja;
    }

    else
    {
      v44 = obja;
      if (obja)
      {
        v47 = MEMORY[0x1E696AEC0];
        domain3 = [obja domain];
        v45 = [v47 stringWithFormat:@"<Error domain: %@, code %ld>", domain3, objc_msgSend(obja, "code")];
        v44 = 1;
      }

      else
      {
        v45 = 0;
      }
    }

    *buf = 138543362;
    v72 = v45;
    _os_log_impl(&dword_1B862F000, p_super, OS_LOG_TYPE_DEFAULT, "Unable to get contents of safe haven stashed files: %{public}@", buf, 0xCu);
    if (!v44)
    {
      goto LABEL_65;
    }

LABEL_64:
LABEL_65:

LABEL_66:
    v25 = 0;
    goto LABEL_67;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v26 = v26;
  v29 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v59;
    v32 = @"/";
    v33 = @"/private/var/buddy/Root/";
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v59 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v35 = [(__CFString *)v32 stringByAppendingString:*(*(&v58 + 1) + 8 * j)];
        v36 = [(__CFString *)v33 stringByAppendingPathComponent:v35];
        v37 = copyfile([v35 UTF8String], objc_msgSend(v36, "UTF8String"), 0, 4u);
        if (v37 < 0)
        {
          v38 = v37;
          v39 = v31;
          v40 = v33;
          v41 = v32;
          v42 = v26;
          v43 = _BYLoggingFacility();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v72) = v38;
            _os_log_impl(&dword_1B862F000, v43, OS_LOG_TYPE_DEFAULT, "Failed to copy extended attributes: %d", buf, 8u);
          }

          v56 = 0;
          v26 = v42;
          v32 = v41;
          v33 = v40;
          v31 = v39;
        }
      }

      v30 = [v26 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v30);
  }

  v25 = v56;
LABEL_67:

LABEL_68:
  v48 = *MEMORY[0x1E69E9840];
  return v25 & 1;
}

- (BOOL)_commitStash
{
  v17 = *MEMORY[0x1E69E9840];
  loadConfigurationFromDisk = [objc_opt_class() loadConfigurationFromDisk];
  v4 = [loadConfigurationFromDisk mutableCopy];

  [v4 setObject:&unk_1F30A77F0 forKeyedSubscript:@"type"];
  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/buddy/Configuration.plist"];
  v14 = 0;
  v6 = [v4 writeToURL:v5 error:&v14];
  v7 = v14;

  if ((v6 & 1) == 0)
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (_BYIsInternalInstall())
      {
        v9 = 0;
        v10 = v7;
      }

      else if (v7)
      {
        v11 = MEMORY[0x1E696AEC0];
        domain = [v7 domain];
        v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, objc_msgSend(v7, "code")];
        v9 = 1;
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }

      *buf = 138543362;
      v16 = v10;
      _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Failed to mark stash as commited: %{public}@", buf, 0xCu);
      if (v9)
      {
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)postDidRestoreSafeHavenNotification
{
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Posting did restore safe haven notification...", v4, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.purplebuddy.safehaven.restored", 0, 0, 0);
}

- (void)reset
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Resetting settings/configuration to stash...", v4, 2u);
  }

  [(BFFSettingsManager *)self _reset:1];
}

- (void)_reset:(BOOL)_reset
{
  if (_reset)
  {
    v4 = objc_opt_new();
    stashedPaths = self->_stashedPaths;
    self->_stashedPaths = v4;
  }

  v6 = objc_opt_new();
  stashedPreferences = self->_stashedPreferences;
  self->_stashedPreferences = v6;

  v8 = objc_opt_new();
  stashedManagedConfigurationSettings = self->_stashedManagedConfigurationSettings;
  self->_stashedManagedConfigurationSettings = v8;

  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  self->_stashedAssistantEnabled = 0;

  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  self->_stashedAssistantVoiceTriggerEnabled = 0;

  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  self->_stashedSiriDataSharingOptInStatus = 0;

  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  self->_stashedLocationServicesEnabled = 0;

  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  self->_stashedLocationServicesSettings = 0;

  stashedWatchData = self->_stashedWatchData;
  self->_stashedWatchData = 0;

  stashedFlowSkipIdentifiers = self->_stashedFlowSkipIdentifiers;
  self->_stashedFlowSkipIdentifiers = 0;

  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  self->_stashedScreenTimeEnabled = 0;

  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  self->_stashedAutoUpdateEnabled = 0;

  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  self->_stashedAutoDownloadEnabled = 0;

  stashedAccessibilityData = self->_stashedAccessibilityData;
  self->_stashedAccessibilityData = 0;

  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  self->_stashedUserInterfaceStyleMode = 0;

  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = 0;

  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = 0;

  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = 0;

  v25 = objc_opt_new();
  stashedAnalytics = self->_stashedAnalytics;
  self->_stashedAnalytics = v25;

  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = 0;

  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = 0;

  stashedActionButtonData = self->_stashedActionButtonData;
  self->_stashedActionButtonData = 0;

  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  self->_stashedIPadMultitaskingMode = 0;

  stashedIntelligenceState = self->_stashedIntelligenceState;
  self->_stashedIntelligenceState = 0;

  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  self->_stashedNotificationOnboardingDefaults = 0;
}

- (void)applySafeHavenStashWithIsIntelligenceEnabledBlock:(id)block notificationOnboardingDefaultsBlock:(id)defaultsBlock
{
  v48 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  defaultsBlockCopy = defaultsBlock;
  if (([objc_opt_class() hasStashedValuesOnDisk] & 1) == 0)
  {
    stashConfigurationType = [objc_opt_class() stashConfigurationType];
    v13 = _BYLoggingFacility();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (stashConfigurationType == 1)
    {
      if (v14)
      {
        LOWORD(v45) = 0;
        v15 = "Attempted to apply a provisional stash!";
LABEL_107:
        _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, v15, &v45, 2u);
      }
    }

    else if (v14)
    {
      LOWORD(v45) = 0;
      v15 = "No committed stashed values on disk";
      goto LABEL_107;
    }

LABEL_108:

    goto LABEL_109;
  }

  v8 = +[BYPreferencesController buddyPreferencesInternal];
  v9 = [v8 BOOLForKey:@"NeverApplyRestoreStash"];

  v10 = _BYLoggingFacility();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      stashProductVersion = [objc_opt_class() stashProductVersion];
      stashBuildVersion = [objc_opt_class() stashBuildVersion];
      v45 = 138412546;
      *v46 = stashProductVersion;
      *&v46[8] = 2112;
      v47 = stashBuildVersion;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Applying safe haven stash from %@ (%@)", &v45, 0x16u);
    }

    _restoreConfiguration = [(BFFSettingsManager *)self _restoreConfiguration];
    if (_restoreConfiguration == 1)
    {
      if ([(NSMutableDictionary *)self->_stashedPreferences count])
      {
        [(BFFSettingsManager *)self _applyStashedPreferences];
      }

      else
      {
        v24 = _BYLoggingFacility();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v24, OS_LOG_TYPE_DEFAULT, "No stashed preferences found", &v45, 2u);
        }
      }

      if ([(NSMutableDictionary *)self->_stashedManagedConfigurationSettings count])
      {
        [(BFFSettingsManager *)self _applyStashedManagedConfiguration];
      }

      else
      {
        v25 = _BYLoggingFacility();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v25, OS_LOG_TYPE_DEFAULT, "No stashed managed configuration settings found", &v45, 2u);
        }
      }

      if (self->_stashedAssistantEnabled || self->_stashedAssistantVoiceTriggerEnabled || self->_stashedSiriDataSharingOptInStatus || self->_stashedSiriOutputVoice && [(NSString *)self->_stashedSiriLanguage length])
      {
        [(BFFSettingsManager *)self _applyAssistantPreferences];
      }

      else
      {
        v44 = _BYLoggingFacility();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v44, OS_LOG_TYPE_DEFAULT, "No assistant preferences found", &v45, 2u);
        }
      }

      if (self->_stashedLocationServicesEnabled)
      {
        [(BFFSettingsManager *)self _applyLocationServices];
      }

      else
      {
        v26 = _BYLoggingFacility();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v26, OS_LOG_TYPE_DEFAULT, "No location services preference found", &v45, 2u);
        }
      }

      if (self->_stashedLocationServicesSettings)
      {
        [(BFFSettingsManager *)self _applyLocationServicesSettings];
      }

      else
      {
        v27 = _BYLoggingFacility();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v27, OS_LOG_TYPE_DEFAULT, "No location services settings found", &v45, 2u);
        }
      }

      if (self->_stashedWatchData)
      {
        [(BFFSettingsManager *)self _restoreWatchData];
      }

      else
      {
        v28 = _BYLoggingFacility();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v28, OS_LOG_TYPE_DEFAULT, "No watch migration data found", &v45, 2u);
        }
      }

      if (self->_stashedFlowSkipIdentifiers)
      {
        [(BFFSettingsManager *)self _applyStashedFlowSkipIdentifiers];
      }

      else
      {
        v29 = _BYLoggingFacility();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v29, OS_LOG_TYPE_DEFAULT, "No flow skip identifiers found", &v45, 2u);
        }
      }

      if (self->_stashedScreenTimeEnabled)
      {
        [(BFFSettingsManager *)self _applyScreenTimePreferences];
      }

      else
      {
        v30 = _BYLoggingFacility();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v30, OS_LOG_TYPE_DEFAULT, "No Screen Time preferences found", &v45, 2u);
        }
      }

      if (self->_stashedAutoUpdateEnabled)
      {
        [(BFFSettingsManager *)self _applyUpdatePreferences];
      }

      else
      {
        v31 = _BYLoggingFacility();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v31, OS_LOG_TYPE_DEFAULT, "No update preferences found", &v45, 2u);
        }
      }

      if (self->_stashedAccessibilityData)
      {
        [(BFFSettingsManager *)self _restoreAccessibilityData];
      }

      else
      {
        v32 = _BYLoggingFacility();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v32, OS_LOG_TYPE_DEFAULT, "No accessibility data found", &v45, 2u);
        }
      }

      if (self->_stashedUserInterfaceStyleMode)
      {
        [(BFFSettingsManager *)self _applyUserInterfaceStyleMode];
      }

      else
      {
        v33 = _BYLoggingFacility();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v33, OS_LOG_TYPE_DEFAULT, "No user interface style mode data found", &v45, 2u);
        }
      }

      if (self->_stashedSeedEnrollmentProgramName && self->_stashedSeedEnrollmentAssetAudience)
      {
        [(BFFSettingsManager *)self _applySeedEnrollmentData];
      }

      else
      {
        v34 = _BYLoggingFacility();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v34, OS_LOG_TYPE_DEFAULT, "No seed enrollment data found", &v45, 2u);
        }
      }

      if ([(NSMutableArray *)self->_stashedAnalytics count])
      {
        [(BFFSettingsManager *)self _restoreAnalyticsData];
      }

      else
      {
        v35 = _BYLoggingFacility();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v35, OS_LOG_TYPE_DEFAULT, "No analytics data found", &v45, 2u);
        }
      }

      if (self->_stashedActionButtonData)
      {
        [(BFFSettingsManager *)self _restoreActionButtonData];
      }

      else
      {
        v36 = _BYLoggingFacility();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v36, OS_LOG_TYPE_DEFAULT, "No action button data found", &v45, 2u);
        }
      }

      if (self->_stashedIPadMultitaskingMode)
      {
        [(BFFSettingsManager *)self _restoreIPadMultitaskingMode];
      }

      else
      {
        v37 = _BYLoggingFacility();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v37, OS_LOG_TYPE_DEFAULT, "No iPad Multitasking mode", &v45, 2u);
        }
      }

      stashedIntelligenceState = self->_stashedIntelligenceState;
      if (stashedIntelligenceState)
      {
        blockCopy[2](blockCopy, [(NSNumber *)stashedIntelligenceState BOOLValue]);
      }

      else
      {
        v39 = _BYLoggingFacility();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v39, OS_LOG_TYPE_DEFAULT, " No _stashedIntelligenceState", &v45, 2u);
        }
      }

      if (self->_stashedNotificationOnboardingDefaults)
      {
        defaultsBlockCopy[2](defaultsBlockCopy);
      }

      else
      {
        v40 = _BYLoggingFacility();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v45) = 0;
          _os_log_impl(&dword_1B862F000, v40, OS_LOG_TYPE_DEFAULT, "No _stashedNotificationOnboardingDefaults", &v45, 2u);
        }
      }

      [(BFFSettingsManager *)self _restoreStashedFiles];
      v20 = _BYLoggingFacility();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_104;
      }

      LOWORD(v45) = 0;
      v21 = "Finished applying safe haven stash!";
      v22 = v20;
      v23 = 2;
    }

    else
    {
      v19 = _restoreConfiguration;
      v20 = _BYLoggingFacility();
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
LABEL_104:

        v41 = +[BYPreferencesController buddyPreferencesInternal];
        v42 = [v41 BOOLForKey:@"DoNotRemoveStash"];

        if (!v42)
        {
          [objc_opt_class() removeSafeHaven];
          [objc_opt_class() postDidRestoreSafeHavenNotification];
          goto LABEL_109;
        }

        v13 = _BYLoggingFacility();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_108;
        }

        LOWORD(v45) = 0;
        v15 = "Not removing safe haven stash (default set)";
        goto LABEL_107;
      }

      v45 = 67109376;
      *v46 = v19;
      *&v46[4] = 1024;
      *&v46[6] = 1;
      v21 = "Configuration is a different version (%d) expected (%d)!";
      v22 = v20;
      v23 = 14;
    }

    _os_log_impl(&dword_1B862F000, v22, OS_LOG_TYPE_DEFAULT, v21, &v45, v23);
    goto LABEL_104;
  }

  if (v11)
  {
    LOWORD(v45) = 0;
    _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Not applying safe haven stash (default set)", &v45, 2u);
  }

LABEL_109:
  v43 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_restoreConfiguration
{
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/private/var/buddy/Configuration.plist"];
  v4 = [v3 objectForKeyedSubscript:@"defaults"];
  stashedPreferences = self->_stashedPreferences;
  self->_stashedPreferences = v4;

  v6 = [v3 objectForKeyedSubscript:@"managedConfiguration"];
  stashedManagedConfigurationSettings = self->_stashedManagedConfigurationSettings;
  self->_stashedManagedConfigurationSettings = v6;

  v8 = [v3 objectForKeyedSubscript:@"assistant"];
  stashedAssistantEnabled = self->_stashedAssistantEnabled;
  self->_stashedAssistantEnabled = v8;

  v10 = [v3 objectForKeyedSubscript:@"assistantVoiceTrigger"];
  stashedAssistantVoiceTriggerEnabled = self->_stashedAssistantVoiceTriggerEnabled;
  self->_stashedAssistantVoiceTriggerEnabled = v10;

  v12 = [v3 objectForKeyedSubscript:@"siriDataSharingOptInStatus2"];
  stashedSiriDataSharingOptInStatus = self->_stashedSiriDataSharingOptInStatus;
  self->_stashedSiriDataSharingOptInStatus = v12;

  v14 = [v3 objectForKeyedSubscript:@"locationServices"];
  stashedLocationServicesEnabled = self->_stashedLocationServicesEnabled;
  self->_stashedLocationServicesEnabled = v14;

  v16 = [v3 objectForKeyedSubscript:@"locationServicesSettings"];
  stashedLocationServicesSettings = self->_stashedLocationServicesSettings;
  self->_stashedLocationServicesSettings = v16;

  v18 = [v3 objectForKeyedSubscript:@"watch"];
  stashedWatchData = self->_stashedWatchData;
  self->_stashedWatchData = v18;

  v20 = [v3 objectForKeyedSubscript:@"flowSkipIdentifiers"];
  stashedFlowSkipIdentifiers = self->_stashedFlowSkipIdentifiers;
  self->_stashedFlowSkipIdentifiers = v20;

  v22 = [v3 objectForKeyedSubscript:@"screenTime"];
  stashedScreenTimeEnabled = self->_stashedScreenTimeEnabled;
  self->_stashedScreenTimeEnabled = v22;

  v24 = [v3 objectForKeyedSubscript:@"autoDownload"];
  stashedAutoDownloadEnabled = self->_stashedAutoDownloadEnabled;
  self->_stashedAutoDownloadEnabled = v24;

  v26 = [v3 objectForKeyedSubscript:@"autoUpdate"];
  stashedAutoUpdateEnabled = self->_stashedAutoUpdateEnabled;
  self->_stashedAutoUpdateEnabled = v26;

  v28 = [v3 objectForKeyedSubscript:@"accessibilityData"];
  stashedAccessibilityData = self->_stashedAccessibilityData;
  self->_stashedAccessibilityData = v28;

  v30 = [v3 objectForKeyedSubscript:@"userInterfaceStyleMode"];
  stashedUserInterfaceStyleMode = self->_stashedUserInterfaceStyleMode;
  self->_stashedUserInterfaceStyleMode = v30;

  v32 = [v3 objectForKeyedSubscript:@"seedEnrollmentProgramName"];
  stashedSeedEnrollmentProgramName = self->_stashedSeedEnrollmentProgramName;
  self->_stashedSeedEnrollmentProgramName = v32;

  v34 = [v3 objectForKeyedSubscript:@"seedEnrollmentAssetAudience"];
  stashedSeedEnrollmentAssetAudience = self->_stashedSeedEnrollmentAssetAudience;
  self->_stashedSeedEnrollmentAssetAudience = v34;

  v36 = [v3 objectForKeyedSubscript:@"seedEnrollmentProgramID"];
  stashedSeedEnrollmentProgramID = self->_stashedSeedEnrollmentProgramID;
  self->_stashedSeedEnrollmentProgramID = v36;

  v38 = [v3 objectForKeyedSubscript:@"analytics"];
  stashedAnalytics = self->_stashedAnalytics;
  self->_stashedAnalytics = v38;

  v40 = [v3 objectForKeyedSubscript:@"siriOutputVoice"];
  stashedSiriOutputVoice = self->_stashedSiriOutputVoice;
  self->_stashedSiriOutputVoice = v40;

  v42 = [v3 objectForKeyedSubscript:@"siriLanguage"];
  stashedSiriLanguage = self->_stashedSiriLanguage;
  self->_stashedSiriLanguage = v42;

  v44 = [v3 objectForKeyedSubscript:@"actionButton"];
  stashedActionButtonData = self->_stashedActionButtonData;
  self->_stashedActionButtonData = v44;

  v46 = [v3 objectForKeyedSubscript:@"multitaskingModeKey"];
  stashedIPadMultitaskingMode = self->_stashedIPadMultitaskingMode;
  self->_stashedIPadMultitaskingMode = v46;

  v48 = [v3 objectForKeyedSubscript:@"intelligenceStateKey"];
  stashedIntelligenceState = self->_stashedIntelligenceState;
  self->_stashedIntelligenceState = v48;

  v50 = [v3 objectForKeyedSubscript:@"notificationOnboardingDefaultsKey"];
  stashedNotificationOnboardingDefaults = self->_stashedNotificationOnboardingDefaults;
  self->_stashedNotificationOnboardingDefaults = v50;

  v52 = [v3 objectForKeyedSubscript:@"version"];
  unsignedIntegerValue = [v52 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)_applyStashedPreferences
{
  v35 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [(NSMutableDictionary *)self->_stashedPreferences allKeys];
  v17 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
  if (v17)
  {
    v15 = *v24;
    do
    {
      v2 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = v2;
        v3 = *(*(&v23 + 1) + 8 * v2);
        v4 = [(NSMutableDictionary *)self->_stashedPreferences objectForKeyedSubscript:v3];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        allKeys = [v4 allKeys];
        v6 = [allKeys countByEnumeratingWithState:&v19 objects:v33 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v20;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v20 != v8)
              {
                objc_enumerationMutation(allKeys);
              }

              v10 = *(*(&v19 + 1) + 8 * i);
              v11 = [v4 objectForKeyedSubscript:v10];
              v12 = _BYLoggingFacility();
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v28 = v10;
                v29 = 2112;
                v30 = v3;
                v31 = 2112;
                v32 = v11;
                _os_log_impl(&dword_1B862F000, v12, OS_LOG_TYPE_DEFAULT, "Setting default for key %@ in domain %@ to %@...", buf, 0x20u);
              }

              CFPreferencesSetAppValue(v10, v11, v3);
            }

            v7 = [allKeys countByEnumeratingWithState:&v19 objects:v33 count:16];
          }

          while (v7);
        }

        CFPreferencesAppSynchronize(v3);
        v2 = v18 + 1;
      }

      while (v18 + 1 != v17);
      v17 = [obj countByEnumeratingWithState:&v23 objects:v34 count:16];
    }

    while (v17);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_applyStashedManagedConfiguration
{
  v30 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings allKeys];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v22;
    v7 = *MEMORY[0x1E69ADE40];
    *&v4 = 138543618;
    v19 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_stashedManagedConfigurationSettings objectForKeyedSubscript:v9, v19];
        null = [MEMORY[0x1E695DFB0] null];
        v12 = [v10 isEqual:null];

        v13 = _BYLoggingFacility();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            *buf = 138412290;
            v26 = v9;
            _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Removing BOOL value for %@...", buf, 0xCu);
          }

          [(MCProfileConnection *)self->_managedConfiguration removeBoolSetting:v9];
        }

        else
        {
          if (v14)
          {
            bOOLValue = [v10 BOOLValue];
            *buf = v19;
            v16 = @"NO";
            if (bOOLValue)
            {
              v16 = @"YES";
            }

            v26 = v9;
            v27 = 2114;
            v28 = v16;
            _os_log_impl(&dword_1B862F000, v13, OS_LOG_TYPE_DEFAULT, "Setting BOOL value for %{public}@ to %{public}@", buf, 0x16u);
          }

          -[MCProfileConnection setBoolValue:forSetting:](self->_managedConfiguration, "setBoolValue:forSetting:", [v10 BOOLValue], v9);
        }

        if ([v9 isEqualToString:v7])
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.OTACrashCopier.SubmissionPreferenceChanged", 0, 0, 0);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_applyAssistantPreferences
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    domain = [self domain];
    v12 = domain;
    code = [self code];
    self = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Failed to decode Siri output voice %{public}@", v5, v6, v7, v8, v12, code, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__BFFSettingsManager__applyAssistantPreferences__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __48__BFFSettingsManager__applyAssistantPreferences__block_invoke_cold_1(v3);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_applyLocationServices
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_stashedLocationServicesEnabled)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [(NSNumber *)self->_stashedLocationServicesEnabled BOOLValue];
      v6[0] = 67109120;
      v6[1] = bOOLValue;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting location services to %d...", v6, 8u);
    }

    [getCLLocationManagerClass() setLocationServicesEnabled:{-[NSNumber BOOLValue](self->_stashedLocationServicesEnabled, "BOOLValue")}];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)_applyLocationServicesSettings
{
  if (self->_stashedLocationServicesSettings)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting location services from archived blob...", v5, 2u);
    }

    v4 = [getCLLocationManagerClass() _applyArchivedAuthorizationDecisions:self->_stashedLocationServicesSettings];
  }
}

- (void)_applyStashedFlowSkipIdentifiers
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_stashedFlowSkipIdentifiers;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = _BYLoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v17 = v8;
          _os_log_impl(&dword_1B862F000, v9, OS_LOG_TYPE_DEFAULT, "Setting flow as skipped: %{public}@", buf, 0xCu);
        }

        [(BYFlowSkipController *)self->_flowSkipController didSkipFlow:v8];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v5);
  }

  if (![(NSArray *)self->_stashedFlowSkipIdentifiers containsObject:@"siri"])
  {
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Removing follow up for Siri as the stashed skipped flows did not include Siri...", buf, 2u);
    }

    [(BYFlowSkipController *)self->_flowSkipController didCompleteFlow:@"siri"];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_applyScreenTimePreferences
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(MCProfileConnection *)self->_managedConfiguration effectiveBoolValueForSetting:*MEMORY[0x1E69ADE50]]== 2)
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Not setting Screen Time as enabling restrictions is restricted...", buf, 2u);
    }
  }

  else
  {
    bOOLValue = [(NSNumber *)self->_stashedScreenTimeEnabled BOOLValue];
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (bOOLValue)
      {
        v6 = @"YES";
      }

      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Setting Screen Time enabled to %{public}@...", buf, 0xCu);
    }

    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v7 = getSTManagementStateClass_softClass_0;
    v21 = getSTManagementStateClass_softClass_0;
    if (!getSTManagementStateClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSTManagementStateClass_block_invoke_0;
      v23 = &unk_1E7D02730;
      v24 = &v18;
      __getSTManagementStateClass_block_invoke_0(buf);
      v7 = v19[3];
    }

    v8 = v7;
    _Block_object_dispose(&v18, 8);
    v3 = objc_alloc_init(v7);
    v17 = 0;
    v9 = [v3 setScreenTimeEnabled:bOOLValue error:&v17];
    v10 = v17;
    if ((v9 & 1) == 0)
    {
      v11 = _BYLoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = bOOLValue ? @"enable" : @"disable";
        if (_BYIsInternalInstall())
        {
          v14 = 0;
          v15 = v10;
        }

        else if (v10)
        {
          v16 = MEMORY[0x1E696AEC0];
          bOOLValue = [v10 domain];
          v15 = [v16 stringWithFormat:@"<Error domain: %@, code %ld>", bOOLValue, objc_msgSend(v10, "code")];
          v14 = 1;
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2114;
        *&buf[14] = v15;
        _os_log_error_impl(&dword_1B862F000, v11, OS_LOG_TYPE_ERROR, "Failed to %{public}@ Screen Time: %{public}@", buf, 0x16u);
        if (v14)
        {
        }
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_applyUpdatePreferences
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [BYSUManagerClient createWithQueue:0 clientType:1];
  if (self->_stashedAutoDownloadEnabled)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue = [(NSNumber *)self->_stashedAutoDownloadEnabled BOOLValue];
      v6 = @"NO";
      if (bOOLValue)
      {
        v6 = @"YES";
      }

      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1B862F000, v4, OS_LOG_TYPE_DEFAULT, "Setting auto-download for updates enabled to %{public}@...", &v11, 0xCu);
    }

    [v3 enableAutomaticDownload:{-[NSNumber BOOLValue](self->_stashedAutoDownloadEnabled, "BOOLValue")}];
  }

  if (self->_stashedAutoUpdateEnabled)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bOOLValue2 = [(NSNumber *)self->_stashedAutoUpdateEnabled BOOLValue];
      v9 = @"NO";
      if (bOOLValue2)
      {
        v9 = @"YES";
      }

      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Setting auto-update enabled to %{public}@...", &v11, 0xCu);
    }

    [v3 enableAutomaticUpdateV2:{-[NSNumber BOOLValue](self->_stashedAutoUpdateEnabled, "BOOLValue")}];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_restoreStashedFiles
{
  v15 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:@"/private/var/buddy/Root/"];

  if (v5)
  {
    v6 = [(BFFSettingsManager *)self _shovePath:@"/private/var/buddy/Root/" toPath:@"/"];
    v7 = _BYLoggingFacility();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = _BYIsInternalInstall();
        v10 = v6;
        if ((v9 & 1) == 0)
        {
          v11 = MEMORY[0x1E696AEC0];
          domain = [v6 domain];
          v10 = [v11 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v6, "code")];
        }

        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Failed to restore files from safe haven: %{public}@", buf, 0xCu);
        if ((v9 & 1) == 0)
        {
        }
      }
    }

    else if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v7, OS_LOG_TYPE_DEFAULT, "Restored files from save haven!", buf, 2u);
    }
  }

  else
  {
    v6 = _BYLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B862F000, v6, OS_LOG_TYPE_DEFAULT, "No stashed files to apply", buf, 2u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_restoreWatchData
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Passing watch data over to NanoRegistry...", v6, 2u);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getNRMigratorClass_softClass_0;
  v10 = getNRMigratorClass_softClass_0;
  if (!getNRMigratorClass_softClass_0)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNRMigratorClass_block_invoke_0;
    v6[3] = &unk_1E7D02730;
    v6[4] = &v7;
    __getNRMigratorClass_block_invoke_0(v6);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  [v4 ingestPostRestoreMigrationDataForConsentedDevices:self->_stashedWatchData];
}

- (void)_restoreAccessibilityData
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Restoring accessibility settings...", v5, 2u);
  }

  stashedAccessibilityData = self->_stashedAccessibilityData;
  _AXSRestoreSettingsFromDataBlobForBuddy();
}

- (void)_applyUserInterfaceStyleMode
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    integerValue = [(NSNumber *)self->_stashedUserInterfaceStyleMode integerValue];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = integerValue;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Setting user interface style mode to %ld", &buf, 0xCu);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getUISUserInterfaceStyleModeClass_softClass_0;
  v13 = getUISUserInterfaceStyleModeClass_softClass_0;
  if (!getUISUserInterfaceStyleModeClass_softClass_0)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v15 = __getUISUserInterfaceStyleModeClass_block_invoke_0;
    v16 = &unk_1E7D02730;
    v17 = &v10;
    __getUISUserInterfaceStyleModeClass_block_invoke_0(&buf);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 alloc];
  v8 = [v7 initWithDelegate:{0, v10}];
  [v8 setModeValue:{-[NSNumber integerValue](self->_stashedUserInterfaceStyleMode, "integerValue")}];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_applySeedEnrollmentData
{
  v3 = objc_alloc_init(BYBuddyDaemonGeneralClient);
  [(BYBuddyDaemonGeneralClient *)v3 enrollInSeedProgramNamed:self->_stashedSeedEnrollmentProgramName withAssetAudience:self->_stashedSeedEnrollmentAssetAudience programID:self->_stashedSeedEnrollmentProgramID];
}

- (void)_restoreAnalyticsData
{
  v7 = [a2 objectForKeyedSubscript:@"event"];
  *self = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1B862F000, a4, OS_LOG_TYPE_DEBUG, "Sending event %@...", self, 0xCu);
}

- (void)_restoreIPadMultitaskingMode
{
  v19 = *MEMORY[0x1E69E9840];
  currentDevice = [getUIDeviceClass() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      integerValue = [(NSNumber *)self->_stashedIPadMultitaskingMode integerValue];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = integerValue;
      _os_log_impl(&dword_1B862F000, v5, OS_LOG_TYPE_DEFAULT, "Setting iPad multitasking mode %ld", &buf, 0xCu);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v7 = getSBSBuddyMultitaskingFlowClass_softClass;
    v14 = getSBSBuddyMultitaskingFlowClass_softClass;
    if (!getSBSBuddyMultitaskingFlowClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v16 = __getSBSBuddyMultitaskingFlowClass_block_invoke;
      v17 = &unk_1E7D02730;
      v18 = &v11;
      __getSBSBuddyMultitaskingFlowClass_block_invoke(&buf);
      v7 = v12[3];
    }

    v8 = v7;
    _Block_object_dispose(&v11, 8);
    v9 = objc_alloc_init(v7);
    [v9 setCurrentMultitaskingOption:{-[NSNumber unsignedIntValue](self->_stashedIPadMultitaskingMode, "unsignedIntValue", v11)}];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_preferencesForDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSMutableDictionary *)self->_stashedPreferences objectForKeyedSubscript:domainCopy];
  if (!v5)
  {
    v5 = objc_opt_new();
    [(NSMutableDictionary *)self->_stashedPreferences setObject:v5 forKey:domainCopy];
  }

  return v5;
}

- (id)_shovePath:(id)path toPath:(id)toPath
{
  v147 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toPathCopy = toPath;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v133 = 0;
  v117 = pathCopy;
  v8 = [defaultManager attributesOfItemAtPath:pathCopy error:&v133];
  v9 = v133;

  if (!v8)
  {
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = toPathCopy;
      if (_BYIsInternalInstall())
      {
        v12 = 0;
        v13 = v9;
      }

      else if (v9)
      {
        v14 = MEMORY[0x1E696AEC0];
        toPathCopy = [v9 domain];
        v13 = [v14 stringWithFormat:@"<Error domain: %@, code %ld>", toPathCopy, -[NSObject code](v9, "code")];
        v12 = 1;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *buf = 138543362;
      v144 = v13;
      _os_log_impl(&dword_1B862F000, v10, OS_LOG_TYPE_DEFAULT, "Unable to get attributes for source path: %{public}@", buf, 0xCu);
      if (v12)
      {
      }

      toPathCopy = v11;
    }
  }

  v15 = *MEMORY[0x1E696A3D8];
  v16 = [v8 objectForKey:*MEMORY[0x1E696A3D8]];
  v17 = *MEMORY[0x1E696A3E0];
  domain = [v16 isEqual:*MEMORY[0x1E696A3E0]];

  if (!v8)
  {
    v28 = [MEMORY[0x1E696ABC0] errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2000 userInfo:0];
    v27 = v117;
    goto LABEL_117;
  }

  v116 = v8;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v132 = v9;
  v20 = [defaultManager2 attributesOfItemAtPath:toPathCopy error:&v132];
  stringByDeletingLastPathComponent2 = toPathCopy;
  v22 = v132;

  v23 = v20;
  v24 = [v20 objectForKey:v15];
  v25 = *MEMORY[0x1E696A3F0];

  if (v24 == v25)
  {
    v27 = v117;
    if (realpath_DARWIN_EXTSN([stringByDeletingLastPathComponent2 fileSystemRepresentation], buf))
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v30 = [defaultManager3 stringWithFileSystemRepresentation:buf length:strlen(buf)];

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      v131 = v22;
      v32 = [defaultManager4 attributesOfItemAtPath:v30 error:&v131];
      v33 = v131;

      v27 = v117;
      v26 = v32;
      v22 = v33;
      stringByDeletingLastPathComponent2 = v30;
    }

    else
    {
      v26 = v23;
    }
  }

  else
  {
    v26 = v23;
    v27 = v117;
  }

  v34 = [v26 objectForKey:v15];
  v35 = [v34 isEqual:v17];

  v36 = v22;
  if (domain)
  {
    if (!v26)
    {
      v59 = stringByDeletingLastPathComponent2;
      stringByDeletingLastPathComponent = [stringByDeletingLastPathComponent2 stringByDeletingLastPathComponent];
      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v62 = [defaultManager5 fileExistsAtPath:stringByDeletingLastPathComponent];

      if (v62)
      {
        v56 = stringByDeletingLastPathComponent;
        v63 = v36;
      }

      else
      {
        defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
        v127 = v36;
        v56 = stringByDeletingLastPathComponent;
        v76 = [defaultManager6 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v127];
        v63 = v127;

        if ((v76 & 1) == 0)
        {
          v77 = _BYLoggingFacility();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            if (_BYIsInternalInstall())
            {
              v78 = 0;
              v79 = v63;
            }

            else if (v63)
            {
              v94 = MEMORY[0x1E696AEC0];
              domain = [v63 domain];
              v79 = [v94 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v63, "code")];
              v78 = 1;
            }

            else
            {
              v78 = 0;
              v79 = 0;
            }

            *buf = 138412546;
            v144 = v56;
            v145 = 2114;
            v146 = v79;
            _os_log_impl(&dword_1B862F000, v77, OS_LOG_TYPE_DEFAULT, "Failed to create target directory %@: %{public}@", buf, 0x16u);
            if (v78)
            {
            }

            v26 = 0;
          }
        }
      }

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      v126 = v63;
      v98 = [defaultManager7 moveItemAtPath:v27 toPath:v59 error:&v126];
      v36 = v126;

      if (v98)
      {
        v28 = 0;
      }

      else
      {
        v99 = _BYLoggingFacility();
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          v100 = v26;
          if (_BYIsInternalInstall())
          {
            v101 = 0;
            v102 = v36;
          }

          else if (v36)
          {
            v103 = MEMORY[0x1E696AEC0];
            [v36 domain];
            self = v102 = v36;
            v36 = [v103 stringWithFormat:@"<Error domain: %@, code %ld>", self, -[NSObject code](v36, "code")];
            v101 = 1;
          }

          else
          {
            v102 = 0;
            v101 = 0;
          }

          *buf = 138412546;
          v144 = v27;
          v145 = 2114;
          v146 = v36;
          _os_log_impl(&dword_1B862F000, v99, OS_LOG_TYPE_DEFAULT, "Failed to move directory into place %@: %{public}@", buf, 0x16u);
          if (v101)
          {
          }

          v26 = v100;
          v36 = v102;
        }

        v104 = MEMORY[0x1E696ABC0];
        v137[0] = @"source";
        v137[1] = @"target";
        v138[0] = v27;
        v138[1] = v59;
        v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:v137 count:2];
        v28 = [v104 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2001 userInfo:v105];
      }

      toPathCopy = v59;
      goto LABEL_115;
    }

    toPathCopy = stringByDeletingLastPathComponent2;
    if (v35)
    {
      v115 = v26;
      v118 = stringByDeletingLastPathComponent2;
      defaultManager8 = [MEMORY[0x1E696AC08] defaultManager];
      v125 = v36;
      v38 = [defaultManager8 contentsOfDirectoryAtPath:v27 error:&v125];
      domain2 = v125;

      if (domain2)
      {
        v40 = _BYLoggingFacility();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = _BYIsInternalInstall();
          v42 = domain2;
          if ((v41 & 1) == 0)
          {
            v43 = MEMORY[0x1E696AEC0];
            defaultManager8 = [domain2 domain];
            v42 = [v43 stringWithFormat:@"<Error domain: %@, code %ld>", defaultManager8, -[NSObject code](domain2, "code")];
          }

          *buf = 138412546;
          v144 = v27;
          v145 = 2114;
          v146 = v42;
          _os_log_impl(&dword_1B862F000, v40, OS_LOG_TYPE_DEFAULT, "Unable to get contents of %@: %{public}@", buf, 0x16u);
          if ((v41 & 1) == 0)
          {
          }
        }
      }

      v44 = v27;
      v123 = 0u;
      v124 = 0u;
      v121 = 0u;
      v122 = 0u;
      v45 = v38;
      v46 = [v45 countByEnumeratingWithState:&v121 objects:v134 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v122;
        while (2)
        {
          for (i = 0; i != v47; ++i)
          {
            if (*v122 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v50 = *(*(&v121 + 1) + 8 * i);
            v51 = [v44 stringByAppendingPathComponent:v50];
            v52 = [v118 stringByAppendingPathComponent:v50];
            v53 = [(BFFSettingsManager *)self _shovePath:v51 toPath:v52];

            if (v53)
            {
              v74 = v53;

              v36 = v74;
              v56 = v45;
              v28 = v74;
              v27 = v44;
              toPathCopy = v118;
              goto LABEL_114;
            }

            domain2 = 0;
          }

          v47 = [v45 countByEnumeratingWithState:&v121 objects:v134 count:16];
          domain2 = 0;
          v54 = 0;
          if (v47)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v54 = domain2;
      }

      v87 = v45;

      defaultManager9 = [MEMORY[0x1E696AC08] defaultManager];
      v120 = v54;
      v89 = [defaultManager9 removeItemAtPath:v44 error:&v120];
      v36 = v120;

      if (v89)
      {
        v28 = 0;
        v27 = v44;
        toPathCopy = v118;
        v26 = v115;
      }

      else
      {
        v90 = _BYLoggingFacility();
        v27 = v44;
        toPathCopy = v118;
        v26 = v115;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          if (_BYIsInternalInstall())
          {
            v91 = 0;
            v92 = v36;
          }

          else if (v36)
          {
            v96 = MEMORY[0x1E696AEC0];
            domain2 = [v36 domain];
            v92 = v36;
            v36 = [v96 stringWithFormat:@"<Error domain: %@, code %ld>", domain2, -[NSObject code](v36, "code")];
            v91 = 1;
          }

          else
          {
            v92 = 0;
            v91 = 0;
          }

          *buf = 138412546;
          v144 = v44;
          v145 = 2114;
          v146 = v36;
          _os_log_impl(&dword_1B862F000, v90, OS_LOG_TYPE_DEFAULT, "Unable to remove source directory %@: %{public}@", buf, 0x16u);
          if (v91)
          {
          }

          v26 = v115;
          v36 = v92;
        }

        v36 = v36;
        v28 = v36;
      }

      v56 = v87;
      goto LABEL_115;
    }

    v68 = MEMORY[0x1E696ABC0];
    v135[0] = @"source";
    v135[1] = @"target";
    v136[0] = v27;
    v136[1] = stringByDeletingLastPathComponent2;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v136 forKeys:v135 count:2];
    v57 = v68;
    v58 = -2002;
LABEL_46:
    v28 = [v57 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:v58 userInfo:v56];
LABEL_115:

    goto LABEL_116;
  }

  if (v26)
  {
    toPathCopy = stringByDeletingLastPathComponent2;
    if (v35)
    {
      v55 = MEMORY[0x1E696ABC0];
      v141[0] = @"source";
      v141[1] = @"target";
      v142[0] = v27;
      v142[1] = stringByDeletingLastPathComponent2;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:v141 count:2];
      v57 = v55;
      v58 = -2003;
      goto LABEL_46;
    }

    defaultManager10 = [MEMORY[0x1E696AC08] defaultManager];
    v129 = v36;
    v70 = v36;
    v71 = stringByDeletingLastPathComponent2;
    domain3 = [defaultManager10 removeItemAtPath:stringByDeletingLastPathComponent2 error:&v129];
    v67 = v129;

    v115 = v26;
    if (domain3)
    {
      v73 = stringByDeletingLastPathComponent2;
      goto LABEL_103;
    }

    stringByDeletingLastPathComponent2 = _BYLoggingFacility();
    if (os_log_type_enabled(stringByDeletingLastPathComponent2, OS_LOG_TYPE_DEFAULT))
    {
      if (_BYIsInternalInstall())
      {
        v85 = 0;
        v86 = v67;
      }

      else if (v67)
      {
        v93 = MEMORY[0x1E696AEC0];
        domain3 = [v67 domain];
        v86 = [v93 stringWithFormat:@"<Error domain: %@, code %ld>", domain3, -[NSObject code](v67, "code")];
        v85 = 1;
      }

      else
      {
        v85 = 0;
        v86 = 0;
      }

      *buf = 138412546;
      v144 = v71;
      v145 = 2114;
      v146 = v86;
      _os_log_impl(&dword_1B862F000, stringByDeletingLastPathComponent2, OS_LOG_TYPE_DEFAULT, "Unable to remove file at path: %@ - %{public}@", buf, 0x16u);
      if (v85)
      {
      }
    }

    v73 = v71;
  }

  else
  {
    v64 = stringByDeletingLastPathComponent2;
    stringByDeletingLastPathComponent2 = [stringByDeletingLastPathComponent2 stringByDeletingLastPathComponent];
    defaultManager11 = [MEMORY[0x1E696AC08] defaultManager];
    v66 = [defaultManager11 fileExistsAtPath:stringByDeletingLastPathComponent2];

    v115 = 0;
    if (v66)
    {
      v67 = v36;
    }

    else
    {
      defaultManager12 = [MEMORY[0x1E696AC08] defaultManager];
      v130 = v36;
      v81 = [defaultManager12 createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v130];
      v67 = v130;

      if ((v81 & 1) == 0)
      {
        v82 = _BYLoggingFacility();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          if (_BYIsInternalInstall())
          {
            v83 = 0;
            v84 = v67;
          }

          else if (v67)
          {
            v95 = MEMORY[0x1E696AEC0];
            domain = [v67 domain];
            v84 = [v95 stringWithFormat:@"<Error domain: %@, code %ld>", domain, -[NSObject code](v67, "code")];
            v83 = 1;
          }

          else
          {
            v83 = 0;
            v84 = 0;
          }

          *buf = 138412546;
          v144 = stringByDeletingLastPathComponent2;
          v145 = 2114;
          v146 = v84;
          _os_log_impl(&dword_1B862F000, v82, OS_LOG_TYPE_DEFAULT, "Failed to create target directory %@: %{public}@", buf, 0x16u);
          if (v83)
          {
          }
        }
      }
    }

    v73 = v64;
  }

LABEL_103:
  defaultManager13 = [MEMORY[0x1E696AC08] defaultManager];
  v128 = v67;
  v107 = [defaultManager13 moveItemAtPath:v27 toPath:v73 error:&v128];
  v36 = v128;

  if ((v107 & 1) == 0)
  {
    v108 = _BYLoggingFacility();
    toPathCopy = v73;
    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
    {
      if (_BYIsInternalInstall())
      {
        v109 = 0;
        v110 = v36;
      }

      else if (v36)
      {
        v111 = MEMORY[0x1E696AEC0];
        stringByDeletingLastPathComponent2 = [v36 domain];
        v110 = [v111 stringWithFormat:@"<Error domain: %@, code %ld>", stringByDeletingLastPathComponent2, -[NSObject code](v36, "code")];
        v109 = 1;
      }

      else
      {
        v109 = 0;
        v110 = 0;
      }

      *buf = 138412546;
      v144 = v27;
      v145 = 2114;
      v146 = v110;
      _os_log_impl(&dword_1B862F000, v108, OS_LOG_TYPE_DEFAULT, "Failed to move directory into place %@: %{public}@", buf, 0x16u);
      if (v109)
      {
      }
    }

    v112 = MEMORY[0x1E696ABC0];
    v139[0] = @"source";
    v139[1] = @"target";
    v140[0] = v27;
    v140[1] = toPathCopy;
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v140 forKeys:v139 count:2];
    v28 = [v112 errorWithDomain:@"BFFSettingsManagerErrorDomain" code:-2001 userInfo:v56];
LABEL_114:
    v26 = v115;
    goto LABEL_115;
  }

  v28 = 0;
  toPathCopy = v73;
  v26 = v115;
LABEL_116:

  v9 = v36;
  v8 = v116;
LABEL_117:

  v113 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (BOOL)removeSafeHaven
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = _BYLoggingFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEFAULT, "Removing safe haven on disk...", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v24 = 0;
  v4 = [defaultManager removeItemAtPath:@"/private/var/buddy/Configuration.plist" error:&v24];
  v5 = v24;

  if ((v4 & 1) == 0)
  {
    domain = [v5 domain];
    v7 = domain;
    if (domain == *MEMORY[0x1E696A250])
    {
    }

    else
    {
      code = [v5 code];

      if (code != 4)
      {
        domain2 = _BYLoggingFacility();
        if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
        {
          if (_BYIsInternalInstall())
          {
            v10 = 0;
            v11 = v5;
          }

          else if (v5)
          {
            v19 = MEMORY[0x1E696AEC0];
            code = [v5 domain];
            v11 = [v19 stringWithFormat:@"<Error domain: %@, code %ld>", code, objc_msgSend(v5, "code")];
            v10 = 1;
          }

          else
          {
            v10 = 0;
            v11 = 0;
          }

          *buf = 138543362;
          v26 = v11;
          _os_log_impl(&dword_1B862F000, domain2, OS_LOG_TYPE_DEFAULT, "Unable to remove existing safe haven configuration: %{public}@", buf, 0xCu);
          if (v10)
          {
          }
        }

        v16 = 0;
        goto LABEL_31;
      }
    }
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = v5;
  v13 = [defaultManager2 removeItemAtPath:@"/private/var/buddy/Root/" error:&v23];
  v14 = v23;

  if ((v13 & 1) == 0)
  {
    domain2 = [v14 domain];
    if (domain2 == *MEMORY[0x1E696A250])
    {
      v16 = 1;
    }

    else
    {
      code2 = [v14 code];

      if (code2 == 4)
      {
        goto LABEL_13;
      }

      domain2 = _BYLoggingFacility();
      if (os_log_type_enabled(domain2, OS_LOG_TYPE_DEFAULT))
      {
        if (_BYIsInternalInstall())
        {
          v17 = 0;
          v18 = v14;
        }

        else if (v14)
        {
          v20 = MEMORY[0x1E696AEC0];
          code2 = [v14 domain];
          v18 = [v20 stringWithFormat:@"<Error domain: %@, code %ld>", code2, objc_msgSend(v14, "code")];
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v18 = 0;
        }

        *buf = 138543362;
        v26 = v18;
        _os_log_impl(&dword_1B862F000, domain2, OS_LOG_TYPE_DEFAULT, "Unable to remove existing safe haven paths: %{public}@", buf, 0xCu);
        if (v17)
        {
        }
      }

      v16 = 0;
    }

    v5 = v14;
LABEL_31:

    v14 = v5;
    goto LABEL_32;
  }

LABEL_13:
  v16 = 1;
LABEL_32:

  v21 = *MEMORY[0x1E69E9840];
  return v16;
}

+ (void)loadConfigurationFromDisk
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    domain = [self domain];
    v12 = domain;
    code = [self code];
    self = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Unable to read configuration for stash values: %{public}@", v5, v6, v7, v8, v12, code, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __56__BFFSettingsManager_hideStashInSafeHavenAsProvisional___block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v1 = [a1 domain];
    v12 = v1;
    v13 = [a1 code];
    a1 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Failed to get Siri data sharing opt-in status for stashing: %{public}@", v5, v6, v7, v8, v12, v13, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __48__BFFSettingsManager__applyAssistantPreferences__block_invoke_cold_1(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = _BYIsInternalInstall();
  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x1E696AEC0];
    v1 = [a1 domain];
    v12 = v1;
    v13 = [a1 code];
    a1 = [v10 stringWithFormat:@"<Error domain: %@, code %ld>"];
  }

  OUTLINED_FUNCTION_0_2(&dword_1B862F000, v3, v4, "Failed to set Siri data sharing opt-in: %{public}@", v5, v6, v7, v8, v12, v13, 2u);
  if (!v9)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end