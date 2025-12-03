@interface SBUISystemApertureLayoutGuide
+ (BOOL)prepareLayoutGuidesForViewControllerIfNeeded:(id)needed onlyIfEmpty:(BOOL)empty;
+ (void)_addUnpreparedLayoutGuide:(id)guide;
+ (void)_enumerateSystemApertureRootLayoutGuidesForViewController:(id)controller usingBlock:(id)block;
+ (void)_enumerateUnpreparedSystemApertureLayoutGuides:(id)guides;
+ (void)_removeUnpreparedLayoutGuideIfNeeded:(id)needed;
- (BOOL)_createOrUpdateConcentricRootLayoutGuideWithWindow:(id)window;
- (BOOL)_createOrUpdateConstraintsIfIsRootAndInAWindow;
- (BOOL)_createOrUpdateFixedFrameRootConstraintsWithWindow:(id)window;
- (BOOL)_createOrUpdateInsetBasedRootGuideWithWindow:(id)window;
- (BOOL)_requiresExplicitFrame;
- (BOOL)_requiresFloatableFixedSize;
- (BOOL)_requiresInitialSetup;
- (BOOL)_requiresInsets;
- (BOOL)constraintNeedsActivation:(id)activation;
- (id)_rootGuide;
- (id)_rootGuideView;
- (void)_activateConstraintsWithRootLayoutGuide;
- (void)_createOrUpdateConstraintsIfIsRootAndInAWindow;
- (void)activateConstraintsIfNeeded;
- (void)prepareIfNeeded;
@end

@implementation SBUISystemApertureLayoutGuide

- (void)activateConstraintsIfNeeded
{
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  _rootGuideView = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  if ([owningView _isInAWindow])
  {
    if (_rootGuideView)
    {
      if (![(SBUISystemApertureLayoutGuide *)self _requiresInitialSetup])
      {
        constraints = [(SBUISystemApertureLayoutGuide *)self constraints];
        v6 = [constraints count];

        if (v6)
        {
          constraints2 = [(SBUISystemApertureLayoutGuide *)self constraints];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __60__SBUISystemApertureLayoutGuide_activateConstraintsIfNeeded__block_invoke;
          v9[3] = &unk_1E789E918;
          v9[4] = self;
          v8 = [constraints2 bs_filter:v9];

          if ([v8 count])
          {
            [MEMORY[0x1E696ACD8] activateConstraints:v8];
          }
        }
      }
    }
  }
}

- (id)_rootGuideView
{
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  systemApertureElementContextPrivate = [owningView systemApertureElementContextPrivate];
  layoutGuideRootView = [systemApertureElementContextPrivate layoutGuideRootView];

  return layoutGuideRootView;
}

- (BOOL)_requiresInitialSetup
{
  constraints = [(SBUISystemApertureLayoutGuide *)self constraints];
  v4 = [constraints count];

  if (!v4)
  {
    return 1;
  }

  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  _rootGuideView = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];

  if (owningView == _rootGuideView)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentRootGuideView);
  _rootGuideView2 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  v9 = WeakRetained != _rootGuideView2;

  return v9;
}

