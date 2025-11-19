@interface SBSALayoutTransitionProvider
- (NSString)description;
- (id)_adjunctElementIdentificationInContext:(id)a3;
- (id)_elementLayoutModeSupportingChildProvider;
- (id)_layoutProviderForLayoutMode:(int64_t)a3;
- (id)preferencesFromContext:(id)a3;
- (void)_removeChildMitosisAndRecombinationProviders;
- (void)removeFromParentProvider;
@end

@implementation SBSALayoutTransitionProvider

- (void)removeFromParentProvider
{
  [(SBSALayoutTransitionProvider *)self _removeChildMitosisAndRecombinationProviders];
  v3.receiver = self;
  v3.super_class = SBSALayoutTransitionProvider;
  [(SBSABasePreferencesProvider *)&v3 removeFromParentProvider];
}

- (void)_removeChildMitosisAndRecombinationProviders
{
  [(SBSABasePreferencesProvider *)self->_childMitosisProvider removeFromParentProvider];
  childMitosisProvider = self->_childMitosisProvider;
  self->_childMitosisProvider = 0;

  [(SBSABasePreferencesProvider *)self->_childRecombinationProvider removeFromParentProvider];
  childRecombinationProvider = self->_childRecombinationProvider;
  self->_childRecombinationProvider = 0;

  [(SBSABasePreferencesProvider *)self->_childPopProvider removeFromParentProvider];
  childPopProvider = self->_childPopProvider;
  self->_childPopProvider = 0;
}

- (NSString)description
{
  v3 = [(SBSALayoutTransitionProvider *)self isInitialized];
  v4 = objc_alloc(MEMORY[0x277CCAB68]);
  v5 = objc_opt_class();
  v6 = NSStringFromBOOL();
  v7 = [v4 initWithFormat:@"<%@: %p; initialized: %@", v5, self, v6];

  if (v3)
  {
    [(SBSALayoutTransitionProvider *)self previousElementLayoutMode];
    v8 = SAUIStringFromElementViewLayoutMode();
    [(SBSALayoutTransitionProvider *)self targetElementLayoutMode];
    v9 = SAUIStringFromElementViewLayoutMode();
    [v7 appendFormat:@"; previousElementLayoutMode: %@; targetElementLayoutMode: %@", v8, v9];
  }

  [v7 appendString:@">"];

  return v7;
}

