@interface _UIContextMenuUIController
- (BOOL)_needsToAvoidKeyboardForResponder:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)shouldMaintainKeyboardAssertionForFirstResponder:(id)a3;
- (CGSize)previewSize;
- (UIView)platterContainerView;
- (UIView)platterTransitionView;
- (UIViewFloatAnimatableProperty)backgroundViewAnimationProgress;
- (UIVisualEffectView)backgroundEffectView;
- (_UIContextMenuLayoutArbiterOutput)currentLayout;
- (_UIContextMenuUIController)initWithConfiguration:(id)a3 style:(id)a4;
- (_UIContextMenuUIControllerDelegate)delegate;
- (_UIFlocker)flocker;
- (_UIMorphPlatterViewBase)contentPlatterView;
- (id)_layoutWithUpdatedAttachment:(BOOL)a3 concealedMenu:(BOOL)a4;
- (id)_platformMetrics;
- (id)_primaryPlatterDragPreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4;
- (id)contextMenuView:(id)a3 willDisplayMenu:(id)a4;
- (id)dismissalPreviewForSecondaryItem:(id)a3 style:(unint64_t)a4;
- (id)dismissalPreviewForStyle:(unint64_t)a3 clientReturnedPreview:(BOOL *)a4;
- (id)livePreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4;
- (id)previewForCancellingDragItem:(id)a3;
- (id)windowSceneActivationPreview;
- (int64_t)_interfaceIdiom;
- (unint64_t)_preferredSubmenuHierarchyStyle;
- (void)_adjustViewForKeyboardVisibility:(BOOL)a3 keyboardInfo:(id)a4;
- (void)_cleanUpDragViews;
- (void)_concealMenu;
- (void)_createMenuViewIfNecessaryForMenu:(id)a3;
- (void)_didBeginMorphToDragPreview;
- (void)_didCompleteMorphToDragPreview;
- (void)_displayMenu:(id)a3 updateType:(unint64_t)a4;
- (void)_enumeratePlatterViewsWithBlock:(id)a3;
- (void)_handleActionHandoffGesture:(id)a3;
- (void)_handleDismissalTapGesture:(id)a3;
- (void)_handlePlatterActionTapGesture:(id)a3;
- (void)_installViewsIntoDragContainerView:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_replaceVisibleMenu:(id)a3 withMenu:(id)a4;
- (void)_sceneWillDeactivate:(id)a3;
- (void)_testing_dismissByTappingOutside;
- (void)_testing_tapAnAction;
- (void)_updateActionsViewReversesOrderForAttachment:(unint64_t)a3;
- (void)_updateLayoutAndAttachment:(BOOL)a3;
- (void)_updatePlatterAndActionViewLayoutForce:(BOOL)a3 updateAttachment:(BOOL)a4 adjustDetent:(BOOL)a5;
- (void)_updatePlatterContainerViewTraitCollection;
- (void)contextMenuView:(id)a3 didSelectElement:(id)a4;
- (void)dealloc;
- (void)didSelectCancelActionInContextMenuView:(id)a3;
- (void)dismissalTransitionDidEnd;
- (void)dismissalTransitionWillBegin;
- (void)displayMenu:(id)a3 inPlaceOfMenu:(id)a4;
- (void)dragWillCancelWithAnimator:(id)a3;
- (void)endSourcePreviewHidingIfNeeded;
- (void)hideSourcePreview:(id)a3;
- (void)platterPanControllerDidSwipeDown:(id)a3;
- (void)platterPanControllerDidTearOff:(id)a3;
- (void)platterPanInteractionBegan:(id)a3 allowSwipeToDismiss:(BOOL *)a4;
- (void)platterPanInteractionEnded:(id)a3;
- (void)presentationTransitionWillBegin;
- (void)previewSizeDidChange:(CGSize)a3;
- (void)retargetDismissingMenuToPreview:(id)a3;
- (void)viewTraitCollectionDidChange;
@end

@implementation _UIContextMenuUIController

- (UIView)platterContainerView
{
  platterContainerView = self->_platterContainerView;
  if (!platterContainerView)
  {
    v4 = [(_UIContextMenuUIController *)self menuStyle];
    v5 = [v4 _backgroundInteractionStyle] == 2;

    v6 = [_UIContextMenuContainerView alloc];
    v7 = [(_UIContextMenuContainerView *)v6 initWithFrame:v5 allowsBackgroundInteractionAcrossProccesses:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke;
    v22[3] = &unk_1E7124DE0;
    objc_copyWeak(&v23, &location);
    [(UIView *)v7 setSubtreeTraitPropagationHandler:v22];
    v8 = [(UIView *)v7 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 || (-[_UIContextMenuUIController menuStyle](self, "menuStyle"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 preferredLayout], v10, v11 == 3))
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_3;
      v20[3] = &unk_1E70F5A28;
      objc_copyWeak(&v21, &location);
      [(UIView *)v7 setDismissalHandler:v20];
      v12 = [(_UIContextMenuUIController *)self platterTransitionView];
      [(UIView *)v7 setContentWrapperView:v12];

      objc_destroyWeak(&v21);
    }

    v13 = [(_UIContextMenuUIController *)self menuStyle];
    -[UIView setAllowsDragEventsToPassthrough:](v7, "setAllowsDragEventsToPassthrough:", [v13 preferredLayout] == 3);

    v14 = [(_UIContextMenuUIController *)self menuStyle];
    v15 = [v14 ignoresContainerSizeChange];

    if ((v15 & 1) == 0)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_4;
      v18[3] = &unk_1E7124E08;
      objc_copyWeak(&v19, &location);
      [(UIView *)v7 setSizeChangeHandler:v18];
      objc_destroyWeak(&v19);
    }

    v16 = self->_platterContainerView;
    self->_platterContainerView = v7;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
    platterContainerView = self->_platterContainerView;
  }

  return platterContainerView;
}

- (_UIContextMenuLayoutArbiterOutput)currentLayout
{
  currentLayout = self->_currentLayout;
  if (!currentLayout)
  {
    [(_UIContextMenuUIController *)self _updateLayoutAndAttachment:1];
    currentLayout = self->_currentLayout;
  }

  return currentLayout;
}

