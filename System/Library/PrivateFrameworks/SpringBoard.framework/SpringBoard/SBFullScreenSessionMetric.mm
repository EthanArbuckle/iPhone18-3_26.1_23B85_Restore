@interface SBFullScreenSessionMetric
- (BOOL)_sendCoreAnalyticsEventWithStartReason:(id)reason endReason:(id)endReason duration:(double)duration primaryBundleIdentifier:(id)identifier doNotDisturbActive:(BOOL)active hardwareKeyboardAttached:(BOOL)attached;
- (BOOL)sendCoreAnalyticsEventWithName:(id)name payload:(id)payload;
- (SBFullScreenSessionMetric)init;
- (id)_bundleIdentifierForElementWithLayoutRole:(int64_t)role fromContext:(id)context;
@end

@implementation SBFullScreenSessionMetric

uint64_t __33__SBFullScreenSessionMetric_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 5)
  {
    v7 = [v5 eventPayload];
    v17 = [*(a1 + 32) _bundleIdentifierForElementWithLayoutRole:1 fromContext:v6];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &stru_283094718;
    }

    v20 = v19;

    v21 = [*(a1 + 32) _bundleIdentifierForElementWithLayoutRole:2 fromContext:v6];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_283094718;
    }

    v24 = v23;

    [*(a1 + 32) setPrimaryBundleIdentifier:v20];
    [*(a1 + 32) setSideBundleIdentifier:v24];
    v25 = [*(a1 + 32) primaryBundleIdentifier];
    v26 = [v25 length];

    v27 = [*(a1 + 32) sideBundleIdentifier];
    v28 = [v27 length];

    if (!v26 || v28)
    {

LABEL_24:
      v33 = 0;
      goto LABEL_25;
    }

    v29 = *(a1 + 32);
    [v7 timestamp];
    [v29 setStartTimestamp:?];
    v30 = *(a1 + 32);
    v31 = [v7 objectForKeyedSubscript:*MEMORY[0x277D675B8]];
    v32 = SBMainWorkspaceTransitionSourceDescription([v31 integerValue]);
    [v30 setStartReason:v32];

LABEL_21:
    v33 = 1;
LABEL_25:

    goto LABEL_26;
  }

  if (a2 == 48)
  {
    v7 = [v5 eventPayload];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D675E0]];
    v9 = [v8 unsignedIntegerValue];

    v10 = [*(a1 + 32) primaryBundleIdentifier];
    v11 = [v10 length];

    v12 = [*(a1 + 32) sideBundleIdentifier];
    v13 = [v12 length];

    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11 == 0;
    }

    if (v14 || v13 != 0)
    {
      goto LABEL_24;
    }

    v16 = *(a1 + 32);
    [v7 timestamp];
    [v16 setStartTimestamp:?];
    [*(a1 + 32) setStartReason:@"Unlock"];
    goto LABEL_21;
  }

  v33 = 0;
LABEL_26:

  return v33;
}

