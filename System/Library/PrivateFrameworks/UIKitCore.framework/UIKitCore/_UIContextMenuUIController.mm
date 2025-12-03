@interface _UIContextMenuUIController
- (BOOL)_needsToAvoidKeyboardForResponder:(id)responder;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)shouldMaintainKeyboardAssertionForFirstResponder:(id)responder;
- (CGSize)previewSize;
- (UIView)platterContainerView;
- (UIView)platterTransitionView;
- (UIViewFloatAnimatableProperty)backgroundViewAnimationProgress;
- (UIVisualEffectView)backgroundEffectView;
- (_UIContextMenuLayoutArbiterOutput)currentLayout;
- (_UIContextMenuUIController)initWithConfiguration:(id)configuration style:(id)style;
- (_UIContextMenuUIControllerDelegate)delegate;
- (_UIFlocker)flocker;
- (_UIMorphPlatterViewBase)contentPlatterView;
- (id)_layoutWithUpdatedAttachment:(BOOL)attachment concealedMenu:(BOOL)menu;
- (id)_platformMetrics;
- (id)_primaryPlatterDragPreviewForDragItem:(id)item preferringFullSize:(BOOL)size;
- (id)contextMenuView:(id)view willDisplayMenu:(id)menu;
- (id)dismissalPreviewForSecondaryItem:(id)item style:(unint64_t)style;
- (id)dismissalPreviewForStyle:(unint64_t)style clientReturnedPreview:(BOOL *)preview;
- (id)livePreviewForDragItem:(id)item preferringFullSize:(BOOL)size;
- (id)previewForCancellingDragItem:(id)item;
- (id)windowSceneActivationPreview;
- (int64_t)_interfaceIdiom;
- (unint64_t)_preferredSubmenuHierarchyStyle;
- (void)_adjustViewForKeyboardVisibility:(BOOL)visibility keyboardInfo:(id)info;
- (void)_cleanUpDragViews;
- (void)_concealMenu;
- (void)_createMenuViewIfNecessaryForMenu:(id)menu;
- (void)_didBeginMorphToDragPreview;
- (void)_didCompleteMorphToDragPreview;
- (void)_displayMenu:(id)menu updateType:(unint64_t)type;
- (void)_enumeratePlatterViewsWithBlock:(id)block;
- (void)_handleActionHandoffGesture:(id)gesture;
- (void)_handleDismissalTapGesture:(id)gesture;
- (void)_handlePlatterActionTapGesture:(id)gesture;
- (void)_installViewsIntoDragContainerView:(id)view;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_replaceVisibleMenu:(id)menu withMenu:(id)withMenu;
- (void)_sceneWillDeactivate:(id)deactivate;
- (void)_testing_dismissByTappingOutside;
- (void)_testing_tapAnAction;
- (void)_updateActionsViewReversesOrderForAttachment:(unint64_t)attachment;
- (void)_updateLayoutAndAttachment:(BOOL)attachment;
- (void)_updatePlatterAndActionViewLayoutForce:(BOOL)force updateAttachment:(BOOL)attachment adjustDetent:(BOOL)detent;
- (void)_updatePlatterContainerViewTraitCollection;
- (void)contextMenuView:(id)view didSelectElement:(id)element;
- (void)dealloc;
- (void)didSelectCancelActionInContextMenuView:(id)view;
- (void)dismissalTransitionDidEnd;
- (void)dismissalTransitionWillBegin;
- (void)displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu;
- (void)dragWillCancelWithAnimator:(id)animator;
- (void)endSourcePreviewHidingIfNeeded;
- (void)hideSourcePreview:(id)preview;
- (void)platterPanControllerDidSwipeDown:(id)down;
- (void)platterPanControllerDidTearOff:(id)off;
- (void)platterPanInteractionBegan:(id)began allowSwipeToDismiss:(BOOL *)dismiss;
- (void)platterPanInteractionEnded:(id)ended;
- (void)presentationTransitionWillBegin;
- (void)previewSizeDidChange:(CGSize)change;
- (void)retargetDismissingMenuToPreview:(id)preview;
- (void)viewTraitCollectionDidChange;
@end

@implementation _UIContextMenuUIController

