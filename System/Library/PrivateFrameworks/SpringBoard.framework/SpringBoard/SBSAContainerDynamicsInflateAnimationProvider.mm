@interface SBSAContainerDynamicsInflateAnimationProvider
- (id)_identitiesWithMilestoneReached:(id)a3;
- (id)preferencesFromContext:(id)a3;
- (void)_addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:(id)a3 preferencesMutator:(id)a4 context:(id)a5;
@end

@implementation SBSAContainerDynamicsInflateAnimationProvider

- (id)preferencesFromContext:(id)a3
{
  v171 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    v7 = v6;
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
    v7 = v6;
    v8 = 0;
  }

  v9 = v8;
  v109 = v7;

  v158 = 0;
  v159 = &v158;
  v160 = 0x3032000000;
  v161 = __Block_byref_object_copy__25;
  v162 = __Block_byref_object_dispose__25;
  v113 = v9;
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

  v163 = v14;
  v15 = [v159[5] containerViewDescriptions];
  v115 = [v15 mutableCopy];

  v16 = [v159[5] elementDescriptions];
  v110 = [v16 mutableCopy];

  v119 = [MEMORY[0x277CBEB58] set];
  v114 = [MEMORY[0x277CBEB58] set];
  v112 = [MEMORY[0x277CBEB58] set];
  elementIdentitiesWaitingToExpandBeforeInflation = self->_elementIdentitiesWaitingToExpandBeforeInflation;
  if (elementIdentitiesWaitingToExpandBeforeInflation)
  {
    v18 = elementIdentitiesWaitingToExpandBeforeInflation;
  }

  else
  {
    v18 = [MEMORY[0x277CBEB58] set];
  }

  v19 = self->_elementIdentitiesWaitingToExpandBeforeInflation;
  self->_elementIdentitiesWaitingToExpandBeforeInflation = v18;

  elementIdentitiesThatFinishedWaitingToExpandBeforeInflation = self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  if (elementIdentitiesThatFinishedWaitingToExpandBeforeInflation)
  {
    v21 = elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB58] set];
  }

  v22 = self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation;
  self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation = v21;

  pendingMilestonePropertyIdentitiesToElementIdentities = self->_pendingMilestonePropertyIdentitiesToElementIdentities;
  if (pendingMilestonePropertyIdentitiesToElementIdentities)
  {
    v24 = pendingMilestonePropertyIdentitiesToElementIdentities;
  }

  else
  {
    v24 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  }

  v25 = self->_pendingMilestonePropertyIdentitiesToElementIdentities;
  self->_pendingMilestonePropertyIdentitiesToElementIdentities = v24;

  [(SBSAContainerDynamicsInflateAnimationProvider *)self _identitiesWithMilestoneReached:v113];
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  obj = v155 = 0u;
  v26 = [obj countByEnumeratingWithState:&v154 objects:v170 count:16];
  if (v26)
  {
    v117 = *v155;
    do
    {
      v120 = 0;
      v118 = v26;
      do
      {
        if (*v155 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v154 + 1) + 8 * v120);
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v28 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
        v29 = [v28 allObjects];

        v30 = [v29 countByEnumeratingWithState:&v150 objects:v169 count:16];
        if (v30)
        {
          v31 = *v151;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v151 != v31)
              {
                objc_enumerationMutation(v29);
              }

              v33 = *(*(&v150 + 1) + 8 * i);
              v34 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v33];
              v35 = SAElementIdentityEqualToIdentity();

              if (v35)
              {
                [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities removeObjectForKey:v33];
              }
            }

            v30 = [v29 countByEnumeratingWithState:&v150 objects:v169 count:16];
          }

          while (v30);
        }

        [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation removeObject:v27];
        [(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation addObject:v27];
        ++v120;
      }

      while (v120 != v118);
      v26 = [obj countByEnumeratingWithState:&v154 objects:v170 count:16];
    }

    while (v26);
  }

  for (j = 0; j < [v115 count]; ++j)
  {
    v37 = [v115 objectAtIndexedSubscript:j];
    v38 = [SBSAElementIdentification alloc];
    v39 = [v37 associatedSystemApertureElementIdentity];
    v40 = [(SBSAElementIdentification *)v38 initWithElementIdentification:v39];

    v41 = [v113 elementContexts];
    v42 = SBSAElementContextAssociatedWithContainerViewDescription(v37, v41, 0);

    v43 = [v42 activeDynamicAnimation];
    if (v43 == 2)
    {
      [v119 addObject:v40];
      if (j)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v44 = [(NSSet *)self->_elementIdentitiesWithInflateApplied containsObject:v40];
      if (j)
      {
        v45 = 0;
      }

      else
      {
        v45 = v44;
      }

      if (!v45)
      {
        goto LABEL_56;
      }
    }

    v46 = [v113 preferences];
    v47 = [v46 lastChangingElementLayoutTransition];

    v48 = [v47 targetElementContexts];
    v49 = [v48 firstObject];

    if (![v47 isTransitionToSingleCompact] || !SAElementIdentityEqualToIdentity())
    {

LABEL_52:
      if (v43 == 2)
      {
        v50 = v114;
      }

      else
      {
        v50 = v112;
      }

      [v50 addObject:v40];
      goto LABEL_56;
    }

    if (([(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation containsObject:v40]& 1) == 0)
    {
      [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation addObject:v40];
    }

    if ([(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation containsObject:v40])
    {

      goto LABEL_56;
    }

    v51 = [(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation containsObject:v40];

    if (v51)
    {
      goto LABEL_52;
    }

LABEL_56:
  }

  [(NSMutableSet *)self->_elementIdentitiesWaitingToExpandBeforeInflation intersectSet:v119];
  [(NSMutableSet *)self->_elementIdentitiesThatFinishedWaitingToExpandBeforeInflation intersectSet:v119];
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v52 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
  v53 = [v52 allObjects];

  v54 = [v53 countByEnumeratingWithState:&v146 objects:v168 count:16];
  if (v54)
  {
    v55 = *v147;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v147 != v55)
        {
          objc_enumerationMutation(v53);
        }

        v57 = *(*(&v146 + 1) + 8 * k);
        v58 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v57];
        v59 = [v119 containsObject:v58];

        if ((v59 & 1) == 0)
        {
          [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities removeObjectForKey:v57];
        }
      }

      v54 = [v53 countByEnumeratingWithState:&v146 objects:v168 count:16];
    }

    while (v54);
  }

  v60 = v159[5];
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke;
  v143[3] = &unk_2783AD750;
  v145 = a2;
  v143[4] = self;
  v121 = v113;
  v144 = v121;
  v61 = [v60 copyWithBlock:v143];
  v62 = v159[5];
  v159[5] = v61;

  for (m = 0; m < [v115 count]; ++m)
  {
    v64 = [v115 objectAtIndexedSubscript:m];
    v65 = [SBSAElementIdentification alloc];
    v66 = [v64 associatedSystemApertureElementIdentity];
    v67 = [(SBSAElementIdentification *)v65 initWithElementIdentification:v66];

    v68 = [v121 elementContexts];
    v69 = SBSAElementContextAssociatedWithContainerViewDescription(v64, v68, 0);

    v70 = [v114 containsObject:v67];
    if ([v112 containsObject:v67])
    {
      v71 = ([v69 systemApertureLayoutCustomizingOptions] & 1) == 0;
    }

    else
    {
      v71 = 0;
    }

    if ((v70 | v71))
    {
      v72 = [v121 elementContexts];
      v73 = SBSAElementContextAssociatedWithContainerViewDescription(v64, v72, 0);

      *buf = 0x7FFFFFFFFFFFFFFFLL;
      v74 = SBSAElementDescriptionAssociatedWithElementIdentity(v73, v110, buf);
      if (v70)
      {
        [v114 addObject:v67];
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2;
        v139[3] = &unk_2783AD778;
        v142 = a2;
        v139[4] = self;
        v75 = v64;
        v140 = v75;
        v141 = v121;
        v64 = [v75 copyWithBlock:v139];

        [v115 replaceObjectAtIndex:m withObject:v64];
        if (v74)
        {
          v138[0] = MEMORY[0x277D85DD0];
          v138[1] = 3221225472;
          v138[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3;
          v138[3] = &unk_2783A93E8;
          v138[4] = self;
          v138[5] = a2;
          v76 = [v74 copyWithBlock:v138];
          [v110 replaceObjectAtIndex:*buf withObject:v76];
        }
      }

      v77 = v159[5];
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4;
      v131[3] = &unk_2783B01C0;
      v136 = a2;
      v131[4] = self;
      v137 = v70;
      v64 = v64;
      v132 = v64;
      v78 = v74;
      v133 = v78;
      v135 = &v158;
      v134 = v121;
      v79 = [v77 copyWithBlock:v131];
      v80 = v159[5];
      v159[5] = v79;
    }

    if (v71)
    {
      v81 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
      {
        v82 = [v121 queryIteration];
        *buf = 134349314;
        *&buf[4] = v82;
        v166 = 2112;
        v167 = v67;
        _os_log_debug_impl(&dword_21ED4E000, v81, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Applying deflate to element:'%@'", buf, 0x16u);
      }
    }
  }

  v83 = [v114 mutableCopy];
  elementIdentitiesWithInflateApplied = self->_elementIdentitiesWithInflateApplied;
  v85 = elementIdentitiesWithInflateApplied;
  if (!elementIdentitiesWithInflateApplied)
  {
    v85 = [MEMORY[0x277CBEB98] set];
  }

  [v83 minusSet:v85];
  if (!elementIdentitiesWithInflateApplied)
  {
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v86 = v83;
  v87 = [v86 countByEnumeratingWithState:&v127 objects:v164 count:16];
  if (v87)
  {
    v88 = *v128;
    do
    {
      for (n = 0; n != v87; ++n)
      {
        if (*v128 != v88)
        {
          objc_enumerationMutation(v86);
        }

        v90 = *(*(&v127 + 1) + 8 * n);
        v91 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
        if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
        {
          v92 = [v121 queryIteration];
          *buf = 134349314;
          *&buf[4] = v92;
          v166 = 2112;
          v167 = v90;
          _os_log_debug_impl(&dword_21ED4E000, v91, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Applying inflate to element:'%@'", buf, 0x16u);
        }
      }

      v87 = [v86 countByEnumeratingWithState:&v127 objects:v164 count:16];
    }

    while (v87);
  }

  v93 = [v114 copy];
  v94 = self->_elementIdentitiesWithInflateApplied;
  self->_elementIdentitiesWithInflateApplied = v93;

  v95 = v159[5];
  v123[0] = MEMORY[0x277D85DD0];
  v123[1] = 3221225472;
  v123[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52;
  v123[3] = &unk_2783AD778;
  v126 = a2;
  v123[4] = self;
  v96 = v115;
  v124 = v96;
  v97 = v110;
  v125 = v97;
  v98 = [v95 copyWithBlock:v123];
  v99 = v159[5];
  v159[5] = v98;

  v100 = [v121 copyByUpdatingPreferences:v159[5]];
  v122.receiver = self;
  v122.super_class = SBSAContainerDynamicsInflateAnimationProvider;
  v101 = [(SBSABasePreferencesProvider *)&v122 preferencesFromContext:v100];
  v102 = objc_opt_class();
  v103 = v101;
  if (v102)
  {
    if (objc_opt_isKindOfClass())
    {
      v104 = v103;
    }

    else
    {
      v104 = 0;
    }
  }

  else
  {
    v104 = 0;
  }

  v105 = v104;

  v106 = v159[5];
  v159[5] = v105;

  if (![v119 count])
  {
    [(SBSABasePreferencesProvider *)self removeFromParentProvider];
  }

  v107 = v159[5];

  _Block_object_dispose(&v158, 8);

  return v107;
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [*(a1 + 32) _addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:*(*(a1 + 32) + 48) preferencesMutator:v6 context:*(a1 + 40)];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v8 = [objc_opt_class() settings];
  [v8 inflateAnimationScale];
  v10 = v9;

  [*(a1 + 40) bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [*(a1 + 40) center];
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_class() settings];
  [v23 inflateVerticalOffsetProportion];
  SBSAScaledAndClippedFrameByScalingLeadingTrailingViews(&v43, *(a1 + 48), v12, v14, v16, v18, v20, v22, v10, v10, v24, v25, v26, v27, v28, v29, v30);

  BSRectWithSize();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  UIRectGetCenter();
  v40 = v39;
  v42 = v41;
  [v7 setBounds:{v32, v34, v36, v38}];
  [v7 setCenter:{v40, v42}];
  [v7 setContentBounds:{v43, v44}];
  UIRectGetCenter();
  [v7 setContentCenter:?];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
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

    if (!v6)
    {
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_class() settings];
  [v7 inflateAnimationContentScale];
  v9 = v8;

  if (v6)
  {
    [v6 leadingViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setLeadingViewTransform:&v11];
  if (v6)
  {
    [v6 trailingViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setTrailingViewTransform:&v11];
  if (v6)
  {
    [v6 minimalViewTransform];
  }

  else
  {
    memset(&v10, 0, sizeof(v10));
  }

  CGAffineTransformScale(&v11, &v10, v9, v9);
  [v6 setMinimalViewTransform:&v11];
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 80);
  v9 = [objc_opt_class() settings];
  v10 = v9;
  if (v8)
  {
    [v9 inflateAnimationScaleUpSettings];
  }

  else
  {
    [v9 inflateAnimationScaleDownSettings];
  }
  v11 = ;

  v12 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
  v13 = [SBSAInterfaceElementPropertyIdentity alloc];
  v14 = [*(a1 + 40) interfaceElementIdentifier];
  v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];

  v72 = v12;
  [v7 setAnimatedTransitionDescription:v12 forProperty:v15 withMilestones:0];
  v73 = v11;
  v16 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v11];
  v17 = [SBSAInterfaceElementPropertyIdentity alloc];
  v18 = [*(a1 + 40) interfaceElementIdentifier];
  v19 = [(SBSAInterfaceElementPropertyIdentity *)v17 initWithAssociatedInterfaceElementIdentifier:v18 andProperty:@"center"];

  v71 = v16;
  [v7 setAnimatedTransitionDescription:v16 forProperty:v19 withMilestones:0];
  v20 = [SBSAInterfaceElementPropertyIdentity alloc];
  v21 = [*(a1 + 40) interfaceElementIdentifier];
  v22 = [(SBSAInterfaceElementPropertyIdentity *)v20 initWithAssociatedInterfaceElementIdentifier:v21 andProperty:@"contentBounds"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v22 withMilestones:0];

  v23 = [SBSAInterfaceElementPropertyIdentity alloc];
  v24 = [*(a1 + 40) interfaceElementIdentifier];
  v25 = [(SBSAInterfaceElementPropertyIdentity *)v23 initWithAssociatedInterfaceElementIdentifier:v24 andProperty:@"contentCenter"];
  [v7 associateAnimatedTransitionDescriptionOfProperty:v19 withProperty:v25 withMilestones:0];

  if (*(a1 + 48))
  {
    v26 = [SBSAInterfaceElementPropertyIdentity alloc];
    v27 = [*(a1 + 48) interfaceElementIdentifier];
    v28 = [(SBSAInterfaceElementPropertyIdentity *)v26 initWithAssociatedInterfaceElementIdentifier:v27 andProperty:@"leadingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v28 withMilestones:0];
    v29 = [SBSAInterfaceElementPropertyIdentity alloc];
    v30 = [*(a1 + 48) interfaceElementIdentifier];
    v31 = [(SBSAInterfaceElementPropertyIdentity *)v29 initWithAssociatedInterfaceElementIdentifier:v30 andProperty:@"trailingViewTransform"];

    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v31 withMilestones:0];
    v32 = [SBSAInterfaceElementPropertyIdentity alloc];
    [*(a1 + 48) interfaceElementIdentifier];
    v34 = v33 = v3;
    v35 = [(SBSAInterfaceElementPropertyIdentity *)v32 initWithAssociatedInterfaceElementIdentifier:v34 andProperty:@"minimalViewTransform"];

    v3 = v33;
    [v7 associateAnimatedTransitionDescriptionOfProperty:v15 withProperty:v35 withMilestones:0];
  }

  v36 = [*(*(*(a1 + 64) + 8) + 40) indicatorContainerViewDescription];
  v37 = [*(*(*(a1 + 64) + 8) + 40) indicatorElementDescription];
  v38 = v37;
  if (v36 && v37)
  {
    v39 = [*(*(*(a1 + 64) + 8) + 40) maintainedPreferences];
    v40 = [v39 indicatorAppearanceStateContext];

    v41 = [v40 microIndicatorEjectionPhase];
    if (*(a1 + 80) == 1)
    {
      v68 = v3;
      v69 = v41;
      v42 = v41 > 1;
      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x5010000000;
      v82[3] = &unk_21F9DA6A3;
      v43 = *(MEMORY[0x277CBF2C0] + 16);
      v83 = *MEMORY[0x277CBF2C0];
      v84 = v43;
      v85 = *(MEMORY[0x277CBF2C0] + 32);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5;
      v75[3] = &unk_2783B01C0;
      v44 = *(a1 + 32);
      v45 = *(a1 + 40);
      v80 = *(a1 + 72);
      v75[4] = v44;
      v76 = v45;
      v46 = *(a1 + 56);
      v81 = v42;
      v77 = v46;
      v79 = v82;
      v67 = v40;
      v78 = v40;
      v70 = [v36 copyWithBlock:v75];

      [v7 setIndicatorContainerViewDescription:v70];
      v47 = [SBSAInterfaceElementPropertyIdentity alloc];
      v48 = [*(a1 + 40) interfaceElementIdentifier];
      v49 = [(SBSAInterfaceElementPropertyIdentity *)v47 initWithAssociatedInterfaceElementIdentifier:v48 andProperty:@"bounds"];
      v50 = [SBSAInterfaceElementPropertyIdentity alloc];
      v51 = [v70 interfaceElementIdentifier];
      v52 = [(SBSAInterfaceElementPropertyIdentity *)v50 initWithAssociatedInterfaceElementIdentifier:v51 andProperty:@"bounds"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v49 withProperty:v52 withMilestones:0];

      v53 = [SBSAInterfaceElementPropertyIdentity alloc];
      v54 = [*(a1 + 40) interfaceElementIdentifier];
      v55 = [(SBSAInterfaceElementPropertyIdentity *)v53 initWithAssociatedInterfaceElementIdentifier:v54 andProperty:@"center"];
      v56 = [SBSAInterfaceElementPropertyIdentity alloc];
      v57 = [v70 interfaceElementIdentifier];
      v58 = [(SBSAInterfaceElementPropertyIdentity *)v56 initWithAssociatedInterfaceElementIdentifier:v57 andProperty:@"center"];
      [v7 associateAnimatedTransitionDescriptionOfProperty:v55 withProperty:v58 withMilestones:0];

      if (v69 >= 2)
      {
        v74[0] = MEMORY[0x277D85DD0];
        v74[1] = 3221225472;
        v74[2] = __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6;
        v74[3] = &unk_2783B01E8;
        v59 = *(a1 + 72);
        v74[4] = *(a1 + 32);
        v74[5] = v82;
        v74[6] = v59;
        v60 = [v38 copyWithBlock:v74];

        [v7 setIndicatorElementDescription:v60];
        v61 = [SBSAInterfaceElementPropertyIdentity alloc];
        v62 = [*(a1 + 40) interfaceElementIdentifier];
        v63 = [(SBSAInterfaceElementPropertyIdentity *)v61 initWithAssociatedInterfaceElementIdentifier:v62 andProperty:@"bounds"];
        v64 = [SBSAInterfaceElementPropertyIdentity alloc];
        v65 = [v60 interfaceElementIdentifier];
        v66 = [(SBSAInterfaceElementPropertyIdentity *)v64 initWithAssociatedInterfaceElementIdentifier:v65 andProperty:@"indicatorViewTransform"];
        [v7 associateAnimatedTransitionDescriptionOfProperty:v63 withProperty:v66 withMilestones:0];

        v38 = v60;
      }

      _Block_object_dispose(v82, 8);
      v36 = v70;
      v40 = v67;
      v3 = v68;
    }
  }
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5_cold_1();
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6(uint64_t a1, void *a2)
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6_cold_1();
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v3 = objc_opt_self();
    v4 = objc_opt_self();
    v5 = v8;
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
      __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v7 setContainerViewDescriptions:*(a1 + 40)];
  [v7 setElementDescriptions:*(a1 + 48)];
}

- (id)_identitiesWithMilestoneReached:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_opt_class() settings];
  [v5 expansionToCompactBeginInflationProgress];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self;
  v6 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities keyEnumerator];
  v7 = [v6 allObjects];

  obj = v7;
  v24 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v24)
  {
    v22 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v10 = [(NSMapTable *)v23->_pendingMilestonePropertyIdentitiesToElementIdentities objectForKey:v9];
        if (v10)
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v11 = [v25 animatedTransitionResults];
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
          if (!v12)
          {
            goto LABEL_21;
          }

          v13 = v12;
          v14 = *v27;
          while (1)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v27 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v26 + 1) + 8 * j);
              v17 = [v16 associatedInterfaceElementPropertyIdentity];
              if (BSEqualObjects())
              {
                [v16 targetedMilestone];
                if (BSFloatApproximatelyEqualToFloat())
                {
                }

                else
                {
                  v18 = [v16 finished];

                  if ((v18 & 1) == 0)
                  {
                    continue;
                  }
                }

                [v4 addObject:v10];
                v17 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
                {
                  v19 = [v25 queryIteration];
                  *buf = 134349314;
                  v35 = v19;
                  v36 = 2112;
                  v37 = v9;
                  _os_log_debug_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Reached milestone for expansion'%@'", buf, 0x16u);
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v26 objects:v38 count:16];
            if (!v13)
            {
LABEL_21:

              break;
            }
          }
        }
      }

      v24 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v24);
  }

  return v4;
}

