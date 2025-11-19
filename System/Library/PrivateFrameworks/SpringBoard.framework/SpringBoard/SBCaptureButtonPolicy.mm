@interface SBCaptureButtonPolicy
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SBCaptureButtonPolicy)initWithConsoleModeEnabled:(BOOL)a3 wakeEnabled:(BOOL)a4 directLaunchAfterUnsuppressEnabled:(BOOL)a5 directLaunchAfterUnsuppressGracePeriod:(double)a6 deviceStationaryDetectionEnabled:(BOOL)a7 deviceStationaryDetectionEnabledWhenUnlocked:(BOOL)a8 deviceStationaryDetectionStationaryThreshold:(double)a9 deviceStationaryDetectionStationaryPickUpBuffer:(double)a10 deviceStationaryDetectionStationaryDebounceInterval:(double)a11 suppressionEnabled:(BOOL)a12 launchIfUnobstructedWhileButtonDownEnabled:(BOOL)a13 launchIfUnobstructedPromptlyAfterButtonUpEnabled:(BOOL)a14 wakingBacklightStates:(id)a15 visionIntelligenceEnabled:(BOOL)a16;
- (SBCaptureButtonPolicy)initWithDictionary:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonPolicy

- (SBCaptureButtonPolicy)initWithConsoleModeEnabled:(BOOL)a3 wakeEnabled:(BOOL)a4 directLaunchAfterUnsuppressEnabled:(BOOL)a5 directLaunchAfterUnsuppressGracePeriod:(double)a6 deviceStationaryDetectionEnabled:(BOOL)a7 deviceStationaryDetectionEnabledWhenUnlocked:(BOOL)a8 deviceStationaryDetectionStationaryThreshold:(double)a9 deviceStationaryDetectionStationaryPickUpBuffer:(double)a10 deviceStationaryDetectionStationaryDebounceInterval:(double)a11 suppressionEnabled:(BOOL)a12 launchIfUnobstructedWhileButtonDownEnabled:(BOOL)a13 launchIfUnobstructedPromptlyAfterButtonUpEnabled:(BOOL)a14 wakingBacklightStates:(id)a15 visionIntelligenceEnabled:(BOOL)a16
{
  v27 = a15;
  v31.receiver = self;
  v31.super_class = SBCaptureButtonPolicy;
  v28 = [(SBCaptureButtonPolicy *)&v31 init];
  v29 = v28;
  if (v28)
  {
    v28->_consoleModeMitigationEnabled = a3;
    v28->_wakeEnabled = a4;
    v28->_directLaunchAfterUnsuppressEnabled = a5;
    v28->_deviceStationaryDetectionEnabled = a7;
    v28->_deviceStationaryDetectionEnabledWhenUnlocked = a8;
    v28->_directLaunchAfterUnsuppressGracePeriod = a6;
    v28->_deviceStationaryDetectionStationaryThreshold = a9;
    v28->_deviceStationaryDetectionStationaryPickUpBuffer = a10;
    v28->_deviceStationaryDetectionStationaryDebounceInterval = a11;
    v28->_suppressionEnabled = a12;
    v28->_launchIfUnobstructedWhileButtonDownEnabled = a13;
    v28->_launchIfUnobstructedPromptlyAfterButtonUpEnabled = a14;
    objc_storeStrong(&v28->_wakingBacklightStates, a15);
    v29->_visionIntelligenceEnabled = a16;
  }

  return v29;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  consoleModeMitigationEnabled = self->_consoleModeMitigationEnabled;
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke;
  v78[3] = &unk_2783ACE58;
  v7 = v4;
  v79 = v7;
  v8 = [v5 appendBool:consoleModeMitigationEnabled counterpart:v78];
  wakeEnabled = self->_wakeEnabled;
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_2;
  v76[3] = &unk_2783ACE58;
  v10 = v7;
  v77 = v10;
  v11 = [v5 appendBool:wakeEnabled counterpart:v76];
  directLaunchAfterUnsuppressEnabled = self->_directLaunchAfterUnsuppressEnabled;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_3;
  v74[3] = &unk_2783ACE58;
  v13 = v10;
  v75 = v13;
  v14 = [v5 appendBool:directLaunchAfterUnsuppressEnabled counterpart:v74];
  directLaunchAfterUnsuppressGracePeriod = self->_directLaunchAfterUnsuppressGracePeriod;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_4;
  v72[3] = &unk_2783ACE08;
  v16 = v13;
  v73 = v16;
  v17 = [v5 appendDouble:v72 counterpart:directLaunchAfterUnsuppressGracePeriod];
  deviceStationaryDetectionEnabled = self->_deviceStationaryDetectionEnabled;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_5;
  v70[3] = &unk_2783ACE58;
  v19 = v16;
  v71 = v19;
  v20 = [v5 appendBool:deviceStationaryDetectionEnabled counterpart:v70];
  deviceStationaryDetectionEnabledWhenUnlocked = self->_deviceStationaryDetectionEnabledWhenUnlocked;
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_6;
  v68[3] = &unk_2783ACE58;
  v22 = v19;
  v69 = v22;
  v23 = [v5 appendBool:deviceStationaryDetectionEnabledWhenUnlocked counterpart:v68];
  deviceStationaryDetectionStationaryThreshold = self->_deviceStationaryDetectionStationaryThreshold;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_7;
  v66[3] = &unk_2783ACE08;
  v25 = v22;
  v67 = v25;
  v26 = [v5 appendDouble:v66 counterpart:deviceStationaryDetectionStationaryThreshold];
  deviceStationaryDetectionStationaryPickUpBuffer = self->_deviceStationaryDetectionStationaryPickUpBuffer;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_8;
  v64[3] = &unk_2783ACE08;
  v28 = v25;
  v65 = v28;
  v29 = [v5 appendDouble:v64 counterpart:deviceStationaryDetectionStationaryPickUpBuffer];
  deviceStationaryDetectionStationaryDebounceInterval = self->_deviceStationaryDetectionStationaryDebounceInterval;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_9;
  v62[3] = &unk_2783ACE08;
  v31 = v28;
  v63 = v31;
  v32 = [v5 appendDouble:v62 counterpart:deviceStationaryDetectionStationaryDebounceInterval];
  suppressionEnabled = self->_suppressionEnabled;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_10;
  v60[3] = &unk_2783ACE58;
  v34 = v31;
  v61 = v34;
  v35 = [v5 appendBool:suppressionEnabled counterpart:v60];
  launchIfUnobstructedWhileButtonDownEnabled = self->_launchIfUnobstructedWhileButtonDownEnabled;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_11;
  v58[3] = &unk_2783ACE58;
  v37 = v34;
  v59 = v37;
  v38 = [v5 appendBool:launchIfUnobstructedWhileButtonDownEnabled counterpart:v58];
  launchIfUnobstructedPromptlyAfterButtonUpEnabled = self->_launchIfUnobstructedPromptlyAfterButtonUpEnabled;
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_12;
  v56[3] = &unk_2783ACE58;
  v40 = v37;
  v57 = v40;
  v41 = [v5 appendBool:launchIfUnobstructedPromptlyAfterButtonUpEnabled counterpart:v56];
  wakingBacklightStates = self->_wakingBacklightStates;
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __33__SBCaptureButtonPolicy_isEqual___block_invoke_13;
  v54[3] = &unk_2783B53E0;
  v43 = v40;
  v55 = v43;
  v44 = [v5 appendObject:wakingBacklightStates counterpart:v54];
  visionIntelligenceEnabled = self->_visionIntelligenceEnabled;
  v49 = MEMORY[0x277D85DD0];
  v50 = 3221225472;
  v51 = __33__SBCaptureButtonPolicy_isEqual___block_invoke_14;
  v52 = &unk_2783ACE58;
  v53 = v43;
  v46 = v43;
  v47 = [v5 appendBool:visionIntelligenceEnabled counterpart:&v49];
  LOBYTE(v43) = [v5 isEqual];

  return v43;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_consoleModeMitigationEnabled];
  v5 = [v3 appendBool:self->_wakeEnabled];
  v6 = [v3 appendBool:self->_directLaunchAfterUnsuppressEnabled];
  v7 = [v3 appendDouble:self->_directLaunchAfterUnsuppressGracePeriod];
  v8 = [v3 appendBool:self->_deviceStationaryDetectionEnabled];
  v9 = [v3 appendBool:self->_deviceStationaryDetectionEnabledWhenUnlocked];
  v10 = [v3 appendDouble:self->_deviceStationaryDetectionStationaryThreshold];
  v11 = [v3 appendDouble:self->_deviceStationaryDetectionStationaryPickUpBuffer];
  v12 = [v3 appendDouble:self->_deviceStationaryDetectionStationaryDebounceInterval];
  v13 = [v3 appendBool:self->_suppressionEnabled];
  v14 = [v3 appendBool:self->_launchIfUnobstructedWhileButtonDownEnabled];
  v15 = [v3 appendBool:self->_launchIfUnobstructedPromptlyAfterButtonUpEnabled];
  v16 = [v3 appendObject:self->_wakingBacklightStates];
  v17 = [v3 appendBool:self->_visionIntelligenceEnabled];
  v18 = [v3 hash];

  return v18;
}

