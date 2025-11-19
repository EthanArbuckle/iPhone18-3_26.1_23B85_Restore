@interface SBSAContainerDynamicsBumpAnimationProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAContainerDynamicsBumpAnimationProvider

- (id)preferencesFromContext:(id)a3
{
  v5 = a3;
  v6 = objc_opt_class();
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
  v42 = v7;

  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__70;
  v63 = __Block_byref_object_dispose__70;
  v10 = [v9 preferences];
  v11 = objc_opt_class();
  v12 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v64 = v14;
  v15 = [v60[5] containerViewDescriptions];
  v16 = [v15 mutableCopy];

  v44 = [MEMORY[0x277CBEB18] array];
  v17 = 0;
  v43 = v55;
  while (v17 < [v16 count])
  {
    v18 = [v16 objectAtIndexedSubscript:v17];
    v19 = [v9 elementContexts];
    v20 = SBSAElementContextAssociatedWithContainerViewDescription(v18, v19, 0);

    if ([v20 activeDynamicAnimation] == 1)
    {
      v21 = [v18 associatedSystemApertureElementIdentity];
      [v44 addObject:v21];

      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v55[0] = __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke;
      v55[1] = &unk_2783AD778;
      v58 = a2;
      v55[2] = self;
      v22 = v18;
      v56 = v22;
      v57 = v9;
      v18 = [v22 copyWithBlock:v54];

      [v16 replaceObjectAtIndex:v17 withObject:v18];
      v23 = 0;
    }

    else
    {
      elementIdentitiesWithBumpApplied = self->_elementIdentitiesWithBumpApplied;
      v25 = [v18 associatedSystemApertureElementIdentity];
      LODWORD(elementIdentitiesWithBumpApplied) = [(NSArray *)elementIdentitiesWithBumpApplied containsObject:v25];

      if (!elementIdentitiesWithBumpApplied)
      {
        goto LABEL_18;
      }

      v23 = 1;
    }

    v26 = v60[5];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_2;
    v46[3] = &unk_2783B8098;
    v51 = a2;
    v46[4] = self;
    v53 = v23;
    v18 = v18;
    v47 = v18;
    v50 = &v59;
    v52 = v17;
    v48 = v16;
    v49 = v9;
    v27 = [v26 copyWithBlock:v46];
    v28 = v60[5];
    v60[5] = v27;

LABEL_18:
    ++v17;
  }

  v29 = [v44 copy];
  v30 = self->_elementIdentitiesWithBumpApplied;
  self->_elementIdentitiesWithBumpApplied = v29;

  v31 = [v60[5] copyByUpdatingContainerViewDescriptions:v16];
  v32 = v60[5];
  v60[5] = v31;

  v33 = [v9 copyByUpdatingPreferences:v60[5]];
  v45.receiver = self;
  v45.super_class = SBSAContainerDynamicsBumpAnimationProvider;
  v34 = [(SBSABasePreferencesProvider *)&v45 preferencesFromContext:v33];
  v35 = objc_opt_class();
  v36 = v34;
  if (v35)
  {
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  v39 = v60[5];
  v60[5] = v38;

  if (![v44 count])
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  v40 = v60[5];

  _Block_object_dispose(&v59, 8);

  return v40;
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v25 = 0.0;
  v26 = 0.0;
  [*(a1 + 40) bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [*(a1 + 40) center];
  v17 = v16;
  v19 = v18;
  v20 = [objc_opt_class() settings];
  [v20 bumpAnimationXScale];
  v22 = v21;
  v23 = [objc_opt_class() settings];
  [v23 bumpAnimationYScale];
  SBSAScaledAndClippedFrameByScalingDimensions(&v25, *(a1 + 48), v9, v11, v13, v15, v17, v19, v22, v24);

  BSRectWithSize();
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
  [v7 setContentScale:{v25, v26}];
  [*(a1 + 40) bounds];
  [v7 setContentBounds:?];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 88);
  v9 = [objc_opt_class() settings];
  v10 = v9;
  if (v8)
  {
    [v9 bumpAnimationScaleDownSettings];
  }

  else
  {
    [v9 bumpAnimationScaleUpSettings];
  }
  v11 = ;

  v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
  v13 = [SBSAInterfaceElementPropertyIdentity alloc];
  v14 = [*(a1 + 40) interfaceElementIdentifier];
  v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];

  [v7 setAnimatedTransitionDescription:v12 forProperty:v15 withMilestones:0];
  v16 = [SBSAInterfaceElementPropertyIdentity alloc];
  v17 = [*(a1 + 40) interfaceElementIdentifier];
  v18 = [(SBSAInterfaceElementPropertyIdentity *)v16 initWithAssociatedInterfaceElementIdentifier:v17 andProperty:@"center"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v18 withMilestones:0];

  v19 = [SBSAInterfaceElementPropertyIdentity alloc];
  v20 = [*(a1 + 40) interfaceElementIdentifier];
  v21 = [(SBSAInterfaceElementPropertyIdentity *)v19 initWithAssociatedInterfaceElementIdentifier:v20 andProperty:@"contentScale"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v21 withMilestones:0];

  v22 = [SBSAInterfaceElementPropertyIdentity alloc];
  v23 = [*(a1 + 40) interfaceElementIdentifier];
  v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"contentBounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v24 withMilestones:0];

  v25 = [SBSAInterfaceElementPropertyIdentity alloc];
  v26 = [*(a1 + 40) interfaceElementIdentifier];
  v27 = [(SBSAInterfaceElementPropertyIdentity *)v25 initWithAssociatedInterfaceElementIdentifier:v26 andProperty:@"contentCenter"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v27 withMilestones:0];

  v28 = [*(*(*(a1 + 64) + 8) + 40) indicatorContainerViewDescription];
  v29 = [*(*(*(a1 + 64) + 8) + 40) indicatorElementDescription];
  v30 = *(a1 + 80);
  if (v30 == [*(a1 + 48) count] - 1 && v28 && v29)
  {
    v31 = *(*(*(a1 + 64) + 8) + 40);
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_3;
    v37[3] = &unk_2783AD778;
    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v40 = *(a1 + 72);
    v37[4] = v32;
    v38 = v33;
    v39 = *(a1 + 56);
    v34 = [v31 copyWithBlock:v37];
    v35 = *(*(a1 + 64) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;
  }
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 indicatorContainerViewDescription];
  v38 = [v7 indicatorElementDescription];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x5010000000;
  v47[3] = &unk_21F9DA6A3;
  v9 = *(MEMORY[0x277CBF2C0] + 16);
  v48 = *MEMORY[0x277CBF2C0];
  v49 = v9;
  v50 = *(MEMORY[0x277CBF2C0] + 32);
  v10 = [v7 maintainedPreferences];
  v11 = [v10 indicatorAppearanceStateContext];

  v12 = [v11 microIndicatorEjectionPhase];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_4;
  v40[3] = &unk_2783B01C0;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v45 = *(a1 + 56);
  v40[4] = v13;
  v41 = v14;
  v15 = *(a1 + 48);
  v46 = v12 > 1;
  v42 = v15;
  v44 = v47;
  v37 = v11;
  v43 = v37;
  v16 = [v8 copyWithBlock:v40];

  [v7 setIndicatorContainerViewDescription:v16];
  v17 = [SBSAInterfaceElementPropertyIdentity alloc];
  v18 = [*(a1 + 40) interfaceElementIdentifier];
  v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"bounds"];
  v20 = [SBSAInterfaceElementPropertyIdentity alloc];
  v21 = [v16 interfaceElementIdentifier];
  v22 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"bounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v19 withProperty:v22 withMilestones:0];

  v23 = [SBSAInterfaceElementPropertyIdentity alloc];
  v24 = [*(a1 + 40) interfaceElementIdentifier];
  v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"center"];
  v26 = [SBSAInterfaceElementPropertyIdentity alloc];
  v27 = [v16 interfaceElementIdentifier];
  v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"center"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v25 withProperty:v28 withMilestones:0];

  if (v12 < 2)
  {
    v30 = v38;
  }

  else
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_5;
    v39[3] = &unk_2783B01E8;
    v29 = *(a1 + 56);
    v39[4] = *(a1 + 32);
    v39[5] = v47;
    v39[6] = v29;
    v30 = [v38 copyWithBlock:v39];

    [v7 setIndicatorElementDescription:v30];
    v31 = [SBSAInterfaceElementPropertyIdentity alloc];
    v32 = [*(a1 + 40) interfaceElementIdentifier];
    v33 = [(SBSAInterfaceElementPropertyIdentity *)v31 initWithAssociatedInterfaceElementIdentifier:v32 andProperty:@"bounds"];
    v34 = [SBSAInterfaceElementPropertyIdentity alloc];
    v35 = [v30 interfaceElementIdentifier];
    v36 = [(SBSAInterfaceElementPropertyIdentity *)v34 initWithAssociatedInterfaceElementIdentifier:v35 andProperty:@"indicatorViewTransform"];
    [v7 associateAnimatedTransitionDescriptionOfProperty:v33 withProperty:v36 withMilestones:0];
  }

  _Block_object_dispose(v47, 8);
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v24 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v24;
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

    v3 = v24;
    if (!v7)
    {
      __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_4_cold_1();
      v3 = v24;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = [*(a1 + 48) elementContexts];
  v10 = SBSAElementContextAssociatedWithContainerViewDescription(v8, v9, 0);

  v11 = 0;
  if ([v10 layoutMode] == 3)
  {
    v11 = [v10 systemApertureCustomLayout];
  }

  [*(a1 + 40) bounds];
  [*(a1 + 40) center];
  SBUnintegralizedRectCenteredAboutPoint();
  SBSAMicroIndicatorFrameNearContainer(v11, *(a1 + 80), (*(*(a1 + 64) + 8) + 32), *(a1 + 56), *(a1 + 48), v12, v13, v14, v15);
  BSRectWithSize();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  [v7 setBounds:?];
  UIRectGetCenter();
  [v7 setCenter:?];
  [v7 setContentBounds:{v17, v19, v21, v23}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
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
      __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_5_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = v8[3];
  v10[0] = v8[2];
  v10[1] = v9;
  v10[2] = v8[4];
  [v7 setIndicatorViewTransform:v10];
}

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_cold_1()
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

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __69__SBSAContainerDynamicsBumpAnimationProvider_preferencesFromContext___block_invoke_5_cold_1()
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

@end