- (CGSize)previewSize
{
  width = self->_previewSize.width;
  height = self->_previewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)_interfaceIdiom
{
  v2 = [(_UIContextMenuUIController *)self menuConfiguration];
  v3 = [v2 sourcePreview];
  v4 = [v3 view];
  v5 = [v4 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  return v6;
}

- (_UIFlocker)flocker
{
  if (!self->_flocker)
  {
    v3 = [(_UIContextMenuUIController *)self menuConfiguration];
    v4 = [v3 isMultiItemMenu];

    if (v4)
    {
      v5 = [_UIFlocker alloc];
      v6 = [(_UIContextMenuUIController *)self platterTransitionView];
      v7 = [(_UIFlocker *)v5 initWithContainerView:v6];
      flocker = self->_flocker;
      self->_flocker = v7;

      v9 = [(_UIContextMenuUIController *)self menuConfiguration];
      -[_UIFlocker setItemCount:](self->_flocker, "setItemCount:", [v9 representedItemCount]);

      v10 = [(_UIContextMenuUIController *)self menuConfiguration];
      -[_UIFlocker setBadgeValue:](self->_flocker, "setBadgeValue:", [v10 badgeCount]);
    }
  }

  v11 = self->_flocker;

  return v11;
}

- (void)endSourcePreviewHidingIfNeeded
{
  sourcePreviewAlphaOverrideAssertion = self->_sourcePreviewAlphaOverrideAssertion;
  self->_sourcePreviewAlphaOverrideAssertion = 0;
}

- (void)presentationTransitionWillBegin
{
  v3 = [(_UIContextMenuUIController *)self menuStyle];
  v4 = [v3 containerView];

  if (v4)
  {
    v5 = [(_UIContextMenuUIController *)self menuStyle];
    v49 = [v5 containerView];
  }

  else
  {
    v5 = [(_UIContextMenuUIController *)self menuConfiguration];
    v6 = [v5 sourcePreview];
    v7 = [v6 view];
    v49 = [v7 _window];
  }

  v8 = [(_UIContextMenuUIController *)self _platformMetrics];
  v9 = [v8 containerViewProviderWithEntity];

  v10 = [(_UIContextMenuUIController *)self _platformMetrics];
  v11 = [v10 containerViewProvider];

  if (v9)
  {
    v12 = [(_UIContextMenuUIController *)self menuConfiguration];
    v13 = [v12 sourcePreview];
    v14 = [(_UIContextMenuUIController *)self menuConfiguration];
    v15 = [v14 menu];
    v16 = (*(v9 + 16))(v9, v49, v13, v15, 0);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = [(_UIContextMenuUIController *)self menuConfiguration];
    v13 = [v12 sourcePreview];
    v14 = [(_UIContextMenuUIController *)self menuConfiguration];
    v15 = [v14 menu];
    v16 = (*(v11 + 16))(v11, v49, v13, v15);
  }

  v17 = v16;

  v49 = v17;
LABEL_9:
  v18 = [(_UIContextMenuUIController *)self platterContainerView];
  [v49 bounds];
  [v18 setFrame:?];
  [v18 setAutoresizingMask:18];
  [v18 setUserInteractionEnabled:1];
  v19 = [(_UIContextMenuUIController *)self menuStyle];
  [v18 setPassesBackgroundViewTouchesThrough:{objc_msgSend(v19, "_backgroundInteractionStyle") == 1}];

  [v49 addSubview:v18];
  v20 = [(_UIContextMenuUIController *)self menuConfiguration];
  v21 = [v20 menu];

  if (([v21 metadata] & 0x1000000) != 0)
  {
    [(_UIContextMenuUIController *)self _createMenuViewIfNecessaryForMenu:v21];
    v22 = [(_UIContextMenuUIController *)self menuView];
    [v22 displayMenu:v21 updateType:0 alongsideAnimations:0];
  }

  v23 = [_UIContextMenuPanController alloc];
  v24 = [(_UIContextMenuUIController *)self contentPlatterView];
  v25 = [(_UIContextMenuUIController *)self menuView];
  v26 = [(_UIContextMenuPanController *)v23 initWithContainerView:v18 platterView:v24 menuView:v25];
  [(_UIContextMenuUIController *)self setPlatterPanController:v26];

  v27 = [(_UIContextMenuUIController *)self platterPanController];
  [v27 setDelegate:self];

  v28 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalTapGesture_];
  [(UIGestureRecognizer *)v28 setName:@"com.apple.UIKit.ContextMenuDismissalTap"];
  [(UIGestureRecognizer *)v28 setDelegate:self];
  [v18 addGestureRecognizer:v28];
  [(_UIContextMenuUIController *)self setDismissalTapGestureRecognizer:v28];
  v29 = [(_UIContextMenuUIController *)self menuView];
  if ([(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)v29 scrubbingEnabled])
  {
    v30 = [(_UIContextMenuUIController *)self _interfaceIdiom];

    if (v30 == 6)
    {
      goto LABEL_17;
    }

    v29 = [[_UIContextMenuActionScrubbingHandoffGestureRecognizer alloc] initWithTarget:self action:sel__handleActionHandoffGesture_];
    [(UIGestureRecognizer *)v29 setDelegate:self];
    v31 = [(_UIContextMenuUIController *)self menuStyle];
    v32 = [v31 _allowsImmediateSelection];

    if (v32)
    {
      [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)v29 setHysteresis:0.0];
    }

    [v18 addGestureRecognizer:v29];
    [(_UIContextMenuUIController *)self setActionScrubbingHandoffGestureRecognizer:v29];
  }

LABEL_17:
  v47 = v9;
  v33 = v11;
  [(_UIContextMenuUIController *)self _updatePlatterContainerViewTraitCollection];
  v34 = [_UIContextMenuLayoutArbiter alloc];
  v35 = [(_UIContextMenuUIController *)self menuStyle];
  v36 = -[_UIContextMenuLayoutArbiter initWithContainerView:layout:](v34, "initWithContainerView:layout:", v18, [v35 preferredLayout]);
  [(_UIContextMenuUIController *)self setLayoutArbiter:v36];

  [(_UIContextMenuUIController *)self setState:1];
  v37 = [(_UIContextMenuUIController *)self menuConfiguration];
  v38 = [v37 sourcePreview];
  v39 = [v38 target];
  v40 = [v39 container];
  v41 = [v40 _window];

  if (([v41 _isTextEffectsWindow] & 1) == 0)
  {
    [v41 makeKeyWindow];
  }

  v42 = [v18 _focusSystemSceneComponent];
  v43 = [(_UIContextMenuUIController *)self menuView];
  [v42 pushPreferredFocusEnvironmentOverride:v43];

  if ([(_UIContextMenuView *)self->_menuView shouldEnableTypeSelect]&& +[_UITypeSelectInteraction isTypeSelectSupported])
  {
    v44 = [v18 window];
    v45 = [v44 windowScene];
    v46 = [v45 _keyboardOverridingSceneComponent];

    [v46 setCommonView:v18];
  }
}

- (id)_platformMetrics
{
  v2 = [(_UIContextMenuUIController *)self _interfaceIdiom];

  return _UIContextMenuGetPlatformMetrics(v2);
}

- (_UIMorphPlatterViewBase)contentPlatterView
{
  contentPlatterView = self->_contentPlatterView;
  if (!contentPlatterView)
  {
    v4 = [(_UIContextMenuUIController *)self menuConfiguration];
    v5 = [(_UIContextMenuUIController *)self menuStyle];
    v6 = [v4 isMultiItemMenu];
    if ((v6 & 1) != 0 || [v5 _layoutAllowsPreview])
    {
      _UIContextMenuMagicMorphAnimationEnabled();
      v7 = objc_opt_new();
      v8 = self->_contentPlatterView;
      self->_contentPlatterView = v7;

      v9 = [(_UIContextMenuUIController *)self platterContainerView];
      v10 = [v9 traitCollection];
      v11 = _UIContextMenuGetPlatformMetrics([v10 userInterfaceIdiom]);

      if (v6)
      {
        v12 = 1;
      }

      else if ([v5 preferredLayout] == 1)
      {
        v13 = [v4 previewViewController];
        v12 = v13 == 0;
      }

      else
      {
        v12 = 0;
      }

      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setAlwaysCompact:v12];
      -[_UIMorphPlatterViewBase setAllowsUserInteractionInExpandedPreview:](self->_contentPlatterView, "setAllowsUserInteractionInExpandedPreview:", [v5 hasInteractivePreview]);
      -[_UIMorphPlatterViewBase setPreventPreviewRasterization:](self->_contentPlatterView, "setPreventPreviewRasterization:", [v5 preventPreviewRasterization]);
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setWantsEdgeAntialiasing:v6];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setCollapsedShadowStyle:1];
      if (v12)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setExpandedShadowStyle:v14];
      v15 = [v11 previewShadowSettings];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setShadowSettings:v15];

      v16 = [v11 submenuSeparatedOptions];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setSeparatedOptions:v16];

      v17 = [v11 shouldApplyClippingHandler];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setShouldApplyClippingHandler:v17];

      if ([v5 ignoresDefaultSizingRules])
      {
        [(_UIMorphPlatterViewBase *)self->_contentPlatterView setPreferredMorphingAxis:1];
      }

      v18 = [v4 previewAction];

      if (v18)
      {
        v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handlePlatterActionTapGesture_];
        [(_UIContextMenuUIController *)self setPlatterActionTapGestureRecognizer:v19];

        v20 = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [v20 setName:@"com.apple.UIKit.ContextMenuPreviewActionTap"];

        v21 = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [v21 setDelegate:self];

        v22 = self->_contentPlatterView;
        v23 = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [(UIView *)v22 addGestureRecognizer:v23];
      }
    }

    contentPlatterView = self->_contentPlatterView;
  }

  return contentPlatterView;
}

- (void)_updatePlatterContainerViewTraitCollection
{
  if ([(_UIContextMenuUIController *)self _interfaceIdiom]!= 6)
  {
    v3 = [(_UIContextMenuUIController *)self menuStyle];
    v12 = [v3 _parentTraitEnvironmentForUserInterfaceStyle];

    v4 = v12;
    if (v12)
    {
      v5 = [(_UIContextMenuUIController *)self platterContainerView];
      v6 = [v12 _traitCollectionForChildEnvironment:v5];

      v7 = [v6 glassUserInterfaceStyle];
      if (v7 || (v7 = [v6 userInterfaceStyle]) != 0)
      {
        v8 = v7;
        v9 = [(_UIContextMenuUIController *)self platterContainerView];
        v10 = [(UIView *)v9 _internalTraitOverrides];
        [v10 setUserInterfaceStyle:v8];
      }

      else
      {
        v9 = [(_UIContextMenuUIController *)self platterContainerView];
        v10 = [(UIView *)v9 _internalTraitOverrides];
        [(_UITraitOverrides *)v10 _removeTraitToken:?];
      }

      v11 = [(_UIContextMenuUIController *)self platterContainerView];
      [v11 updateTraitsIfNeeded];

      v4 = v12;
    }
  }
}

