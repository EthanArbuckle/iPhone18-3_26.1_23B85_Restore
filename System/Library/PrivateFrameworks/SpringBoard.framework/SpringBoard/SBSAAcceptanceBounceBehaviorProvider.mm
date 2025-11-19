@interface SBSAAcceptanceBounceBehaviorProvider
- (BOOL)phaseIsTimeDelayBased:(int64_t)a3;
- (CGRect)_expandedBouncingContainerViewFrameForBounceStyle:(int64_t)a3 unexpandedFrame:(CGRect)a4;
- (SBSAAcceptanceBounceBehaviorProvider)initWithParticipantIdentifier:(id)a3 style:(int64_t)a4 triggeredBlock:(id)a5;
- (double)delayForPhase:(int64_t)a3;
- (id)_updatedReboundingPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5;
- (id)_updatedRevealAcceptedElementPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5;
- (id)_updatedStretchingPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5;
- (id)nameForPhase:(int64_t)a3;
- (id)updatedContextFromContext:(id)a3;
- (id)updatedPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5;
- (void)removeFromParentProvider;
@end

@implementation SBSAAcceptanceBounceBehaviorProvider

- (SBSAAcceptanceBounceBehaviorProvider)initWithParticipantIdentifier:(id)a3 style:(int64_t)a4 triggeredBlock:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = SBSAAcceptanceBounceBehaviorProvider;
  v9 = [(SBSASequencedBehaviorProvider *)&v14 initWithParticipantIdentifier:a3];
  v10 = v9;
  if (v9)
  {
    v9->_style = a4;
    v11 = [v8 copy];
    triggeredBlock = v10->_triggeredBlock;
    v10->_triggeredBlock = v11;
  }

  return v10;
}

- (void)removeFromParentProvider
{
  if (self->_triggeredBlock)
  {
    v3 = SBLogSystemAperturePreferencesStackSequencedBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBSAAcceptanceBounceBehaviorProvider *)v3 removeFromParentProvider];
    }

    (*(self->_triggeredBlock + 2))();
    triggeredBlock = self->_triggeredBlock;
    self->_triggeredBlock = 0;
  }

  v5.receiver = self;
  v5.super_class = SBSAAcceptanceBounceBehaviorProvider;
  [(SBSABasePreferencesProvider *)&v5 removeFromParentProvider];
}

- (id)nameForPhase:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = SBSAAcceptanceBounceBehaviorProvider;
  v4 = [(SBSASequencedBehaviorProvider *)&v7 nameForPhase:?];
  if (a3 <= 4)
  {
    v5 = off_2783C3B20[a3];

    v4 = v5;
  }

  return v4;
}

BOOL __95__SBSAAcceptanceBounceBehaviorProvider_canPersistAcrossLayoutStateChangesToNewElementContexts___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 layoutMode];
  v4 = [v2 systemApertureCustomLayout];

  return SBSABehavesLikeCustom(v3, v4);
}

- (id)updatedContextFromContext:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SBSAAcceptanceBounceBehaviorProvider;
  v6 = [(SBSASequencedBehaviorProvider *)&v17 updatedContextFromContext:v5];
  if ([(SBSASequencedBehaviorProvider *)self activePhase]== 1 && self->_style)
  {
    [v6 inertContainerFrame];
    v7 = [objc_opt_class() settings];
    [v7 acceptanceSideBounceXSensorExpansion];
    [v6 displayScale];
    v15 = v8;
    UIRectCenteredXInRectScale();
    [v7 acceptanceSideBounceXSensorOffset];
    UIRectIntegralWithScale();
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__SBSAAcceptanceBounceBehaviorProvider_updatedContextFromContext___block_invoke;
    v16[3] = &unk_2783B5508;
    v16[4] = self;
    v16[5] = a2;
    v16[6] = v9;
    v16[7] = v10;
    v16[8] = v11;
    v16[9] = v12;
    v13 = [v6 copyWithBlock:v16];

    v6 = v13;
  }

  return v5;
}

