@interface SBSADefaultElementContentProvider
- (id)_updatedElementDescriptionAssociatedWithElementContext:(id)a3 transitionDescriptions:(id)a4 context:(id)a5 updateReasons:(id)a6;
- (id)_updatedElementDescriptionFromDescription:(id)a3 associatedElementContext:(id)a4 associatedSnapshotContext:(id)a5 transitionDescriptions:(id)a6 context:(id)a7 updateReasons:(id)a8;
- (id)_updatedIndicatorElementDescriptionFromDescription:(id)a3 associatedElementIdentity:(id)a4 transitionDescriptions:(id)a5 context:(id)a6 updateReasons:(id)a7;
- (id)defaultTransitionSettings;
- (id)preferencesFromContext:(id)a3;
- (void)_pruneElementDescriptionWithIdentifier:(id)a3;
- (void)_updateElementDescriptionsWithDescription:(id)a3;
@end

@implementation SBSADefaultElementContentProvider

- (id)defaultTransitionSettings
{
  v2 = [objc_opt_class() settings];
  v3 = [v2 elementContentTransitionSettings];

  return v3;
}

- (id)preferencesFromContext:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
      [(SBSADefaultElementContentProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v68 = a2;

  v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = [v9 preferences];
  v67 = v5;
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v11;
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

    if (!v15)
    {
      [(SBSADefaultElementContentProvider *)v13 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v15 = 0;
  }

  v66 = v15;

  v74 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v75 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v16 = [v9 elementContexts];
  v17 = [v16 countByEnumeratingWithState:&v92 objects:v98 count:16];
  v73 = v9;
  if (v17)
  {
    v18 = v17;
    v19 = *v93;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v93 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(SBSADefaultElementContentProvider *)self _updatedElementDescriptionAssociatedWithElementContext:*(*(&v92 + 1) + 8 * i) transitionDescriptions:v74 context:v9 updateReasons:v10];
        v22 = v21;
        if (v21)
        {
          v23 = [v21 interfaceElementIdentifier];
          [v75 addObject:v23];

          v9 = v73;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v92 objects:v98 count:16];
    }

    while (v18);
  }

  v71 = v10;

  v24 = [v9 isAnimatedTransitionInProgress];
  wasAnimating = self->_wasAnimating;
  self->_wasAnimating = v24 & 1;
  v26 = [v9 containsAnyOfSignals:3];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v72 = self;
  v27 = [(NSMutableDictionary *)self->_identifiersToElementDescriptions allValues];
  v28 = [v27 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = v26 | wasAnimating & (v24 ^ 1u);
    v31 = *v89;
    v69 = v27;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v89 != v31)
        {
          objc_enumerationMutation(v27);
        }

        v33 = *(*(&v88 + 1) + 8 * j);
        v34 = [v33 interfaceElementIdentifier];
        if (([v75 containsObject:v34] & 1) == 0)
        {
          if (v30)
          {
            [(SBSADefaultElementContentProvider *)v72 _pruneElementDescriptionWithIdentifier:v34];
          }

          else
          {
            v35 = [v33 associatedSystemApertureElementIdentity];
            [v9 elementContexts];
            v37 = v36 = v30;
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke;
            v86[3] = &unk_2783AD700;
            v38 = v35;
            v87 = v38;
            v39 = [v37 bs_firstObjectPassingTest:v86];

            v40 = [v9 elementSnapshotContexts];
            v84[0] = MEMORY[0x277D85DD0];
            v84[1] = 3221225472;
            v84[2] = __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_2;
            v84[3] = &unk_2783AD728;
            v85 = v38;
            v41 = v38;
            v42 = [v40 bs_firstObjectPassingTest:v84];

            v43 = [(SBSADefaultElementContentProvider *)v72 _updatedElementDescriptionFromDescription:v33 associatedElementContext:v39 associatedSnapshotContext:v42 transitionDescriptions:v74 context:v73 updateReasons:v71];
            v30 = v36;
            [(SBSADefaultElementContentProvider *)v72 _updateElementDescriptionsWithDescription:v43];

            v9 = v73;
            v27 = v69;
          }
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v29);
  }

  v44 = v66;
  v45 = [v66 maintainedPreferences];
  v46 = [v45 indicatorAppearanceStateContext];

  indicatorElementDescription = v72->_indicatorElementDescription;
  v70 = v46;
  if (v46)
  {
    v48 = [v46 activeIndicatorElementContext];
    v49 = v74;
    v50 = [(SBSADefaultElementContentProvider *)v72 _updatedIndicatorElementDescriptionFromDescription:indicatorElementDescription associatedElementIdentity:v48 transitionDescriptions:v74 context:v9 updateReasons:v71];

    objc_storeStrong(&v72->_indicatorElementDescription, v50);
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_3;
    v81[3] = &unk_2783AD750;
    v51 = v68;
    v82 = v50;
    v83 = v68;
    v81[4] = v72;
    indicatorElementDescription = v50;
    v52 = [v66 copyWithBlock:v81];

    v44 = v52;
  }

  else
  {
    v72->_indicatorElementDescription = 0;
    v51 = v68;
    v49 = v74;
  }

  v53 = v72->_identifiersToElementDescriptions;
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_4;
  v77[3] = &unk_2783AD778;
  v80 = v51;
  v77[4] = v72;
  v54 = v53;
  v78 = v54;
  v55 = v49;
  v79 = v55;
  v56 = MEMORY[0x223D6F7F0](v77);
  if (v44)
  {
    v57 = [v44 copyWithBlock:v56];
  }

  else
  {
    v57 = [SBSAPreferences instanceWithBlock:v56];
  }

  if ([v71 count])
  {
    v58 = [SBSAPreferencesDidChangeAction alloc];
    v59 = [v71 allObjects];
    v60 = [(SBSAPreferencesDidChangeAction *)v58 initWithReasons:v59];
    v96 = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
    v62 = [v57 copyByAddingActions:v61];

    v57 = v62;
    v9 = v73;
  }

  v63 = [v9 copyByUpdatingPreferences:v57];

  v76.receiver = v72;
  v76.super_class = SBSADefaultElementContentProvider;
  v64 = [(SBSABasePreferencesProvider *)&v76 preferencesFromContext:v63];

  return v64;
}

