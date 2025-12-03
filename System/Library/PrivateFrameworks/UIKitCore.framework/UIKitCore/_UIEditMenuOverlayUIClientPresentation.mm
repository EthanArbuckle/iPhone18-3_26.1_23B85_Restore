@interface _UIEditMenuOverlayUIClientPresentation
- (_UIEditMenuOverlayUIClientPresentation)initWithDelegate:(id)delegate sourceView:(id)view;
- (void)_configureOverlayServiceIfNeeded;
- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to;
- (void)displayMenu:(id)menu configuration:(id)configuration;
- (void)handleLifecycleEvent:(int64_t)event;
- (void)hideMenuWithReason:(int64_t)reason;
- (void)performMenuLeafAction:(id)action completionHandler:(id)handler;
- (void)preparedMenuWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)replaceVisibleMenuWithMenu:(id)menu reason:(int64_t)reason;
- (void)setDisplayedMenu:(id)menu;
- (void)sourceViewDidUpdateFromTraitCollection:(id)collection;
@end

@implementation _UIEditMenuOverlayUIClientPresentation

- (_UIEditMenuOverlayUIClientPresentation)initWithDelegate:(id)delegate sourceView:(id)view
{
  v8.receiver = self;
  v8.super_class = _UIEditMenuOverlayUIClientPresentation;
  v4 = [(_UIEditMenuPresentation *)&v8 initWithDelegate:delegate sourceView:view];
  if (v4)
  {
    v5 = objc_opt_new();
    menuManager = v4->_menuManager;
    v4->_menuManager = v5;
  }

  return v4;
}

- (void)setDisplayedMenu:(id)menu
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuOverlayUIPresentation.m" lineNumber:52 description:@"setDisplayedMenu: is not available"];
}

- (void)displayMenu:(id)menu configuration:(id)configuration
{
  v46 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  configurationCopy = configuration;
  [(_UIEditMenuPresentation *)self setActiveConfiguration:configurationCopy];
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  v9 = [_UIEditMenuSceneComponent sceneComponentForView:sourceView];

  if (v9)
  {
    [(_UIEditMenuOverlayUIClientPresentation *)self _configureOverlayServiceIfNeeded];
    sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
    v11 = _UIEditMenuGetPlatformMetrics([sourceView2 _userInterfaceIdiom]);
    [v11 sourceRectMargins];
    v13 = v12;

    delegate = [(_UIEditMenuPresentation *)self delegate];
    [delegate _editMenuPresentation:self targetRectForConfiguration:configurationCopy];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    sourceView3 = [(_UIEditMenuPresentation *)self sourceView];
    v24 = [(UIView *)sourceView3 _constrainRectWithinSceneBounds:v16 additionalInsets:v18, v20, v22, v13 + 4.0];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = +[_UIOEditMenuPresentationConfiguration configurationWithMenu:preferredArrowDirection:sourceRect:enforcesMenuControllerLifecycle:initialUserInterfaceStyle:](_UIOEditMenuPresentationConfiguration, "configurationWithMenu:preferredArrowDirection:sourceRect:enforcesMenuControllerLifecycle:initialUserInterfaceStyle:", menuCopy, [configurationCopy preferredArrowDirection], -[_UIEditMenuPresentation enforcesMenuControllerLifecycle](self, "enforcesMenuControllerLifecycle"), -[_UIEditMenuPresentation resolvedUserInterfaceStyle](self, "resolvedUserInterfaceStyle"), v24, v26, v28, v30);
    presentationConfiguration = self->_presentationConfiguration;
    self->_presentationConfiguration = v31;

    [v9 setActivePresentation:self];
    menuManager = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
    [menuManager setRootMenu:menuCopy];

    v34 = [_UIORequestEditMenuPresentationAction alloc];
    v35 = self->_presentationConfiguration;
    sourceView4 = [(_UIEditMenuPresentation *)self sourceView];
    v37 = [(_UIORequestEditMenuPresentationAction *)v34 initWithConfiguration:v35 view:sourceView4];

    overlayService = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
    [overlayService sendOverlayAction:v37];

LABEL_7:
    goto LABEL_8;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v37 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_7;
    }

    activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
    sourceView5 = [(_UIEditMenuPresentation *)self sourceView];
    v42 = 138412546;
    v43 = activeConfiguration;
    v44 = 2112;
    v45 = sourceView5;
    _os_log_fault_impl(&dword_188A29000, v37, OS_LOG_TYPE_FAULT, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v42, 0x16u);
    goto LABEL_6;
  }

  v39 = *(__UILogGetCategoryCachedImpl("Assert", &displayMenu_configuration____s_category) + 8);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v37 = v39;
    activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
    sourceView5 = [(_UIEditMenuPresentation *)self sourceView];
    v42 = 138412546;
    v43 = activeConfiguration;
    v44 = 2112;
    v45 = sourceView5;
    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v42, 0x16u);
LABEL_6:

    goto LABEL_7;
  }

