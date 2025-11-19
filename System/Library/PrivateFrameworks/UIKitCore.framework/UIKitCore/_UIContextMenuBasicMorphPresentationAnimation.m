@interface _UIContextMenuBasicMorphPresentationAnimation
- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayoutForPresentedLayout:(SEL)a3 previewLayout:(id *)a4 anchor:(id *)a5;
- (BOOL)_hasVisibleBackground;
- (BOOL)_shouldAnimateBackgroundEffects;
- (_UIContextMenuBasicMorphPresentationAnimation)initWithUIController:(id)a3 asDismissal:(BOOL)a4;
- (id)_accessoryViews;
- (id)_backgroundView;
- (id)_containerView;
- (id)_dismissalPreviewForSecondaryItemPreview:(id)a3;
- (id)_menuView;
- (id)_platterTransitionView;
- (id)_platterView;
- (id)_secondarySourcePreviews;
- (id)_targetedPreviewForDismissalAnimation;
- (void)_actuallyPerformTransition;
- (void)_anchorTransitionViewToTargetedPreview:(id)a3;
- (void)_installAccessories;
- (void)_performReduceMotionAppearanceTransition;
- (void)_performReduceMotionDisappearanceTransition;
- (void)_prepareAnimatablePropertyBasedAnimations;
- (void)_prepareOverallAnimationCompletion;
- (void)_prepareReparentingAnimationWithDismissalTarget:(id)a3;
- (void)_presentation_applyBackgroundEffectWithProgress:(double)a3;
- (void)_setBackgroundVisible:(BOOL)a3;
- (void)_updateAccessoryAttachment:(id)a3;
- (void)performTransition;
- (void)prepareTransitionToView:(id)a3;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation _UIContextMenuBasicMorphPresentationAnimation

- (_UIContextMenuBasicMorphPresentationAnimation)initWithUIController:(id)a3 asDismissal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v21.receiver = self;
  v21.super_class = _UIContextMenuBasicMorphPresentationAnimation;
  v7 = [(_UIContextMenuPresentationAnimation *)&v21 initWithUIController:v6];
  v8 = v7;
  if (v7)
  {
    [(_UIContextMenuPresentationAnimation *)v7 setIsDismissTransition:v4];
    v9 = [(_UIContextMenuPresentationAnimation *)v8 uiController];
    v10 = [v9 flocker];
    [(_UIContextMenuBasicMorphPresentationAnimation *)v8 setIsSingleItemMenu:v10 == 0];

    if (v4)
    {
      objc_initWeak(&location, v8);
      v18 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v19, &location);
      v11 = [(_UIContextMenuPresentationAnimation *)v8 uiController:v18];
      v12 = [v11 flocker];
      [v12 setUnflockPreviewProvider:&v18];

      v13 = objc_opt_new();
      [(_UIContextMenuBasicMorphPresentationAnimation *)v8 setGroupCompletion:v13];

      v14 = [(_UIContextMenuBasicMorphPresentationAnimation *)v8 groupCompletion];
      v15 = [(_UIContextMenuPresentationAnimation *)v8 uiController];
      v16 = [v15 flocker];
      [v16 setGroupCompletion:v14];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v8;
}

