@interface _UIContextMenuBasicMorphPresentationAnimation
- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayoutForPresentedLayout:(SEL)layout previewLayout:(id *)previewLayout anchor:(id *)anchor;
- (BOOL)_hasVisibleBackground;
- (BOOL)_shouldAnimateBackgroundEffects;
- (_UIContextMenuBasicMorphPresentationAnimation)initWithUIController:(id)controller asDismissal:(BOOL)dismissal;
- (id)_accessoryViews;
- (id)_backgroundView;
- (id)_containerView;
- (id)_dismissalPreviewForSecondaryItemPreview:(id)preview;
- (id)_menuView;
- (id)_platterTransitionView;
- (id)_platterView;
- (id)_secondarySourcePreviews;
- (id)_targetedPreviewForDismissalAnimation;
- (void)_actuallyPerformTransition;
- (void)_anchorTransitionViewToTargetedPreview:(id)preview;
- (void)_installAccessories;
- (void)_performReduceMotionAppearanceTransition;
- (void)_performReduceMotionDisappearanceTransition;
- (void)_prepareAnimatablePropertyBasedAnimations;
- (void)_prepareOverallAnimationCompletion;
- (void)_prepareReparentingAnimationWithDismissalTarget:(id)target;
- (void)_presentation_applyBackgroundEffectWithProgress:(double)progress;
- (void)_setBackgroundVisible:(BOOL)visible;
- (void)_updateAccessoryAttachment:(id)attachment;
- (void)performTransition;
- (void)prepareTransitionToView:(id)view;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation _UIContextMenuBasicMorphPresentationAnimation

