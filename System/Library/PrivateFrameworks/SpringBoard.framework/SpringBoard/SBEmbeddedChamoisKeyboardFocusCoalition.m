@interface SBEmbeddedChamoisKeyboardFocusCoalition
- (SBEmbeddedChamoisKeyboardFocusCoalition)init;
- (id)updatePolicyForArbitrationRequestFromMember:(id)a3 reason:(id)a4;
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

- (id)updatePolicyForArbitrationRequestFromMember:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SBExclusiveMultiDisplayCoalition *)self embeddedMember];
  v9 = [(SBExclusiveMultiDisplayCoalition *)self externalMember];
  v10 = [v9 preferences];
  v11 = [v8 preferences];
  v12 = [v9 updateCoalitionPreferencesWithReason:v7];
  v13 = [v8 updateCoalitionPreferencesWithReason:v7];

  if ([v9 hasFocus])
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;
  v16 = [v13 focusLockReasonStrength];
  v17 = [v12 focusLockReasonStrength];
  v50 = v15;
  if (!v6)
  {
    if ((v20 = v15, v6 = v20, v20 == v9) && v17 == 2 || v20 == v8 && v16 == 2)
    {
      v6 = v20;
      v19 = v6;
      if (v6)
      {
        goto LABEL_61;
      }
    }
  }

  if (v16 != 2 || v17 == 2)
  {
    if (v16 == 2 || v17 != 2)
    {
      if (v16 == 2)
      {
        v47 = v13;
        v21 = [v13 lockReasons];
        v22 = [SBKeyboardFocusLockReason mostRecentReasonInSet:v21 strength:2];

        v23 = [v12 lockReasons];
        [SBKeyboardFocusLockReason mostRecentReasonInSet:v23 strength:2];
        v25 = v24 = v11;

        v26 = [v22 isMoreRecentThanReason:v25] ? v8 : v9;
        v19 = v26;

        v11 = v24;
        v13 = v47;

        if (v19)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_24;
    }

    v18 = v9;
  }

  else
  {
    v18 = v8;
  }

  v19 = v18;
  if (v18)
  {
    goto LABEL_61;
  }

LABEL_24:
  v48 = v13;
  v49 = v12;
  v27 = [v13 lockReasons];
  v28 = [SBKeyboardFocusLockReason mostRecentReasonInSet:v27 strength:1];

  v29 = [v11 lockReasons];
  v30 = [SBKeyboardFocusLockReason mostRecentReasonInSet:v29 strength:1];

  v45 = v30;
  v46 = v11;
  if (v30 && [v30 isEqual:v28] && (objc_msgSend(v28, "isMoreRecentThanReason:", v30) & 1) == 0)
  {

    v28 = 0;
  }

  v31 = [v49 lockReasons];
  v32 = [SBKeyboardFocusLockReason mostRecentReasonInSet:v31 strength:1];

  v33 = [v10 lockReasons];
  v34 = [SBKeyboardFocusLockReason mostRecentReasonInSet:v33 strength:1];

  if (v34 && [v34 isEqual:v32] && (objc_msgSend(v32, "isMoreRecentThanReason:", v34) & 1) == 0)
  {

    v32 = 0;
    v19 = 0;
    v38 = 0;
    v36 = v28;
    v37 = v8;
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
      v37 = v8;
    }

    else
    {
      v37 = v9;
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
      v37 = v8;
    }

    else
    {
      v37 = v9;
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
    if (v50 == v9)
    {
      v39 = v49;
    }

    else
    {
      v39 = v48;
    }

    v40 = [v39 policy];
    v41 = [v40 advicePolicy];

    if (v41)
    {
      v42 = v50;

      v19 = v42;
    }

    v10 = v44;
    goto LABEL_57;
  }

LABEL_58:

  if (!v19)
  {
    v6 = v6;
    v19 = v6;
  }

  v11 = v46;
  v12 = v49;
LABEL_61:

  return v19;
}

@end