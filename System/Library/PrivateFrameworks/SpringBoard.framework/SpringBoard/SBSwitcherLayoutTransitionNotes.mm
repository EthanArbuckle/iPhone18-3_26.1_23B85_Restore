@interface SBSwitcherLayoutTransitionNotes
- (SBAppLayout)fromAppLayout;
- (SBAppLayout)inAppLayout;
- (SBSwitcherLayoutTransitionNotes)initWithFromPreviousState:(id)state currentLayoutState:(id)layoutState transitionRequest:(id)request;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSwitcherLayoutTransitionNotes

- (SBAppLayout)inAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_inAppLayout);

  return WeakRetained;
}

- (SBSwitcherLayoutTransitionNotes)initWithFromPreviousState:(id)state currentLayoutState:(id)layoutState transitionRequest:(id)request
{
  stateCopy = state;
  layoutStateCopy = layoutState;
  requestCopy = request;
  v46.receiver = self;
  v46.super_class = SBSwitcherLayoutTransitionNotes;
  v11 = [(SBSwitcherLayoutTransitionNotes *)&v46 init];
  if (v11)
  {
    v12 = vdupq_n_s64([requestCopy source]);
    *v12.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v12, xmmword_21F8A7230), vceqq_s64(v12, xmmword_21F8A7240))), 0x1000100010001);
    *(v11 + 26) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
    appLayout = [stateCopy appLayout];
    if ([stateCopy unlockedEnvironmentMode] == 2)
    {
      isFloatingSwitcherVisible = 1;
    }

    else
    {
      isFloatingSwitcherVisible = [stateCopy isFloatingSwitcherVisible];
    }

    v11[8] = isFloatingSwitcherVisible;
    elements = [stateCopy elements];
    if ([elements count])
    {
      v16 = v11[8] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v11[9] = v16 & 1;

    v11[10] = [stateCopy unlockedEnvironmentMode] == 1;
    elements2 = [stateCopy elements];
    v11[11] = [elements2 count] > 1;

    appLayout2 = [layoutStateCopy appLayout];
    if ([layoutStateCopy unlockedEnvironmentMode] == 2)
    {
      isFloatingSwitcherVisible2 = 1;
    }

    else
    {
      isFloatingSwitcherVisible2 = [layoutStateCopy isFloatingSwitcherVisible];
    }

    v11[12] = isFloatingSwitcherVisible2;
    v11[13] = [layoutStateCopy unlockedEnvironmentMode] == 1;
    elements3 = [layoutStateCopy elements];
    if ([elements3 count])
    {
      v21 = v11[12] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    v11[14] = v21 & 1;

    elements4 = [layoutStateCopy elements];
    v11[15] = [elements4 count] > 1;

    elements5 = [layoutStateCopy elements];
    if ([elements5 count])
    {
      elements6 = [stateCopy elements];
      v11[16] = [elements6 count] == 0;
    }

    else
    {
      v11[16] = 0;
    }

    if (v11[9] == 1)
    {
      v25 = v11[13];
    }

    else
    {
      v25 = 0;
    }

    v11[18] = v25 & 1;
    if (v11[10] == 1)
    {
      v26 = v11[14];
    }

    else
    {
      v26 = 0;
    }

    v11[17] = v26 & 1;
    elements7 = [stateCopy elements];
    if ([elements7 count])
    {
      elements8 = [layoutStateCopy elements];
      if ([elements8 count])
      {
        [stateCopy elements];
        v30 = v29 = requestCopy;
        elements9 = [layoutStateCopy elements];
        v11[22] = [v30 isEqual:elements9] ^ 1;

        requestCopy = v29;
      }

      else
      {
        v11[22] = 0;
      }
    }

    else
    {
      v11[22] = 0;
    }

    if (appLayout == appLayout2)
    {
      v33 = 0;
      v11[25] = 0;
      v32 = v11 + 25;
    }

    else
    {
      v11[25] = v11[11];
      v32 = v11 + 25;
      v33 = v11[15];
    }

    v11[24] = v33 & 1;
    elements10 = [layoutStateCopy elements];
    if ([elements10 count] == 1)
    {
      elements11 = [stateCopy elements];
      [layoutStateCopy elements];
      v45 = stateCopy;
      v36 = appLayout2;
      v37 = appLayout;
      v39 = v38 = requestCopy;
      anyObject = [v39 anyObject];
      v11[23] = [elements11 containsObject:anyObject] ^ 1;

      requestCopy = v38;
      appLayout = v37;
      appLayout2 = v36;
      stateCopy = v45;
    }

    else
    {
      v11[23] = 0;
    }

    if (v11[10] == 1)
    {
      v41 = v11[13];
    }

    else
    {
      v41 = 0;
    }

    v11[19] = v41 & 1;
    if (v11[9] == 1 && v11[14] == 1)
    {
      if (v11[24])
      {
        v42 = 0;
      }

      else
      {
        v42 = *v32 ^ 1;
      }

      v11[20] = v42 & 1;
      v43 = [appLayout isEqual:appLayout2];
    }

    else
    {
      v43 = 0;
      v11[20] = 0;
    }

    v11[21] = v43;
    objc_storeWeak(v11 + 4, appLayout);
    objc_storeWeak(v11 + 5, appLayout2);
  }

  return v11;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSwitcherLayoutTransitionNotes *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke;
  v15[3] = &unk_2783A92D8;
  v4 = v3;
  v16 = v4;
  selfCopy = self;
  [v4 appendBodySectionWithName:@"Flags" multilinePrefix:0 block:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_2;
  v12[3] = &unk_2783A92D8;
  v5 = v4;
  v13 = v5;
  selfCopy2 = self;
  [v5 appendBodySectionWithName:@"From AppLayout" multilinePrefix:0 block:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_3;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  selfCopy3 = self;
  [v6 appendBodySectionWithName:@"In AppLayout" multilinePrefix:0 block:v9];
  v7 = v6;

  return v6;
}

id __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 8) withName:@"fromSwitcher"];
  v3 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 9) withName:@"fromApp"];
  v4 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 10) withName:@"fromHomeScreen"];
  v5 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 11) withName:@"fromManyApps"];
  v6 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 12) withName:@"inAnySwitcher"];
  v7 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 13) withName:@"inHomeScreen"];
  v8 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 14) withName:@"inApp"];
  v9 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 15) withName:@"inManyApps"];
  v10 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 16) withName:@"fromNoAppToApp"];
  v11 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 17) withName:@"fromHomeScreenToApp"];
  v12 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 18) withName:@"fromAppToHomeScreen"];
  v13 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 19) withName:@"stableInHomeScreen"];
  v14 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 20) withName:@"stableInAppOrMovingBetweenSingleApp"];
  v15 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 21) withName:@"stableInSameApp"];
  v16 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 22) withName:@"changingApps"];
  v17 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 23) withName:@"movingToSingleApp"];
  v18 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 24) withName:@"movingToManyApps"];
  v19 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 25) withName:@"movingFromManyApps"];
  v20 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 26) withName:@"isPIPRestore"];
  v21 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 27) withName:@"isSystemGesture"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 28) withName:@"isHomeButtonInitiated"];
}

void __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  v2 = [v1 appendObject:WeakRetained withName:0 skipIfNil:0];
}

void __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 40));
  v2 = [v1 appendObject:WeakRetained withName:0 skipIfNil:0];
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSwitcherLayoutTransitionNotes *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (SBAppLayout)fromAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_fromAppLayout);

  return WeakRetained;
}

@end