void __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
}

void __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
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
      __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v20 = v3;

  v8 = [*(a1 + 40) allValues];
  [v7 setElementDescriptions:v8];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [*(a1 + 48) objectForKey:v14];
        v16 = objc_opt_class();
        v17 = v15;
        if (v16)
        {
          if (objc_opt_isKindOfClass())
          {
            v18 = v17;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }

        v19 = v18;

        if (v19)
        {
          [v7 associateAnimatedTransitionDescriptionOfProperty:v19 withProperty:v14 withMilestones:0];
        }

        else
        {
          [v7 setAnimatedTransitionDescription:v17 forProperty:v14 withMilestones:0];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }
}

- (id)_updatedElementDescriptionFromDescription:(id)a3 associatedElementContext:(id)a4 associatedSnapshotContext:(id)a5 transitionDescriptions:(id)a6 context:(id)a7 updateReasons:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = self;
  objc_sync_enter(v21);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke;
  v40[3] = &unk_2783AD7A0;
  v40[4] = v21;
  v22 = v18;
  v41 = v22;
  v23 = MEMORY[0x223D6F7F0](v40);
  if (!v15)
  {
    [v20 addObject:@"defaultElementContentProvider.updateReason.newElementDescription"];
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke_2;
  v32[3] = &unk_2783AD7C8;
  v38 = a2;
  v32[4] = v21;
  v39 = v15 == 0;
  v24 = v16;
  v33 = v24;
  v25 = v23;
  v37 = v25;
  v26 = v17;
  v34 = v26;
  v27 = v19;
  v35 = v27;
  v28 = v20;
  v36 = v28;
  v29 = MEMORY[0x223D6F7F0](v32);
  if (v15)
  {
    v30 = [v15 copyWithBlock:v29];
  }

  else
  {
    v30 = [SBSAElementDescription instanceWithBlock:v29];
  }

  objc_sync_exit(v21);

  return v30;
}

void __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = a2;
    v12 = [v7 newAnimatedTransitionDescriptionForProperty:v8 animated:a4];
    v10 = *(a1 + 40);
    v11 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v9 andProperty:v8];

    [v10 setObject:v12 forKey:v11];
  }
}