- (_UIContextMenuBasicMorphPresentationAnimation)initWithUIController:(id)controller asDismissal:(BOOL)dismissal
{
  dismissalCopy = dismissal;
  controllerCopy = controller;
  v21.receiver = self;
  v21.super_class = _UIContextMenuBasicMorphPresentationAnimation;
  v7 = [(_UIContextMenuPresentationAnimation *)&v21 initWithUIController:controllerCopy];
  v8 = v7;
  if (v7)
  {
    [(_UIContextMenuPresentationAnimation *)v7 setIsDismissTransition:dismissalCopy];
    uiController = [(_UIContextMenuPresentationAnimation *)v8 uiController];
    flocker = [uiController flocker];
    [(_UIContextMenuBasicMorphPresentationAnimation *)v8 setIsSingleItemMenu:flocker == 0];

    if (dismissalCopy)
    {
      objc_initWeak(&location, v8);
      v18 = MEMORY[0x1E69E9820];
      objc_copyWeak(&v19, &location);
      v11 = [(_UIContextMenuPresentationAnimation *)v8 uiController:v18];
      flocker2 = [v11 flocker];
      [flocker2 setUnflockPreviewProvider:&v18];

      v13 = objc_opt_new();
      [(_UIContextMenuBasicMorphPresentationAnimation *)v8 setGroupCompletion:v13];

      groupCompletion = [(_UIContextMenuBasicMorphPresentationAnimation *)v8 groupCompletion];
      uiController2 = [(_UIContextMenuPresentationAnimation *)v8 uiController];
      flocker3 = [uiController2 flocker];
      [flocker3 setGroupCompletion:groupCompletion];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return v8;
}

- (void)prepareTransitionToView:(id)view
{
  viewCopy = view;
  isDismissTransition = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  _platterView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  _menuView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  if (isDismissTransition)
  {
    uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
    currentLayout = [uiController currentLayout];
    [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:currentLayout];

    [_platterView freezeExpandedPreview];
  }

  else
  {
    _backgroundView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
    [_backgroundView setAutoresizingMask:18];
    [_containerView bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    uiController2 = [(_UIContextMenuPresentationAnimation *)self uiController];
    menuStyle = [uiController2 menuStyle];
    [menuStyle preferredBackgroundInsets];
    [_backgroundView setFrame:{v14 + v26, v16 + v23, v18 - (v26 + v24), v20 - (v23 + v25)}];

    v27 = _UIClickPresentationBackgroundColor(0);
    [_backgroundView setBackgroundColor:v27];

    [_containerView addSubview:_backgroundView];
    [_containerView bounds];
    [_platterTransitionView setFrame:?];
    [_platterTransitionView setAutoresizingMask:18];
    [_containerView addSubview:_platterTransitionView];
    [_platterTransitionView addSubview:_platterView];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    sourcePreview = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    _itemLayoutFromPreview(&v96, sourcePreview, _platterTransitionView, 1);

    sourcePreview2 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    [_platterView setCollapsedPreview:sourcePreview2];

    sourcePreview3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
    [sourcePreview3 _transferAnimationsToView:_platterView];

    v76 = viewCopy;
    if (![_platterView alwaysCompact] || (objc_msgSend(_platterView, "collapsedPreview"), v31 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v31, "parameters"), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "copy"), v32, viewCopy = v76, v31, !v33))
    {
      v33 = _DefaultParametersForView(viewCopy);
      if ((_UIApplicationProcessIsSpringBoard() & 1) == 0)
      {
        traitCollection = [_containerView traitCollection];
        userInterfaceIdiom = [traitCollection userInterfaceIdiom];

        if (userInterfaceIdiom != 6)
        {
          sourcePreview4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
          parameters = [sourcePreview4 parameters];
          [parameters backgroundColor];
          v39 = v38 = v33;
          [v38 setBackgroundColor:v39];

          v33 = v38;
        }

        viewCopy = v76;
      }
    }

    v75 = v33;
    v40 = [[UITargetedPreview alloc] initWithView:viewCopy parameters:v33];
    [_platterView setExpandedPreview:v40];

    if (_menuView)
    {
      if (_platterView)
      {
        uiController3 = [(_UIContextMenuPresentationAnimation *)self uiController];
        menuStyle2 = [uiController3 menuStyle];
        previewOverlapsMenu = [menuStyle2 previewOverlapsMenu];

        if (previewOverlapsMenu)
        {
          [_platterTransitionView insertSubview:_menuView belowSubview:_platterView];
        }

        else
        {
          [_platterTransitionView insertSubview:_menuView aboveSubview:_platterView];
        }
      }

      else
      {
        [_platterTransitionView addSubview:_menuView];
      }

      uiController4 = [(_UIContextMenuPresentationAnimation *)self uiController];
      currentLayout2 = [uiController4 currentLayout];
      [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:currentLayout2];

      v92 = v100;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v88 = v96;
      v89 = v97;
      v90 = v98;
      v91 = v99;
      _UIContextMenuItemLayoutApply(&v88, _platterView, 0);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      expandedLayout = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v51 = expandedLayout;
      if (expandedLayout)
      {
        [expandedLayout menu];
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

      expandedLayout2 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      v53 = expandedLayout2;
      if (expandedLayout2)
      {
        [expandedLayout2 anchor];
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
      v47 = _menuView;
    }

    else
    {
      uiController5 = [(_UIContextMenuPresentationAnimation *)self uiController];
      currentLayout3 = [uiController5 currentLayout];
      [(_UIContextMenuBasicMorphPresentationAnimation *)self setExpandedLayout:currentLayout3];

      v92 = v100;
      v93 = v101;
      v94 = v102;
      v95 = v103;
      v88 = v96;
      v89 = v97;
      v90 = v98;
      v91 = v99;
      v46 = &v88;
      v47 = _platterView;
    }

    _UIContextMenuItemLayoutApply(v46, v47, 0);
    [_platterView layoutIfNeeded];
    [_menuView layoutIfNeeded];
    if (![(_UIContextMenuBasicMorphPresentationAnimation *)self isSingleItemMenu])
    {
      uiController6 = [(_UIContextMenuPresentationAnimation *)self uiController];
      flocker = [uiController6 flocker];

      v56 = [[UITargetedPreview alloc] initWithView:_platterView];
      [flocker setPrimaryPlatterPreview:v56];

      _secondarySourcePreviews = [(_UIContextMenuBasicMorphPresentationAnimation *)self _secondarySourcePreviews];
      [flocker setSecondaryPlatterViews:_secondarySourcePreviews];

      expandedLayout3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      type = [expandedLayout3 type];

      if (type == 3)
      {
        [flocker setSettings:3];
      }

      [flocker install];
    }

    expandedLayout4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    type2 = [expandedLayout4 type];

    v62 = type2 == 3;
    enableShadowsForStandardSizeMenus = type2 == 3;
    if (!v62 || (-[_UIContextMenuPresentationAnimation uiController](self, "uiController"), v64 = objc_claimAutoreleasedReturnValue(), [v64 menuStyle], v65 = objc_claimAutoreleasedReturnValue(), v66 = objc_msgSend(v65, "showsAccessoriesForCompactMenu"), v65, v64, v66))
    {
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _installAccessories];
    }

    traitCollection2 = [_containerView traitCollection];
    v68 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

    previewShadowSettings = [v68 previewShadowSettings];
    if (previewShadowSettings)
    {
      v70 = previewShadowSettings;
      previewShadowSettings2 = [v68 previewShadowSettings];
      [previewShadowSettings2 opacity];
      v73 = v72;

      v74 = v75;
      viewCopy = v76;
      if (v73 > 0.0)
      {
        enableShadowsForStandardSizeMenus = [v68 enableShadowsForStandardSizeMenus];
      }
    }

    else
    {
      v74 = v75;
      viewCopy = v76;
    }

    [_menuView setShowsShadow:enableShadowsForStandardSizeMenus];
  }
}

- ($670CA482A27156A98D0A7E5F20B9370A)_dismissedMenuLayoutForPresentedLayout:(SEL)layout previewLayout:(id *)previewLayout anchor:(id *)anchor
{
  x = previewLayout->var1.x;
  y = previewLayout->var1.y;
  z = previewLayout->var1.z;
  memset(&v41, 0, sizeof(v41));
  CGAffineTransformMakeScale(&v41, 0.2, 0.2);
  v13 = previewLayout->var0.origin.x;
  v14 = previewLayout->var0.origin.y;
  width = previewLayout->var0.size.width;
  height = previewLayout->var0.size.height;
  v42.origin.x = previewLayout->var0.origin.x;
  v42.origin.y = v14;
  v42.size.width = width;
  v42.size.height = height;
  v17 = CGRectGetHeight(v42);
  v43.origin.x = v13;
  v43.origin.y = v14;
  v43.size.width = width;
  v43.size.height = height;
  v18 = CGRectGetWidth(v43);
  expandedLayout = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  type = [expandedLayout type];

  if (type != 3)
  {
    v22 = *&anchor->var3.b;
    v37 = *&anchor->var2.y;
    v38 = v22;
    v23 = *&anchor->var3.ty;
    v39 = *&anchor->var3.d;
    v40 = v23;
    size = anchor->var0.size;
    v34.origin = anchor->var0.origin;
    v34.size = size;
    v25 = *&anchor->var1.z;
    v35 = *&anchor->var1.x;
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
    v33 = fmax(MinX, fmin(previewLayout->var1.x, CGRectGetMaxX(v45)));
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
    y = fmax(MinY, fmin(previewLayout->var1.y, CGRectGetMaxY(v47)));
    z = previewLayout->var1.z;
  }

  retstr->var0.origin.x = 0.0;
  retstr->var0.origin.y = 0.0;
  retstr->var0.size.width = v18;
  retstr->var0.size.height = fmin(v17, 110.0);
  retstr->var1.x = x;
  retstr->var1.y = y;
  retstr->var1.z = z;
  retstr->var2 = previewLayout->var2;
  v32 = *&v41.c;
  *&retstr->var3.a = *&v41.a;
  *&retstr->var3.c = v32;
  *&retstr->var3.tx = *&v41.tx;
  retstr->var4 = 0.0;
  return result;
}

- (void)_anchorTransitionViewToTargetedPreview:(id)preview
{
  v24[1] = *MEMORY[0x1E69E9840];
  previewCopy = preview;
  if (!-[_UIContextMenuBasicMorphPresentationAnimation _isDismissingToDrag](self, "_isDismissingToDrag") || ([previewCopy view], v5 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuBasicMorphPresentationAnimation _platterView](self, "_platterView"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    if ([previewCopy _sourceViewIsInViewHierarchy])
    {
      view = [previewCopy view];
    }

    else
    {
      target = [previewCopy target];
      view = [target container];
    }

    _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
    layer = [_platterTransitionView layer];
    [layer removeAnimationForKey:@"PlatterAnchorViewMatchMoveAnimation"];

    layer2 = [view layer];
    v12 = objc_opt_new();
    [v12 setSourceLayer:layer2];
    [v12 setKeyPath:@"position"];
    [v12 setDuration:INFINITY];
    [_platterTransitionView center];
    v14 = v13;
    v16 = v15;
    superview = [_platterTransitionView superview];
    v18 = _UIContextMenuConvertPointBetweenViews(superview, view, v14, v16, 0.0);
    v20 = v19;

    v21 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
    v24[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    [v12 setSourcePoints:v22];

    layer3 = [_platterTransitionView layer];
    [layer3 addAnimation:v12 forKey:@"PlatterAnchorViewMatchMoveAnimation"];
  }
}

- (void)_actuallyPerformTransition
{
  v89 = *MEMORY[0x1E69E9840];
  isDismissTransition = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  [(_UIContextMenuBasicMorphPresentationAnimation *)self _prepareAnimatablePropertyBasedAnimations];
  _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  traitCollection = [_platterTransitionView traitCollection];
  v38 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  _platterView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  _menuView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  animationProgress = [(_UIContextMenuBasicMorphPresentationAnimation *)self animationProgress];
  [animationProgress setValue:1.0];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  expandedLayout = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  v10 = expandedLayout;
  if (expandedLayout)
  {
    [expandedLayout preview];
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
  expandedLayout2 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
  v12 = expandedLayout2;
  if (expandedLayout2)
  {
    [expandedLayout2 menu];
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

  if (isDismissTransition)
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
    _itemLayoutFromPreview(location, v67[5], _platterTransitionView, [(_UIContextMenuPresentationAnimation *)self dismissalStyle]!= 1);
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
        uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
        flocker = [uiController flocker];
        v15 = flocker == 0;

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
    v16 = _platterTransitionView;
    v53 = v16;
    selfCopy = self;
    v17 = _platterView;
    v55 = v17;
    [UIView performWithoutAnimation:v52];
    target = [v67[5] target];
    container = [target container];
    v20 = container == v16;

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
    expandedLayout3 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v25 = expandedLayout3;
    if (expandedLayout3)
    {
      [expandedLayout3 anchor];
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
      if (isDismissTransition)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = 1.0;
      }

      uiController2 = [(_UIContextMenuPresentationAnimation *)self uiController];
      backgroundViewAnimationProgress = [uiController2 backgroundViewAnimationProgress];
      [backgroundViewAnimationProgress setValue:v26];
    }

    else
    {
      [(_UIContextMenuBasicMorphPresentationAnimation *)self _setBackgroundVisible:!isDismissTransition];
    }
  }

  if (!isDismissTransition || [(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag]|| [(_UIContextMenuBasicMorphPresentationAnimation *)self isSingleItemMenu])
  {
    v61 = v84;
    v62 = v85;
    v63 = v86;
    v64 = v87;
    *location = v80;
    v58 = v81;
    v59 = v82;
    v60 = v83;
    _UIContextMenuItemLayoutApply(location, _platterView, 0);
  }

  else
  {
    [_platterView setAlpha:*(&v87 + 1)];
  }

  layer = [_platterView layer];
  [layer setZPosition:v23];

  [_platterView setExpanded:!isDismissTransition];
  [_platterView layoutIfNeeded];
  v61 = v76;
  v62 = v77;
  v63 = v78;
  v64 = v79;
  *location = v72;
  v58 = v73;
  v59 = v74;
  v60 = v75;
  _UIContextMenuItemLayoutApply(location, _menuView, 0);
  [_menuView layoutIfNeeded];
  if (!isDismissTransition)
  {
    expandedLayout4 = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v31 = [expandedLayout4 type] == 3;

    if (v31)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_3;
      v46[3] = &unk_1E70F3590;
      v47 = _menuView;
      [UIView _performWithoutRetargetingAnimations:v46];
    }
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  _accessoryViews = [(_UIContextMenuBasicMorphPresentationAnimation *)self _accessoryViews];
  v33 = [_accessoryViews countByEnumeratingWithState:&v42 objects:v88 count:16];
  if (v33)
  {
    v34 = *v43;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v43 != v34)
        {
          objc_enumerationMutation(_accessoryViews);
        }

        [(_UIContextMenuBasicMorphPresentationAnimation *)self _updateAccessoryAttachment:*(*(&v42 + 1) + 8 * i)];
      }

      v33 = [_accessoryViews countByEnumeratingWithState:&v42 objects:v88 count:16];
    }

    while (v33);
  }

  objc_initWeak(location, self);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __75___UIContextMenuBasicMorphPresentationAnimation__actuallyPerformTransition__block_invoke_4;
  v39[3] = &unk_1E7119FA8;
  v41 = !isDismissTransition;
  objc_copyWeak(&v40, location);
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setAccessoryAnimationBlock:v39];
  [(_UIContextMenuPresentationAnimation *)self uiController];
  if (isDismissTransition)
    v36 = {;
    flocker2 = [v36 flocker];
    [flocker2 unflockToDrag:-[_UIContextMenuBasicMorphPresentationAnimation _isDismissingToDrag](self animated:{"_isDismissingToDrag"), 1}];
  }

  else
    v36 = {;
    flocker2 = [v36 flocker];
    [flocker2 flock];
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
  _platterView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _isDismissingToDrag]|| !_AXSReduceMotionEnabled())
  {
    [_platterView setShouldMorphContents:1];
    v3[2](v3);
  }

  else
  {
    [_platterView setShouldMorphContents:0];
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
  _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __89___UIContextMenuBasicMorphPresentationAnimation__performReduceMotionAppearanceTransition__block_invoke;
  v8 = &unk_1E70F35B8;
  v9 = _containerView;
  selfCopy = self;
  v4 = _containerView;
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
  _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  [_containerView setAlpha:0.0];

  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  flocker = [uiController flocker];
  [flocker unflockToDrag:0 animated:0];
}

- (id)_targetedPreviewForDismissalAnimation
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0;
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  v4 = [uiController dismissalPreviewForStyle:-[_UIContextMenuPresentationAnimation dismissalStyle](self clientReturnedPreview:{"dismissalStyle"), &v43}];

  if (v4)
  {
    sourcePreview = v4;
    if ([(UITargetedPreview *)sourcePreview _isVisible])
    {
LABEL_20:
      v32 = [(UITargetedPreview *)sourcePreview view:*&v42.a];
      [v32 _bringAncestorControlledCollectionSubviewToFrontAmongCoplanarPeers];

      [(_UIContextMenuBasicMorphPresentationAnimation *)self setStashedDismissalPreview:sourcePreview];
      v33 = sourcePreview;
      goto LABEL_22;
    }

    if (os_variant_has_internal_diagnostics())
    {
      view2 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(view2, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_7;
      }

      view = [(UITargetedPreview *)sourcePreview view];
      target = [(UITargetedPreview *)sourcePreview target];
      container = [target container];
      LODWORD(buf.m11) = 138412546;
      *(&buf.m11 + 4) = view;
      WORD2(buf.m12) = 2112;
      *(&buf.m12 + 6) = container;
      _os_log_fault_impl(&dword_188A29000, view2, OS_LOG_TYPE_FAULT, "Dismissal preview with view %@ and container %@ is invalid. Its container must be in the view hierarchy, and both the container and view must not be hidden.", &buf, 0x16u);
    }

    else
    {
      v6 = *(__UILogGetCategoryCachedImpl("Assert", &_targetedPreviewForDismissalAnimation___s_category) + 8);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
LABEL_14:

        goto LABEL_15;
      }

      view2 = v6;
      view = [(UITargetedPreview *)sourcePreview view];
      target = [(UITargetedPreview *)sourcePreview target];
      container = [target container];
      LODWORD(buf.m11) = 138412546;
      *(&buf.m11 + 4) = view;
      WORD2(buf.m12) = 2112;
      *(&buf.m12 + 6) = container;
      _os_log_impl(&dword_188A29000, view2, OS_LOG_TYPE_ERROR, "Dismissal preview with view %@ and container %@ is invalid. Its container must be in the view hierarchy, and both the container and view must not be hidden.", &buf, 0x16u);
    }

LABEL_7:
    goto LABEL_14;
  }

  if (v43)
  {
    goto LABEL_15;
  }

  sourcePreview = [(_UIContextMenuBasicMorphPresentationAnimation *)self sourcePreview];
  if (![(UITargetedPreview *)sourcePreview _sourceViewIsInViewHierarchy])
  {
    goto LABEL_14;
  }

  view2 = [(UITargetedPreview *)sourcePreview view];
  _window = [view2 _window];
  if (!_window)
  {
    goto LABEL_7;
  }

  v12 = _window;
  _isVisible = [(UITargetedPreview *)sourcePreview _isVisible];

  if (!_isVisible)
  {
    goto LABEL_14;
  }

  view3 = [(UITargetedPreview *)sourcePreview view];
  layer = [view3 layer];
  presentationLayer = [layer presentationLayer];
  v17 = presentationLayer;
  if (presentationLayer)
  {
    layer2 = presentationLayer;
  }

  else
  {
    view4 = [(UITargetedPreview *)sourcePreview view];
    layer2 = [view4 layer];
  }

  memset(&v42, 0, sizeof(v42));
  if (layer2)
  {
    [layer2 transform];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  CATransform3DGetAffineTransform(&v42, &buf);
  v36 = [UIPreviewTarget alloc];
  target2 = [(UITargetedPreview *)sourcePreview target];
  container2 = [target2 container];
  target3 = [(UITargetedPreview *)sourcePreview target];
  [target3 center];
  *&buf.m11 = *&v42.a;
  *&buf.m13 = *&v42.c;
  *&buf.m21 = *&v42.tx;
  v40 = [(UIPreviewTarget *)v36 initWithContainer:container2 center:&buf transform:?];

  v41 = [(UITargetedPreview *)sourcePreview retargetedPreviewWithTarget:v40];

  sourcePreview = v41;
  if (v41)
  {
    goto LABEL_20;
  }

LABEL_15:
  v19 = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView:*&v42.a];
  if (v19)
  {
    _platterView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
    [v19 setHidesCollapsedSourceView:0];
  }

  else
  {
    _platterView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
  }

  _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  _window2 = [_platterTransitionView _window];

  if (_window2)
  {
    [_platterView frame];
    v25 = v24 + v23 * 0.5;
    v28 = v27 + v26 * 0.5;
    memset(&buf, 0, 48);
    CGAffineTransformMakeScale(&buf, 0.35, 0.35);
    v29 = _DefaultParametersForView(_platterView);
    v30 = [UIPreviewTarget alloc];
    *&v42.a = *&buf.m11;
    *&v42.c = *&buf.m13;
    *&v42.tx = *&buf.m21;
    v31 = [(UIPreviewTarget *)v30 initWithContainer:_platterTransitionView center:&v42 transform:v25, v28];
    sourcePreview = [[UITargetedPreview alloc] initWithView:_platterView parameters:v29 target:v31];

    goto LABEL_20;
  }

  v33 = 0;
