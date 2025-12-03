@interface SBSAShakeBehaviorProvider
- (BOOL)canProceedWithContext:(id)context shouldRetry:(BOOL *)retry;
- (CGPoint)_defaultContainerParentViewCenterFromContext:(id)context;
- (SBSAShakeBehaviorProvider)initWithParticipantIdentifier:(id)identifier triggeredBlock:(id)block;
- (double)milestoneForPhase:(int64_t)phase;
- (id)_updatedIdlePreferencesFromPreferences:(id)preferences context:(id)context;
- (id)_updatedIndicatorPreferencesFromPreferences:(id)preferences context:(id)context;
- (id)_updatedKickingPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)_updatedPreparingToSettlePreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)_updatedSettlingPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)nameForPhase:(int64_t)phase;
- (id)updatedContextFromContext:(id)context;
- (id)updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (void)removeFromParentProvider;
@end

@implementation SBSAShakeBehaviorProvider

- (SBSAShakeBehaviorProvider)initWithParticipantIdentifier:(id)identifier triggeredBlock:(id)block
{
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = SBSAShakeBehaviorProvider;
  v7 = [(SBSASequencedBehaviorProvider *)&v11 initWithParticipantIdentifier:identifier];
  if (v7)
  {
    v8 = [blockCopy copy];
    triggeredBlock = v7->_triggeredBlock;
    v7->_triggeredBlock = v8;
  }

  return v7;
}

- (void)removeFromParentProvider
{
  if (self->_triggeredBlock)
  {
    v3 = SBLogSystemAperturePreferencesStackSequencedBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBSAShakeBehaviorProvider *)v3 removeFromParentProvider];
    }

    (*(self->_triggeredBlock + 2))();
    triggeredBlock = self->_triggeredBlock;
    self->_triggeredBlock = 0;
  }

  v5.receiver = self;
  v5.super_class = SBSAShakeBehaviorProvider;
  [(SBSABasePreferencesProvider *)&v5 removeFromParentProvider];
}

- (id)nameForPhase:(int64_t)phase
{
  v7.receiver = self;
  v7.super_class = SBSAShakeBehaviorProvider;
  v4 = [(SBSASequencedBehaviorProvider *)&v7 nameForPhase:?];
  if (phase <= 4)
  {
    v5 = off_2783BAA40[phase];

    v4 = v5;
  }

  return v4;
}