- (unint64_t)_preferredSubmenuHierarchyStyle
{
  v3 = [(_UIContextMenuUIController *)self menuStyle];
  v4 = [v3 prefersStackedHierarchy];

  if ((v4 & 1) != 0 || ![(_UIContextMenuUIController *)self _interfaceIdiom])
  {
    return 1;
  }

  v5 = [(_UIContextMenuUIController *)self platterContainerView];
  [v5 bounds];
  Width = CGRectGetWidth(v11);
  v7 = [(_UIContextMenuUIController *)self platterContainerView];
  v8 = _UIContextMenuActionsViewWidth(v7, 0, 0, 0, 0, [(_UIContextMenuUIController *)self _interfaceIdiom]);
  v9 = v8 + v8;

  if (Width <= v9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (UIVisualEffectView)backgroundEffectView
{
  backgroundEffectView = self->_backgroundEffectView;
  if (!backgroundEffectView)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [(UIVisualEffectView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_backgroundEffectView;
    self->_backgroundEffectView = v5;

    backgroundEffectView = self->_backgroundEffectView;
  }

  return backgroundEffectView;
}

- (UIView)platterTransitionView
{
  if (!self->_platterTransitionView)
  {
    v3 = [_UIContextMenuPlatterTransitionView alloc];
    v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    platterTransitionView = self->_platterTransitionView;
    self->_platterTransitionView = v4;

    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v6 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar >= 1)
    {
      v9 = _UIInternalPreference_ClickUIDebugEnabled;
      if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
      {
        while (v6 >= v9)
        {
          _UIInternalPreferenceSync(v6, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
          v9 = _UIInternalPreference_ClickUIDebugEnabled;
          if (v6 == _UIInternalPreference_ClickUIDebugEnabled)
          {
            goto LABEL_5;
          }
        }

        if (byte_1EA95E0FC)
        {
          v10 = +[UIColor magentaColor];
          v11 = [v10 CGColor];
          v12 = [(UIView *)self->_platterTransitionView layer];
          [v12 setBorderColor:v11];

          v13 = [(UIView *)self->_platterTransitionView layer];
          [v13 setBorderWidth:6.0];
        }
      }
    }
  }

LABEL_5:
  v7 = self->_platterTransitionView;

  return v7;
}

- (_UIContextMenuUIControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_UIContextMenuUIController)initWithConfiguration:(id)a3 style:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIContextMenuUIController *)self init];
  v9 = v8;
  if (v8)
  {
    [(_UIContextMenuUIController *)v8 setMenuConfiguration:v6];
    [(_UIContextMenuUIController *)v9 setMenuStyle:v7];
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v9 selector:sel__keyboardWillShow_ name:@"UIKeyboardWillShowNotification" object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v9 selector:sel__keyboardWillHide_ name:@"UIKeyboardWillHideNotification" object:0];

    v12 = [MEMORY[0x1E696AD88] defaultCenter];
    [v12 addObserver:v9 selector:sel__sceneWillDeactivate_ name:@"UISceneWillDeactivateNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v6[3] = *MEMORY[0x1E69E9840];
  if (![(_UIContextMenuUIController *)self _dragWasCanceled])
  {
    [(_UIContextMenuUIController *)self _cleanUpDragViews];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIKeyboardWillShowNotification";
  v6[1] = @"UIKeyboardWillHideNotification";
  v6[2] = @"UISceneWillDeactivateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIContextMenuUIController;
  [(_UIContextMenuUIController *)&v5 dealloc];
}

- (void)dismissalTransitionWillBegin
{
  v3 = [(_UIContextMenuUIController *)self platterContainerView];
  v4 = [v3 _focusSystemSceneComponent];
  v5 = [(_UIContextMenuUIController *)self menuView];
  [v4 removePreferredFocusEnvironmentOverride:v5];

  [(_UIContextMenuUIController *)self setState:0];
  [(_UIContextMenuView *)self->_menuView disableTypeSelectIfNeeded];
  v6 = [(_UIContextMenuUIController *)self platterContainerView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(_UIContextMenuUIController *)self _platformMetrics];
  v11 = [v7 preDismissalHandler];

  if (v11)
  {
    v8 = [(_UIContextMenuUIController *)self platterContainerView];
    v11[2](v11, v8);
  }

  v9 = [(_UIContextMenuUIController *)self platterPanController];
  [v9 setEnabled:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 removeObserver:self];
}

- (void)dismissalTransitionDidEnd
{
  v3 = [(_UIContextMenuUIController *)self _platformMetrics];
  v5 = [v3 postDismissalHandler];

  if (v5)
  {
    v4 = [(_UIContextMenuUIController *)self platterContainerView];
    v5[2](v5, v4);
  }
}

- (void)platterPanControllerDidTearOff:(id)a3
{
  v4 = [a3 panGestureRecognizer];
  v5 = [v4 _allActiveTouches];
  v7 = [v5 anyObject];

  v6 = [(_UIContextMenuUIController *)self delegate];
  [v6 contextMenuUIController:self didBeginDragWithTouch:v7];
}

- (void)platterPanControllerDidSwipeDown:(id)a3
{
  v4 = [(_UIContextMenuUIController *)self delegate];
  [v4 contextMenuUIController:self didRequestDismissalWithReason:2 alongsideActions:0 completion:0];
}

- (void)platterPanInteractionBegan:(id)a3 allowSwipeToDismiss:(BOOL *)a4
{
  v6 = [(_UIContextMenuUIController *)self delegate];
  *a4 = [v6 contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:self];
}

- (void)platterPanInteractionEnded:(id)a3
{
  v4 = [(_UIContextMenuUIController *)self delegate];
  [v4 contextMenuUIControllerDidEndPanInteraction:self];
}

- (id)livePreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__206;
  v46 = __Block_byref_object_dispose__206;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = -1;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __72___UIContextMenuUIController_livePreviewForDragItem_preferringFullSize___block_invoke;
  v29[3] = &unk_1E7124D20;
  v31 = &v42;
  v7 = v6;
  v30 = v7;
  v32 = &v38;
  v33 = &v34;
  [(_UIContextMenuUIController *)self _enumeratePlatterViewsWithBlock:v29];
  if (!v43[5])
  {
    v8 = [(_UIContextMenuUIController *)self flocker];
    v9 = [v8 secondaryPlatterViews];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = [(_UIContextMenuUIController *)self contentPlatterView];
      v12 = v43[5];
      v43[5] = v11;

      *(v39 + 24) = 1;
      v35[3] = 0;
    }
  }

  v13 = v43[5];
  if (v13)
  {
    if (*(v39 + 24) == 1)
    {
      v14 = [(_UIContextMenuUIController *)self _primaryPlatterDragPreviewForDragItem:v7 preferringFullSize:v4];
      objc_initWeak(&location, self);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __72___UIContextMenuUIController_livePreviewForDragItem_preferringFullSize___block_invoke_2;
      v27[3] = &unk_1E70F5A28;
      objc_copyWeak(&v28, &location);
      [v14 set_fenceHandler:v27];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    else
    {
      memset(&location, 0, sizeof(location));
      [v13 transform];
      [v43[5] bounds];
      Width = CGRectGetWidth(v49);
      v16 = [v43[5] collapsedPreview];
      [v16 size];
      v18 = Width / v17;

      v24 = location;
      CGAffineTransformScale(&v25, &v24, v18, v18);
      location = v25;
      v19 = [UIDragPreviewTarget alloc];
      v20 = [v43[5] superview];
      [v43[5] center];
      v25 = location;
      v21 = [(UIPreviewTarget *)v19 initWithContainer:v20 center:&v25 transform:?];

      v22 = [v7 _targetedLiftPreview];
      v14 = [v22 retargetedPreviewWithTarget:v21];

      [v14 _setApplyTargetTransformToFlock:1];
    }

    [v14 _setPreferredStackOrder:v35[3]];
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v14;
}

- (id)_primaryPlatterDragPreviewForDragItem:(id)a3 preferringFullSize:(BOOL)a4
{
  v6 = a3;
  [v6 _setDeferPreviewUpdates:1];
  v7 = [v6 previewProvider];

  if (!v7)
  {
    v8 = 0;
LABEL_6:
    v9 = [v6 _targetedLiftPreview];
    v10 = [v6 _previewProviderForType:1];

    v8 = v10;
    goto LABEL_7;
  }

  v8 = [v6 _previewProviderForType:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = [v8 preview];
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_7:
  v11 = [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion sourceView];
  v12 = [v9 view];

  if (v11 == v12)
  {
    v13 = [v9 view];
    [v13 alpha];
    [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion setAlpha:?];
  }

  [v9 _setPreventAfterScreenUpdatesSnapshot:v11 != v12];
  v14 = [v8 _duiPreview];
  v15 = [(_UIContextMenuUIController *)self menuConfiguration];
  if (([v15 isMultiItemMenu] & 1) != 0 || objc_msgSend(v14, "isOversized"))
  {

LABEL_12:
    [v14 scaledSize];
    v17 = v16;
    v19 = v18;
    v20 = 1;
    goto LABEL_13;
  }

  [v14 scaleFactor];
  v50 = v49;

  if (v50 < 1.0 && !a4)
  {
    goto LABEL_12;
  }

  [v14 unscaledSize];
  v17 = v51;
  v19 = v52;
  v20 = 0;
LABEL_13:
  if (v14)
  {
    [v14 liftTransform];
    v22 = v58;
    v21 = v59;
    v24 = v60;
    v23 = v61;
  }

  else
  {
    v23 = 0.0;
    v21 = 0.0;
    v24 = 0.0;
    v22 = 0.0;
  }

  v25 = v19 * v24 + v17 * v22;
  v26 = [(UIView *)[_UIContextMenuDragContainerView alloc] initWithFrame:0.0, 0.0, v25, v19 * v23 + v17 * v21];
  [(_UIContextMenuUIController *)self set_dragContainerView:v26];
  [(_UIContextMenuUIController *)self _installViewsIntoDragContainerView:v26];
  if (v20)
  {
    [v14 scaledSize];
    v28 = v27;
    [v14 unscaledSize];
    v30 = v28 / v29 * 33.0;
  }

  else
  {
    v30 = 33.0;
  }

  [v14 setAvoidAnimation:{1, v9}];
  v31 = objc_opt_new();
  [v31 _setPreviewMode:3];
  v32 = [(UITargetedPreview *)[UITargetedDragPreview alloc] initWithView:v26 parameters:v31];
  [(UITargetedDragPreview *)v32 setLiftAnchorPoint:v25 * 0.5, v30];

  v33 = [_UIPlatterView alloc];
  v34 = [v8 imageComponent];
  v35 = [(UITargetedPreview *)v32 view];
  v36 = [(_UIPlatterView *)v33 initWithDUIPreview:v14 imageComponent:v34 sourceView:v35];

  [(_UIPlatterView *)v36 setConstrainSize:v20];
  [(_UIPlatterView *)v36 setLifted:1];
  [(_UIPlatterView *)v36 setTransformAppliedExternally:1];
  [(_UIPlatterView *)v36 setAppliesOriginalRotation:1];
  [(_UIContextMenuUIController *)self set_destinationPlatterView:v36];
  v37 = [(_UIContextMenuUIController *)self _dragContainerTransitionView];

  v54 = v8;
  if (v37)
  {
    v38 = [(_UIContextMenuUIController *)self contentPlatterView];
    [v38 center];
    [(UIView *)v36 setCenter:?];

    v39 = [(_UIContextMenuUIController *)self _dragContainerTransitionView];
    [v39 addSubview:v36];
  }

  else
  {
    [(_UIPlatterView *)v36 setShadowVisible:0];
  }

  v40 = [(_UIContextMenuUIController *)self platterContainerView];
  v41 = objc_opt_new();
  [v41 setAlpha:0.0];
  v42 = [(_UIContextMenuUIController *)self platterContainerView];
  v43 = [v42 window];
  [v43 insertSubview:v41 atIndex:0];

  [(_UIContextMenuUIController *)self set_subterraneanViewContainer:v41];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __87___UIContextMenuUIController__primaryPlatterDragPreviewForDragItem_preferringFullSize___block_invoke;
  v55[3] = &unk_1E70F35B8;
  v56 = v6;
  v57 = v53;
  v44 = v53;
  v45 = v6;
  [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:v55];
  v46 = [(_UIContextMenuUIController *)self flocker];
  v47 = [(UITargetedPreview *)v32 view];
  [v46 badgeLocationInView:v47];
  [(UITargetedDragPreview *)v32 _setInitialBadgeLocation:?];

  return v32;
}

- (id)previewForCancellingDragItem:(id)a3
{
  v4 = [(_UIContextMenuUIController *)self _postMorphDragItemUpdate];

  if (v4)
  {
    [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:0];
    [(_UIContextMenuUIController *)self set_dragWasCanceled:1];
    v5 = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
    v6 = [(_UIContextMenuUIController *)self _dragContainerView];
    [v5 addSubview:v6];

    v7 = [UITargetedDragPreview alloc];
    v8 = [(_UIContextMenuUIController *)self _dragContainerView];
    v9 = [(UITargetedDragPreview *)v7 initWithView:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didBeginMorphToDragPreview
{
  v2 = [(_UIContextMenuUIController *)self _dragContainerView];
  [v2 setAlpha:0.0];
}

- (void)_didCompleteMorphToDragPreview
{
  v3 = [(_UIContextMenuUIController *)self platterContainerView];
  [v3 setAlpha:0.0];

  v5 = [(_UIContextMenuUIController *)self _postMorphDragItemUpdate];
  [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:0];
  v4 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5);
    v4 = v5;
  }
}

- (void)dragWillCancelWithAnimator:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuUIController *)self _dragContainerTransitionView];

  if (v5)
  {
    v6 = [(_UIContextMenuUIController *)self _destinationPlatterView];
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v8 = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke;
  }

  else
  {
    v6 = [(_UIContextMenuUIController *)self contentPlatterView];
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &unk_1E70F3590;
  v7[4] = v6;
  v9 = v6;
  [v4 addAnimations:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke_3;
  v10[3] = &unk_1E70F5DB8;
  v10[4] = self;
  [v4 addCompletion:v10];
}

- (void)_installViewsIntoDragContainerView:(id)a3
{
  v21 = a3;
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v4 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v16 = _UIInternalPreference_ClickUIDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_ClickUIDebugEnabled)
    {
      while (v4 >= v16)
      {
        _UIInternalPreferenceSync(v4, &_UIInternalPreference_ClickUIDebugEnabled, @"ClickUIDebugEnabled", _UIInternalPreferenceUpdateBool);
        v16 = _UIInternalPreference_ClickUIDebugEnabled;
        if (v4 == _UIInternalPreference_ClickUIDebugEnabled)
        {
          goto LABEL_4;
        }
      }

      if (byte_1EA95E0FC)
      {
        v17 = +[UIColor yellowColor];
        v18 = [v17 CGColor];
        v19 = [v21 layer];
        [v19 setBorderColor:v18];

        v20 = [v21 layer];
        [v20 setBorderWidth:3.0];
      }
    }
  }

LABEL_4:
  v5 = [(_UIContextMenuUIController *)self contentPlatterView];
  [v5 freezeExpandedPreview];

  v6 = [(_UIContextMenuUIController *)self platterTransitionView];
  v7 = [(_UIContextMenuUIController *)self platterContainerView];
  [v7 addSubview:v21];
  v8 = [(_UIContextMenuUIController *)self platterPanController];
  v9 = [v8 panGestureRecognizer];
  [v9 locationInView:v7];
  [v21 setCenter:?];

  if (_UIContextMenuMagicMorphAnimationEnabled())
  {
    v10 = [UIView alloc];
    [v6 frame];
    v11 = [(UIView *)v10 initWithFrame:?];
    [(_UIContextMenuUIController *)self set_dragContainerTransitionView:v11];
    [v21 addSubview:v11];
    [v6 center];
    [v7 convertPoint:v21 toView:?];
    [(UIView *)v11 setCenter:?];
  }

  else
  {
    [v6 center];
    v13 = v12;
    v15 = v14;
    [v21 addSubview:v6];
    [v7 convertPoint:v21 toView:{v13, v15}];
    [v6 setCenter:?];
  }
}

- (void)_cleanUpDragViews
{
  [(UIView *)self->_platterContainerView removeFromSuperview];
  [(UIView *)self->_platterTransitionView removeFromSuperview];
  v3 = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
  [v3 removeFromSuperview];
}

- (id)windowSceneActivationPreview
{
  v2 = [(_UIContextMenuUIController *)self contentPlatterView];
  v3 = v2;
  if (v2)
  {
    if ([v2 alwaysCompact])
    {
      v4 = [v3 collapsedPreview];
    }

    else
    {
      v4 = [v3 expandedPreview];
      [v3 _continuousCornerRadius];
      v7 = v6;
      v8 = [v4 view];
      [v8 _setContinuousCornerRadius:v7];
    }

    v9 = [v3 window];
    v10 = [v3 superview];
    [v3 center];
    [v10 convertPoint:v9 toView:?];
    v12 = v11;
    v14 = v13;

    v15 = [UIPreviewTarget alloc];
    [v3 transform];
    v16 = [(UIPreviewTarget *)v15 initWithContainer:v9 center:&v18 transform:v12, v14];
    v5 = [v4 retargetedPreviewWithTarget:v16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  v5 = [(_UIContextMenuUIController *)self contentPlatterView];
  v6 = v5;
  if (v5)
  {
    if ([v5 allowsUserInteractionInExpandedPreview])
    {
      v7 = [(_UIContextMenuUIController *)self dismissalTapGestureRecognizer];

      if (v7 == v4)
      {
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [v4 locationInView:v6];
        v41.x = v16;
        v41.y = v17;
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        *(v38 + 24) = !CGRectContainsPoint(v43, v41);
      }
    }
  }

  if (*(v38 + 24) == 1)
  {
    v18 = [(_UIContextMenuUIController *)self menuView];
    if (v18)
    {
      v19 = [(_UIContextMenuUIController *)self dismissalTapGestureRecognizer];

      if (v19 == v4)
      {
        [v18 bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [v4 locationInView:v18];
        v42.x = v28;
        v42.y = v29;
        v44.origin.x = v21;
        v44.origin.y = v23;
        v44.size.width = v25;
        v44.size.height = v27;
        *(v38 + 24) = !CGRectContainsPoint(v44, v42);
      }
    }
  }

  v30 = [(_UIContextMenuUIController *)self menuConfiguration];
  v31 = [v30 accessoryViews];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __59___UIContextMenuUIController_gestureRecognizerShouldBegin___block_invoke;
  v34[3] = &unk_1E7124D70;
  v32 = v4;
  v35 = v32;
  v36 = &v37;
  [v31 enumerateObjectsUsingBlock:v34];

  LOBYTE(v30) = *(v38 + 24);
  _Block_object_dispose(&v37, 8);

  return v30;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuUIController *)self actionScrubbingHandoffGestureRecognizer];

  if (v8 == v7)
  {
    v10 = 1;
  }

  else
  {
    v9 = [(_UIContextMenuUIController *)self actionScrubbingHandoffGestureRecognizer];
    v10 = v9 == v6;
  }

  return v10;
}

- (void)_handleDismissalTapGesture:(id)a3
{
  v5 = a3;
  if (-[_UIContextMenuUIController _isPresented](self, "_isPresented") && [v5 state] == 3)
  {
    v4 = [(_UIContextMenuUIController *)self delegate];
    [v4 contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
  }
}

- (void)_handlePlatterActionTapGesture:(id)a3
{
  v7 = a3;
  if (-[_UIContextMenuUIController _isPresented](self, "_isPresented") && [v7 state] == 3)
  {
    v4 = [(_UIContextMenuUIController *)self menuConfiguration];
    v5 = [v4 previewAction];
    v6 = [(_UIContextMenuUIController *)self delegate];
    [v5 performWithSender:v6 target:0];
  }
}

- (void)_handleActionHandoffGesture:(id)a3
{
  v15 = a3;
  if ([v15 state] >= 1 && objc_msgSend(v15, "state") <= 2)
  {
    v4 = [(_UIContextMenuUIController *)self menuView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v15 locationInView:v4];
    v17.x = v13;
    v17.y = v14;
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = v12;
    if (CGRectContainsPoint(v18, v17) && [v4 kickstartActionScrubbingWithGesture:v15])
    {
      [v15 setEnabled:0];
      [v15 setEnabled:1];
    }
  }
}

- (void)viewTraitCollectionDidChange
{
  v3 = [(_UIContextMenuUIController *)self menuStyle];
  v4 = [v3 _parentTraitEnvironmentForUserInterfaceStyle];

  if (v4)
  {

    [(_UIContextMenuUIController *)self _updatePlatterContainerViewTraitCollection];
  }
}

- (void)previewSizeDidChange:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(_UIContextMenuUIController *)self previewSize];
  if (width != v7 || height != v6)
  {
    [(_UIContextMenuUIController *)self setPreviewSize:width, height];
    [(_UIContextMenuUIController *)self setPreviewSizeDidChange:1];

    [(_UIContextMenuUIController *)self _updatePlatterAndActionViewLayoutForce:0 updateAttachment:1];
  }
}

- (BOOL)shouldMaintainKeyboardAssertionForFirstResponder:(id)a3
{
  v4 = a3;
  if (![v4 _isView])
  {
    goto LABEL_5;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(_UIContextMenuUIController *)self menuConfiguration];
  v6 = [v5 accessoryViews];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79___UIContextMenuUIController_shouldMaintainKeyboardAssertionForFirstResponder___block_invoke;
  v12 = &unk_1E7124D70;
  v13 = v4;
  v14 = &v15;
  [v6 enumerateObjectsUsingBlock:&v9];

  if (*(v16 + 24) != 1)
  {

    _Block_object_dispose(&v15, 8);
LABEL_5:
    [(_UIContextMenuUIController *)self setMenuIsConcealed:0, v9, v10, v11, v12];
    v7 = 1;
    goto LABEL_6;
  }

  [(_UIContextMenuUIController *)self setMenuIsConcealed:1, v9, v10, v11, v12];

  _Block_object_dispose(&v15, 8);
  v7 = 0;
LABEL_6:

  return v7;
}

- (void)_keyboardWillShow:(id)a3
{
  v7 = a3;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v5 = [v4 responder];

  if (v5 && [(_UIContextMenuUIController *)self _needsToAvoidKeyboardForResponder:v5])
  {
    v6 = [v7 userInfo];
    [(_UIContextMenuUIController *)self _adjustViewForKeyboardVisibility:1 keyboardInfo:v6];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v5 = a3;
  if (![(_UIContextMenuUIController *)self _isAnimatingPresentation]&& [(_UIContextMenuUIController *)self didAvoidKeyboard])
  {
    v4 = [v5 userInfo];
    [(_UIContextMenuUIController *)self _adjustViewForKeyboardVisibility:0 keyboardInfo:v4];
  }
}

- (void)_adjustViewForKeyboardVisibility:(BOOL)a3 keyboardInfo:(id)a4
{
  v4 = a3;
  v6 = a4;
  [(_UIContextMenuUIController *)self setDidAvoidKeyboard:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v7 = _Block_copy(aBlock);
  if ([(_UIContextMenuUIController *)self _isAnimatingPresentation])
  {
    v8 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.35];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke_2;
    v17[3] = &unk_1E70F0F78;
    v18 = v7;
    v9 = v7;
    [UIView _animateUsingSpringBehavior:v8 tracking:0 animations:v17 completion:0];
  }

  else
  {
    v10 = [v6 objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v6 objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
    v14 = [v13 integerValue];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke_3;
    v15[3] = &unk_1E70F0F78;
    v16 = v7;
    v8 = v7;
    [UIView animateWithDuration:v14 delay:v15 options:0 animations:v12 completion:0.0];
    v9 = v16;
  }
}

- (BOOL)_needsToAvoidKeyboardForResponder:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuUIController *)self menuStyle];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(_UIContextMenuUIController *)self _isPresented])
  {
    v6 = [(_UIContextMenuUIController *)self menuConfiguration];
    v7 = [v6 previewViewController];

    if (v7)
    {
      if ([v5 _layoutAllowsPreview])
      {
        v8 = [v5 hasInteractivePreview];
        *(v17 + 24) = v8;
        if (v8)
        {
          goto LABEL_11;
        }
      }

      else
      {
        *(v17 + 24) = 0;
      }
    }

    else if (v17[3])
    {
      goto LABEL_11;
    }

    if ([v4 _isView])
    {
      v9 = [(_UIContextMenuUIController *)self menuConfiguration];
      v10 = [v9 accessoryViews];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64___UIContextMenuUIController__needsToAvoidKeyboardForResponder___block_invoke;
      v13[3] = &unk_1E7124D70;
      v14 = v4;
      v15 = &v16;
      [v10 enumerateObjectsUsingBlock:v13];
    }
  }

