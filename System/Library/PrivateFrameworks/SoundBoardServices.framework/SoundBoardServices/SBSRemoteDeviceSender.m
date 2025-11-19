@interface SBSRemoteDeviceSender
- (SBSRemoteDeviceSender)initWithDevice:(id)a3;
- (void)clearHomeSWUpdate;
- (void)createSysdiagnose:(id)a3;
- (void)disassociateCurrentNetwork;
- (void)disassociateNetworkWithName:(id)a3;
- (void)getAllDebugInfo:(id)a3;
- (void)getAllSyncedAlarmsAndTimers:(id)a3;
- (void)getFeatureFlags:(id)a3;
- (void)getInstalledProfiles:(id)a3;
- (void)getLEDInfo:(id)a3;
- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4;
- (void)getSelectDebugInfo:(id)a3 reply:(id)a4;
- (void)getTuningInfo:(id)a3;
- (void)getUserDefaults:(id)a3;
- (void)getVolume:(id)a3;
- (void)handoffCancelWithHandoffType:(unint64_t)a3;
- (void)handoffCompleteWithHandoffType:(unint64_t)a3;
- (void)handoffStartWithArtworkColors:(id)a3 handoffType:(unint64_t)a4;
- (void)handoffStartWithHandoffType:(unint64_t)a3;
- (void)handoffUpdateIntensity:(float)a3 handoffType:(unint64_t)a4;
- (void)identifyWithOptions:(id)a3;
- (void)injectSWUpdateToHome:(id)a3;
- (void)installProfileData:(id)a3 completion:(id)a4;
- (void)intercomWithOptions:(id)a3;
- (void)isDeviceStereoFollower:(id)a3;
- (void)obliterate:(id)a3;
- (void)reboot:(id)a3;
- (void)removeProfileByIdentifier:(id)a3 completion:(id)a4;
- (void)render:(id)a3;
- (void)requestDeferredReboot;
- (void)resetAllUserDefaults;
- (void)resetUserDefault:(id)a3;
- (void)sendButtonCommand:(id)a3;
- (void)sendLEDCommand:(id)a3;
- (void)setFeatureFlags:(id)a3;
- (void)setHomeUpdateState:(int64_t)a3;
- (void)setLEDContents:(id)a3;
- (void)setTuningInfoOnBox:(id)a3 at:(id)a4 withValue:(float)a5;
- (void)setUserDefaults:(id)a3 withValue:(id)a4;
- (void)setVolume:(float)a3;
- (void)siriSay:(id)a3;
- (void)suScanForSoftwareUpdate;
- (void)triggerWiFiCoreCapture:(id)a3;
@end

@implementation SBSRemoteDeviceSender

- (void)removeProfileByIdentifier:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBSRemoteDeviceSender *)self client];
  v15 = @"identifier";
  v16[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SBSRemoteDeviceSender_removeProfileByIdentifier_completion___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = v6;
  v11 = v6;
  [v8 sendRequestID:@"com.apple.sbs.RemoveProfileByIdentifier" request:v9 destinationID:v10 options:MEMORY[0x277CBEC10] responseHandler:v13];

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

- (void)installProfileData:(id)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBSRemoteDeviceSender *)self client];
  v15 = @"profileData";
  v16[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SBSRemoteDeviceSender_installProfileData_completion___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = v6;
  v11 = v6;
  [v8 sendRequestID:@"com.apple.sbs.InstallProfileData" request:v9 destinationID:v10 options:MEMORY[0x277CBEC10] responseHandler:v13];

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

- (void)getInstalledProfiles:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SBSRemoteDeviceSender_getInstalledProfiles___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.GetInstalledProfiles" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(SBSRemoteDeviceSender *)self client];
  v16 = @"interval";
  *&v8 = a3;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [(SBSRemoteDeviceSender *)self destinationID];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__SBSRemoteDeviceSender_getPowerEstimateForInterval_reply___block_invoke;
  v14[3] = &unk_279CD5338;
  v15 = v6;
  v12 = v6;
  [v7 sendRequestID:@"com.apple.sbs.GetPowerEstimateForInterval" request:v10 destinationID:v11 options:MEMORY[0x277CBEC10] responseHandler:v14];

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

- (void)getAllSyncedAlarmsAndTimers:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__SBSRemoteDeviceSender_getAllSyncedAlarmsAndTimers___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.SystemRequestFetchAlarmsAndTimers" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)intercomWithOptions:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.Intercom" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_159];

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

