@interface SBSAKeyLinePreferencesProvider
- (id)behaviorSettingsForProperty:(id)a3;
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAKeyLinePreferencesProvider

- (id)behaviorSettingsForProperty:(id)a3
{
  v4 = a3;
  if ((BSEqualStrings() & 1) != 0 || BSEqualStrings())
  {
    v5 = [objc_opt_class() settings];
    v6 = [v5 keyLineStyleTransition];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBSAKeyLinePreferencesProvider;
    v6 = [(SBSABasePreferencesProvider *)&v8 behaviorSettingsForProperty:v4];
  }

  return v6;
}

- (id)preferencesFromContext:(id)a3
{
  v175 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_opt_self();
    v6 = v4;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (!v8)
    {
      [(SBSAKeyLinePreferencesProvider *)v6 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 preferences];
  v10 = objc_opt_class();
  v11 = v9;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v122 = v12;

  v13 = [v8 elementContexts];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v15 = v13;
  v16 = [v15 countByEnumeratingWithState:&v162 objects:v174 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v163;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v163 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v162 + 1) + 8 * i);
        v21 = [v20 elementIdentifier];
        v22 = [v20 keyColor];
        if (v22)
        {
          [v14 setObject:v22 forKey:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v162 objects:v174 count:16];
    }

    while (v17);
  }

  v23 = [v122 isBlobEnabled];
  v24 = [v8 containsAnyOfSignals:1];
  v25 = [v8 preferences];
  v26 = [v25 lastChangingElementLayoutTransition];

  v118 = v26;
  v119 = v4;
  if (BSEqualObjects())
  {
    v27 = 0;
  }

  else
  {
    objc_storeStrong(&self->_lastChangingElementLayoutTransition, v26);
    v28 = [v26 initialElementContexts];
    if ([v28 count] > 1)
    {
      v27 = 0;
    }

    else
    {
      v29 = [v26 targetElementContexts];
      v27 = [v29 count] == 2;
    }
  }

  mitosisSuppressionState = self->_mitosisSuppressionState;
  v124 = self;
  v125 = v8;
  v121 = v14;
  v128 = v15;
  if (!v23)
  {
    if (mitosisSuppressionState == 2)
    {
      v49 = SBLogSystemApertureController();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v49, OS_LOG_TYPE_DEFAULT, "Key Line: Mitosis restoration milestone not hit! Falling back to visible.", buf, 2u);
      }
    }

    v31 = 0;
    pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
    self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = 0;
    goto LABEL_60;
  }

  if (mitosisSuppressionState <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = self->_mitosisSuppressionState;
  }

  if ((v24 | v27))
  {
    v32 = !mitosisSuppressionState && v27;
    if (mitosisSuppressionState == 1 || v32)
    {
      v33 = [v122 containerViewDescriptions];
      v34 = [v33 lastObject];
      v35 = [v34 interfaceElementIdentifier];

      v36 = [[SBSAInterfaceElementPropertyIdentity alloc] initWithAssociatedInterfaceElementIdentifier:v35 andProperty:@"bounds"];
      v37 = self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
      self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = v36;

      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke;
      v161[3] = &unk_2783A93E8;
      v161[5] = a2;
      v161[4] = self;
      v38 = [v122 copyWithBlock:v161];

      mitosisSuppressionState = self->_mitosisSuppressionState;
      v31 = 2;
      v122 = v38;
    }
  }

  if (mitosisSuppressionState == 2 && self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity)
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = [v8 animatedTransitionResults];
    v40 = [pendingMitosisKeyLineSuppressionUnhidePropertyIdentity countByEnumeratingWithState:&v157 objects:v173 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v158;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v158 != v42)
          {
            objc_enumerationMutation(pendingMitosisKeyLineSuppressionUnhidePropertyIdentity);
          }

          v44 = *(*(&v157 + 1) + 8 * j);
          v45 = [v44 associatedInterfaceElementPropertyIdentity];
          v46 = [v45 isEqual:self->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity];

          if (v46)
          {
            [v44 targetedMilestone];
            self = v124;
            if (v47 >= 0.7)
            {
              v48 = v124->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity;
              v124->_pendingMitosisKeyLineSuppressionUnhidePropertyIdentity = 0;

              v31 = 3;
            }
          }

          else
          {
            self = v124;
          }
        }

        v41 = [pendingMitosisKeyLineSuppressionUnhidePropertyIdentity countByEnumeratingWithState:&v157 objects:v173 count:16];
      }

      while (v41);
    }

