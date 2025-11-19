@interface SBSADefaultContainerLayoutProvider
- (id)_updatedContainerViewDescription:(id)a3 transitionDescriptions:(id)a4 context:(id)a5;
- (id)behaviorSettingsForProperty:(id)a3;
- (id)defaultTransitionSettings;
- (id)preferencesFromContext:(id)a3;
- (unint64_t)_indexOfContainerViewDescriptionWithIdentifier:(id)a3;
- (void)_pruneContainerDescriptionWithIdentifier:(id)a3;
- (void)_updateContainerDescriptionAtIndex:(unint64_t)a3 transitionDescriptions:(id)a4 context:(id)a5 updateReason:(id *)a6;
- (void)_updateContainerViewDescriptionInCollection:(id)a3;
@end

@implementation SBSADefaultContainerLayoutProvider

- (id)defaultTransitionSettings
{
  v2 = [objc_opt_class() settings];
  v3 = [v2 inertInterfaceElementTransitionSettings];

  return v3;
}

- (id)behaviorSettingsForProperty:(id)a3
{
  v4 = a3;
  if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    v5 = [objc_opt_class() settings];
    v6 = [v5 keyLineStyleTransition];

    if (v6)
    {
      goto LABEL_8;
    }
  }

  else if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    v6 = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
    if (v6)
    {
      goto LABEL_8;
    }
  }

  v8.receiver = self;
  v8.super_class = SBSADefaultContainerLayoutProvider;
  v6 = [(SBSABasePreferencesProvider *)&v8 behaviorSettingsForProperty:v4];
LABEL_8:

  return v6;
}

