@interface SBSAShadowPreferencesProvider
- (BOOL)_stretchProviderPresentInStack;
- (id)preferencesFromContext:(id)a3;
- (int64_t)_shadowStyleForContainerDescription:(id)a3 elementContext:(id)a4 useHeavyShadowForTransition:(BOOL)a5 isFirstContainer:(BOOL)a6;
- (int64_t)_shadowStyleForContainerDescription:(id)a3 indicatorElementContext:(id)a4;
@end

@implementation SBSAShadowPreferencesProvider

- (BOOL)_stretchProviderPresentInStack
{
  v2 = self;
  if (v2)
  {
    v3 = v2;
    do
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v5 = [v3 parentProvider];

      v3 = v5;
    }

    while (v5);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)preferencesFromContext:(id)a3
{
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
      [(SBSAShadowPreferencesProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__12;
  v40 = __Block_byref_object_dispose__12;
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

  v41 = v14;
  v15 = [v9 elementContexts];
  v16 = ([v9 isHeavyShadowRequiredForTransition] & 1) != 0 || -[SBSAShadowPreferencesProvider _stretchProviderPresentInStack](self, "_stretchProviderPresentInStack");
  v17 = v37[5];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke;
  v31[3] = &unk_2783AD980;
  v31[4] = self;
  v33 = &v36;
  v34 = a2;
  v18 = v15;
  v32 = v18;
  v35 = v16;
  v19 = [v17 copyWithBlock:v31];
  v20 = v37[5];
  v37[5] = v19;

  v21 = [v9 copyByUpdatingPreferences:v37[5]];
  v30.receiver = self;
  v30.super_class = SBSAShadowPreferencesProvider;
  v22 = [(SBSABasePreferencesProvider *)&v30 preferencesFromContext:v21];
  v23 = objc_opt_class();
  v24 = v22;
  if (v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = v37[5];
  v37[5] = v26;

  v28 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v28;
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v32 = v3;

  v8 = [*(*(*(a1 + 48) + 8) + 40) containerViewDescriptions];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:{v10, v32}];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_2;
      v42[3] = &unk_2783AD958;
      v45 = *(a1 + 56);
      v12 = *(a1 + 40);
      v42[4] = *(a1 + 32);
      v43 = v11;
      v13 = v12;
      v47 = *(a1 + 64);
      v44 = v13;
      v46 = v10;
      v14 = [v11 copyWithBlock:v42];
      [v9 replaceObjectAtIndex:v10 withObject:v14];
      v15 = [*(a1 + 32) newAnimatedTransitionDescriptionForProperty:@"shadowStyle"];
      v16 = [SBSAInterfaceElementPropertyIdentity alloc];
      v17 = [v14 interfaceElementIdentifier];
      v18 = [(SBSAInterfaceElementPropertyIdentity *)v16 initWithAssociatedInterfaceElementIdentifier:v17 andProperty:@"shadowStyle"];
      [v7 setAnimatedTransitionDescription:v15 forProperty:v18 withMilestones:0];

      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v19 = [*(*(*(a1 + 48) + 8) + 40) maintainedPreferences];
  v20 = [v19 indicatorAppearanceStateContext];
  v21 = [v20 activeIndicatorElementContext];

  v22 = [*(*(*(a1 + 48) + 8) + 40) containerViewDescriptions];
  v23 = [v22 lastObject];

  v24 = [*(*(*(a1 + 48) + 8) + 40) indicatorContainerViewDescription];
  v25 = v24;
  if (v23 && v24)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_3;
    v38[3] = &unk_2783AD778;
    v41 = *(a1 + 56);
    v38[4] = *(a1 + 32);
    v39 = v24;
    v40 = v21;
    v26 = [v25 copyWithBlock:v38];
    v27 = *(*(*(a1 + 48) + 8) + 40);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_4;
    v34[3] = &unk_2783AD778;
    v28 = *(a1 + 32);
    v37 = *(a1 + 56);
    v34[4] = v28;
    v25 = v26;
    v35 = v25;
    v36 = v23;
    v29 = [v27 copyWithBlock:v34];
    v30 = *(*(a1 + 48) + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;
  }

  [v7 setContainerViewDescriptions:v9];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = SBSAElementContextAssociatedWithContainerViewDescription(*(a1 + 40), *(a1 + 48), 0);
  [v6 setShadowStyle:{objc_msgSend(*(a1 + 32), "_shadowStyleForContainerDescription:elementContext:useHeavyShadowForTransition:isFirstContainer:", *(a1 + 40), v7, *(a1 + 72), *(a1 + 64) == 0)}];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setShadowStyle:{objc_msgSend(*(a1 + 32), "_shadowStyleForContainerDescription:indicatorElementContext:", *(a1 + 40), *(a1 + 48))}];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
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
      __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorContainerViewDescription:*(a1 + 40)];
  v7 = [SBSAInterfaceElementPropertyIdentity alloc];
  v8 = [*(a1 + 48) interfaceElementIdentifier];
  v9 = [(SBSAInterfaceElementPropertyIdentity *)v7 initWithAssociatedInterfaceElementIdentifier:v8 andProperty:@"shadowStyle"];
  v10 = [SBSAInterfaceElementPropertyIdentity alloc];
  v11 = [*(a1 + 40) interfaceElementIdentifier];
  v12 = [(SBSAInterfaceElementPropertyIdentity *)v10 initWithAssociatedInterfaceElementIdentifier:v11 andProperty:@"shadowStyle"];
  [v6 associateAnimatedTransitionDescriptionOfProperty:v9 withProperty:v12 withMilestones:0];
}

- (int64_t)_shadowStyleForContainerDescription:(id)a3 indicatorElementContext:(id)a4
{
  v5 = [objc_opt_class() settings];
  v6 = [v5 elementShadowEnabled];
  if (a4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)_shadowStyleForContainerDescription:(id)a3 elementContext:(id)a4 useHeavyShadowForTransition:(BOOL)a5 isFirstContainer:(BOOL)a6
{
  v7 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [objc_opt_class() settings];
  v12 = [v11 elementShadowEnabled];

  if (!v12)
  {
    goto LABEL_14;
  }

  if (v7 && a6)
  {
    v13 = 7;
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v14 = [v10 layoutMode];
  [v9 bounds];
  if ((v14 - 1) < 2)
  {
    if ([v10 systemApertureLayoutCustomizingOptions])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    goto LABEL_15;
  }

  if (v14 != 3)
  {
LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  if (v15 <= 37.0)
  {
    v13 = 1;
  }

  else if (v15 >= 74.0)
  {
    if (v15 >= 92.0 || v15 < 74.0)
    {
      v13 = 4;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 2;
  }

  v18 = [v10 systemApertureCustomLayout];
  if ((v18 - 1) >= 2)
  {
    if (v18 == 3)
    {
      v13 = 6;
    }
  }

  else
  {
    v13 = 5;
  }

LABEL_15:

  return v13;
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAShadowPreferencesProvider.m" lineNumber:24 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_9();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_9();
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_9();
  NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __56__SBSAShadowPreferencesProvider_preferencesFromContext___block_invoke_4_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_9();
  NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end