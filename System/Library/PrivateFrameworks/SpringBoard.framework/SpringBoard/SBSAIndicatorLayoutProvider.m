@interface SBSAIndicatorLayoutProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSAIndicatorLayoutProvider

- (id)preferencesFromContext:(id)a3
{
  v95 = *MEMORY[0x277D85DE8];
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
      [(SBSAIndicatorLayoutProvider *)v7 preferencesFromContext:a2, self];
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 preferences];
  v11 = [v10 indicatorContainerViewDescription];

  v12 = [v9 preferences];
  v13 = [v12 indicatorElementDescription];

  v14 = [v9 preferences];
  v15 = [v14 maintainedPreferences];

  v16 = [v15 indicatorAppearanceStateContext];
  if (v11 && v13)
  {
    v69 = v15;
    v66 = a2;
    v17 = [v9 preferences];
    v18 = [v17 maintainedPreferences];
    v19 = [v18 indicatorAppearanceStateContext];
    v20 = [v19 activeIndicatorElementContext];

    v63 = [v16 microIndicatorPhase];
    v64 = [v16 interSensorIndicatorPhase];
    v70 = [v16 microIndicatorEjectionPhase];
    v21 = [v9 preferences];
    v22 = [v21 containerViewDescriptions];
    v23 = [v22 lastObject];

    [v23 bounds];
    [v23 center];
    SBUnintegralizedRectCenteredAboutPoint();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = *(MEMORY[0x277CBF2C0] + 16);
    v86 = *MEMORY[0x277CBF2C0];
    v87 = v32;
    v88 = *(MEMORY[0x277CBF2C0] + 32);
    v65 = v20;
    v67 = v23;
    if ([v20 supportsMicroIndicatorPosition])
    {
      v33 = [v9 elementContexts];
      v34 = SBSAElementContextAssociatedWithContainerViewDescription(v23, v33, 0);

      v35 = [v34 layoutMode];
      v36 = 0;
      if (v35 == 3)
      {
        v36 = [v34 systemApertureCustomLayout];
      }

      v37 = SBSAMicroIndicatorFrameNearContainer(v36, v70 > 1, &v86, v16, v9, v25, v27, v29, v31);
      v39 = v38;
      v41 = v40;
      v43 = v42;
    }

    else
    {
      [v9 inertContainerFrame];
      v37 = v44;
      v39 = v45;
      v41 = v46;
      v43 = v47;
    }

    v68 = v5;
    v48 = SBLogSystemAperturePreferencesStackIndicator();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      v58 = [v9 queryIteration];
      v97.origin.x = v37;
      v97.origin.y = v39;
      v97.size.width = v41;
      v97.size.height = v43;
      v59 = NSStringFromCGRect(v97);
      v60 = [v69 description];
      v61 = v60;
      v62 = @"nil";
      *buf = 134349570;
      v90 = v58;
      if (v60)
      {
        v62 = v60;
      }

      v91 = 2112;
      v92 = v59;
      v93 = 2112;
      v94 = v62;
      _os_log_debug_impl(&dword_21ED4E000, v48, OS_LOG_TYPE_DEBUG, "[%{public}lu] Setting indicator frame: %@; persistedState: %@", buf, 0x20u);
    }

    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke;
    v85[3] = &unk_2783B5508;
    v85[4] = self;
    v85[5] = v66;
    *&v85[6] = v37;
    *&v85[7] = v39;
    *&v85[8] = v41;
    *&v85[9] = v43;
    v49 = [v11 copyWithBlock:v85];

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2;
    v77[3] = &unk_2783B5530;
    v79 = v66;
    v77[4] = self;
    v50 = v65;
    v78 = v50;
    v83 = v63 > 1;
    v80 = v86;
    v81 = v87;
    v82 = v88;
    v84 = v64 > 1;
    v51 = [v13 copyWithBlock:v77];

    v52 = [v9 preferences];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3;
    v73[3] = &unk_2783AD778;
    v76 = v66;
    v73[4] = self;
    v13 = v51;
    v74 = v13;
    v11 = v49;
    v75 = v11;
    v53 = [v52 copyWithBlock:v73];

    if ((v70 - 1) <= 1)
    {
      v72[0] = MEMORY[0x277D85DD0];
      v72[1] = 3221225472;
      v72[2] = __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4;
      v72[3] = &unk_2783A93E8;
      v72[4] = self;
      v72[5] = v66;
      v54 = [v53 copyWithBlock:v72];

      v53 = v54;
    }

    v5 = v68;
    v15 = v69;
    v55 = [v9 copyByUpdatingPreferences:v53];

    v9 = v55;
  }

  v71.receiver = self;
  v71.super_class = SBSAIndicatorLayoutProvider;
  v56 = [(SBSABasePreferencesProvider *)&v71 preferencesFromContext:v9];

  return v56;
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  if (v14)
  {
    v2 = objc_opt_self();
    v3 = v14;
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
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  BSRectWithSize();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 setBounds:?];
  UIRectGetCenter();
  [v5 setCenter:?];
  [v5 setContentBounds:{v7, v9, v11, v13}];
  UIRectGetCenter();
  [v5 setContentCenter:?];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  if ([*(a1 + 40) supportsMicroIndicatorPosition])
  {
    if (*(a1 + 104) == 1)
    {
      [v7 setIndicatorViewAlpha:1.0];
      [v7 setIndicatorViewBlurProgress:0.0];
      v8 = *(a1 + 72);
      v11 = *(a1 + 56);
      v12 = v8;
      v13 = *(a1 + 88);
      [v7 setIndicatorViewTransform:&v11];
    }

    if (*(a1 + 105) == 1)
    {
      [v7 setFixedIndicatorViewAlpha:1.0];
      [v7 setFixedIndicatorViewBlurProgress:0.0];
      v9 = *(MEMORY[0x277CBF2C0] + 16);
      v11 = *MEMORY[0x277CBF2C0];
      v12 = v9;
      v13 = *(MEMORY[0x277CBF2C0] + 32);
      [v7 setFixedIndicatorViewTransform:&v11];
    }
  }

  else
  {
    [v7 setIndicatorViewAlpha:1.0];
    [v7 setIndicatorViewBlurProgress:0.0];
    v10 = *(MEMORY[0x277CBF2C0] + 16);
    v11 = *MEMORY[0x277CBF2C0];
    v12 = v10;
    v13 = *(MEMORY[0x277CBF2C0] + 32);
    [v7 setIndicatorViewTransform:&v11];
  }
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v6 = 0;
  }

  [v6 setIndicatorElementDescription:*(a1 + 40)];
  [v6 setIndicatorContainerViewDescription:*(a1 + 48)];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4(uint64_t a1, void *a2)
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
      __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4_cold_1();
    }
  }

  else
  {
    v5 = 0;
  }

  [v5 setBlobEnabled:1];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSAIndicatorLayoutProvider.m" lineNumber:27 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_cold_1()
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

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_2_cold_1()
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

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_3_cold_1()
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

void __54__SBSAIndicatorLayoutProvider_preferencesFromContext___block_invoke_4_cold_1()
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