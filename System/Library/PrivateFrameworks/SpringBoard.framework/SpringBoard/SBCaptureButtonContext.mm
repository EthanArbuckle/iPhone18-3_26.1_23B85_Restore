@interface SBCaptureButtonContext
+ (id)defaultContext;
+ (id)defaultGravity;
+ (id)defaultPolicy;
+ (id)defaultRotationRate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSuppressed;
- (BOOL)isWithinDirectLaunchGracePeriod;
- (BOOL)shouldSuspendLaunchOnButtonDown;
- (NSString)description;
- (SBCaptureButtonContext)initWithDictionary:(id)dictionary;
- (SBCaptureButtonContext)initWithEvent:(unint64_t)event gesture:(unint64_t)gesture machAbsoluteTimestamp:(unint64_t)timestamp consoleModeActive:(BOOL)active consoleModeActiveStreakCount:(unint64_t)count backlightState:(int64_t)state timeSinceLastViewUnobstructed:(double)unobstructed uiLocked:(BOOL)self0 timeSinceLastStationary:(double)self1 timeSinceLastNonStationary:(double)self2 timeSinceLastStationarySquelch:(double)self3 lowLatencyTimeSinceLastStationary:(double)self4 lowLatencyTimeSinceLastNonStationary:(double)self5 inCameraPose:(BOOL)self6 gravity:(id)self7 rotationRate:(id)self8 deviceOrientation:(int64_t)self9 policy:(id)policy cameraPrewarmed:(BOOL)prewarmed suppressedOnButtonDown:(BOOL)down suppressionState:(int64_t)suppressionState prewarmLockoutActive:(BOOL)lockoutActive captureAppBundleID:(id)d pressDuration:(double)duration foregroundAppBundleID:(id)iD inAmbientPresentationMode:(BOOL)mode connectedToWirelessCharger:(BOOL)charger voiceOverScreenCurtainActive:(BOOL)event0 wantsClickAgain:(BOOL)event1 timeSinceLastClickAgainCoaching:(double)event2;
- (id)computedContext;
- (id)dictionaryRepresentation;
- (int64_t)stationaryState;
- (unint64_t)hash;
@end

@implementation SBCaptureButtonContext