- (void)prepareTransitionToView:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  v6 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  v7 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  v8 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  v9 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  if (v5)
  {
    v10 = [(_UIContextMenuPresentationAnimation *)self uiController];
    v11 = [v10 currentLayout];
    [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:v11];

    [v8 freezeExpandedPreview];
  }

  else
  {
    v12 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
    [v12 setAutoresizingMask:18];
    [v6 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21 = [(_UIContextMenuPresentationAnimation *)self uiController];
    v22 = [v21 menuStyle];
    [v22 preferredBackgroundInsets];
    [v12 setFrame:{v14 + v26, v16 + v23, v18 - (v26 + v24), v20 - (v23 + v25)}];

    v27 = _UIClickPresentationBackgroundColor(0);
    [v12 setBackgroundColor:v27];

    [v6 addSubview:v12];
    [v6 bounds];
    [v7 setFrame:?];
    [v7 setAutoresizingMask:18];
    [v6 addSubview:v7];
    [v7 addSubview:v8];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v28 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    _itemLayoutFromPreview(&v96, v28, v7, 1);

    v29 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    [v8 setCollapsedPreview:v29];

    v30 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    [v30 _transferAnimationsToView:v8];

    v76 = v4;
    if (![v8 alwaysCompact] || (objc_msgSend(v8, "collapsedPreview"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "parameters"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "copy"), v32, v4 = v76, v31, !v33))
    {
      v33 = _DefaultParametersForView(v4);
      if ((_UIApplicationProcessIsSpringBoard() & 1) == 0)
      {
        v34 = [v6 traitCollection];
        v35 = [v34 userInterfaceIdiom];

        if (v35 != 6)
        {
          v36 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
          v37 = [v36 parameters];
          [v37 backgroundColor];
          v39 = v38 = v33;
          [v38 setBackgroundColor:v39];

          v33 = v38;
        }

        v4 = v76;
      }
    }

    v75 = v33;
    v40 = [[UITargetedPreview alloc] initWithView:v4 parameters:v33];
    [v8 setExpandedPreview:v40];

    if (v9)
    {
      if (v8)
      {
        v41 = [(_UIContextMenuPresentationAnimation *)self uiController];
        v42 = [v41 menuStyle];
        v43 = [v42 previewOverlapsMenu];

        if (v43)
        {
          [v7 insertSubview:v9 belowSubview:v8];
        }

        else
        {
          [v7 insertSubview:v9 aboveSubview:v8];
        }
      }

      else
      {
        [v7 addSubview:v9];
      }

      v48 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v49 = [v48 currentLayout];
      [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:v49];

      v92 = v100;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v88 = v96;
      v89 = v97;
      v90 = v98;
      v91 = v99;
      _UIContextMenuItemLayoutApply(&v88, v8, 0);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v50 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v51 = v50;
      if (v50)
      {
        [v50 menu];
      }

      else
      {
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
      }

      v52 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v53 = v52;
      if (v52)
      {
        [v52 anchor];
      }

      else
      {
        v79 = 0;
        memset(v78, 0, sizeof(v78));
      }

      v77[4] = v100;
      v77[5] = v101;
      v77[6] = v102;
      v77[7] = v103;
      v77[0] = v96;
      v77[1] = v97;
      v77[2] = v98;
      v77[3] = v99;
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _dismissedMenuLayoutForPresentedLayout:&v80 previewLayout:v77 anchor:v78];

      v84 = v92;
      v85 = v93;
      v86 = v94;
      v87 = v95;
      v80 = v88;
      v81 = v89;
      v82 = v90;
      v83 = v91;
      v46 = &v80;
      v47 = v9;
    }

    else
    {
      v44 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v45 = [v44 currentLayout];
      [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:v45];

      v92 = v100;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v88 = v96;
      v89 = v97;
      v90 = v98;
      v91 = v99;
      v46 = &v88;
      v47 = v8;
    }

    _UIContextMenuItemLayoutApply(v46, v47, 0);
    [v8 layoutIfNeeded];
    [v9 layoutIfNeeded];
    if (![(_UIContextMenuBasicMorphPresentationAnimation *)self isSingleItemMenu])
    {
      v54 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v55 = [v54 flocker];

      v56 = [[UITargetedPreview alloc] initWithView:v8];
      [v55 setPrimaryPlatterPreview:v56];

      v57 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _secondarySourcePreviews];
      [v55 setSecondaryPlatterViews:v57];

      v58 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v59 = [v58 type];

      if (v59 == 3)
      {
        [v55 setSettings:3];
      }

      [v55 install];
    }

    v60 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v61 = [v60 type];

    v62 = v61 == 3;
    v63 = v61 == 3;
    if (!v62 || (-[_UIContextMenuPresentationAnimation uiController](self, "uiController"), v64 = objc_claimAutoreleasedReturnValue(), [v64 menuStyle], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "showsAccessoriesForCompactMenu"), v65, v64, v66))
    {
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _installAccessories];
    }

    v67 = [v6 traitCollection];
    v68 = _UIContextMenuGetPlatformMetrics([v67 userInterfaceIdiom]);

    v69 = [v68 previewShadowSettings];
    if (v69)
    {
      v70 = v69;
      v71 = [v68 previewShadowSettings];
      [v71 opacity];
      v73 = v72;

      v74 = v75;
      v4 = v76;
      if (v73 > 0.0)
      {
        v63 = [v68 enableShadowsForStandardSizeMenus];
      }
    }

    else
    {
      v74 = v75;
      v4 = v76;
    }

    [v9 setShowsShadow:v63];
  }
}

- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayoutForPresentedLayout:(SEL)a3 previewLayout:(id *)a4 anchor:(id *)a5
{
  x = a4->var1.x;
  y = a4->var1.y;
  z = a4->var1.z;
  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&v41, 0.2, 0.2);
  v13 = a4->var0.origin.x;
  v14 = a4->var0.origin.y;
  width = a4->var0.size.width;
  height = a4->var0.size.height;
  v42.origin.x = a4->var0.origin.x;
  v42.origin.y = v14;
  v42.size.width = width;
  v42.size.height = height;
  v17 = CGRectGetHeight(v42);
  v43.origin.x = v13;
  v43.origin.y = v14;
  v43.size.width = width;
  v43.size.height = height;
  v18 = CGRectGetWidth(v43);
  v19 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  v20 = [v19 type];

  if (v20 != 3)
  {
    v22 = *&a5->var3.b;
    v37 = *&a5->var2.y;
    v38 = v22;
    v23 = *&a5->var3.ty;
    v39 = *&a5->var3.d;
    v40 = v23;
    size = a5->var0.size;
    v34.origin = a5->var0.origin;
    v34.size = size;
    v25 = *&a5->var1.z;
    v35 = *&a5->var1.x;
    v36 = v25;
    v44.origin.x = _UIContextMenuItemFrameFromLayout(&v34);
    v26 = v44.origin.x;
    v27 = v44.origin.y;
    v28 = v44.size.width;
    v29 = v44.size.height;
    MinX = CGRectGetMinX(v44);
    v45.origin.x = v26;
    v45.origin.y = v27;
    v45.size.width = v28;
    v45.size.height = v29;
    v33 = fmax(MinX, fmin(a4->var1.x, CGRectGetMaxX(v45)));
    v46.origin.x = v26;
    v46.origin.y = v27;
    v46.size.width = v28;
    v46.size.height = v29;
    MinY = CGRectGetMinY(v46);
    v47.origin.x = v26;
    v47.origin.y = v27;
    v47.size.width = v28;
    v47.size.height = v29;
    x = v33;
    y = fmax(MinY, fmin(a4->var1.y, CGRectGetMaxY(v47)));
    z = a4->var1.z;
  }

  retstr->var0.origin.x = 0.0;
  retstr->var0.origin.y = 0.0;
  retstr->var0.size.width = v18;
  retstr->var0.size.height = fmin(v17, 110.0);
  retstr->var1.x = x;
  retstr->var1.y = y;
  retstr->var1.z = z;
  retstr->var2 = a4->var2;
  v32 = *&v41.c;
  *&retstr->var3.a = *&v41.a;
  *&retstr->var3.c = v32;
  *&retstr->var3.tx = *&v41.tx;
  retstr->var4 = 0.0;
  return result;
}

- (void)_anchorTransitionViewToTargetedPreview:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!-[_UIContextMenuBasicMorphPresentationAnimation _isDismissingToDrag](self, "_isDismissingToDrag") || ([v4 view], v5 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuBasicMorphPresentationAnimation _platterView](self, "_platterView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    if ([v4 _sourceViewIsInViewHierarchy])
    {
      v7 = [v4 view];
    }

    else
    {
      v8 = [v4 target];
      v7 = [v8 container];
    }

    v9 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
    v10 = [v9 layer];
    [v10 removeAnimationForKey:@"PlatterAnchorViewMatchMoveAnimation"];

    v11 = [v7 layer];
    v12 = objc_opt_new();
    [v12 setSourceLayer:v11];
    [v12 setKeyPath:@"position"];
    [v12 setDuration:INFINITY];
    [v9 center];
    v14 = v13;
    v16 = v15;
    v17 = [v9 superview];
    v18 = _UIContextMenuConvertPointBetweenViews(v17, v7, v14, v16, 0.0);
    v20 = v19;

    v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
    v24[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v12 setSourcePoints:v22];

    v23 = [v9 layer];
    [v23 addAnimation:v12 forKey:@"PlatterAnchorViewMatchMoveAnimation"];
  }
}