- (id)preferencesFromContext:(id)a3
{
  v107 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_self();
    v7 = v4;
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
      [(SBSADefaultContainerLayoutProvider *)v7 preferencesFromContext:a2, self];
      v9 = 0;
      v4 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  v61 = v4;

  v65 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = [v9 preferences];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = objc_opt_self();
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

  if (!v14)
  {
    [(SBSADefaultContainerLayoutProvider *)v12 preferencesFromContext:a2, self];
LABEL_18:
    v14 = 0;
  }

  v63 = [v9 elementContexts];
  v67 = [v9 containerViewDescriptions];
  v15 = [v9 minimumNumberOfContainers];
  v16 = [v63 count];
  if (v15 <= v16)
  {
    v15 = v16;
  }

  v17 = [v9 maximumNumberOfElements];
  if (v15 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v15;
  }

  v19 = [(NSMutableArray *)self->_orderedContainerDescriptions count];
  v100 = 0;
  v101 = &v100;
  v102 = 0x3032000000;
  v103 = __Block_byref_object_copy__131;
  v104 = __Block_byref_object_dispose__131;
  v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (v19 <= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      if ([v67 count] > i && (objc_msgSend(v67, "objectAtIndexedSubscript:", i), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v23 = [(SBSADefaultContainerLayoutProvider *)self _updatedContainerViewDescription:v22 transitionDescriptions:v101[5] context:v9];
        [(SBSADefaultContainerLayoutProvider *)self _updateContainerViewDescriptionInCollection:v23];

        v24 = 0;
      }

      else
      {
        v25 = v101[5];
        v99 = 0;
        [(SBSADefaultContainerLayoutProvider *)self _updateContainerDescriptionAtIndex:i transitionDescriptions:v25 context:v9 updateReason:&v99];
        v24 = v99;
        if (v24)
        {
          [v65 addObject:v24];
        }
      }
    }
  }

  v26 = [v14 maintainedPreferences];
  v64 = [v26 indicatorAppearanceStateContext];

  indicatorContainerDescription = self->_indicatorContainerDescription;
  if (v64)
  {
    v28 = [(SBSADefaultContainerLayoutProvider *)self _updatedContainerViewDescription:self->_indicatorContainerDescription transitionDescriptions:v101[5] context:v9];
    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v96[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke;
    v96[3] = &unk_2783AD750;
    v98 = a2;
    v96[4] = self;
    v97 = v64;
    v29 = [v28 copyWithBlock:v96];

    objc_storeStrong(&self->_indicatorContainerDescription, v29);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_2;
    v93[3] = &unk_2783AD750;
    v95 = a2;
    v93[4] = self;
    indicatorContainerDescription = v29;
    v94 = indicatorContainerDescription;
    v30 = [v14 copyWithBlock:v93];

    v14 = v30;
  }

  else
  {
    self->_indicatorContainerDescription = 0;
  }

  v92[0] = MEMORY[0x277D85DD0];
  v92[1] = 3221225472;
  v92[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_3;
  v92[3] = &unk_2783B01E8;
  v92[4] = self;
  v92[5] = &v100;
  v92[6] = a2;
  v62 = MEMORY[0x223D6F7F0](v92);
  if (v14)
  {
    v31 = [v14 copyWithBlock:v62];
  }

  else
  {
    v31 = [SBSAPreferences instanceWithBlock:v62];
  }

  v32 = objc_alloc_init(SBSABackgroundBlurDescription);
  [objc_opt_class() frameForVariableBlurUnderContainerViewWithFrame:1 offscreen:v9 context:{*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)}];
  v33 = [(SBSABackgroundBlurDescription *)v32 copyBySettingBlurFrame:?];

  v34 = [v33 copyBySettingBlurHidden:1];
  v35 = [v31 copyByUpdatingBackgroundBlurDescription:v34];

  v89[0] = MEMORY[0x277D85DD0];
  v89[1] = 3221225472;
  v89[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_4;
  v89[3] = &unk_2783AD750;
  v91 = a2;
  v89[4] = self;
  v60 = v34;
  v90 = v60;
  v36 = [v35 copyWithBlock:v89];

  v66 = [v9 copyByUpdatingPreferences:v36];
  v88.receiver = self;
  v88.super_class = SBSADefaultContainerLayoutProvider;
  v37 = [(SBSABasePreferencesProvider *)&v88 preferencesFromContext:v66];
  v38 = objc_opt_class();
  v39 = v37;
  if (v38)
  {
    if (objc_opt_isKindOfClass())
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v69 = v40;

  v41 = [v69 containerViewDescriptions];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v42 = [(NSMutableArray *)self->_orderedContainerDescriptions copy];
  v43 = [v42 countByEnumeratingWithState:&v84 objects:v106 count:16];
  if (v43)
  {
    v44 = *v85;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v85 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = [*(*(&v84 + 1) + 8 * j) interfaceElementIdentifier];
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_5;
        v82[3] = &unk_2783AE040;
        v47 = v46;
        v83 = v47;
        if ([v41 indexOfObjectPassingTest:v82] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(SBSADefaultContainerLayoutProvider *)self _pruneContainerDescriptionWithIdentifier:v47];
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v84 objects:v106 count:16];
    }

    while (v43);
  }

  v48 = [v41 mutableCopy];
  for (k = 0; k < [v41 count]; ++k)
  {
    v50 = [v41 objectAtIndex:k];
    [v50 cornerRadius];
    if (v51 == 0.0)
    {
      v78[0] = MEMORY[0x277D85DD0];
      v78[1] = 3221225472;
      v78[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_6;
      v78[3] = &unk_2783AD778;
      v81 = a2;
      v78[4] = self;
      v52 = v50;
      v79 = v52;
      v80 = v66;
      v53 = [v52 copyWithBlock:v78];
      [v48 replaceObjectAtIndex:k withObject:v53];
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_7;
      v75[3] = &unk_2783AD750;
      v77 = a2;
      v75[4] = self;
      v54 = v53;
      v76 = v54;
      v55 = [v69 copyWithBlock:v75];

      v69 = v55;
    }
  }

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_8;
  v71[3] = &unk_2783AD778;
  v74 = a2;
  v71[4] = self;
  v56 = v48;
  v72 = v56;
  v57 = v65;
  v73 = v57;
  v58 = [v69 copyWithBlock:v71];

  _Block_object_dispose(&v100, 8);

  return v58;
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = v8;
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) activeIndicatorElementContext];
  [v6 setAssociatedSystemApertureElementIdentity:v7];

  [v6 setContentClippingEnabled:0];
  [v6 setUserInteractionEnabled:0];
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorContainerViewDescription:*(a1 + 40)];
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContainerViewDescriptions:*(*(a1 + 32) + 40)];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:{v13, v15}];
        [v7 setAnimatedTransitionDescription:v14 forProperty:v13 withMilestones:0];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = a2;
  if (v23)
  {
    v3 = objc_opt_self();
    v4 = v23;
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [SBSAInterfaceElementPropertyIdentity alloc];
  v8 = [*(a1 + 40) interfaceElementIdentifier];
  v9 = [(SBSAInterfaceElementPropertyIdentity *)v7 initWithAssociatedInterfaceElementIdentifier:v8 andProperty:@"blurFrame"];

  v10 = *(a1 + 32);
  v11 = [(SBSAInterfaceElementPropertyIdentity *)v9 interfaceElementProperty];
  v12 = [v10 behaviorSettingsForProperty:v11];

  v13 = [MEMORY[0x277CCAD78] UUID];
  v14 = [objc_opt_class() description];
  v15 = [SBSAAnimatedTransitionDescription animatedTransitionDescriptionWithAnimatedTransitionIdentifier:v13 behaviorSettings:v12 milestones:0 responsibleProvider:v14];

  [v6 setAnimatedTransitionDescription:v15 forProperty:v9 withMilestones:0];
  v16 = [SBSAInterfaceElementPropertyIdentity alloc];
  v17 = [*(a1 + 40) interfaceElementIdentifier];
  v18 = [(SBSAInterfaceElementPropertyIdentity *)v16 initWithAssociatedInterfaceElementIdentifier:v17 andProperty:@"blurHidden"];

  v19 = [MEMORY[0x277CCAD78] UUID];
  v20 = [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
  v21 = [objc_opt_class() description];
  v22 = [SBSAAnimatedTransitionDescription animatedTransitionDescriptionWithAnimatedTransitionIdentifier:v19 behaviorSettings:v20 milestones:0 responsibleProvider:v21];

  [v6 setAnimatedTransitionDescription:v22 forProperty:v18 withMilestones:0];
}

uint64_t __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 interfaceElementIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v16;
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

    v3 = v16;
    if (!v7)
    {
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_6_cold_1();
      v3 = v16;
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
  [v7 setCornerRadius:{SBSACornerRadiusForContainerBounds(v11, *(a1 + 48), v12, v13, v14, v15)}];
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_7(uint64_t a1, void *a2)
{
  v13 = a2;
  if (v13)
  {
    v3 = objc_opt_self();
    v4 = v13;
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_7_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [SBSAInterfaceElementPropertyIdentity alloc];
  v8 = [*(a1 + 40) interfaceElementIdentifier];
  v9 = [(SBSAInterfaceElementPropertyIdentity *)v7 initWithAssociatedInterfaceElementIdentifier:v8 andProperty:@"bounds"];

  v10 = [SBSAInterfaceElementPropertyIdentity alloc];
  v11 = [*(a1 + 40) interfaceElementIdentifier];
  v12 = [(SBSAInterfaceElementPropertyIdentity *)v10 initWithAssociatedInterfaceElementIdentifier:v11 andProperty:@"cornerRadius"];

  [v6 associateAnimatedTransitionDescriptionOfProperty:v9 withProperty:v12 withMilestones:0];
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_8(uint64_t a1, void *a2)
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_8_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setBlobRadius:6.66666667];
  [v7 setContainerViewDescriptions:*(a1 + 40)];
  v8 = [v7 indicatorContainerViewDescription];
  v9 = v8;
  if (v8)
  {
    [v8 cornerRadius];
    if (v10 == 0.0)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_9;
      v24[3] = &unk_2783A93E8;
      v11 = *(a1 + 56);
      v24[4] = *(a1 + 32);
      v24[5] = v11;
      v12 = [v9 copyWithBlock:v24];
      [v7 setIndicatorContainerViewDescription:v12];

      v13 = [SBSAInterfaceElementPropertyIdentity alloc];
      v14 = [v9 interfaceElementIdentifier];
      v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];

      v16 = [SBSAInterfaceElementPropertyIdentity alloc];
      v17 = [v9 interfaceElementIdentifier];
      v18 = [(SBSAInterfaceElementPropertyIdentity *)v16 initWithAssociatedInterfaceElementIdentifier:v17 andProperty:@"cornerRadius"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v18 withMilestones:0];
    }
  }

  if ([*(a1 + 48) count])
  {
    v19 = [v7 actions];
    v20 = [v19 mutableCopy];

    v21 = [SBSAPreferencesDidChangeAction alloc];
    v22 = [*(a1 + 48) allObjects];
    v23 = [(SBSAPreferencesDidChangeAction *)v21 initWithReasons:v22];
    [v20 addObject:v23];

    [v7 setActions:v20];
  }
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_9(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v2 = objc_opt_self();
    v3 = v8;
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
      __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_9_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 bounds];
  Width = CGRectGetWidth(v10);
  [v5 bounds];
  Height = CGRectGetHeight(v11);
  if (Width <= Height)
  {
    Height = Width;
  }

  [v5 setCornerRadius:Height * 0.5];
}

