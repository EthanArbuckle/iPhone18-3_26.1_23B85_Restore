@interface SBSAElementRemovalTransitionProvider
- (id)description;
- (id)preferencesFromContext:(id)a3;
- (void)removeFromParentProvider;
@end

@implementation SBSAElementRemovalTransitionProvider

- (void)removeFromParentProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_elementContentProvider);
  [WeakRetained removeFromParentProvider];

  objc_storeWeak(&self->_elementContentProvider, 0);
  v4.receiver = self;
  v4.super_class = SBSAElementRemovalTransitionProvider;
  [(SBSABasePreferencesProvider *)&v4 removeFromParentProvider];
}

- (id)preferencesFromContext:(id)a3
{
  v120 = *MEMORY[0x277D85DE8];
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
      [SBSAElementRemovalTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v8 = 0;
  }

  v82 = [v8 preferences];
  v9 = &OBJC_IVAR___SBAssistantSceneController__windowScene;
  v78 = v4;
  if (self->_registeredContainerDismissalInterfacePropertyIdentifiers)
  {
    if (self->_didDisappear && ![(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers count])
    {
      if (!self->_didDisappear)
      {
        [SBSAElementRemovalTransitionProvider preferencesFromContext:];
      }
    }

    else
    {
      v75 = v8;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      obj = [v8 animatedTransitionResults];
      v83 = [obj countByEnumeratingWithState:&v104 objects:v119 count:16];
      if (v83)
      {
        v80 = *v105;
        do
        {
          v10 = 0;
          do
          {
            if (*v105 != v80)
            {
              objc_enumerationMutation(obj);
            }

            v85 = v10;
            v11 = *(*(&v104 + 1) + 8 * v10);
            v100 = 0u;
            v101 = 0u;
            v102 = 0u;
            v103 = 0u;
            v12 = self->_pendingDismissalTransitionIdentifiers;
            v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v100 objects:v118 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v101;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v101 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v100 + 1) + 8 * i);
                  v18 = [v11 animatedTransitionIdentifier];
                  if ([v18 isEqual:v17])
                  {
                    v19 = [v11 isTransitionEndTargeted];

                    if (v19)
                    {
                      [(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers removeObject:v17];
                    }
                  }

                  else
                  {
                  }
                }

                v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v100 objects:v118 count:16];
              }

              while (v14);
            }

            v10 = v85 + 1;
          }

          while (v85 + 1 != v83);
          v83 = [obj countByEnumeratingWithState:&v104 objects:v119 count:16];
        }

        while (v83);
      }

      v20 = [(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers copy];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v86 = v20;
      v21 = [v86 countByEnumeratingWithState:&v96 objects:v117 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v97;
        do
        {
          for (j = 0; j != v22; ++j)
          {
            if (*v97 != v23)
            {
              objc_enumerationMutation(v86);
            }

            v25 = *(*(&v96 + 1) + 8 * j);
            v26 = [v82 containerViewDescriptions];
            v95[0] = MEMORY[0x277D85DD0];
            v95[1] = 3221225472;
            v95[2] = __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke;
            v95[3] = &unk_2783B0210;
            v95[4] = v25;
            v27 = [v26 bs_containsObjectPassingTest:v95];

            if ((v27 & 1) == 0)
            {
              [(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers removeObject:v25];
            }
          }

          v22 = [v86 countByEnumeratingWithState:&v96 objects:v117 count:16];
        }

        while (v22);
      }

      v8 = v75;
      v28 = [v75 containsAnyOfSignals:3];
      v29 = [(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers count];
      v30 = v29;
      v9 = &OBJC_IVAR___SBAssistantSceneController__windowScene;
      if ((v28 & 1) != 0 || !v29)
      {
        v31 = SBLogSystemAperturePreferencesStackElements();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v68 = v30 == 0;
          v69 = [v75 queryIteration];
          v70 = [(SBSAElementRemovalTransitionProvider *)self description];
          *buf = 134349826;
          v110 = v69;
          v111 = 1024;
          v112 = v28;
          v113 = 1024;
          v114 = v68;
          v115 = 2112;
          v116 = v70;
          _os_log_debug_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEBUG, "[%{public}lu] Did reach collision threshold or steady state: %{BOOL}u or all containers finished animating: %{BOOL}u. Removing the disappearing element content provider: %@", buf, 0x22u);
        }

        WeakRetained = objc_loadWeakRetained(&self->_elementContentProvider);
        [WeakRetained removeFromParentProvider];

        objc_storeWeak(&self->_elementContentProvider, 0);
        self->_didDisappear = 1;
      }
    }
  }

  v33 = v9[384];
  v34 = objc_loadWeakRetained((&self->super.super.isa + v33));
  v35 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];
  v36 = v35;
  if (self->_didDisappear)
  {
    if (v34)
    {
      v37 = SBLogSystemAperturePreferencesStackElements();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(SBSAElementRemovalTransitionProvider *)v8 preferencesFromContext:v34, v37];
      }
    }
  }

  else if (v34)
  {
    v38 = [v35 childProvider];
    v39 = [v38 firstChildPreferenceProviderOfClass:objc_opt_class()];

    if (v34 != v36 || v39)
    {
      v71 = [MEMORY[0x277CCA890] currentHandler];
      v72 = [v39 description];
      v73 = v72;
      v74 = @"nil";
      if (v72)
      {
        v74 = v72;
      }

      [v71 handleFailureInMethod:a2 object:self file:@"SBSAElementRemovalTransitionProvider.m" lineNumber:74 description:{@"There is another element content provider that this provider didn't know about. %@; other: %@; ours: %@", v36, v74, v34}];
    }
  }

  else
  {
    v40 = [v8 preferences];
    [v40 lastChangingElementLayoutTransition];
    v42 = v41 = v36;
    v34 = [SBSAElementContentProvider disappearanceTransitionElementContentProviderWithParentProvider:self staticLayoutTransition:v42];

    v36 = v41;
    objc_storeWeak((&self->super.super.isa + v33), v34);
  }

  v43 = [v8 copyByUpdatingPreferences:v82];

  v94.receiver = self;
  v94.super_class = SBSAElementRemovalTransitionProvider;
  v44 = [(SBSABasePreferencesProvider *)&v94 preferencesFromContext:v43];
  v84 = v43;
  if (v44)
  {
    v45 = objc_opt_self();
    v46 = v44;
    if (v45)
    {
      if (objc_opt_isKindOfClass())
      {
        v47 = v46;
      }

      else
      {
        v47 = 0;
      }
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;

    if (!v48)
    {
      [SBSAElementRemovalTransitionProvider preferencesFromContext:];
    }
  }

  else
  {
    v48 = 0;
  }

  if (self->_pendingDismissalTransitionIdentifiers)
  {
    v81 = v34;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v76 = v48;
    v87 = [v48 containerViewDescriptions];
    v49 = [v87 countByEnumeratingWithState:&v89 objects:v108 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v90;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v90 != v51)
          {
            objc_enumerationMutation(v87);
          }

          v53 = *(*(&v89 + 1) + 8 * k);
          registeredContainerDismissalInterfacePropertyIdentifiers = self->_registeredContainerDismissalInterfacePropertyIdentifiers;
          v55 = [SBSAInterfaceElementPropertyIdentity alloc];
          v56 = [v53 interfaceElementIdentifier];
          v57 = [(SBSAInterfaceElementPropertyIdentity *)v55 initWithAssociatedInterfaceElementIdentifier:v56 andProperty:@"bounds"];
          LOBYTE(registeredContainerDismissalInterfacePropertyIdentifiers) = [(NSMutableSet *)registeredContainerDismissalInterfacePropertyIdentifiers containsObject:v57];

          if ((registeredContainerDismissalInterfacePropertyIdentifiers & 1) == 0)
          {
            [SBSAElementRemovalTransitionProvider preferencesFromContext:];
          }
        }

        v50 = [v87 countByEnumeratingWithState:&v89 objects:v108 count:16];
      }

      while (v50);
    }

    v58 = v78;
    v34 = v81;
    v48 = v76;
  }

  else
  {
    v58 = v78;
    if (!self->_didDisappear)
    {
      v59 = [MEMORY[0x277CBEB58] set];
      pendingDismissalTransitionIdentifiers = self->_pendingDismissalTransitionIdentifiers;
      self->_pendingDismissalTransitionIdentifiers = v59;

      v61 = [MEMORY[0x277CBEB58] set];
      v62 = self->_registeredContainerDismissalInterfacePropertyIdentifiers;
      self->_registeredContainerDismissalInterfacePropertyIdentifiers = v61;

      v93[0] = MEMORY[0x277D85DD0];
      v93[1] = 3221225472;
      v93[2] = __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_26;
      v93[3] = &unk_2783A93E8;
      v93[4] = self;
      v93[5] = a2;
      v63 = [v48 copyWithBlock:v93];

      v48 = v63;
    }
  }

  v64 = [objc_opt_class() settings];
  if ([v64 highlightTransitions])
  {
    didDisappear = self->_didDisappear;

    if (!didDisappear)
    {
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_2;
      v88[3] = &unk_2783A93E8;
      v88[4] = self;
      v88[5] = a2;
      v66 = [v48 copyWithBlock:v88];

      v48 = v66;
    }
  }

  else
  {
  }

  return v48;
}

