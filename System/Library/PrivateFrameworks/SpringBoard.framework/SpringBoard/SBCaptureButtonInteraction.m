@interface SBCaptureButtonInteraction
+ (id)fromString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)launched;
- (BOOL)mitigated;
- (SBCaptureButtonInteraction)initWithContext:(id)a3 response:(id)a4 responseLogs:(id)a5;
- (SBCaptureButtonInteraction)initWithDictionary:(id)a3;
- (id)JSONString;
- (id)_coreAnalyticsDictionaryRepresentation;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unint64_t)launchIntentDecidingBehavior;
@end

@implementation SBCaptureButtonInteraction

- (SBCaptureButtonInteraction)initWithContext:(id)a3 response:(id)a4 responseLogs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SBCaptureButtonInteraction;
  v12 = [(SBCaptureButtonInteraction *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a3);
    objc_storeStrong(&v13->_response, a4);
    objc_storeStrong(&v13->_responseLogs, a5);
    v13->_intention = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  context = self->_context;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__SBCaptureButtonInteraction_isEqual___block_invoke;
  v20[3] = &unk_2783ACDB8;
  v7 = v4;
  v21 = v7;
  v8 = [v5 appendObject:context counterpart:v20];
  response = self->_response;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __38__SBCaptureButtonInteraction_isEqual___block_invoke_2;
  v18[3] = &unk_2783ACDB8;
  v10 = v7;
  v19 = v10;
  v11 = [v5 appendObject:response counterpart:v18];
  responseLogs = self->_responseLogs;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__SBCaptureButtonInteraction_isEqual___block_invoke_3;
  v16[3] = &unk_2783ACDB8;
  v17 = v10;
  v13 = v10;
  v14 = [v5 appendObject:responseLogs counterpart:v16];
  LOBYTE(responseLogs) = [v5 isEqual];

  return responseLogs;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_context];
  v5 = [v3 appendObject:self->_response];
  v6 = [v3 appendObject:self->_responseLogs];
  v7 = [v3 hash];

  return v7;
}

- (SBCaptureButtonInteraction)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [SBCaptureButtonContext alloc];
  v6 = [v4 objectForKeyedSubscript:@"Context"];
  v7 = [(SBCaptureButtonContext *)v5 initWithDictionary:v6];
  v8 = [SBCaptureButtonBehaviorsResponse alloc];
  v9 = [v4 objectForKeyedSubscript:@"Response"];
  v10 = [(SBCaptureButtonBehaviorsResponse *)v8 initWithDictionary:v9];
  v11 = [v4 objectForKeyedSubscript:@"ResponseLogs"];
  v12 = [v11 bs_compactMap:&__block_literal_global_252];
  v13 = [(SBCaptureButtonInteraction *)self initWithContext:v7 response:v10 responseLogs:v12];

  v14 = [v4 objectForKeyedSubscript:@"Intentional"];

  -[SBCaptureButtonInteraction setIntention:](v13, "setIntention:", [v14 integerValue]);
  return v13;
}

SBCaptureButtonBehaviorsResponseLog *__49__SBCaptureButtonInteraction_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[SBCaptureButtonBehaviorsResponseLog alloc] initWithDictionary:v2];

  return v3;
}

- (id)dictionaryRepresentation
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"Context";
  v3 = [(SBCaptureButtonContext *)self->_context dictionaryRepresentation];
  v11[0] = v3;
  v10[1] = @"ComputedContext";
  v4 = [(SBCaptureButtonContext *)self->_context computedContext];
  v11[1] = v4;
  v10[2] = @"Response";
  v5 = [(SBCaptureButtonBehaviorsResponse *)self->_response dictionaryRepresentation];
  v11[2] = v5;
  v10[3] = @"ResponseLogs";
  v6 = [(NSArray *)self->_responseLogs bs_compactMap:&__block_literal_global_22_1];
  v11[3] = v6;
  v10[4] = @"Intentional";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_intention];
  v11[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  return v8;
}

- (id)JSONString
{
  v2 = [(SBCaptureButtonInteraction *)self dictionaryRepresentation];
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v2 options:2 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

+ (id)fromString:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:0 error:0];
  v5 = [[SBCaptureButtonInteraction alloc] initWithDictionary:v4];

  return v5;
}