- (void)identifyWithOptions:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.Identify" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_157];

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

- (void)obliterate:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.Obliterate" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_155];

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
  v4 = [(SBSRemoteDeviceSender *)self client];
  v3 = [(SBSRemoteDeviceSender *)self destinationID];
  [v4 sendRequestID:@"com.apple.sbs.SystemRequestDeferredReboot" request:MEMORY[0x277CBEC10] destinationID:v3 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_153];
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

- (void)reboot:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"options";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.SystemReboot" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_151];

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

- (void)createSysdiagnose:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  (*(a3 + 2))(v4, v5, 0);
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

- (void)isDeviceStereoFollower:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SBSRemoteDeviceSender_isDeviceStereoFollower___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.StereoLeaderRoleIsDeviceStereoFollower" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)handoffCompleteWithHandoffType:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(SBSRemoteDeviceSender *)self client];
  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v6 sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUICompleteKey" request:v5 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_123];

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

- (void)handoffCancelWithHandoffType:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(SBSRemoteDeviceSender *)self client];
  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v6 sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUICancelKey" request:v5 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_115];

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

- (void)handoffUpdateIntensity:(float)a3 handoffType:(unint64_t)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = @"handoffType";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v13[1] = @"intensity";
  v14[0] = v6;
  *&v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v10 = [(SBSRemoteDeviceSender *)self client];
  v11 = [(SBSRemoteDeviceSender *)self destinationID];
  [v10 sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIUpdateIntensityKey" request:v9 destinationID:v11 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_107];

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

- (void)handoffStartWithArtworkColors:(id)a3 handoffType:(unint64_t)a4
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = [a3 data];
  v7 = v6;
  if (v6)
  {
    v19[0] = @"artworkColors";
    v19[1] = @"handoffType";
    v20[0] = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v20[1] = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = v20;
    v11 = v19;
    v12 = 2;
  }

  else
  {
    v17 = @"handoffType";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v18 = v8;
    v9 = MEMORY[0x277CBEAC0];
    v10 = &v18;
    v11 = &v17;
    v12 = 1;
  }

  v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];

  v14 = [(SBSRemoteDeviceSender *)self client];
  v15 = [(SBSRemoteDeviceSender *)self destinationID];
  [v14 sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIStartWithArtworkColorsKey" request:v13 destinationID:v15 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_99];

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

- (void)handoffStartWithHandoffType:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"handoffType";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = [(SBSRemoteDeviceSender *)self client];
  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v6 sendRequestID:@"com.apple.sbs.kSBSProximityHandoffUIStartKey" request:v5 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_91];

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

- (void)render:(id)a3
{
  v4 = a3;
  v6 = [(SBSRemoteDeviceSender *)self client];
  v5 = [(SBSRemoteDeviceSender *)self destinationID];
  [v6 sendRequestID:@"com.apple.sbs.DebugInfoRender" request:v4 destinationID:v5 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_86];
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

- (void)setVolume:(float)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = [(SBSRemoteDeviceSender *)self client];
  v11 = @"volume";
  *&v6 = a3;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSetVolume" request:v8 destinationID:v9 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_84];

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

- (void)getVolume:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__SBSRemoteDeviceSender_getVolume___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetVolume" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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
  v4 = [(SBSRemoteDeviceSender *)self client];
  v3 = [(SBSRemoteDeviceSender *)self destinationID];
  [v4 sendRequestID:@"com.apple.sbs.DebugInfoSUScanForSoftwareUpdate" request:MEMORY[0x277CBEC10] destinationID:v3 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_79];
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

- (void)siriSay:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"phrase";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSiriSay" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_77];

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

- (void)setLEDContents:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"LEDContents";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSetLEDContents" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_72];

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

- (void)setFeatureFlags:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"featureFlags";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSetFeatureFlags" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_67];

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

- (void)getFeatureFlags:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getFeatureFlags___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetFeatureFlags" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)disassociateNetworkWithName:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoDisassociateNetworkWithName" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_62];

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
  v4 = [(SBSRemoteDeviceSender *)self client];
  v3 = [(SBSRemoteDeviceSender *)self destinationID];
  [v4 sendRequestID:@"com.apple.sbs.DebugInfoDisassociateCurrentNetwork" request:MEMORY[0x277CBEC10] destinationID:v3 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_60];
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
  v4 = [(SBSRemoteDeviceSender *)self client];
  v3 = [(SBSRemoteDeviceSender *)self destinationID];
  [v4 sendRequestID:@"com.apple.sbs.DebugInfoSetHomeUpdateState" request:MEMORY[0x277CBEC10] destinationID:v3 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_54];
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

