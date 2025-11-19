@interface SBUISystemApertureLayoutGuide
+ (BOOL)prepareLayoutGuidesForViewControllerIfNeeded:(id)a3 onlyIfEmpty:(BOOL)a4;
+ (void)_addUnpreparedLayoutGuide:(id)a3;
+ (void)_enumerateSystemApertureRootLayoutGuidesForViewController:(id)a3 usingBlock:(id)a4;
+ (void)_enumerateUnpreparedSystemApertureLayoutGuides:(id)a3;
+ (void)_removeUnpreparedLayoutGuideIfNeeded:(id)a3;
- (BOOL)_createOrUpdateConcentricRootLayoutGuideWithWindow:(id)a3;
- (BOOL)_createOrUpdateConstraintsIfIsRootAndInAWindow;
- (BOOL)_createOrUpdateFixedFrameRootConstraintsWithWindow:(id)a3;
- (BOOL)_createOrUpdateInsetBasedRootGuideWithWindow:(id)a3;
- (BOOL)_requiresExplicitFrame;
- (BOOL)_requiresFloatableFixedSize;
- (BOOL)_requiresInitialSetup;
- (BOOL)_requiresInsets;
- (BOOL)constraintNeedsActivation:(id)a3;
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
  v3 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v4 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  if ([v3 _isInAWindow])
  {
    if (v4)
    {
      if (![(SBUISystemApertureLayoutGuide *)self _requiresInitialSetup])
      {
        v5 = [(SBUISystemApertureLayoutGuide *)self constraints];
        v6 = [v5 count];

        if (v6)
        {
          v7 = [(SBUISystemApertureLayoutGuide *)self constraints];
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __60__SBUISystemApertureLayoutGuide_activateConstraintsIfNeeded__block_invoke;
          v9[3] = &unk_1E789E918;
          v9[4] = self;
          v8 = [v7 bs_filter:v9];

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
  v2 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v3 = [v2 systemApertureElementContextPrivate];
  v4 = [v3 layoutGuideRootView];

  return v4;
}

- (BOOL)_requiresInitialSetup
{
  v3 = [(SBUISystemApertureLayoutGuide *)self constraints];
  v4 = [v3 count];

  if (!v4)
  {
    return 1;
  }

  v5 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v6 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];

  if (v5 == v6)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_currentRootGuideView);
  v8 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  v9 = WeakRetained != v8;

  return v9;
}

- (BOOL)_createOrUpdateConstraintsIfIsRootAndInAWindow
{
  v3 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v4 = [v3 window];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = v3;
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

  v10 = [(SBUISystemApertureLayoutGuide *)self _rootGuide];

  v11 = 0;
  if (v10 != self || !v6)
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
  v3 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
  v4 = [(SBUISystemApertureLayoutGuide *)self identifier];
  v5 = [v3 SBUISA_systemApertureLayoutGuideWithIdentifier:v4];
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
  v2 = [(SBUISystemApertureLayoutGuide *)self identifier];
  if ([v2 isEqualToString:@"SBUISystemApertureLeadingConcentricContentLayoutGuideIdentifier"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"SBUISystemApertureTrailingConcentricContentLayoutGuideIdentifier"];
  }

  return v3;
}

- (BOOL)_requiresInsets
{
  v2 = [(SBUISystemApertureLayoutGuide *)self identifier];
  if ([v2 isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"];
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

+ (BOOL)prepareLayoutGuidesForViewControllerIfNeeded:(id)a3 onlyIfEmpty:(BOOL)a4
{
  v6 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke;
  v12[3] = &unk_1E789E8A8;
  v13 = a4;
  v12[4] = &v14;
  [a1 _enumerateSystemApertureRootLayoutGuidesForViewController:v6 usingBlock:v12];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__SBUISystemApertureLayoutGuide_prepareLayoutGuidesForViewControllerIfNeeded_onlyIfEmpty___block_invoke_2;
  v9[3] = &unk_1E789E8D0;
  v7 = v6;
  v10 = v7;
  v11 = &v14;
  [a1 _enumerateUnpreparedSystemApertureLayoutGuides:v9];
  LOBYTE(a1) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return a1;
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

+ (void)_addUnpreparedLayoutGuide:(id)a3
{
  v3 = a3;
  v4 = SBUISystemApertureUnpreparedLayoutGuides;
  v7 = v3;
  if (!SBUISystemApertureUnpreparedLayoutGuides)
  {
    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v6 = SBUISystemApertureUnpreparedLayoutGuides;
    SBUISystemApertureUnpreparedLayoutGuides = v5;

    v3 = v7;
    v4 = SBUISystemApertureUnpreparedLayoutGuides;
  }

  [v4 addObject:v3];
}

+ (void)_removeUnpreparedLayoutGuideIfNeeded:(id)a3
{
  [SBUISystemApertureUnpreparedLayoutGuides removeObject:a3];
  if (![SBUISystemApertureUnpreparedLayoutGuides count])
  {
    v3 = SBUISystemApertureUnpreparedLayoutGuides;
    SBUISystemApertureUnpreparedLayoutGuides = 0;
  }
}

+ (void)_enumerateUnpreparedSystemApertureLayoutGuides:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [SBUISystemApertureUnpreparedLayoutGuides allObjects];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        v3[2](v3, *(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (void)_enumerateSystemApertureRootLayoutGuidesForViewController:(id)a3 usingBlock:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 systemApertureElementContextPrivate];
  v7 = [v6 layoutGuideRootView];

  v8 = [v7 layoutGuides];
  v9 = [v8 bs_compactMap:&__block_literal_global_12];

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

        v5[2](v5, *(*(&v15 + 1) + 8 * v14++));
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
    v3 = [(SBUISystemApertureLayoutGuide *)self owningView];
    v4 = [(SBUISystemApertureLayoutGuide *)self _rootGuideView];
    if (v4)
    {
      if (v3 == v4)
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

- (BOOL)constraintNeedsActivation:(id)a3
{
  v4 = a3;
  if ([v4 isActive])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 firstItem];

    v7 = [v4 secondItem];
    v8 = v7;
    if (v6 != self)
    {

      if (v8 == self)
      {
        v8 = [v4 firstItem];
      }

      else
      {
        v8 = 0;
      }
    }

    v9 = objc_opt_class();
    v10 = v8;
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

    v12 = v11;

    if (!v12)
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

      v12 = [(SBUISystemApertureLayoutGuide *)v16 owningView];
    }

    v17 = [(SBUISystemApertureLayoutGuide *)self owningView];
    v18 = v17;
    if (v12 && ([v17 isDescendantOfView:v12] & 1) == 0)
    {
      v5 = [(SBUISystemApertureLayoutGuide *)v12 isDescendantOfView:v18];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUISystemApertureLayoutGuide.m" lineNumber:220 description:@"Illegal attempt to activateConstraintsWithRootLayoutGuide when requiresInitialSetup is NO."];
}

- (BOOL)_createOrUpdateFixedFrameRootConstraintsWithWindow:(id)a3
{
  v139[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresExplicitFrame])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateFixedFrameRootConstraintsWithWindow:a2];
  }

  v6 = [v5 windowScene];
  v7 = [v6 _FBSScene];
  v8 = [v7 settings];

  v9 = [(SBUISystemApertureLayoutGuide *)self identifier];
  v10 = MEMORY[0x1E695F058];
  v11 = *MEMORY[0x1E695F058];
  v12 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v13 = [v12 SBUISA_layoutMode];
  if ([v9 isEqualToString:@"SBUISystemApertureObstructedAreaLayoutGuideIdentifier"])
  {
    [v8 SBUISA_obstructedAreaLayoutFrame];
LABEL_10:
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
LABEL_11:
    [v12 bounds];
    v23 = v22;
    rect_16 = v25;
    rect_24 = v24;
    v27 = v26;
    if (v12 != v5)
    {
      [v5 convertRect:v12 toView:{v18, v19, v20, v21}];
      v18 = v28;
      v19 = v29;
      v20 = v30;
      v21 = v31;
    }

    rect_8 = v5;
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
    v39 = [(SBUISystemApertureLayoutGuide *)self constraints];
    v40 = [v39 count];

    if (v40)
    {
      v41 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v42 = [v41 objectAtIndexedSubscript:0];
      [v42 constant];
      v44 = v43 != rect;

      v45 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v46 = [v45 objectAtIndexedSubscript:1];
      [v46 constant];
      if (v47 != v36)
      {
        v44 = 1;
      }

      v48 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v49 = [v48 objectAtIndexedSubscript:2];
      [v49 constant];
      if (v50 != v37)
      {
        v44 = 1;
      }

      v51 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v52 = [v51 objectAtIndexedSubscript:3];
      [v52 constant];
      v54 = v53 != v38 || v44;

      v55 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v56 = [v55 objectAtIndexedSubscript:0];
      [v56 setConstant:rect];

      v57 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v58 = [v57 objectAtIndexedSubscript:1];
      [v58 setConstant:v36];

      v59 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v60 = [v59 objectAtIndexedSubscript:2];
      [v60 setConstant:v37];

      v61 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v62 = [v61 objectAtIndexedSubscript:3];
      [v62 setConstant:v38];

      v63 = [(SBUISystemApertureLayoutGuide *)self constraints];
      v64 = [v63 firstObject];
      v65 = [v64 isActive];

      if ((v65 & 1) == 0)
      {
        v66 = MEMORY[0x1E696ACD8];
        v67 = [(SBUISystemApertureLayoutGuide *)self constraints];
        [v66 activateConstraints:v67];
      }
    }

    else
    {
      v128 = [(SBUISystemApertureLayoutGuide *)self centerXAnchor];
      v126 = [v12 centerXAnchor];
      rectc = [v128 constraintEqualToAnchor:v126 constant:rect];
      v139[0] = rectc;
      [(SBUISystemApertureLayoutGuide *)self centerYAnchor];
      v68 = rect_24b = v8;
      [v12 centerYAnchor];
      v69 = rect_16a = v9;
      v70 = [v68 constraintEqualToAnchor:v69 constant:v36];
      v139[1] = v70;
      v71 = [(SBUISystemApertureLayoutGuide *)self widthAnchor];
      [v71 constraintEqualToConstant:v37];
      v73 = v72 = v12;
      v139[2] = v73;
      v74 = [(SBUISystemApertureLayoutGuide *)self heightAnchor];
      v75 = [v74 constraintEqualToConstant:v38];
      v139[3] = v75;
      v76 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:4];

      v12 = v72;
      v9 = rect_16a;

      v8 = rect_24b;
      [(SBUISystemApertureLayoutGuide *)self setConstraints:v76];
      [MEMORY[0x1E696ACD8] activateConstraints:v76];

      v54 = 1;
    }

    return v54;
  }

  if ([v9 isEqualToString:@"SBUISystemApertureLeadingAreaLayoutGuideIdentifier"])
  {
    [v8 SBUISA_resolvedLeadingViewFrame];
    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"SBUISystemApertureTrailingAreaLayoutGuideIdentifier"])
  {
    [v8 SBUISA_resolvedTrailingViewFrame];
    goto LABEL_10;
  }

  if ([v9 isEqualToString:@"SBUISystemApertureMinimalAreaLayoutGuideIdentifier"])
  {
    [v8 SBUISA_resolvedMinimalViewFrame];
    goto LABEL_10;
  }

  recta = v11;
  if ([v9 isEqualToString:@"kSBUISystemApertureMinimumContentSizeLayoutMarginsGuideIdentifier"])
  {
    [v5 bounds];
    [v5 bounds];
    CGRectGetMinY(v150);
    [v5 bounds];
    MidX = CGRectGetMidX(v151);
    if (v13 != 2)
    {
      v79 = [v12 SBUISA_systemApertureObstructedAreaLayoutGuide];
      [v79 layoutFrame];
      [v5 convertRect:v12 fromView:?];
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

    [v5 bounds];
    v125 = 0;
    UIRectCenteredXInRectScale();
    v18 = v88;
    v19 = v89;
    v20 = v90;
    v21 = v91;
    goto LABEL_43;
  }

  if ([v9 isEqualToString:@"SBUISystemApertureMaximumContentSizeLayoutMarginsGuideIdentifier"])
  {
    v92 = [v12 SBUISA_systemApertureObstructedAreaLayoutGuide];
    [v92 layoutFrame];
    [v5 convertRect:v12 fromView:?];
    v94 = v93;
    MinY = v95;
    v98 = v97;
    v100 = v99;

    if (v13 != 4)
    {
      if (v13 == 3)
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

      if (v13 != 2)
      {
        v113 = [(SBUISystemApertureLayoutGuide *)self constraints];
        v114 = [v113 count];

        if (v114)
        {
          [(SBUISystemApertureLayoutGuide *)self layoutFrame];
          [v5 convertRect:v12 fromView:?];
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

    [v5 bounds];
    v94 = v101;
    MinY = v102;
    v98 = v103;
    v100 = v104;
LABEL_42:
    v119 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
    [v119 maximumExpandedSize];

    BSRectWithSize();
    [v5 bounds];
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

- (BOOL)_createOrUpdateConcentricRootLayoutGuideWithWindow:(id)a3
{
  v53[4] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresFloatableFixedSize])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateConcentricRootLayoutGuideWithWindow:a2];
  }

  v52 = [(SBUISystemApertureLayoutGuide *)self identifier];
  v6 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v7 = [v6 systemApertureHostedElementContext];
  v8 = [v7 systemApertureElement];
  v9 = [v8 view];

  v10 = [v5 windowScene];
  v11 = [v10 _FBSScene];
  v12 = [v11 settings];

  [v12 SBUISA_obstructedAreaLayoutFrame];
  v14 = v13;
  if (![v9 isDescendantOfView:v6])
  {
    v23 = 0;
    goto LABEL_24;
  }

  v15 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
  [v15 expandedConcentricAreaSize];
  v17 = v16;
  v19 = v18;

  v20 = [v6 SBUISA_layoutMode];
  v51 = v12;
  if ((v20 + 1) < 4)
  {
    v14 = v14 * 0.5;
LABEL_5:
    v19 = v14;
    goto LABEL_6;
  }

  if (v20 == 3)
  {
    goto LABEL_5;
  }

  if (v20 == 4)
  {
    v14 = v17;
  }

  else
  {
    v14 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

LABEL_6:
  v21 = [(SBUISystemApertureLayoutGuide *)self constraints];
  if ([v52 isEqualToString:@"SBUISystemApertureLeadingConcentricContentLayoutGuideIdentifier"])
  {
    v22 = [v9 leadingAnchor];
    [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
  }

  else
  {
    v22 = [v9 trailingAnchor];
    [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
  }
  v24 = ;
  if ([v21 count])
  {
    v48 = v24;
    v25 = [v21 objectAtIndexedSubscript:0];
    [v25 constant];
    v50 = v22;
    if (v26 == v14)
    {
      v27 = [v21 objectAtIndexedSubscript:1];
      [v27 constant];
      v23 = v28 != v19;
    }

    else
    {
      v23 = 1;
    }

    v35 = [v21 objectAtIndexedSubscript:0];
    [v35 setConstant:v14];

    v36 = [v21 objectAtIndexedSubscript:1];
    [v36 setConstant:v19];

    v37 = [(SBUISystemApertureLayoutGuide *)self constraints];
    v38 = [v37 firstObject];
    if ([v38 isActive])
    {
    }

    else
    {
      v39 = [v6 isDescendantOfView:v9];

      if (v39)
      {
        v40 = MEMORY[0x1E696ACD8];
        v41 = [(SBUISystemApertureLayoutGuide *)self constraints];
        [v40 activateConstraints:v41];
      }
    }

    v24 = v48;
    v34 = v50;
  }

  else
  {
    v47 = [(SBUISystemApertureLayoutGuide *)self widthAnchor];
    v46 = [v47 constraintEqualToConstant:v14];
    v53[0] = v46;
    v45 = [(SBUISystemApertureLayoutGuide *)self heightAnchor];
    v44 = [v45 constraintEqualToConstant:v19];
    v53[1] = v44;
    v43 = [(SBUISystemApertureLayoutGuide *)self topAnchor];
    v29 = [v9 topAnchor];
    v30 = [v43 constraintEqualToAnchor:v29];
    v53[2] = v30;
    [v24 constraintEqualToAnchor:v22];
    v32 = v31 = v22;
    v53[3] = v32;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:4];
    v33 = v49 = v5;

    v34 = v31;
    [(SBUISystemApertureLayoutGuide *)self setConstraints:v33];
    [MEMORY[0x1E696ACD8] activateConstraints:v33];
    v23 = 1;
    v21 = v33;
    v5 = v49;
  }

  v12 = v51;
LABEL_24:

  return v23;
}

- (BOOL)_createOrUpdateInsetBasedRootGuideWithWindow:(id)a3
{
  v76[8] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(SBUISystemApertureLayoutGuide *)self _requiresInsets])
  {
    [SBUISystemApertureLayoutGuide _createOrUpdateInsetBasedRootGuideWithWindow:a2];
  }

  v6 = [(SBUISystemApertureLayoutGuide *)self identifier];
  v7 = [(SBUISystemApertureLayoutGuide *)self owningView];
  v8 = [v7 systemApertureHostedElementContext];
  v10 = [v8 systemApertureElement];
  v9 = [v10 view];

  LODWORD(v10) = [v9 isDescendantOfView:v7];
  if (v10)
  {
    v11 = [v7 SBUISA_layoutMode];
    if (v11 == 4)
    {
      if ([v6 isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"])
      {
        v13 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v13 expandedLegibleAreaInsets];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
      {
        v21 = [v9 SBUISA_systemApertureObstructedAreaLayoutGuide];
        [v21 layoutFrame];
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
      if (v11 != 3)
      {
        MaxY = *MEMORY[0x1E69DC5C0];
        v19 = *(MEMORY[0x1E69DC5C0] + 8);
        v20 = *(MEMORY[0x1E69DC5C0] + 24);
        goto LABEL_15;
      }

      if ([v6 isEqualToString:@"SBUISystemApertureLegibleContentLayoutMarginsGuideIdentifier"])
      {
        v13 = +[SBUISystemApertureLayoutMetrics sharedInstanceForEmbeddedDisplay];
        [v13 compactLegibleAreaInsets];
LABEL_9:
        MaxY = v14;
        v19 = v15;
        v12 = v16;
        v20 = v17;

LABEL_15:
        v34 = [(SBUISystemApertureLayoutGuide *)self constraints];
        if ([v34 count])
        {
          v35 = [v34 objectAtIndexedSubscript:0];
          [v35 setConstant:MaxY];

          v36 = [v34 objectAtIndexedSubscript:1];
          [v36 setConstant:v19];

          v37 = [v34 objectAtIndexedSubscript:2];
          [v37 setConstant:-v12];

          v38 = [v34 objectAtIndexedSubscript:3];
          [v38 setConstant:-v20];
        }

        else
        {
          v73 = [(SBUISystemApertureLayoutGuide *)self topAnchor];
          v72 = [v9 topAnchor];
          v71 = [v73 constraintEqualToAnchor:v72 constant:MaxY];
          LODWORD(v39) = 1148845916;
          v70 = [v71 SBUISA_withPriority:v39];
          v76[0] = v70;
          v69 = [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
          v68 = [v9 leadingAnchor];
          v67 = [v69 constraintEqualToAnchor:v68 constant:v19];
          LODWORD(v40) = 1148845916;
          v66 = [v67 SBUISA_withPriority:v40];
          v76[1] = v66;
          v65 = [(SBUISystemApertureLayoutGuide *)self bottomAnchor];
          v64 = [v9 bottomAnchor];
          v63 = [v65 constraintEqualToAnchor:v64 constant:-v12];
          LODWORD(v41) = 1148845916;
          v62 = [v63 SBUISA_withPriority:v41];
          v76[2] = v62;
          v61 = [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
          v60 = [v9 trailingAnchor];
          v59 = [v61 constraintEqualToAnchor:v60 constant:-v20];
          LODWORD(v42) = 1148845916;
          v58 = [v59 SBUISA_withPriority:v42];
          v76[3] = v58;
          v57 = [(SBUISystemApertureLayoutGuide *)self topAnchor];
          v55 = [v9 topAnchor];
          v54 = [v57 constraintGreaterThanOrEqualToAnchor:v55];
          v76[4] = v54;
          v53 = [(SBUISystemApertureLayoutGuide *)self leadingAnchor];
          v52 = [v9 leadingAnchor];
          v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52];
          v76[5] = v51;
          v50 = [(SBUISystemApertureLayoutGuide *)self bottomAnchor];
          [v9 bottomAnchor];
          v43 = v74 = v6;
          [v50 constraintLessThanOrEqualToAnchor:v43];
          v44 = v75 = v5;
          v76[6] = v44;
          v45 = [(SBUISystemApertureLayoutGuide *)self trailingAnchor];
          [v9 trailingAnchor];
          v10 = v46 = v10;
          v47 = [v45 constraintLessThanOrEqualToAnchor:v10];
          v76[7] = v47;
          v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:8];

          LOBYTE(v10) = v46;
          v5 = v75;

          v6 = v74;
          v34 = v56;
          [(SBUISystemApertureLayoutGuide *)self setConstraints:v56];
          [MEMORY[0x1E696ACD8] activateConstraints:v56];
        }

        goto LABEL_19;
      }

      if ([v6 isEqualToString:@"SBUISystemApertureCustomControlsContentLayoutGuideIdentifier"])
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

  return v10;
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