- (id)preferencesFromContext:(id)a3
{
  v114 = *MEMORY[0x277D85DE8];
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

  v10 = objc_opt_self();
  v11 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v10];

  v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
  if (!v9)
  {
LABEL_74:
    v68 = 0;
    goto LABEL_75;
  }

  targetLayoutProvider = self->_targetLayoutProvider;
  v101 = a2;
  if (!targetLayoutProvider)
  {
    v14 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:v9];
    }

    [(SBSABasePreferencesProvider *)v11 removeFromParentProvider];
    v15 = [v9 elementContexts];
    v16 = [v15 bs_filter:&__block_literal_global_179];

    v17 = [v16 firstObject];
    v18 = [v17 layoutMode];
    if (v18 == 3)
    {
      if ([v17 systemApertureCustomLayout] == 5)
      {
        if ([v16 count] > 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }
      }

      else
      {
        v18 = 3;
      }
    }

    v19 = [(SBSALayoutTransitionProvider *)self _layoutProviderForLayoutMode:v18];
    v20 = self->_targetLayoutProvider;
    self->_targetLayoutProvider = v19;

    v21 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    v22 = [(SBSALayoutTransitionProvider *)self _elementLayoutModeSupportingChildProvider];
    previousLayoutProvider = self->_previousLayoutProvider;
    self->_previousLayoutProvider = v22;
    v24 = v22;

    v25 = [v9 preferences];
    self->_awaitingCollision = [v25 isCollisionImminent];

    v26 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    [(SBSAElementLayoutModeSupporting *)v24 removeFromParentProvider];
    v27 = [v9 preferences];
    v28 = [v27 lastChangingElementLayoutTransition];
    v29 = [SBSAElementContentProvider disappearanceTransitionElementContentProviderWithParentProvider:self staticLayoutTransition:v28];

    targetLayoutProvider = self->_targetLayoutProvider;
    v11 = v29;
    v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
  }

  v30 = [(SBSAElementLayoutModeSupporting *)targetLayoutProvider parentProvider];
  v31 = v30 != 0;

  if (v30)
  {
    if (![v9 containsAnyOfSignals:2])
    {
      v31 = 0;
      goto LABEL_52;
    }

    v32 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    v33 = v11;
    goto LABEL_50;
  }

  v34 = SBLogSystemAperturePreferencesStackElements();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    [SBSALayoutTransitionProvider preferencesFromContext:];
  }

  v99 = v30 != 0;
  v35 = self->_awaitingCollision && ([v9 signals] & 1) == 0;
  self->_awaitingCollision = v35;
  v36 = [v9 preferences];
  v37 = [v36 elementLayoutTransition];
  v38 = [v37 isSingleElementExpansion];

  if (!self->_awaitingCollision && ((self->_initialized | v38) & 1) != 0)
  {
    v39 = SBLogSystemAperturePreferencesStackElements();
    v97 = v38;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      v88 = [v9 queryIteration];
      v89 = NSStringFromBOOL();
      v90 = NSStringFromBOOL();
      v91 = NSStringFromBOOL();
      *buf = 134349826;
      v105 = v88;
      v106 = 2112;
      v107 = v89;
      v108 = 2112;
      v109 = v90;
      v110 = 2112;
      v111 = v91;
      _os_log_debug_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEBUG, "[%{public}lu] awaitingCollision: %@; initialized: %@; isSingleElementExpansion: %@", buf, 0x2Au);
    }

    [(SBSABasePreferencesProvider *)v11 removeFromParentProvider];
    if (v38)
    {
      [(SBSABasePreferencesProvider *)self->_childRecombinationProvider removeFromParentProvider];
      childRecombinationProvider = self->_childRecombinationProvider;
      self->_childRecombinationProvider = 0;
    }

    v32 = [(SBSALayoutTransitionProvider *)self _elementLayoutModeSupportingChildProvider];
    [v32 removeFromParentProvider];
    childMitosisProvider = self->_childMitosisProvider;
    if (!childMitosisProvider)
    {
      childMitosisProvider = self->_childRecombinationProvider;
      if (!childMitosisProvider)
      {
        childMitosisProvider = self;
      }
    }

    v95 = childMitosisProvider;
    [v95 setChildProvider:self->_targetLayoutProvider];
    v42 = self->_targetLayoutProvider;
    v43 = [v9 preferences];
    v44 = [v43 lastChangingElementLayoutTransition];
    v33 = [SBSAElementContentProvider appearanceTransitionElementContentProviderWithParentProvider:v42 staticLayoutTransition:v44];

    v31 = v99;
    if (v97)
    {
      if ([(SBSAElementLayoutModeSupporting *)self->_targetLayoutProvider supportedElementLayoutMode]== 3)
      {
        v45 = [v9 elementInteractionResults];
        v46 = [v45 bs_containsObjectPassingTest:&__block_literal_global_13];

        if (v46)
        {
          v47 = [(SBSABasePreferencesProvider *)[SBSAPopTransitionProvider alloc] initWithParentProvider:self];
          childPopProvider = self->_childPopProvider;
          self->_childPopProvider = v47;

          v49 = SBLogSystemAperturePreferencesStackElements();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [SBSALayoutTransitionProvider preferencesFromContext:];
          }
        }
      }
    }

    v50 = SBLogSystemAperturePreferencesStackElements();
    v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      v92 = [v9 queryIteration];
      v93 = self->_targetLayoutProvider;
      *buf = 134350082;
      v105 = v92;
      v106 = 2112;
      v107 = v33;
      v108 = 2112;
      v109 = v32;
      v110 = 2112;
      v111 = v93;
      v112 = 2112;
      v113 = v33;
      _os_log_debug_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEBUG, "[%{public}lu] Removed content provider '%@', removed layout provider '%@', inserted layout provider '%@', added content provider '%@'", buf, 0x34u);
    }