- (SBCaptureButtonContext)initWithEvent:(unint64_t)event gesture:(unint64_t)gesture machAbsoluteTimestamp:(unint64_t)timestamp consoleModeActive:(BOOL)active consoleModeActiveStreakCount:(unint64_t)count backlightState:(int64_t)state timeSinceLastViewUnobstructed:(double)unobstructed uiLocked:(BOOL)self0 timeSinceLastStationary:(double)self1 timeSinceLastNonStationary:(double)self2 timeSinceLastStationarySquelch:(double)self3 lowLatencyTimeSinceLastStationary:(double)self4 lowLatencyTimeSinceLastNonStationary:(double)self5 inCameraPose:(BOOL)self6 gravity:(id)self7 rotationRate:(id)self8 deviceOrientation:(int64_t)self9 policy:(id)policy cameraPrewarmed:(BOOL)prewarmed suppressedOnButtonDown:(BOOL)down suppressionState:(int64_t)suppressionState prewarmLockoutActive:(BOOL)lockoutActive captureAppBundleID:(id)d pressDuration:(double)duration foregroundAppBundleID:(id)iD inAmbientPresentationMode:(BOOL)mode connectedToWirelessCharger:(BOOL)charger voiceOverScreenCurtainActive:(BOOL)event0 wantsClickAgain:(BOOL)event1 timeSinceLastClickAgainCoaching:(double)event2
{
  gravityCopy = gravity;
  rateCopy = rate;
  policyCopy = policy;
  dCopy = d;
  iDCopy = iD;
  v55.receiver = self;
  v55.super_class = SBCaptureButtonContext;
  v45 = [(SBCaptureButtonContext *)&v55 init];
  v46 = v45;
  if (v45)
  {
    v45->_machAbsoluteTimestamp = timestamp;
    v45->_event = event;
    v45->_inGameMode = active;
    v45->_gesture = gesture;
    v45->_inGameModeStreakCount = count;
    v45->_backlightState = state;
    v45->_uiLocked = locked;
    v45->_timeSinceLastViewUnobstructed = unobstructed;
    v45->_timeSinceLastStationary = stationary;
    v45->_timeSinceLastNonStationary = nonStationary;
    v45->_timeSinceLastStationarySquelch = squelch;
    v45->_lowLatencyTimeSinceLastStationary = lastStationary;
    v45->_lowLatencyTimeSinceLastNonStationary = lastNonStationary;
    v45->_inCameraPose = pose;
    objc_storeStrong(&v45->_gravity, gravity);
    objc_storeStrong(&v46->_rotationRate, rate);
    v46->_deviceOrientation = orientation;
    objc_storeStrong(&v46->_policy, policy);
    v46->_cameraPrewarmed = prewarmed;
    v46->_suppressedOnButtonDown = down;
    v46->_suppressionState = suppressionState;
    v46->_prewarmLockoutActive = lockoutActive;
    objc_storeStrong(&v46->_captureAppBundleID, d);
    v46->_pressDuration = duration;
    objc_storeStrong(&v46->_foregroundAppBundleID, iD);
    v46->_inAmbientPresentationMode = mode;
    v46->_connectedToWirelessCharger = charger;
    v46->_voiceOverScreenCurtainActive = curtainActive;
    v46->_wantsClickAgain = again;
    v46->_timeSinceLastClickAgainCoaching = coaching;
  }

  return v46;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  event = self->_event;
  v158[0] = MEMORY[0x277D85DD0];
  v158[1] = 3221225472;
  v158[2] = __34__SBCaptureButtonContext_isEqual___block_invoke;
  v158[3] = &unk_2783ACDE0;
  v7 = equalCopy;
  v159 = v7;
  v8 = [v5 appendInteger:event counterpart:v158];
  gesture = self->_gesture;
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_2;
  v156[3] = &unk_2783ACDE0;
  v10 = v7;
  v157 = v10;
  v11 = [v5 appendInteger:gesture counterpart:v156];
  machAbsoluteTimestamp = self->_machAbsoluteTimestamp;
  v154[0] = MEMORY[0x277D85DD0];
  v154[1] = 3221225472;
  v154[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_3;
  v154[3] = &unk_2783ACDE0;
  v13 = v10;
  v155 = v13;
  v14 = [v5 appendInt64:machAbsoluteTimestamp counterpart:v154];
  inGameMode = self->_inGameMode;
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_4;
  v152[3] = &unk_2783ACE58;
  v16 = v13;
  v153 = v16;
  v17 = [v5 appendBool:inGameMode counterpart:v152];
  inGameModeStreakCount = self->_inGameModeStreakCount;
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_5;
  v150[3] = &unk_2783ACDE0;
  v19 = v16;
  v151 = v19;
  v20 = [v5 appendInteger:inGameModeStreakCount counterpart:v150];
  backlightState = self->_backlightState;
  v148[0] = MEMORY[0x277D85DD0];
  v148[1] = 3221225472;
  v148[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_6;
  v148[3] = &unk_2783ACDE0;
  v22 = v19;
  v149 = v22;
  v23 = [v5 appendInteger:backlightState counterpart:v148];
  timeSinceLastViewUnobstructed = self->_timeSinceLastViewUnobstructed;
  v146[0] = MEMORY[0x277D85DD0];
  v146[1] = 3221225472;
  v146[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_7;
  v146[3] = &unk_2783ACE08;
  v25 = v22;
  v147 = v25;
  v26 = [v5 appendDouble:v146 counterpart:timeSinceLastViewUnobstructed];
  uiLocked = self->_uiLocked;
  v144[0] = MEMORY[0x277D85DD0];
  v144[1] = 3221225472;
  v144[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_8;
  v144[3] = &unk_2783ACE58;
  v28 = v25;
  v145 = v28;
  v29 = [v5 appendBool:uiLocked counterpart:v144];
  timeSinceLastStationary = self->_timeSinceLastStationary;
  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_9;
  v142[3] = &unk_2783ACE08;
  v31 = v28;
  v143 = v31;
  v32 = [v5 appendDouble:v142 counterpart:timeSinceLastStationary];
  timeSinceLastNonStationary = self->_timeSinceLastNonStationary;
  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_10;
  v140[3] = &unk_2783ACE08;
  v34 = v31;
  v141 = v34;
  v35 = [v5 appendDouble:v140 counterpart:timeSinceLastNonStationary];
  timeSinceLastStationarySquelch = self->_timeSinceLastStationarySquelch;
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_11;
  v138[3] = &unk_2783ACE08;
  v37 = v34;
  v139 = v37;
  v38 = [v5 appendDouble:v138 counterpart:timeSinceLastStationarySquelch];
  lowLatencyTimeSinceLastStationary = self->_lowLatencyTimeSinceLastStationary;
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_12;
  v136[3] = &unk_2783ACE08;
  v40 = v37;
  v137 = v40;
  v41 = [v5 appendDouble:v136 counterpart:lowLatencyTimeSinceLastStationary];
  lowLatencyTimeSinceLastNonStationary = self->_lowLatencyTimeSinceLastNonStationary;
  v134[0] = MEMORY[0x277D85DD0];
  v134[1] = 3221225472;
  v134[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_13;
  v134[3] = &unk_2783ACE08;
  v43 = v40;
  v135 = v43;
  v44 = [v5 appendDouble:v134 counterpart:lowLatencyTimeSinceLastNonStationary];
  inCameraPose = self->_inCameraPose;
  v132[0] = MEMORY[0x277D85DD0];
  v132[1] = 3221225472;
  v132[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_14;
  v132[3] = &unk_2783ACE58;
  v46 = v43;
  v133 = v46;
  v47 = [v5 appendBool:inCameraPose counterpart:v132];
  gravity = self->_gravity;
  v130[0] = MEMORY[0x277D85DD0];
  v130[1] = 3221225472;
  v130[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_15;
  v130[3] = &unk_2783ACDB8;
  v49 = v46;
  v131 = v49;
  v50 = [v5 appendObject:gravity counterpart:v130];
  rotationRate = self->_rotationRate;
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_16;
  v128[3] = &unk_2783ACDB8;
  v52 = v49;
  v129 = v52;
  v53 = [v5 appendObject:rotationRate counterpart:v128];
  policy = self->_policy;
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_17;
  v126[3] = &unk_2783ACDB8;
  v55 = v52;
  v127 = v55;
  v56 = [v5 appendObject:policy counterpart:v126];
  deviceOrientation = self->_deviceOrientation;
  v124[0] = MEMORY[0x277D85DD0];
  v124[1] = 3221225472;
  v124[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_18;
  v124[3] = &unk_2783ACDE0;
  v58 = v55;
  v125 = v58;
  v59 = [v5 appendInteger:deviceOrientation counterpart:v124];
  cameraPrewarmed = self->_cameraPrewarmed;
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_19;
  v122[3] = &unk_2783ACE58;
  v61 = v58;
  v123 = v61;
  v62 = [v5 appendBool:cameraPrewarmed counterpart:v122];
  suppressedOnButtonDown = self->_suppressedOnButtonDown;
  v120[0] = MEMORY[0x277D85DD0];
  v120[1] = 3221225472;
  v120[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_20;
  v120[3] = &unk_2783ACE58;
  v64 = v61;
  v121 = v64;
  v65 = [v5 appendBool:suppressedOnButtonDown counterpart:v120];
  suppressionState = self->_suppressionState;
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_21;
  v118[3] = &unk_2783ACDE0;
  v67 = v64;
  v119 = v67;
  v68 = [v5 appendInteger:suppressionState counterpart:v118];
  prewarmLockoutActive = self->_prewarmLockoutActive;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_22;
  v116[3] = &unk_2783ACE58;
  v70 = v67;
  v117 = v70;
  v71 = [v5 appendBool:prewarmLockoutActive counterpart:v116];
  captureAppBundleID = self->_captureAppBundleID;
  v114[0] = MEMORY[0x277D85DD0];
  v114[1] = 3221225472;
  v114[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_23;
  v114[3] = &unk_2783B1D60;
  v73 = v70;
  v115 = v73;
  v74 = [v5 appendString:captureAppBundleID counterpart:v114];
  pressDuration = self->_pressDuration;
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_24;
  v112[3] = &unk_2783ACDE0;
  v76 = v73;
  v113 = v76;
  v77 = [v5 appendInt64:pressDuration counterpart:v112];
  foregroundAppBundleID = self->_foregroundAppBundleID;
  v110[0] = MEMORY[0x277D85DD0];
  v110[1] = 3221225472;
  v110[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_25;
  v110[3] = &unk_2783B1D60;
  v79 = v76;
  v111 = v79;
  v80 = [v5 appendString:foregroundAppBundleID counterpart:v110];
  inAmbientPresentationMode = self->_inAmbientPresentationMode;
  v108[0] = MEMORY[0x277D85DD0];
  v108[1] = 3221225472;
  v108[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_26;
  v108[3] = &unk_2783ACE58;
  v82 = v79;
  v109 = v82;
  v83 = [v5 appendBool:inAmbientPresentationMode counterpart:v108];
  connectedToWirelessCharger = self->_connectedToWirelessCharger;
  v106[0] = MEMORY[0x277D85DD0];
  v106[1] = 3221225472;
  v106[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_27;
  v106[3] = &unk_2783ACE58;
  v85 = v82;
  v107 = v85;
  v86 = [v5 appendBool:connectedToWirelessCharger counterpart:v106];
  voiceOverScreenCurtainActive = self->_voiceOverScreenCurtainActive;
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_28;
  v104[3] = &unk_2783ACE58;
  v88 = v85;
  v105 = v88;
  v89 = [v5 appendBool:voiceOverScreenCurtainActive counterpart:v104];
  wantsClickAgain = self->_wantsClickAgain;
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __34__SBCaptureButtonContext_isEqual___block_invoke_29;
  v102[3] = &unk_2783ACE58;
  v91 = v88;
  v103 = v91;
  v92 = [v5 appendBool:wantsClickAgain counterpart:v102];
  timeSinceLastClickAgainCoaching = self->_timeSinceLastClickAgainCoaching;
  v97 = MEMORY[0x277D85DD0];
  v98 = 3221225472;
  v99 = __34__SBCaptureButtonContext_isEqual___block_invoke_30;
  v100 = &unk_2783ACE08;
  v101 = v91;
  v94 = v91;
  v95 = [v5 appendDouble:&v97 counterpart:timeSinceLastClickAgainCoaching];
  LOBYTE(v91) = [v5 isEqual];

  return v91;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_event];
  v5 = [builder appendInteger:self->_gesture];
  v6 = [builder appendInt64:self->_machAbsoluteTimestamp];
  v7 = [builder appendBool:self->_inGameMode];
  v8 = [builder appendInteger:self->_inGameModeStreakCount];
  v9 = [builder appendInteger:self->_backlightState];
  v10 = [builder appendDouble:self->_timeSinceLastViewUnobstructed];
  v11 = [builder appendBool:self->_uiLocked];
  v12 = [builder appendDouble:self->_timeSinceLastStationary];
  v13 = [builder appendDouble:self->_timeSinceLastNonStationary];
  v14 = [builder appendDouble:self->_timeSinceLastStationarySquelch];
  v15 = [builder appendBool:self->_lowLatencyTimeSinceLastStationary != 0.0];
  v16 = [builder appendBool:self->_lowLatencyTimeSinceLastNonStationary != 0.0];
  v17 = [builder appendBool:self->_inCameraPose];
  v18 = [builder appendObject:self->_gravity];
  v19 = [builder appendObject:self->_rotationRate];
  v20 = [builder appendObject:self->_policy];
  v21 = [builder appendInteger:self->_deviceOrientation];
  v22 = [builder appendBool:self->_cameraPrewarmed];
  v23 = [builder appendBool:self->_suppressedOnButtonDown];
  v24 = [builder appendInteger:self->_suppressionState];
  v25 = [builder appendBool:self->_prewarmLockoutActive];
  v26 = [builder appendString:self->_captureAppBundleID];
  v27 = [builder appendInt64:self->_pressDuration];
  v28 = [builder appendString:self->_foregroundAppBundleID];
  v29 = [builder appendBool:self->_inAmbientPresentationMode];
  v30 = [builder appendBool:self->_connectedToWirelessCharger];
  v31 = [builder appendBool:self->_voiceOverScreenCurtainActive];
  v32 = [builder appendBool:self->_wantsClickAgain];
  v33 = [builder appendDouble:self->_timeSinceLastClickAgainCoaching];
  v34 = [builder hash];

  return v34;
}

- (NSString)description
{
  dictionaryRepresentation = [(SBCaptureButtonContext *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (SBCaptureButtonContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v78 = [dictionaryCopy objectForKeyedSubscript:@"CaptureButtonEvent"];
  v66 = qword_21F8A6820[SBCaptureButtonLoggingEventFromString(v78)];
  v77 = [dictionaryCopy objectForKeyedSubscript:@"CaptureButtonGesture"];
  integerValue = [v77 integerValue];
  v76 = [dictionaryCopy objectForKeyedSubscript:@"Timestamp"];
  unsignedLongLongValue = [v76 unsignedLongLongValue];
  v75 = [dictionaryCopy objectForKeyedSubscript:@"InGameMode"];
  bOOLValue = [v75 BOOLValue];
  inGameModeStreakCount = self->_inGameModeStreakCount;
  v74 = [dictionaryCopy objectForKeyedSubscript:@"BacklightState"];
  v60 = SBBacklightStateFromString(v74);
  v73 = [dictionaryCopy objectForKeyedSubscript:@"TimeSinceLastViewUnobstructed"];
  [v73 doubleValue];
  v6 = v5;
  v72 = [dictionaryCopy objectForKeyedSubscript:@"UILocked"];
  bOOLValue2 = [v72 BOOLValue];
  v71 = [dictionaryCopy objectForKeyedSubscript:@"TimeSinceLastStationary"];
  [v71 doubleValue];
  v8 = v7;
  v70 = [dictionaryCopy objectForKeyedSubscript:@"TimeSinceLastNonStationary"];
  [v70 doubleValue];
  v10 = v9;
  v69 = [dictionaryCopy objectForKeyedSubscript:@"TimeSinceLastStationarySquelch"];
  [v69 doubleValue];
  v12 = v11;
  v64 = [dictionaryCopy objectForKeyedSubscript:@"LowLatencyTimeSinceLastStationary"];
  [v64 doubleValue];
  v14 = v13;
  v61 = [dictionaryCopy objectForKeyedSubscript:@"LowLatencyTimeSinceLastNonStationary"];
  [v61 doubleValue];
  v16 = v15;
  v58 = [dictionaryCopy objectForKeyedSubscript:@"InCameraPose"];
  bOOLValue3 = [v58 BOOLValue];
  v17 = [SBDeviceMotionVector alloc];
  v57 = [dictionaryCopy objectForKeyedSubscript:@"GravityVector"];
  v50 = [(SBDeviceMotionVector *)v17 initWithDictionary:v57];
  v18 = [SBDeviceMotionVector alloc];
  v55 = [dictionaryCopy objectForKeyedSubscript:@"RotationRateVector"];
  v48 = [(SBDeviceMotionVector *)v18 initWithDictionary:v55];
  v54 = [dictionaryCopy objectForKeyedSubscript:@"UIDeviceOrientation"];
  integerValue2 = [v54 integerValue];
  v19 = [SBCaptureButtonPolicy alloc];
  v53 = [dictionaryCopy objectForKeyedSubscript:@"Policy"];
  v44 = [(SBCaptureButtonPolicy *)v19 initWithDictionary:v53];
  v51 = [dictionaryCopy objectForKeyedSubscript:@"CameraPrewarmed"];
  bOOLValue4 = [v51 BOOLValue];
  v49 = [dictionaryCopy objectForKeyedSubscript:@"SuppressedOnButtonDown"];
  bOOLValue5 = [v49 BOOLValue];
  v47 = [dictionaryCopy objectForKeyedSubscript:@"SuppressionState"];
  v39 = SBCaptureButtonSuppressionStateFromString(v47);
  v45 = [dictionaryCopy objectForKeyedSubscript:@"PrewarmLockoutActive"];
  bOOLValue6 = [v45 BOOLValue];
  v37 = [dictionaryCopy objectForKeyedSubscript:@"CaptureAppBundleID"];
  v43 = [dictionaryCopy objectForKeyedSubscript:@"PressDuration"];
  [v43 doubleValue];
  v21 = v20;
  v22 = [dictionaryCopy objectForKeyedSubscript:@"ForegroundAppBundleID"];
  v40 = [dictionaryCopy objectForKeyedSubscript:@"InAmbientPresentationMode"];
  bOOLValue7 = [v40 BOOLValue];
  v24 = [dictionaryCopy objectForKeyedSubscript:@"ConnectedToWirelessCharger"];
  bOOLValue8 = [v24 BOOLValue];
  v26 = [dictionaryCopy objectForKeyedSubscript:@"VoiceOverScreenCurtainActiveKey"];
  bOOLValue9 = [v26 BOOLValue];
  v28 = [dictionaryCopy objectForKeyedSubscript:@"WantsClickAgain"];
  bOOLValue10 = [v28 BOOLValue];
  v30 = [dictionaryCopy objectForKeyedSubscript:@"TimeSinceLastClickAgainCoaching"];
  [v30 doubleValue];
  BYTE3(v36) = bOOLValue10;
  BYTE2(v36) = bOOLValue9;
  BYTE1(v36) = bOOLValue8;
  LOBYTE(v36) = bOOLValue7;
  LOBYTE(v35) = bOOLValue6;
  BYTE1(v34) = bOOLValue5;
  LOBYTE(v34) = bOOLValue4;
  BYTE1(v33) = bOOLValue3;
  LOBYTE(v33) = bOOLValue2;
  v68 = [SBCaptureButtonContext initWithEvent:"initWithEvent:gesture:machAbsoluteTimestamp:consoleModeActive:consoleModeActiveStreakCount:backlightState:timeSinceLastViewUnobstructed:uiLocked:timeSinceLastStationary:timeSinceLastNonStationary:timeSinceLastStationarySquelch:lowLatencyTimeSinceLastStationary:lowLatencyTimeSinceLastNonStationary:inCameraPose:gravity:rotationRate:deviceOrientation:policy:cameraPrewarmed:suppressedOnButtonDown:suppressionState:prewarmLockoutActive:captureAppBundleID:pressDuration:foregroundAppBundleID:inAmbientPresentationMode:connectedToWirelessCharger:voiceOverScreenCurtainActive:wantsClickAgain:timeSinceLastClickAgainCoaching:" gesture:v66 machAbsoluteTimestamp:integerValue consoleModeActive:unsignedLongLongValue consoleModeActiveStreakCount:bOOLValue backlightState:inGameModeStreakCount timeSinceLastViewUnobstructed:v60 uiLocked:v6 timeSinceLastStationary:v8 timeSinceLastNonStationary:v10 timeSinceLastStationarySquelch:v12 lowLatencyTimeSinceLastStationary:v14 lowLatencyTimeSinceLastNonStationary:v16 inCameraPose:v21 gravity:v31 rotationRate:v33 deviceOrientation:v50 policy:v48 cameraPrewarmed:integerValue2 suppressedOnButtonDown:v44 suppressionState:v34 prewarmLockoutActive:v39 captureAppBundleID:v35 pressDuration:v37 foregroundAppBundleID:v22 inAmbientPresentationMode:v36 connectedToWirelessCharger:? voiceOverScreenCurtainActive:? wantsClickAgain:? timeSinceLastClickAgainCoaching:?];

  return v68;
}

- (id)dictionaryRepresentation
{
  v40[31] = *MEMORY[0x277D85DE8];
  v39[0] = @"CaptureButtonEvent";
  v3 = SBCaptureButtonLoggingEventFromContext(self);
  if ((v3 - 1) > 2)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_2783B5398[v3 - 1];
  }

  v40[0] = v4;
  v39[1] = @"CaptureButtonGesture";
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_gesture];
  v40[1] = v38;
  v39[2] = @"Timestamp";
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_machAbsoluteTimestamp];
  v40[2] = v37;
  v39[3] = @"LaunchingClickCount";
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_gesture];
  v40[3] = v36;
  v39[4] = @"InGameMode";
  v35 = [MEMORY[0x277CCABB0] numberWithBool:self->_inGameMode];
  v40[4] = v35;
  v39[5] = @"InGameModeStreakCount";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_inGameModeStreakCount];
  v40[5] = v34;
  v39[6] = @"BacklightState";
  v33 = SBBacklightStateDescription(self->_backlightState);
  v40[6] = v33;
  v39[7] = @"TimeSinceLastViewUnobstructed";
  v32 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeSinceLastViewUnobstructed];
  v40[7] = v32;
  v39[8] = @"UILocked";
  v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_uiLocked];
  v40[8] = v31;
  v39[9] = @"TimeSinceLastStationary";
  v30 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeSinceLastStationary];
  v40[9] = v30;
  v39[10] = @"TimeSinceLastNonStationary";
  v29 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeSinceLastNonStationary];
  v40[10] = v29;
  v39[11] = @"TimeSinceLastStationarySquelch";
  v28 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeSinceLastStationarySquelch];
  v40[11] = v28;
  v39[12] = @"LowLatencyTimeSinceLastStationary";
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lowLatencyTimeSinceLastStationary];
  v40[12] = v27;
  v39[13] = @"LowLatencyTimeSinceLastNonStationary";
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lowLatencyTimeSinceLastNonStationary];
  v40[13] = v26;
  v39[14] = @"InCameraPose";
  v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_inCameraPose];
  v40[14] = v25;
  v39[15] = @"GravityVector";
  dictionaryRepresentation = [(SBDeviceMotionVector *)self->_gravity dictionaryRepresentation];
  v40[15] = dictionaryRepresentation;
  v39[16] = @"RotationRateVector";
  dictionaryRepresentation2 = [(SBDeviceMotionVector *)self->_rotationRate dictionaryRepresentation];
  v40[16] = dictionaryRepresentation2;
  v39[17] = @"UIDeviceOrientation";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:self->_deviceOrientation];
  v40[17] = v22;
  v39[18] = @"Policy";
  dictionaryRepresentation3 = [(SBCaptureButtonPolicy *)self->_policy dictionaryRepresentation];
  v40[18] = dictionaryRepresentation3;
  v39[19] = @"CameraPrewarmed";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_cameraPrewarmed];
  v40[19] = v20;
  v39[20] = @"SuppressedOnButtonDown";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_suppressedOnButtonDown];
  v40[20] = v5;
  v39[21] = @"SuppressionState";
  v6 = NSStringFromSBCaptureButtonSuppressionState(self->_suppressionState);
  v40[21] = v6;
  v39[22] = @"PrewarmLockoutActive";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_prewarmLockoutActive];
  v8 = v7;
  captureAppBundleID = self->_captureAppBundleID;
  if (!captureAppBundleID)
  {
    captureAppBundleID = &stru_283094718;
  }

  v40[22] = v7;
  v40[23] = captureAppBundleID;
  v39[23] = @"CaptureAppBundleID";
  v39[24] = @"PressDuration";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pressDuration];
  v11 = v10;
  foregroundAppBundleID = self->_foregroundAppBundleID;
  if (!foregroundAppBundleID)
  {
    foregroundAppBundleID = &stru_283094718;
  }

  v40[24] = v10;
  v40[25] = foregroundAppBundleID;
  v39[25] = @"ForegroundAppBundleID";
  v39[26] = @"InAmbientPresentationMode";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_inAmbientPresentationMode];
  v40[26] = v13;
  v39[27] = @"ConnectedToWirelessCharger";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_connectedToWirelessCharger];
  v40[27] = v14;
  v39[28] = @"VoiceOverScreenCurtainActiveKey";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_voiceOverScreenCurtainActive];
  v40[28] = v15;
  v39[29] = @"WantsClickAgain";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsClickAgain];
  v40[29] = v16;
  v39[30] = @"TimeSinceLastClickAgainCoaching";
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeSinceLastClickAgainCoaching];
  v40[30] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:31];

  return v18;
}