LABEL_22:

  return v33;
}

- (id)_dismissalPreviewForSecondaryItemPreview:(id)preview
{
  previewCopy = preview;
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  _internalIdentifier = [previewCopy _internalIdentifier];

  v7 = [uiController dismissalPreviewForSecondaryItem:_internalIdentifier style:{-[_UIContextMenuPresentationAnimation dismissalStyle](self, "dismissalStyle")}];

  return v7;
}

- (void)transitionDidEnd:(BOOL)end
{
  endCopy = end;
  groupCompletion = [(_UIContextMenuBasicMorphPresentationAnimation *)self groupCompletion];
  [groupCompletion complete];

  if (endCopy)
  {
    if ([(_UIContextMenuPresentationAnimation *)self isDismissTransition])
    {
      [(_UIContextMenuPresentationAnimation *)self dismissalAlongsideAnimator];
    }

    else
    {
      _menuView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
      [_menuView didCompleteMenuAppearanceAnimation];

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
      _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
      reparentingPortalView = [(_UIContextMenuBasicMorphPresentationAnimation *)self reparentingPortalView];
      reparentingContainerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self reparentingContainerView];
      _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
      groupCompletion = [(_UIContextMenuBasicMorphPresentationAnimation *)self groupCompletion];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __83___UIContextMenuBasicMorphPresentationAnimation__prepareOverallAnimationCompletion__block_invoke;
      v12[3] = &unk_1E70F6B40;
      v13 = _containerView;
      v14 = reparentingPortalView;
      v15 = reparentingContainerView;
      v16 = _platterTransitionView;
      v8 = _platterTransitionView;
      v9 = reparentingContainerView;
      v10 = reparentingPortalView;
      v11 = _containerView;
      [groupCompletion addCompletion:v12];
    }
  }
}

