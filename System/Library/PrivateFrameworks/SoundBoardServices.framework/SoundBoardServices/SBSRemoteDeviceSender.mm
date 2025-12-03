@interface SBSRemoteDeviceSender
- (SBSRemoteDeviceSender)initWithDevice:(id)device;
- (void)clearHomeSWUpdate;
- (void)createSysdiagnose:(id)sysdiagnose;
- (void)disassociateCurrentNetwork;
- (void)disassociateNetworkWithName:(id)name;
- (void)getAllDebugInfo:(id)info;
- (void)getAllSyncedAlarmsAndTimers:(id)timers;
- (void)getFeatureFlags:(id)flags;
- (void)getInstalledProfiles:(id)profiles;
- (void)getLEDInfo:(id)info;
- (void)getPowerEstimateForInterval:(float)interval reply:(id)reply;
- (void)getSelectDebugInfo:(id)info reply:(id)reply;
- (void)getTuningInfo:(id)info;
- (void)getUserDefaults:(id)defaults;
- (void)getVolume:(id)volume;
- (void)handoffCancelWithHandoffType:(unint64_t)type;
- (void)handoffCompleteWithHandoffType:(unint64_t)type;
- (void)handoffStartWithArtworkColors:(id)colors handoffType:(unint64_t)type;
- (void)handoffStartWithHandoffType:(unint64_t)type;
- (void)handoffUpdateIntensity:(float)intensity handoffType:(unint64_t)type;
- (void)identifyWithOptions:(id)options;
- (void)injectSWUpdateToHome:(id)home;
- (void)installProfileData:(id)data completion:(id)completion;
- (void)intercomWithOptions:(id)options;
- (void)isDeviceStereoFollower:(id)follower;
- (void)obliterate:(id)obliterate;
- (void)reboot:(id)reboot;
- (void)removeProfileByIdentifier:(id)identifier completion:(id)completion;
- (void)render:(id)render;
- (void)requestDeferredReboot;
- (void)resetAllUserDefaults;
- (void)resetUserDefault:(id)default;
- (void)sendButtonCommand:(id)command;
- (void)sendLEDCommand:(id)command;
- (void)setFeatureFlags:(id)flags;
- (void)setHomeUpdateState:(int64_t)state;
- (void)setLEDContents:(id)contents;
- (void)setTuningInfoOnBox:(id)box at:(id)at withValue:(float)value;
- (void)setUserDefaults:(id)defaults withValue:(id)value;
- (void)setVolume:(float)volume;
- (void)siriSay:(id)say;
- (void)suScanForSoftwareUpdate;
- (void)triggerWiFiCoreCapture:(id)capture;
@end

@implementation SBSRemoteDeviceSender