- (void)_actuallyPerformTransition
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  [(_UIContextMenuBasicMorphPresentationAnimation *)self _prepareAnimatablePropertyBasedAnimations];
  v4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  v5 = [v4 traitCollection];
  v38 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);

  v6 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  v7 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  v8 = [(_UIContextMenuBasicMorphPresentationAnimation *)self animationProgress];
  [v8 setValue:1.0];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  v10 = v9;
  if (v9)
  {
    [v9 preview];
  }

  else
  {
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v11 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  v12 = v11;
  if (v11)
  {
    [v11 menu];
  }

  else
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
  }

  if (v3)
  {
    v66 = 0;
    v67 = &v66;
    v68 = 0x3032000000;
    v69 = __Block_byref_object_copy__148;
    v70 = __Block_byref_object_dispose__148;
    v71 = 0;
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke;
    v65[3] = &unk_1E70FCDA0;
    v65[5] = &v66;
    v65[4] = self;
    [UIView performWithoutAnimation:v65];
    _itemLayoutFromPreview(location, v67[5], v4, [(_UIContextMenuPresentationAnimation *)self dismissalStyle]!= 1);
    v84 = v61;
    v85 = v62;
    v86 = v63;
    v87 = v64;
    v80 = *location;
    v81 = v58;
    v82 = v59;
    v83 = v60;
    if ([v67[5] _previewMode] != 4)
    {
      if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag])
      {
        v13 = [(_UIContextMenuPresentationAnimation *)self uiController];
        v14 = [v13 flocker];
        v15 = v14 == 0;

        if (v15)
        {
          *(&v87 + 1) = 0x3FE999999999999ALL;
        }
      }
    }

    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_2;
    v52[3] = &unk_1E7103C20;
    v56 = &v66;
    v16 = v4;
    v53 = v16;
    v54 = self;
    v17 = v6;
    v55 = v17;
    [UIView performWithoutAnimation:v52];
    v18 = [v67[5] target];
    v19 = [v18 container];
    v20 = v19 == v16;

    if (v20)
    {
      [v16 setAlpha:0.0];
    }

    if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag])
    {
      v21 = 1;
    }

    else
    {
      [v17 setHideChromeWhenCollapsed:1];
      v21 = 0;
    }

    [v17 setCollapsedShadowStyle:v21];
    v24 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v25 = v24;
    if (v24)
    {
      [v24 anchor];
    }

    else
    {
      v51 = 0;
      memset(v50, 0, sizeof(v50));
    }

    v49[4] = v76;
    v49[5] = v77;
    v49[6] = v78;
    v49[7] = v79;
    v49[0] = v72;
    v49[1] = v73;
    v49[2] = v74;
    v49[3] = v75;
    v48[4] = v84;
    v48[5] = v85;
    v48[6] = v86;
    v48[7] = v87;
    v48[0] = v80;
    v48[1] = v81;
    v48[2] = v82;
    v48[3] = v83;
    [(_UIContextMenuBasicMorphPresentationAnimation *)self _dismissedMenuLayoutForPresentedLayout:v49 previewLayout:v48 anchor:v50];
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v72 = *location;
    v73 = v58;
    v74 = v59;
    v75 = v60;

    _Block_object_dispose(&v66, 8);
    v23 = 0.0;
  }

  else
  {
    [v38 baseMenuOffset];
    v23 = v22;
  }

  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _hasVisibleBackground])
  {
    if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _shouldAnimateBackgroundEffects])
    {
      if (v3)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }

      v27 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v28 = [v27 backgroundViewAnimationProgress];
      [v28 setValue:v26];
    }

    else
    {
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _setBackgroundVisible:!v3];
    }
  }

  if (!v3 || [(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag]|| [(_UIContextMenuBasicMorphPresentationAnimation *)self isSingleItemMenu])
  {
    v61 = v84;
    v62 = v85;
    v63 = v86;
    v64 = v87;
    *location = v80;
    v58 = v81;
    v59 = v82;
    v60 = v83;
    _UIContextMenuItemLayoutApply(location, v6, 0);
  }

  else
  {
    [v6 setAlpha:*(&v87 + 1)];
  }

  v29 = [v6 layer];
  [v29 setZPosition:v23];

  [v6 setExpanded:!v3];
  [v6 layoutIfNeeded];
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  *location = v72;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  _UIContextMenuItemLayoutApply(location, v7, 0);
  [v7 layoutIfNeeded];
  if (!v3)
  {
    v30 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v31 = [v30 type] == 3;

    if (v31)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_3;
      v46[3] = &unk_1E70F3590;
      v47 = v7;
      [UIView _performWithoutRetargetingAnimations:v46];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _accessoryViews];
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v88 count:16];
  if (v33)
  {
    v34 = *v43;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(v32);
        }

        [(_UIContextMenuBasicMorphPresentationAnimation *)self _updateAccessoryAttachment:*(*(&v42 + 1) + 8 * i)];
      }

      v33 = [v32 countByEnumeratingWithState:&v42 objects:v88 count:16];
    }

    while (v33);
  }

  objc_initWeak(location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_4;
  v39[3] = &unk_1E7119FA8;
  v41 = !v3;
  objc_copyWeak(&v40, location);
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setAccessoryAnimationBlock:v39];
  [(_UIContextMenuPresentationAnimation *)self uiController];
  if (v3)
    v36 = {;
    v37 = [v36 flocker];
    [v37 unflockToDrag:-[_UIContextMenuBasicMorphPresentationAnimation _isDismissingToDrag](self animated:{"_isDismissingToDrag"), 1}];
  }

  else
    v36 = {;
    v37 = [v36 flocker];
    [v37 flock];
  }

  objc_destroyWeak(&v40);
  objc_destroyWeak(location);
}

- (void)performTransition
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___UIContextMenuBasicMorphPresentationAnimation_performTransition__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag]|| !_AXSReduceMotionEnabled())
  {
    [v4 setShouldMorphContents:1];
    v3[2](v3);
  }

  else
  {
    [v4 setShouldMorphContents:0];
    if ([(_UIContextMenuPresentationAnimation *)self isDismissTransition])
    {
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _performReduceMotionDisappearanceTransition];
    }

    else
    {
      [UIView performWithoutAnimation:v3];
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _performReduceMotionAppearanceTransition];
    }
  }

  if ([(_UIContextMenuPresentationAnimation *)self isDismissTransition])
  {
    [(_UIContextMenuPresentationAnimation *)self dismissalAlongsideAnimator];
  }

  else
  {
    [(_UIContextMenuPresentationAnimation *)self presentationAlongsideAnimator];
  }
  v5 = ;
  [v5 performAllAnimations];

  [(_UIContextMenuBasicMorphPresentationAnimation *)self _prepareOverallAnimationCompletion];
}

- (void)_performReduceMotionAppearanceTransition
{
  v3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __89___UIContextMenuBasicMorphPresentationAnimation__performReduceMotionAppearanceTransition__block_invoke;
  v8 = &unk_1E70F35B8;
  v9 = v3;
  v10 = self;
  v4 = v3;
  [UIView performWithoutAnimation:&v5];
  [v4 setAlpha:{1.0, v5, v6, v7, v8}];
}