void __66__SBSAAcceptanceBounceBehaviorProvider_updatedContextFromContext___block_invoke(double *a1, void *a2)
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
      __66__SBSAAcceptanceBounceBehaviorProvider_updatedContextFromContext___block_invoke_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setInertContainerFrame:{a1[6], a1[7], a1[8], a1[9]}];
}

- (id)updatedPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(SBSASequencedBehaviorProvider *)self activePhase];
  switch(v10)
  {
    case 3:
      if (!self->_triggeredBlock)
      {
        lastSeenLastChangingElementTransition = self->_lastSeenLastChangingElementTransition;
        v15 = [v8 lastChangingElementLayoutTransition];
        v16 = v15;
        if (lastSeenLastChangingElementTransition)
        {
          v17 = BSEqualObjects();

          if ((v17 & 1) == 0)
          {
            self->_shouldBeRemovedUponLayoutChange = 1;
          }
        }

        else
        {
          v18 = self->_lastSeenLastChangingElementTransition;
          self->_lastSeenLastChangingElementTransition = v15;
        }
      }

      v11 = [(SBSAAcceptanceBounceBehaviorProvider *)self _updatedRevealAcceptedElementPreferencesFromPreferences:v8 context:v9 relevantPropertyIdentity:a5];
      break;
    case 2:
      v11 = [(SBSAAcceptanceBounceBehaviorProvider *)self _updatedReboundingPreferencesFromPreferences:v8 context:v9 relevantPropertyIdentity:a5];
      break;
    case 1:
      v11 = [(SBSAAcceptanceBounceBehaviorProvider *)self _updatedStretchingPreferencesFromPreferences:v8 context:v9 relevantPropertyIdentity:a5];
      break;
    default:
      v19.receiver = self;
      v19.super_class = SBSAAcceptanceBounceBehaviorProvider;
      v11 = [(SBSASequencedBehaviorProvider *)&v19 updatedPreferencesFromPreferences:v8 context:v9 relevantPropertyIdentity:a5];
      break;
  }

  v12 = v11;

  return v12;
}

- (BOOL)phaseIsTimeDelayBased:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = SBSAAcceptanceBounceBehaviorProvider;
  result = [(SBSASequencedBehaviorProvider *)&v6 phaseIsTimeDelayBased:?];
  if (a3 == 4 || (a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    return 1;
  }

  return result;
}

- (double)delayForPhase:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = SBSAAcceptanceBounceBehaviorProvider;
  [(SBSASequencedBehaviorProvider *)&v11 delayForPhase:?];
  v6 = v5;
  v7 = [objc_opt_class() settings];
  v8 = v7;
  switch(a3)
  {
    case 4:
      if (self->_style)
      {
        [v7 acceptanceSideBounceFinishingDelay];
      }

      else
      {
        [v7 acceptanceUpBounceFinishingDelay];
      }

      goto LABEL_13;
    case 3:
      if (self->_style)
      {
        [v7 acceptanceSideBounceItemAppearanceDelayOffset];
      }

      else
      {
        [v7 acceptanceUpBounceItemAppearanceDelayOffset];
      }

      goto LABEL_13;
    case 2:
      if (self->_style)
      {
        [v7 acceptanceSideBounceReboundDelay];
      }

      else
      {
        [v7 acceptanceUpBounceReboundDelay];
      }

LABEL_13:
      v6 = v9;
      break;
  }

  return v6;
}

