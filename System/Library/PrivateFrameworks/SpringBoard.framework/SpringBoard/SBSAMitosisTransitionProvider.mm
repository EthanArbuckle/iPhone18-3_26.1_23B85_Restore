@interface SBSAMitosisTransitionProvider
- (BOOL)canProceedWithContext:(id)context shouldRetry:(BOOL *)retry;
- (double)delayForPhase:(int64_t)phase;
- (double)milestoneForPhase:(int64_t)phase;
- (id)_updatedBabyHeadstartPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)_updatedInitialUnanimatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)_updatedPrimaryLayoutPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
- (id)nameForPhase:(int64_t)phase;
- (id)updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity;
@end

@implementation SBSAMitosisTransitionProvider

- (id)nameForPhase:(int64_t)phase
{
  v7.receiver = self;
  v7.super_class = SBSAMitosisTransitionProvider;
  v4 = [(SBSASequencedBehaviorProvider *)&v7 nameForPhase:?];
  if (phase <= 5)
  {
    v5 = off_2783BDBE0[phase];

    v4 = v5;
  }

  return v4;
}

- (BOOL)canProceedWithContext:(id)context shouldRetry:(BOOL *)retry
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  participatingElementIdentification = [(SBSASequencedBehaviorProvider *)self participatingElementIdentification];
  if (participatingElementIdentification)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    elementContexts = [contextCopy elementContexts];
    v9 = [elementContexts countByEnumeratingWithState:&v22 objects:v26 count:16];
    v10 = v9 != 0;
    if (!v9)
    {
      goto LABEL_17;
    }

    v11 = 0;
    v12 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(elementContexts);
        }

        v11 |= SAElementIdentityEqualToIdentity();
      }

      v9 = [elementContexts countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);

    if (v11)
    {
      preferences = [contextCopy preferences];
      elementLayoutTransition = [preferences elementLayoutTransition];
      initialElementContexts = [elementLayoutTransition initialElementContexts];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__SBSAMitosisTransitionProvider_canProceedWithContext_shouldRetry___block_invoke;
      v20[3] = &unk_2783AD700;
      v21 = participatingElementIdentification;
      v17 = [initialElementContexts bs_firstObjectPassingTest:v20];

      if (v17)
      {
        preferences2 = [contextCopy preferences];
        LODWORD(v9) = [preferences2 isCollisionImminent] ^ 1;
      }

      else
      {
        LOBYTE(v9) = 0;
      }

      elementContexts = v21;
LABEL_17:

      if (!retry)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v10 = 0;
  LOBYTE(v9) = 0;
  if (retry)
  {
LABEL_13:
    *retry = v10;
  }

LABEL_14:

  return v9;
}

- (id)updatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  activePhase = [(SBSASequencedBehaviorProvider *)self activePhase];
  v12 = SBLogSystemAperturePreferencesStackMitosis();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  switch(activePhase)
  {
    case 3:
      if (v13)
      {
        [SBSAMitosisTransitionProvider updatedPreferencesFromPreferences:contextCopy context:? relevantPropertyIdentity:?];
      }

      v14 = [(SBSAMitosisTransitionProvider *)self _updatedPrimaryLayoutPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      break;
    case 2:
      if (v13)
      {
        [SBSAMitosisTransitionProvider updatedPreferencesFromPreferences:contextCopy context:? relevantPropertyIdentity:?];
      }

      v14 = [(SBSAMitosisTransitionProvider *)self _updatedBabyHeadstartPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      break;
    case 1:
      if (v13)
      {
        [SBSAMitosisTransitionProvider updatedPreferencesFromPreferences:contextCopy context:? relevantPropertyIdentity:?];
      }

      v14 = [(SBSAMitosisTransitionProvider *)self _updatedInitialUnanimatedPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      break;
    default:
      if (v13)
      {
        [SBSAMitosisTransitionProvider updatedPreferencesFromPreferences:contextCopy context:? relevantPropertyIdentity:?];
      }

      v19.receiver = self;
      v19.super_class = SBSAMitosisTransitionProvider;
      v14 = [(SBSASequencedBehaviorProvider *)&v19 updatedPreferencesFromPreferences:preferencesCopy context:contextCopy relevantPropertyIdentity:identity];
      break;
  }

  v15 = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __100__SBSAMitosisTransitionProvider_updatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v18[3] = &unk_2783A93E8;
  v18[4] = self;
  v18[5] = a2;
  v16 = [v14 copyWithBlock:v18];

  return v16;
}

void __100__SBSAMitosisTransitionProvider_updatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
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
      __100__SBSAMitosisTransitionProvider_updatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setBlobEnabled:1];
}