- (void)_addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities:(id)a3 preferencesMutator:(id)a4 context:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v36 = a4;
  v37 = a5;
  v9 = MEMORY[0x277CBEB98];
  v10 = [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities objectEnumerator];
  v11 = [v10 allObjects];
  v12 = [v9 setWithArray:v11];

  v34 = v8;
  v13 = [v8 mutableCopy];
  v33 = v12;
  [v13 minusSet:v12];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v39 + 1) + 8 * v17);
        v19 = [v37 preferences];
        v20 = [v19 containerViewDescriptions];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __150__SBSAContainerDynamicsInflateAnimationProvider__addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities_preferencesMutator_context___block_invoke;
        v38[3] = &unk_2783B0210;
        v38[4] = v18;
        v21 = [v20 bs_firstObjectPassingTest:v38];

        v22 = [SBSAInterfaceElementPropertyIdentity alloc];
        v23 = [v21 interfaceElementIdentifier];
        v24 = [(SBSAInterfaceElementPropertyIdentity *)v22 initWithAssociatedInterfaceElementIdentifier:v23 andProperty:@"bounds"];

        v25 = [objc_opt_class() settings];
        [v25 expansionToCompactBeginInflationProgress];
        v27 = v26;

        v28 = MEMORY[0x277CBEB98];
        v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
        v30 = [v28 setWithObject:v29];
        [v36 addMilestones:v30 forPropertyIdentity:v24];

        [(NSMapTable *)self->_pendingMilestonePropertyIdentitiesToElementIdentities setObject:v18 forKey:v24];
        v31 = SBLogSystemAperturePreferencesStackDynamicsAnimations();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v32 = [v37 queryIteration];
          *buf = 134349314;
          v44 = v32;
          v45 = 2112;
          v46 = v24;
          _os_log_debug_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEBUG, "[%{public}lu] [Inflate] Adding milestone for expansion'%@'", buf, 0x16u);
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v15);
  }
}

uint64_t __150__SBSAContainerDynamicsInflateAnimationProvider__addMilestonesIfNecessaryForUntrackedBoundsExpansionsForElementIdentities_preferencesMutator_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_5_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_6_cold_1()
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

void __72__SBSAContainerDynamicsInflateAnimationProvider_preferencesFromContext___block_invoke_52_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsapreference_1.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end