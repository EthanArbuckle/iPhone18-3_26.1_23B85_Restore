@interface SBSwitcherLayoutTransitionNotes
- (SBAppLayout)fromAppLayout;
- (SBAppLayout)inAppLayout;
- (SBSwitcherLayoutTransitionNotes)initWithFromPreviousState:(id)a3 currentLayoutState:(id)a4 transitionRequest:(id)a5;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSwitcherLayoutTransitionNotes

- (SBAppLayout)inAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_inAppLayout);

  return WeakRetained;
}

- (SBSwitcherLayoutTransitionNotes)initWithFromPreviousState:(id)a3 currentLayoutState:(id)a4 transitionRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46.receiver = self;
  v46.super_class = SBSwitcherLayoutTransitionNotes;
  v11 = [(SBSwitcherLayoutTransitionNotes *)&v46 init];
  if (v11)
  {
    v12 = vdupq_n_s64([v10 source]);
    *v12.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vceqq_s64(v12, xmmword_21F8A7230), vceqq_s64(v12, xmmword_21F8A7240))), 0x1000100010001);
    *(v11 + 26) = vuzp1_s8(*v12.i8, *v12.i8).u32[0];
    v13 = [v8 appLayout];
    if ([v8 unlockedEnvironmentMode] == 2)
    {
      v14 = 1;
    }

    else
    {
      v14 = [v8 isFloatingSwitcherVisible];
    }

    v11[8] = v14;
    v15 = [v8 elements];
    if ([v15 count])
    {
      v16 = v11[8] ^ 1;
    }

    else
    {
      v16 = 0;
    }

    v11[9] = v16 & 1;

    v11[10] = [v8 unlockedEnvironmentMode] == 1;
    v17 = [v8 elements];
    v11[11] = [v17 count] > 1;

    v18 = [v9 appLayout];
    if ([v9 unlockedEnvironmentMode] == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = [v9 isFloatingSwitcherVisible];
    }

    v11[12] = v19;
    v11[13] = [v9 unlockedEnvironmentMode] == 1;
    v20 = [v9 elements];
    if ([v20 count])
    {
      v21 = v11[12] ^ 1;
    }

    else
    {
      v21 = 0;
    }

    v11[14] = v21 & 1;

    v22 = [v9 elements];
    v11[15] = [v22 count] > 1;

    v23 = [v9 elements];
    if ([v23 count])
    {
      v24 = [v8 elements];
      v11[16] = [v24 count] == 0;
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
    v27 = [v8 elements];
    if ([v27 count])
    {
      v28 = [v9 elements];
      if ([v28 count])
      {
        [v8 elements];
        v30 = v29 = v10;
        v31 = [v9 elements];
        v11[22] = [v30 isEqual:v31] ^ 1;

        v10 = v29;
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

    if (v13 == v18)
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
    v34 = [v9 elements];
    if ([v34 count] == 1)
    {
      v35 = [v8 elements];
      [v9 elements];
      v45 = v8;
      v36 = v18;
      v37 = v13;
      v39 = v38 = v10;
      v40 = [v39 anyObject];
      v11[23] = [v35 containsObject:v40] ^ 1;

      v10 = v38;
      v13 = v37;
      v18 = v36;
      v8 = v45;
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
      v43 = [v13 isEqual:v18];
    }

    else
    {
      v43 = 0;
      v11[20] = 0;
    }

    v11[21] = v43;
    objc_storeWeak(v11 + 4, v13);
    objc_storeWeak(v11 + 5, v18);
  }

  return v11;
}

- (id)succinctDescription
{
  v2 = [(SBSwitcherLayoutTransitionNotes *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  v17 = self;
  [v4 appendBodySectionWithName:@"Flags" multilinePrefix:0 block:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_2;
  v12[3] = &unk_2783A92D8;
  v5 = v4;
  v13 = v5;
  v14 = self;
  [v5 appendBodySectionWithName:@"From AppLayout" multilinePrefix:0 block:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SBSwitcherLayoutTransitionNotes_succinctDescriptionBuilder__block_invoke_3;
  v9[3] = &unk_2783A92D8;
  v6 = v5;
  v10 = v6;
  v11 = self;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSwitcherLayoutTransitionNotes *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (SBAppLayout)fromAppLayout
{
  WeakRetained = objc_loadWeakRetained(&self->_fromAppLayout);

  return WeakRetained;
}

@end