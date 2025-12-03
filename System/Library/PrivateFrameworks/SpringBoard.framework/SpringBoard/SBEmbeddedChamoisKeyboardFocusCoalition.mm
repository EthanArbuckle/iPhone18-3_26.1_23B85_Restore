@interface SBEmbeddedChamoisKeyboardFocusCoalition
- (SBEmbeddedChamoisKeyboardFocusCoalition)init;
- (id)updatePolicyForArbitrationRequestFromMember:(id)member reason:(id)reason;
@end

@implementation SBEmbeddedChamoisKeyboardFocusCoalition

- (SBEmbeddedChamoisKeyboardFocusCoalition)init
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SBEmbeddedChamoisKeyboardFocusCoalition;
  v2 = [(SBKeyboardFocusCoalition *)&v10 _initWithDebugName:@"Embedded+Chamois Coalition"];
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
  memberCopy = member;
  reasonCopy = reason;
  embeddedMember = [(SBExclusiveMultiDisplayCoalition *)self embeddedMember];
  externalMember = [(SBExclusiveMultiDisplayCoalition *)self externalMember];
  preferences = [externalMember preferences];
  preferences2 = [embeddedMember preferences];
  v12 = [externalMember updateCoalitionPreferencesWithReason:reasonCopy];
  v13 = [embeddedMember updateCoalitionPreferencesWithReason:reasonCopy];

  if ([externalMember hasFocus])
  {
    v14 = externalMember;
  }

  else
  {
    v14 = embeddedMember;
  }

  v15 = v14;
  focusLockReasonStrength = [v13 focusLockReasonStrength];
  focusLockReasonStrength2 = [v12 focusLockReasonStrength];
  v50 = v15;
  if (!memberCopy)
  {
    if ((v20 = v15, memberCopy = v20, v20 == externalMember) && focusLockReasonStrength2 == 2 || v20 == embeddedMember && focusLockReasonStrength == 2)
    {
      memberCopy = v20;
      v19 = memberCopy;
      if (memberCopy)
      {
        goto LABEL_61;
      }
    }
  }

  if (focusLockReasonStrength != 2 || focusLockReasonStrength2 == 2)
  {
    if (focusLockReasonStrength == 2 || focusLockReasonStrength2 != 2)
    {
      if (focusLockReasonStrength == 2)
      {
        v47 = v13;
        lockReasons = [v13 lockReasons];
        v22 = [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons strength:2];

        lockReasons2 = [v12 lockReasons];
        [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons2 strength:2];
        v25 = v24 = preferences2;

        v26 = [v22 isMoreRecentThanReason:v25] ? embeddedMember : externalMember;
        v19 = v26;

        preferences2 = v24;
        v13 = v47;

        if (v19)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_24;
    }

    v18 = externalMember;
  }

  else
  {
    v18 = embeddedMember;
  }

  v19 = v18;
  if (v18)
  {
    goto LABEL_61;
  }

LABEL_24:
  v48 = v13;
  v49 = v12;
  lockReasons3 = [v13 lockReasons];
  v28 = [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons3 strength:1];

  lockReasons4 = [preferences2 lockReasons];
  v30 = [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons4 strength:1];

  v45 = v30;
  v46 = preferences2;
  if (v30 && [v30 isEqual:v28] && (objc_msgSend(v28, "isMoreRecentThanReason:", v30) & 1) == 0)
  {

    v28 = 0;
  }

  lockReasons5 = [v49 lockReasons];
  v32 = [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons5 strength:1];

  lockReasons6 = [preferences lockReasons];
  v34 = [SBKeyboardFocusLockReason mostRecentReasonInSet:lockReasons6 strength:1];

  if (v34 && [v34 isEqual:v32] && (objc_msgSend(v32, "isMoreRecentThanReason:", v34) & 1) == 0)
  {

    v32 = 0;
    v19 = 0;
    v38 = 0;
    v36 = v28;
    v37 = embeddedMember;
    if (!v28)
    {
      goto LABEL_49;
    }
  }

  else if (v28 && v32)
  {
    v35 = [v28 isMoreRecentThanReason:v32];
    if (v35)
    {
      v36 = v28;
    }

    else
    {
      v36 = v32;
    }

    if (v35)
    {
      v37 = embeddedMember;
    }

    else
    {
      v37 = externalMember;
    }
  }

  else
  {
    if (v28)
    {
      v36 = v28;
    }

    else
    {
      v36 = v32;
    }

    if (v28)
    {
      v37 = embeddedMember;
    }

    else
    {
      v37 = externalMember;
    }

    if (!(v28 | v32))
    {
      v32 = 0;
      v19 = 0;
      v38 = 0;
      goto LABEL_49;
    }
  }

  v38 = v36;
  v19 = v37;
LABEL_49:
  if (v19 == v50)
  {
LABEL_57:
    v13 = v48;
    goto LABEL_58;
  }

  v13 = v48;
  if ([v38 avoidOverridingAppFocusOnOtherDisplays])
  {
    if (v50 == externalMember)
    {
      v39 = v49;
    }

    else
    {
      v39 = v48;
    }

    policy = [v39 policy];
    advicePolicy = [policy advicePolicy];

    if (advicePolicy)
    {
      v42 = v50;

      v19 = v42;
    }

    preferences = v44;
    goto LABEL_57;
  }

LABEL_58:

  if (!v19)
  {
    memberCopy = memberCopy;
    v19 = memberCopy;
  }

  preferences2 = v46;
  v12 = v49;
LABEL_61:

  return v19;
}

@end