LABEL_8:
}

- (void)sourceViewDidUpdateFromTraitCollection:(id)collection
{
  collectionCopy = collection;
  resolvedUserInterfaceStyle = [(_UIEditMenuPresentation *)self resolvedUserInterfaceStyle];
  userInterfaceStyle = [collectionCopy userInterfaceStyle];

  if (resolvedUserInterfaceStyle != userInterfaceStyle)
  {
    v7 = [_UIORequestEditMenuTraitUpdateAction alloc];
    presentationConfiguration = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
    identifier = [presentationConfiguration identifier];
    v11 = [(_UIORequestEditMenuTraitUpdateAction *)v7 initWithConfigurationIdentifier:identifier userInterfaceStyle:resolvedUserInterfaceStyle];

    overlayService = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
    [overlayService sendOverlayAction:v11];
  }
}

- (void)replaceVisibleMenuWithMenu:(id)menu reason:(int64_t)reason
{
  menuCopy = menu;
  v7 = [_UIORequestEditMenuUpdateAction alloc];
  presentationConfiguration = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
  identifier = [presentationConfiguration identifier];
  v12 = [(_UIORequestEditMenuUpdateAction *)v7 initWithConfigurationIdentifier:identifier updatedMenu:menuCopy reason:reason];

  overlayService = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
  [overlayService sendOverlayAction:v12];

  menuManager = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  [menuManager setDisplayedMenu:menuCopy];
}

- (void)hideMenuWithReason:(int64_t)reason
{
  presentationConfiguration = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
  identifier = [presentationConfiguration identifier];

  v6 = [[_UIORequestEditMenuDismissalAction alloc] initWithConfigurationIdentifier:identifier reason:reason];
  overlayService = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
  [overlayService sendOverlayAction:v6];

  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  v9 = [_UIEditMenuSceneComponent sceneComponentForView:sourceView];
  [v9 removeActivePresentation:self];
}

- (void)handleLifecycleEvent:(int64_t)event
{
  if (event <= 3)
  {
    [(_UIEditMenuPresentation *)self transitionWithEvent:?];
  }
}

- (void)performMenuLeafAction:(id)action completionHandler:(id)handler
{
  handlerCopy = handler;
  actionCopy = action;
  menuManager = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  identifier = [actionCopy identifier];
  v10 = [menuManager menuLeafForIdentifier:identifier];

  pasteAuthenticationMessage = [actionCopy pasteAuthenticationMessage];

  [UIPasteboard _attemptAuthenticationWithMessage:pasteAuthenticationMessage];
  if (v10)
  {
    delegate = [(_UIEditMenuPresentation *)self delegate];
    [delegate _editMenuPresentation:self didSelectMenuLeaf:v10 completion:handlerCopy];
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v14 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Could not find matching menu leaf in the menu...", buf, 2u);
    }
  }

  else
  {
    v13 = *(__UILogGetCategoryCachedImpl("Assert", &performMenuLeafAction_completionHandler____s_category) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Could not find matching menu leaf in the menu...", v15, 2u);
    }
  }
}

- (void)preparedMenuWithIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  menuManager = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  v10 = [menuManager menuForIdentifier:identifierCopy];

  if (!v10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuOverlayUIPresentation.m" lineNumber:160 description:@"Could not find matching menu for the given request"];
  }

  delegate = [(_UIEditMenuPresentation *)self delegate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___UIEditMenuOverlayUIClientPresentation_preparedMenuWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E710E108;
  v14[4] = self;
  v15 = handlerCopy;
  v12 = handlerCopy;
  [delegate _editMenuPresentation:self preparedMenuForDisplay:v10 completion:v14];
}

- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to
{
  v10.receiver = self;
  v10.super_class = _UIEditMenuOverlayUIClientPresentation;
  [(_UIEditMenuPresentation *)&v10 didTransitionFrom:from to:?];
  if (to == 4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63___UIEditMenuOverlayUIClientPresentation_didTransitionFrom_to___block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [(_UIEditMenuPresentation *)self animateScaleDismissalWithAnimations:v8 completion:0];
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    v7 = [_UIEditMenuSceneComponent sceneComponentForView:sourceView];
    [v7 removeActivePresentation:self];
  }

  else if (to == 2)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63___UIEditMenuOverlayUIClientPresentation_didTransitionFrom_to___block_invoke;
    v9[3] = &unk_1E70F3590;
    v9[4] = self;
    [(_UIEditMenuPresentation *)self animateScalePresentWithDelay:v9 animations:0 completion:0.0];
  }
}

- (void)_configureOverlayServiceIfNeeded
{
  if (!self->_overlayService)
  {
    v3 = objc_opt_new();
    overlayService = self->_overlayService;
    self->_overlayService = v3;

    [(_UIOverlayService *)self->_overlayService setDelegate:self];
    v5 = self->_overlayService;

    [(_UIOverlayService *)v5 prewarmConnection];
  }
}

@end