- (void)_performReduceMotionDisappearanceTransition
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __92___UIContextMenuBasicMorphPresentationAnimation__performReduceMotionDisappearanceTransition__block_invoke;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [UIView performWithoutAnimation:v6];
  v3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  [v3 setAlpha:0.0];

  v4 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v5 = [v4 flocker];
  [v5 unflockToDrag:0 animated:0];
}

- (id)_targetedPreviewForDismissalAnimation
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v3 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v4 = [v3 dismissalPreviewForStyle:-[_UIContextMenuPresentationAnimation dismissalStyle](self clientReturnedPreview:{"dismissalStyle"), &v43}];

  if (v4)
  {
    v5 = v4;
    if ([(UITargetedPreview *)v5 _isVisible])
    {
LABEL_20:
      v32 = [(UITargetedPreview *)v5 view:*&v42.a];
      [v32 _bringAncestorControlledCollectionSubviewToFrontAmongCoplanarPeers];

      [(_UIContextMenuBasicMorphPresentationAnimation *)self setStashedDismissalPreview:v5];
      v33 = v5;
      goto LABEL_22;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      v8 = [(UITargetedPreview *)v5 view];
      v9 = [(UITargetedPreview *)v5 target];
      v10 = [v9 container];
      LODWORD(buf.m11) = 138412546;
      *(&buf.m11 + 4) = v8;
      WORD2(buf.m12) = 2112;
      *(&buf.m12 + 6) = v10;
      _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Dismissal preview with view %@ and container %@ is invalid. Its container must be in the view hierarchy, and both the container and view must not be hidden.", &buf, 0x16u);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &_targetedPreviewForDismissalAnimation___s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_15;
      }

      v7 = v6;
      v8 = [(UITargetedPreview *)v5 view];
      v9 = [(UITargetedPreview *)v5 target];
      v10 = [v9 container];
      LODWORD(buf.m11) = 138412546;
      *(&buf.m11 + 4) = v8;
      WORD2(buf.m12) = 2112;
      *(&buf.m12 + 6) = v10;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Dismissal preview with view %@ and container %@ is invalid. Its container must be in the view hierarchy, and both the container and view must not be hidden.", &buf, 0x16u);
    }

LABEL_7:
    goto LABEL_14;
  }

  if (v43)
  {
    goto LABEL_15;
  }

  v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
  if (![(UITargetedPreview *)v5 _sourceViewIsInViewHierarchy])
  {
    goto LABEL_14;
  }

  v7 = [(UITargetedPreview *)v5 view];
  v11 = [v7 _window];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = v11;
  v13 = [(UITargetedPreview *)v5 _isVisible];

  if (!v13)
  {
    goto LABEL_14;
  }

  v14 = [(UITargetedPreview *)v5 view];
  v15 = [v14 layer];
  v16 = [v15 presentationLayer];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v35 = [(UITargetedPreview *)v5 view];
    v18 = [v35 layer];
  }

  memset(&v42, 0, sizeof(v42));
  if (v18)
  {
    [v18 transform];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  CATransform3DGetAffineTransform(&v42, &buf);
  v36 = [UIPreviewTarget alloc];
  v37 = [(UITargetedPreview *)v5 target];
  v38 = [v37 container];
  v39 = [(UITargetedPreview *)v5 target];
  [v39 center];
  *&buf.m11 = *&v42.a;
  *&buf.m13 = *&v42.c;
  *&buf.m21 = *&v42.tx;
  v40 = [(UIPreviewTarget *)v36 initWithContainer:v38 center:&buf transform:?];

  v41 = [(UITargetedPreview *)v5 retargetedPreviewWithTarget:v40];

  v5 = v41;
  if (v41)
  {
    goto LABEL_20;
  }

LABEL_15:
  v19 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView:*&v42.a];
  if (v19)
  {
    v20 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
    [v19 setHidesCollapsedSourceView:0];
  }

  else
  {
    v20 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  }

  v21 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  v22 = [v21 _window];

  if (v22)
  {
    [v20 frame];
    v25 = v24 + v23 * 0.5;
    v28 = v27 + v26 * 0.5;
    memset(&buf, 0, 48);
    CGAffineTransformMakeScale(&buf, 0.35, 0.35);
    v29 = _DefaultParametersForView(v20);
    v30 = [UIPreviewTarget alloc];
    *&v42.a = *&buf.m11;
    *&v42.c = *&buf.m13;
    *&v42.tx = *&buf.m21;
    v31 = [(UIPreviewTarget *)v30 initWithContainer:v21 center:&v42 transform:v25, v28];
    v5 = [[UITargetedPreview alloc] initWithView:v20 parameters:v29 target:v31];

    goto LABEL_20;
  }

  v33 = 0;
LABEL_22:

  return v33;
}

- (id)_dismissalPreviewForSecondaryItemPreview:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v6 = [v4 _internalIdentifier];

  v7 = [v5 dismissalPreviewForSecondaryItem:v6 style:{-[_UIContextMenuPresentationAnimation dismissalStyle](self, "dismissalStyle")}];

  return v7;
}