+ (id)defaultContext
{
  v2 = [SBCaptureButtonContext alloc];
  v3 = +[SBCaptureButtonContext defaultGravity];
  v4 = +[SBCaptureButtonContext defaultRotationRate];
  v5 = +[SBCaptureButtonContext defaultPolicy];
  LODWORD(v11) = 0;
  LOBYTE(v10) = 0;
  LOWORD(v9) = 1;
  LOWORD(v8) = 1;
  v6 = [SBCaptureButtonContext initWithEvent:v2 gesture:"initWithEvent:gesture:machAbsoluteTimestamp:consoleModeActive:consoleModeActiveStreakCount:backlightState:timeSinceLastViewUnobstructed:uiLocked:timeSinceLastStationary:timeSinceLastNonStationary:timeSinceLastStationarySquelch:lowLatencyTimeSinceLastStationary:lowLatencyTimeSinceLastNonStationary:inCameraPose:gravity:rotationRate:deviceOrientation:policy:cameraPrewarmed:suppressedOnButtonDown:suppressionState:prewarmLockoutActive:captureAppBundleID:pressDuration:foregroundAppBundleID:inAmbientPresentationMode:connectedToWirelessCharger:voiceOverScreenCurtainActive:wantsClickAgain:timeSinceLastClickAgainCoaching:" machAbsoluteTimestamp:2 consoleModeActive:1 consoleModeActiveStreakCount:11121 backlightState:0 timeSinceLastViewUnobstructed:0 uiLocked:1 timeSinceLastStationary:10.0 timeSinceLastNonStationary:10.0 timeSinceLastStationarySquelch:8.0 lowLatencyTimeSinceLastStationary:1.79769313e308 lowLatencyTimeSinceLastNonStationary:9.0 inCameraPose:7.0 gravity:0.15 rotationRate:100.0 deviceOrientation:v8 policy:v3 cameraPrewarmed:v4 suppressedOnButtonDown:1 suppressionState:v5 prewarmLockoutActive:v9 captureAppBundleID:2 pressDuration:v10 foregroundAppBundleID:@"com.apple.camera" inAmbientPresentationMode:@"com.apple.lock-screen" connectedToWirelessCharger:v11 voiceOverScreenCurtainActive:? wantsClickAgain:? timeSinceLastClickAgainCoaching:?];

  return v6;
}