LABEL_11:
  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)_updateLayoutAndAttachment:(BOOL)a3
{
  v3 = a3;
  v119[2] = *MEMORY[0x1E69E9840];
  v5 = [(_UIContextMenuUIController *)self platterContainerView];
  v6 = [(_UIContextMenuUIController *)self menuStyle];
  v7 = COERCE_DOUBLE([v6 preferredAttachmentEdge]);

  if (v7 != NAN)
  {
    memset(&v56, 0, 40);
    v8 = [(_UIContextMenuUIController *)self menuStyle];
    v9 = v8;
    if (v8)
    {
      [v8 _preferredAnchor];
    }

    else
    {
      memset(&v56, 0, 40);
    }

    v56.a = v7;
    tx = v56.tx;
    v115 = *&v56.a;
    v116 = *&v56.c;
    v10 = [(_UIContextMenuUIController *)self menuStyle];
    v113[0] = v115;
    v113[1] = v116;
    v114 = tx;
    [v10 set_preferredAnchor:v113];
  }

  v11 = [(_UIContextMenuUIController *)self _layoutWithUpdatedAttachment:v3 concealedMenu:[(_UIContextMenuUIController *)self menuIsConcealed]];
  v12 = [(_UIContextMenuUIController *)self menuStyle];
  v13 = [v12 ignoresDefaultSizingRules];

  if (v13)
  {
    [(_UIContextMenuUIController *)self previewSize];
    v15 = v14;
    if (v11)
    {
      [(_UIContextMenuLayoutArbiterOutput *)v11 preview];
      v17 = *(&v105 + 1);
      v16 = v105;
      v19 = *(&v106 + 1);
      v18 = v106;
    }

    else
    {
      v111 = 0u;
      v112 = 0u;
      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v19 = 0;
      v18 = 0;
      v17 = 0;
      v16 = 0;
      v105 = 0u;
      v106 = 0u;
    }

    v20 = v15 / CGRectGetWidth(*&v16);
    if (v20 >= 1.0)
    {
      v21 = v20;
    }

    else
    {
      v21 = 1.0;
    }

    if (v11)
    {
      [(_UIContextMenuLayoutArbiterOutput *)v11 preview];
    }

    else
    {
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
    }

    CGAffineTransformMakeScale(&v56, v21, v21);
    v22 = [(_UIContextMenuUIController *)self platterContainerView];
    UIRoundToViewScale(v22);
    v24 = v23;
    v25 = [(_UIContextMenuUIController *)self platterContainerView];
    UIRoundToViewScale(v25);
    [(_UIContextMenuUIController *)self setPreviewSize:v24, v26];
  }

  if (v11)
  {
    [(_UIContextMenuLayoutArbiterOutput *)v11 menu];
    v27 = *(&v92 + 1);
    v28 = *&v93;
  }

  else
  {
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v28 = 0.0;
    v27 = 0.0;
    v89 = 0u;
    v90 = 0u;
  }

  v29 = [(_UIContextMenuUIController *)self menuView];
  [v29 setAnchorPoint:{v27, v28}];

  if (v11)
  {
    [(_UIContextMenuLayoutArbiterOutput *)v11 menu];
    v30 = *(&v82 + 1);
    v31 = *&v82;
  }

  else
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v30 = 0.0;
    v31 = 0.0;
    v81 = 0u;
    v82 = 0u;
  }

  v32 = [(_UIContextMenuUIController *)self menuView];
  [v32 setVisibleContentSize:{v31, v30}];

  [(_UIContextMenuLayoutArbiterOutput *)v11 maximumMenuHeight];
  v34 = v33;
  v35 = [(_UIContextMenuUIController *)self menuView];
  [v35 setMaximumMenuHeight:v34];

  v36 = [(_UIContextMenuUIController *)self platterPanController];
  v37 = v36;
  if (v11)
  {
    [(_UIContextMenuLayoutArbiterOutput *)v11 preview];
    [v37 setOriginalPlatterCenter:v75];
    [(_UIContextMenuLayoutArbiterOutput *)v11 menu];
    [v37 setOriginalMenuCenter:v67];
    [(_UIContextMenuLayoutArbiterOutput *)v11 anchor];
  }

  else
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    [v36 setOriginalPlatterCenter:{0.0, 0.0}];
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    [v37 setOriginalMenuCenter:{0.0, 0.0}];
    v64 = 0.0;
    v62 = 0u;
    v63 = 0u;
  }

  *&v56.a = v62;
  *&v56.c = v63;
  v56.tx = v64;
  [v37 setMenuAnchor:&v56];
  v38 = [(_UIContextMenuUIController *)self menuConfiguration];
  v39 = [v38 accessoryViews];
  [v37 setAccessoryViews:v39];

  v40 = [(_UIContextMenuUIController *)self menuConfiguration];
  [v37 setPlatterPivotRotationEnabled:{objc_msgSend(v40, "isMultiItemMenu") ^ 1}];

  v41 = [(_UIContextMenuUIController *)self menuStyle];
  v42 = [v41 preferredLayout];

  if ((v42 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if ([(_UIContextMenuUIController *)self _interfaceIdiom]!= 6)
    {
      [v37 setRubberbandingEdges:11];
    }

    if (v11)
    {
      [(_UIContextMenuLayoutArbiterOutput *)v11 menu];
    }

    else
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v57 = 0u;
      memset(&v56, 0, sizeof(v56));
    }

    v120.origin.x = _UIContextMenuItemFrameFromLayout(&v56);
    MaxY = CGRectGetMaxY(v120);
    [(_UIContextMenuLayoutArbiterOutput *)v11 contentBounds];
    v44 = CGRectGetMaxY(v121);
    if (MaxY - v44 < 0.0 || vabdd_f64(MaxY, v44) <= 2.22044605e-16)
    {
      v53 = *MEMORY[0x1E695EFF8];
      v45 = [MEMORY[0x1E696B098] valueWithBytes:&v53 objCType:"{CGPoint=dd}"];
      v118 = v45;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v118 count:1];
    }

    else
    {
      v55[0] = 0;
      *&v55[1] = -(MaxY - v44);
      v45 = [MEMORY[0x1E696B098] valueWithBytes:v55 objCType:"{CGPoint=dd}"];
      v119[0] = v45;
      v54 = *MEMORY[0x1E695EFF8];
      v46 = [MEMORY[0x1E696B098] valueWithBytes:&v54 objCType:"{CGPoint=dd}"];
      v119[1] = v46;
      v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
    }

    [v37 setDetents:v47];
  }

  if (v11)
  {
    [(_UIContextMenuLayoutArbiterOutput *)v11 anchor];
    v48 = v50;
  }

  else
  {
    v48 = 0;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
  }

  [(_UIContextMenuUIController *)self _updateActionsViewReversesOrderForAttachment:v48, v50, v51, v52];
  currentLayout = self->_currentLayout;
  self->_currentLayout = v11;
}