void __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke_2(uint64_t a1, void *a2)
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
      __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 88))
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [v7 interfaceElementIdentifier];
  }
  v8 = ;
  if (*(a1 + 88) == 1)
  {
    [v7 setInterfaceElementIdentifier:v8];
  }

  if (*(a1 + 40))
  {
    [v7 setAssociatedSystemApertureElementIdentity:?];
  }

  if (*(a1 + 88))
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  [v7 setAppearState:v9];
  v10 = 0.0;
  [v7 setSensorObscuringShadowProgress:0.0];
  [v7 setLeadingViewBlurProgress:1.0];
  (*(*(a1 + 72) + 16))();
  [v7 setLeadingViewAlpha:0.0];
  (*(*(a1 + 72) + 16))();
  v20 = *(MEMORY[0x277CBF2C0] + 16);
  v22 = *MEMORY[0x277CBF2C0];
  v21 = v22;
  v23 = v20;
  v24 = *(MEMORY[0x277CBF2C0] + 32);
  v19 = v24;
  [v7 setLeadingViewTransform:&v22];
  (*(*(a1 + 72) + 16))();
  [v7 setTrailingViewBlurProgress:1.0];
  (*(*(a1 + 72) + 16))();
  [v7 setTrailingViewAlpha:0.0];
  (*(*(a1 + 72) + 16))();
  v22 = v21;
  v23 = v20;
  v24 = v19;
  [v7 setTrailingViewTransform:&v22];
  (*(*(a1 + 72) + 16))();
  [v7 setMinimalViewBlurProgress:1.0];
  (*(*(a1 + 72) + 16))();
  [v7 setMinimalViewAlpha:0.0];
  (*(*(a1 + 72) + 16))();
  v22 = v21;
  v23 = v20;
  v24 = v19;
  [v7 setMinimalViewTransform:&v22];
  (*(*(a1 + 72) + 16))();
  [v7 setCustomContentBlurProgress:1.0];
  (*(*(a1 + 72) + 16))();
  [v7 setCustomContentAlpha:0.0];
  (*(*(a1 + 72) + 16))();
  v11 = [*(a1 + 48) snapshotReason];
  v12 = BSEqualStrings();
  v13 = [*(a1 + 56) preferences];
  v14 = [v13 elementLayoutTransition];
  v15 = [v14 isTransitionFromCustom];

  if ((v15 & 1) != 0 || v12)
  {
    if (v12)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }

    if (!v12)
    {
      v10 = 1.0;
    }

    [v7 setSnapshotViewBlurProgress:v18];
    (*(*(a1 + 72) + 16))();
    [v7 setSnapshotViewAlpha:v10];
    (*(*(a1 + 72) + 16))();
    v17 = @"defaultElementContentProvider.snapshotReason.transitionFromCustom";
    v16 = v7;
  }

  else
  {
    v16 = v7;
    v17 = 0;
  }

  [v16 setSnapshotReason:v17];
  if (!(v12 & 1 | ((v15 & 1) == 0)))
  {
    [*(a1 + 64) addObject:@"defaultElementContentProvider.updateReason.snapshotRequired"];
  }
}

- (id)_updatedIndicatorElementDescriptionFromDescription:(id)a3 associatedElementIdentity:(id)a4 transitionDescriptions:(id)a5 context:(id)a6 updateReasons:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = self;
  objc_sync_enter(v18);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke;
  v31[3] = &unk_2783AD7A0;
  v31[4] = v18;
  v19 = v15;
  v32 = v19;
  v20 = MEMORY[0x223D6F7F0](v31);
  if (!v13)
  {
    [v17 addObject:@"defaultElementContentProvider.updateReason.newIndicatorElementDescription"];
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke_2;
  v26[3] = &unk_2783AD7F0;
  v29 = a2;
  v26[4] = v18;
  v30 = v13 == 0;
  v21 = v14;
  v27 = v21;
  v22 = v20;
  v28 = v22;
  v23 = MEMORY[0x223D6F7F0](v26);
  if (v13)
  {
    v24 = [v13 copyWithBlock:v23];
  }

  else
  {
    v24 = [SBSAIndicatorElementDescription instanceWithBlock:v23];
  }

  objc_sync_exit(v18);

  return v24;
}

void __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 && a3)
  {
    v7 = *(a1 + 32);
    v8 = a3;
    v9 = a2;
    v12 = [v7 newAnimatedTransitionDescriptionForProperty:v8 animated:a4];
    v10 = *(a1 + 40);
    v11 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v9 andProperty:v8];

    [v10 setObject:v12 forKey:v11];
  }
}

