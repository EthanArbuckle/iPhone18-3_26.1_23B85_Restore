@interface SBCornerGestureDefaults
- (void)_bindAndRegisterDefaults;
- (void)_migrateSkyDefaultsIfNecessary;
@end

@implementation SBCornerGestureDefaults

- (void)_migrateSkyDefaultsIfNecessary
{
  v39 = *MEMORY[0x1E69E9840];
  _store = [(BSAbstractDefaultDomain *)self _store];
  v4 = [_store bs_defaultExists:@"SBBottomLeftCornerGestureFeature"];
  if (v4 != [_store bs_defaultExists:@"SBBottomLeftCornerGestureTouchTypes"])
  {
    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = _SBFLoggingMethodProem(self, 0);
      v7 = v6;
      *v34 = 138543874;
      if (v4)
      {
        v8 = @"SBBottomLeftCornerGestureFeature";
      }

      else
      {
        v8 = @"SBBottomLeftCornerGestureTouchTypes";
      }

      if (v4)
      {
        v9 = @"SBBottomLeftCornerGestureTouchTypes";
      }

      else
      {
        v9 = @"SBBottomLeftCornerGestureFeature";
      }

      *&v34[4] = v6;
      *&v34[12] = 2114;
      *&v34[14] = v8;
      v35 = 2114;
      v36 = v9;
      _os_log_error_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_ERROR, "%{public}@ expecting both new left corner defaults to exist but only %{public}@ does (%{public}@ doesn't exist)", v34, 0x20u);
    }

    goto LABEL_25;
  }

  if (v4)
  {
    [_store removeObjectForKey:@"SBApplePencilScreenshotFromCorner"];
    v5 = SBLogCommon();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = _SBFLoggingMethodProem(self, 0);
    *v34 = 138543362;
    *&v34[4] = v10;
    v11 = "%{public}@ keys exist for bottom left corner; skipping migration.";
LABEL_24:
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, v11, v34, 0xCu);

    goto LABEL_25;
  }

  if (![_store bs_defaultExists:@"SBApplePencilScreenshotFromCorner"])
  {
    v5 = SBLogCommon();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v10 = _SBFLoggingMethodProem(self, 0);
    *v34 = 138543362;
    *&v34[4] = v10;
    v11 = "%{public}@ new and legacy keys do not exist for bottom left corner; skipping migration.";
    goto LABEL_24;
  }

  [_store setInteger:0 forKey:@"SBBottomLeftCornerGestureFeature"];
  v12 = [_store BOOLForKey:@"SBApplePencilScreenshotFromCorner"];
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  [_store setInteger:v13 forKey:@"SBBottomLeftCornerGestureTouchTypes"];
  [_store removeObjectForKey:@"SBApplePencilScreenshotFromCorner"];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = _SBFLoggingMethodProem(self, 0);
    if (v12)
    {
      v15 = @"ENABLED";
    }

    else
    {
      v15 = @"DISABLED";
    }

    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13];
    *v34 = 138543874;
    *&v34[4] = v14;
    *&v34[12] = 2114;
    *&v34[14] = v15;
    v35 = 2114;
    v36 = v16;
    _os_log_impl(&dword_1BEA11000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ migrated screenshot %{public}@ default to bottom left corner mapped to screenshot for touch types %{public}@", v34, 0x20u);
  }

