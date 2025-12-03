@interface SBSAEjectStretchBehaviorProvider
- (BOOL)_checkContextForExpiredContractionMilestone:(id)milestone;
- (BOOL)_isTimerExpired:(id)expired;
- (id)preferencesFromContext:(id)context;
- (void)_startTimerIfNecessary:(id)necessary context:(id)context;
@end

@implementation SBSAEjectStretchBehaviorProvider

- (id)preferencesFromContext:(id)context
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__65;
  v50 = __Block_byref_object_dispose__65;
  v51 = 0;
  contextCopy = context;
  if (contextCopy)
  {
    v6 = objc_opt_self();
    v7 = contextCopy;
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
      [(SBSAEjectStretchBehaviorProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v47[5];
  v47[5] = v9;

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__65;
  v44 = __Block_byref_object_dispose__65;
  preferences = [v47[5] preferences];
  v12 = objc_opt_class();
  v13 = preferences;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v45 = v15;
  settings = [objc_opt_class() settings];
  v17 = v41[5];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke;
  v35[3] = &unk_2783B79F8;
  v39 = a2;
  v35[4] = self;
  v37 = &v46;
  v18 = settings;
  v36 = v18;
  v38 = &v40;
  v19 = [v17 copyWithBlock:v35];
  v20 = v41[5];
  v41[5] = v19;

  v21 = v47[5];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29;
  v34[3] = &unk_2783B01E8;
  v34[5] = &v40;
  v34[6] = a2;
  v34[4] = self;
  v22 = [v21 copyWithBlock:v34];
  v23 = v47[5];
  v47[5] = v22;

  v24 = v47[5];
  v33.receiver = self;
  v33.super_class = SBSAEjectStretchBehaviorProvider;
  v25 = [(SBSABasePreferencesProvider *)&v33 preferencesFromContext:v24];
  v26 = objc_opt_class();
  v27 = v25;
  if (v26)
  {
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;

  v30 = v41[5];
  v41[5] = v29;

  if (self->_phase == 3)
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  v31 = v41[5];

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);

  return v31;
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 32);
  if (*(v8 + 32) <= 1uLL)
  {
    *(v8 + 32) = 1;
    v9 = [*(a1 + 32) _isTimerExpired:*(*(*(a1 + 48) + 8) + 40)];
    v10 = *(a1 + 32);
    if (v9)
    {
      v10[4] = 2;
      v11 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_2(a1 + 48);
      }
    }

    else
    {
      v75 = v3;
      [v10 _startTimerIfNecessary:v7 context:*(*(*(a1 + 48) + 8) + 40)];
      v12 = [v7 containerViewDescriptions];
      v11 = [v12 mutableCopy];

      v13 = [v11 firstObject];
      v77[0] = MEMORY[0x277D85DD0];
      v77[1] = 3221225472;
      v77[2] = __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2;
      v77[3] = &unk_2783AD778;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v80 = *(a1 + 64);
      v77[4] = v14;
      v78 = v15;
      v16 = v13;
      v79 = v16;
      v17 = [v16 copyWithBlock:v77];
      [v11 replaceObjectAtIndex:0 withObject:v17];
      [v7 setContainerViewDescriptions:v11];
      v18 = [*(a1 + 40) ejectionStretchSettings];
      v19 = [SBSAInterfaceElementPropertyIdentity alloc];
      v20 = [v17 interfaceElementIdentifier];
      v21 = [(SBSAInterfaceElementPropertyIdentity *)v19 initWithAssociatedInterfaceElementIdentifier:v20 andProperty:@"bounds"];

      v73 = v18;
      v22 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v18];
      [v7 setAnimatedTransitionDescription:v22 forProperty:v21 withMilestones:0];

      v23 = [SBSAInterfaceElementPropertyIdentity alloc];
      v24 = [v17 interfaceElementIdentifier];
      v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v25 withMilestones:0];

      v26 = [SBSAInterfaceElementPropertyIdentity alloc];
      v27 = [v17 interfaceElementIdentifier];
      v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"cornerRadius"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v28 withMilestones:0];

      v29 = [*(*(*(a1 + 56) + 8) + 40) indicatorContainerViewDescription];
      if (v29)
      {
        v30 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v29 interfaceElementIdentifier];
        v31 = v72 = v16;
        v32 = [(SBSAInterfaceElementPropertyIdentity *)v30 initWithAssociatedInterfaceElementIdentifier:v31 andProperty:@"bounds"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v32 withMilestones:0];

        v33 = [SBSAInterfaceElementPropertyIdentity alloc];
        v34 = [v29 interfaceElementIdentifier];
        v35 = [(SBSAInterfaceElementPropertyIdentity *)v33 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"center"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v35 withMilestones:0];

        v36 = [SBSAInterfaceElementPropertyIdentity alloc];
        v37 = [v29 interfaceElementIdentifier];
        v38 = [(SBSAInterfaceElementPropertyIdentity *)v36 initWithAssociatedInterfaceElementIdentifier:v37 andProperty:@"cornerRadius"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v21 withProperty:v38 withMilestones:0];

        v16 = v72;
      }

      v3 = v75;
    }
  }

  v39 = *(a1 + 32);
  if (v39[4] == 2)
  {
    if ([v39 _checkContextForExpiredContractionMilestone:*(*(*(a1 + 48) + 8) + 40)])
    {
      *(*(a1 + 32) + 32) = 3;
      v40 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_3(a1 + 48);
      }
    }

    else
    {
      v41 = [v7 containerViewDescriptions];
      v40 = [v41 mutableCopy];

      v42 = [v40 firstObject];
      v43 = [*(a1 + 40) ejectionContractionSettings];
      v44 = [SBSAInterfaceElementPropertyIdentity alloc];
      v45 = [v42 interfaceElementIdentifier];
      v46 = [(SBSAInterfaceElementPropertyIdentity *)v44 initWithAssociatedInterfaceElementIdentifier:v45 andProperty:@"bounds"];

      if (!*(*(a1 + 32) + 48))
      {
        v47 = [(SBSAInterfaceElementPropertyIdentity *)v46 copy];
        v48 = *(a1 + 32);
        v49 = *(v48 + 48);
        *(v48 + 48) = v47;
      }

      v74 = v43;
      v50 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v43];
      v51 = [MEMORY[0x277CBEB98] setWithObject:0x28336F620];
      [v7 setAnimatedTransitionDescription:v50 forProperty:v46 withMilestones:v51];

      v52 = [SBSAInterfaceElementPropertyIdentity alloc];
      v53 = [v42 interfaceElementIdentifier];
      v54 = [(SBSAInterfaceElementPropertyIdentity *)v52 initWithAssociatedInterfaceElementIdentifier:v53 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v46 withProperty:v54 withMilestones:0];

      v55 = [SBSAInterfaceElementPropertyIdentity alloc];
      v56 = [v42 interfaceElementIdentifier];
      v57 = [(SBSAInterfaceElementPropertyIdentity *)v55 initWithAssociatedInterfaceElementIdentifier:v56 andProperty:@"cornerRadius"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v46 withProperty:v57 withMilestones:0];

      v58 = v42;
      v59 = [*(*(*(a1 + 56) + 8) + 40) indicatorContainerViewDescription];
      if ([v40 count]== 1 && v59)
      {
        v60 = [SBSAInterfaceElementPropertyIdentity alloc];
        v61 = [v58 interfaceElementIdentifier];
        v62 = [(SBSAInterfaceElementPropertyIdentity *)v60 initWithAssociatedInterfaceElementIdentifier:v61 andProperty:?];
        v63 = [SBSAInterfaceElementPropertyIdentity alloc];
        [v59 interfaceElementIdentifier];
        v64 = v76 = v3;
        v65 = [(SBSAInterfaceElementPropertyIdentity *)v63 initWithAssociatedInterfaceElementIdentifier:v64 andProperty:@"center"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v62 withProperty:v65 withMilestones:0];

        v66 = [SBSAInterfaceElementPropertyIdentity alloc];
        v67 = [v58 interfaceElementIdentifier];
        v68 = [(SBSAInterfaceElementPropertyIdentity *)v66 initWithAssociatedInterfaceElementIdentifier:v67 andProperty:@"cornerRadius"];
        v69 = [SBSAInterfaceElementPropertyIdentity alloc];
        v70 = [v59 interfaceElementIdentifier];
        v71 = [(SBSAInterfaceElementPropertyIdentity *)v69 initWithAssociatedInterfaceElementIdentifier:v70 andProperty:@"cornerRadius"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v68 withProperty:v71 withMilestones:0];

        v3 = v76;
      }
    }
  }
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  if (v9)
  {
    v3 = objc_opt_self();
    v4 = v9;
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 40) ejectionMaxCornerRadius];
  v8 = v7;
  [*(a1 + 48) bounds];
  [*(a1 + 48) center];
  SBUnintegralizedRectCenteredAboutPoint();
  [*(a1 + 40) ejectionYUpOffset];
  [*(a1 + 40) ejectionYStretch];
  SBRectWithSize();
  [v6 setBounds:?];
  UIRectGetCenter();
  [v6 setCenter:?];
  [v6 setCornerRadius:v8];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29(uint64_t a1, void *a2)
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
      __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setKeyLineRequiredForTransition:1];
  [v6 setPreferences:*(*(*(a1 + 40) + 8) + 40)];
}

