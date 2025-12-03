@interface _UIFocusBehavior_IOS
+ (id)sharedInstance;
- (BOOL)_shouldOverrideFocusSystemEnabledForScene:(id)scene;
- (BOOL)constrainGameControllersToFocusGroups;
- (BOOL)controlCanBecomeFocused:(id)focused;
- (BOOL)defaultValueForSelectionFollowsFocusInCollectionView:(id)view;
- (BOOL)defaultValueForSelectionFollowsFocusInTableView:(id)view;
- (BOOL)supportsGameControllers;
- (BOOL)supportsLinearMovementDebugOverlay;
- (BOOL)wantsFocusSystemForScene:(id)scene;
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
  block[4] = self;
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
  forcesDefaultFocusAppearance = [v2 forcesDefaultFocusAppearance];

  if (forcesDefaultFocusAppearance)
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
  requiresGameControllerBasedFocus = [v3 requiresGameControllerBasedFocus];

  return requiresGameControllerBasedFocus;
}

- (BOOL)_shouldOverrideFocusSystemEnabledForScene:(id)scene
{
  _focusSystemSceneComponent = [scene _focusSystemSceneComponent];
  isOverrideFocusSystemEnabled = [_focusSystemSceneComponent isOverrideFocusSystemEnabled];

  return isOverrideFocusSystemEnabled;
}

- (BOOL)wantsFocusSystemForScene:(id)scene
{
  sceneCopy = scene;
  v5 = objc_opt_class();
  v6 = sceneCopy;
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
  traitCollection = [v9 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

  if (userInterfaceIdiom)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = *MEMORY[0x1E695D930];
    traitCollection2 = [v9 traitCollection];
    [v16 raise:v17 format:{@"Unknown idiom for iOS focus behavior: %d", objc_msgSend(traitCollection2, "userInterfaceIdiom")}];

    goto LABEL_13;
  }

  v12 = +[_UIApplicationInfoParser mainBundleInfoParser];
  requiresGameControllerBasedFocus = [v12 requiresGameControllerBasedFocus];

  if ((requiresGameControllerBasedFocus & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v15 = 1;
LABEL_14:

  return v15;
}

- (BOOL)controlCanBecomeFocused:(id)focused
{
  focusedCopy = focused;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = +[_UIApplicationInfoParser mainBundleInfoParser];
  focusEnabledInLimitedControls = [v5 focusEnabledInLimitedControls];

  if (focusEnabledInLimitedControls)
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

- (BOOL)defaultValueForSelectionFollowsFocusInCollectionView:(id)view
{
  viewCopy = view;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_16;
  }

  traitCollection = [viewCopy traitCollection];
  _hasSplitViewControllerContextSidebarColumn = [traitCollection _hasSplitViewControllerContextSidebarColumn];

  if (_hasSplitViewControllerContextSidebarColumn)
  {
    if (([viewCopy _delegateSupportsPrimaryAction] & 1) == 0)
    {
      _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
      splitViewController = [_viewControllerForAncestor splitViewController];

      if (splitViewController)
      {
        displayMode = [splitViewController displayMode];
        if (displayMode <= 6 && ((1 << displayMode) & 0x68) != 0)
        {
          LOBYTE(_hasSplitViewControllerContextSidebarColumn) = 0;
LABEL_15:

          goto LABEL_17;
        }
      }
    }

    if ((dyld_program_sdk_at_least() & 1) != 0 || ([viewCopy isEditing] & 1) == 0)
    {
      _viewControllerForAncestor2 = [viewCopy _viewControllerForAncestor];
      if (_viewControllerForAncestor2)
      {
        splitViewController = _viewControllerForAncestor2;
        do
        {
          objc_opt_class();
          LOBYTE(_hasSplitViewControllerContextSidebarColumn) = objc_opt_isKindOfClass();
          if (_hasSplitViewControllerContextSidebarColumn)
          {
            break;
          }

          parentViewController = [splitViewController parentViewController];

          splitViewController = parentViewController;
        }

        while (parentViewController);
        goto LABEL_15;
      }
    }

LABEL_16:
    LOBYTE(_hasSplitViewControllerContextSidebarColumn) = 0;
  }

LABEL_17:

  return _hasSplitViewControllerContextSidebarColumn & 1;
}

- (BOOL)defaultValueForSelectionFollowsFocusInTableView:(id)view
{
  viewCopy = view;
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_16;
  }

  traitCollection = [viewCopy traitCollection];
  _hasSplitViewControllerContextSidebarColumn = [traitCollection _hasSplitViewControllerContextSidebarColumn];

  if (_hasSplitViewControllerContextSidebarColumn)
  {
    if (([viewCopy _delegateSupportsPrimaryAction] & 1) == 0)
    {
      _viewControllerForAncestor = [viewCopy _viewControllerForAncestor];
      splitViewController = [_viewControllerForAncestor splitViewController];

      if (splitViewController)
      {
        displayMode = [splitViewController displayMode];
        if (displayMode <= 6 && ((1 << displayMode) & 0x68) != 0)
        {
          LOBYTE(_hasSplitViewControllerContextSidebarColumn) = 0;
LABEL_15:

          goto LABEL_17;
        }
      }
    }

    if ((dyld_program_sdk_at_least() & 1) != 0 || ([viewCopy isEditing] & 1) == 0)
    {
      _viewControllerForAncestor2 = [viewCopy _viewControllerForAncestor];
      if (_viewControllerForAncestor2)
      {
        splitViewController = _viewControllerForAncestor2;
        do
        {
          objc_opt_class();
          LOBYTE(_hasSplitViewControllerContextSidebarColumn) = objc_opt_isKindOfClass();
          if (_hasSplitViewControllerContextSidebarColumn)
          {
            break;
          }

          parentViewController = [splitViewController parentViewController];

          splitViewController = parentViewController;
        }

        while (parentViewController);
        goto LABEL_15;
      }
    }

LABEL_16:
    LOBYTE(_hasSplitViewControllerContextSidebarColumn) = 0;
  }

LABEL_17:

  return _hasSplitViewControllerContextSidebarColumn & 1;
}

- (BOOL)constrainGameControllersToFocusGroups
{
  v2 = +[_UIApplicationInfoParser mainBundleInfoParser];
  requestsFlattenedGameControllerFocusMovement = [v2 requestsFlattenedGameControllerFocusMovement];

  return requestsFlattenedGameControllerFocusMovement ^ 1;
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