uint64_t __33__SBFullScreenSessionMetric_init__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 5)
  {
    v20 = [v5 eventPayload];
    v21 = [*(a1 + 32) primaryBundleIdentifier];
    v22 = [*(a1 + 32) _bundleIdentifierForElementWithLayoutRole:1 fromContext:v6];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_283094718;
    }

    v25 = v24;

    v26 = [*(a1 + 32) _bundleIdentifierForElementWithLayoutRole:2 fromContext:v6];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &stru_283094718;
    }

    v29 = v28;

    [*(a1 + 32) setPrimaryBundleIdentifier:v25];
    [*(a1 + 32) setSideBundleIdentifier:v29];
    v30 = [*(a1 + 32) startReason];
    v31 = [v20 objectForKeyedSubscript:*MEMORY[0x277D675B8]];
    v54 = SBMainWorkspaceTransitionSourceDescription([v31 integerValue]);

    [v20 timestamp];
    v33 = v32;
    [*(a1 + 32) startTimestamp];
    v35 = v33 - v34;
    v36 = [SBApp isHardwareKeyboardAttached];
    if ([(__CFString *)v25 length]&& ![(__CFString *)v29 length])
    {
      if (([(__CFString *)v25 isEqualToString:v21]& 1) != 0)
      {
        v19 = 0;
        v47 = 1;
LABEL_15:

        if (!v47)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v51 = v21;
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __33__SBFullScreenSessionMetric_init__block_invoke_4;
      v61[3] = &unk_2783C1610;
      v52 = &v62;
      v62 = *(a1 + 32);
      v46 = &v63;
      v53 = v30;
      v63 = v30;
      v42 = &v64;
      v50 = v54;
      v64 = v50;
      *&v65[1] = v35;
      v43 = v65;
      v44 = v51;
      v65[0] = v51;
      v66 = v36;
      [v6 stateForQueryName:5 completion:v61];
      v49 = *(a1 + 32);
      [v20 timestamp];
      [v49 setStartTimestamp:?];
      [*(a1 + 32) setStartReason:v50];
      v19 = 1;
    }

    else
    {
      v37 = v36;
      v38 = v25;
      v39 = v29;
      v40 = v20;
      v41 = v21;
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __33__SBFullScreenSessionMetric_init__block_invoke_5;
      v55[3] = &unk_2783C1610;
      v52 = &v56;
      v56 = *(a1 + 32);
      v53 = v30;
      v57 = v30;
      v42 = &v58;
      v58 = v54;
      *&v59[1] = v35;
      v43 = v59;
      v44 = v41;
      v45 = v41;
      v20 = v40;
      v29 = v39;
      v25 = v38;
      v59[0] = v45;
      v60 = v37;
      v46 = &v57;
      [v6 stateForQueryName:5 completion:v55];
      v19 = 0;
    }

    v47 = 0;
    v21 = v44;
    v30 = v53;
    goto LABEL_15;
  }

  if (a2 != 48)
  {
LABEL_18:
    v19 = 1;
    goto LABEL_19;
  }

  v7 = [v5 eventPayload];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D675E0]];
  v9 = [v8 unsignedIntegerValue];

  if (!v9)
  {

    goto LABEL_18;
  }

  v10 = [*(a1 + 32) startReason];
  [v7 timestamp];
  v12 = v11;
  [*(a1 + 32) startTimestamp];
  v14 = v12 - v13;
  v15 = [*(a1 + 32) primaryBundleIdentifier];
  v16 = [SBApp isHardwareKeyboardAttached];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __33__SBFullScreenSessionMetric_init__block_invoke_3;
  v67[3] = &unk_2783C1610;
  v68 = *(a1 + 32);
  v69 = v10;
  v72 = v14;
  v70 = @"Lock";
  v71 = v15;
  v73 = v16;
  v17 = v15;
  v18 = v10;
  [v6 stateForQueryName:5 completion:v67];

  v19 = 0;
LABEL_19:

  return v19;
}

- (SBFullScreenSessionMetric)init
{
  v19.receiver = self;
  v19.super_class = SBFullScreenSessionMetric;
  v2 = [(SBAnalyticsStateMachineEventHandler *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_startTimestamp = 0.0;
    startReason = v2->_startReason;
    v2->_startReason = &stru_283094718;

    primaryBundleIdentifier = v3->_primaryBundleIdentifier;
    v3->_primaryBundleIdentifier = &stru_283094718;

    sideBundleIdentifier = v3->_sideBundleIdentifier;
    v3->_sideBundleIdentifier = &stru_283094718;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __33__SBFullScreenSessionMetric_init__block_invoke;
    v17[3] = &unk_2783BD218;
    v7 = v3;
    v18 = v7;
    v8 = [SBAnalyticsStateMachineEdge edgeFromState:0 transition:v17];
    [(SBAnalyticsStateMachineEventHandler *)v7 addEdge:v8];

    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __33__SBFullScreenSessionMetric_init__block_invoke_2;
    v15 = &unk_2783BD218;
    v9 = v7;
    v16 = v9;
    v10 = [SBAnalyticsStateMachineEdge edgeFromState:1 transition:&v12];
    [(SBAnalyticsStateMachineEventHandler *)v9 addEdge:v10, v12, v13, v14, v15];
  }

  return v3;
}

uint64_t __33__SBFullScreenSessionMetric_init__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D674A0]];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);

  return [v5 _sendCoreAnalyticsEventWithStartReason:v6 endReason:v8 duration:v9 primaryBundleIdentifier:v4 doNotDisturbActive:v10 hardwareKeyboardAttached:v7];
}