- (BOOL)_isTimerExpired:(id)expired
{
  expiredCopy = expired;
  elapsedTimerDescriptions = [expiredCopy elapsedTimerDescriptions];
  if ([elapsedTimerDescriptions count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__SBSAEjectStretchBehaviorProvider__isTimerExpired___block_invoke;
    v11[3] = &unk_2783B2950;
    v11[4] = self;
    v6 = [elapsedTimerDescriptions indexOfObjectPassingTest:v11];
    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      identifierOfActiveTimer = self->_identifierOfActiveTimer;
      self->_identifierOfActiveTimer = 0;

      v9 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [SBSAEjectStretchBehaviorProvider _isTimerExpired:expiredCopy];
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __52__SBSAEjectStretchBehaviorProvider__isTimerExpired___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 timerDescriptionIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (void)_startTimerIfNecessary:(id)necessary context:(id)context
{
  necessaryCopy = necessary;
  contextCopy = context;
  if (!self->_identifierOfActiveTimer)
  {
    v8 = [SBSATimerDescription alloc];
    settings = [objc_opt_class() settings];
    [settings ejectionStretchDuration];
    v10 = [(SBSATimerDescription *)v8 initWithTimeInterval:?];

    timerDescriptionIdentifier = [(SBSATimerDescription *)v10 timerDescriptionIdentifier];
    identifierOfActiveTimer = self->_identifierOfActiveTimer;
    self->_identifierOfActiveTimer = timerDescriptionIdentifier;

    timerDescriptions = [necessaryCopy timerDescriptions];
    if (timerDescriptions)
    {
      timerDescriptions2 = [necessaryCopy timerDescriptions];
      v15 = [timerDescriptions2 mutableCopy];
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    [v15 addObject:v10];
    [necessaryCopy setTimerDescriptions:v15];
    v16 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [SBSAEjectStretchBehaviorProvider _startTimerIfNecessary:contextCopy context:?];
    }
  }
}

- (BOOL)_checkContextForExpiredContractionMilestone:(id)milestone
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self->_pendingCollapsePropertyIdentity)
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  animatedTransitionResults = [milestone animatedTransitionResults];
  v5 = [animatedTransitionResults countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(animatedTransitionResults);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        associatedInterfaceElementPropertyIdentity = [v9 associatedInterfaceElementPropertyIdentity];
        if (BSEqualObjects())
        {
          isTransitionEndTargeted = [v9 isTransitionEndTargeted];

          if (isTransitionEndTargeted)
          {
            pendingCollapsePropertyIdentity = self->_pendingCollapsePropertyIdentity;
            self->_pendingCollapsePropertyIdentity = 0;

            v13 = 1;
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v6 = [animatedTransitionResults countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 handleFailureInMethod:a2 object:a3 file:@"SBSAEjectStretchBehaviorProvider.m" lineNumber:38 description:{@"Unexpected class – expected '%@', got '%@'", v6, v8}];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_3_18(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Moving to Contracting phase", v3, v4, v5, v6, v7);
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_3_18(a1);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Complete", v3, v4, v5, v6, v7);
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __59__SBSAEjectStretchBehaviorProvider_preferencesFromContext___block_invoke_29_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontextmut.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

- (void)_isTimerExpired:(void *)a1 .cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Timer Expired", v3, v4, v5, v6, v7);
}

- (void)_startTimerIfNecessary:(void *)a1 context:.cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v1, v2, "[%{public}lu] [Eject] Stretching, starting timer", v3, v4, v5, v6, v7);
}

@end