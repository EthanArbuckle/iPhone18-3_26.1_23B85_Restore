@interface SBBestAppSuggestion
- (BOOL)isSiriSuggestion;
- (NSString)description;
@end

@implementation SBBestAppSuggestion

- (BOOL)isSiriSuggestion
{
  bundleIdentifier = [(SBBestAppSuggestion *)self bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.Siri"];

  return v3;
}

- (NSString)description
{
  v44[16] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  uniqueIdentifier = [(SBBestAppSuggestion *)self uniqueIdentifier];
  v5 = [v3 appendObject:uniqueIdentifier withName:@"uniqueIdentifier"];

  bundleIdentifier = [(SBBestAppSuggestion *)self bundleIdentifier];
  v7 = [v3 appendObject:bundleIdentifier withName:@"bundleIdentifier"];

  activityType = [(SBBestAppSuggestion *)self activityType];
  v9 = [v3 appendObject:activityType withName:@"activityType"];

  lastUpdateTime = [(SBBestAppSuggestion *)self lastUpdateTime];
  v11 = [v3 appendObject:lastUpdateTime withName:@"lastUpdateTime"];

  originatingDeviceIdentifier = [(SBBestAppSuggestion *)self originatingDeviceIdentifier];
  v13 = [v3 appendObject:originatingDeviceIdentifier withName:@"originatingDeviceIdentifier"];

  originatingDeviceName = [(SBBestAppSuggestion *)self originatingDeviceName];
  v15 = [v3 appendObject:originatingDeviceName withName:@"originatingDeviceName"];

  originatingDeviceType = [(SBBestAppSuggestion *)self originatingDeviceType];
  v17 = [v3 appendObject:originatingDeviceType withName:@"originatingDeviceType"];

  originatingBundleIdentifier = [(SBBestAppSuggestion *)self originatingBundleIdentifier];
  v19 = [v3 appendObject:originatingBundleIdentifier withName:@"originatingBundleIdentifier"];

  suggestedLocationName = [(SBBestAppSuggestion *)self suggestedLocationName];
  v21 = [v3 appendObject:suggestedLocationName withName:@"suggestedLocationName"];

  launchURL = [(SBBestAppSuggestion *)self launchURL];
  v23 = [v3 appendObject:launchURL withName:@"launchURL"];

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

  build = [v3 build];

  return build;
}

@end