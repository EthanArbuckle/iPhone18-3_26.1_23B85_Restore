@interface BSSettings(SBUISystemAperture)
- (double)SBUISA_CGRectforSetting:()SBUISystemAperture;
- (double)SBUISA_CGSizeforSetting:()SBUISystemAperture;
- (double)SBUISA_directionalEdgeInsetsforSetting:()SBUISystemAperture;
- (id)SBUISA_UIColorForSetting:()SBUISystemAperture;
- (id)SBUISA_secureFlipBookElementConfigurationsForSetting:()SBUISystemAperture;
- (id)SBUI_systemApertureDescription;
- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture;
- (uint64_t)SBUISA_contentRoleforSetting:()SBUISystemAperture;
- (uint64_t)SBUISA_contextIdforSetting:()SBUISystemAperture;
- (uint64_t)SBUISA_customLayoutModeforSetting:()SBUISystemAperture;
- (uint64_t)SBUISA_layoutModeforSetting:()SBUISystemAperture;
- (uint64_t)SBUISA_presentationBehaviorsForSetting:()SBUISystemAperture;
- (uint64_t)SBUISA_renderingIdforSetting:()SBUISystemAperture;
- (void)SBUISA_BSActionforSetting:()SBUISystemAperture;
- (void)SBUISA_URLforSetting:()SBUISystemAperture;
- (void)SBUISA_backgroundActivityIdentifiersForSetting:()SBUISystemAperture;
- (void)SBUISA_componentStatesForSetting:()SBUISystemAperture;
- (void)SBUISA_secureFlipBookElementSymmetricalConfigurationsForSetting:()SBUISystemAperture;
- (void)SBUISA_stringforSetting:()SBUISystemAperture;
@end

@implementation BSSettings(SBUISystemAperture)

- (uint64_t)SBUISA_contentRoleforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (void)SBUISA_stringforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (void)SBUISA_URLforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (void)SBUISA_BSActionforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (double)SBUISA_CGRectforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  [v5 CGRectValue];
  v7 = v6;

  return v7;
}

- (double)SBUISA_CGSizeforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  [v5 CGSizeValue];
  v7 = v6;

  return v7;
}

- (uint64_t)SBUISA_layoutModeforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 integerValue];
  return v6;
}

- (uint64_t)SBUISA_contextIdforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 unsignedIntValue];
  return v6;
}

- (uint64_t)SBUISA_renderingIdforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 unsignedLongLongValue];
  return v6;
}

- (double)SBUISA_directionalEdgeInsetsforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  [v5 directionalEdgeInsetsValue];
  v7 = v6;

  return v7;
}

- (void)SBUISA_backgroundActivityIdentifiersForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (uint64_t)SBUISA_customLayoutModeforSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 integerValue];
  return v6;
}

- (uint64_t)SBUISA_presentationBehaviorsForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 unsignedIntegerValue];
  return v6;
}

- (id)SBUISA_UIColorForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  if (v5)
  {
    v6 = MEMORY[0x1E69DC888];
    [v5 red];
    v8 = v7;
    [v5 green];
    v10 = v9;
    [v5 blue];
    v12 = v11;
    [v5 alpha];
    v14 = [v6 colorWithRed:v8 green:v10 blue:v12 alpha:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)SBUISA_secureFlipBookElementConfigurationsForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  v6 = [v5 array];

  return v6;
}

- (void)SBUISA_secureFlipBookElementSymmetricalConfigurationsForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
  if (v2)
  {
    if (objc_opt_isKindOfClass())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = v2;

  return v2;
}

- (void)SBUISA_componentStatesForSetting:()SBUISystemAperture
{
  v1 = [a1 objectForSetting:?];
  v2 = objc_opt_class();
  v3 = v1;
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

  if (SBUISystemApertureSettingValidateComponentStates(v5))
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  v7 = v6;

  return v6;
}

- (id)SBUI_systemApertureDescription
{
  v2 = [MEMORY[0x1E698E680] builderWithObject:a1];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __64__BSSettings_SBUISystemAperture__SBUI_systemApertureDescription__block_invoke;
  v9 = &unk_1E789DD98;
  v10 = v2;
  v11 = a1;
  v3 = v2;
  [v3 appendBodySectionWithName:0 multilinePrefix:0 block:&v6];
  v4 = [v3 build];

  return v4;
}

- (id)SBUI_systemApertureDescriptionOfDiffFromSettings:()SBUISystemAperture
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [MEMORY[0x1E698E680] builderWithObject:a1];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __83__BSSettings_SBUISystemAperture__SBUI_systemApertureDescriptionOfDiffFromSettings___block_invoke;
  v13 = &unk_1E789EEC8;
  v14 = a1;
  v6 = v4;
  v15 = v6;
  v7 = v5;
  v16 = v7;
  v17 = &v18;
  [v7 appendBodySectionWithName:0 multilinePrefix:0 block:&v10];
  if (*(v19 + 24) == 1)
  {
    v8 = [v7 build];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v8;
}

@end