- (void)_prepareAnimatablePropertyBasedAnimations
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setAnimationProgress:v3];

  objc_initWeak(&location, self);
  animationProgress = [(_UIContextMenuBasicMorphPresentationAnimation *)self animationProgress];
  v17[0] = animationProgress;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __90___UIContextMenuBasicMorphPresentationAnimation__prepareAnimatablePropertyBasedAnimations__block_invoke_2;
  v13[3] = &unk_1E70F5A28;
  objc_copyWeak(&v14, &location);
  [UIView _createUnsafeTransformerWithInputAnimatableProperties:v5 modelValueSetter:&__block_literal_global_438 presentationValueSetter:v13];

  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _hasVisibleBackground])
  {
    uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
    backgroundViewAnimationProgress = [uiController backgroundViewAnimationProgress];
    v16 = backgroundViewAnimationProgress;
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

- (void)_presentation_applyBackgroundEffectWithProgress:(double)progress
{
  isDismissTransition = [(_UIContextMenuPresentationAnimation *)self isDismissTransition];
  v6 = 0.3;
  if (!isDismissTransition)
  {
    v6 = 0.0;
  }

  v7 = fmax(fmin((progress - v6) / (1.0 - v6), 1.0), 0.0);
  _backgroundView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
  _backgroundHost = [_backgroundView _backgroundHost];
  contentView = [_backgroundHost contentView];

  if (contentView)
  {
    v11 = (1.0 - v7) * 0.0;
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 0.024 + v11];
    [contentView _setPresentationValue:v12 forKey:@"zoom"];

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v7 + v7 * 0.5];
    [contentView _setPresentationValue:v13 forKey:@"scale"];

    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 10.0 + v11];
    [contentView _setPresentationValue:v14 forKey:@"filters.gaussianBlur.inputRadius"];
  }

  backgroundColor = [_backgroundView backgroundColor];
  v16 = +[UIColor clearColor];
  v25 = 0.0;
  v26 = 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v17 = backgroundColor;
  [v16 getRed:&v26 green:&v25 blue:&v24 alpha:&v23];
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  [v17 getRed:&v22 green:&v21 blue:&v20 alpha:&v19];

  v18 = [UIColor colorWithRed:(1.0 - v7) * v26 + v7 * v22 green:(1.0 - v7) * v25 + v7 * v21 blue:(1.0 - v7) * v24 + v7 * v20 alpha:(1.0 - v7) * v23 + v7 * v19];

  [_backgroundView _setPresentationValue:objc_msgSend(v18 forKey:{"CGColor"), @"backgroundColor"}];
}