void __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke_2(uint64_t a1, void *a2)
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
      __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 64))
  {
    [MEMORY[0x277CCAD78] UUID];
  }

  else
  {
    [v7 interfaceElementIdentifier];
  }
  v8 = ;
  if (*(a1 + 64) == 1)
  {
    [v7 setInterfaceElementIdentifier:v8];
  }

  if (*(a1 + 40))
  {
    [v7 setAssociatedSystemApertureElementIdentity:?];
  }

  if (*(a1 + 64))
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  [v7 setAppearState:v9];
  memset(&v11, 0, sizeof(v11));
  CGAffineTransformMakeScale(&v11, 0.5, 0.5);
  [v7 setIndicatorViewBlurProgress:1.0];
  (*(*(a1 + 48) + 16))();
  [v7 setIndicatorViewAlpha:0.0];
  (*(*(a1 + 48) + 16))();
  v10 = v11;
  [v7 setIndicatorViewTransform:&v10];
  (*(*(a1 + 48) + 16))();
  [v7 setFixedIndicatorViewBlurProgress:1.0];
  (*(*(a1 + 48) + 16))();
  [v7 setFixedIndicatorViewAlpha:0.0];
  (*(*(a1 + 48) + 16))();
  v10 = v11;
  [v7 setFixedIndicatorViewTransform:&v10];
  (*(*(a1 + 48) + 16))();
}

- (id)_updatedElementDescriptionAssociatedWithElementContext:(id)a3 transitionDescriptions:(id)a4 context:(id)a5 updateReasons:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  objc_sync_enter(v14);
  if (v10)
  {
    v15 = [(NSMutableDictionary *)v14->_identifiersToElementDescriptions allValues];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __137__SBSADefaultElementContentProvider__updatedElementDescriptionAssociatedWithElementContext_transitionDescriptions_context_updateReasons___block_invoke;
    v28[3] = &unk_2783AD818;
    v16 = v10;
    v29 = v16;
    v17 = [v15 bs_firstObjectPassingTest:v28];
    v18 = [v12 elementSnapshotContexts];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __137__SBSADefaultElementContentProvider__updatedElementDescriptionAssociatedWithElementContext_transitionDescriptions_context_updateReasons___block_invoke_2;
    v26 = &unk_2783AD728;
    v19 = v16;
    v27 = v19;
    v20 = [v18 bs_firstObjectPassingTest:&v23];

    v21 = [(SBSADefaultElementContentProvider *)v14 _updatedElementDescriptionFromDescription:v17 associatedElementContext:v19 associatedSnapshotContext:v20 transitionDescriptions:v11 context:v12 updateReasons:v13, v23, v24, v25, v26];

    [(SBSADefaultElementContentProvider *)v14 _updateElementDescriptionsWithDescription:v21];
  }

  else
  {
    v21 = 0;
  }

  objc_sync_exit(v14);

  return v21;
}

uint64_t __137__SBSADefaultElementContentProvider__updatedElementDescriptionAssociatedWithElementContext_transitionDescriptions_context_updateReasons___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

- (void)_updateElementDescriptionsWithDescription:(id)a3
{
  v4 = a3;
  identifiersToElementDescriptions = self->_identifiersToElementDescriptions;
  v9 = v4;
  if (!identifiersToElementDescriptions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_identifiersToElementDescriptions;
    self->_identifiersToElementDescriptions = v6;

    v4 = v9;
    identifiersToElementDescriptions = self->_identifiersToElementDescriptions;
  }

  v8 = [v4 interfaceElementIdentifier];
  [(NSMutableDictionary *)identifiersToElementDescriptions setObject:v9 forKey:v8];
}

- (void)_pruneElementDescriptionWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    [(NSMutableDictionary *)v5->_identifiersToElementDescriptions removeObjectForKey:v6];
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSADefaultElementContentProvider.m" lineNumber:54 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSADefaultElementContentProvider.m" lineNumber:56 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __60__SBSADefaultElementContentProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __175__SBSADefaultElementContentProvider__updatedElementDescriptionFromDescription_associatedElementContext_associatedSnapshotContext_transitionDescriptions_context_updateReasons___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsaelementdes.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __159__SBSADefaultElementContentProvider__updatedIndicatorElementDescriptionFromDescription_associatedElementIdentity_transitionDescriptions_context_updateReasons___block_invoke_2_cold_1()
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