- (BOOL)_createOrUpdateConstraintsIfIsRootAndInAWindow
{
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  window = [owningView window];
  v5 = window;
  if (window)
  {
    v6 = window;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = owningView;
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

    v6 = v9;
  }

  _rootGuide = [(SBUISystemApertureLayoutGuide *)self _rootGuide];

  v11 = 0;
  if (_rootGuide != self || !v6)
  {
    goto LABEL_18;
  }

  if ([(SBUISystemApertureLayoutGuide *)self _requiresFloatableFixedSize])
  {
    v12 = [(SBUISystemApertureLayoutGuide *)self _createOrUpdateConcentricRootLayoutGuideWithWindow:v6];
LABEL_17:
    v11 = v12;
LABEL_18:

    return v11;
  }

  if ([(SBUISystemApertureLayoutGuide *)self _requiresInsets])
  {
    v12 = [(SBUISystemApertureLayoutGuide *)self _createOrUpdateInsetBasedRootGuideWithWindow:v6];
    goto LABEL_17;
  }

  if ([(SBUISystemApertureLayoutGuide *)self _requiresExplicitFrame])
  {
    v12 = [(SBUISystemApertureLayoutGuide *)self _createOrUpdateFixedFrameRootConstraintsWithWindow:v6];
    goto LABEL_17;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled layout guide identifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateConstraintsIfIsRootAndInAWindow];
  }

  [v14 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_rootGuide
{
  _rootGuideView = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  v5 = [_rootGuideView SBUISA_systemApertureLayoutGuideWithIdentifier:identifier];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = v6;

  return v6;
}

- (BOOL)_requiresFloatableFixedSize
{
  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  if ([identifier isEqualToString:@"SBUISystemApertureLeadingConcentricContentLayoutGuideIdentifier"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [identifier isEqualToString:@"SBUISystemApertureTrailingConcentricContentLayoutGuideIdentifier"];
  }

  return v3;
}

- (BOOL)_requiresInsets
{
  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  if ([identifier isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [identifier isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"];
  }

  return v3;
}

- (BOOL)_requiresExplicitFrame
{
  if ([(SBUISystemApertureLayoutGuide *)self _requiresInsets])
  {
    return 0;
  }

  else
  {
    return ![(SBUISystemApertureLayoutGuide *)self _requiresFloatableFixedSize];
  }
}

+ (BOOL)prepareLayoutGuidesForViewControllerIfNeeded:(id)needed onlyIfEmpty:(BOOL)empty
{
  neededCopy = needed;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke;
  v12[3] = &unk_1E789E8A8;
  emptyCopy = empty;
  v12[4] = &v14;
  [self _enumerateSystemApertureRootLayoutGuidesForViewController:neededCopy usingBlock:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke_2;
  v9[3] = &unk_1E789E8D0;
  v7 = neededCopy;
  v10 = v7;
  v11 = &v14;
  [self _enumerateUnpreparedSystemApertureLayoutGuides:v9];
  LOBYTE(self) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return self;
}

uint64_t __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v7 = v3;
  if (*(a1 + 40) != 1 || ([v3 layoutFrame], IsEmpty = CGRectIsEmpty(v9), v4 = v7, IsEmpty))
  {
    IsEmpty = [v4 _createOrUpdateConstraintsIfIsRootAndInAWindow];
    v4 = v7;
    *(*(*(a1 + 32) + 8) + 24) |= IsEmpty;
  }

  return MEMORY[0x1EEE66BB8](IsEmpty, v4);
}

void __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 owningView];
  v4 = [*(a1 + 32) viewIfLoaded];
  v5 = [v3 isDescendantOfView:v4];

  if (v5)
  {
    [v6 prepareIfNeeded];
    *(*(*(a1 + 40) + 8) + 24) |= [v6 _requiresInitialSetup] ^ 1;
  }
}

+ (void)_addUnpreparedLayoutGuide:(id)guide
{
  guideCopy = guide;
  v4 = SBUISystemApertureUnpreparedLayoutGuides;
  v7 = guideCopy;
  if (!SBUISystemApertureUnpreparedLayoutGuides)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = SBUISystemApertureUnpreparedLayoutGuides;
    SBUISystemApertureUnpreparedLayoutGuides = weakObjectsHashTable;

    guideCopy = v7;
    v4 = SBUISystemApertureUnpreparedLayoutGuides;
  }

  [v4 addObject:guideCopy];
}

+ (void)_removeUnpreparedLayoutGuideIfNeeded:(id)needed
{
  [SBUISystemApertureUnpreparedLayoutGuides removeObject:needed];
  if (![SBUISystemApertureUnpreparedLayoutGuides count])
  {
    v3 = SBUISystemApertureUnpreparedLayoutGuides;
    SBUISystemApertureUnpreparedLayoutGuides = 0;
  }
}

+ (void)_enumerateUnpreparedSystemApertureLayoutGuides:(id)guides
{
  v14 = *MEMORY[0x1E69E9840];
  guidesCopy = guides;
  allObjects = [SBUISystemApertureUnpreparedLayoutGuides allObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        guidesCopy[2](guidesCopy, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [allObjects countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)_enumerateSystemApertureRootLayoutGuidesForViewController:(id)controller usingBlock:(id)block
{
  v20 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  systemApertureElementContextPrivate = [controller systemApertureElementContextPrivate];
  layoutGuideRootView = [systemApertureElementContextPrivate layoutGuideRootView];

  layoutGuides = [layoutGuideRootView layoutGuides];
  v9 = [layoutGuides bs_compactMap:&__block_literal_global_12];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        blockCopy[2](blockCopy, *(*(&v15 + 1) + 8 * v14++));
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

void *__102__SBUISystemApertureLayoutGuide__enumerateSystemApertureRootLayoutGuidesForViewController_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

- (void)prepareIfNeeded
{
  if ([(SBUISystemApertureLayoutGuide *)self _requiresInitialSetup])
  {
    owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
    _rootGuideView = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
    if (_rootGuideView)
    {
      if (owningView == _rootGuideView)
      {
        [(SBUISystemApertureLayoutGuide *)self _createOrUpdateConstraintsIfIsRootAndInAWindow];
      }

      else
      {
        [(SBUISystemApertureLayoutGuide *)self _activateConstraintsWithRootLayoutGuide];
      }
    }
  }

  if ([(SBUISystemApertureLayoutGuide *)self _requiresInitialSetup])
  {

    [SBUISystemApertureLayoutGuide _addUnpreparedLayoutGuide:self];
  }

  else
  {

    [SBUISystemApertureLayoutGuide _removeUnpreparedLayoutGuideIfNeeded:self];
  }
}

- (BOOL)constraintNeedsActivation:(id)activation
{
  activationCopy = activation;
  if ([activationCopy isActive])
  {
    v5 = 0;
  }

  else
  {
    firstItem = [activationCopy firstItem];

    secondItem = [activationCopy secondItem];
    firstItem2 = secondItem;
    if (firstItem != self)
    {

      if (firstItem2 == self)
      {
        firstItem2 = [activationCopy firstItem];
      }

      else
      {
        firstItem2 = 0;
      }
    }

    v9 = objc_opt_class();
    v10 = firstItem2;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    owningView = v11;

    if (!owningView)
    {
      v13 = objc_opt_class();
      v14 = v10;
      if (v13)
      {
        if (objc_opt_isKindOfClass())
        {
          v15 = v14;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      owningView = [(SBUISystemApertureLayoutGuide *)v16 owningView];
    }

    owningView2 = [(SBUISystemApertureLayoutGuide *)self owningView];
    v18 = owningView2;
    if (owningView && ([owningView2 isDescendantOfView:owningView] & 1) == 0)
    {
      v5 = [(SBUISystemApertureLayoutGuide *)owningView isDescendantOfView:v18];
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (void)_activateConstraintsWithRootLayoutGuide
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBUISystemApertureLayoutGuide.m" lineNumber:220 description:@"Illegal attempt to activateConstraintsWithRootLayoutGuide when requiresInitialSetup is NO."];
}

- (BOOL)_createOrUpdateFixedFrameRootConstraintsWithWindow:(id)window
{
  v139[4] = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresExplicitFrame])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateFixedFrameRootConstraintsWithWindow:a2];
  }

  windowScene = [windowCopy windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];

  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  v10 = MEMORY[0x1E695F058];
  v11 = *MEMORY[0x1E695F058];
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  sBUISA_layoutMode = [owningView SBUISA_layoutMode];
  if ([identifier isEqualToString:@"SBUISystemApertureObstructedAreaLayoutGuideIdentifier"])
  {
    [settings SBUISA_obstructedAreaLayoutFrame];
LABEL_10:
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
LABEL_11:
    [owningView bounds];
    v23 = v22;
    rect_16 = v25;
    rect_24 = v24;
    v27 = v26;
    if (owningView != windowCopy)
    {
      [windowCopy convertRect:owningView toView:{v18, v19, v20, v21}];
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;
    }

    rect_8 = windowCopy;
    v140.origin.x = v23;
    v140.size.height = rect_16;
    v140.origin.y = rect_24;
    v140.size.width = v27;
    v159.origin.x = v18;
    v159.origin.y = v19;
    v159.size.width = v20;
    v159.size.height = v21;
    v141 = CGRectIntersection(v140, v159);
    x = v141.origin.x;
    y = v141.origin.y;
    width = v141.size.width;
    height = v141.size.height;
    if (CGRectIsNull(v141) || (v142.origin.x = x, v142.origin.y = y, v142.size.width = width, v142.size.height = height, CGRectIsInfinite(v142)) || (v143.origin.x = x, v143.origin.y = y, v143.size.width = width, v143.size.height = height, CGRectIsEmpty(v143)))
    {
      y = v10[1];
      width = v10[2];
      x = v11;
      height = v10[3];
    }

    v144.origin.x = x;
    v144.origin.y = y;
    v144.size.width = width;
    v144.size.height = height;
    rectb = CGRectGetMidX(v144);
    v145.origin.x = x;
    v145.origin.y = y;
    v145.size.width = width;
    v145.size.height = height;
    MidY = CGRectGetMidY(v145);
    v146.origin.x = v23;
    v146.origin.y = rect_24;
    v146.size.width = v27;
    v146.size.height = rect_16;
    rect = rectb - CGRectGetMidX(v146);
    v147.origin.x = v23;
    v147.origin.y = rect_24;
    v147.size.width = v27;
    v147.size.height = rect_16;
    v36 = MidY - CGRectGetMidY(v147);
    v148.origin.x = x;
    v148.origin.y = y;
    v148.size.width = width;
    v148.size.height = height;
    v37 = CGRectGetWidth(v148);
    v149.origin.x = x;
    v149.origin.y = y;
    v149.size.width = width;
    v149.size.height = height;
    v38 = CGRectGetHeight(v149);
    constraints = [(SBUISystemApertureLayoutGuide *)self constraints];
    v40 = [constraints count];

    if (v40)
    {
      constraints2 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v42 = [constraints2 objectAtIndexedSubscript:0];
      [v42 constant];
      v44 = v43 != rect;

      constraints3 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v46 = [constraints3 objectAtIndexedSubscript:1];
      [v46 constant];
      if (v47 != v36)
      {
        v44 = 1;
      }

      constraints4 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v49 = [constraints4 objectAtIndexedSubscript:2];
      [v49 constant];
      if (v50 != v37)
      {
        v44 = 1;
      }

      constraints5 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v52 = [constraints5 objectAtIndexedSubscript:3];
      [v52 constant];
      v54 = v53 != v38 || v44;

      constraints6 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v56 = [constraints6 objectAtIndexedSubscript:0];
      [v56 setConstant:rect];

      constraints7 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v58 = [constraints7 objectAtIndexedSubscript:1];
      [v58 setConstant:v36];

      constraints8 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v60 = [constraints8 objectAtIndexedSubscript:2];
      [v60 setConstant:v37];

      constraints9 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v62 = [constraints9 objectAtIndexedSubscript:3];
      [v62 setConstant:v38];

      constraints10 = [(SBUISystemApertureLayoutGuide *)self constraints];
      firstObject = [constraints10 firstObject];
      isActive = [firstObject isActive];

      if ((isActive & 1) == 0)
      {
        v66 = MEMORY[0x1E696ACD8];
        constraints11 = [(SBUISystemApertureLayoutGuide *)self constraints];
        [v66 activateConstraints:constraints11];
      }
    }

    else
    {
      centerXAnchor = [(SBUISystemApertureLayoutGuide *)self centerXAnchor];
      centerXAnchor2 = [owningView centerXAnchor];
      rectc = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:rect];
      v139[0] = rectc;
      [(SBUISystemApertureLayoutGuide *)self centerYAnchor];
      v68 = rect_24b = settings;
      [owningView centerYAnchor];
      v69 = rect_16a = identifier;
      v70 = [v68 constraintEqualToAnchor:v69 constant:v36];
      v139[1] = v70;
      widthAnchor = [(SBUISystemApertureLayoutGuide *)self widthAnchor];
      [widthAnchor constraintEqualToConstant:v37];
      v73 = v72 = owningView;
      v139[2] = v73;
      heightAnchor = [(SBUISystemApertureLayoutGuide *)self heightAnchor];
      v75 = [heightAnchor constraintEqualToConstant:v38];
      v139[3] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:4];

      owningView = v72;
      identifier = rect_16a;

      settings = rect_24b;
      [(SBUISystemApertureLayoutGuide *)self setConstraints:v76];
      [MEMORY[0x1E696ACD8] activateConstraints:v76];

      v54 = 1;
    }

    return v54;
  }

  if ([identifier isEqualToString:@"SBUISystemApertureLeadingAreaLayoutGuideIdentifier"])
  {
    [settings SBUISA_resolvedLeadingViewFrame];
    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"SBUISystemApertureTrailingAreaLayoutGuideIdentifier"])
  {
    [settings SBUISA_resolvedTrailingViewFrame];
    goto LABEL_10;
  }

  if ([identifier isEqualToString:@"SBUISystemApertureMinimalAreaLayoutGuideIdentifier"])
  {
    [settings SBUISA_resolvedMinimalViewFrame];
    goto LABEL_10;
  }

  recta = v11;
  if ([identifier isEqualToString:@"kSBUISystemApertureMinimumContentSizeLayoutMarginsGuideIdentifier"])
  {
    [windowCopy bounds];
    [windowCopy bounds];
    CGRectGetMinY(v150);
    [windowCopy bounds];
    MidX = CGRectGetMidX(v151);
    if (sBUISA_layoutMode != 2)
    {
      sBUISA_systemApertureObstructedAreaLayoutGuide = [owningView SBUISA_systemApertureObstructedAreaLayoutGuide];
      [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
      [windowCopy convertRect:owningView fromView:?];
      v81 = v80;
      v83 = v82;
      v85 = v84;
      v87 = v86;

      v152.origin.x = v81;
      v152.origin.y = v83;
      v152.size.width = v85;
      v152.size.height = v87;
      CGRectIsEmpty(v152);
    }

    [windowCopy bounds];
    v125 = 0;
    UIRectCenteredXInRectScale();
    v18 = v88;
    v19 = v89;
    v20 = v90;
    v21 = v91;
    goto LABEL_43;
  }

  if ([identifier isEqualToString:@"SBUISystemApertureMaximumContentSizeLayoutMarginsGuideIdentifier"])
  {
    sBUISA_systemApertureObstructedAreaLayoutGuide2 = [owningView SBUISA_systemApertureObstructedAreaLayoutGuide];
    [sBUISA_systemApertureObstructedAreaLayoutGuide2 layoutFrame];
    [windowCopy convertRect:owningView fromView:?];
    v94 = v93;
    MinY = v95;
    v98 = v97;
    v100 = v99;

    if (sBUISA_layoutMode != 4)
    {
      if (sBUISA_layoutMode == 3)
      {
        v105 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v105 maximumCompactSize];
        v107 = v106;
        v109 = v108;

        v153.origin.x = v94;
        v153.origin.y = MinY;
        v153.size.width = v98;
        v153.size.height = v100;
        MinY = CGRectGetMinY(v153);
        v110 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v110 maximumExpandedSize];
        v112 = v111;
        v154.origin.x = recta;
        v154.origin.y = MinY;
        v154.size.width = v107;
        v154.size.height = v109;
        v94 = (v112 - CGRectGetWidth(v154)) * 0.5;

        v100 = v109;
        v98 = v107;
        goto LABEL_42;
      }

      if (sBUISA_layoutMode != 2)
      {
        constraints12 = [(SBUISystemApertureLayoutGuide *)self constraints];
        v114 = [constraints12 count];

        if (v114)
        {
          [(SBUISystemApertureLayoutGuide *)self layoutFrame];
          [windowCopy convertRect:owningView fromView:?];
          v115 = v155.origin.y;
          v116 = v155.size.width;
          v117 = v155.size.height;
          rect_24a = v155.origin.x;
          v118 = CGRectGetWidth(v155);
          v156.origin.x = v94;
          v156.origin.y = MinY;
          v156.size.width = v98;
          v156.size.height = v100;
          if (v118 < CGRectGetWidth(v156))
          {
            v100 = v117;
            v98 = v116;
            MinY = v115;
            v94 = rect_24a;
          }
        }

        goto LABEL_42;
      }
    }

    [windowCopy bounds];
    v94 = v101;
    MinY = v102;
    v98 = v103;
    v100 = v104;
LABEL_42:
    v119 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
    [v119 maximumExpandedSize];

    BSRectWithSize();
    [windowCopy bounds];
    v125 = 0;
    UIRectCenteredXInRectScale();
    v160.origin.x = v120;
    v160.origin.y = v121;
    v160.size.width = v122;
    v160.size.height = v123;
    v157.origin.x = v94;
    v157.origin.y = MinY;
    v157.size.width = v98;
    v157.size.height = v100;
    v158 = CGRectIntersection(v157, v160);
    v18 = v158.origin.x;
    v19 = v158.origin.y;
    v20 = v158.size.width;
    v21 = v158.size.height;
LABEL_43:
    v11 = recta;
    goto LABEL_11;
  }

  v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled layout guide identifier"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateFixedFrameRootConstraintsWithWindow:];
  }

  [v124 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (BOOL)_createOrUpdateConcentricRootLayoutGuideWithWindow:(id)window
{
  v53[4] = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresFloatableFixedSize])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateConcentricRootLayoutGuideWithWindow:a2];
  }

  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  systemApertureHostedElementContext = [owningView systemApertureHostedElementContext];
  systemApertureElement = [systemApertureHostedElementContext systemApertureElement];
  view = [systemApertureElement view];

  windowScene = [windowCopy windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];

  [settings SBUISA_obstructedAreaLayoutFrame];
  v14 = v13;
  if (![view isDescendantOfView:owningView])
  {
    v23 = 0;
    goto LABEL_24;
  }

  v15 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v15 expandedConcentricAreaSize];
  v17 = v16;
  v19 = v18;

  sBUISA_layoutMode = [owningView SBUISA_layoutMode];
  v51 = settings;
  if ((sBUISA_layoutMode + 1) < 4)
  {
    v14 = v14 * 0.5;
LABEL_5:
    v19 = v14;
    goto LABEL_6;
  }

  if (sBUISA_layoutMode == 3)
  {
    goto LABEL_5;
  }

  if (sBUISA_layoutMode == 4)
  {
    v14 = v17;
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

LABEL_6:
  constraints = [(SBUISystemApertureLayoutGuide *)self constraints];
  if ([identifier isEqualToString:@"SBUISystemApertureLeadingConcentricContentLayoutGuideIdentifier"])
  {
    leadingAnchor = [view leadingAnchor];
    [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
  }

  else
  {
    leadingAnchor = [view trailingAnchor];
    [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
  }
  v24 = ;
  if ([constraints count])
  {
    v48 = v24;
    v25 = [constraints objectAtIndexedSubscript:0];
    [v25 constant];
    v50 = leadingAnchor;
    if (v26 == v14)
    {
      v27 = [constraints objectAtIndexedSubscript:1];
      [v27 constant];
      v23 = v28 != v19;
    }

    else
    {
      v23 = 1;
    }

    v35 = [constraints objectAtIndexedSubscript:0];
    [v35 setConstant:v14];

    v36 = [constraints objectAtIndexedSubscript:1];
    [v36 setConstant:v19];

    constraints2 = [(SBUISystemApertureLayoutGuide *)self constraints];
    firstObject = [constraints2 firstObject];
    if ([firstObject isActive])
    {
    }

    else
    {
      v39 = [owningView isDescendantOfView:view];

      if (v39)
      {
        v40 = MEMORY[0x1E696ACD8];
        constraints3 = [(SBUISystemApertureLayoutGuide *)self constraints];
        [v40 activateConstraints:constraints3];
      }
    }

    v24 = v48;
    v34 = v50;
  }

  else
  {
    widthAnchor = [(SBUISystemApertureLayoutGuide *)self widthAnchor];
    v46 = [widthAnchor constraintEqualToConstant:v14];
    v53[0] = v46;
    heightAnchor = [(SBUISystemApertureLayoutGuide *)self heightAnchor];
    v44 = [heightAnchor constraintEqualToConstant:v19];
    v53[1] = v44;
    topAnchor = [(SBUISystemApertureLayoutGuide *)self topAnchor];
    topAnchor2 = [view topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v53[2] = v30;
    [v24 constraintEqualToAnchor:leadingAnchor];
    v32 = v31 = leadingAnchor;
    v53[3] = v32;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    v33 = v49 = windowCopy;

    v34 = v31;
    [(SBUISystemApertureLayoutGuide *)self setConstraints:v33];
    [MEMORY[0x1E696ACD8] activateConstraints:v33];
    v23 = 1;
    constraints = v33;
    windowCopy = v49;
  }

  settings = v51;
LABEL_24:

  return v23;
}

- (BOOL)_createOrUpdateInsetBasedRootGuideWithWindow:(id)window
{
  v76[8] = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresInsets])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateInsetBasedRootGuideWithWindow:a2];
  }

  identifier = [(SBUISystemApertureLayoutGuide *)self identifier];
  owningView = [(SBUISystemApertureLayoutGuide *)self owningView];
  systemApertureHostedElementContext = [owningView systemApertureHostedElementContext];
  systemApertureElement = [systemApertureHostedElementContext systemApertureElement];
  view = [systemApertureElement view];

  LODWORD(systemApertureElement) = [view isDescendantOfView:owningView];
  if (systemApertureElement)
  {
    sBUISA_layoutMode = [owningView SBUISA_layoutMode];
    if (sBUISA_layoutMode == 4)
    {
      if ([identifier isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"])
      {
        v13 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v13 expandedLegibleAreaInsets];
        goto LABEL_9;
      }

      if ([identifier isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
      {
        sBUISA_systemApertureObstructedAreaLayoutGuide = [view SBUISA_systemApertureObstructedAreaLayoutGuide];
        [sBUISA_systemApertureObstructedAreaLayoutGuide layoutFrame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        v30 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v30 expandedControlsAreaInsets];
        v19 = v31;
        v12 = v32;
        v20 = v33;

        v77.origin.x = v23;
        v77.origin.y = v25;
        v77.size.width = v27;
        v77.size.height = v29;
        MaxY = CGRectGetMaxY(v77);
        goto LABEL_15;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled layout guide identifier"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SBUISystemApertureLayoutGuide _createOrUpdateInsetBasedRootGuideWithWindow:];
      }
    }

    else
    {
      v12 = *(MEMORY[0x1E69DC5C0] + 16);
      if (sBUISA_layoutMode != 3)
      {
        MaxY = *MEMORY[0x1E69DC5C0];
        v19 = *(MEMORY[0x1E69DC5C0] + 8);
        v20 = *(MEMORY[0x1E69DC5C0] + 24);
        goto LABEL_15;
      }

      if ([identifier isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"])
      {
        v13 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v13 compactLegibleAreaInsets];
LABEL_9:
        MaxY = v14;
        v19 = v15;
        v12 = v16;
        v20 = v17;

LABEL_15:
        constraints = [(SBUISystemApertureLayoutGuide *)self constraints];
        if ([constraints count])
        {
          v35 = [constraints objectAtIndexedSubscript:0];
          [v35 setConstant:MaxY];

          v36 = [constraints objectAtIndexedSubscript:1];
          [v36 setConstant:v19];

          v37 = [constraints objectAtIndexedSubscript:2];
          [v37 setConstant:-v12];

          v38 = [constraints objectAtIndexedSubscript:3];
          [v38 setConstant:-v20];
        }

        else
        {
          topAnchor = [(SBUISystemApertureLayoutGuide *)self topAnchor];
          topAnchor2 = [view topAnchor];
          v71 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:MaxY];
          LODWORD(v39) = 1148845916;
          v70 = [v71 SBUISA_withPriority:v39];
          v76[0] = v70;
          leadingAnchor = [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
          leadingAnchor2 = [view leadingAnchor];
          v67 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v19];
          LODWORD(v40) = 1148845916;
          v66 = [v67 SBUISA_withPriority:v40];
          v76[1] = v66;
          bottomAnchor = [(SBUISystemApertureLayoutGuide *)self bottomAnchor];
          bottomAnchor2 = [view bottomAnchor];
          v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-v12];
          LODWORD(v41) = 1148845916;
          v62 = [v63 SBUISA_withPriority:v41];
          v76[2] = v62;
          trailingAnchor = [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
          trailingAnchor2 = [view trailingAnchor];
          v59 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v20];
          LODWORD(v42) = 1148845916;
          v58 = [v59 SBUISA_withPriority:v42];
          v76[3] = v58;
          topAnchor3 = [(SBUISystemApertureLayoutGuide *)self topAnchor];
          topAnchor4 = [view topAnchor];
          v54 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
          v76[4] = v54;
          leadingAnchor3 = [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
          leadingAnchor4 = [view leadingAnchor];
          v51 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
          v76[5] = v51;
          bottomAnchor3 = [(SBUISystemApertureLayoutGuide *)self bottomAnchor];
          [view bottomAnchor];
          v43 = v74 = identifier;
          [bottomAnchor3 constraintLessThanOrEqualToAnchor:v43];
          v44 = v75 = windowCopy;
          v76[6] = v44;
          trailingAnchor3 = [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
          [view trailingAnchor];
          systemApertureElement = v46 = systemApertureElement;
          v47 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:systemApertureElement];
          v76[7] = v47;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:8];

          LOBYTE(systemApertureElement) = v46;
          windowCopy = v75;

          identifier = v74;
          constraints = v56;
          [(SBUISystemApertureLayoutGuide *)self setConstraints:v56];
          [MEMORY[0x1E696ACD8] activateConstraints:v56];
        }

        goto LABEL_19;
      }

      if ([identifier isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
      {
        MaxY = 5.0;
        v20 = 10.0;
        v19 = 10.0;
        goto LABEL_15;
      }

      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unhandled layout guide identifier"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [SBUISystemApertureLayoutGuide _createOrUpdateInsetBasedRootGuideWithWindow:];
      }
    }

    [v49 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1A9AAB1ACLL);
  }

LABEL_19:

  return systemApertureElement;
}

- (void)_createOrUpdateConstraintsIfIsRootAndInAWindow
{
  OUTLINED_FUNCTION_5();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_createOrUpdateFixedFrameRootConstraintsWithWindow:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Don't set a frame on a layout guide that doesn't require one."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createOrUpdateFixedFrameRootConstraintsWithWindow:.cold.2()
{
  OUTLINED_FUNCTION_5();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_createOrUpdateConcentricRootLayoutGuideWithWindow:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal attempt to use floatable fixed size"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createOrUpdateInsetBasedRootGuideWithWindow:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Illegal attempt to use inset based guide when fixed frame required"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_createOrUpdateInsetBasedRootGuideWithWindow:.cold.2()
{
  OUTLINED_FUNCTION_5();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_createOrUpdateInsetBasedRootGuideWithWindow:.cold.3()
{
  OUTLINED_FUNCTION_5();
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_6();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1A9A79000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

@end