- (void)_prepareReparentingAnimationWithDismissalTarget:(id)target
{
  v61[1] = *MEMORY[0x1E69E9840];
  targetCopy = target;
  _platterTransitionView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterTransitionView];
  [_platterTransitionView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  superview = [_platterTransitionView superview];
  target = [targetCopy target];
  container = [target container];

  v16 = [_UIContextMenuReparentingContainerView alloc];
  [_platterTransitionView bounds];
  v17 = [(UIView *)v16 initWithFrame:?];
  [(UIView *)v17 _setOverrideUserInterfaceRenderingMode:1];
  traitCollection = [superview traitCollection];
  -[UIView setOverrideUserInterfaceStyle:](v17, "setOverrideUserInterfaceStyle:", [traitCollection userInterfaceStyle]);

  window = [container window];
  _UIGetTransformBetweenViews(window, container, 1, v60);
  *location = v60[0];
  v58 = v60[1];
  v59 = v60[2];
  [(UIView *)v17 setTransform:location];

  -[UIView _setFlipsHorizontalAxis:](v17, "_setFlipsHorizontalAxis:", [container _isRenderedHorizontallyFlipped]);
  [(UIView *)v17 setUserInteractionEnabled:0];
  _center3D = [(UIView *)_platterTransitionView _center3D];
  v23 = _UIContextMenuConvertPointBetweenViews(superview, container, _center3D, v21, v22);
  [(UIView *)v17 _setCenter3D:v23, v24, v25];
  v26 = objc_opt_new();
  [(UIView *)v17 bounds];
  [v26 setFrame:?];
  layer = [(UIView *)v17 layer];
  [layer addSublayer:v26];

  v28 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CC8]];
  v61[0] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:1];
  layer2 = [(UIView *)v17 layer];
  [layer2 setFilters:v29];

  layer3 = [(UIView *)v17 layer];
  [layer3 setValue:&unk_1EFE2E948 forKeyPath:@"filters.opacityPair.inputAmount"];

  [(_UIContextMenuBasicMorphPresentationAnimation *)self setReparentingContainerView:v17];
  view = [targetCopy view];
  [container insertSubview:v17 aboveSubview:view];

  v33 = [[_UIPortalView alloc] initWithFrame:v6, v8, v10, v12];
  [(_UIPortalView *)v33 setSourceView:_platterTransitionView];
  [(_UIPortalView *)v33 setAllowsBackdropGroups:1];
  [(_UIPortalView *)v33 setMatchesTransform:1];
  [(_UIPortalView *)v33 setMatchesPosition:1];
  layer4 = [(UIView *)v33 layer];
  [layer4 setAllowsGroupOpacity:1];

  [superview addSubview:v33];
  [(_UIContextMenuBasicMorphPresentationAnimation *)self setReparentingPortalView:v33];

  [(UIView *)v17 addSubview:_platterTransitionView];
  [(UIView *)v17 bounds];
  [_platterTransitionView setCenter:{v36 + v35 * 0.5, v38 + v37 * 0.5}];
  _window = [container _window];
  windowScene = [_window windowScene];
  _window2 = [superview _window];
  windowScene2 = [_window2 windowScene];
  v43 = windowScene == windowScene2;

  if (!v43)
  {
    _window3 = [container _window];
    windowScene3 = [_window3 windowScene];
    [windowScene3 _synchronizeDrawing];

    _window4 = [superview _window];
    windowScene4 = [_window4 windowScene];
    [windowScene4 _synchronizeDrawing];
  }

  objc_initWeak(location, self);
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __97___UIContextMenuBasicMorphPresentationAnimation__prepareReparentingAnimationWithDismissalTarget___block_invoke;
  v52[3] = &unk_1E7119FD0;
  objc_copyWeak(&v56, location);
  v48 = v17;
  v53 = v48;
  v49 = targetCopy;
  v54 = v49;
  v50 = _platterTransitionView;
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
  _accessoryViews = [(_UIContextMenuBasicMorphPresentationAnimation *)self _accessoryViews];
  v4 = [_accessoryViews countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(_accessoryViews);
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
        _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
        [_containerView addSubview:v8];

        [v8 setVisible:0 animated:0];
        [(_UIContextMenuBasicMorphPresentationAnimation *)self _updateAccessoryAttachment:v8];
      }

      v5 = [_accessoryViews countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)_updateAccessoryAttachment:(id)attachment
{
  attachmentCopy = attachment;
  _containerView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _containerView];
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  menuConfiguration = [uiController menuConfiguration];
  sourcePreview = [menuConfiguration sourcePreview];

  target = [sourcePreview target];
  container = [target container];
  _window = [container _window];

  location = [attachmentCopy location];
  if (location == 2)
  {
    _menuView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _menuView];
    goto LABEL_7;
  }

  if (location == 1)
  {
    _menuView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _platterView];