- (void)removeProfileByIdentifier:(id)identifier completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  identifierCopy = identifier;
  client = [(SBSRemoteDeviceSender *)self client];
  v15 = @"identifier";
  v16[0] = identifierCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SBSRemoteDeviceSender_removeProfileByIdentifier_completion___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = completionCopy;
  v11 = completionCopy;
  [client sendRequestID:@"com.apple.sbs.RemoveProfileByIdentifier" request:v9 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __62__SBSRemoteDeviceSender_removeProfileByIdentifier_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"error"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)installProfileData:(id)data completion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  dataCopy = data;
  client = [(SBSRemoteDeviceSender *)self client];
  v15 = @"profileData";
  v16[0] = dataCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SBSRemoteDeviceSender_installProfileData_completion___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = completionCopy;
  v11 = completionCopy;
  [client sendRequestID:@"com.apple.sbs.InstallProfileData" request:v9 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __55__SBSRemoteDeviceSender_installProfileData_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"error"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getInstalledProfiles:(id)profiles
{
  profilesCopy = profiles;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SBSRemoteDeviceSender_getInstalledProfiles___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = profilesCopy;
  v7 = profilesCopy;
  [client sendRequestID:@"com.apple.sbs.GetInstalledProfiles" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __46__SBSRemoteDeviceSender_getInstalledProfiles___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getPowerEstimateForInterval:(float)interval reply:(id)reply
{
  v17[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  client = [(SBSRemoteDeviceSender *)self client];
  v16 = @"interval";
  *&v8 = interval;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SBSRemoteDeviceSender_getPowerEstimateForInterval_reply___block_invoke;
  v14[3] = &unk_279CD5338;
  v15 = replyCopy;
  v12 = replyCopy;
  [client sendRequestID:@"com.apple.sbs.GetPowerEstimateForInterval" request:v10 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __59__SBSRemoteDeviceSender_getPowerEstimateForInterval_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))(0.0, 0.0);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v12 objectForKeyedSubscript:@"joulesEstimate"];
    [v7 floatValue];
    v9 = v8;
    v10 = [v12 objectForKeyedSubscript:@"period"];
    [v10 floatValue];
    (*(v6 + 16))(v6, v9, v11);
  }
}

- (void)getAllSyncedAlarmsAndTimers:(id)timers
{
  timersCopy = timers;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SBSRemoteDeviceSender_getAllSyncedAlarmsAndTimers___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = timersCopy;
  v7 = timersCopy;
  [client sendRequestID:@"com.apple.sbs.SystemRequestFetchAlarmsAndTimers" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __53__SBSRemoteDeviceSender_getAllSyncedAlarmsAndTimers___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)intercomWithOptions:(id)options
{
  v10[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = optionsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.Intercom" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_159];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SBSRemoteDeviceSender_intercomWithOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)identifyWithOptions:(id)options
{
  v10[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = optionsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.Identify" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_157];

  v8 = *MEMORY[0x277D85DE8];
}

void __45__SBSRemoteDeviceSender_identifyWithOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)obliterate:(id)obliterate
{
  v10[1] = *MEMORY[0x277D85DE8];
  obliterateCopy = obliterate;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = obliterateCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.Obliterate" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_155];

  v8 = *MEMORY[0x277D85DE8];
}

void __36__SBSRemoteDeviceSender_obliterate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)requestDeferredReboot
{
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.SystemRequestDeferredReboot" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_153];
}

void __46__SBSRemoteDeviceSender_requestDeferredReboot__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)reboot:(id)reboot
{
  v10[1] = *MEMORY[0x277D85DE8];
  rebootCopy = reboot;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = rebootCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.SystemReboot" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_151];

  v8 = *MEMORY[0x277D85DE8];
}

void __32__SBSRemoteDeviceSender_reboot___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)createSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  v5 = objc_opt_new();
  (*(sysdiagnose + 2))(sysdiagnoseCopy, v5, 0);
}

void __47__SBSRemoteDeviceSender_sysdiagnoseHasStarted___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)isDeviceStereoFollower:(id)follower
{
  followerCopy = follower;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SBSRemoteDeviceSender_isDeviceStereoFollower___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = followerCopy;
  v7 = followerCopy;
  [client sendRequestID:@"com.apple.sbs.StereoLeaderRoleIsDeviceStereoFollower" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __48__SBSRemoteDeviceSender_isDeviceStereoFollower___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v6 = [a2 objectForKey:@"reply"];
  if (v7 || !v6)
  {
    NSLog(&cfstr_FailedToReceiv.isa, v7);
    (*(*(a1 + 32) + 16))(*(a1 + 32), 0);
  }

  else
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v6 BOOLValue]);
  }
}

void __61__SBSRemoteDeviceSender_setDeviceAsStereoLeader_withOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)handoffCompleteWithHandoffType:(unint64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUICompleteKey" request:v5 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_123];

  v8 = *MEMORY[0x277D85DE8];
}

void __56__SBSRemoteDeviceSender_handoffCompleteWithHandoffType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingKs_0.isa, a4);
  }

  else
  {
    NSLog(&cfstr_Ksbsproximityh_0.isa);
  }
}

- (void)handoffCancelWithHandoffType:(unint64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUICancelKey" request:v5 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_115];

  v8 = *MEMORY[0x277D85DE8];
}