- (unint64_t)_indexOfContainerViewDescriptionWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    orderedContainerDescriptions = v5->_orderedContainerDescriptions;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__SBSADefaultContainerLayoutProvider__indexOfContainerViewDescriptionWithIdentifier___block_invoke;
    v9[3] = &unk_2783AE040;
    v10 = v4;
    v7 = [(NSMutableArray *)orderedContainerDescriptions indexOfObjectPassingTest:v9];

    objc_sync_exit(v5);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

uint64_t __85__SBSADefaultContainerLayoutProvider__indexOfContainerViewDescriptionWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 interfaceElementIdentifier];
  v3 = BSEqualObjects();

  return v3;
}

- (void)_updateContainerViewDescriptionInCollection:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = self;
    objc_sync_enter(v4);
    if (!v4->_orderedContainerDescriptions)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      orderedContainerDescriptions = v4->_orderedContainerDescriptions;
      v4->_orderedContainerDescriptions = v5;
    }

    v7 = [v10 interfaceElementIdentifier];
    v8 = [(SBSADefaultContainerLayoutProvider *)v4 _indexOfContainerViewDescriptionWithIdentifier:v7];

    v9 = v4->_orderedContainerDescriptions;
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v9 addObject:v10];
    }

    else
    {
      [(NSMutableArray *)v9 replaceObjectAtIndex:v8 withObject:v10];
    }

    objc_sync_exit(v4);
  }
}