- (void)transitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self groupCompletion];
  [v5 complete];

  if (v3)
  {
    if ([(_UIContextMenuPresentationAnimation *)self isDismissTransition])
    {
      [(_UIContextMenuPresentationAnimation *)self dismissalAlongsideAnimator];
    }

    else
    {
      v6 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
      [v6 didCompleteMenuAppearanceAnimation];

      [(_UIContextMenuPresentationAnimation *)self presentationAlongsideAnimator];
    }
    v7 = ;
    [v7 performAllCompletions];
  }
}

- (void)_prepareOverallAnimationCompletion
{
  if ([(_UIContextMenuPresentationAnimation *)self isDismissTransition])
  {
    if (![(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag])
    {
      v3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
      v4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self reparentingPortalView];
      v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self reparentingContainerView];
      v6 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
      v7 = [(_UIContextMenuBasicMorphPresentationAnimation *)self groupCompletion];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __83___UIContextMenuBasicMorphPresentationAnimation__prepareOverallAnimationCompletion__block_invoke;
      v12[3] = &unk_1E70F6B40;
      v13 = v3;
      v14 = v4;
      v15 = v5;
      v16 = v6;
      v8 = v6;
      v9 = v5;
      v10 = v4;
      v11 = v3;
      [v7 addCompletion:v12];
    }
  }
}

- (void)_prepareAnimatablePropertyBasedAnimations
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setAnimationProgress:v3];

  objc_initWeak(&location, self);
  v4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self animationProgress];
  v17[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_2;
  v13[3] = &unk_1E70F5A28;
  objc_copyWeak(&v14, &location);
  [UIView _createUnsafeTransformerWithInputAnimatableProperties:v5 modelValueSetter:&__block_literal_global_438 presentationValueSetter:v13];

  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _hasVisibleBackground])
  {
    v6 = [(_UIContextMenuPresentationAnimation *)self uiController];
    v7 = [v6 backgroundViewAnimationProgress];
    v16 = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_3;
    v11[3] = &unk_1E70F5A28;
    objc_copyWeak(&v12, &location);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_4;
    v9[3] = &unk_1E70F5A28;
    objc_copyWeak(&v10, &location);
    [UIView _createUnsafeTransformerWithInputAnimatableProperties:v8 modelValueSetter:v11 presentationValueSetter:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_presentation_applyBackgroundEffectWithProgress:(double)a3
{
  v5 = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  v6 = 0.3;
  if (!v5)
  {
    v6 = 0.0;
  }

  v7 = fmax(fmin((a3 - v6) / (1.0 - v6), 1.0), 0.0);
  v8 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
  v9 = [v8 _backgroundHost];
  v10 = [v9 contentView];

  if (v10)
  {
    v11 = (1.0 - v7) * 0.0;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 0.024 + v11];
    [v10 _setPresentationValue:v12 forKey:@"zoom"];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v7 + v7 * 0.5];
    [v10 _setPresentationValue:v13 forKey:@"scale"];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 10.0 + v11];
    [v10 _setPresentationValue:v14 forKey:@"filters.gaussianBlur.inputRadius"];
  }

  v15 = [v8 backgroundColor];
  v16 = +[UIColor clearColor];
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v17 = v15;
  [v16 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  [v17 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];

  v18 = [UIColor colorWithRed:(1.0 - v7) * v26 + v7 * v22 green:(1.0 - v7) * v25 + v7 * v21 blue:(1.0 - v7) * v24 + v7 * v20 alpha:(1.0 - v7) * v23 + v7 * v19];

  [v8 _setPresentationValue:objc_msgSend(v18 forKey:{"CGColor"), @"backgroundColor"}];
}

