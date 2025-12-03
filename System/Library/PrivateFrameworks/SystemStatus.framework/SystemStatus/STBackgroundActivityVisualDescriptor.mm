@interface STBackgroundActivityVisualDescriptor
+ (id)_defaultVisualDescriptors;
+ (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)identifier;
- (BOOL)canCrossfadeToBackgroundActivityWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (STBackgroundActivityVisualDescriptor)init;
- (STBackgroundActivityVisualDescriptor)initWithCoder:(id)coder;
- (STBackgroundActivityVisualDescriptor)initWithPlistRepresentation:(id)representation;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STBackgroundActivityVisualDescriptor

+ (id)_defaultVisualDescriptors
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_opt_new();
  [v3 setSystemImageName:@"phone.down.fill"];
  [v3 setPreferredContinuousAnimationName:?];
  [v3 setPreferredVisualEffectName:@"darkBlur"];
  v4 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"clearColor"];
  [v3 setBackgroundColorRepresentation:v4];

  [v3 setPrefersToKeepContentVisible:1];
  [v3 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v3 forKey:@"com.apple.systemstatus.background-activity.CallRinging"];

  v5 = objc_opt_new();
  [v5 setSystemImageName:@"phone.fill"];
  [v5 setVerticalOffsetInPixels:1.0];
  v6 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.CallRecording"];
  [v5 setCrossfadableActivities:v6];

  v7 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGreenColor"];
  [v5 setBackgroundColorRepresentation:v7];

  [v5 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v5 forKey:@"com.apple.systemstatus.background-activity.InCall"];

  v8 = objc_opt_new();
  [v8 setSystemImageName:@"phone.fill"];
  [v8 setVerticalOffsetInPixels:1.0];
  v9 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemRedColor"];
  [v8 setBackgroundColorRepresentation:v9];

  v10 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.InCall"];
  [v8 setCrossfadableActivities:v10];

  [v8 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v8 forKey:@"com.apple.systemstatus.background-activity.CallRecording"];

  v11 = objc_opt_new();
  [v11 setSystemImageName:@"phone.fill"];
  [v11 setPreferredVisualEffectName:@"darkBlur"];
  v12 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"clearColor"];
  [v11 setBackgroundColorRepresentation:v12];

  [v11 setPrefersToKeepContentVisible:1];
  [v11 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v11 forKey:@"com.apple.systemstatus.background-activity.CallHandoff"];

  v13 = objc_opt_new();
  [v13 setSystemImageName:@"recordingtape"];
  [v13 setPreferredVisualEffectName:@"darkBlur"];
  v14 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"clearColor"];
  [v13 setBackgroundColorRepresentation:v14];

  [v13 setPrefersToKeepContentVisible:1];
  [v13 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v13 forKey:@"com.apple.systemstatus.background-activity.CallScreening"];

  v15 = objc_opt_new();
  [v15 setSystemImageName:@"video.fill"];
  [v15 setFontSizeAdjustment:-1.0];
  [v15 setPreferredContinuousAnimationName:@"ringing"];
  [v15 setPreferredVisualEffectName:@"darkBlur"];
  v16 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"clearColor"];
  [v15 setBackgroundColorRepresentation:v16];

  [v15 setPrefersToKeepContentVisible:1];
  [v15 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v15 forKey:@"com.apple.systemstatus.background-activity.VideoConferenceRinging"];

  v17 = objc_opt_new();
  [v17 setSystemImageName:@"video.fill"];
  v18 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGreenColor"];
  [v17 setBackgroundColorRepresentation:v18];

  [v17 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v17 forKey:@"com.apple.systemstatus.background-activity.InVideoConference"];

  v19 = objc_opt_new();
  [v19 setSystemImageName:@"video.fill"];
  [v19 setPreferredVisualEffectName:@"darkBlur"];
  v20 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"clearColor"];
  [v19 setBackgroundColorRepresentation:v20];

  [v19 setPrefersToKeepContentVisible:1];
  [v19 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v19 forKey:@"com.apple.systemstatus.background-activity.VideoConferenceHandoff"];

  v21 = objc_opt_new();
  [v21 setSystemImageName:@"waveform"];
  v22 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v21 setBackgroundColorRepresentation:v22];

  [v21 setPrefersToKeepContentVisible:1];
  [v21 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v21 forKey:@"com.apple.systemstatus.background-activity.ActivePushToTalkCall"];

  v23 = objc_opt_new();
  [v23 setSystemImageName:@"waveform"];
  [v23 setPrefersToSuppressPulse:1];
  v24 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v23 setBackgroundColorRepresentation:v24];

  [v23 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v23 forKey:@"com.apple.systemstatus.background-activity.IdlePushToTalkCall"];

  v25 = objc_opt_new();
  [v25 setSystemImageName:@"video.fill"];
  v26 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemRedColor"];
  [v25 setBackgroundColorRepresentation:v26];

  [dictionary setObject:v25 forKey:@"com.apple.systemstatus.background-activity.WebRTCCapture"];
  v27 = objc_opt_new();
  [v27 setSystemImageName:@"mic.fill"];
  v28 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemOrangeColor"];
  [v27 setBackgroundColorRepresentation:v28];

  [dictionary setObject:v27 forKey:@"com.apple.systemstatus.background-activity.WebRTCAudioCapture"];
  v29 = objc_opt_new();
  [v29 setSystemImageName:@"video.fill"];
  v30 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemRedColor"];
  [v29 setBackgroundColorRepresentation:v30];

  [dictionary setObject:v29 forKey:@"com.apple.systemstatus.background-activity.FullScreenWebRTCCapture"];
  v31 = objc_opt_new();
  [v31 setSystemImageName:@"mic.fill"];
  v32 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemOrangeColor"];
  [v31 setBackgroundColorRepresentation:v32];

  [dictionary setObject:v31 forKey:@"com.apple.systemstatus.background-activity.FullScreenWebRTCAudioCapture"];
  v33 = objc_opt_new();
  [v33 setSystemImageName:@"location.north.circle.fill"];
  v34 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v33 setBackgroundColorRepresentation:v34];

  [dictionary setObject:v33 forKey:@"com.apple.systemstatus.background-activity.Navigation"];
  v35 = objc_opt_new();
  [v35 setSystemImageName:@"location.north.circle.fill"];
  v36 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v35 setBackgroundColorRepresentation:v36];

  [dictionary setObject:v35 forKey:@"com.apple.systemstatus.background-activity.Navigation"];
  v37 = objc_opt_new();
  [v37 setSystemImageName:@"location.north.circle.fill"];
  v38 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v37 setBackgroundColorRepresentation:v38];

  [dictionary setObject:v37 forKey:@"com.apple.systemstatus.background-activity.BackgroundLocation"];
  v39 = objc_opt_new();
  [v39 setSystemImageName:@"nearby.interactions"];
  v40 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v39 setBackgroundColorRepresentation:v40];

  [dictionary setObject:v39 forKey:@"com.apple.systemstatus.background-activity.NearbyInteractions"];
  v41 = objc_opt_new();
  [v41 setSystemImageName:@"mic.fill"];
  v42 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemOrangeColor"];
  [v41 setBackgroundColorRepresentation:v42];

  [dictionary setObject:v41 forKey:@"com.apple.systemstatus.background-activity.Recording"];
  v43 = objc_opt_new();
  [v43 setSystemImageName:@"mic.fill"];
  v44 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemOrangeColor"];
  [v43 setBackgroundColorRepresentation:v44];

  [dictionary setObject:v43 forKey:@"com.apple.systemstatus.background-activity.HearingAidRecording"];
  v45 = objc_opt_new();
  [v45 setSystemImageName:@"record.circle"];
  v46 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemRedColor"];
  [v45 setBackgroundColorRepresentation:v46];

  [dictionary setObject:v45 forKey:@"com.apple.systemstatus.background-activity.ScreenReplayRecording"];
  v47 = objc_opt_new();
  [v47 setSystemImageName:@"shareplay"];
  v48 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGray4Color"];
  [v47 setBackgroundColorRepresentation:v48];

  v49 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.SharePlay"];
  [v47 setCrossfadableActivities:v49];

  [v47 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v47 forKey:@"com.apple.systemstatus.background-activity.SharePlayInactive"];

  v50 = objc_opt_new();
  [v50 setSystemImageName:@"shareplay"];
  v51 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGreenColor"];
  [v50 setBackgroundColorRepresentation:v51];

  v52 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.SharePlayInactive"];
  [v50 setCrossfadableActivities:v52];

  [v50 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v50 forKey:@"com.apple.systemstatus.background-activity.SharePlay"];

  v53 = objc_opt_new();
  [v53 setSystemImageName:@"rectangle.inset.filled.and.person.filled"];
  v54 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemIndigoColor"];
  [v53 setBackgroundColorRepresentation:v54];

  [v53 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v53 forKey:@"com.apple.systemstatus.background-activity.SharePlayScreenSharing"];

  v55 = objc_opt_new();
  [v55 setSystemImageName:@"airplayvideo"];
  v56 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v55 setBackgroundColorRepresentation:v56];

  [dictionary setObject:v55 forKey:@"com.apple.systemstatus.background-activity.ScreenSharing"];
  v57 = objc_opt_new();
  [v57 setSystemImageName:@"airplayvideo"];
  [v57 setPrefersToSuppressPulse:1];
  [v57 setPrefersToKeepContentVisible:1];
  v58 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v57 setBackgroundColorRepresentation:v58];

  [dictionary setObject:v57 forKey:@"com.apple.systemstatus.background-activity.AutoAirPlayReady"];
  v59 = objc_opt_new();
  [v59 setSystemImageName:@"airplayvideo"];
  [v59 setPrefersToKeepContentVisible:1];
  v60 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v59 setBackgroundColorRepresentation:v60];

  [dictionary setObject:v59 forKey:@"com.apple.systemstatus.background-activity.AutoAirPlayPlaying"];
  v61 = objc_opt_new();
  [v61 setSystemImageName:@"cable.connector.horizontal"];
  v62 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v61 setBackgroundColorRepresentation:v62];

  [dictionary setObject:v61 forKey:@"com.apple.systemstatus.background-activity.VideoOut"];
  v63 = objc_opt_new();
  [v63 setSystemImageName:@"rectangle.inset.filled.and.person.filled"];
  v64 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemIndigoColor"];
  [v63 setBackgroundColorRepresentation:v64];

  [dictionary setObject:v63 forKey:@"com.apple.systemstatus.background-activity.ScreenSharingServer"];
  v65 = objc_opt_new();
  [v65 setSystemImageName:@"gear"];
  v66 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v65 setBackgroundColorRepresentation:v66];

  [dictionary setObject:v65 forKey:@"com.apple.systemstatus.background-activity.Sysdiagnose"];
  v67 = objc_opt_new();
  [v67 setSystemImageName:@"wrench.and.screwdriver.fill"];
  [v67 setFontSizeAdjustment:-1.0];
  v68 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGrayColor"];
  [v67 setBackgroundColorRepresentation:v68];

  [dictionary setObject:v67 forKey:@"com.apple.systemstatus.background-activity.DeveloperTools"];
  v69 = objc_opt_new();
  [v69 setSystemImageName:@"waveform.path.ecg"];
  v70 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v69 setBackgroundColorRepresentation:v70];

  [dictionary setObject:v69 forKey:@"com.apple.systemstatus.background-activity.Diagnostics"];
  v71 = objc_opt_new();
  [v71 setSystemImageName:@"waveform.path.ecg"];
  v72 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v71 setBackgroundColorRepresentation:v72];

  [v71 setPrefersToKeepContentVisible:1];
  [dictionary setObject:v71 forKey:@"com.apple.systemstatus.background-activity.LoggingCapture"];

  v73 = objc_opt_new();
  [v73 setTextLabel:@"SOS"];
  v74 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemRedColor"];
  [v73 setBackgroundColorRepresentation:v74];

  [dictionary setObject:v73 forKey:@"com.apple.systemstatus.background-activity.CellularSOS"];
  v75 = objc_opt_new();
  [v75 setImageName:@"BackgroundTask_satellite"];
  [v75 setPrefersToSuppressPulse:1];
  v76 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGreenColor"];
  [v75 setBackgroundColorRepresentation:v76];

  [v75 setPrefersToKeepContentVisible:1];
  v77 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected"];
  [v75 setCrossfadableActivities:v77];

  [v75 setPrefersToSuppressDefaultUserInteractionHandler:1];
  [dictionary setObject:v75 forKey:@"com.apple.systemstatus.background-activity.SatelliteSOS"];

  v78 = objc_opt_new();
  [v78 setImageName:@"BackgroundTask_satellite-disconnected"];
  [v78 setPrefersToSuppressPulse:1];
  v79 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGray4Color"];
  [v78 setBackgroundColorRepresentation:v79];

  [v78 setPrefersToKeepContentVisible:1];
  v80 = [MEMORY[0x1E695DFD8] setWithObject:@"com.apple.systemstatus.background-activity.SatelliteSOS"];
  [v78 setCrossfadableActivities:v80];

  [dictionary setObject:v78 forKey:@"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected"];
  v81 = objc_opt_new();
  [v81 setSystemImageName:@"carplay"];
  v82 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v81 setBackgroundColorRepresentation:v82];

  [dictionary setObject:v81 forKey:@"com.apple.systemstatus.background-activity.CarPlay"];
  v83 = objc_opt_new();
  [v83 setSystemImageName:@"swift"];
  v84 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"_swiftColor"];
  [v83 setBackgroundColorRepresentation:v84];

  [dictionary setObject:v83 forKey:@"com.apple.systemstatus.background-activity.Playgrounds"];
  v85 = objc_opt_new();
  [dictionary setObject:v85 forKey:@"com.apple.systemstatus.background-activity.InWorkout"];

  v86 = objc_opt_new();
  [v86 setSystemImageName:@"personalhotspot"];
  v87 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemGreenColor"];
  [v86 setBackgroundColorRepresentation:v87];

  [dictionary setObject:v86 forKey:@"com.apple.systemstatus.background-activity.Tethering"];
  v88 = objc_opt_new();
  [v88 setSystemImageName:@"siri"];
  v89 = [MEMORY[0x1E698E650] colorWithRed:0.28627451 green:0.0901960784 blue:0.439215686 alpha:1.0];
  v90 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithBSColor:v89];
  [v88 setBackgroundColorRepresentation:v90];

  [dictionary setObject:v88 forKey:@"com.apple.systemstatus.background-activity.AssistantEyesFree"];
  v91 = objc_opt_new();
  [v91 setSystemImageName:@"printer.fill"];
  v92 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithSystemColorName:@"systemBlueColor"];
  [v91 setBackgroundColorRepresentation:v92];

  [dictionary setObject:v91 forKey:@"com.apple.systemstatus.background-activity.AirPrint"];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __75__STBackgroundActivityVisualDescriptor_BuiltIns___defaultVisualDescriptors__block_invoke;
  v96[3] = &unk_1E85DEF88;
  v94 = dictionary2;
  v97 = v94;
  [dictionary enumerateKeysAndObjectsUsingBlock:v96];

  return v94;
}

