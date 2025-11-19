@interface SBEmbeddedContinuityKeyboardFocusCoalition
- (SBEmbeddedContinuityKeyboardFocusCoalition)init;
- (id)updatePolicyForArbitrationRequestFromMember:(id)a3 reason:(id)a4;
@end

@implementation SBEmbeddedContinuityKeyboardFocusCoalition

- (SBEmbeddedContinuityKeyboardFocusCoalition)init
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBEmbeddedContinuityKeyboardFocusCoalition;
  v2 = [(SBKeyboardFocusCoalition *)&v10 _initWithDebugName:@"Embedded+Continuity Coalition"];
  if (v2)
  {
    v3 = objc_alloc_init(SBKeyboardFocusCoalitionPolicyEnforcer);
    v4 = objc_alloc_init(SBSystemKeyCommandCoalitionPolicyEnforcer);
    v5 = objc_alloc_init(SBCameraButtonPolicyEnforcer);
    v6 = [SBKeyboardFocusPolicyEnforcerPipeline alloc];
    v11[0] = v3;
    v11[1] = v4;
    v11[2] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
    v8 = [(SBKeyboardFocusPolicyEnforcerPipeline *)v6 initWithEnforcers:v7];

    [(SBKeyboardFocusCoalition *)v2 setPolicyEnforcer:v8];
  }

  return v2;
}

- (id)updatePolicyForArbitrationRequestFromMember:(id)a3 reason:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SBExclusiveMultiDisplayCoalition *)self embeddedMember];
  v9 = [(SBExclusiveMultiDisplayCoalition *)self externalMember];
  v10 = [v8 updateCoalitionPreferencesWithReason:v7];
  v11 = [v9 updateCoalitionPreferencesWithReason:v7];
  v12 = [v8 preferences];
  v13 = 0;
  if ([v7 isKeyboardArbiterSuggestion] && v8 == v6)
  {
    v14 = [v12 policy];
    if ([v14 advicePolicy] == 1)
    {
      v13 = 0;
    }

    else
    {
      v15 = [v12 lockReasons];
      v13 = [v15 bs_containsObjectPassingTest:&__block_literal_global_278] ^ 1;
    }
  }

  if (v6 && !(v13 & 1 | (([v7 isKeyboardArbiterSuggestion] & 1) == 0)))
  {
    v17 = v6;
  }

  else
  {
    if ([v9 hasFocus])
    {
      v16 = v9;
    }

    else
    {
      v16 = v8;
    }

    v17 = v16;
    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(SBKeyboardFocusCoalition *)self debugName];
      [v17 uniqueIdentifier];
      v20 = v24 = v12;
      v21 = [v6 uniqueIdentifier];
      *buf = 138544386;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = v7;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: selecting member %{public}@, original requester %{public}@, reason: %{public}@, was overruled by hard focus lock: %d", buf, 0x30u);

      v12 = v24;
    }
  }

  v22 = v17;

  return v17;
}

@end