- (id)_updatedContainerViewDescription:(id)a3 transitionDescriptions:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  objc_sync_enter(v12);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke;
  v41[3] = &unk_2783C27D8;
  v43 = v9 == 0;
  v41[4] = v12;
  v13 = v10;
  v42 = v13;
  v14 = MEMORY[0x223D6F7F0](v41);
  [v11 inertContainerFrame];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke_2;
  v29 = &unk_2783C2800;
  v35 = a2;
  v30 = v12;
  v40 = v9 == 0;
  v36 = v15;
  v37 = v16;
  v38 = v17;
  v39 = v18;
  v19 = v14;
  v34 = v19;
  v20 = v13;
  v31 = v20;
  v21 = v9;
  v32 = v21;
  v22 = v11;
  v33 = v22;
  v23 = MEMORY[0x223D6F7F0](&v26);
  if (v9)
  {
    v24 = [v21 copyWithBlock:{v23, v26, v27, v28, v29, v30, v31, v32}];
  }

  else
  {
    v24 = [(SBSAViewDescription *)SBSAContainerViewDescription instanceWithBlock:v23, v26, v27, v28, v29, v30, v31, v32];
  }

  objc_sync_exit(v12);

  return v24;
}

void __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  if (v12 && v5)
  {
    if (*(a1 + 48))
    {
      [MEMORY[0x277D65E60] unanimatedBehaviorSettings];
    }

    else
    {
      [*(a1 + 32) behaviorSettingsForProperty:v5];
    }
    v6 = ;
    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [objc_opt_class() description];
    v9 = [SBSAAnimatedTransitionDescription animatedTransitionDescriptionWithAnimatedTransitionIdentifier:v7 behaviorSettings:v6 milestones:0 responsibleProvider:v8];

    v10 = *(a1 + 40);
    v11 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v12 andProperty:v5];
    [v10 setObject:v9 forKey:v11];
  }
}