- (void)setHomeUpdateState:(int64_t)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = [(SBSRemoteDeviceSender *)self client];
  v10 = @"state";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSetHomeUpdateState" request:v7 destinationID:v8 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_52];

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

- (void)injectSWUpdateToHome:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoInjectSWUpdateToHome" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_47];

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

- (void)sendButtonCommand:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSendButtonCommand" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_45];

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

- (void)triggerWiFiCoreCapture:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.TriggerWiFiCoreCapture" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_43];

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

- (void)sendLEDCommand:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoSendLEDCommand" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_41];

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

- (void)resetUserDefault:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v9 = @"defaultKey";
  v10[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [(SBSRemoteDeviceSender *)self destinationID];
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoResetUserDefault" request:v6 destinationID:v7 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_39];

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
  v4 = [(SBSRemoteDeviceSender *)self client];
  v3 = [(SBSRemoteDeviceSender *)self destinationID];
  [v4 sendRequestID:@"com.apple.sbs.DebugInfoResetAllUserDefaults" request:MEMORY[0x277CBEC10] destinationID:v3 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_37];
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

- (void)setUserDefaults:(id)a3 withValue:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(SBSRemoteDeviceSender *)self client];
  v12[0] = @"defaultKey";
  v12[1] = @"withValue";
  v13[0] = v7;
  v13[1] = v6;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = [(SBSRemoteDeviceSender *)self destinationID];
  [v8 sendRequestID:@"com.apple.sbs.DebugInfoSetUserDefaults" request:v9 destinationID:v10 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_35];

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

- (void)getUserDefaults:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getUserDefaults___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetUserDefaults" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)setTuningInfoOnBox:(id)a3 at:(id)a4 withValue:(float)a5
{
  v17[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [(SBSRemoteDeviceSender *)self client];
  v16[0] = @"box";
  v16[1] = @"at";
  v17[0] = v9;
  v17[1] = v8;
  v16[2] = @"withValue";
  *&v11 = a5;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  v14 = [(SBSRemoteDeviceSender *)self destinationID];
  [v10 sendRequestID:@"com.apple.sbs.DebugInfoSetTuningInfoOnBox" request:v13 destinationID:v14 options:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_863];

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

- (void)getTuningInfo:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__SBSRemoteDeviceSender_getTuningInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetTuningInfo" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)getLEDInfo:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__SBSRemoteDeviceSender_getLEDInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetLEDInfo" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (void)getSelectDebugInfo:(id)a3 reply:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15 = @"keys";
    v16[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v9 = [(SBSRemoteDeviceSender *)self client];
  v10 = [(SBSRemoteDeviceSender *)self destinationID];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__SBSRemoteDeviceSender_getSelectDebugInfo_reply___block_invoke;
  v13[3] = &unk_279CD5338;
  v14 = v7;
  v11 = v7;
  [v9 sendRequestID:@"com.apple.sbs.DebugInfoGetSelectDebugInfo" request:v8 destinationID:v10 options:MEMORY[0x277CBEC10] responseHandler:v13];

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

- (void)getAllDebugInfo:(id)a3
{
  v4 = a3;
  v5 = [(SBSRemoteDeviceSender *)self client];
  v6 = [(SBSRemoteDeviceSender *)self destinationID];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__SBSRemoteDeviceSender_getAllDebugInfo___block_invoke;
  v8[3] = &unk_279CD5338;
  v9 = v4;
  v7 = v4;
  [v5 sendRequestID:@"com.apple.sbs.DebugInfoGetAllDebugInfo" request:MEMORY[0x277CBEC10] destinationID:v6 options:MEMORY[0x277CBEC10] responseHandler:v8];
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

- (SBSRemoteDeviceSender)initWithDevice:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SBSRemoteDeviceSender;
  v6 = [(SBSRemoteDeviceSender *)&v20 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    objc_storeStrong(&v6->_destinationID, a3);
    v8 = dispatch_queue_create("com.apple.soundboardservices.RapportMessageHandlingQueue", v7);
    rapportQueue = v6->_rapportQueue;
    v6->_rapportQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x277D44160]);
    client = v6->_client;
    v6->_client = v10;

    v12 = [(SBSRemoteDeviceSender *)v6 rapportQueue];
    [(RPCompanionLinkClient *)v6->_client setDispatchQueue:v12];

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