LABEL_50:
    v11 = v33;
    goto LABEL_52;
  }

  v31 = 0;
LABEL_52:
  if (self->_transitionKind)
  {
    goto LABEL_63;
  }

  v51 = [v9 preferences];
  v52 = [v51 isCollisionImminent];

  v53 = [(SBSALayoutTransitionProvider *)self targetElementLayoutMode];
  if (!v52)
  {
    if (v53 == 1)
    {
      v57 = [v9 preferences];
      v58 = [v57 elementLayoutTransition];
      v59 = [v58 targetElementContexts];
      if ([v59 count] >= 2)
      {

LABEL_62:
        self->_transitionKind = 2;
        v62 = [SBSAMitosisTransitionProvider alloc];
        v63 = [(SBSALayoutTransitionProvider *)self _adjunctElementIdentificationInContext:v9];
        v64 = [(SBSASequencedBehaviorProvider *)v62 initWithParticipantIdentifier:v63];
        v65 = self->_childMitosisProvider;
        self->_childMitosisProvider = v64;

        [(SBSABasePreferencesProvider *)self setChildProvider:self->_childMitosisProvider];
LABEL_63:
        if (!v31)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      v98 = [v9 preferences];
      v94 = [v98 elementLayoutTransition];
      v60 = [v94 targetElementContexts];
      [v60 firstObject];
      v61 = v100 = v57;
      v96 = [v61 interfaceOrientation] - 3;

      v12 = &OBJC_IVAR___SBAlwaysOnTelemetryEmitter__mq_deferredLoggingTimer;
      if (v96 < 2)
      {
        goto LABEL_62;
      }
    }

    self->_transitionKind = 1;
    if (!v31)
    {
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  v54 = 3;
  if (v53 == 1)
  {
    v54 = 4;
  }

  self->_transitionKind = v54;
  v55 = [(SBSABasePreferencesProvider *)[SBSARecombinationTransitionProvider alloc] initWithParentProvider:self];
  v56 = self->_childRecombinationProvider;
  self->_childRecombinationProvider = v55;

  if (!v31)
  {
LABEL_68:
    if (self->_transitionKind == 4 && !self->_awaitingCollision)
    {
      v69 = self->_childRecombinationProvider;
      if (v69)
      {
        [(SBSABasePreferencesProvider *)v69 removeFromParentProvider];
        v70 = self->_childRecombinationProvider;
        self->_childRecombinationProvider = 0;

        v71 = [SBSAMitosisTransitionProvider alloc];
        v72 = [(SBSALayoutTransitionProvider *)self _adjunctElementIdentificationInContext:v9];
        v73 = [(SBSASequencedBehaviorProvider *)v71 initWithParticipantIdentifier:v72];
        v74 = self->_childMitosisProvider;
        self->_childMitosisProvider = v73;

        [(SBSABasePreferencesProvider *)self setChildProvider:self->_childMitosisProvider];
      }
    }

    v75 = [objc_opt_class() settings];
    v76 = [v75 highlightTransitions];

    if (v76)
    {
      v77 = [v9 preferences];
      v103[0] = MEMORY[0x277D85DD0];
      v103[1] = 3221225472;
      v103[2] = __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17;
      v103[3] = &unk_2783A93E8;
      v103[4] = self;
      v103[5] = v101;
      v78 = [v77 copyWithBlock:v103];
      v79 = [v9 copyByUpdatingPreferences:v78];

      v68 = 0;
      v9 = v79;
      goto LABEL_75;
    }

    goto LABEL_74;
  }

LABEL_64:
  [(SBSALayoutTransitionProvider *)self _removeChildMitosisAndRecombinationProviders];
  v66 = v11;
  [(SBSABasePreferencesProvider *)v66 removeFromParentProvider];
  v11 = [[SBSAElementContentProvider alloc] initWithParentProvider:self->_targetLayoutProvider];

  v67 = SBLogSystemAperturePreferencesStackElements();
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    v87 = [v9 queryIteration];
    *buf = 134349570;
    v105 = v87;
    v106 = 2112;
    v107 = v66;
    v108 = 2112;
    v109 = v11;
    _os_log_debug_impl(&dword_21ED4E000, v67, OS_LOG_TYPE_DEBUG, "[%{public}lu] Transition complete – removed appearance content provider '%@', added steady state content provider '%@'", buf, 0x20u);
  }

  v68 = 1;
LABEL_75:
  *(&self->super.super.isa + v12[963]) = 1;
  v102.receiver = self;
  v102.super_class = SBSALayoutTransitionProvider;
  v80 = [(SBSABasePreferencesProvider *)&v102 preferencesFromContext:v9];
  v81 = objc_opt_class();
  v82 = v80;
  if (v81)
  {
    if (objc_opt_isKindOfClass())
    {
      v83 = v82;
    }

    else
    {
      v83 = 0;
    }
  }

  else
  {
    v83 = 0;
  }

  v84 = v83;

  if (v68)
  {
    v85 = SBLogSystemAperturePreferencesStackElements();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      [SBSALayoutTransitionProvider preferencesFromContext:];
    }

    [(SBSALayoutTransitionProvider *)self removeFromParentProvider];
  }

  return v84;
}

