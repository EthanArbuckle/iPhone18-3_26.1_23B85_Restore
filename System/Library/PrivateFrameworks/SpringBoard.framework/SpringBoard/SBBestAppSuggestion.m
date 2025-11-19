@interface SBBestAppSuggestion
- (BOOL)isSiriSuggestion;
- (NSString)description;
@end

@implementation SBBestAppSuggestion

- (BOOL)isSiriSuggestion
{
  v2 = [(SBBestAppSuggestion *)self bundleIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.Siri"];

  return v3;
}

- (NSString)description
{
  v44[16] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBBestAppSuggestion *)self uniqueIdentifier];
  v5 = [v3 appendObject:v4 withName:@"uniqueIdentifier"];

  v6 = [(SBBestAppSuggestion *)self bundleIdentifier];
  v7 = [v3 appendObject:v6 withName:@"bundleIdentifier"];

  v8 = [(SBBestAppSuggestion *)self activityType];
  v9 = [v3 appendObject:v8 withName:@"activityType"];

  v10 = [(SBBestAppSuggestion *)self lastUpdateTime];
  v11 = [v3 appendObject:v10 withName:@"lastUpdateTime"];

  v12 = [(SBBestAppSuggestion *)self originatingDeviceIdentifier];
  v13 = [v3 appendObject:v12 withName:@"originatingDeviceIdentifier"];

  v14 = [(SBBestAppSuggestion *)self originatingDeviceName];
  v15 = [v3 appendObject:v14 withName:@"originatingDeviceName"];

  v16 = [(SBBestAppSuggestion *)self originatingDeviceType];
  v17 = [v3 appendObject:v16 withName:@"originatingDeviceType"];

  v18 = [(SBBestAppSuggestion *)self originatingBundleIdentifier];
  v19 = [v3 appendObject:v18 withName:@"originatingBundleIdentifier"];

  v20 = [(SBBestAppSuggestion *)self suggestedLocationName];
  v21 = [v3 appendObject:v20 withName:@"suggestedLocationName"];

  v22 = [(SBBestAppSuggestion *)self launchURL];
  v23 = [v3 appendObject:v22 withName:@"launchURL"];

  v43[0] = @"isNotificationSuggestion";
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isNotificationSuggestion](self, "isNotificationSuggestion")}];
  v44[0] = v42;
  v43[1] = @"isOpenURLSuggestion";
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isOpenURLSuggestion](self, "isOpenURLSuggestion")}];
  v44[1] = v41;
  v43[2] = @"isCallContinuitySuggestion";
  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isCallContinuitySuggestion](self, "isCallContinuitySuggestion")}];
  v44[2] = v40;
  v43[3] = @"isLocallyGeneratedSuggestion";
  v39 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isLocallyGeneratedSuggestion](self, "isLocallyGeneratedSuggestion")}];
  v44[3] = v39;
  v43[4] = @"isEligibleForLockScreen";
  v38 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isEligibleForLockScreen](self, "isEligibleForLockScreen")}];
  v44[4] = v38;
  v43[5] = @"isSiriSuggestion";
  v37 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isSiriSuggestion](self, "isSiriSuggestion")}];
  v44[5] = v37;
  v43[6] = @"isLocationBasedSuggestion";
  v36 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isLocationBasedSuggestion](self, "isLocationBasedSuggestion")}];
  v44[6] = v36;
  v43[7] = @"isPrediction";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isPrediction](self, "isPrediction")}];
  v44[7] = v35;
  v43[8] = @"isHeadphonesPrediction";
  v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isHeadphonesPrediction](self, "isHeadphonesPrediction")}];
  v44[8] = v24;
  v43[9] = @"isBluetoothPrediction";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isBluetoothPrediction](self, "isBluetoothPrediction")}];
  v44[9] = v25;
  v43[10] = @"isBluetoothAudioPrediction";
  v26 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isBluetoothAudioPrediction](self, "isBluetoothAudioPrediction")}];
  v44[10] = v26;
  v43[11] = @"isCarPlayPrediction";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isCarPlayPrediction](self, "isCarPlayPrediction")}];
  v44[11] = v27;
  v43[12] = @"isFirstWakePrediction";
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isFirstWakePrediction](self, "isFirstWakePrediction")}];
  v44[12] = v28;
  v43[13] = @"isArrivedAtWorkPrediction";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isArrivedAtWorkPrediction](self, "isArrivedAtWorkPrediction")}];
  v44[13] = v29;
  v43[14] = @"isArrivedAtHomePrediction";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isArrivedAtHomePrediction](self, "isArrivedAtHomePrediction")}];
  v44[14] = v30;
  v43[15] = @"isHandoff";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBBestAppSuggestion isHandoff](self, "isHandoff")}];
  v44[15] = v31;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:16];
  [v3 appendDictionarySection:v32 withName:@"wat" skipIfEmpty:0];

  v33 = [v3 build];

  return v33;
}

@end