void __54__SBSRemoteDeviceSender_handoffCancelWithHandoffType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingKs.isa, a4);
  }

  else
  {
    NSLog(&cfstr_Ksbsproximityh.isa);
  }
}

- (void)handoffUpdateIntensity:(float)intensity handoffType:(unint64_t)type
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"handoffType";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v13[1] = @"intensity";
  v14[0] = v6;
  *&v7 = intensity;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIUpdateIntensityKey" request:v9 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_107];

  v12 = *MEMORY[0x277D85DE8];
}

void __60__SBSRemoteDeviceSender_handoffUpdateIntensity_handoffType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingPr_1.isa, a4);
  }

  else
  {
    NSLog(&cfstr_Proximityhando_2.isa);
  }
}

- (void)handoffStartWithArtworkColors:(id)colors handoffType:(unint64_t)type
{
  v20[2] = *MEMORY[0x277D85DE8];
  data = [colors data];
  v7 = data;
  if (data)
  {
    v19[0] = @"artworkColors";
    v19[1] = @"handoffType";
    v20[0] = data;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v20[1] = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = v20;
    v11 = v19;
    v12 = 2;
  }

  else
  {
    v17 = @"handoffType";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
    v18 = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v18;
    v11 = &v17;
    v12 = 1;
  }

  v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIStartWithArtworkColorsKey" request:v13 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_99];

  v16 = *MEMORY[0x277D85DE8];
}

void __67__SBSRemoteDeviceSender_handoffStartWithArtworkColors_handoffType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingPr_0.isa, a4);
  }

  else
  {
    NSLog(&cfstr_Proximityhando_1.isa);
  }
}

- (void)handoffStartWithHandoffType:(unint64_t)type
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIStartKey" request:v5 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_91];

  v8 = *MEMORY[0x277D85DE8];
}

void __53__SBSRemoteDeviceSender_handoffStartWithHandoffType___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingPr.isa, a4);
  }

  else
  {
    NSLog(&cfstr_Proximityhando_0.isa);
  }
}

- (void)render:(id)render
{
  renderCopy = render;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoRender" request:renderCopy destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_86];
}

void __32__SBSRemoteDeviceSender_render___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setVolume:(float)volume
{
  v12[1] = *MEMORY[0x277D85DE8];
  client = [(SBSRemoteDeviceSender *)self client];
  v11 = @"volume";
  *&v6 = volume;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetVolume" request:v8 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_84];

  v10 = *MEMORY[0x277D85DE8];
}

void __35__SBSRemoteDeviceSender_setVolume___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)getVolume:(id)volume
{
  volumeCopy = volume;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SBSRemoteDeviceSender_getVolume___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = volumeCopy;
  v7 = volumeCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetVolume" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __35__SBSRemoteDeviceSender_getVolume___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))(0.0);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    [v7 floatValue];
    (*(v6 + 16))(v6);
  }
}

- (void)suScanForSoftwareUpdate
{
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSUScanForSoftwareUpdate" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_79];
}

void __48__SBSRemoteDeviceSender_suScanForSoftwareUpdate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)siriSay:(id)say
{
  v10[1] = *MEMORY[0x277D85DE8];
  sayCopy = say;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"phrase";
  v10[0] = sayCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSiriSay" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_77];

  v8 = *MEMORY[0x277D85DE8];
}

void __33__SBSRemoteDeviceSender_siriSay___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setLEDContents:(id)contents
{
  v10[1] = *MEMORY[0x277D85DE8];
  contentsCopy = contents;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"LEDContents";
  v10[0] = contentsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetLEDContents" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_72];

  v8 = *MEMORY[0x277D85DE8];
}

void __40__SBSRemoteDeviceSender_setLEDContents___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setFeatureFlags:(id)flags
{
  v10[1] = *MEMORY[0x277D85DE8];
  flagsCopy = flags;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"featureFlags";
  v10[0] = flagsCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetFeatureFlags" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_67];

  v8 = *MEMORY[0x277D85DE8];
}