- (id)_updatedStretchingPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v7[3] = &unk_2783A93E8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [a3 copyWithBlock:{v7, a4, a5}];

  return v5;
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = objc_opt_self();
  v4 = v2;
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

  v46 = v6;
  if (!v6)
  {
    __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(a1, v4);
LABEL_9:
    v46 = 0;
  }

  v7 = [objc_opt_class() settings];
  v40 = v7;
  v41 = v2;
  if (*(*(a1 + 32) + 80))
  {
    [v7 acceptanceBounceSideStretch];
  }

  else
  {
    [v7 acceptanceBounceStretch];
  }
  v44 = ;
  v8 = [v46 containerViewDescriptions];
  v9 = [v8 mutableCopy];

  v10 = [v9 firstObject];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2;
  v51[3] = &unk_2783AD750;
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v52 = v10;
  v53 = v11;
  v51[4] = v12;
  v39 = [v10 copyWithBlock:v51];
  [v9 replaceObjectAtIndex:0 withObject:?];
  [v46 setContainerViewDescriptions:v9];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
  if (v13)
  {
    v14 = v13;
    v43 = *v48;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v48 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v47 + 1) + 8 * i);
        v17 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v44];
        v18 = [SBSAInterfaceElementPropertyIdentity alloc];
        v19 = [v16 interfaceElementIdentifier];
        v20 = [(SBSAInterfaceElementPropertyIdentity *)v18 initWithAssociatedInterfaceElementIdentifier:v19 andProperty:@"bounds"];
        [v46 setAnimatedTransitionDescription:v17 forProperty:v20 withMilestones:0];

        v21 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v44];
        v22 = [SBSAInterfaceElementPropertyIdentity alloc];
        v23 = [v16 interfaceElementIdentifier];
        v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"center"];
        [v46 setAnimatedTransitionDescription:v21 forProperty:v24 withMilestones:0];
      }

      v14 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
    }

    while (v14);
  }

  v25 = [v46 indicatorContainerViewDescription];
  v26 = [obj lastObject];
  if (v26 && v25)
  {
    v27 = [SBSAInterfaceElementPropertyIdentity alloc];
    v28 = [v26 interfaceElementIdentifier];
    v29 = [(SBSAInterfaceElementPropertyIdentity *)v27 initWithAssociatedInterfaceElementIdentifier:v28 andProperty:@"bounds"];
    v30 = [SBSAInterfaceElementPropertyIdentity alloc];
    v31 = [v25 interfaceElementIdentifier];
    v32 = [(SBSAInterfaceElementPropertyIdentity *)v30 initWithAssociatedInterfaceElementIdentifier:v31 andProperty:@"bounds"];
    [v46 associateAnimatedTransitionDescriptionOfProperty:v29 withProperty:v32 withMilestones:0];

    v33 = [SBSAInterfaceElementPropertyIdentity alloc];
    v34 = [v26 interfaceElementIdentifier];
    v35 = [(SBSAInterfaceElementPropertyIdentity *)v33 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"center"];
    v36 = [SBSAInterfaceElementPropertyIdentity alloc];
    v37 = [v25 interfaceElementIdentifier];
    v38 = [(SBSAInterfaceElementPropertyIdentity *)v36 initWithAssociatedInterfaceElementIdentifier:v37 andProperty:@"center"];
    [v46 associateAnimatedTransitionDescriptionOfProperty:v35 withProperty:v38 withMilestones:0];
  }
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2(uint64_t a1, void *a2)
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
      __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1(a1, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) bounds];
  [*(a1 + 40) center];
  SBUnintegralizedRectCenteredAboutPoint();
  [*(a1 + 32) _expandedBouncingContainerViewFrameForBounceStyle:*(*(a1 + 32) + 80) unexpandedFrame:?];
  SBRectWithSize();
  [v6 setBounds:?];
  UIRectGetCenter();
  [v6 setCenter:?];
}