- (NSString)description
{
  v2 = [(SBCaptureButtonPolicy *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (id)dictionaryRepresentation
{
  v20[14] = *MEMORY[0x277D85DE8];
  v19[0] = @"ConsoleModeMitigationEnabled";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_consoleModeMitigationEnabled];
  v20[0] = v18;
  v19[1] = @"WakeEnabled";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_wakeEnabled];
  v20[1] = v17;
  v19[2] = @"DirectLaunchAfterUnsuppressEnabled";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_directLaunchAfterUnsuppressEnabled];
  v20[2] = v16;
  v19[3] = @"DirectLaunchAfterUnsuppressGracePeriod";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_directLaunchAfterUnsuppressGracePeriod];
  v20[3] = v15;
  v19[4] = @"DeviceStationaryDetectionEnabled";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceStationaryDetectionEnabled];
  v20[4] = v14;
  v19[5] = @"DeviceStationaryDetectionEnabledWhenUnlocked";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceStationaryDetectionEnabledWhenUnlocked];
  v20[5] = v3;
  v19[6] = @"DeviceStationaryDetectionStationaryThreshold";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deviceStationaryDetectionStationaryThreshold];
  v20[6] = v4;
  v19[7] = @"DeviceStationaryDetectionStationaryPickUpBuffer";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deviceStationaryDetectionStationaryPickUpBuffer];
  v20[7] = v5;
  v19[8] = @"DeviceStationaryDetectionStationaryDebounceInterval";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deviceStationaryDetectionStationaryDebounceInterval];
  v20[8] = v6;
  v19[9] = @"SuppressionEnabled";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_suppressionEnabled];
  v20[9] = v7;
  v19[10] = @"LaunchIfUnobstructedWhileButtonDownEnabled";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_launchIfUnobstructedWhileButtonDownEnabled];
  v20[10] = v8;
  v19[11] = @"LaunchIfUnobstructedPromptlyAfterButtonUpEnabled";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_launchIfUnobstructedPromptlyAfterButtonUpEnabled];
  v20[11] = v9;
  v19[12] = @"WakingBacklightStates";
  v10 = [(NSArray *)self->_wakingBacklightStates bs_compactMap:&__block_literal_global_145];
  v20[12] = v10;
  v19[13] = @"VisionIntelligenceEnabled";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_visionIntelligenceEnabled];
  v20[13] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:14];

  return v12;
}