- (id)_coreAnalyticsDictionaryRepresentation
{
  v88[42] = *MEMORY[0x277D85DE8];
  v87[0] = @"allowLaunchIfUnobstructedPromptlyAfterButtonUp";
  v3 = MEMORY[0x277CCABB0];
  v86 = [(SBCaptureButtonContext *)self->_context policy];
  v85 = [v3 numberWithBool:{objc_msgSend(v86, "launchIfUnobstructedPromptlyAfterButtonUpEnabled")}];
  v88[0] = v85;
  v87[1] = @"allowLaunchIfUnobstructedWhileButtonDown";
  v4 = MEMORY[0x277CCABB0];
  v84 = [(SBCaptureButtonContext *)self->_context policy];
  v83 = [v4 numberWithBool:{objc_msgSend(v84, "launchIfUnobstructedWhileButtonDownEnabled")}];
  v88[1] = v83;
  v87[2] = @"backlightState";
  v82 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBCaptureButtonContext backlightState](self->_context, "backlightState")}];
  v88[2] = v82;
  v87[3] = @"buttonEvent";
  v81 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonContext event](self->_context, "event")}];
  v88[3] = v81;
  v87[4] = @"cameraLaunchIntent";
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonBehaviorsResponse launchIntent](self->_response, "launchIntent")}];
  v88[4] = v80;
  v87[5] = @"cameraLaunchIntentDecider";
  v79 = SBCaptureButtonBehaviorIdentifierDescription([(SBCaptureButtonInteraction *)self launchIntentDecidingBehavior]);
  v88[5] = v79;
  v87[6] = @"cameraPrewarmed";
  v78 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext cameraPrewarmed](self->_context, "cameraPrewarmed")}];
  v88[6] = v78;
  v87[7] = @"coachIntent";
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonBehaviorsResponse coachIntent](self->_response, "coachIntent")}];
  v88[7] = v77;
  v87[8] = @"connectedToWirelessCharger";
  v76 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext isConnectedToWirelessCharger](self->_context, "isConnectedToWirelessCharger")}];
  v88[8] = v76;
  v87[9] = @"consoleModeMitigationEnabled";
  v5 = MEMORY[0x277CCABB0];
  v75 = [(SBCaptureButtonContext *)self->_context policy];
  v74 = [v5 numberWithBool:{objc_msgSend(v75, "consoleModeMitigationEnabled")}];
  v88[9] = v74;
  v87[10] = @"deviceAngleX";
  v6 = MEMORY[0x277CCABB0];
  v73 = [(SBCaptureButtonContext *)self->_context gravity];
  [v73 x];
  v72 = [v6 numberWithDouble:?];
  v88[10] = v72;
  v87[11] = @"deviceAngleY";
  v7 = MEMORY[0x277CCABB0];
  v71 = [(SBCaptureButtonContext *)self->_context gravity];
  [v71 y];
  v70 = [v7 numberWithDouble:?];
  v88[11] = v70;
  v87[12] = @"deviceAngleZ";
  v8 = MEMORY[0x277CCABB0];
  v69 = [(SBCaptureButtonContext *)self->_context gravity];
  [v69 z];
  v68 = [v8 numberWithDouble:?];
  v88[12] = v68;
  v87[13] = @"deviceOrientation";
  v67 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBCaptureButtonContext deviceOrientation](self->_context, "deviceOrientation")}];
  v88[13] = v67;
  v87[14] = @"deviceStationaryDetectionEnabled";
  v9 = MEMORY[0x277CCABB0];
  v66 = [(SBCaptureButtonContext *)self->_context policy];
  v65 = [v9 numberWithBool:{objc_msgSend(v66, "deviceStationaryDetectionEnabled")}];
  v88[14] = v65;
  v87[15] = @"deviceStationaryDetectionEnabledWhenUnlocked";
  v10 = MEMORY[0x277CCABB0];
  v64 = [(SBCaptureButtonContext *)self->_context policy];
  v63 = [v10 numberWithBool:{objc_msgSend(v64, "deviceStationaryDetectionEnabledWhenUnlocked")}];
  v88[15] = v63;
  v87[16] = @"deviceStationaryDetectionStationaryDebounceInterval";
  v11 = MEMORY[0x277CCABB0];
  v62 = [(SBCaptureButtonContext *)self->_context policy];
  [v62 deviceStationaryDetectionStationaryDebounceInterval];
  v61 = [v11 numberWithDouble:?];
  v88[16] = v61;
  v87[17] = @"deviceStationaryDetectionStationaryPickUpBuffer";
  v12 = MEMORY[0x277CCABB0];
  v60 = [(SBCaptureButtonContext *)self->_context policy];
  [v60 deviceStationaryDetectionStationaryPickUpBuffer];
  v59 = [v12 numberWithDouble:?];
  v88[17] = v59;
  v87[18] = @"deviceStationaryDetectionStationaryThreshold";
  v13 = MEMORY[0x277CCABB0];
  v58 = [(SBCaptureButtonContext *)self->_context policy];
  [v58 deviceStationaryDetectionStationaryThreshold];
  v57 = [v13 numberWithDouble:?];
  v88[18] = v57;
  v87[19] = @"directLaunchAfterUnsuppressEnabled";
  v14 = MEMORY[0x277CCABB0];
  v56 = [(SBCaptureButtonContext *)self->_context policy];
  v55 = [v14 numberWithBool:{objc_msgSend(v56, "directLaunchAfterUnsuppressEnabled")}];
  v88[19] = v55;
  v87[20] = @"directLaunchAfterUnsuppressGracePeriod";
  v15 = MEMORY[0x277CCABB0];
  v54 = [(SBCaptureButtonContext *)self->_context policy];
  [v54 directLaunchAfterUnsuppressGracePeriod];
  v53 = [v15 numberWithDouble:?];
  v88[20] = v53;
  v87[21] = @"captureAppBundleID";
  v16 = [(SBCaptureButtonContext *)self->_context captureAppBundleID];
  v52 = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = &stru_283094718;
  }

  v88[21] = v17;
  v87[22] = @"foregroundAppBundleID";
  v51 = [(SBCaptureButtonContext *)self->_context foregroundAppBundleID];
  v18 = [v51 sb_filteredFirstPartyAppBundleID];
  v50 = v18;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_283094718;
  }

  v88[22] = v19;
  v87[23] = @"inAmbientPresentationMode";
  v49 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext isInAmbientPresentationMode](self->_context, "isInAmbientPresentationMode")}];
  v88[23] = v49;
  v87[24] = @"inGameMode";
  v48 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext inGameMode](self->_context, "inGameMode")}];
  v88[24] = v48;
  v87[25] = @"inGameModeStreakCount";
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonContext inGameModeStreakCount](self->_context, "inGameModeStreakCount")}];
  v88[25] = v47;
  v87[26] = @"inCameraPose";
  v46 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext inCameraPose](self->_context, "inCameraPose")}];
  v88[26] = v46;
  v87[27] = @"launchClickCount";
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonContext gesture](self->_context, "gesture")}];
  v88[27] = v45;
  v87[28] = @"prewarmIntent";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonBehaviorsResponse prewarmIntent](self->_response, "prewarmIntent")}];
  v88[28] = v44;
  v87[29] = @"suppressedOnButtonDown";
  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext suppressedOnButtonDown](self->_context, "suppressedOnButtonDown")}];
  v88[29] = v43;
  v87[30] = @"suppressionState";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SBCaptureButtonContext suppressionState](self->_context, "suppressionState")}];
  v88[30] = v42;
  v87[31] = @"timeSinceLastNonStationary";
  v20 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context timeSinceLastNonStationary];
  v41 = [v20 numberWithDouble:?];
  v88[31] = v41;
  v87[32] = @"timeSinceLastStationary";
  v21 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context timeSinceLastStationary];
  v40 = [v21 numberWithDouble:?];
  v88[32] = v40;
  v87[33] = @"timeSinceLastStationarySquelch";
  v22 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context timeSinceLastStationarySquelch];
  v39 = [v22 numberWithDouble:?];
  v88[33] = v39;
  v87[34] = @"timeSinceLastViewUnobstructed";
  v23 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context timeSinceLastViewUnobstructed];
  v24 = [v23 numberWithDouble:?];
  v88[34] = v24;
  v87[35] = @"lowLatencyTimeSinceLastStationary";
  v25 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context lowLatencyTimeSinceLastStationary];
  v26 = [v25 numberWithDouble:?];
  v88[35] = v26;
  v87[36] = @"lowLatencyTimeSinceLastNonStationary";
  v27 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context lowLatencyTimeSinceLastNonStationary];
  v28 = [v27 numberWithDouble:?];
  v88[36] = v28;
  v87[37] = @"uiLocked";
  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[SBCaptureButtonContext uiLocked](self->_context, "uiLocked")}];
  v88[37] = v29;
  v87[38] = @"wakeEnabled";
  v30 = MEMORY[0x277CCABB0];
  v31 = [(SBCaptureButtonContext *)self->_context policy];
  v32 = [v30 numberWithBool:{objc_msgSend(v31, "wakeEnabled")}];
  v88[38] = v32;
  v87[39] = @"wakeIntent";
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SBCaptureButtonBehaviorsResponse wakeIntent](self->_response, "wakeIntent")}];
  v88[39] = v33;
  v87[40] = @"intention";
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_intention];
  v88[40] = v34;
  v87[41] = @"pressDuration";
  v35 = MEMORY[0x277CCABB0];
  [(SBCaptureButtonContext *)self->_context pressDuration];
  v36 = [v35 numberWithDouble:?];
  v88[41] = v36;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:42];

  return v37;
}

- (BOOL)launched
{
  v2 = [(SBCaptureButtonInteraction *)self response];
  v3 = [v2 launchIntent] == 2;

  return v3;
}

- (BOOL)mitigated
{
  v2 = [(SBCaptureButtonInteraction *)self response];
  v3 = [v2 launchIntent] == 1;

  return v3;
}

- (unint64_t)launchIntentDecidingBehavior
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_responseLogs;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 response];
        v11 = [v10 launchIntent];

        if (v11 && v11 == [(SBCaptureButtonBehaviorsResponse *)self->_response launchIntent])
        {
          v6 = [v9 behaviorIdentifier];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end