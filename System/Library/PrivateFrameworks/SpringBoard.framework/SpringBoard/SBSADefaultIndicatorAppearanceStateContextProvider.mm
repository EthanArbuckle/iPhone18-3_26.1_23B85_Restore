@interface SBSADefaultIndicatorAppearanceStateContextProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSADefaultIndicatorAppearanceStateContextProvider

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
      [SBSADefaultIndicatorAppearanceStateContextProvider preferencesFromContext:];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 preferences];
  if (v10)
  {
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
      [SBSADefaultIndicatorAppearanceStateContextProvider preferencesFromContext:];
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 maintainedPreferences];
  v16 = [v15 indicatorAppearanceStateContext];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 isDisappeared] ^ 1;
  }

  else
  {
    LOBYTE(v18) = 1;
  }

  v19 = [(SBSABasePreferencesProvider *)self firstChildPreferenceProviderOfClass:objc_opt_class()];

  v20 = [v9 indicatorElementContext];
  v21 = v20;
  if (v20)
  {
    if (v17)
    {
      goto LABEL_34;
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke;
    v37[3] = &unk_2783AD750;
    v39 = a2;
    v37[4] = self;
    v38 = v20;
    v22 = [v15 copyWithBlock:v37];

    v23 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [SBSADefaultIndicatorAppearanceStateContextProvider preferencesFromContext:];
    }

    v24 = v38;
    goto LABEL_33;
  }

  if (v19)
  {
    v25 = 1;
  }

  else
  {
    v25 = v18;
  }

  if ((v25 & 1) == 0)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_23;
    v36[3] = &unk_2783A93E8;
    v36[4] = self;
    v36[5] = a2;
    v22 = [v15 copyWithBlock:v36];

    v24 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [SBSADefaultIndicatorAppearanceStateContextProvider preferencesFromContext:];
    }

LABEL_33:

    v15 = v22;
  }

LABEL_34:
  v26 = [v14 maintainedPreferences];
  v27 = BSEqualObjects();

  if ((v27 & 1) == 0)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_24;
    v33[3] = &unk_2783AD750;
    v35 = a2;
    v33[4] = self;
    v34 = v15;
    v28 = [v14 copyWithBlock:v33];

    v14 = v28;
  }

  v29 = [v9 copyByUpdatingPreferences:v14];

  v32.receiver = self;
  v32.super_class = SBSADefaultIndicatorAppearanceStateContextProvider;
  v30 = [(SBSABasePreferencesProvider *)&v32 preferencesFromContext:v29];

  return v30;
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_2;
  v11[3] = &unk_2783AD750;
  v11[4] = *(a1 + 32);
  v10 = *(a1 + 40);
  v8 = v10;
  v12 = v10;
  v9 = [SBSAIndicatorAppearanceStateContext instanceWithBlock:v11];
  [v7 setIndicatorAppearanceStateContext:v9];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [*(a1 + 40) copy];
  [v6 setActiveIndicatorElementContext:v7];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_23(uint64_t a1, void *a2)
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
      __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_23_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setIndicatorAppearanceStateContext:0];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_24(uint64_t a1, void *a2)
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
      __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_24_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setMaintainedPreferences:*(a1 + 40)];
}

- (void)preferencesFromContext:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSADefaultIndicatorAppearanceStateContextProvider.m" lineNumber:24 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v2 = NSClassFromString(&cfstr_Sbsapreference.isa);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInMethod:v1 object:v0 file:@"SBSADefaultIndicatorAppearanceStateContextProvider.m" lineNumber:25 description:{@"Unexpected class – expected '%@', got '%@'", v2, v4}];
}

- (void)preferencesFromContext:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v1, v2, "[%{public}lu] created a new indicator layout context: %@", v3, v4, v5, v6, v7);
}

- (void)preferencesFromContext:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  [v0 queryIteration];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_12(&dword_21ED4E000, v1, v2, "[%{public}lu] removed maintained indicator layout context: %@", v3, v4, v5, v6, v7);
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsamaintained.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5();
  NSClassFromString(&cfstr_Sbsaindicatora.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_23_cold_1()
{
  OUTLINED_FUNCTION_1_2();
  v11 = [MEMORY[0x277CCA890] currentHandler];
  NSClassFromString(&cfstr_Sbsamaintained.isa);
  v1 = OUTLINED_FUNCTION_3_7();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_5();
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __77__SBSADefaultIndicatorAppearanceStateContextProvider_preferencesFromContext___block_invoke_24_cold_1()
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

@end