BOOL __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 interactionSource] == 2 && objc_msgSend(v2, "viewInteractionResult") == 1;

  return v3;
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17(uint64_t a1, void *a2)
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
      __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17_cold_1(a1);
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
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2;
      v14[3] = &unk_2783AD750;
      v12 = *(a1 + 32);
      v16 = *(a1 + 40);
      v14[4] = v12;
      v15 = v7;
      v13 = [v11 copyWithBlock:v14];
      [v9 replaceObjectAtIndex:v10 withObject:v13];

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  [v7 setContainerViewDescriptions:v9];
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v3 = objc_opt_self();
    v4 = v14;
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
      __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D75348] systemBlueColor];
  v8 = [v7 colorWithAlphaComponent:0.5];
  [v6 setBackgroundColor:v8];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"backgroundColor"];
  v11 = [SBSAInterfaceElementPropertyIdentity alloc];
  v12 = [v6 interfaceElementIdentifier];
  v13 = [(SBSAInterfaceElementPropertyIdentity *)v11 initWithAssociatedInterfaceElementIdentifier:v12 andProperty:@"backgroundColor"];
  [v9 setAnimatedTransitionDescription:v10 forProperty:v13 withMilestones:0];
}

- (id)_layoutProviderForLayoutMode:(int64_t)a3
{
  if (a3 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = [[SBSALayoutModeLayoutProvider alloc] initWithLayoutMode:a3];
  }

  return v4;
}

- (id)_elementLayoutModeSupportingChildProvider
{
  v3 = objc_opt_self();
  v4 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:v3];

  return v4;
}

- (id)_adjunctElementIdentificationInContext:(id)a3
{
  v3 = [a3 elementContexts];
  if ([v3 count])
  {
    v4 = 0;
    while (SBSAIsElementInCollectionSensorAttached(v4, v3))
    {
      if (++v4 >= [v3 count])
      {
        goto LABEL_5;
      }
    }

    v5 = [v3 objectAtIndex:v4];
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (void)preferencesFromContext:(void *)a1 .cold.1(void *a1)
{
  [a1 queryIteration];
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  v6 = NSStringFromBOOL();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.6()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)preferencesFromContext:.cold.7()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_17_cold_1(uint64_t a1)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v4 = a1 + 32;
  v2 = *(a1 + 32);
  v3 = *(v4 + 8);
  v5 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:v3 object:v2 file:@"SBSALayoutTransitionProvider.m" lineNumber:193 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __55__SBSALayoutTransitionProvider_preferencesFromContext___block_invoke_2_cold_1(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v7 handleFailureInMethod:v2 object:v3 file:@"SBSALayoutTransitionProvider.m" lineNumber:197 description:{@"Unexpected class – expected '%@', got '%@'", v4, v6}];
}

@end