void __41__SBSRemoteDeviceSender_setFeatureFlags___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)getFeatureFlags:(id)flags
{
  flagsCopy = flags;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getFeatureFlags___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = flagsCopy;
  v7 = flagsCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetFeatureFlags" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __41__SBSRemoteDeviceSender_getFeatureFlags___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)disassociateNetworkWithName:(id)name
{
  v10[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = nameCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoDisassociateNetworkWithName" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_62];

  v8 = *MEMORY[0x277D85DE8];
}

void __53__SBSRemoteDeviceSender_disassociateNetworkWithName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)disassociateCurrentNetwork
{
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoDisassociateCurrentNetwork" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_60];
}

void __51__SBSRemoteDeviceSender_disassociateCurrentNetwork__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

void __40__SBSRemoteDeviceSender_setWifiEnabled___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

void __40__SBSRemoteDeviceSender_setBootSpinner___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)clearHomeSWUpdate
{
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetHomeUpdateState" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_54];
}

void __42__SBSRemoteDeviceSender_clearHomeSWUpdate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setHomeUpdateState:(int64_t)state
{
  v11[1] = *MEMORY[0x277D85DE8];
  client = [(SBSRemoteDeviceSender *)self client];
  v10 = @"state";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetHomeUpdateState" request:v7 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_52];

  v9 = *MEMORY[0x277D85DE8];
}

void __44__SBSRemoteDeviceSender_setHomeUpdateState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)injectSWUpdateToHome:(id)home
{
  v10[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = homeCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoInjectSWUpdateToHome" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_47];

  v8 = *MEMORY[0x277D85DE8];
}

void __46__SBSRemoteDeviceSender_injectSWUpdateToHome___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)sendButtonCommand:(id)command
{
  v10[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = commandCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSendButtonCommand" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_45];

  v8 = *MEMORY[0x277D85DE8];
}

void __43__SBSRemoteDeviceSender_sendButtonCommand___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)triggerWiFiCoreCapture:(id)capture
{
  v10[1] = *MEMORY[0x277D85DE8];
  captureCopy = capture;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = captureCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.TriggerWiFiCoreCapture" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_43];

  v8 = *MEMORY[0x277D85DE8];
}

void __48__SBSRemoteDeviceSender_triggerWiFiCoreCapture___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)sendLEDCommand:(id)command
{
  v10[1] = *MEMORY[0x277D85DE8];
  commandCopy = command;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = commandCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSendLEDCommand" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_41];

  v8 = *MEMORY[0x277D85DE8];
}

void __40__SBSRemoteDeviceSender_sendLEDCommand___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)resetUserDefault:(id)default
{
  v10[1] = *MEMORY[0x277D85DE8];
  defaultCopy = default;
  client = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = defaultCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoResetUserDefault" request:v6 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_39];

  v8 = *MEMORY[0x277D85DE8];
}

void __42__SBSRemoteDeviceSender_resetUserDefault___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)resetAllUserDefaults
{
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoResetAllUserDefaults" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_37];
}

void __45__SBSRemoteDeviceSender_resetAllUserDefaults__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setUserDefaults:(id)defaults withValue:(id)value
{
  v13[2] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  defaultsCopy = defaults;
  client = [(SBSRemoteDeviceSender *)self client];
  v12[0] = @"defaultKey";
  v12[1] = @"withValue";
  v13[0] = defaultsCopy;
  v13[1] = valueCopy;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetUserDefaults" request:v9 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_35];

  v11 = *MEMORY[0x277D85DE8];
}

void __51__SBSRemoteDeviceSender_setUserDefaults_withValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)getUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getUserDefaults___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = defaultsCopy;
  v7 = defaultsCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetUserDefaults" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __41__SBSRemoteDeviceSender_getUserDefaults___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

void __34__SBSRemoteDeviceSender_stopTone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