+ (id)defaultPolicy
{
  LOBYTE(v5) = 0;
  LOWORD(v4) = 0;
  v2 = [[SBCaptureButtonPolicy alloc] initWithConsoleModeEnabled:1 wakeEnabled:1 directLaunchAfterUnsuppressEnabled:1 directLaunchAfterUnsuppressGracePeriod:1 deviceStationaryDetectionEnabled:1 deviceStationaryDetectionEnabledWhenUnlocked:1 deviceStationaryDetectionStationaryThreshold:2.0 deviceStationaryDetectionStationaryPickUpBuffer:0.1 deviceStationaryDetectionStationaryDebounceInterval:0.4 suppressionEnabled:4.0 launchIfUnobstructedWhileButtonDownEnabled:v4 launchIfUnobstructedPromptlyAfterButtonUpEnabled:&unk_28336E670 wakingBacklightStates:v5 visionIntelligenceEnabled:?];

  return v2;
}

+ (id)defaultGravity
{
  v2 = objc_alloc_init(SBDeviceMotionVector);

  return v2;
}

+ (id)defaultRotationRate
{
  v2 = objc_alloc_init(SBDeviceMotionVector);

  return v2;
}

- (int64_t)stationaryState
{
  [(SBCaptureButtonContext *)self timeSinceLastStationary];
  v4 = v3;
  [(SBCaptureButtonContext *)self timeSinceLastNonStationary];
  v6 = v5;
  policy = [(SBCaptureButtonContext *)self policy];
  [policy deviceStationaryDetectionStationaryThreshold];
  v9 = v8;
  policy2 = [(SBCaptureButtonContext *)self policy];
  [policy2 deviceStationaryDetectionStationaryPickUpBuffer];
  v12 = [SBDeviceStationaryMotionDetector stateFromTimeSinceLastStationary:v4 timeSinceLastNonStationary:v6 stationaryThreshold:v9 pickUpBuffer:v11];

  return v12;
}