- (id)_layoutWithUpdatedAttachment:(BOOL)a3 concealedMenu:(BOOL)a4
{
  v76 = a3;
  v77 = a4;
  v78 = [(_UIContextMenuUIController *)self layoutArbiter];
  v5 = [(_UIContextMenuUIController *)self platterContainerView];
  v6 = [(_UIContextMenuUIController *)self menuStyle];
  v7 = [v6 preferredAttachmentEdge];

  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    v8 = [(_UIContextMenuUIController *)self menuStyle];
    v9 = v8;
    if (v8)
    {
      [v8 _preferredAnchor];
    }

    else
    {
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
    }

    *&v95 = v7;
    v94 = v97;
    v92 = v95;
    v93 = v96;
    v10 = [(_UIContextMenuUIController *)self menuStyle];
    v90[0] = v92;
    v90[1] = v93;
    v91 = v94;
    [v10 set_preferredAnchor:v90];
  }

  v11 = objc_opt_new();
  v12 = [(_UIContextMenuUIController *)self menuConfiguration];
  v13 = [v12 sourcePreview];
  [v11 setSourcePreview:v13];

  v14 = [(_UIContextMenuUIController *)self menuStyle];
  [v14 preferredEdgeInsets];
  [v11 setPreferredEdgeInsets:?];

  v15 = [(_UIContextMenuUIController *)self menuStyle];
  v16 = v15;
  if (v15)
  {
    [v15 _preferredAnchor];
  }

  else
  {
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  v95 = v87;
  v96 = v88;
  v97 = v89;
  [v11 setPreferredAnchor:&v95];

  [(_UIContextMenuUIController *)self previewSize];
  [v11 setPreferredPreviewSize:?];
  v17 = [(_UIContextMenuUIController *)self menuStyle];
  v18 = [v17 ignoresDefaultSizingRules];

  if (v18)
  {
    [v11 setPreferredPreviewFittingStrategy:1];
  }

  v19 = [(_UIContextMenuUIController *)self menuView];
  if ([v19 hierarchyStyle] == 2)
  {
    v20 = [(_UIContextMenuUIController *)self menuConfiguration];
    v21 = [v20 menu];
    v22 = ([v21 metadata] >> 16) & 1;
  }

  else
  {
    LODWORD(v22) = 0;
  }

  v23 = [(_UIContextMenuUIController *)self menuConfiguration];
  v24 = [v23 menu];
  v25 = [v24 metadata];

  v26 = [(_UIContextMenuUIController *)self menuConfiguration];
  v27 = [v26 menu];
  v28 = [v27 metadata] >> 32;

  v29 = [(_UIContextMenuUIController *)self menuConfiguration];
  v30 = [v29 menu];
  if (([v30 options] & 0x100) != 0)
  {
    if (_UIApplicationProcessIsSpringBoard() & 1) != 0 || (_UIApplicationProcessIsUIKitester())
    {
      IsOverlayUI = 1;
    }

    else
    {
      IsOverlayUI = _UIApplicationProcessIsOverlayUI();
    }
  }

  else
  {
    IsOverlayUI = 0;
  }

  v32 = [(_UIContextMenuUIController *)self menuStyle];
  [v32 preferredMenuWidth];
  v34 = v33;

  v35 = [(_UIContextMenuUIController *)self menuStyle];
  [v35 _internalPreferredMenuWidth];
  v37 = v36;

  v38 = _UIContextMenuActionsViewWidth(v5, (v25 >> 8) & 1, v22, v28 & 1, IsOverlayUI, [(_UIContextMenuUIController *)self _interfaceIdiom]);
  [v5 bounds];
  Height = CGRectGetHeight(v99);
  if (v11)
  {
    [v11 preferredAnchor];
    if (*(&v84 + 1) == 2)
    {
      v40 = 0;
    }

    else
    {
      [v11 preferredAnchor];
      v40 = *(&v81 + 1) != 8;
    }
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0;
    v40 = 1;
  }

  v41 = [(_UIContextMenuUIController *)self menuStyle];
  v42 = [v41 shouldMenuOverlapSourcePreview];

  v43 = 0.0;
  if ((v25 & 0x100) != 0 && !v40 && (v42 & 1) == 0)
  {
    v44 = [(_UIContextMenuUIController *)self menuStyle];
    v45 = [v44 preferredLayout];

    if (v45 == 3)
    {
      v46 = [(_UIContextMenuUIController *)self platterContainerView];
      v47 = [v46 traitCollection];

      v48 = v47;
      v49 = _UIContextMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
      v50 = [v49 titleFont];
      v51 = [v50 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v48];

      v52 = _UIContextMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
      [v52 leadingIndentationWidth];
      v54 = v53;

      [v51 _scaledValueForValue:v54];
      v55 = [(_UIContextMenuUIController *)self platterContainerView];
      UIRoundToViewScale(v55);
      v57 = v56;

      v43 = -v57;
    }
  }

  if (v34 >= v37)
  {
    v58 = v34;
  }

  else
  {
    v58 = v37;
  }

  if (v58 >= v38)
  {
    v59 = v58;
  }

  else
  {
    v59 = v38;
  }

  v60 = [(_UIContextMenuUIController *)self menuView];
  [v60 preferredContentSizeWithinContainerSize:{v59, Height}];
  [v11 setPreferredMenuSize:?];

  v61 = [(_UIContextMenuUIController *)self menuStyle];
  [v61 _preferredMenuAttachmentPoint];
  [v11 setPreferredMenuAttachmentPoint:?];

  v62 = [(_UIContextMenuUIController *)self menuConfiguration];
  v63 = [v62 accessoryViews];
  [v11 setAccessoryViews:v63];

  [v11 setShouldUpdateAttachment:v76];
  v64 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v11 setShouldAvoidInputViews:{objc_msgSend(v64, "isOnScreen")}];

  [v11 setShouldConcealMenu:v77];
  [v11 setShouldMenuOverlapSourcePreview:v42];
  [v11 setAdditionalAlignmentOffset:v43];
  v65 = [(_UIContextMenuUIController *)self menuStyle];
  [v65 preferredMaximumMenuHeight];
  v67 = v66;
  v68 = [v5 traitCollection];
  v69 = _UIContextMenuGetPlatformMetrics([v68 userInterfaceIdiom]);

  [v69 menuMaximumHeight];
  v71 = v70;

  [v11 setMaximumMenuHeight:{fmax(v67, v71)}];
  v72 = [(_UIContextMenuUIController *)self menuView];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __73___UIContextMenuUIController__layoutWithUpdatedAttachment_concealedMenu___block_invoke;
  v79[3] = &unk_1E70F6200;
  v80 = v72;
  v73 = v72;
  [v11 setComputePreferredScrollTruncationDetentForHeight:v79];
  v74 = [v78 computedLayoutWithInput:v11];

  return v74;
}