- (void)_prepareReparentingAnimationWithDismissalTarget:(id)a3
{
  v61[1] = *MEMORY[0x1E69E9840];
  v51 = a3;
  v4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [v4 superview];
  v14 = [v51 target];
  v15 = [v14 container];

  v16 = [_UIContextMenuReparentingContainerView alloc];
  [v4 bounds];
  v17 = [(UIView *)v16 initWithFrame:?];
  [(UIView *)v17 _setOverrideUserInterfaceRenderingMode:1];
  v18 = [v13 traitCollection];
  -[UIView setOverrideUserInterfaceStyle:](v17, "setOverrideUserInterfaceStyle:", [v18 userInterfaceStyle]);

  v19 = [v15 window];
  _UIGetTransformBetweenViews(v19, v15, 1, v60);
  *location = v60[0];
  v58 = v60[1];
  v59 = v60[2];
  [(UIView *)v17 setTransform:location];

  -[UIView _setFlipsHorizontalAxis:](v17, "_setFlipsHorizontalAxis:", [v15 _isRenderedHorizontallyFlipped]);
  [(UIView *)v17 setUserInteractionEnabled:0];
  v20 = [(UIView *)v4 _center3D];
  v23 = _UIContextMenuConvertPointBetweenViews(v13, v15, v20, v21, v22);
  [(UIView *)v17 _setCenter3D:v23, v24, v25];
  v26 = objc_opt_new();
  [(UIView *)v17 bounds];
  [v26 setFrame:?];
  v27 = [(UIView *)v17 layer];
  [v27 addSublayer:v26];

  v28 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v61[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  v30 = [(UIView *)v17 layer];
  [v30 setFilters:v29];

  v31 = [(UIView *)v17 layer];
  [v31 setValue:&unk_1EFE2E948 forKeyPath:@"filters.opacityPair.inputAmount"];

  [(_UIContextMenuBasicMorphPresentationAnimation *)self setReparentingContainerView:v17];
  v32 = [v51 view];
  [v15 insertSubview:v17 aboveSubview:v32];

  v33 = [[_UIPortalView alloc] initWithFrame:v6, v8, v10, v12];
  [(_UIPortalView *)v33 setSourceView:v4];
  [(_UIPortalView *)v33 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v33 setMatchesTransform:1];
  [(_UIPortalView *)v33 setMatchesPosition:1];
  v34 = [(UIView *)v33 layer];
  [v34 setAllowsGroupOpacity:1];

  [v13 addSubview:v33];
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setReparentingPortalView:v33];

  [(UIView *)v17 addSubview:v4];
  [(UIView *)v17 bounds];
  [v4 setCenter:{v36 + v35 * 0.5, v38 + v37 * 0.5}];
  v39 = [v15 _window];
  v40 = [v39 windowScene];
  v41 = [v13 _window];
  v42 = [v41 windowScene];
  v43 = v40 == v42;

  if (!v43)
  {
    v44 = [v15 _window];
    v45 = [v44 windowScene];
    [v45 _synchronizeDrawing];

    v46 = [v13 _window];
    v47 = [v46 windowScene];
    [v47 _synchronizeDrawing];
  }

  objc_initWeak(location, self);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __97___UIContextMenuBasicMorphPresentationAnimation__prepareReparentingAnimationWithDismissalTarget___block_invoke;
  v52[3] = &unk_1E7119FD0;
  objc_copyWeak(&v56, location);
  v48 = v17;
  v53 = v48;
  v49 = v51;
  v54 = v49;
  v50 = v4;
  v55 = v50;
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setReparentingAnimationBlock:v52];

  objc_destroyWeak(&v56);
  objc_destroyWeak(location);
}

- (void)_installAccessories
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _accessoryViews];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        if (v8)
        {
          [*(*(&v20 + 1) + 8 * i) anchor];
          v9 = v19 - 1;
          v10 = 0.5;
          v11 = 0.5;
          if ((v19 - 1) <= 7)
          {
            v10 = dbl_18A680B18[v9];
            v11 = dbl_18A680B58[v9];
          }
        }

        else
        {
          v10 = 0.5;
          v11 = 0.5;
          v19 = 0u;
        }

        if (*(&v19 + 1) == 8)
        {
          v12 = 1.0;
        }

        else
        {
          v12 = v11;
        }

        if (*(&v19 + 1) == 4)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = v10;
        }

        if (*(&v19 + 1) == 4)
        {
          v12 = v11;
        }

        if (*(&v19 + 1) == 2)
        {
          v14 = 0.0;
        }

        else
        {
          v14 = v11;
        }

        if (*(&v19 + 1) == 1)
        {
          v10 = 0.0;
        }

        else
        {
          v11 = v14;
        }

        if (*(&v19 + 1) <= 3)
        {
          v15 = v10;
        }

        else
        {
          v15 = v13;
        }

        if (*(&v19 + 1) <= 3)
        {
          v16 = v11;
        }

        else
        {
          v16 = v12;
        }

        if ([v8 location])
        {
          v17 = v15;
        }

        else
        {
          v17 = 0.0;
        }

        [v8 setAnchorPoint:{v16, v17}];
        v18 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
        [v18 addSubview:v8];

        [v8 setVisible:0 animated:0];
        [(_UIContextMenuBasicMorphPresentationAnimation *)self _updateAccessoryAttachment:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_updateAccessoryAttachment:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  v6 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v7 = [v6 menuConfiguration];
  v8 = [v7 sourcePreview];

  v9 = [v8 target];
  v10 = [v9 container];
  v11 = [v10 _window];

  v12 = [v4 location];
  if (v12 == 2)
  {
    v47 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v47 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
LABEL_7:
    v48 = v47;
    [v47 frame];
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;

    goto LABEL_9;
  }

  if (v12)
  {
    v43 = *MEMORY[0x1E695F058];
    v44 = *(MEMORY[0x1E695F058] + 8);
    v45 = *(MEMORY[0x1E695F058] + 16);
    v46 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [v11 bounds];
    v17 = _UIContextMenuProjectFrameFromViewToView_0(v11, v5, v13, v14, v15, v16);
    v76 = v18;
    v77 = v17;
    v78 = v19;
    v79 = v20;
    [v11 safeAreaInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = [v11 traitCollection];
    v30 = _UIContextMenuGetPlatformMetrics([v29 userInterfaceIdiom]);

    [v30 minimumContainerInsets];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = fmax(v22, v32);
    v40 = fmax(v24, v34);
    v41 = fmax(v26, v36);
    v42 = fmax(v28, v38);
    v43 = v77 + v40;
    v44 = v76 + v39;
    v45 = v78 - (v40 + v42);
    v46 = v79 - (v39 + v41);
  }

LABEL_9:
  v53 = [v5 traitCollection];
  v54 = _UIContextMenuGetPlatformMetrics([v53 userInterfaceIdiom]);

  [v54 baseMenuOffset];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if (v4)
  {
    [v4 anchor];
    v61 = v81 - 1;
    v62 = 0.5;
    v63 = 0.5;
    if ((v81 - 1) <= 7)
    {
      v62 = dbl_18A680B98[v61];
      v63 = dbl_18A680BD8[v61];
    }
  }

  else
  {
    v81 = 0u;
    v62 = 0.5;
    v63 = 0.5;
  }

  v64 = 1.0;
  if (*(&v81 + 1) == 8)
  {
    v65 = 1.0;
  }

  else
  {
    v65 = v63;
  }

  if (*(&v81 + 1) == 4)
  {
    v65 = v63;
  }

  else
  {
    v64 = v62;
  }

  if (*(&v81 + 1) == 2)
  {
    v66 = 0.0;
  }

  else
  {
    v66 = v63;
  }

  if (*(&v81 + 1) == 1)
  {
    v62 = 0.0;
  }

  else
  {
    v63 = v66;
  }

  if (*(&v81 + 1) > 3)
  {
    v62 = v64;
  }

  v80 = v62;
  if (*(&v81 + 1) <= 3)
  {
    v67 = v63;
  }

  else
  {
    v67 = v65;
  }

  [v4 attachmentOffsetWithReferenceFrame:{_UIContextMenuProjectFrameFromViewToView_0(v5, v11, v43, v44, v45, v46)}];
  v69 = v56 + v68;
  v71 = v58 + v70;
  [v4 setOffset:{v69, v71}];
  v72 = [v4 layer];
  [v72 setZPosition:v60];

  v82.origin.x = v43;
  v82.origin.y = v44;
  v82.size.width = v45;
  v82.size.height = v46;
  MinX = CGRectGetMinX(v82);
  v83.origin.x = v43;
  v83.origin.y = v44;
  v83.size.width = v45;
  v83.size.height = v46;
  v74 = v69 + MinX + v67 * CGRectGetWidth(v83);
  v84.origin.x = v43;
  v84.origin.y = v44;
  v84.size.width = v45;
  v84.size.height = v46;
  MinY = CGRectGetMinY(v84);
  v85.origin.x = v43;
  v85.origin.y = v44;
  v85.size.width = v45;
  v85.size.height = v46;
  [v4 setCenter:{v74, v71 + MinY + v80 * CGRectGetHeight(v85)}];
}

- (BOOL)_shouldAnimateBackgroundEffects
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return !v3 && !_AXSReduceMotionEnabled() && _AXSEnhanceBackgroundContrastEnabled() == 0;
}