uint64_t __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 interfaceElementIdentifier];
  v4 = [*(a1 + 32) interfaceElementProperty];
  v5 = [v3 isEqual:v4];

  return v5;
}

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_26(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
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
      __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_26_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v3;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [v7 containerViewDescriptions];
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [SBSAInterfaceElementPropertyIdentity alloc];
        v14 = [v12 interfaceElementIdentifier];
        v15 = [(SBSAInterfaceElementPropertyIdentity *)v13 initWithAssociatedInterfaceElementIdentifier:v14 andProperty:@"bounds"];

        [*(*(a1 + 32) + 48) addObject:v15];
        [*(*(a1 + 32) + 40) addObject:v15];
        v16 = [MEMORY[0x277CBEB98] setWithObject:0x28336F620];
        [v7 addMilestones:v16 forPropertyIdentity:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_2_cold_1();
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
      v14[2] = __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_3;
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

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277D75348] systemGreenColor];
  v8 = [v7 colorWithAlphaComponent:0.5];
  [v6 setBackgroundColor:v8];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"backgroundColor"];
  v11 = [SBSAInterfaceElementPropertyIdentity alloc];
  v12 = [v6 interfaceElementIdentifier];
  v13 = [(SBSAInterfaceElementPropertyIdentity *)v11 initWithAssociatedInterfaceElementIdentifier:v12 andProperty:@"backgroundColor"];
  [v9 setAnimatedTransitionDescription:v10 forProperty:v13 withMilestones:0];
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromBOOL();
  WeakRetained = objc_loadWeakRetained(&self->_elementContentProvider);
  v7 = [WeakRetained description];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = [(NSMutableSet *)self->_pendingDismissalTransitionIdentifiers description];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"nil";
  }

  v13 = [(NSMutableSet *)self->_registeredContainerDismissalInterfacePropertyIdentifiers description];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"nil";
  }

  v16 = [v18 stringWithFormat:@"<%@: %p didDisappear: %@; elementContentProvider: %@; pendingDismissalTransitionIdentifiers: %@; registeredContainerDismissalInterfacePropertyIdentifiers: %@;>", v4, self, v5, v9, v12, v15];;

  return v16;
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSAElementRemovalTransitionProvider.m" lineNumber:36 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAElementRemovalTransitionProvider.m" lineNumber:66 description:{@"There are no more pending dismissal identifiers, but the provider has not transitioned to disappeared."}];
}

- (void)preferencesFromContext:(NSObject *)a3 .cold.3(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 134349314;
  v6 = [a1 queryIteration];
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "[%{public}lu] This provider has already transitioned to a disappeared state, but there is an unexpected element content provider in the stack: %@", &v5, 0x16u);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 handleFailureInMethod:v1 object:v0 file:@"SBSAElementRemovalTransitionProvider.m" lineNumber:83 description:{@"Unexpected class – expected '%@', got '%@'", v3, v5}];
}

- (void)preferencesFromContext:.cold.5()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSAElementRemovalTransitionProvider.m" lineNumber:102 description:{@"Could not find registered milestone for: %@", v0}];
}

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_26_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __63__SBSAElementRemovalTransitionProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end