- (void)_updateActionsViewReversesOrderForAttachment:(unint64_t)a3
{
  if (a3 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(_UIContextMenuUIController *)self menuView];
  [v6 setAttachmentEdge:v5];

  v7 = [(_UIContextMenuUIController *)self menuStyle];
  v8 = [v7 _orderMenuBasedOnPriority];

  if (a3 == 1 && v8)
  {
    v9 = [(_UIContextMenuUIController *)self menuView];
    [v9 setReversesActionOrder:1];
  }
}

- (void)_updatePlatterAndActionViewLayoutForce:(BOOL)a3 updateAttachment:(BOOL)a4 adjustDetent:(BOOL)a5
{
  if ([(_UIContextMenuUIController *)self _isPresented])
  {
    v9 = [(_UIContextMenuUIController *)self layoutArbiter];

    if (v9)
    {
      if (a3 || [(_UIContextMenuUIController *)self previewSizeDidChange])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke;
        aBlock[3] = &unk_1E70F8A10;
        aBlock[4] = self;
        v17 = a4;
        v18 = a5;
        v10 = _Block_copy(aBlock);
        if ([(_UIContextMenuUIController *)self _isAnimatingPresentation]&& +[UIView areAnimationsEnabled](UIView, "areAnimationsEnabled") && !+[UIView _isInRetargetableAnimationBlock])
        {
          if (+[UIView _isInRetargetableAnimationBlock](UIView, "_isInRetargetableAnimationBlock") || !+[UIView _isInAnimationBlock])
          {
            v14[0] = MEMORY[0x1E69E9820];
            v14[1] = 3221225472;
            v14[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_4;
            v14[3] = &unk_1E70F0F78;
            v15 = v10;
            [UIView _animateByRetargetingAnimations:v14 completion:0];
            v11 = v15;
          }

          else
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke_5;
            v12[3] = &unk_1E70F0F78;
            v13 = v10;
            dispatch_async(MEMORY[0x1E69E96A0], v12);
            v11 = v13;
          }
        }

        else
        {
          v10[2](v10);
        }
      }
    }
  }
}