- (STBackgroundActivityVisualDescriptor)init
{
  v5.receiver = self;
  v5.super_class = STBackgroundActivityVisualDescriptor;
  v2 = [(STBackgroundActivityVisualDescriptor *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_preferredVisualEffectName, @"none");
    objc_storeStrong(&v3->_preferredContinuousAnimationName, @"pulseBackground");
  }

  return v3;
}

void __75__STBackgroundActivityVisualDescriptor_BuiltIns___defaultVisualDescriptors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 copy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)identifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__STBackgroundActivityVisualDescriptor_BuiltIns__visualDescriptorForBackgroundActivityWithIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _MergedGlobals_14;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    dispatch_once(&_MergedGlobals_14, block);
  }

  v5 = [qword_1ED7F5D48 objectForKey:identifierCopy];

  return v5;
}

uint64_t __102__STBackgroundActivityVisualDescriptor_BuiltIns__visualDescriptorForBackgroundActivityWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _defaultVisualDescriptors];
  v2 = qword_1ED7F5D48;
  qword_1ED7F5D48 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (BOOL)canCrossfadeToBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  crossfadableActivities = [(STBackgroundActivityVisualDescriptor *)self crossfadableActivities];
  v6 = [crossfadableActivities containsObject:identifierCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  packageName = [(STBackgroundActivityVisualDescriptor *)self packageName];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke;
  v70[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v71 = v7;
  v8 = [v5 appendString:packageName counterpart:v70];

  systemImageName = [(STBackgroundActivityVisualDescriptor *)self systemImageName];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_2;
  v68[3] = &unk_1E85DDD28;
  v10 = v7;
  v69 = v10;
  v11 = [v5 appendString:systemImageName counterpart:v68];

  imageName = [(STBackgroundActivityVisualDescriptor *)self imageName];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_3;
  v66[3] = &unk_1E85DDD28;
  v13 = v10;
  v67 = v13;
  v14 = [v5 appendString:imageName counterpart:v66];

  textLabel = [(STBackgroundActivityVisualDescriptor *)self textLabel];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_4;
  v64[3] = &unk_1E85DDD28;
  v16 = v13;
  v65 = v16;
  v17 = [v5 appendString:textLabel counterpart:v64];

  backgroundColorRepresentation = [(STBackgroundActivityVisualDescriptor *)self backgroundColorRepresentation];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_5;
  v62[3] = &unk_1E85DDCD8;
  v19 = v16;
  v63 = v19;
  v20 = [v5 appendObject:backgroundColorRepresentation counterpart:v62];

  [(STBackgroundActivityVisualDescriptor *)self verticalOffsetInPixels];
  v22 = v21;
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_6;
  v60[3] = &unk_1E85DEAF8;
  v23 = v19;
  v61 = v23;
  v24 = [v5 appendDouble:v60 counterpart:v22];
  [(STBackgroundActivityVisualDescriptor *)self fontSizeAdjustment];
  v26 = v25;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_7;
  v58[3] = &unk_1E85DEAF8;
  v27 = v23;
  v59 = v27;
  v28 = [v5 appendDouble:v58 counterpart:v26];
  prefersToKeepContentVisible = [(STBackgroundActivityVisualDescriptor *)self prefersToKeepContentVisible];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_8;
  v56[3] = &unk_1E85DDD50;
  v30 = v27;
  v57 = v30;
  v31 = [v5 appendBool:prefersToKeepContentVisible counterpart:v56];
  preferredVisualEffectName = [(STBackgroundActivityVisualDescriptor *)self preferredVisualEffectName];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_9;
  v54[3] = &unk_1E85DDD28;
  v33 = v30;
  v55 = v33;
  v34 = [v5 appendString:preferredVisualEffectName counterpart:v54];

  preferredContinuousAnimationName = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_10;
  v52[3] = &unk_1E85DDD28;
  v36 = v33;
  v53 = v36;
  v37 = [v5 appendString:preferredContinuousAnimationName counterpart:v52];

  prefersToSuppressDefaultUserInteractionHandler = [(STBackgroundActivityVisualDescriptor *)self prefersToSuppressDefaultUserInteractionHandler];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_11;
  v50[3] = &unk_1E85DDD50;
  v39 = v36;
  v51 = v39;
  v40 = [v5 appendBool:prefersToSuppressDefaultUserInteractionHandler counterpart:v50];
  crossfadableActivities = [(STBackgroundActivityVisualDescriptor *)self crossfadableActivities];
  v45 = MEMORY[0x1E69E9820];
  v46 = 3221225472;
  v47 = __48__STBackgroundActivityVisualDescriptor_isEqual___block_invoke_12;
  v48 = &unk_1E85DDCD8;
  v49 = v39;
  v42 = v39;
  v43 = [v5 appendObject:crossfadableActivities counterpart:&v45];

  LOBYTE(v39) = [v5 isEqual];
  return v39;
}

- (unint64_t)hash
{
  v36 = *MEMORY[0x1E69E9840];
  builder = [MEMORY[0x1E698E6B8] builder];
  packageName = [(STBackgroundActivityVisualDescriptor *)self packageName];
  v5 = [builder appendString:packageName];

  systemImageName = [(STBackgroundActivityVisualDescriptor *)self systemImageName];
  v7 = [builder appendString:systemImageName];

  imageName = [(STBackgroundActivityVisualDescriptor *)self imageName];
  v9 = [builder appendString:imageName];

  textLabel = [(STBackgroundActivityVisualDescriptor *)self textLabel];
  v11 = [builder appendString:textLabel];

  backgroundColorRepresentation = [(STBackgroundActivityVisualDescriptor *)self backgroundColorRepresentation];
  v13 = [builder appendObject:backgroundColorRepresentation];

  [(STBackgroundActivityVisualDescriptor *)self verticalOffsetInPixels];
  v14 = [builder appendDouble:?];
  [(STBackgroundActivityVisualDescriptor *)self fontSizeAdjustment];
  v15 = [builder appendDouble:?];
  v16 = [builder appendBool:{-[STBackgroundActivityVisualDescriptor prefersToKeepContentVisible](self, "prefersToKeepContentVisible")}];
  preferredVisualEffectName = [(STBackgroundActivityVisualDescriptor *)self preferredVisualEffectName];
  v18 = [builder appendString:preferredVisualEffectName];

  preferredContinuousAnimationName = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
  v20 = [builder appendString:preferredContinuousAnimationName];

  v21 = [builder appendBool:{-[STBackgroundActivityVisualDescriptor prefersToSuppressDefaultUserInteractionHandler](self, "prefersToSuppressDefaultUserInteractionHandler")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  crossfadableActivities = [(STBackgroundActivityVisualDescriptor *)self crossfadableActivities];
  v23 = [crossfadableActivities countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(crossfadableActivities);
        }

        v27 = [builder appendString:*(*(&v31 + 1) + 8 * v26++)];
      }

      while (v24 != v26);
      v24 = [crossfadableActivities countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v24);
  }

  v28 = [builder hash];
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  _copyValuesFromDescriptorToDescriptor(self, v4);
  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivityVisualDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityVisualDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityVisualDescriptor *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

void __88__STBackgroundActivityVisualDescriptor__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) packageName];
  [v2 appendString:v3 withName:@"packageName" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) systemImageName];
  [v4 appendString:v5 withName:@"systemImageName" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) imageName];
  [v6 appendString:v7 withName:@"imageName" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) textLabel];
  [v8 appendString:v9 withName:@"textLabel" skipIfEmpty:1];

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) backgroundColorRepresentation];
  v12 = [v10 appendObject:v11 withName:@"backgroundColorRepresentation" skipIfNil:1];

  [*(a1 + 40) verticalOffsetInPixels];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v13 = *(a1 + 32);
    [*(a1 + 40) verticalOffsetInPixels];
    v14 = [v13 appendDouble:@"verticalOffsetInPixels" withName:1 decimalPrecision:?];
  }

  [*(a1 + 40) fontSizeAdjustment];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v15 = *(a1 + 32);
    [*(a1 + 40) fontSizeAdjustment];
    v16 = [v15 appendDouble:@"fontSizeAdjustment" withName:1 decimalPrecision:?];
  }

  v17 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"prefersToKeepContentVisible") ifEqualTo:{@"prefersToKeepContentVisible", 1}];
  v18 = [*(a1 + 40) preferredVisualEffectName];
  v19 = BSEqualObjects();

  if ((v19 & 1) == 0)
  {
    v20 = *(a1 + 32);
    v21 = [*(a1 + 40) preferredVisualEffectName];
    [v20 appendString:v21 withName:@"preferredVisualEffectName"];
  }

  v22 = [*(a1 + 40) preferredContinuousAnimationName];
  v23 = BSEqualObjects();

  if ((v23 & 1) == 0)
  {
    v24 = *(a1 + 32);
    v25 = [*(a1 + 40) preferredContinuousAnimationName];
    [v24 appendString:v25 withName:@"preferredContinuousAnimationName"];
  }

  v26 = [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"prefersToSuppressDefaultUserInteractionHandler") ifEqualTo:{@"prefersToSuppressDefaultUserInteractionHandler", 1}];
  v27 = *(a1 + 32);
  v29 = [*(a1 + 40) crossfadableActivities];
  v28 = [v29 allObjects];
  [v27 appendArraySection:v28 withName:@"crossfadableActivities" skipIfEmpty:1];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  packageName = [(STBackgroundActivityVisualDescriptor *)self packageName];
  [coderCopy encodeObject:packageName forKey:@"packageName"];

  systemImageName = [(STBackgroundActivityVisualDescriptor *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];

  imageName = [(STBackgroundActivityVisualDescriptor *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];

  textLabel = [(STBackgroundActivityVisualDescriptor *)self textLabel];
  [coderCopy encodeObject:textLabel forKey:@"textLabel"];

  backgroundColorRepresentation = [(STBackgroundActivityVisualDescriptor *)self backgroundColorRepresentation];
  [coderCopy encodeObject:backgroundColorRepresentation forKey:@"backgroundColorRepresentation"];

  [(STBackgroundActivityVisualDescriptor *)self verticalOffsetInPixels];
  [coderCopy encodeDouble:@"verticalOffsetInPixels" forKey:?];
  [(STBackgroundActivityVisualDescriptor *)self fontSizeAdjustment];
  [coderCopy encodeDouble:@"fontSizeAdjustment" forKey:?];
  [coderCopy encodeBool:-[STBackgroundActivityVisualDescriptor prefersToKeepContentVisible](self forKey:{"prefersToKeepContentVisible"), @"prefersToKeepContentVisible"}];
  [coderCopy encodeBool:-[STBackgroundActivityVisualDescriptor prefersToSuppressDefaultUserInteractionHandler](self forKey:{"prefersToSuppressDefaultUserInteractionHandler"), @"prefersToSuppressDefaultUserInteractionHandler"}];
  preferredVisualEffectName = [(STBackgroundActivityVisualDescriptor *)self preferredVisualEffectName];
  [coderCopy encodeObject:preferredVisualEffectName forKey:@"preferredVisualEffectName"];

  preferredContinuousAnimationName = [(STBackgroundActivityVisualDescriptor *)self preferredContinuousAnimationName];
  [coderCopy encodeObject:preferredContinuousAnimationName forKey:@"preferredContinuousAnimationName"];

  crossfadableActivities = [(STBackgroundActivityVisualDescriptor *)self crossfadableActivities];
  [coderCopy encodeObject:crossfadableActivities forKey:@"crossfadableActivities"];
}

- (STBackgroundActivityVisualDescriptor)initWithCoder:(id)coder
{
  v43 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v5, 0}];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"packageName"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"systemImageName"];
  v10 = [coderCopy decodeObjectOfClass:v5 forKey:@"imageName"];
  v11 = [coderCopy decodeObjectOfClass:v5 forKey:@"textLabel"];
  v12 = [coderCopy decodeObjectOfClass:v6 forKey:@"backgroundColorRepresentation"];
  [coderCopy decodeDoubleForKey:@"verticalOffsetInPixels"];
  v14 = v13;
  [coderCopy decodeDoubleForKey:@"fontSizeAdjustment"];
  v16 = v15;
  v38 = [coderCopy decodeBoolForKey:@"prefersToKeepContentVisible"];
  v17 = [coderCopy decodeObjectOfClass:v5 forKey:@"preferredVisualEffectName"];
  v18 = [coderCopy decodeObjectOfClass:v5 forKey:@"preferredContinuousAnimationName"];
  v39 = [coderCopy decodeBoolForKey:@"prefersToSuppressDefaultUserInteractionHandler"];
  v40 = v7;
  v19 = [coderCopy decodeObjectOfClasses:v7 forKey:@"crossfadableActivities"];

  v20 = [(STBackgroundActivityVisualDescriptor *)self init];
  if (v20)
  {
    v21 = [v8 copy];
    packageName = v20->_packageName;
    v20->_packageName = v21;

    v23 = [v9 copy];
    systemImageName = v20->_systemImageName;
    v20->_systemImageName = v23;

    v25 = [v10 copy];
    imageName = v20->_imageName;
    v20->_imageName = v25;

    v27 = [v11 copy];
    textLabel = v20->_textLabel;
    v20->_textLabel = v27;

    objc_storeStrong(&v20->_backgroundColorRepresentation, v12);
    v20->_verticalOffsetInPixels = v14;
    v20->_fontSizeAdjustment = v16;
    v20->_prefersToKeepContentVisible = v38;
    if (STBackgroundActivityIsVisualEffect(v17))
    {
      v29 = [v17 copy];
      preferredVisualEffectName = v20->_preferredVisualEffectName;
      v20->_preferredVisualEffectName = v29;
    }

    else
    {
      v31 = STSystemStatusLogBundleLoading();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v17;
        _os_log_error_impl(&dword_1DA9C2000, v31, OS_LOG_TYPE_ERROR, "Expected a visual effect name, got: %@", buf, 0xCu);
      }
    }

    if (STBackgroundActivityIsContinuousAnimation(v18))
    {
      v32 = [v18 copy];
      preferredContinuousAnimationName = v20->_preferredContinuousAnimationName;
      v20->_preferredContinuousAnimationName = v32;
    }

    else
    {
      preferredContinuousAnimationName = STSystemStatusLogBundleLoading();
      if (os_log_type_enabled(preferredContinuousAnimationName, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v42 = v18;
        _os_log_error_impl(&dword_1DA9C2000, preferredContinuousAnimationName, OS_LOG_TYPE_ERROR, "Expected a continuous animation name, got: %@", buf, 0xCu);
      }
    }

    v20->_prefersToSuppressDefaultUserInteractionHandler = v39;
    v34 = [v19 copy];
    crossfadableActivities = v20->_crossfadableActivities;
    v20->_crossfadableActivities = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

- (STBackgroundActivityVisualDescriptor)initWithPlistRepresentation:(id)representation
{
  v35 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [(STBackgroundActivityVisualDescriptor *)self init];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = [representationCopy bs_safeDictionaryForKey:@"BackgroundColor"];
  v7 = [representationCopy bs_safeStringForKey:@"PreferredVisualEffectName"];
  v8 = [representationCopy bs_safeStringForKey:@"PreferredContinuousAnimationName"];
  v9 = [representationCopy bs_safeDictionaryForKey:@"SystemImage"];
  v10 = [v9 bs_safeStringForKey:@"InternalSymbolName"];
  systemImageName = v5->_systemImageName;
  v5->_systemImageName = v10;

  v12 = [representationCopy bs_safeStringForKey:@"TextLabel"];
  textLabel = v5->_textLabel;
  v5->_textLabel = v12;

  v14 = [[STBackgroundActivityVisualDescriptorColorRepresentation alloc] initWithPlistRepresentation:v6];
  backgroundColorRepresentation = v5->_backgroundColorRepresentation;
  v5->_backgroundColorRepresentation = v14;

  v5->_prefersToKeepContentVisible = [representationCopy bs_BOOLForKey:@"PrefersToKeepContentVisible"];
  v16 = [representationCopy bs_safeNumberForKey:@"FontSizeAdjustment"];
  [v16 doubleValue];
  v5->_fontSizeAdjustment = v17;

  v18 = [representationCopy bs_safeNumberForKey:@"VerticalOffsetInPixels"];
  [v18 doubleValue];
  v5->_verticalOffsetInPixels = v19;

  if (STBackgroundActivityIsVisualEffect(v7))
  {
    v20 = [v7 copy];
    preferredVisualEffectName = v5->_preferredVisualEffectName;
    v5->_preferredVisualEffectName = v20;
  }

  else if (v7)
  {
    v22 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v7;
      _os_log_error_impl(&dword_1DA9C2000, v22, OS_LOG_TYPE_ERROR, "Expected a visual effect name, got: %@", &v33, 0xCu);
    }
  }

  if (STBackgroundActivityIsContinuousAnimation(v8))
  {
    v23 = [v8 copy];
    preferredContinuousAnimationName = v5->_preferredContinuousAnimationName;
    v5->_preferredContinuousAnimationName = v23;
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    preferredContinuousAnimationName = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(preferredContinuousAnimationName, OS_LOG_TYPE_ERROR))
    {
      v33 = 138412290;
      v34 = v8;
      _os_log_error_impl(&dword_1DA9C2000, preferredContinuousAnimationName, OS_LOG_TYPE_ERROR, "Expected a continuous animation name, got: %@", &v33, 0xCu);
    }
  }

LABEL_14:
  v5->_prefersToSuppressDefaultUserInteractionHandler = [representationCopy bs_BOOLForKey:@"PrefersToSuppressDefaultUserInteractionHandler"];
  v25 = MEMORY[0x1E695DFD8];
  v26 = [representationCopy bs_safeArrayForKey:@"CrossfadableActivities"];
  v27 = [v25 setWithArray:v26];
  crossfadableActivities = v5->_crossfadableActivities;
  v5->_crossfadableActivities = v27;

  if (!v5->_systemImageName && [@"pulseSymbol" isEqualToString:v8])
  {
    v29 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v29, OS_LOG_TYPE_ERROR, "It's not valid to specify 'pulseSymbol' for a visualDescriptor without a system image", &v33, 2u);
    }
  }

  if (!v5->_textLabel && !v5->_systemImageName && !v5->_imageName && !v5->_packageName)
  {
    v30 = STSystemStatusLogBundleLoading();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v33) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v30, OS_LOG_TYPE_ERROR, "A visual descriptor should have a systemImage, image, package, or textLabel — but this one doesn't!", &v33, 2u);
    }
  }

LABEL_27:
  v31 = *MEMORY[0x1E69E9840];
  return v5;
}

@end