LABEL_7:
    v48 = _menuView;
    [_menuView frame];
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v46 = v52;

    goto LABEL_9;
  }

  if (location)
  {
    v43 = *MEMORY[0x1E695F058];
    v44 = *(MEMORY[0x1E695F058] + 8);
    v45 = *(MEMORY[0x1E695F058] + 16);
    v46 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [_window bounds];
    v17 = _UIContextMenuProjectFrameFromViewToView_0(_window, _containerView, v13, v14, v15, v16);
    v76 = v18;
    v77 = v17;
    v78 = v19;
    v79 = v20;
    [_window safeAreaInsets];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    traitCollection = [_window traitCollection];
    v30 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

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
  traitCollection2 = [_containerView traitCollection];
  v54 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

  [v54 baseMenuOffset];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  if (attachmentCopy)
  {
    [attachmentCopy anchor];
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

  [attachmentCopy attachmentOffsetWithReferenceFrame:{_UIContextMenuProjectFrameFromViewToView_0(_containerView, _window, v43, v44, v45, v46)}];
  v69 = v56 + v68;
  v71 = v58 + v70;
  [attachmentCopy setOffset:{v69, v71}];
  layer = [attachmentCopy layer];
  [layer setZPosition:v60];

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
  [attachmentCopy setCenter:{v74, v71 + MinY + v80 * CGRectGetHeight(v85)}];
}

- (BOOL)_shouldAnimateBackgroundEffects
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  return !userInterfaceIdiom && !_AXSReduceMotionEnabled() && _AXSEnhanceBackgroundContrastEnabled() == 0;
}