- (BOOL)isWithinDirectLaunchGracePeriod
{
  [(SBCaptureButtonContext *)self timeSinceLastViewUnobstructed];
  v4 = v3;
  policy = [(SBCaptureButtonContext *)self policy];
  [policy directLaunchAfterUnsuppressGracePeriod];
  v7 = v4 <= v6;

  return v7;
}

- (id)computedContext
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"StationaryState";
  v3 = NSStringFromSBEmbeddedDeviceStationaryState([(SBCaptureButtonContext *)self stationaryState]);
  v9[0] = v3;
  v8[1] = @"IsWithinDirectLaunchGracePeriod";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext isWithinDirectLaunchGracePeriod](self, "isWithinDirectLaunchGracePeriod")}];
  v9[1] = v4;
  v8[2] = @"isWithinClickAgainTimeout";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext isWithinClickAgainTimeout](self, "isWithinClickAgainTimeout")}];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)shouldSuspendLaunchOnButtonDown
{
  if ([(SBCaptureButtonContext *)self event]!= 1)
  {
    return 0;
  }

  policy = [(SBCaptureButtonContext *)self policy];
  if ([policy suppressionEnabled])
  {
    policy2 = [(SBCaptureButtonContext *)self policy];
    if ([policy2 launchIfUnobstructedWhileButtonDownEnabled])
    {
      isSuppressed = [(SBCaptureButtonContext *)self isSuppressed];
    }

    else
    {
      isSuppressed = 0;
    }
  }

  else
  {
    isSuppressed = 0;
  }

  return isSuppressed;
}

- (BOOL)isSuppressed
{
  policy = [(SBCaptureButtonContext *)self policy];
  if ([policy suppressionEnabled])
  {
    v4 = [(SBCaptureButtonContext *)self suppressionState]== 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end