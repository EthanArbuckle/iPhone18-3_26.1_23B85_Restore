@interface _UIFocusBehavior_IOS
+ (id)sharedInstance;
- (BOOL)_shouldOverrideFocusSystemEnabledForScene:(id)a3;
- (BOOL)constrainGameControllersToFocusGroups;
- (BOOL)controlCanBecomeFocused:(id)a3;
- (BOOL)defaultValueForSelectionFollowsFocusInCollectionView:(id)a3;
- (BOOL)defaultValueForSelectionFollowsFocusInTableView:(id)a3;
- (BOOL)supportsGameControllers;
- (BOOL)supportsLinearMovementDebugOverlay;
- (BOOL)wantsFocusSystemForScene:(id)a3;
- (int64_t)cellFocusability;
- (int64_t)focusRingVisibility;
- (int64_t)requiredInputDevices;
@end

@implementation _UIFocusBehavior_IOS

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38___UIFocusBehavior_IOS_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED4A2388 != -1)
  {
    dispatch_once(&qword_1ED4A2388, block);
  }

  v2 = qword_1ED4A2380;

  return v2;
}

- (int64_t)focusRingVisibility
{
  v2 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v3 = [v2 forcesDefaultFocusAppearance];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (int64_t)requiredInputDevices
{
  if ([(_UIFocusBehavior_IOS *)self supportsGameControllers])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (BOOL)supportsGameControllers
{
  if (qword_1ED4A2390 != -1)
  {
    dispatch_once(&qword_1ED4A2390, &__block_literal_global_131_3);
  }

  if (_MergedGlobals_1334)
  {
    return 1;
  }

  v3 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v4 = [v3 requiresGameControllerBasedFocus];

  return v4;
}

- (BOOL)_shouldOverrideFocusSystemEnabledForScene:(id)a3
{
  v3 = [a3 _focusSystemSceneComponent];
  v4 = [v3 isOverrideFocusSystemEnabled];

  return v4;
}

- (BOOL)wantsFocusSystemForScene:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
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

  v9 = v8;
  v10 = [v9 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v14 = dyld_program_sdk_at_least();

    if (v14)
    {
      goto LABEL_11;
    }

LABEL_13:
    v15 = [(_UIFocusBehavior_IOS *)self _shouldOverrideFocusSystemEnabledForScene:v6];
    goto LABEL_14;
  }

  if (v11)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D930];
    v18 = [v9 traitCollection];
    [v16 raise:v17 format:{@"Unknown idiom for iOS focus behavior: %d", objc_msgSend(v18, "userInterfaceIdiom")}];

    goto LABEL_13;
  }

  v12 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v13 = [v12 requiresGameControllerBasedFocus];

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v15 = 1;
LABEL_14:

  return v15;
}

- (BOOL)controlCanBecomeFocused:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v6 = [v5 focusEnabledInLimitedControls];

  if (v6)
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    objc_opt_class();
    isKindOfClass |= v7 | objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (int64_t)cellFocusability
{
  if (_UIFocusBehaviorAPIBehavior_onceToken != -1)
  {
    dispatch_once(&_UIFocusBehaviorAPIBehavior_onceToken, &__block_literal_global_626);
  }

  if (_UIFocusBehaviorAPIBehavior_apiFocusBehavior)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (BOOL)defaultValueForSelectionFollowsFocusInCollectionView:(id)a3
{
  v3 = a3;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_16;
  }

  v4 = [v3 traitCollection];
  v5 = [v4 _hasSplitViewControllerContextSidebarColumn];

  if (v5)
  {
    if (([v3 _delegateSupportsPrimaryAction] & 1) == 0)
    {
      v6 = [v3 _viewControllerForAncestor];
      v7 = [v6 splitViewController];

      if (v7)
      {
        v8 = [v7 displayMode];
        if (v8 <= 6 && ((1 << v8) & 0x68) != 0)
        {
          LOBYTE(v5) = 0;
LABEL_15:

          goto LABEL_17;
        }
      }
    }

    if ((dyld_program_sdk_at_least() & 1) != 0 || ([v3 isEditing] & 1) == 0)
    {
      v9 = [v3 _viewControllerForAncestor];
      if (v9)
      {
        v7 = v9;
        do
        {
          objc_opt_class();
          LOBYTE(v5) = objc_opt_isKindOfClass();
          if (v5)
          {
            break;
          }

          v10 = [v7 parentViewController];

          v7 = v10;
        }

        while (v10);
        goto LABEL_15;
      }
    }

LABEL_16:
    LOBYTE(v5) = 0;
  }

LABEL_17:

  return v5 & 1;
}

- (BOOL)defaultValueForSelectionFollowsFocusInTableView:(id)a3
{
  v3 = a3;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_16;
  }

  v4 = [v3 traitCollection];
  v5 = [v4 _hasSplitViewControllerContextSidebarColumn];

  if (v5)
  {
    if (([v3 _delegateSupportsPrimaryAction] & 1) == 0)
    {
      v6 = [v3 _viewControllerForAncestor];
      v7 = [v6 splitViewController];

      if (v7)
      {
        v8 = [v7 displayMode];
        if (v8 <= 6 && ((1 << v8) & 0x68) != 0)
        {
          LOBYTE(v5) = 0;
LABEL_15:

          goto LABEL_17;
        }
      }
    }

    if ((dyld_program_sdk_at_least() & 1) != 0 || ([v3 isEditing] & 1) == 0)
    {
      v9 = [v3 _viewControllerForAncestor];
      if (v9)
      {
        v7 = v9;
        do
        {
          objc_opt_class();
          LOBYTE(v5) = objc_opt_isKindOfClass();
          if (v5)
          {
            break;
          }

          v10 = [v7 parentViewController];

          v7 = v10;
        }

        while (v10);
        goto LABEL_15;
      }
    }

LABEL_16:
    LOBYTE(v5) = 0;
  }

LABEL_17:

  return v5 & 1;
}

- (BOOL)constrainGameControllersToFocusGroups
{
  v2 = +[_UIApplicationInfoParser mainBundleInfoParser];
  v3 = [v2 requestsFlattenedGameControllerFocusMovement];

  return v3 ^ 1;
}

- (BOOL)supportsLinearMovementDebugOverlay
{
  if (qword_1ED4A2398 != -1)
  {
    dispatch_once(&qword_1ED4A2398, &__block_literal_global_136_1);
  }

  return byte_1ED4A2379;
}

@end