- (id)_containerView
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 platterContainerView];

  return v3;
}

- (id)_platterTransitionView
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 platterTransitionView];

  return v3;
}

- (id)_backgroundView
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 backgroundEffectView];

  return v3;
}

- (id)_platterView
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 contentPlatterView];

  return v3;
}

- (id)_menuView
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 menuView];

  return v3;
}

- (id)_accessoryViews
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 menuConfiguration];
  v4 = [v3 accessoryViews];

  return v4;
}

- (id)_secondarySourcePreviews
{
  v2 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v3 = [v2 menuConfiguration];
  v4 = [v3 secondarySourcePreviews];

  return v4;
}

- (void)_setBackgroundVisible:(BOOL)a3
{
  v3 = a3;
  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _hasVisibleBackground])
  {
    v15 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
    if (v3)
    {
      v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v6 = [v5 type];

      v7 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v8 = [v7 menuStyle];
      v9 = [v8 preferredBackgroundEffects];

      if (v6 != 3 && ![v9 count])
      {
        v10 = _UIClickPresentationBackgroundEffects(1);

        v9 = v10;
      }

      [v15 setBackgroundEffects:v9];
      v11 = [(_UIContextMenuPresentationAnimation *)self uiController];
      v12 = [v11 menuStyle];
      v13 = [v12 preferredBackgroundColor];

      if (v6 != 3 && !v13)
      {
        v13 = _UIClickPresentationBackgroundColor(1);
      }

      [v15 setBackgroundColor:v13];
    }

    if (![(_UIContextMenuBasicMorphPresentationAnimation *)self _shouldAnimateBackgroundEffects])
    {
      v14 = 0.0;
      if (v3)
      {
        v14 = 1.0;
      }

      [v15 setAlpha:v14];
    }
  }
}

- (BOOL)_hasVisibleBackground
{
  v3 = [(_UIContextMenuPresentationAnimation *)self uiController];
  v4 = [v3 menuStyle];

  v5 = [v4 preferredBackgroundEffects];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v4 preferredBackgroundColor];

    if (v7)
    {
      v6 = 1;
      goto LABEL_6;
    }

    v5 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v6 = [v5 type] != 3;
  }

LABEL_6:
  return v6;
}

@end