- (BOOL)canProceedWithContext:(id)context shouldRetry:(BOOL *)retry
{
  contextCopy = context;
  participatingElementIdentification = [(SBSASequencedBehaviorProvider *)self participatingElementIdentification];
  if (participatingElementIdentification)
  {
    elementContexts = [contextCopy elementContexts];
    firstObject = [elementContexts firstObject];
    v10 = SAElementIdentityEqualToIdentity();

    if (v10)
    {
      preferences = [contextCopy preferences];
      elementLayoutTransition = [preferences elementLayoutTransition];
      initialElementContexts = [elementLayoutTransition initialElementContexts];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __63__SBSAShakeBehaviorProvider_canProceedWithContext_shouldRetry___block_invoke;
      v18[3] = &unk_2783AD700;
      v19 = participatingElementIdentification;
      v14 = [initialElementContexts bs_firstObjectPassingTest:v18];
      v15 = v14 != 0;

      v16 = 1;
      if (!retry)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v16 = 0;
  v15 = 0;
  if (retry)
  {
LABEL_6:
    *retry = v16;
  }

LABEL_7:

  return v15;
}

- (id)updatedContextFromContext:(id)context
{
  v16.receiver = self;
  v16.super_class = SBSAShakeBehaviorProvider;
  v5 = [(SBSASequencedBehaviorProvider *)&v16 updatedContextFromContext:context];
  if ([(SBSASequencedBehaviorProvider *)self activePhase]== 1 || [(SBSASequencedBehaviorProvider *)self activePhase]== 2)
  {
    [v5 inertContainerFrame];
    settings = [objc_opt_class() settings];
    [settings shakeSensorExpansion];
    [v5 displayScale];
    v14 = v7;
    UIRectCenteredXInRectScale();
    [settings shakeSensorOffset];
    [v5 layoutDirection];
    UIRectIntegralWithScale();
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__SBSAShakeBehaviorProvider_updatedContextFromContext___block_invoke;
    v15[3] = &unk_2783B5508;
    v15[4] = self;
    v15[5] = a2;
    v15[6] = v8;
    v15[7] = v9;
    v15[8] = v10;
    v15[9] = v11;
    v12 = [v5 copyWithBlock:v15];

    v5 = v12;
  }

  return v5;
}

void __55__SBSAShakeBehaviorProvider_updatedContextFromContext___block_invoke(double *a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __55__SBSAShakeBehaviorProvider_updatedContextFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setInertContainerFrame:{a1[6], a1[7], a1[8], a1[9]}];
}

- (id)updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  activePhase = [(SBSASequencedBehaviorProvider *)self activePhase];
  if (activePhase > 2)
  {
    if (activePhase == 3 || activePhase == 4)
    {
      v11 = [(SBSAShakeBehaviorProvider *)self _updatedSettlingPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (activePhase != 1)
  {
    if (activePhase == 2)
    {
      v11 = [(SBSAShakeBehaviorProvider *)self _updatedPreparingToSettlePreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      goto LABEL_10;
    }

LABEL_8:
    v11 = [(SBSAShakeBehaviorProvider *)self _updatedIdlePreferencesFromPreferences:preferencesCopy context:contextCopy];
    goto LABEL_10;
  }

  v11 = [(SBSAShakeBehaviorProvider *)self _updatedKickingPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
LABEL_10:
  v12 = v11;
  v13 = [(SBSAShakeBehaviorProvider *)self _updatedIndicatorPreferencesFromPreferences:v11 context:contextCopy];

  return v13;
}

- (double)milestoneForPhase:(int64_t)phase
{
  v10.receiver = self;
  v10.super_class = SBSAShakeBehaviorProvider;
  [(SBSASequencedBehaviorProvider *)&v10 milestoneForPhase:?];
  if (phase == 4)
  {
    [&unk_28336F620 bs_CGFloatValue];
    return v8;
  }

  if (phase == 3)
  {
    settings = [objc_opt_class() settings];
    [settings secondShakeMilestone];
    goto LABEL_6;
  }

  v5 = v4;
  if (phase == 2)
  {
    settings = [objc_opt_class() settings];
    [settings firstShakeMilestone];
LABEL_6:
    v5 = v7;
  }

  return v5;
}

- (id)_updatedIndicatorPreferencesFromPreferences:(id)preferences context:(id)context
{
  preferencesCopy = preferences;
  indicatorElementDescription = [preferencesCopy indicatorElementDescription];
  v8 = preferencesCopy;
  v9 = v8;
  if (indicatorElementDescription)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke;
    v16[3] = &unk_2783A93E8;
    v16[4] = self;
    v16[5] = a2;
    v10 = [indicatorElementDescription copyWithBlock:v16];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_2;
    v13[3] = &unk_2783AD750;
    v14 = v10;
    v15 = a2;
    v13[4] = self;
    v11 = v10;
    v9 = [v8 copyWithBlock:v13];
  }

  return v9;
}

void __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v2 = objc_opt_self();
    v3 = v6;
    if (v2)
    {
      if (objc_opt_isKindOfClass())
      {
        v4 = v3;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if (!v5)
    {
      __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setNeedsMatchMoveAnimationBetweenCurtainAndJindoViews:1];
}

void __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
}

- (id)_updatedKickingPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__86;
  v22 = __Block_byref_object_dispose__86;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v14[3] = &unk_2783BA100;
  v17 = a2;
  v14[4] = self;
  v11 = contextCopy;
  v15 = v11;
  v16 = &v18;
  v12 = [preferencesCopy copyWithBlock:v14];
  if (identity)
  {
    *identity = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v57 = v3;

  v56 = [objc_opt_class() settings];
  v60 = [v56 jindoAuthErrorStretchOut];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = [v7 containerViewDescriptions];
  v8 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v8)
  {
    v9 = v8;
    v59 = *v63;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v63 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v60];
        v13 = [SBSAInterfaceElementPropertyIdentity alloc];
        v14 = [v11 interfaceElementIdentifier];
        v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];
        [v7 setAnimatedTransitionDescription:v12 forProperty:v15 withMilestones:0];

        v16 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v60];
        v17 = [SBSAInterfaceElementPropertyIdentity alloc];
        v18 = [v11 interfaceElementIdentifier];
        v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"center"];
        [v7 setAnimatedTransitionDescription:v16 forProperty:v19 withMilestones:0];
      }

      v9 = [obj countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v9);
  }

  v20 = [v7 containerViewDescriptions];
  v21 = [v20 lastObject];

  v22 = [v7 indicatorContainerViewDescription];
  if (v22)
  {
    v23 = [SBSAInterfaceElementPropertyIdentity alloc];
    v24 = [v21 interfaceElementIdentifier];
    v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"bounds"];
    v26 = [SBSAInterfaceElementPropertyIdentity alloc];
    v27 = [v22 interfaceElementIdentifier];
    v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"bounds"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v25 withProperty:v28 withMilestones:0];

    v29 = [SBSAInterfaceElementPropertyIdentity alloc];
    v30 = [v21 interfaceElementIdentifier];
    v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"center"];
    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    v33 = [v22 interfaceElementIdentifier];
    v34 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v33 andProperty:@"center"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v31 withProperty:v34 withMilestones:0];
  }

  v35 = [v7 containerParentViewDescription];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [*(a1 + 40) containerParentViewDescription];
  }

  [*(a1 + 32) _defaultContainerParentViewCenterFromContext:*(a1 + 40)];
  v39 = v38;
  v41 = v40;
  [v56 shakeDisplacement];
  v43 = v42;
  v44 = [*(a1 + 40) layoutDirection];
  v45 = -v43;
  if (v44 != 1)
  {
    v45 = v43;
  }

  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2;
  v61[3] = &unk_2783BAA20;
  v46 = *(a1 + 56);
  v61[4] = *(a1 + 32);
  v61[5] = v46;
  *&v61[6] = v39 - v45;
  v61[7] = v41;
  v47 = [v37 copyWithBlock:v61];

  [v7 setContainerParentViewDescription:v47];
  v48 = [SBSAInterfaceElementPropertyIdentity alloc];
  v49 = [v47 interfaceElementIdentifier];
  v50 = [(SBSAInterfaceElementPropertyIdentity *)v48 initWithAssociatedInterfaceElementIdentifier:v49 andProperty:@"center"];
  v51 = *(*(a1 + 48) + 8);
  v52 = *(v51 + 40);
  *(v51 + 40) = v50;

  v53 = objc_opt_class();
  v54 = [v56 jindoAuthErrorShakeInitialKick];
  v55 = [v53 newAnimatedTransitionDescriptionWithBehaviorSettings:v54];
  [v7 setAnimatedTransitionDescription:v55 forProperty:*(*(*(a1 + 48) + 8) + 40) withMilestones:0];
}