- (UIView)platterContainerView
{
  platterContainerView = self->_platterContainerView;
  if (!platterContainerView)
  {
    menuStyle = [(_UIContextMenuUIController *)self menuStyle];
    v5 = [menuStyle _backgroundInteractionStyle] == 2;

    v6 = [_UIContextMenuContainerView alloc];
    v7 = [(_UIContextMenuContainerView *)v6 initWithFrame:v5 allowsBackgroundInteractionAcrossProccesses:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    objc_initWeak(&location, self);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke;
    v22[3] = &unk_1E7124DE0;
    objc_copyWeak(&v23, &location);
    [(UIView *)v7 setSubtreeTraitPropagationHandler:v22];
    traitCollection = [(UIView *)v7 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom || (-[_UIContextMenuUIController menuStyle](self, "menuStyle"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 preferredLayout], v10, v11 == 3))
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __50___UIContextMenuUIController_platterContainerView__block_invoke_3;
      v20[3] = &unk_1E70F5A28;
      objc_copyWeak(&v21, &location);
      [(UIView *)v7 setDismissalHandler:v20];
      platterTransitionView = [(_UIContextMenuUIController *)self platterTransitionView];
      [(UIView *)v7 setContentWrapperView:platterTransitionView];

      objc_destroyWeak(&v21);
    }

    menuStyle2 = [(_UIContextMenuUIController *)self menuStyle];
    -[UIView setAllowsDragEventsToPassthrough:](v7, "setAllowsDragEventsToPassthrough:", [menuStyle2 preferredLayout] == 3);

    menuStyle3 = [(_UIContextMenuUIController *)self menuStyle];
    ignoresContainerSizeChange = [menuStyle3 ignoresContainerSizeChange];

    if ((ignoresContainerSizeChange & 1) == 0)
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
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  sourcePreview = [menuConfiguration sourcePreview];
  view = [sourcePreview view];
  traitCollection = [view traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  return userInterfaceIdiom;
}

- (_UIFlocker)flocker
{
  if (!self->_flocker)
  {
    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    isMultiItemMenu = [menuConfiguration isMultiItemMenu];

    if (isMultiItemMenu)
    {
      v5 = [_UIFlocker alloc];
      platterTransitionView = [(_UIContextMenuUIController *)self platterTransitionView];
      v7 = [(_UIFlocker *)v5 initWithContainerView:platterTransitionView];
      flocker = self->_flocker;
      self->_flocker = v7;

      menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
      -[_UIFlocker setItemCount:](self->_flocker, "setItemCount:", [menuConfiguration2 representedItemCount]);

      menuConfiguration3 = [(_UIContextMenuUIController *)self menuConfiguration];
      -[_UIFlocker setBadgeValue:](self->_flocker, "setBadgeValue:", [menuConfiguration3 badgeCount]);
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
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  containerView = [menuStyle containerView];

  if (containerView)
  {
    menuStyle2 = [(_UIContextMenuUIController *)self menuStyle];
    containerView2 = [menuStyle2 containerView];
  }

  else
  {
    menuStyle2 = [(_UIContextMenuUIController *)self menuConfiguration];
    sourcePreview = [menuStyle2 sourcePreview];
    view = [sourcePreview view];
    containerView2 = [view _window];
  }

  _platformMetrics = [(_UIContextMenuUIController *)self _platformMetrics];
  containerViewProviderWithEntity = [_platformMetrics containerViewProviderWithEntity];

  _platformMetrics2 = [(_UIContextMenuUIController *)self _platformMetrics];
  containerViewProvider = [_platformMetrics2 containerViewProvider];

  if (containerViewProviderWithEntity)
  {
    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    sourcePreview2 = [menuConfiguration sourcePreview];
    menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
    menu = [menuConfiguration2 menu];
    v16 = (*(containerViewProviderWithEntity + 16))(containerViewProviderWithEntity, containerView2, sourcePreview2, menu, 0);
  }

  else
  {
    if (!containerViewProvider)
    {
      goto LABEL_9;
    }

    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    sourcePreview2 = [menuConfiguration sourcePreview];
    menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
    menu = [menuConfiguration2 menu];
    v16 = (*(containerViewProvider + 16))(containerViewProvider, containerView2, sourcePreview2, menu);
  }

  v17 = v16;

  containerView2 = v17;
LABEL_9:
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  [containerView2 bounds];
  [platterContainerView setFrame:?];
  [platterContainerView setAutoresizingMask:18];
  [platterContainerView setUserInteractionEnabled:1];
  menuStyle3 = [(_UIContextMenuUIController *)self menuStyle];
  [platterContainerView setPassesBackgroundViewTouchesThrough:{objc_msgSend(menuStyle3, "_backgroundInteractionStyle") == 1}];

  [containerView2 addSubview:platterContainerView];
  menuConfiguration3 = [(_UIContextMenuUIController *)self menuConfiguration];
  menu2 = [menuConfiguration3 menu];

  if (([menu2 metadata] & 0x1000000) != 0)
  {
    [(_UIContextMenuUIController *)self _createMenuViewIfNecessaryForMenu:menu2];
    menuView = [(_UIContextMenuUIController *)self menuView];
    [menuView displayMenu:menu2 updateType:0 alongsideAnimations:0];
  }

  v23 = [_UIContextMenuPanController alloc];
  contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
  menuView2 = [(_UIContextMenuUIController *)self menuView];
  v26 = [(_UIContextMenuPanController *)v23 initWithContainerView:platterContainerView platterView:contentPlatterView menuView:menuView2];
  [(_UIContextMenuUIController *)self setPlatterPanController:v26];

  platterPanController = [(_UIContextMenuUIController *)self platterPanController];
  [platterPanController setDelegate:self];

  v28 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleDismissalTapGesture_];
  [(UIGestureRecognizer *)v28 setName:@"com.apple.UIKit.ContextMenuDismissalTap"];
  [(UIGestureRecognizer *)v28 setDelegate:self];
  [platterContainerView addGestureRecognizer:v28];
  [(_UIContextMenuUIController *)self setDismissalTapGestureRecognizer:v28];
  menuView3 = [(_UIContextMenuUIController *)self menuView];
  if ([(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)menuView3 scrubbingEnabled])
  {
    _interfaceIdiom = [(_UIContextMenuUIController *)self _interfaceIdiom];

    if (_interfaceIdiom == 6)
    {
      goto LABEL_17;
    }

    menuView3 = [[_UIContextMenuActionScrubbingHandoffGestureRecognizer alloc] initWithTarget:self action:sel__handleActionHandoffGesture_];
    [(UIGestureRecognizer *)menuView3 setDelegate:self];
    menuStyle4 = [(_UIContextMenuUIController *)self menuStyle];
    _allowsImmediateSelection = [menuStyle4 _allowsImmediateSelection];

    if (_allowsImmediateSelection)
    {
      [(_UIContextMenuActionScrubbingHandoffGestureRecognizer *)menuView3 setHysteresis:0.0];
    }

    [platterContainerView addGestureRecognizer:menuView3];
    [(_UIContextMenuUIController *)self setActionScrubbingHandoffGestureRecognizer:menuView3];
  }

LABEL_17:
  v47 = containerViewProviderWithEntity;
  v33 = containerViewProvider;
  [(_UIContextMenuUIController *)self _updatePlatterContainerViewTraitCollection];
  v34 = [_UIContextMenuLayoutArbiter alloc];
  menuStyle5 = [(_UIContextMenuUIController *)self menuStyle];
  v36 = -[_UIContextMenuLayoutArbiter initWithContainerView:layout:](v34, "initWithContainerView:layout:", platterContainerView, [menuStyle5 preferredLayout]);
  [(_UIContextMenuUIController *)self setLayoutArbiter:v36];

  [(_UIContextMenuUIController *)self setState:1];
  menuConfiguration4 = [(_UIContextMenuUIController *)self menuConfiguration];
  sourcePreview3 = [menuConfiguration4 sourcePreview];
  target = [sourcePreview3 target];
  container = [target container];
  _window = [container _window];

  if (([_window _isTextEffectsWindow] & 1) == 0)
  {
    [_window makeKeyWindow];
  }

  _focusSystemSceneComponent = [platterContainerView _focusSystemSceneComponent];
  menuView4 = [(_UIContextMenuUIController *)self menuView];
  [_focusSystemSceneComponent pushPreferredFocusEnvironmentOverride:menuView4];

  if ([(_UIContextMenuView *)self->_menuView shouldEnableTypeSelect]&& +[_UITypeSelectInteraction isTypeSelectSupported])
  {
    window = [platterContainerView window];
    windowScene = [window windowScene];
    _keyboardOverridingSceneComponent = [windowScene _keyboardOverridingSceneComponent];

    [_keyboardOverridingSceneComponent setCommonView:platterContainerView];
  }
}

- (id)_platformMetrics
{
  _interfaceIdiom = [(_UIContextMenuUIController *)self _interfaceIdiom];

  return _UIContextMenuGetPlatformMetrics(_interfaceIdiom);
}

- (_UIMorphPlatterViewBase)contentPlatterView
{
  contentPlatterView = self->_contentPlatterView;
  if (!contentPlatterView)
  {
    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    menuStyle = [(_UIContextMenuUIController *)self menuStyle];
    isMultiItemMenu = [menuConfiguration isMultiItemMenu];
    if ((isMultiItemMenu & 1) != 0 || [menuStyle _layoutAllowsPreview])
    {
      _UIContextMenuMagicMorphAnimationEnabled();
      v7 = objc_opt_new();
      v8 = self->_contentPlatterView;
      self->_contentPlatterView = v7;

      platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
      traitCollection = [platterContainerView traitCollection];
      v11 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

      if (isMultiItemMenu)
      {
        v12 = 1;
      }

      else if ([menuStyle preferredLayout] == 1)
      {
        previewViewController = [menuConfiguration previewViewController];
        v12 = previewViewController == 0;
      }

      else
      {
        v12 = 0;
      }

      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setAlwaysCompact:v12];
      -[_UIMorphPlatterViewBase setAllowsUserInteractionInExpandedPreview:](self->_contentPlatterView, "setAllowsUserInteractionInExpandedPreview:", [menuStyle hasInteractivePreview]);
      -[_UIMorphPlatterViewBase setPreventPreviewRasterization:](self->_contentPlatterView, "setPreventPreviewRasterization:", [menuStyle preventPreviewRasterization]);
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setWantsEdgeAntialiasing:isMultiItemMenu];
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
      previewShadowSettings = [v11 previewShadowSettings];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setShadowSettings:previewShadowSettings];

      submenuSeparatedOptions = [v11 submenuSeparatedOptions];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setSeparatedOptions:submenuSeparatedOptions];

      shouldApplyClippingHandler = [v11 shouldApplyClippingHandler];
      [(_UIMorphPlatterViewBase *)self->_contentPlatterView setShouldApplyClippingHandler:shouldApplyClippingHandler];

      if ([menuStyle ignoresDefaultSizingRules])
      {
        [(_UIMorphPlatterViewBase *)self->_contentPlatterView setPreferredMorphingAxis:1];
      }

      previewAction = [menuConfiguration previewAction];

      if (previewAction)
      {
        v19 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handlePlatterActionTapGesture_];
        [(_UIContextMenuUIController *)self setPlatterActionTapGestureRecognizer:v19];

        platterActionTapGestureRecognizer = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [platterActionTapGestureRecognizer setName:@"com.apple.UIKit.ContextMenuPreviewActionTap"];

        platterActionTapGestureRecognizer2 = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [platterActionTapGestureRecognizer2 setDelegate:self];

        v22 = self->_contentPlatterView;
        platterActionTapGestureRecognizer3 = [(_UIContextMenuUIController *)self platterActionTapGestureRecognizer];
        [(UIView *)v22 addGestureRecognizer:platterActionTapGestureRecognizer3];
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
    menuStyle = [(_UIContextMenuUIController *)self menuStyle];
    _parentTraitEnvironmentForUserInterfaceStyle = [menuStyle _parentTraitEnvironmentForUserInterfaceStyle];

    v4 = _parentTraitEnvironmentForUserInterfaceStyle;
    if (_parentTraitEnvironmentForUserInterfaceStyle)
    {
      platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
      v6 = [_parentTraitEnvironmentForUserInterfaceStyle _traitCollectionForChildEnvironment:platterContainerView];

      glassUserInterfaceStyle = [v6 glassUserInterfaceStyle];
      if (glassUserInterfaceStyle || (glassUserInterfaceStyle = [v6 userInterfaceStyle]) != 0)
      {
        v8 = glassUserInterfaceStyle;
        platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
        _internalTraitOverrides = [(UIView *)platterContainerView2 _internalTraitOverrides];
        [_internalTraitOverrides setUserInterfaceStyle:v8];
      }

      else
      {
        platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
        _internalTraitOverrides = [(UIView *)platterContainerView2 _internalTraitOverrides];
        [(_UITraitOverrides *)_internalTraitOverrides _removeTraitToken:?];
      }

      platterContainerView3 = [(_UIContextMenuUIController *)self platterContainerView];
      [platterContainerView3 updateTraitsIfNeeded];

      v4 = _parentTraitEnvironmentForUserInterfaceStyle;
    }
  }
}