- (double)milestoneForPhase:(int64_t)phase
{
  v5.receiver = self;
  v5.super_class = SBSAMitosisTransitionProvider;
  [(SBSASequencedBehaviorProvider *)&v5 milestoneForPhase:?];
  if (phase == 4)
  {
    [&unk_28336F620 bs_CGFloatValue];
  }

  return result;
}

- (double)delayForPhase:(int64_t)phase
{
  if (phase != 3)
  {
    return 0.0;
  }

  settings = [objc_opt_class() settings];
  [settings mitosisHeadstartDelay];
  v5 = v4;

  return v5;
}

- (id)_updatedInitialUnanimatedPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v12[3] = &unk_2783AD750;
  v13 = contextCopy;
  v14 = a2;
  v12[4] = self;
  v9 = contextCopy;
  v10 = [preferences copyWithBlock:v12];

  return v10;
}

void __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    goto LABEL_9;
  }

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

  v39 = v7;
  if (!v7)
  {
    __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
LABEL_9:
    v39 = 0;
  }

  v35 = v3;

  v8 = [v39 containerViewDescriptions];
  v9 = [v8 mutableCopy];

  v10 = [*(a1 + 40) elementContexts];
  if ([v9 count])
  {
    v11 = 0;
    v37 = v42;
    v38 = a1;
    do
    {
      v12 = [v9 objectAtIndex:{v11, v35, v37}];
      v13 = SBSAElementContextAssociatedWithContainerViewDescription(v12, v10, 0);
      v14 = [v10 indexOfObject:v13];
      v15 = [*(a1 + 32) participatingElementIdentification];
      v16 = SAElementIdentityEqualToIdentity();

      if (v16)
      {
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v42[0] = __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2;
        v42[1] = &unk_2783B0690;
        v17 = *(a1 + 40);
        v18 = *(a1 + 32);
        v45 = *(a1 + 48);
        v42[2] = v18;
        v43 = v17;
        v46 = v14;
        v44 = v10;
        v19 = [v12 copyWithBlock:v41];

        [v9 replaceObjectAtIndex:v11 withObject:v19];
        v20 = [SBSAInterfaceElementPropertyIdentity alloc];
        v21 = [v19 interfaceElementIdentifier];
        v40 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"bounds"];

        v22 = [objc_opt_class() newUnanimatedTransitionDescription];
        [v39 setAnimatedTransitionDescription:v22 forProperty:v40 withMilestones:0];

        v23 = [SBSAInterfaceElementPropertyIdentity alloc];
        v24 = [v19 interfaceElementIdentifier];
        v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"center"];

        v26 = [objc_opt_class() newUnanimatedTransitionDescription];
        [v39 setAnimatedTransitionDescription:v26 forProperty:v25 withMilestones:0];

        v27 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v19 interfaceElementIdentifier];
        v29 = v28 = v9;
        v30 = [(SBSAInterfaceElementPropertyIdentity *)v27 initWithAssociatedInterfaceElementIdentifier:v29 andProperty:@"contentBounds"];

        v31 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v19 interfaceElementIdentifier];
        v33 = v32 = v10;
        v34 = [(SBSAInterfaceElementPropertyIdentity *)v31 initWithAssociatedInterfaceElementIdentifier:v33 andProperty:@"contentCenter"];

        v10 = v32;
        [v39 associateAnimatedTransitionDescriptionOfProperty:v40 withProperty:v30 withMilestones:0];
        [v39 associateAnimatedTransitionDescriptionOfProperty:v25 withProperty:v34 withMilestones:0];

        v9 = v28;
        a1 = v38;

        v12 = v19;
      }

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  [v39 setContainerViewDescriptions:{v9, v35}];
}

