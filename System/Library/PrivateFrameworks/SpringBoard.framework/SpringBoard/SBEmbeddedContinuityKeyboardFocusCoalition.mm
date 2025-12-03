@interface SBEmbeddedContinuityKeyboardFocusCoalition
- (SBEmbeddedContinuityKeyboardFocusCoalition)init;
- (id)updatePolicyForArbitrationRequestFromMember:(id)member reason:(id)reason;
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

- (id)updatePolicyForArbitrationRequestFromMember:(id)member reason:(id)reason
{
  v35 = *MEMORY[0x277D85DE8];
  memberCopy = member;
  reasonCopy = reason;
  embeddedMember = [(SBExclusiveMultiDisplayCoalition *)self embeddedMember];
  externalMember = [(SBExclusiveMultiDisplayCoalition *)self externalMember];
  v10 = [embeddedMember updateCoalitionPreferencesWithReason:reasonCopy];
  v11 = [externalMember updateCoalitionPreferencesWithReason:reasonCopy];
  preferences = [embeddedMember preferences];
  v13 = 0;
  if ([reasonCopy isKeyboardArbiterSuggestion] && embeddedMember == memberCopy)
  {
    policy = [preferences policy];
    if ([policy advicePolicy] == 1)
    {
      v13 = 0;
    }

    else
    {
      lockReasons = [preferences lockReasons];
      v13 = [lockReasons bs_containsObjectPassingTest:&__block_literal_global_278] ^ 1;
    }
  }

  if (memberCopy && !(v13 & 1 | (([reasonCopy isKeyboardArbiterSuggestion] & 1) == 0)))
  {
    v17 = memberCopy;
  }

  else
  {
    if ([externalMember hasFocus])
    {
      v16 = externalMember;
    }

    else
    {
      v16 = embeddedMember;
    }

    v17 = v16;
    v18 = SBLogKeyboardFocus();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      debugName = [(SBKeyboardFocusCoalition *)self debugName];
      [v17 uniqueIdentifier];
      v20 = v24 = preferences;
      uniqueIdentifier = [memberCopy uniqueIdentifier];
      *buf = 138544386;
      v26 = debugName;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = uniqueIdentifier;
      v31 = 2114;
      v32 = reasonCopy;
      v33 = 1024;
      v34 = v13;
      _os_log_impl(&dword_21ED4E000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] arbitration: selecting member %{public}@, original requester %{public}@, reason: %{public}@, was overruled by hard focus lock: %d", buf, 0x30u);

      preferences = v24;
    }
  }

  v22 = v17;

  return v17;
}

@end