LABEL_60:
  }

  if (v31 != self->_mitosisSuppressionState)
  {
    v50 = SBLogSystemApertureController();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = self->_mitosisSuppressionState - 1;
      if (v51 > 2)
      {
        v52 = @"idle";
      }

      else
      {
        v52 = off_2783AE088[v51];
      }

      if ((v31 - 1) > 2)
      {
        v53 = @"idle";
      }

      else
      {
        v53 = off_2783AE088[v31 - 1];
      }

      *buf = 138543618;
      v170 = v52;
      v171 = 2114;
      v172 = v53;
      _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "Key Line: Updating mitosis suppression state: (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    self->_mitosisSuppressionState = v31;
  }

  v129 = [MEMORY[0x277CBEB38] dictionary];
  v54 = self->_mitosisSuppressionState;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v55 = [v122 containerViewDescriptions];
  v56 = [v55 countByEnumeratingWithState:&v153 objects:v168 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = v54 - 3;
    v59 = *v154;
    do
    {
      for (k = 0; k != v57; ++k)
      {
        if (*v154 != v59)
        {
          objc_enumerationMutation(v55);
        }

        v61 = *(*(&v153 + 1) + 8 * k);
        v62 = [v61 associatedSystemApertureElementIdentity];
        v63 = [v62 elementIdentifier];

        v64 = SBSAElementContextAssociatedWithContainerViewDescription(v61, v128, 0);
        if (v64)
        {
          [v61 bounds];
          [v61 center];
          SBUnintegralizedRectCenteredAboutPoint();
          [v8 inertContainerFrame];
          v65 = [MEMORY[0x277CCABB0] numberWithInteger:{(v58 < 0xFFFFFFFFFFFFFFFELL) & (SBSARectApproximatelyEqualToRect() ^ 1), 0x3F847AE147AE147BLL}];
          [v129 setObject:v65 forKey:v63];
        }
      }

      v57 = [v55 countByEnumeratingWithState:&v153 objects:v168 count:16];
    }

    while (v57);
  }

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  obj = [v8 containerViewDescriptions];
  v66 = [obj countByEnumeratingWithState:&v149 objects:v167 count:16];
  if (v66)
  {
    v67 = v66;
    v68 = 0;
    v69 = *v150;
    v127 = 2;
    do
    {
      v70 = 0;
      v123 = v68;
      v71 = -v68;
      do
      {
        if (*v150 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v149 + 1) + 8 * v70);
        v73 = [v72 associatedSystemApertureElementIdentity];
        v74 = [v73 elementIdentifier];

        if (v71 == v70)
        {
          v75 = [v125 isKeyLineRequiredForTransition];
        }

        else
        {
          v75 = 0;
        }

        v76 = [v129 objectForKey:v74];
        v77 = [v76 isEqualToNumber:&unk_283370310];

        if (v77)
        {
          v78 = v75 == 0;
        }

        else
        {
          v78 = 0;
        }

        if (!v78)
        {
          v79 = [v72 sampledBackgroundLuminanceLevel];
          v80 = v127;
          if (v79 == 1)
          {
            v80 = 1;
          }

          v127 = v80;
        }

        ++v70;
      }

      while (v67 != v70);
      v68 = v123 + v67;
      v67 = [obj countByEnumeratingWithState:&v149 objects:v167 count:16];
    }

    while (v67);
  }

  else
  {
    v127 = 2;
  }

  v81 = v128;
  if (v124->_lastKnownConsensusBackgroundLuma != v127)
  {
    v82 = SBLogSystemApertureController();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v83 = SBStringFromSystemApertureBackgroundLuminanceLevel(v124->_lastKnownConsensusBackgroundLuma);
      v84 = SBStringFromSystemApertureBackgroundLuminanceLevel(v127);
      *buf = 138543618;
      v170 = v83;
      v171 = 2114;
      v172 = v84;
      _os_log_impl(&dword_21ED4E000, v82, OS_LOG_TYPE_DEFAULT, "Key Line: Updating consensus background luma (%{public}@) -> (%{public}@)", buf, 0x16u);
    }

    v124->_lastKnownConsensusBackgroundLuma = v127;
  }

  if (v127 == 2)
  {
    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v85 = [v129 copy];
    v86 = [v85 countByEnumeratingWithState:&v145 objects:v166 count:16];
    if (v86)
    {
      v87 = v86;
      v88 = *v146;
      do
      {
        for (m = 0; m != v87; ++m)
        {
          if (*v146 != v88)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v145 + 1) + 8 * m);
          v91 = [v129 objectForKey:v90];
          v92 = [v91 integerValue];

          if (v92 == 1)
          {
            [v129 setObject:&unk_283370328 forKey:v90];
          }
        }

        v87 = [v85 countByEnumeratingWithState:&v145 objects:v166 count:16];
      }

      while (v87);
    }
  }

  v93 = [v122 containerViewDescriptions];
  v94 = [v93 mutableCopy];

  if ([v128 count])
  {
    v95 = 0;
    do
    {
      v96 = [v81 objectAtIndex:v95];
      v97 = [v96 elementIdentifier];
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_30;
      v143[3] = &unk_2783AE040;
      v98 = v96;
      v144 = v98;
      v99 = [v94 indexOfObjectPassingTest:v143];
      if (v99 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v100 = v99;
        v101 = [v94 objectAtIndexedSubscript:v99];
        if (v101)
        {
          v102 = v101;
          v138[0] = MEMORY[0x277D85DD0];
          v138[1] = 3221225472;
          v138[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2;
          v138[3] = &unk_2783AE068;
          v142 = a2;
          v138[4] = v124;
          v139 = v129;
          v140 = v97;
          v141 = v121;
          v103 = [v102 copyWithBlock:v138];

          v135[0] = MEMORY[0x277D85DD0];
          v135[1] = 3221225472;
          v135[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3;
          v135[3] = &unk_2783AD750;
          v136 = v103;
          v137 = a2;
          v81 = v128;
          v135[4] = v124;
          v104 = v103;
          v105 = [v122 copyWithBlock:v135];

          [v94 replaceObjectAtIndex:v100 withObject:v104];
          v122 = v105;
        }
      }

      ++v95;
    }

    while (v95 < [v81 count]);
  }

  v106 = [v94 firstObject];
  if ([v125 isKeyLineRequiredForTransition])
  {
    v107 = v119;
    v108 = v124;
    if (![v106 keyLineMode] && v106)
    {
      v134[0] = MEMORY[0x277D85DD0];
      v134[1] = 3221225472;
      v134[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4;
      v134[3] = &unk_2783ACD90;
      v134[4] = v124;
      v134[5] = a2;
      v134[6] = v127;
      v109 = [v106 copyWithBlock:v134];

      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5;
      v131[3] = &unk_2783AD750;
      v133 = a2;
      v131[4] = v124;
      v106 = v109;
      v132 = v106;
      v110 = [v122 copyWithBlock:v131];

      [v94 replaceObjectAtIndex:0 withObject:v106];
      v122 = v110;
    }
  }

  else
  {
    v107 = v119;
    v108 = v124;
  }

  v111 = [v122 copyByUpdatingContainerViewDescriptions:v94];

  v112 = [v125 copyByUpdatingPreferences:v111];
  v130.receiver = v108;
  v130.super_class = SBSAKeyLinePreferencesProvider;
  v113 = [(SBSABasePreferencesProvider *)&v130 preferencesFromContext:v112];
  v114 = objc_opt_class();
  v115 = v113;
  if (v114)
  {
    if (objc_opt_isKindOfClass())
    {
      v114 = v115;
    }

    else
    {
      v114 = 0;
    }
  }

  v116 = v114;

  return v114;
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:&unk_28336F210];
  [v6 addMilestones:v7 forPropertyIdentity:*(*(a1 + 32) + 48)];
}

uint64_t __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_30(uint64_t a1, void *a2)
{
  v2 = [a2 associatedSystemApertureElementIdentity];
  v3 = SAElementIdentityEqualToIdentity();

  return v3;
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v10;
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

    v3 = v10;
    if (!v7)
    {
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2_cold_1();
      v3 = v10;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = [*(a1 + 40) objectForKey:*(a1 + 48)];
  [v7 setKeyLineMode:{objc_msgSend(v8, "integerValue")}];

  v9 = [*(a1 + 56) objectForKey:*(a1 + 48)];
  if (v9)
  {
    [v7 setKeyLineTintColor:v9];
  }
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = a2;
  if (v15)
  {
    v3 = objc_opt_self();
    v4 = v15;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"keyLineMode"];
  v8 = [SBSAInterfaceElementPropertyIdentity alloc];
  v9 = [*(a1 + 40) interfaceElementIdentifier];
  v10 = [(SBSAInterfaceElementPropertyIdentity *)v8 initWithAssociatedInterfaceElementIdentifier:v9 andProperty:@"keyLineMode"];
  [v6 setAnimatedTransitionDescription:v7 forProperty:v10 withMilestones:0];

  v11 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"keyLineTintColor"];
  v12 = [SBSAInterfaceElementPropertyIdentity alloc];
  v13 = [*(a1 + 40) interfaceElementIdentifier];
  v14 = [(SBSAInterfaceElementPropertyIdentity *)v12 initWithAssociatedInterfaceElementIdentifier:v13 andProperty:@"keyLineTintColor"];
  [v6 setAnimatedTransitionDescription:v11 forProperty:v14 withMilestones:0];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 48) == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setKeyLineMode:v7];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5(uint64_t a1, void *a2)
{
  v17 = a2;
  if (v17)
  {
    v3 = objc_opt_self();
    v4 = v17;
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
      __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_opt_class() settings];
  v8 = [v7 keyLineAppearForSwoopTransition];

  v9 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v8];
  v10 = [SBSAInterfaceElementPropertyIdentity alloc];
  v11 = [*(a1 + 40) interfaceElementIdentifier];
  v12 = [(SBSAInterfaceElementPropertyIdentity *)v10 initWithAssociatedInterfaceElementIdentifier:v11 andProperty:@"keyLineMode"];
  [v6 setAnimatedTransitionDescription:v9 forProperty:v12 withMilestones:0];

  v13 = [objc_opt_class() newAnimatedTransitionDescriptionWithBehaviorSettings:v8];
  v14 = [SBSAInterfaceElementPropertyIdentity alloc];
  v15 = [*(a1 + 40) interfaceElementIdentifier];
  v16 = [(SBSAInterfaceElementPropertyIdentity *)v14 initWithAssociatedInterfaceElementIdentifier:v15 andProperty:@"keyLineTintColor"];
  [v6 setAnimatedTransitionDescription:v13 forProperty:v16 withMilestones:0];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAKeyLinePreferencesProvider.m" lineNumber:54 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_4_cold_1()
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

void __57__SBSAKeyLinePreferencesProvider_preferencesFromContext___block_invoke_5_cold_1()
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

@end