void __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2(uint64_t a1, void *a2)
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
      __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 40) inertContainerFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  SBSAAdjunctContainerMinimalSize(*(a1 + 40));
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  CGAffineTransformMakeScale(&v45, 0.5, 0.5);
  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  CGRectApplyAffineTransform(v46, &v45);
  v24 = SBSAAdjunctFrameIsOnLeft(*(a1 + 64), *(a1 + 48), *(a1 + 40));
  v25 = v9;
  v26 = v11;
  v27 = v13;
  v28 = v15;
  if (v24)
  {
    CGRectGetMinX(*&v25);
  }

  else
  {
    CGRectGetMaxX(*&v25);
  }

  v47.origin.x = v9;
  v47.origin.y = v11;
  v47.size.width = v13;
  v47.size.height = v15;
  CGRectGetMidY(v47);
  BSRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  BSRectWithSize();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  UIRectGetCenter();
  v38 = v37;
  v40 = v39;
  [v7 setBounds:{v30, v32, v34, v36}];
  [v7 setCenter:{v38, v40}];
  memset(&v45, 0, sizeof(v45));
  [v7 contentScale];
  SBSAAffineTransformFromContentScale(&v45, v41, v42);
  v43 = v45;
  CGAffineTransformInvert(&v44, &v43);
  v48.origin.x = v30;
  v48.origin.y = v32;
  v48.size.width = v34;
  v48.size.height = v36;
  v49 = CGRectApplyAffineTransform(v48, &v44);
  [v7 setContentBounds:{v49.origin.x, v49.origin.y, v49.size.width, v49.size.height}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

- (id)_updatedBabyHeadstartPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  contextCopy = context;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke;
  v12[3] = &unk_2783AD750;
  v13 = contextCopy;
  v14 = a2;
  v12[4] = self;
  v9 = contextCopy;
  v10 = [preferences copyWithBlock:v12];

  return v10;
}

void __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke(uint64_t a1, void *a2)
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
      __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 containerViewDescriptions];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:v10];
      v12 = [*(a1 + 40) elementContexts];
      v13 = [*(a1 + 40) elementContexts];
      v14 = SBSAElementContextAssociatedWithContainerViewDescription(v11, v13, 0);

      v15 = [v12 indexOfObject:v14];
      v16 = [*(a1 + 40) elementContexts];
      LODWORD(v15) = SBSAIsElementInCollectionSensorAttached(v15, v16);

      if (v15)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2;
        v20[3] = &unk_2783AD750;
        v20[4] = *(a1 + 32);
        v19 = *(a1 + 40);
        v17 = v19;
        v21 = v19;
        v18 = [v11 copyWithBlock:v20];

        [v9 replaceObjectAtIndex:v10 withObject:v18];
        v11 = v18;
      }

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  [v7 setContainerViewDescriptions:v9];
}

void __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2(uint64_t a1, void *a2)
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
      __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) inertContainerFrame];
  BSRectWithSize();
  [v6 setBounds:?];
  UIRectGetCenter();
  [v6 setCenter:?];
}

- (id)_updatedPrimaryLayoutPreferencesFromPreferences:(id)preferences context:(id)context relevantPropertyIdentity:(id *)identity
{
  preferencesCopy = preferences;
  contextCopy = context;
  containerViewDescriptions = [contextCopy containerViewDescriptions];
  containerViewDescriptions2 = [contextCopy containerViewDescriptions];

  v11 = [containerViewDescriptions objectAtIndex:{objc_msgSend(containerViewDescriptions2, "count") > 1}];

  interfaceElementIdentifier = [v11 interfaceElementIdentifier];
  *identity = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:interfaceElementIdentifier andProperty:@"bounds"];

  return preferencesCopy;
}

- (void)updatedPreferencesFromPreferences:(void *)a1 context:relevantPropertyIdentity:.cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] Mitosis Provider: Primary Layout", v3, v4, v5, v6, v7);
}

- (void)updatedPreferencesFromPreferences:(void *)a1 context:relevantPropertyIdentity:.cold.2(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] Mitosis Provider: Baby Headstart", v3, v4, v5, v6, v7);
}

- (void)updatedPreferencesFromPreferences:(void *)a1 context:relevantPropertyIdentity:.cold.3(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] Mitosis Provider: Unanimated layout", v3, v4, v5, v6, v7);
}

- (void)updatedPreferencesFromPreferences:(void *)a1 context:relevantPropertyIdentity:.cold.4(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] Mitosis Provider: Default Case", v3, v4, v5, v6, v7);
}

void __100__SBSAMitosisTransitionProvider_updatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
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

void __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
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

void __118__SBSAMitosisTransitionProvider__updatedInitialUnanimatedPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_cold_1()
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

void __114__SBSAMitosisTransitionProvider__updatedBabyHeadstartPreferencesFromPreferences_context_relevantPropertyIdentity___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end