- (id)_updatedReboundingPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __118__SBSAAcceptanceBounceBehaviorProvider__updatedReboundingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v7[3] = &unk_2783A93E8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [a3 copyWithBlock:{v7, a4, a5}];

  return v5;
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedReboundingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() settings];
  v39 = v4;
  if (*(*(a1 + 32) + 80))
  {
    [v4 acceptanceBounceSideRebound];
  }

  else
  {
    [v4 acceptanceBounceRebound];
  }
  v42 = ;
  v5 = v3;
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (!v9)
    {
      __118__SBSAAcceptanceBounceBehaviorProvider__updatedReboundingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(a1, a1 + 32, v7);
    }
  }

  else
  {
    v9 = 0;
  }

  v38 = v5;

  v10 = [v9 containerViewDescriptions];
  v11 = [v10 mutableCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v41 = *v44;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:{v42, v38, v39}];
        v17 = [SBSAInterfaceElementPropertyIdentity alloc];
        v18 = [v15 interfaceElementIdentifier];
        v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"bounds"];
        [v9 setAnimatedTransitionDescription:v16 forProperty:v19 withMilestones:0];

        v20 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v42];
        v21 = [SBSAInterfaceElementPropertyIdentity alloc];
        v22 = [v15 interfaceElementIdentifier];
        v23 = [(SBSAInterfaceElementPropertyIdentity *)v21 initWithAssociatedInterfaceElementIdentifier:v22 andProperty:@"center"];
        [v9 setAnimatedTransitionDescription:v20 forProperty:v23 withMilestones:0];
      }

      v13 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v13);
  }

  v24 = [v9 indicatorContainerViewDescription];
  v25 = [obj lastObject];
  if (v25 && v24)
  {
    v26 = [SBSAInterfaceElementPropertyIdentity alloc];
    v27 = [v25 interfaceElementIdentifier];
    v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"bounds"];
    v29 = [SBSAInterfaceElementPropertyIdentity alloc];
    v30 = [v24 interfaceElementIdentifier];
    v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"bounds"];
    [v9 associateAnimatedTransitionDescriptionOfProperty:v28 withProperty:v31 withMilestones:0];

    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    v33 = [v25 interfaceElementIdentifier];
    v34 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v33 andProperty:@"center"];
    v35 = [SBSAInterfaceElementPropertyIdentity alloc];
    v36 = [v24 interfaceElementIdentifier];
    v37 = [(SBSAInterfaceElementPropertyIdentity *)v35 initWithAssociatedInterfaceElementIdentifier:v36 andProperty:@"center"];
    [v9 associateAnimatedTransitionDescriptionOfProperty:v34 withProperty:v37 withMilestones:0];
  }
}