- (void)_createMenuViewIfNecessaryForMenu:(id)a3
{
  if (([a3 metadata] & 0x1000000) != 0)
  {
    [(_UIContextMenuUIController *)self setMenuIsConcealed:0];
    v4 = [_UIContextMenuView alloc];
    v5 = [(_UIContextMenuView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    menuView = self->_menuView;
    self->_menuView = v5;

    [(_UIContextMenuView *)self->_menuView setHierarchyStyle:[(_UIContextMenuUIController *)self _preferredSubmenuHierarchyStyle]];
    [(_UIContextMenuView *)self->_menuView setDelegate:self];
    v7 = [(_UIContextMenuUIController *)self menuStyle];
    v8 = v7;
    if (v7)
    {
      [v7 _preferredAnchor];
      if (v11 == 1)
      {
        [(_UIContextMenuUIController *)self _updateActionsViewReversesOrderForAttachment:1];
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }

    -[_UIContextMenuView setShouldAvoidInputViews:](self->_menuView, "setShouldAvoidInputViews:", [v8 _shouldAvoidInputViews]);
    v9 = [v8 preferredLayout] == 1 || objc_msgSend(v8, "preferredLayout") == 3;
    [(_UIContextMenuView *)self->_menuView setScrubbingEnabled:v9];
    -[_UIContextMenuView setAllowsBackgroundViewInteraction:](self->_menuView, "setAllowsBackgroundViewInteraction:", [v8 _backgroundInteractionStyle] != 0);
    -[_UIContextMenuView setShouldEnableTypeSelect:](self->_menuView, "setShouldEnableTypeSelect:", [v8 _wantsTypeSelect]);
    v10 = [v8 preferredMenuMaterial];
    [(_UIContextMenuView *)self->_menuView setPreferredMenuMaterial:v10];
  }
}

- (void)displayMenu:(id)a3 inPlaceOfMenu:(id)a4
{
  if (a4)
  {
    [(_UIContextMenuUIController *)self _replaceVisibleMenu:a4 withMenu:a3];
  }

  else
  {
    [(_UIContextMenuUIController *)self _displayMenu:a3 updateType:3];
  }
}

- (void)retargetDismissingMenuToPreview:(id)a3
{
  if (!a3)
  {
    v7[9] = v3;
    v7[10] = v4;
    v6 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.2];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __62___UIContextMenuUIController_retargetDismissingMenuToPreview___block_invoke;
    v7[3] = &unk_1E70F3590;
    v7[4] = self;
    [UIView _animateUsingSpringBehavior:v6 tracking:0 animations:v7 completion:0];
  }
}

- (void)didSelectCancelActionInContextMenuView:(id)a3
{
  v4 = [(_UIContextMenuUIController *)self delegate];
  [v4 contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
}

- (void)contextMenuView:(id)a3 didSelectElement:(id)a4
{
  v5 = a4;
  v6 = [(_UIContextMenuUIController *)self delegate];
  if ([v5 _isLeaf])
  {
    v7 = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63___UIContextMenuUIController_contextMenuView_didSelectElement___block_invoke;
    aBlock[3] = &unk_1E70F6228;
    v8 = v6;
    v11 = v8;
    v12 = self;
    v13 = v7;
    v9 = _Block_copy(aBlock);
    if ([v7 keepsMenuPresented])
    {
      v9[2](v9);
    }

    else
    {
      [v8 contextMenuUIController:self didRequestDismissalWithReason:1 alongsideActions:v9 completion:0];
    }
  }

  else
  {
    [(_UIContextMenuUIController *)self _displayMenu:v5 updateType:1];
  }
}

- (id)contextMenuView:(id)a3 willDisplayMenu:(id)a4
{
  v5 = a4;
  v6 = [(_UIContextMenuUIController *)self delegate];
  v7 = [v6 contextMenuUIController:self willDisplayMenu:v5];

  return v7;
}

- (void)_displayMenu:(id)a3 updateType:(unint64_t)a4
{
  v6 = a3;
  [(_UIContextMenuUIController *)self setMenuIsConcealed:0];
  v7 = [(_UIContextMenuUIController *)self menuView];

  if (v7)
  {
    if (a4 == 1)
    {
      v8 = [(_UIContextMenuUIController *)self menuView];
      v9 = [v8 visibleMenus];
      v10 = [v9 containsObject:v6] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    v12 = [(_UIContextMenuUIController *)self menuView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_4;
    v13[3] = &unk_1E7124DB8;
    v13[4] = self;
    v14 = v10;
    [v12 displayMenu:v6 updateType:a4 alongsideAnimations:v13];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v16[4] = self;
    v17 = v6;
    [UIView performWithoutAnimation:v16];
    v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_2;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v15 completion:0];

    v12 = v17;
  }
}

- (void)_replaceVisibleMenu:(id)a3 withMenu:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UIContextMenuUIController *)self menuView];

  if (v8)
  {
    v9 = [(_UIContextMenuUIController *)self menuView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59___UIContextMenuUIController__replaceVisibleMenu_withMenu___block_invoke;
    v10[3] = &unk_1E7105EF8;
    v10[4] = self;
    [v9 replaceVisibleMenu:v6 withMenu:v7 alongsideAnimations:v10];
  }

  else
  {
    [(_UIContextMenuUIController *)self _displayMenu:v7 updateType:0];
  }
}

- (void)_concealMenu
{
  v3 = [(_UIContextMenuUIController *)self menuConfiguration];
  v4 = [v3 previewViewController];

  if (v4)
  {
    v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
    v6 = [(_UIContextMenuUIController *)self menuView];
    [v6 setUserInteractionEnabled:0];
    [(_UIContextMenuUIController *)self setMenuIsConcealed:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42___UIContextMenuUIController__concealMenu__block_invoke;
    v11[3] = &unk_1E70F3590;
    v11[4] = self;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42___UIContextMenuUIController__concealMenu__block_invoke_3;
    v9[3] = &unk_1E70F4000;
    v9[4] = self;
    v10 = v6;
    v7 = v6;
    [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v11 completion:v9];
  }

  else
  {
    v8 = [(_UIContextMenuUIController *)self delegate];
    [v8 contextMenuUIController:self didRequestDismissalWithReason:5 alongsideActions:0 completion:0];
  }
}

- (void)hideSourcePreview:(id)a3
{
  v9 = a3;
  v4 = [v9 view];
  v5 = [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion sourceView];

  if (v4 != v5)
  {
    v6 = [v9 view];
    v7 = [v6 _vendAssertionForOverrideAlpha:0.0];
    sourcePreviewAlphaOverrideAssertion = self->_sourcePreviewAlphaOverrideAssertion;
    self->_sourcePreviewAlphaOverrideAssertion = v7;
  }
}

- (id)dismissalPreviewForStyle:(unint64_t)a3 clientReturnedPreview:(BOOL *)a4
{
  v7 = [(_UIContextMenuUIController *)self menuConfiguration];
  if (a3 == 1)
  {
    v8 = [(_UIContextMenuUIController *)self _destinationPlatterView];
    if (v8)
    {
      v9 = [(_UIContextMenuUIController *)self _dragContainerView];
      v10 = [v9 superview];
      [v9 center];
      v12 = v11;
      v14 = v13;
      v15 = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
      [v10 convertPoint:v15 toView:{v12, v14}];
      v17 = v16;
      v19 = v18;

      v20 = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
      [v20 addSubview:v9];

      [v9 setCenter:{v17, v19}];
      v21 = [UIPreviewTarget alloc];
      v22 = [v9 superview];
      [v9 center];
      v24 = v23;
      v26 = v25;
      [v8 targetTransform];
      CATransform3DGetAffineTransform(&v42, &v41);
      v27 = [(UIPreviewTarget *)v21 initWithContainer:v22 center:&v42 transform:v24, v26];

      v28 = objc_opt_new();
      v29 = +[UIColor clearColor];
      [v28 setBackgroundColor:v29];

      v30 = [v8 preview];
      v31 = [v30 outline];
      [v28 setVisiblePath:v31];

      v32 = [v8 preview];
      v33 = [v32 shadowPath];
      [v28 setShadowPath:v33];

      [v28 setAppliesShadow:1];
      v34 = [[UITargetedPreview alloc] initWithView:v8 parameters:v28 target:v27];
      v35 = [v8 preview];
      v36 = [v35 previewMode];

      if (v36 == 4)
      {
        [(UITargetedPreview *)v34 _setPreviewMode:4];
      }
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v37 = [(_UIContextMenuUIController *)self delegate];
    v38 = [(_UIContextMenuUIController *)self menuConfiguration];
    v39 = [v38 identifier];
    v34 = [v37 contextMenuUIController:self dismissalPreviewForItem:v39 clientReturnedPreview:a4];
  }

  return v34;
}

- (id)dismissalPreviewForSecondaryItem:(id)a3 style:(unint64_t)a4
{
  v9 = 0;
  v5 = a3;
  v6 = [(_UIContextMenuUIController *)self delegate];
  v7 = [v6 contextMenuUIController:self dismissalPreviewForItem:v5 clientReturnedPreview:&v9];

  return v7;
}

- (void)_sceneWillDeactivate:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuUIController *)self platterContainerView];
  v12 = [v5 _window];

  v6 = [v4 object];

  v7 = [v12 windowScene];

  v8 = v12;
  if (v6 == v7)
  {
    if ([(_UIContextMenuUIController *)self _isPresented])
    {
      v9 = [(_UIContextMenuUIController *)self _platformMetrics];
      if ([v9 shouldDismissMenuOnSceneDeactivation])
      {
        v10 = [(_UIContextMenuUIController *)self delegate];
        [v10 contextMenuUIController:self didRequestDismissalWithReason:3 alongsideActions:0 completion:0];
      }
    }

    else
    {
      v11 = [(_UIContextMenuUIController *)self platterContainerView];
      [v11 setHidden:1];

      v9 = [(_UIContextMenuUIController *)self contentPlatterView];
      [v9 setHidesCollapsedSourceView:0];
    }

    v8 = v12;
  }
}

- (void)_enumeratePlatterViewsWithBlock:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0;
  v5 = [(_UIContextMenuUIController *)self contentPlatterView];

  if (!v5 || ((-[_UIContextMenuUIController contentPlatterView](self, "contentPlatterView"), v6 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuUIController flocker](self, "flocker"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 itemCount] - 1, v7, v8 >= 4) ? (v9 = 4) : (v9 = v8), v4[2](v4, v6, v9, 1, &v26), v6, (v26 & 1) == 0))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [(_UIContextMenuUIController *)self flocker];
    v11 = [v10 secondaryPlatterViews];

    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          v18 = [v17 view];
          [v18 alpha];
          v20 = fabs(v19);

          if (v20 >= 2.22044605e-16)
          {
            v21 = [v17 view];
            v4[2](v4, v21, v14, 0, &v26);

            if (v26)
            {
              goto LABEL_16;
            }

            ++v14;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

LABEL_16:
  }
}

- (UIViewFloatAnimatableProperty)backgroundViewAnimationProgress
{
  backgroundViewAnimationProgress = self->_backgroundViewAnimationProgress;
  if (!backgroundViewAnimationProgress)
  {
    v4 = objc_opt_new();
    v5 = self->_backgroundViewAnimationProgress;
    self->_backgroundViewAnimationProgress = v4;

    backgroundViewAnimationProgress = self->_backgroundViewAnimationProgress;
  }

  return backgroundViewAnimationProgress;
}

- (void)_testing_dismissByTappingOutside
{
  v3 = [(_UIContextMenuUIController *)self delegate];
  [v3 contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
}

- (void)_testing_tapAnAction
{
  v2 = [(_UIContextMenuUIController *)self menuView];
  [v2 performSelector:sel__testing_tapAnAction];
}

@end