__CFString *__49__SBCaptureButtonPolicy_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];

  return SBBacklightStateDescription(v2);
}

- (SBCaptureButtonPolicy)initWithDictionary:(id)a3
{
  v3 = a3;
  v39 = [v3 objectForKeyedSubscript:@"ConsoleModeMitigationEnabled"];
  v33 = [v39 BOOLValue];
  v38 = [v3 objectForKeyedSubscript:@"WakeEnabled"];
  v31 = [v38 BOOLValue];
  v37 = [v3 objectForKeyedSubscript:@"DirectLaunchAfterUnsuppressEnabled"];
  v30 = [v37 BOOLValue];
  v36 = [v3 objectForKeyedSubscript:@"DirectLaunchAfterUnsuppressGracePeriod"];
  [v36 doubleValue];
  v5 = v4;
  v34 = [v3 objectForKeyedSubscript:@"DeviceStationaryDetectionEnabled"];
  v27 = [v34 BOOLValue];
  v32 = [v3 objectForKeyedSubscript:@"DeviceStationaryDetectionEnabledWhenUnlocked"];
  v26 = [v32 BOOLValue];
  v29 = [v3 objectForKeyedSubscript:@"DeviceStationaryDetectionStationaryThreshold"];
  [v29 doubleValue];
  v7 = v6;
  v28 = [v3 objectForKeyedSubscript:@"DeviceStationaryDetectionStationaryPickUpBuffer"];
  [v28 doubleValue];
  v9 = v8;
  v25 = [v3 objectForKeyedSubscript:@"DeviceStationaryDetectionStationaryDebounceInterval"];
  [v25 doubleValue];
  v11 = v10;
  v12 = [v3 objectForKeyedSubscript:@"SuppressionEnabled"];
  v13 = [v12 BOOLValue];
  v14 = [v3 objectForKeyedSubscript:@"LaunchIfUnobstructedWhileButtonDownEnabled"];
  v15 = [v14 BOOLValue];
  v16 = [v3 objectForKeyedSubscript:@"LaunchIfUnobstructedPromptlyAfterButtonUpEnabled"];
  v17 = [v16 BOOLValue];
  v18 = [v3 objectForKeyedSubscript:@"WakingBacklightStates"];
  v19 = [v18 bs_compactMap:&__block_literal_global_50_2];
  v20 = [v3 objectForKeyedSubscript:@"VisionIntelligenceEnabled"];

  LOBYTE(v24) = [v20 BOOLValue];
  BYTE1(v23) = v17;
  LOBYTE(v23) = v15;
  v21 = [(SBCaptureButtonPolicy *)self initWithConsoleModeEnabled:v33 wakeEnabled:v31 directLaunchAfterUnsuppressEnabled:v30 directLaunchAfterUnsuppressGracePeriod:v27 deviceStationaryDetectionEnabled:v26 deviceStationaryDetectionEnabledWhenUnlocked:v13 deviceStationaryDetectionStationaryThreshold:v5 deviceStationaryDetectionStationaryPickUpBuffer:v7 deviceStationaryDetectionStationaryDebounceInterval:v9 suppressionEnabled:v11 launchIfUnobstructedWhileButtonDownEnabled:v23 launchIfUnobstructedPromptlyAfterButtonUpEnabled:v19 wakingBacklightStates:v24 visionIntelligenceEnabled:?];

  return v21;
}

uint64_t __44__SBCaptureButtonPolicy_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = SBBacklightStateFromString(a2);

  return [v2 numberWithInteger:v3];
}

@end