- (unint64_t)_preferredSubmenuHierarchyStyle
{
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  prefersStackedHierarchy = [menuStyle prefersStackedHierarchy];

  if ((prefersStackedHierarchy & 1) != 0 || ![(_UIContextMenuUIController *)self _interfaceIdiom])
  {
    return 1;
  }

  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  [platterContainerView bounds];
  Width = CGRectGetWidth(v11);
  platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
  v8 = _UIContextMenuActionsViewWidth(platterContainerView2, 0, 0, 0, 0, [(_UIContextMenuUIController *)self _interfaceIdiom]);
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
          cGColor = [v10 CGColor];
          layer = [(UIView *)self->_platterTransitionView layer];
          [layer setBorderColor:cGColor];

          layer2 = [(UIView *)self->_platterTransitionView layer];
          [layer2 setBorderWidth:6.0];
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

- (_UIContextMenuUIController)initWithConfiguration:(id)configuration style:(id)style
{
  configurationCopy = configuration;
  styleCopy = style;
  v8 = [(_UIContextMenuUIController *)self init];
  v9 = v8;
  if (v8)
  {
    [(_UIContextMenuUIController *)v8 setMenuConfiguration:configurationCopy];
    [(_UIContextMenuUIController *)v9 setMenuStyle:styleCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__keyboardWillShow_ name:@"UIKeyboardWillShowNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__keyboardWillHide_ name:@"UIKeyboardWillHideNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v9 selector:sel__sceneWillDeactivate_ name:@"UISceneWillDeactivateNotification" object:0];
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

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"UIKeyboardWillShowNotification";
  v6[1] = @"UIKeyboardWillHideNotification";
  v6[2] = @"UISceneWillDeactivateNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIContextMenuUIController;
  [(_UIContextMenuUIController *)&v5 dealloc];
}

- (void)dismissalTransitionWillBegin
{
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  _focusSystemSceneComponent = [platterContainerView _focusSystemSceneComponent];
  menuView = [(_UIContextMenuUIController *)self menuView];
  [_focusSystemSceneComponent removePreferredFocusEnvironmentOverride:menuView];

  [(_UIContextMenuUIController *)self setState:0];
  [(_UIContextMenuView *)self->_menuView disableTypeSelectIfNeeded];
  platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
  [platterContainerView2 setUserInteractionEnabled:0];

  _platformMetrics = [(_UIContextMenuUIController *)self _platformMetrics];
  preDismissalHandler = [_platformMetrics preDismissalHandler];

  if (preDismissalHandler)
  {
    platterContainerView3 = [(_UIContextMenuUIController *)self platterContainerView];
    preDismissalHandler[2](preDismissalHandler, platterContainerView3);
  }

  platterPanController = [(_UIContextMenuUIController *)self platterPanController];
  [platterPanController setEnabled:0];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
}

- (void)dismissalTransitionDidEnd
{
  _platformMetrics = [(_UIContextMenuUIController *)self _platformMetrics];
  postDismissalHandler = [_platformMetrics postDismissalHandler];

  if (postDismissalHandler)
  {
    platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
    postDismissalHandler[2](postDismissalHandler, platterContainerView);
  }
}

- (void)platterPanControllerDidTearOff:(id)off
{
  panGestureRecognizer = [off panGestureRecognizer];
  _allActiveTouches = [panGestureRecognizer _allActiveTouches];
  anyObject = [_allActiveTouches anyObject];

  delegate = [(_UIContextMenuUIController *)self delegate];
  [delegate contextMenuUIController:self didBeginDragWithTouch:anyObject];
}

- (void)platterPanControllerDidSwipeDown:(id)down
{
  delegate = [(_UIContextMenuUIController *)self delegate];
  [delegate contextMenuUIController:self didRequestDismissalWithReason:2 alongsideActions:0 completion:0];
}

- (void)platterPanInteractionBegan:(id)began allowSwipeToDismiss:(BOOL *)dismiss
{
  delegate = [(_UIContextMenuUIController *)self delegate];
  *dismiss = [delegate contextMenuUIControllerShouldAllowSwipeToDismissForBeginningPanInteraction:self];
}

- (void)platterPanInteractionEnded:(id)ended
{
  delegate = [(_UIContextMenuUIController *)self delegate];
  [delegate contextMenuUIControllerDidEndPanInteraction:self];
}

- (id)livePreviewForDragItem:(id)item preferringFullSize:(BOOL)size
{
  sizeCopy = size;
  itemCopy = item;
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
  v7 = itemCopy;
  v30 = v7;
  v32 = &v38;
  v33 = &v34;
  [(_UIContextMenuUIController *)self _enumeratePlatterViewsWithBlock:v29];
  if (!v43[5])
  {
    flocker = [(_UIContextMenuUIController *)self flocker];
    secondaryPlatterViews = [flocker secondaryPlatterViews];
    v10 = [secondaryPlatterViews count];

    if (!v10)
    {
      contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
      v12 = v43[5];
      v43[5] = contentPlatterView;

      *(v39 + 24) = 1;
      v35[3] = 0;
    }
  }

  v13 = v43[5];
  if (v13)
  {
    if (*(v39 + 24) == 1)
    {
      v14 = [(_UIContextMenuUIController *)self _primaryPlatterDragPreviewForDragItem:v7 preferringFullSize:sizeCopy];
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
      collapsedPreview = [v43[5] collapsedPreview];
      [collapsedPreview size];
      v18 = Width / v17;

      v24 = location;
      CGAffineTransformScale(&v25, &v24, v18, v18);
      location = v25;
      v19 = [UIDragPreviewTarget alloc];
      superview = [v43[5] superview];
      [v43[5] center];
      v25 = location;
      v21 = [(UIPreviewTarget *)v19 initWithContainer:superview center:&v25 transform:?];

      _targetedLiftPreview = [v7 _targetedLiftPreview];
      v14 = [_targetedLiftPreview retargetedPreviewWithTarget:v21];

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

- (id)_primaryPlatterDragPreviewForDragItem:(id)item preferringFullSize:(BOOL)size
{
  itemCopy = item;
  [itemCopy _setDeferPreviewUpdates:1];
  previewProvider = [itemCopy previewProvider];

  if (!previewProvider)
  {
    v8 = 0;
LABEL_6:
    _targetedLiftPreview = [itemCopy _targetedLiftPreview];
    v10 = [itemCopy _previewProviderForType:1];

    v8 = v10;
    goto LABEL_7;
  }

  v8 = [itemCopy _previewProviderForType:2];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  _targetedLiftPreview = [v8 preview];
  if (!_targetedLiftPreview)
  {
    goto LABEL_6;
  }

LABEL_7:
  sourceView = [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion sourceView];
  view = [_targetedLiftPreview view];

  if (sourceView == view)
  {
    view2 = [_targetedLiftPreview view];
    [view2 alpha];
    [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion setAlpha:?];
  }

  [_targetedLiftPreview _setPreventAfterScreenUpdatesSnapshot:sourceView != view];
  _duiPreview = [v8 _duiPreview];
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  if (([menuConfiguration isMultiItemMenu] & 1) != 0 || objc_msgSend(_duiPreview, "isOversized"))
  {

LABEL_12:
    [_duiPreview scaledSize];
    v17 = v16;
    v19 = v18;
    v20 = 1;
    goto LABEL_13;
  }

  [_duiPreview scaleFactor];
  v50 = v49;

  if (v50 < 1.0 && !size)
  {
    goto LABEL_12;
  }

  [_duiPreview unscaledSize];
  v17 = v51;
  v19 = v52;
  v20 = 0;
LABEL_13:
  if (_duiPreview)
  {
    [_duiPreview liftTransform];
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
    [_duiPreview scaledSize];
    v28 = v27;
    [_duiPreview unscaledSize];
    v30 = v28 / v29 * 33.0;
  }

  else
  {
    v30 = 33.0;
  }

  [_duiPreview setAvoidAnimation:{1, _targetedLiftPreview}];
  v31 = objc_opt_new();
  [v31 _setPreviewMode:3];
  v32 = [(UITargetedPreview *)[UITargetedDragPreview alloc] initWithView:v26 parameters:v31];
  [(UITargetedDragPreview *)v32 setLiftAnchorPoint:v25 * 0.5, v30];

  v33 = [_UIPlatterView alloc];
  imageComponent = [v8 imageComponent];
  view3 = [(UITargetedPreview *)v32 view];
  v36 = [(_UIPlatterView *)v33 initWithDUIPreview:_duiPreview imageComponent:imageComponent sourceView:view3];

  [(_UIPlatterView *)v36 setConstrainSize:v20];
  [(_UIPlatterView *)v36 setLifted:1];
  [(_UIPlatterView *)v36 setTransformAppliedExternally:1];
  [(_UIPlatterView *)v36 setAppliesOriginalRotation:1];
  [(_UIContextMenuUIController *)self set_destinationPlatterView:v36];
  _dragContainerTransitionView = [(_UIContextMenuUIController *)self _dragContainerTransitionView];

  v54 = v8;
  if (_dragContainerTransitionView)
  {
    contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
    [contentPlatterView center];
    [(UIView *)v36 setCenter:?];

    _dragContainerTransitionView2 = [(_UIContextMenuUIController *)self _dragContainerTransitionView];
    [_dragContainerTransitionView2 addSubview:v36];
  }

  else
  {
    [(_UIPlatterView *)v36 setShadowVisible:0];
  }

  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  v41 = objc_opt_new();
  [v41 setAlpha:0.0];
  platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
  window = [platterContainerView2 window];
  [window insertSubview:v41 atIndex:0];

  [(_UIContextMenuUIController *)self set_subterraneanViewContainer:v41];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __87___UIContextMenuUIController__primaryPlatterDragPreviewForDragItem_preferringFullSize___block_invoke;
  v55[3] = &unk_1E70F35B8;
  v56 = itemCopy;
  v57 = v53;
  v44 = v53;
  v45 = itemCopy;
  [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:v55];
  flocker = [(_UIContextMenuUIController *)self flocker];
  view4 = [(UITargetedPreview *)v32 view];
  [flocker badgeLocationInView:view4];
  [(UITargetedDragPreview *)v32 _setInitialBadgeLocation:?];

  return v32;
}

- (id)previewForCancellingDragItem:(id)item
{
  _postMorphDragItemUpdate = [(_UIContextMenuUIController *)self _postMorphDragItemUpdate];

  if (_postMorphDragItemUpdate)
  {
    [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:0];
    [(_UIContextMenuUIController *)self set_dragWasCanceled:1];
    _subterraneanViewContainer = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
    _dragContainerView = [(_UIContextMenuUIController *)self _dragContainerView];
    [_subterraneanViewContainer addSubview:_dragContainerView];

    v7 = [UITargetedDragPreview alloc];
    _dragContainerView2 = [(_UIContextMenuUIController *)self _dragContainerView];
    v9 = [(UITargetedDragPreview *)v7 initWithView:_dragContainerView2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_didBeginMorphToDragPreview
{
  _dragContainerView = [(_UIContextMenuUIController *)self _dragContainerView];
  [_dragContainerView setAlpha:0.0];
}

- (void)_didCompleteMorphToDragPreview
{
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  [platterContainerView setAlpha:0.0];

  _postMorphDragItemUpdate = [(_UIContextMenuUIController *)self _postMorphDragItemUpdate];
  [(_UIContextMenuUIController *)self set_postMorphDragItemUpdate:0];
  v4 = _postMorphDragItemUpdate;
  if (_postMorphDragItemUpdate)
  {
    (*(_postMorphDragItemUpdate + 16))(_postMorphDragItemUpdate);
    v4 = _postMorphDragItemUpdate;
  }
}

- (void)dragWillCancelWithAnimator:(id)animator
{
  animatorCopy = animator;
  _dragContainerTransitionView = [(_UIContextMenuUIController *)self _dragContainerTransitionView];

  if (_dragContainerTransitionView)
  {
    _destinationPlatterView = [(_UIContextMenuUIController *)self _destinationPlatterView];
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v8 = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke;
  }

  else
  {
    _destinationPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke_2;
  }

  v7[2] = v8;
  v7[3] = &unk_1E70F3590;
  v7[4] = _destinationPlatterView;
  v9 = _destinationPlatterView;
  [animatorCopy addAnimations:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57___UIContextMenuUIController_dragWillCancelWithAnimator___block_invoke_3;
  v10[3] = &unk_1E70F5DB8;
  v10[4] = self;
  [animatorCopy addCompletion:v10];
}

- (void)_installViewsIntoDragContainerView:(id)view
{
  viewCopy = view;
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
        cGColor = [v17 CGColor];
        layer = [viewCopy layer];
        [layer setBorderColor:cGColor];

        layer2 = [viewCopy layer];
        [layer2 setBorderWidth:3.0];
      }
    }
  }

LABEL_4:
  contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
  [contentPlatterView freezeExpandedPreview];

  platterTransitionView = [(_UIContextMenuUIController *)self platterTransitionView];
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  [platterContainerView addSubview:viewCopy];
  platterPanController = [(_UIContextMenuUIController *)self platterPanController];
  panGestureRecognizer = [platterPanController panGestureRecognizer];
  [panGestureRecognizer locationInView:platterContainerView];
  [viewCopy setCenter:?];

  if (_UIContextMenuMagicMorphAnimationEnabled())
  {
    v10 = [UIView alloc];
    [platterTransitionView frame];
    v11 = [(UIView *)v10 initWithFrame:?];
    [(_UIContextMenuUIController *)self set_dragContainerTransitionView:v11];
    [viewCopy addSubview:v11];
    [platterTransitionView center];
    [platterContainerView convertPoint:viewCopy toView:?];
    [(UIView *)v11 setCenter:?];
  }

  else
  {
    [platterTransitionView center];
    v13 = v12;
    v15 = v14;
    [viewCopy addSubview:platterTransitionView];
    [platterContainerView convertPoint:viewCopy toView:{v13, v15}];
    [platterTransitionView setCenter:?];
  }
}

- (void)_cleanUpDragViews
{
  [(UIView *)self->_platterContainerView removeFromSuperview];
  [(UIView *)self->_platterTransitionView removeFromSuperview];
  _subterraneanViewContainer = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
  [_subterraneanViewContainer removeFromSuperview];
}

- (id)windowSceneActivationPreview
{
  contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
  v3 = contentPlatterView;
  if (contentPlatterView)
  {
    if ([contentPlatterView alwaysCompact])
    {
      collapsedPreview = [v3 collapsedPreview];
    }

    else
    {
      collapsedPreview = [v3 expandedPreview];
      [v3 _continuousCornerRadius];
      v7 = v6;
      view = [collapsedPreview view];
      [view _setContinuousCornerRadius:v7];
    }

    window = [v3 window];
    superview = [v3 superview];
    [v3 center];
    [superview convertPoint:window toView:?];
    v12 = v11;
    v14 = v13;

    v15 = [UIPreviewTarget alloc];
    [v3 transform];
    v16 = [(UIPreviewTarget *)v15 initWithContainer:window center:&v18 transform:v12, v14];
    v5 = [collapsedPreview retargetedPreviewWithTarget:v16];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 1;
  contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];
  v6 = contentPlatterView;
  if (contentPlatterView)
  {
    if ([contentPlatterView allowsUserInteractionInExpandedPreview])
    {
      dismissalTapGestureRecognizer = [(_UIContextMenuUIController *)self dismissalTapGestureRecognizer];

      if (dismissalTapGestureRecognizer == beginCopy)
      {
        [v6 bounds];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [beginCopy locationInView:v6];
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
    menuView = [(_UIContextMenuUIController *)self menuView];
    if (menuView)
    {
      dismissalTapGestureRecognizer2 = [(_UIContextMenuUIController *)self dismissalTapGestureRecognizer];

      if (dismissalTapGestureRecognizer2 == beginCopy)
      {
        [menuView bounds];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        [beginCopy locationInView:menuView];
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

  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  accessoryViews = [menuConfiguration accessoryViews];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __59___UIContextMenuUIController_gestureRecognizerShouldBegin___block_invoke;
  v34[3] = &unk_1E7124D70;
  v32 = beginCopy;
  v35 = v32;
  v36 = &v37;
  [accessoryViews enumerateObjectsUsingBlock:v34];

  LOBYTE(menuConfiguration) = *(v38 + 24);
  _Block_object_dispose(&v37, 8);

  return menuConfiguration;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  actionScrubbingHandoffGestureRecognizer = [(_UIContextMenuUIController *)self actionScrubbingHandoffGestureRecognizer];

  if (actionScrubbingHandoffGestureRecognizer == recognizerCopy)
  {
    v10 = 1;
  }

  else
  {
    actionScrubbingHandoffGestureRecognizer2 = [(_UIContextMenuUIController *)self actionScrubbingHandoffGestureRecognizer];
    v10 = actionScrubbingHandoffGestureRecognizer2 == gestureRecognizerCopy;
  }

  return v10;
}

- (void)_handleDismissalTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if (-[_UIContextMenuUIController _isPresented](self, "_isPresented") && [gestureCopy state] == 3)
  {
    delegate = [(_UIContextMenuUIController *)self delegate];
    [delegate contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
  }
}

- (void)_handlePlatterActionTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if (-[_UIContextMenuUIController _isPresented](self, "_isPresented") && [gestureCopy state] == 3)
  {
    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    previewAction = [menuConfiguration previewAction];
    delegate = [(_UIContextMenuUIController *)self delegate];
    [previewAction performWithSender:delegate target:0];
  }
}

- (void)_handleActionHandoffGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy state] >= 1 && objc_msgSend(gestureCopy, "state") <= 2)
  {
    menuView = [(_UIContextMenuUIController *)self menuView];
    [menuView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [gestureCopy locationInView:menuView];
    v17.x = v13;
    v17.y = v14;
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = v12;
    if (CGRectContainsPoint(v18, v17) && [menuView kickstartActionScrubbingWithGesture:gestureCopy])
    {
      [gestureCopy setEnabled:0];
      [gestureCopy setEnabled:1];
    }
  }
}

- (void)viewTraitCollectionDidChange
{
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  _parentTraitEnvironmentForUserInterfaceStyle = [menuStyle _parentTraitEnvironmentForUserInterfaceStyle];

  if (_parentTraitEnvironmentForUserInterfaceStyle)
  {

    [(_UIContextMenuUIController *)self _updatePlatterContainerViewTraitCollection];
  }
}

- (void)previewSizeDidChange:(CGSize)change
{
  height = change.height;
  width = change.width;
  [(_UIContextMenuUIController *)self previewSize];
  if (width != v7 || height != v6)
  {
    [(_UIContextMenuUIController *)self setPreviewSize:width, height];
    [(_UIContextMenuUIController *)self setPreviewSizeDidChange:1];

    [(_UIContextMenuUIController *)self _updatePlatterAndActionViewLayoutForce:0 updateAttachment:1];
  }
}

- (BOOL)shouldMaintainKeyboardAssertionForFirstResponder:(id)responder
{
  responderCopy = responder;
  if (![responderCopy _isView])
  {
    goto LABEL_5;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  accessoryViews = [menuConfiguration accessoryViews];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __79___UIContextMenuUIController_shouldMaintainKeyboardAssertionForFirstResponder___block_invoke;
  v12 = &unk_1E7124D70;
  v13 = responderCopy;
  v14 = &v15;
  [accessoryViews enumerateObjectsUsingBlock:&v9];

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

- (void)_keyboardWillShow:(id)show
{
  showCopy = show;
  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v4 responder];

  if (responder && [(_UIContextMenuUIController *)self _needsToAvoidKeyboardForResponder:responder])
  {
    userInfo = [showCopy userInfo];
    [(_UIContextMenuUIController *)self _adjustViewForKeyboardVisibility:1 keyboardInfo:userInfo];
  }
}

- (void)_keyboardWillHide:(id)hide
{
  hideCopy = hide;
  if (![(_UIContextMenuUIController *)self _isAnimatingPresentation]&& [(_UIContextMenuUIController *)self didAvoidKeyboard])
  {
    userInfo = [hideCopy userInfo];
    [(_UIContextMenuUIController *)self _adjustViewForKeyboardVisibility:0 keyboardInfo:userInfo];
  }
}

- (void)_adjustViewForKeyboardVisibility:(BOOL)visibility keyboardInfo:(id)info
{
  visibilityCopy = visibility;
  infoCopy = info;
  [(_UIContextMenuUIController *)self setDidAvoidKeyboard:visibilityCopy];
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
    v10 = [infoCopy objectForKeyedSubscript:@"UIKeyboardAnimationDurationUserInfoKey"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [infoCopy objectForKeyedSubscript:@"UIKeyboardAnimationCurveUserInfoKey"];
    integerValue = [v13 integerValue];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76___UIContextMenuUIController__adjustViewForKeyboardVisibility_keyboardInfo___block_invoke_3;
    v15[3] = &unk_1E70F0F78;
    v16 = v7;
    v8 = v7;
    [UIView animateWithDuration:integerValue delay:v15 options:0 animations:v12 completion:0.0];
    v9 = v16;
  }
}

- (BOOL)_needsToAvoidKeyboardForResponder:(id)responder
{
  responderCopy = responder;
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(_UIContextMenuUIController *)self _isPresented])
  {
    menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
    previewViewController = [menuConfiguration previewViewController];

    if (previewViewController)
    {
      if ([menuStyle _layoutAllowsPreview])
      {
        hasInteractivePreview = [menuStyle hasInteractivePreview];
        *(v17 + 24) = hasInteractivePreview;
        if (hasInteractivePreview)
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

    if ([responderCopy _isView])
    {
      menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
      accessoryViews = [menuConfiguration2 accessoryViews];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __64___UIContextMenuUIController__needsToAvoidKeyboardForResponder___block_invoke;
      v13[3] = &unk_1E7124D70;
      v14 = responderCopy;
      v15 = &v16;
      [accessoryViews enumerateObjectsUsingBlock:v13];
    }
  }

LABEL_11:
  v11 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v11;
}

- (void)_updateLayoutAndAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  v119[2] = *MEMORY[0x1E69E9840];
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  v7 = COERCE_DOUBLE([menuStyle preferredAttachmentEdge]);

  if (v7 != NAN)
  {
    memset(&v56, 0, 40);
    menuStyle2 = [(_UIContextMenuUIController *)self menuStyle];
    v9 = menuStyle2;
    if (menuStyle2)
    {
      [menuStyle2 _preferredAnchor];
    }

    else
    {
      memset(&v56, 0, 40);
    }

    v56.a = v7;
    tx = v56.tx;
    v115 = *&v56.a;
    v116 = *&v56.c;
    menuStyle3 = [(_UIContextMenuUIController *)self menuStyle];
    v113[0] = v115;
    v113[1] = v116;
    v114 = tx;
    [menuStyle3 set_preferredAnchor:v113];
  }

  v11 = [(_UIContextMenuUIController *)self _layoutWithUpdatedAttachment:attachmentCopy concealedMenu:[(_UIContextMenuUIController *)self menuIsConcealed]];
  menuStyle4 = [(_UIContextMenuUIController *)self menuStyle];
  ignoresDefaultSizingRules = [menuStyle4 ignoresDefaultSizingRules];

  if (ignoresDefaultSizingRules)
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
    platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
    UIRoundToViewScale(platterContainerView2);
    v24 = v23;
    platterContainerView3 = [(_UIContextMenuUIController *)self platterContainerView];
    UIRoundToViewScale(platterContainerView3);
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

  menuView = [(_UIContextMenuUIController *)self menuView];
  [menuView setAnchorPoint:{v27, v28}];

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

  menuView2 = [(_UIContextMenuUIController *)self menuView];
  [menuView2 setVisibleContentSize:{v31, v30}];

  [(_UIContextMenuLayoutArbiterOutput *)v11 maximumMenuHeight];
  v34 = v33;
  menuView3 = [(_UIContextMenuUIController *)self menuView];
  [menuView3 setMaximumMenuHeight:v34];

  platterPanController = [(_UIContextMenuUIController *)self platterPanController];
  v37 = platterPanController;
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
    [platterPanController setOriginalPlatterCenter:{0.0, 0.0}];
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
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  accessoryViews = [menuConfiguration accessoryViews];
  [v37 setAccessoryViews:accessoryViews];

  menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
  [v37 setPlatterPivotRotationEnabled:{objc_msgSend(menuConfiguration2, "isMultiItemMenu") ^ 1}];

  menuStyle5 = [(_UIContextMenuUIController *)self menuStyle];
  preferredLayout = [menuStyle5 preferredLayout];

  if ((preferredLayout & 0xFFFFFFFFFFFFFFFDLL) != 1)
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

- (id)_layoutWithUpdatedAttachment:(BOOL)attachment concealedMenu:(BOOL)menu
{
  attachmentCopy = attachment;
  menuCopy = menu;
  layoutArbiter = [(_UIContextMenuUIController *)self layoutArbiter];
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  preferredAttachmentEdge = [menuStyle preferredAttachmentEdge];

  if (preferredAttachmentEdge != 0x7FFFFFFFFFFFFFFFLL)
  {
    v97 = 0;
    v95 = 0u;
    v96 = 0u;
    menuStyle2 = [(_UIContextMenuUIController *)self menuStyle];
    v9 = menuStyle2;
    if (menuStyle2)
    {
      [menuStyle2 _preferredAnchor];
    }

    else
    {
      v97 = 0;
      v95 = 0u;
      v96 = 0u;
    }

    *&v95 = preferredAttachmentEdge;
    v94 = v97;
    v92 = v95;
    v93 = v96;
    menuStyle3 = [(_UIContextMenuUIController *)self menuStyle];
    v90[0] = v92;
    v90[1] = v93;
    v91 = v94;
    [menuStyle3 set_preferredAnchor:v90];
  }

  v11 = objc_opt_new();
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  sourcePreview = [menuConfiguration sourcePreview];
  [v11 setSourcePreview:sourcePreview];

  menuStyle4 = [(_UIContextMenuUIController *)self menuStyle];
  [menuStyle4 preferredEdgeInsets];
  [v11 setPreferredEdgeInsets:?];

  menuStyle5 = [(_UIContextMenuUIController *)self menuStyle];
  v16 = menuStyle5;
  if (menuStyle5)
  {
    [menuStyle5 _preferredAnchor];
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
  menuStyle6 = [(_UIContextMenuUIController *)self menuStyle];
  ignoresDefaultSizingRules = [menuStyle6 ignoresDefaultSizingRules];

  if (ignoresDefaultSizingRules)
  {
    [v11 setPreferredPreviewFittingStrategy:1];
  }

  menuView = [(_UIContextMenuUIController *)self menuView];
  if ([menuView hierarchyStyle] == 2)
  {
    menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
    menu = [menuConfiguration2 menu];
    v22 = ([menu metadata] >> 16) & 1;
  }

  else
  {
    LODWORD(v22) = 0;
  }

  menuConfiguration3 = [(_UIContextMenuUIController *)self menuConfiguration];
  menu2 = [menuConfiguration3 menu];
  metadata = [menu2 metadata];

  menuConfiguration4 = [(_UIContextMenuUIController *)self menuConfiguration];
  menu3 = [menuConfiguration4 menu];
  v28 = [menu3 metadata] >> 32;

  menuConfiguration5 = [(_UIContextMenuUIController *)self menuConfiguration];
  menu4 = [menuConfiguration5 menu];
  if (([menu4 options] & 0x100) != 0)
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

  menuStyle7 = [(_UIContextMenuUIController *)self menuStyle];
  [menuStyle7 preferredMenuWidth];
  v34 = v33;

  menuStyle8 = [(_UIContextMenuUIController *)self menuStyle];
  [menuStyle8 _internalPreferredMenuWidth];
  v37 = v36;

  v38 = _UIContextMenuActionsViewWidth(platterContainerView, (metadata >> 8) & 1, v22, v28 & 1, IsOverlayUI, [(_UIContextMenuUIController *)self _interfaceIdiom]);
  [platterContainerView bounds];
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

  menuStyle9 = [(_UIContextMenuUIController *)self menuStyle];
  shouldMenuOverlapSourcePreview = [menuStyle9 shouldMenuOverlapSourcePreview];

  v43 = 0.0;
  if ((metadata & 0x100) != 0 && !v40 && (shouldMenuOverlapSourcePreview & 1) == 0)
  {
    menuStyle10 = [(_UIContextMenuUIController *)self menuStyle];
    preferredLayout = [menuStyle10 preferredLayout];

    if (preferredLayout == 3)
    {
      platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
      traitCollection = [platterContainerView2 traitCollection];

      v48 = traitCollection;
      v49 = _UIContextMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
      titleFont = [v49 titleFont];
      v51 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v48];

      v52 = _UIContextMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
      [v52 leadingIndentationWidth];
      v54 = v53;

      [v51 _scaledValueForValue:v54];
      platterContainerView3 = [(_UIContextMenuUIController *)self platterContainerView];
      UIRoundToViewScale(platterContainerView3);
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

  menuView2 = [(_UIContextMenuUIController *)self menuView];
  [menuView2 preferredContentSizeWithinContainerSize:{v59, Height}];
  [v11 setPreferredMenuSize:?];

  menuStyle11 = [(_UIContextMenuUIController *)self menuStyle];
  [menuStyle11 _preferredMenuAttachmentPoint];
  [v11 setPreferredMenuAttachmentPoint:?];

  menuConfiguration6 = [(_UIContextMenuUIController *)self menuConfiguration];
  accessoryViews = [menuConfiguration6 accessoryViews];
  [v11 setAccessoryViews:accessoryViews];

  [v11 setShouldUpdateAttachment:attachmentCopy];
  v64 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  [v11 setShouldAvoidInputViews:{objc_msgSend(v64, "isOnScreen")}];

  [v11 setShouldConcealMenu:menuCopy];
  [v11 setShouldMenuOverlapSourcePreview:shouldMenuOverlapSourcePreview];
  [v11 setAdditionalAlignmentOffset:v43];
  menuStyle12 = [(_UIContextMenuUIController *)self menuStyle];
  [menuStyle12 preferredMaximumMenuHeight];
  v67 = v66;
  traitCollection2 = [platterContainerView traitCollection];
  v69 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

  [v69 menuMaximumHeight];
  v71 = v70;

  [v11 setMaximumMenuHeight:{fmax(v67, v71)}];
  menuView3 = [(_UIContextMenuUIController *)self menuView];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __73___UIContextMenuUIController__layoutWithUpdatedAttachment_concealedMenu___block_invoke;
  v79[3] = &unk_1E70F6200;
  v80 = menuView3;
  v73 = menuView3;
  [v11 setComputePreferredScrollTruncationDetentForHeight:v79];
  v74 = [layoutArbiter computedLayoutWithInput:v11];

  return v74;
}

- (void)_updateActionsViewReversesOrderForAttachment:(unint64_t)attachment
{
  if (attachment == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  menuView = [(_UIContextMenuUIController *)self menuView];
  [menuView setAttachmentEdge:v5];

  menuStyle = [(_UIContextMenuUIController *)self menuStyle];
  _orderMenuBasedOnPriority = [menuStyle _orderMenuBasedOnPriority];

  if (attachment == 1 && _orderMenuBasedOnPriority)
  {
    menuView2 = [(_UIContextMenuUIController *)self menuView];
    [menuView2 setReversesActionOrder:1];
  }
}

- (void)_updatePlatterAndActionViewLayoutForce:(BOOL)force updateAttachment:(BOOL)attachment adjustDetent:(BOOL)detent
{
  if ([(_UIContextMenuUIController *)self _isPresented])
  {
    layoutArbiter = [(_UIContextMenuUIController *)self layoutArbiter];

    if (layoutArbiter)
    {
      if (force || [(_UIContextMenuUIController *)self previewSizeDidChange])
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __99___UIContextMenuUIController__updatePlatterAndActionViewLayoutForce_updateAttachment_adjustDetent___block_invoke;
        aBlock[3] = &unk_1E70F8A10;
        aBlock[4] = self;
        attachmentCopy = attachment;
        detentCopy = detent;
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

- (void)_createMenuViewIfNecessaryForMenu:(id)menu
{
  if (([menu metadata] & 0x1000000) != 0)
  {
    [(_UIContextMenuUIController *)self setMenuIsConcealed:0];
    v4 = [_UIContextMenuView alloc];
    v5 = [(_UIContextMenuView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    menuView = self->_menuView;
    self->_menuView = v5;

    [(_UIContextMenuView *)self->_menuView setHierarchyStyle:[(_UIContextMenuUIController *)self _preferredSubmenuHierarchyStyle]];
    [(_UIContextMenuView *)self->_menuView setDelegate:self];
    menuStyle = [(_UIContextMenuUIController *)self menuStyle];
    v8 = menuStyle;
    if (menuStyle)
    {
      [menuStyle _preferredAnchor];
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
    preferredMenuMaterial = [v8 preferredMenuMaterial];
    [(_UIContextMenuView *)self->_menuView setPreferredMenuMaterial:preferredMenuMaterial];
  }
}

- (void)displayMenu:(id)menu inPlaceOfMenu:(id)ofMenu
{
  if (ofMenu)
  {
    [(_UIContextMenuUIController *)self _replaceVisibleMenu:ofMenu withMenu:menu];
  }

  else
  {
    [(_UIContextMenuUIController *)self _displayMenu:menu updateType:3];
  }
}

- (void)retargetDismissingMenuToPreview:(id)preview
{
  if (!preview)
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

- (void)didSelectCancelActionInContextMenuView:(id)view
{
  delegate = [(_UIContextMenuUIController *)self delegate];
  [delegate contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
}

- (void)contextMenuView:(id)view didSelectElement:(id)element
{
  elementCopy = element;
  delegate = [(_UIContextMenuUIController *)self delegate];
  if ([elementCopy _isLeaf])
  {
    v7 = elementCopy;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63___UIContextMenuUIController_contextMenuView_didSelectElement___block_invoke;
    aBlock[3] = &unk_1E70F6228;
    v8 = delegate;
    v11 = v8;
    selfCopy = self;
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
    [(_UIContextMenuUIController *)self _displayMenu:elementCopy updateType:1];
  }
}

- (id)contextMenuView:(id)view willDisplayMenu:(id)menu
{
  menuCopy = menu;
  delegate = [(_UIContextMenuUIController *)self delegate];
  v7 = [delegate contextMenuUIController:self willDisplayMenu:menuCopy];

  return v7;
}

- (void)_displayMenu:(id)menu updateType:(unint64_t)type
{
  menuCopy = menu;
  [(_UIContextMenuUIController *)self setMenuIsConcealed:0];
  menuView = [(_UIContextMenuUIController *)self menuView];

  if (menuView)
  {
    if (type == 1)
    {
      menuView2 = [(_UIContextMenuUIController *)self menuView];
      visibleMenus = [menuView2 visibleMenus];
      v10 = [visibleMenus containsObject:menuCopy] ^ 1;
    }

    else
    {
      v10 = 0;
    }

    menuView3 = [(_UIContextMenuUIController *)self menuView];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_4;
    v13[3] = &unk_1E7124DB8;
    v13[4] = self;
    v14 = v10;
    [menuView3 displayMenu:menuCopy updateType:type alongsideAnimations:v13];
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke;
    v16[3] = &unk_1E70F35B8;
    v16[4] = self;
    v17 = menuCopy;
    [UIView performWithoutAnimation:v16];
    v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54___UIContextMenuUIController__displayMenu_updateType___block_invoke_2;
    v15[3] = &unk_1E70F3590;
    v15[4] = self;
    [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v15 completion:0];

    menuView3 = v17;
  }
}

- (void)_replaceVisibleMenu:(id)menu withMenu:(id)withMenu
{
  menuCopy = menu;
  withMenuCopy = withMenu;
  menuView = [(_UIContextMenuUIController *)self menuView];

  if (menuView)
  {
    menuView2 = [(_UIContextMenuUIController *)self menuView];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __59___UIContextMenuUIController__replaceVisibleMenu_withMenu___block_invoke;
    v10[3] = &unk_1E7105EF8;
    v10[4] = self;
    [menuView2 replaceVisibleMenu:menuCopy withMenu:withMenuCopy alongsideAnimations:v10];
  }

  else
  {
    [(_UIContextMenuUIController *)self _displayMenu:withMenuCopy updateType:0];
  }
}

- (void)_concealMenu
{
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  previewViewController = [menuConfiguration previewViewController];

  if (previewViewController)
  {
    v5 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.32];
    menuView = [(_UIContextMenuUIController *)self menuView];
    [menuView setUserInteractionEnabled:0];
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
    v10 = menuView;
    v7 = menuView;
    [UIView _animateUsingSpringBehavior:v5 tracking:0 animations:v11 completion:v9];
  }

  else
  {
    delegate = [(_UIContextMenuUIController *)self delegate];
    [delegate contextMenuUIController:self didRequestDismissalWithReason:5 alongsideActions:0 completion:0];
  }
}

- (void)hideSourcePreview:(id)preview
{
  previewCopy = preview;
  view = [previewCopy view];
  sourceView = [(_UIViewAlphaOverrideAssertion *)self->_sourcePreviewAlphaOverrideAssertion sourceView];

  if (view != sourceView)
  {
    view2 = [previewCopy view];
    v7 = [view2 _vendAssertionForOverrideAlpha:0.0];
    sourcePreviewAlphaOverrideAssertion = self->_sourcePreviewAlphaOverrideAssertion;
    self->_sourcePreviewAlphaOverrideAssertion = v7;
  }
}

- (id)dismissalPreviewForStyle:(unint64_t)style clientReturnedPreview:(BOOL *)preview
{
  menuConfiguration = [(_UIContextMenuUIController *)self menuConfiguration];
  if (style == 1)
  {
    _destinationPlatterView = [(_UIContextMenuUIController *)self _destinationPlatterView];
    if (_destinationPlatterView)
    {
      _dragContainerView = [(_UIContextMenuUIController *)self _dragContainerView];
      superview = [_dragContainerView superview];
      [_dragContainerView center];
      v12 = v11;
      v14 = v13;
      _subterraneanViewContainer = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
      [superview convertPoint:_subterraneanViewContainer toView:{v12, v14}];
      v17 = v16;
      v19 = v18;

      _subterraneanViewContainer2 = [(_UIContextMenuUIController *)self _subterraneanViewContainer];
      [_subterraneanViewContainer2 addSubview:_dragContainerView];

      [_dragContainerView setCenter:{v17, v19}];
      v21 = [UIPreviewTarget alloc];
      superview2 = [_dragContainerView superview];
      [_dragContainerView center];
      v24 = v23;
      v26 = v25;
      [_destinationPlatterView targetTransform];
      CATransform3DGetAffineTransform(&v42, &v41);
      v27 = [(UIPreviewTarget *)v21 initWithContainer:superview2 center:&v42 transform:v24, v26];

      v28 = objc_opt_new();
      v29 = +[UIColor clearColor];
      [v28 setBackgroundColor:v29];

      preview = [_destinationPlatterView preview];
      outline = [preview outline];
      [v28 setVisiblePath:outline];

      preview2 = [_destinationPlatterView preview];
      shadowPath = [preview2 shadowPath];
      [v28 setShadowPath:shadowPath];

      [v28 setAppliesShadow:1];
      v34 = [[UITargetedPreview alloc] initWithView:_destinationPlatterView parameters:v28 target:v27];
      preview3 = [_destinationPlatterView preview];
      previewMode = [preview3 previewMode];

      if (previewMode == 4)
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
    delegate = [(_UIContextMenuUIController *)self delegate];
    menuConfiguration2 = [(_UIContextMenuUIController *)self menuConfiguration];
    identifier = [menuConfiguration2 identifier];
    v34 = [delegate contextMenuUIController:self dismissalPreviewForItem:identifier clientReturnedPreview:preview];
  }

  return v34;
}

- (id)dismissalPreviewForSecondaryItem:(id)item style:(unint64_t)style
{
  v9 = 0;
  itemCopy = item;
  delegate = [(_UIContextMenuUIController *)self delegate];
  v7 = [delegate contextMenuUIController:self dismissalPreviewForItem:itemCopy clientReturnedPreview:&v9];

  return v7;
}

- (void)_sceneWillDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  platterContainerView = [(_UIContextMenuUIController *)self platterContainerView];
  _window = [platterContainerView _window];

  object = [deactivateCopy object];

  windowScene = [_window windowScene];

  v8 = _window;
  if (object == windowScene)
  {
    if ([(_UIContextMenuUIController *)self _isPresented])
    {
      _platformMetrics = [(_UIContextMenuUIController *)self _platformMetrics];
      if ([_platformMetrics shouldDismissMenuOnSceneDeactivation])
      {
        delegate = [(_UIContextMenuUIController *)self delegate];
        [delegate contextMenuUIController:self didRequestDismissalWithReason:3 alongsideActions:0 completion:0];
      }
    }

    else
    {
      platterContainerView2 = [(_UIContextMenuUIController *)self platterContainerView];
      [platterContainerView2 setHidden:1];

      _platformMetrics = [(_UIContextMenuUIController *)self contentPlatterView];
      [_platformMetrics setHidesCollapsedSourceView:0];
    }

    v8 = _window;
  }
}

- (void)_enumeratePlatterViewsWithBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v26 = 0;
  contentPlatterView = [(_UIContextMenuUIController *)self contentPlatterView];

  if (!contentPlatterView || ((-[_UIContextMenuUIController contentPlatterView](self, "contentPlatterView"), v6 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuUIController flocker](self, "flocker"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 itemCount] - 1, v7, v8 >= 4) ? (v9 = 4) : (v9 = v8), blockCopy[2](blockCopy, v6, v9, 1, &v26), v6, (v26 & 1) == 0))
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    flocker = [(_UIContextMenuUIController *)self flocker];
    secondaryPlatterViews = [flocker secondaryPlatterViews];

    v12 = [secondaryPlatterViews countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(secondaryPlatterViews);
          }

          v17 = *(*(&v22 + 1) + 8 * i);
          view = [v17 view];
          [view alpha];
          v20 = fabs(v19);

          if (v20 >= 2.22044605e-16)
          {
            view2 = [v17 view];
            blockCopy[2](blockCopy, view2, v14, 0, &v26);

            if (v26)
            {
              goto LABEL_16;
            }

            ++v14;
          }
        }

        v13 = [secondaryPlatterViews countByEnumeratingWithState:&v22 objects:v27 count:16];
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
  delegate = [(_UIContextMenuUIController *)self delegate];
  [delegate contextMenuUIController:self didRequestDismissalWithReason:0 alongsideActions:0 completion:0];
}

- (void)_testing_tapAnAction
{
  menuView = [(_UIContextMenuUIController *)self menuView];
  [menuView performSelector:sel__testing_tapAnAction];
}

@end