LABEL_25:

  v17 = [_store bs_defaultExists:@"SBBottomRightCornerGestureFeature"];
  if (v17 == [_store bs_defaultExists:@"SBBottomRightCornerGestureTouchTypes"])
  {
    if (v17)
    {
      [_store removeObjectForKey:@"SBApplePencilPaperFromCorner"];
      [_store removeObjectForKey:@"SBFingerSwipePaperFromCorner"];
      v18 = SBLogCommon();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v20 = _SBFLoggingMethodProem(self, 0);
      *v34 = 138543362;
      *&v34[4] = v20;
      v23 = "%{public}@ keys exist for bottom right corner; skipping migration.";
    }

    else
    {
      v24 = [_store bs_defaultExists:@"SBApplePencilPaperFromCorner"];
      v25 = [_store bs_defaultExists:@"SBFingerSwipePaperFromCorner"];
      v26 = v25;
      if ((v24 & 1) != 0 || v25)
      {
        v27 = 1;
        [_store setInteger:1 forKey:{@"SBBottomRightCornerGestureFeature", *v34}];
        if (v24)
        {
          v27 = [_store BOOLForKey:@"SBApplePencilPaperFromCorner"];
        }

        if (v26)
        {
          v28 = [_store BOOLForKey:@"SBFingerSwipePaperFromCorner"];
        }

        else
        {
          v28 = 1;
        }

        if (v27)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        v30 = v28;
        [_store setInteger:v29 | v28 forKey:@"SBBottomRightCornerGestureTouchTypes"];
        [_store removeObjectForKey:@"SBApplePencilPaperFromCorner"];
        [_store removeObjectForKey:@"SBFingerSwipePaperFromCorner"];
        v18 = SBLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = _SBFLoggingMethodProem(self, 0);
          if (v28)
          {
            v31 = @"ENABLED";
          }

          else
          {
            v31 = @"DISABLED";
          }

          if (v27)
          {
            v32 = @"ENABLED";
          }

          else
          {
            v32 = @"DISABLED";
          }

          v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v29 | v30];
          *v34 = 138544130;
          *&v34[4] = v20;
          *&v34[12] = 2114;
          *&v34[14] = v31;
          v35 = 2114;
          v36 = v32;
          v37 = 2114;
          v38 = v33;
          _os_log_impl(&dword_1BEA11000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ migrated quick notes finger:%{public}@ pencil:%{public}@ default to bottom right corner mapped to quick notes for touch types %{public}@", v34, 0x2Au);

          goto LABEL_58;
        }

        goto LABEL_59;
      }

      v18 = SBLogCommon();
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_59;
      }

      v20 = _SBFLoggingMethodProem(self, 0);
      *v34 = 138543362;
      *&v34[4] = v20;
      v23 = "%{public}@ new and legacy keys do not exist for bottom right corner; skipping migration.";
    }

    _os_log_impl(&dword_1BEA11000, v18, OS_LOG_TYPE_DEFAULT, v23, v34, 0xCu);
LABEL_58:

    goto LABEL_59;
  }

  v18 = SBLogCommon();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = _SBFLoggingMethodProem(self, 0);
    v20 = v19;
    *v34 = 138543874;
    if (v17)
    {
      v21 = @"SBBottomRightCornerGestureFeature";
    }

    else
    {
      v21 = @"SBBottomRightCornerGestureTouchTypes";
    }

    if (v17)
    {
      v22 = @"SBBottomRightCornerGestureTouchTypes";
    }

    else
    {
      v22 = @"SBBottomRightCornerGestureFeature";
    }

    *&v34[4] = v19;
    *&v34[12] = 2114;
    *&v34[14] = v21;
    v35 = 2114;
    v36 = v22;
    _os_log_error_impl(&dword_1BEA11000, v18, OS_LOG_TYPE_ERROR, "%{public}@ expecting both new right corner defaults to exist but only %{public}@ does (%{public}@ doesn't exist)", v34, 0x20u);
    goto LABEL_58;
  }

LABEL_59:

  [(BSAbstractDefaultDomain *)self synchronizeDefaults];
}

- (void)_bindAndRegisterDefaults
{
  [(SBCornerGestureDefaults *)self _migrateSkyDefaultsIfNecessary];
  _store = [(BSAbstractDefaultDomain *)self _store];
  if (([_store bs_defaultExists:@"SBGestureRequiresEducation-Corner"] & 1) == 0)
  {
    [_store setInteger:1 forKey:@"SBGestureRequiresEducation-Corner"];
    [_store setValue:&unk_1F3D3EB68 forKey:@"SBBottomLeftCornerGestureTouchTypes"];
    [_store setValue:&unk_1F3D3EB68 forKey:@"SBBottomRightCornerGestureTouchTypes"];
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bottomLeftCornerGestureFeature"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBBottomLeftCornerGestureFeature" toDefaultValue:&unk_1F3D3EB80 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bottomLeftCornerGestureTouchTypes"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"SBBottomLeftCornerGestureTouchTypes" toDefaultValue:&unk_1F3D3EB68 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bottomRightCornerGestureFeature"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBBottomRightCornerGestureFeature" toDefaultValue:&unk_1F3D3EB98 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"bottomRightCornerGestureTouchTypes"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBBottomRightCornerGestureTouchTypes" toDefaultValue:&unk_1F3D3EB68 options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cornerGestureRequiresEducation"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBGestureRequiresEducation-Corner" toDefaultValue:0 options:1];
}

@end