- (id)_updatedRevealAcceptedElementPreferencesFromPreferences:(id)a3 context:(id)a4 relevantPropertyIdentity:(id *)a5
{
  v28[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__138;
  v25 = __Block_byref_object_dispose__138;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __129__SBSAAcceptanceBounceBehaviorProvider__updatedRevealAcceptedElementPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v20[3] = &unk_2783B01E8;
  v20[5] = &v21;
  v20[6] = a2;
  v20[4] = self;
  v11 = [v9 copyWithBlock:v20];
  if (self->_triggeredBlock)
  {
    v12 = [SBSACalloutBlockAction alloc];
    triggeredBlock = self->_triggeredBlock;
    v28[0] = @"acceptanceBounceProvider.completion";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    v15 = [(SBSACalloutBlockAction *)v12 initWithCalloutBlock:triggeredBlock reasons:v14];

    v16 = self->_triggeredBlock;
    self->_triggeredBlock = 0;

    v27 = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v18 = [v11 copyByAddingActions:v17];

    v11 = v18;
  }

  if (a5)
  {
    *a5 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  return v11;
}

void __129__SBSAAcceptanceBounceBehaviorProvider__updatedRevealAcceptedElementPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() settings];
  v5 = v4;
  if (*(*(a1 + 32) + 80))
  {
    [v4 acceptanceBounceSideLayout];
  }

  else
  {
    [v4 acceptanceBounceLayout];
  }
  v6 = ;
  if (*(*(a1 + 32) + 80))
  {
    [v5 acceptanceBounceSideLayoutY];
  }

  else
  {
    [v5 acceptanceBounceLayoutY];
  }
  v43 = ;
  v7 = v3;
  v40 = v5;
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = v7;
    if (v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (!v11)
    {
      __129__SBSAAcceptanceBounceBehaviorProvider__updatedRevealAcceptedElementPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(a1, a1 + 32, v9);
    }
  }

  else
  {
    v11 = 0;
  }

  v38 = v7;
  v39 = a1;

  v12 = [v11 containerViewDescriptions];
  v13 = [v12 mutableCopy];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 1;
    v42 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v44 + 1) + 8 * i);
        v19 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:{v6, v38}];
        v20 = v19;
        if (v16)
        {
          v21 = [v19 copyBySettingAuxillaryBehaviorSettings:v43 forKeyPath:@"size.height"];

          v20 = v21;
        }

        v22 = [SBSAInterfaceElementPropertyIdentity alloc];
        v23 = [v18 interfaceElementIdentifier];
        v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"bounds"];
        [v11 setAnimatedTransitionDescription:v20 forProperty:v24 withMilestones:0];

        v25 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v6];
        v26 = v25;
        if (v16)
        {
          v27 = [v25 copyBySettingAuxillaryBehaviorSettings:v43 forKeyPath:@"y"];

          v26 = v27;
        }

        v28 = [SBSAInterfaceElementPropertyIdentity alloc];
        v29 = [v18 interfaceElementIdentifier];
        v30 = [(SBSAInterfaceElementPropertyIdentity *)v28 initWithAssociatedInterfaceElementIdentifier:v29 andProperty:@"center"];
        [v11 setAnimatedTransitionDescription:v26 forProperty:v30 withMilestones:0];

        v16 = 0;
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      v16 = 0;
    }

    while (v15);
  }

  v31 = [v11 containerViewDescriptions];
  v32 = [v31 firstObject];

  v33 = [SBSAInterfaceElementPropertyIdentity alloc];
  v34 = [v32 interfaceElementIdentifier];
  v35 = [(SBSAInterfaceElementPropertyIdentity *)v33 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"bounds"];
  v36 = *(*(v39 + 40) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v35;
}

- (CGRect)_expandedBouncingContainerViewFrameForBounceStyle:(int64_t)a3 unexpandedFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [objc_opt_class() settings];
  v10 = v9;
  if (a3 == 2)
  {
    [v9 acceptanceSideBounceYPadding];
    v12 = -v22;
    [v10 acceptanceSideBounceYPadding];
    v16 = -v23;
    [v10 acceptanceSideBounceXStretch];
    v18 = -v24;
    v14 = 0.0;
  }

  else if (a3 == 1)
  {
    [v9 acceptanceSideBounceYPadding];
    v12 = -v19;
    [v10 acceptanceSideBounceXStretch];
    v14 = -v20;
    [v10 acceptanceSideBounceYPadding];
    v16 = -v21;
    v18 = 0.0;
  }

  else if (a3)
  {
    v12 = *MEMORY[0x277D768C8];
    v14 = *(MEMORY[0x277D768C8] + 8);
    v16 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
  }

  else
  {
    [v9 acceptanceUpBounceYStretch];
    v12 = -v11;
    [v10 acceptanceUpBounceXPadding];
    v14 = -v13;
    [v10 acceptanceUpBounceYDownStretch];
    v16 = -v15;
    [v10 acceptanceUpBounceXPadding];
    v18 = -v17;
  }

  v25 = width - (v18 + v14);

  v26 = x + v14;
  v27 = y + v12;
  v28 = v25;
  v29 = height - (v16 + v12);
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

void __66__SBSAAcceptanceBounceBehaviorProvider_updatedContextFromContext___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v3 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v3 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedStretchingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v13 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaviewdescri.isa);
  v3 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v3);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v4 v5];
}

void __118__SBSAAcceptanceBounceBehaviorProvider__updatedReboundingPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v4 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v5 v6];
}

void __129__SBSAAcceptanceBounceBehaviorProvider__updatedRevealAcceptedElementPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v4 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v5 v6];
}

@end