uint64_t __33__SBFullScreenSessionMetric_init__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D674A0]];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);

  return [v5 _sendCoreAnalyticsEventWithStartReason:v6 endReason:v8 duration:v9 primaryBundleIdentifier:v4 doNotDisturbActive:v10 hardwareKeyboardAttached:v7];
}

uint64_t __33__SBFullScreenSessionMetric_init__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277D674A0]];
  v4 = [v3 BOOLValue];

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 64);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);

  return [v5 _sendCoreAnalyticsEventWithStartReason:v6 endReason:v8 duration:v9 primaryBundleIdentifier:v4 doNotDisturbActive:v10 hardwareKeyboardAttached:v7];
}

- (BOOL)sendCoreAnalyticsEventWithName:(id)name payload:(id)payload
{
  payloadCopy = payload;
  v4 = payloadCopy;
  v5 = AnalyticsSendEventLazy();

  return v5;
}

- (id)_bundleIdentifierForElementWithLayoutRole:(int64_t)role fromContext:(id)context
{
  eventPayload = [context eventPayload];
  v6 = [eventPayload objectForKeyedSubscript:*MEMORY[0x277D67588]];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__SBFullScreenSessionMetric__bundleIdentifierForElementWithLayoutRole_fromContext___block_invoke;
  v10[3] = &__block_descriptor_40_e22_B16__0__NSDictionary_8l;
  v10[4] = role;
  v7 = [v6 bs_firstObjectPassingTest:v10];
  v8 = [v7 objectForKey:*MEMORY[0x277D67568]];

  return v8;
}

BOOL __83__SBFullScreenSessionMetric__bundleIdentifierForElementWithLayoutRole_fromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*MEMORY[0x277D67580]];
  v4 = [v3 integerValue] == *(a1 + 32);

  return v4;
}

- (BOOL)_sendCoreAnalyticsEventWithStartReason:(id)reason endReason:(id)endReason duration:(double)duration primaryBundleIdentifier:(id)identifier doNotDisturbActive:(BOOL)active hardwareKeyboardAttached:(BOOL)attached
{
  attachedCopy = attached;
  activeCopy = active;
  v24[6] = *MEMORY[0x277D85DE8];
  v23[0] = @"StartReason";
  v23[1] = @"EndReason";
  v24[0] = reason;
  v24[1] = endReason;
  v23[2] = @"Duration";
  v14 = MEMORY[0x277CCABB0];
  identifierCopy = identifier;
  endReasonCopy = endReason;
  reasonCopy = reason;
  v18 = [v14 numberWithDouble:duration];
  v24[2] = v18;
  v24[3] = identifierCopy;
  v23[3] = @"PrimaryBundleID";
  v23[4] = @"IsDoNotDisturbActive";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:activeCopy];
  v24[4] = v19;
  v23[5] = @"IsHardwareKeyboardAttached";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:attachedCopy];
  v24[5] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];

  LOBYTE(self) = [(SBFullScreenSessionMetric *)self sendCoreAnalyticsEventWithName:@"com.apple.SpringBoard.Analytics.SingleAppSession" payload:v21];
  return self;
}

@end