void __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke_2(uint64_t a1, void *a2)
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
      __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 112))
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [v7 interfaceElementIdentifier];
  }
  v8 = ;
  [v7 setInterfaceElementIdentifier:v8];
  UIRectGetCenter();
  [v7 setCenter:?];
  (*(*(a1 + 64) + 16))();
  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v7 setBounds:?];
  (*(*(a1 + 64) + 16))();
  v17 = 1.0;
  if (*(a1 + 112))
  {
    v17 = 0.0;
  }

  [v7 setAlpha:v17];
  (*(*(a1 + 64) + 16))();
  [v7 setScale:{1.0, 1.0}];
  (*(*(a1 + 64) + 16))();
  [v7 setCornerRadius:0.0];
  [v7 setContentScale:{1.0, 1.0}];
  v18 = [objc_alloc(MEMORY[0x277D65E60]) initWithDefaultValues];
  [v18 setDefaultCriticallyDampedValues];
  v19 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v18];
  v20 = *(a1 + 40);
  v21 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v8 andProperty:@"contentScale"];
  [v20 setObject:v19 forKey:v21];

  [v7 setContentBounds:{v10, v12, v14, v16}];
  (*(*(a1 + 64) + 16))();
  UIRectGetCenter();
  [v7 setContentCenter:?];
  (*(*(a1 + 64) + 16))();
  [v7 setKeyLineMode:0];
  (*(*(a1 + 64) + 16))();
  v22 = [MEMORY[0x277D75348] colorWithWhite:0.5 alpha:1.0];
  [v7 setKeyLineTintColor:v22];

  (*(*(a1 + 64) + 16))();
  [v7 setShadowStyle:0];
  (*(*(a1 + 64) + 16))();
  SBSystemApertureContainerRenderingConfigurationMake(0, 2, 0, v27);
  [v7 setRenderingConfiguration:v27];
  (*(*(a1 + 64) + 16))();
  v23 = *(a1 + 48);
  v24 = [*(a1 + 56) elementContexts];
  v25 = SBSAElementContextAssociatedWithContainerViewDescription(v23, v24, 0);

  if (v25)
  {
    v26 = [v25 isRequestingMenuPresentation] ^ 1;
  }

  else
  {
    v26 = 1;
  }

  [v7 setContentClippingEnabled:v26];
  [v7 setBackgroundColor:0];
  (*(*(a1 + 64) + 16))();
  [v7 setUserInteractionEnabled:1];
}

- (void)_updateContainerDescriptionAtIndex:(unint64_t)a3 transitionDescriptions:(id)a4 context:(id)a5 updateReason:(id *)a6
{
  v16 = a4;
  v11 = a5;
  v12 = self;
  objc_sync_enter(v12);
  if ([(NSMutableArray *)v12->_orderedContainerDescriptions count]<= a3 || ([(NSMutableArray *)v12->_orderedContainerDescriptions objectAtIndexedSubscript:a3], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([(NSMutableArray *)v12->_orderedContainerDescriptions count]!= a3)
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      [v15 handleFailureInMethod:a2 object:v12 file:@"SBSADefaultContainerLayoutProvider.m" lineNumber:286 description:{@"Requested index '%lu' isn't the next available index: %@", a3, v12->_orderedContainerDescriptions}];
    }

    v13 = 0;
    if (a6)
    {
      *a6 = @"inertLayoutProvider.newContainer";
    }
  }

  v14 = [(SBSADefaultContainerLayoutProvider *)v12 _updatedContainerViewDescription:v13 transitionDescriptions:v16 context:v11];
  [(SBSADefaultContainerLayoutProvider *)v12 _updateContainerViewDescriptionInCollection:v14];

  objc_sync_exit(v12);
}

- (void)_pruneContainerDescriptionWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(SBSADefaultContainerLayoutProvider *)v5 _indexOfContainerViewDescriptionWithIdentifier:v7];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)v5->_orderedContainerDescriptions removeObjectAtIndex:v6];
    }

    objc_sync_exit(v5);

    v4 = v7;
  }
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSADefaultContainerLayoutProvider.m" lineNumber:72 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSADefaultContainerLayoutProvider.m" lineNumber:74 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_6_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_7_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_8_cold_1()
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

void __61__SBSADefaultContainerLayoutProvider_preferencesFromContext___block_invoke_9_cold_1()
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

void __102__SBSADefaultContainerLayoutProvider__updatedContainerViewDescription_transitionDescriptions_context___block_invoke_2_cold_1()
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

@end