void __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setCenter:{*(a1 + 48), *(a1 + 56)}];
}

- (CGPoint)_defaultContainerParentViewCenterFromContext:(id)context
{
  [context systemContainerBounds];

  UIRectGetCenter();
  result.y = v4;
  result.x = v3;
  return result;
}

- (id)_updatedPreparingToSettlePreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__86;
  v22 = __Block_byref_object_dispose__86;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v14[3] = &unk_2783BA100;
  v17 = a2;
  v14[4] = self;
  v11 = contextCopy;
  v15 = v11;
  v16 = &v18;
  v12 = [preferencesCopy copyWithBlock:v14];
  if (identity)
  {
    *identity = v19[5];
  }

  _Block_object_dispose(&v18, 8);

  return v12;
}

void __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 containerParentViewDescription];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [*(a1 + 40) containerParentViewDescription];
  }

  v11 = v10;

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2;
  v24[3] = &unk_2783AD750;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v26 = *(a1 + 56);
  v24[4] = v12;
  v25 = v13;
  v14 = [v11 copyWithBlock:v24];

  [v7 setContainerParentViewDescription:v14];
  v15 = [SBSAInterfaceElementPropertyIdentity alloc];
  v16 = [v14 interfaceElementIdentifier];
  v17 = [(SBSAInterfaceElementPropertyIdentity *)v15 initWithAssociatedInterfaceElementIdentifier:v16 andProperty:@"center"];
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v20 = objc_opt_class();
  v21 = [objc_opt_class() settings];
  v22 = [v21 jindoAuthErrorShakeSettle];
  v23 = [v20 newAnimatedTransitionDescriptionWithBehaviorSettings:v22];
  [v7 setAnimatedTransitionDescription:v23 forProperty:*(*(*(a1 + 48) + 8) + 40) withMilestones:0];
}