- (id)_containerView
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  platterContainerView = [uiController platterContainerView];

  return platterContainerView;
}

- (id)_platterTransitionView
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  platterTransitionView = [uiController platterTransitionView];

  return platterTransitionView;
}

- (id)_backgroundView
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  backgroundEffectView = [uiController backgroundEffectView];

  return backgroundEffectView;
}

- (id)_platterView
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  contentPlatterView = [uiController contentPlatterView];

  return contentPlatterView;
}

- (id)_menuView
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  menuView = [uiController menuView];

  return menuView;
}

- (id)_accessoryViews
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  menuConfiguration = [uiController menuConfiguration];
  accessoryViews = [menuConfiguration accessoryViews];

  return accessoryViews;
}

- (id)_secondarySourcePreviews
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  menuConfiguration = [uiController menuConfiguration];
  secondarySourcePreviews = [menuConfiguration secondarySourcePreviews];

  return secondarySourcePreviews;
}

- (void)_setBackgroundVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(_UIContextMenuBasicMorphPresentationAnimation *)self _hasVisibleBackground])
  {
    _backgroundView = [(_UIContextMenuBasicMorphPresentationAnimation *)self _backgroundView];
    if (visibleCopy)
    {
      expandedLayout = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
      type = [expandedLayout type];

      uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
      menuStyle = [uiController menuStyle];
      preferredBackgroundEffects = [menuStyle preferredBackgroundEffects];

      if (type != 3 && ![preferredBackgroundEffects count])
      {
        v10 = _UIClickPresentationBackgroundEffects(1);

        preferredBackgroundEffects = v10;
      }

      [_backgroundView setBackgroundEffects:preferredBackgroundEffects];
      uiController2 = [(_UIContextMenuPresentationAnimation *)self uiController];
      menuStyle2 = [uiController2 menuStyle];
      preferredBackgroundColor = [menuStyle2 preferredBackgroundColor];

      if (type != 3 && !preferredBackgroundColor)
      {
        preferredBackgroundColor = _UIClickPresentationBackgroundColor(1);
      }

      [_backgroundView setBackgroundColor:preferredBackgroundColor];
    }

    if (![(_UIContextMenuBasicMorphPresentationAnimation *)self _shouldAnimateBackgroundEffects])
    {
      v14 = 0.0;
      if (visibleCopy)
      {
        v14 = 1.0;
      }

      [_backgroundView setAlpha:v14];
    }
  }
}

- (BOOL)_hasVisibleBackground
{
  uiController = [(_UIContextMenuPresentationAnimation *)self uiController];
  menuStyle = [uiController menuStyle];

  preferredBackgroundEffects = [menuStyle preferredBackgroundEffects];
  if ([preferredBackgroundEffects count])
  {
    v6 = 1;
  }

  else
  {
    preferredBackgroundColor = [menuStyle preferredBackgroundColor];

    if (preferredBackgroundColor)
    {
      v6 = 1;
      goto LABEL_6;
    }

    preferredBackgroundEffects = [(_UIContextMenuBasicMorphPresentationAnimation *)self expandedLayout];
    v6 = [preferredBackgroundEffects type] != 3;
  }

LABEL_6:
  return v6;
}

@end