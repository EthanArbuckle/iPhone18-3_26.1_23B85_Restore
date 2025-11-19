@interface SBSARenderingAndCloningPreferencesProvider
- (id)preferencesFromContext:(id)a3;
@end

@implementation SBSARenderingAndCloningPreferencesProvider

- (id)preferencesFromContext:(id)a3
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = objc_opt_self();
    v8 = v5;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      [(SBSARenderingAndCloningPreferencesProvider *)v8 preferencesFromContext:a2, self];
      v10 = 0;
      v5 = v6;
    }
  }

  else
  {
    v10 = 0;
  }

  v59 = v5;

  v76 = 0;
  v77 = &v76;
  v78 = 0x3032000000;
  v79 = __Block_byref_object_copy__15;
  v80 = __Block_byref_object_dispose__15;
  v11 = [v10 preferences];
  v12 = objc_opt_class();
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

  v81 = v15;
  v16 = SBSAContextAndPreferencesRepresentAnyContentVisible(v10, v77[5]);
  v17 = [v10 isAnimatedTransitionInProgress];
  v18 = [v10 activeDisplay];
  v19 = [v10 cloningStyle];
  v20 = [v10 defaultsContext];
  v21 = [v20 alwaysRenderSystemApertureFillOnGPU];

  v22 = [v10 defaultsContext];
  v23 = [v22 neverRenderSystemApertureFillOnGPU];

  v24 = MGGetBoolAnswer();
  v25 = 0;
  if (((v16 | v17) & 1) == 0 && ((v23 ^ 1) & v21 & 1) == 0)
  {
    v26 = v24;
    v27 = [v10 isKeyLineRequiredForTransition];
    if (v18 == 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v27;
    }

    v29 = 1;
    if (v26)
    {
      v29 = 2;
    }

    if (v28)
    {
      v25 = 0;
    }

    else
    {
      v25 = v29;
    }
  }

  v30 = [v10 overrideRenderingStyle];
  if (v30 != -1)
  {
    v25 = v30;
  }

  v31 = [v10 defaultsContext];
  v32 = [v31 alwaysShowSystemApertureInSnapshots];

  v33 = [v10 isClearModeEnabled];
  if (([v10 isReachabilityActiveOrAnimating] & 1) != 0 || objc_msgSend(v10, "isAccessibilityZoomActiveAndEnabled"))
  {
    v34 = [v10 secureFlipBookElementContexts];
    v58 = [v34 count] != 0;

    v35 = 3;
  }

  else
  {
    v58 = 0;
    v35 = v25;
  }

  if (v33)
  {
    v36 = 4;
  }

  else
  {
    v36 = v35;
  }

  if (v33)
  {
    v37 = 4;
  }

  else
  {
    v37 = v25;
  }

  v74 = 0uLL;
  v75 = 0;
  SBSystemApertureContainerRenderingConfigurationMake(v36, v19, v32, &v74);
  v72 = 0uLL;
  v73 = 0;
  SBSystemApertureContainerRenderingConfigurationMake(v36, v19, v32, &v72);
  v70 = 0uLL;
  v71 = 0;
  SBSystemApertureContainerRenderingConfigurationMake(v37, v19, v32, &v70);
  if (v33)
  {
    v19 = 0;
  }

  if (self->_previousCloningStyle != v19 || self->_previousCurtainRenderingStyle != v37 || self->_previousContainerRenderingStyle != v36)
  {
    if (v36 == v37)
    {
      v38 = SBLogSystemAperturePreferencesStackRenderingCloning();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = SBStringFromSystemApertureContainerRenderingStyle(v36);
        v40 = SBStringFromSystemApertureContainerCloningStyle(v19);
        *buf = 138543618;
        v83 = v39;
        v84 = 2114;
        v85 = v40;
        _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "Updating curtain and container rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v41 = SBLogSystemAperturePreferencesStackRenderingCloning();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = SBStringFromSystemApertureContainerRenderingStyle(v37);
        v43 = SBStringFromSystemApertureContainerCloningStyle(v19);
        *buf = 138543618;
        v83 = v42;
        v84 = 2114;
        v85 = v43;
        _os_log_impl(&dword_21ED4E000, v41, OS_LOG_TYPE_DEFAULT, "Updating curtain rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }

      v38 = SBLogSystemAperturePreferencesStackRenderingCloning();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v44 = SBStringFromSystemApertureContainerRenderingStyle(v36);
        v45 = SBStringFromSystemApertureContainerCloningStyle(v19);
        *buf = 138543618;
        v83 = v44;
        v84 = 2114;
        v85 = v45;
        _os_log_impl(&dword_21ED4E000, v38, OS_LOG_TYPE_DEFAULT, "Updating container rendering style to: %{public}@, cloning style: %{public}@", buf, 0x16u);
      }
    }
  }

  self->_previousContainerRenderingStyle = v36;
  self->_previousCurtainRenderingStyle = v37;
  self->_previousCloningStyle = v19;
  v46 = v77[5];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke;
  v62[3] = &unk_2783ADFF0;
  v69 = v58;
  v62[4] = self;
  v62[5] = &v76;
  v62[6] = a2;
  v63 = v72;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v68 = v71;
  v67 = v70;
  v47 = [v46 copyWithBlock:v62];
  v48 = v77[5];
  v77[5] = v47;

  v49 = [v10 copyByUpdatingPreferences:v77[5]];
  v61.receiver = self;
  v61.super_class = SBSARenderingAndCloningPreferencesProvider;
  v50 = [(SBSABasePreferencesProvider *)&v61 preferencesFromContext:v49];
  v51 = objc_opt_class();
  v52 = v50;
  if (v51)
  {
    if (objc_opt_isKindOfClass())
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 0;
  }

  v54 = v53;

  v55 = v77[5];
  v77[5] = v54;

  v56 = v77[5];
  _Block_object_dispose(&v76, 8);

  return v56;
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke(uint64_t a1, void *a2)
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
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  [v3 setSystemApertureForcedToHardwareAdjacentPosition:*(a1 + 128)];
  v8 = [*(*(*(a1 + 40) + 8) + 40) containerViewDescriptions];
  v9 = [v8 mutableCopy];

  if ([v9 count])
  {
    v10 = 0;
    do
    {
      v11 = [v9 objectAtIndex:v10];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2;
      v23[3] = &unk_2783ADFC8;
      v12 = *(a1 + 48);
      v23[4] = *(a1 + 32);
      v23[5] = v12;
      v24 = *(a1 + 56);
      v25 = *(a1 + 72);
      v13 = [v11 copyWithBlock:v23];

      [v9 replaceObjectAtIndex:v10 withObject:v13];
      ++v10;
    }

    while (v10 < [v9 count]);
  }

  v14 = [*(*(*(a1 + 40) + 8) + 40) indicatorContainerViewDescription];
  if (v14)
  {
    v15 = v14;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3;
    v20[3] = &unk_2783ADFC8;
    v16 = *(a1 + 48);
    v20[4] = *(a1 + 32);
    v20[5] = v16;
    v21 = *(a1 + 56);
    v22 = *(a1 + 72);
    v17 = [v14 copyWithBlock:v20];

    [v7 setIndicatorContainerViewDescription:v17];
  }

  [v7 setContainerViewDescriptions:v9];
  v18 = *(a1 + 80);
  v19 = *(a1 + 96);
  [v7 setCurtainRenderingConfiguration:&v18];
  v18 = *(a1 + 104);
  v19 = *(a1 + 120);
  [v7 setHighLevelCurtainRenderingConfiguration:&v18];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2(uint64_t a1, void *a2)
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
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v7 setRenderingConfiguration:&v8];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3(uint64_t a1, void *a2)
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
      __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1();
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 48);
  v9 = *(a1 + 64);
  [v7 setRenderingConfiguration:&v8];
}

- (void)preferencesFromContext:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSClassFromString(&cfstr_Sbsacontext.isa);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBSARenderingAndCloningPreferencesProvider.m" lineNumber:28 description:{@"Unexpected class – expected '%@', got '%@'", v5, v7}];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsapreference_0.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_2_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

void __69__SBSARenderingAndCloningPreferencesProvider_preferencesFromContext___block_invoke_3_cold_1()
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v0 = NSClassFromString(&cfstr_Sbsacontainerv.isa);
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  [OUTLINED_FUNCTION_0_12(v2 v3];
}

@end