void __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _defaultContainerParentViewCenterFromContext:*(a1 + 40)];
  [v6 setCenter:?];
}

- (id)_updatedSettlingPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  v28[1] = *MEMORY[0x277D85DE8];
  preferencesCopy = preferences;
  contextCopy = context;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__86;
  v25 = __Block_byref_object_dispose__86;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__SBSAShakeBehaviorProvider__updatedSettlingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v20[3] = &unk_2783B01E8;
  v20[5] = &v21;
  v20[6] = a2;
  v20[4] = self;
  v11 = [preferencesCopy copyWithBlock:v20];
  if ([(SBSASequencedBehaviorProvider *)self activePhase]== 4 && self->_triggeredBlock)
  {
    v12 = [SBSACalloutBlockAction alloc];
    triggeredBlock = self->_triggeredBlock;
    v28[0] = @"shakeProvider.completion";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v15 = [(SBSACalloutBlockAction *)v12 initWithCalloutBlock:triggeredBlock reasons:v14];

    v16 = self->_triggeredBlock;
    self->_triggeredBlock = 0;

    v27 = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v18 = [v11 copyByAddingActions:v17];

    v11 = v18;
  }

  if (identity)
  {
    *identity = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __105__SBSAShakeBehaviorProvider__updatedSettlingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __105__SBSAShakeBehaviorProvider__updatedSettlingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v24 = v3;

  v8 = [objc_opt_class() settings];
  v26 = [v8 jindoAuthErrorStretchSettle];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [v7 containerViewDescriptions];
  v9 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        v14 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v26];
        v15 = [SBSAInterfaceElementPropertyIdentity alloc];
        v16 = [v13 interfaceElementIdentifier];
        v17 = [(SBSAInterfaceElementPropertyIdentity *)v15 initWithAssociatedInterfaceElementIdentifier:v16 andProperty:@"bounds"];
        [v7 setAnimatedTransitionDescription:v14 forProperty:v17 withMilestones:0];

        v18 = [SBSAInterfaceElementPropertyIdentity alloc];
        v19 = [v13 interfaceElementIdentifier];
        v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"center"];

        v21 = *(*(a1 + 40) + 8);
        v23 = *(v21 + 40);
        v22 = (v21 + 40);
        if (!v23)
        {
          objc_storeStrong(v22, v20);
        }

        [v7 setAnimatedTransitionDescription:v14 forProperty:v20 withMilestones:0];
      }

      v10 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v10);
  }
}

- (id)_updatedIdlePreferencesFromPreferences:(id)preferences context:(id)context
{
  contextCopy = context;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke;
  v11[3] = &unk_2783AD750;
  v12 = contextCopy;
  v13 = a2;
  v11[4] = self;
  v8 = contextCopy;
  v9 = [preferences copyWithBlock:v11];

  return v9;
}

void __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    if (!v7)
    {
      __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) containerParentViewDescription];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_2;
  v16[3] = &unk_2783AD750;
  v16[4] = *(a1 + 32);
  v15 = *(a1 + 40);
  v9 = v15;
  v17 = v15;
  v10 = [v8 copyWithBlock:v16];
  [v7 setContainerParentViewDescription:v10];
  v11 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"center"];
  v12 = [SBSAInterfaceElementPropertyIdentity alloc];
  v13 = [v8 interfaceElementIdentifier];
  v14 = [(SBSAInterfaceElementPropertyIdentity *)v12 initWithAssociatedInterfaceElementIdentifier:v13 andProperty:@"center"];
  [v7 setAnimatedTransitionDescription:v11 forProperty:v14 withMilestones:0];
}

void __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = objc_opt_self();
    v4 = v7;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (!v6)
    {
      __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _defaultContainerParentViewCenterFromContext:*(a1 + 40)];
  [v6 setCenter:?];
}

void __55__SBSAShakeBehaviorProvider_updatedContextFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaindicatore.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __81__SBSAShakeBehaviorProvider__updatedIndicatorPreferencesFromPreferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __104__SBSAShakeBehaviorProvider__updatedKickingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __114__SBSAShakeBehaviorProvider__updatedPreparingToSettlePreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __105__SBSAShakeBehaviorProvider__updatedSettlingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __76__SBSAShakeBehaviorProvider__updatedIdlePreferencesFromPreferences_context___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end