void __34__SBSRemoteDeviceSender_playTone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)setTuningInfoOnBox:(id)box at:(id)at withValue:(float)value
{
  v17[3] = *MEMORY[0x277D85DE8];
  atCopy = at;
  boxCopy = box;
  client = [(SBSRemoteDeviceSender *)self client];
  v16[0] = @"box";
  v16[1] = @"at";
  v17[0] = boxCopy;
  v17[1] = atCopy;
  v16[2] = @"withValue";
  *&v11 = value;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  [client sendRequestID:@"com.apple.sbs.DebugInfoSetTuningInfoOnBox" request:v13 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_863];

  v15 = *MEMORY[0x277D85DE8];
}

void __57__SBSRemoteDeviceSender_setTuningInfoOnBox_at_withValue___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
  }
}

- (void)getTuningInfo:(id)info
{
  infoCopy = info;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SBSRemoteDeviceSender_getTuningInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = infoCopy;
  v7 = infoCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetTuningInfo" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __39__SBSRemoteDeviceSender_getTuningInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getLEDInfo:(id)info
{
  infoCopy = info;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SBSRemoteDeviceSender_getLEDInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = infoCopy;
  v7 = infoCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetLEDInfo" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __36__SBSRemoteDeviceSender_getLEDInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getSelectDebugInfo:(id)info reply:(id)reply
{
  v16[1] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  replyCopy = reply;
  if (infoCopy)
  {
    v15 = @"keys";
    v16[0] = infoCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SBSRemoteDeviceSender_getSelectDebugInfo_reply___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = replyCopy;
  v11 = replyCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetSelectDebugInfo" request:v8 destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __50__SBSRemoteDeviceSender_getSelectDebugInfo_reply___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (void)getAllDebugInfo:(id)info
{
  infoCopy = info;
  client = [(SBSRemoteDeviceSender *)self client];
  destinationID = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getAllDebugInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = infoCopy;
  v7 = infoCopy;
  [client sendRequestID:@"com.apple.sbs.DebugInfoGetAllDebugInfo" request:MEMORY[0x277CBEC10] destinationID:destinationID options:MEMORY[0x277CBEC10] responseHandler:v8];
}

void __41__SBSRemoteDeviceSender_getAllDebugInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  if (a4)
  {
    NSLog(&cfstr_ErrorSendingRe.isa, a4);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    NSLog(&cfstr_CompanionSentC.isa);
    v6 = *(a1 + 32);
    v7 = [v8 objectForKeyedSubscript:@"reply"];
    (*(v6 + 16))(v6, v7);
  }
}

- (SBSRemoteDeviceSender)initWithDevice:(id)device
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = SBSRemoteDeviceSender;
  v6 = [(SBSRemoteDeviceSender *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    objc_storeStrong(&v6->_destinationID, device);
    v8 = dispatch_queue_create("com.apple.soundboardservices.RapportMessageHandlingQueue", v7);
    rapportQueue = v6->_rapportQueue;
    v6->_rapportQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277D44160]);
    client = v6->_client;
    v6->_client = v10;

    rapportQueue = [(SBSRemoteDeviceSender *)v6 rapportQueue];
    [(RPCompanionLinkClient *)v6->_client setDispatchQueue:rapportQueue];

    [(RPCompanionLinkClient *)v6->_client setControlFlags:8196];
    v13 = dispatch_group_create();
    dispatch_group_enter(v13);
    v14 = v6->_client;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __40__SBSRemoteDeviceSender_initWithDevice___block_invoke;
    v18[3] = &unk_279CD5310;
    v19 = v13;
    v15 = v13;
    [(RPCompanionLinkClient *)v14 activateWithCompletion:v18];
    v16 = dispatch_time(0, 10000000000);
    dispatch_group_wait(v15, v16);
  }

  return v6;
}

void __40__SBSRemoteDeviceSender_initWithDevice___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _SBSLoggingFacility();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Error activating companion link client '%@'", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_26B246000, v5, OS_LOG_TYPE_DEFAULT, "companion link client activated succcessfully", &v7, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v6 = *MEMORY[0x277D85DE8];
}

@end