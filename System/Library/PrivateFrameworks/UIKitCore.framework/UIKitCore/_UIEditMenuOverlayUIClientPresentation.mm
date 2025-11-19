@interface _UIEditMenuOverlayUIClientPresentation
- (_UIEditMenuOverlayUIClientPresentation)initWithDelegate:(id)a3 sourceView:(id)a4;
- (void)_configureOverlayServiceIfNeeded;
- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)displayMenu:(id)a3 configuration:(id)a4;
- (void)handleLifecycleEvent:(int64_t)a3;
- (void)hideMenuWithReason:(int64_t)a3;
- (void)performMenuLeafAction:(id)a3 completionHandler:(id)a4;
- (void)preparedMenuWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)replaceVisibleMenuWithMenu:(id)a3 reason:(int64_t)a4;
- (void)setDisplayedMenu:(id)a3;
- (void)sourceViewDidUpdateFromTraitCollection:(id)a3;
@end

@implementation _UIEditMenuOverlayUIClientPresentation

- (_UIEditMenuOverlayUIClientPresentation)initWithDelegate:(id)a3 sourceView:(id)a4
{
  v8.receiver = self;
  v8.super_class = _UIEditMenuOverlayUIClientPresentation;
  v4 = [(_UIEditMenuPresentation *)&v8 initWithDelegate:a3 sourceView:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    menuManager = v4->_menuManager;
    v4->_menuManager = v5;
  }

  return v4;
}

- (void)setDisplayedMenu:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"_UIEditMenuOverlayUIPresentation.m" lineNumber:52 description:@"setDisplayedMenu: is not available"];
}

- (void)displayMenu:(id)a3 configuration:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_UIEditMenuPresentation *)self setActiveConfiguration:v7];
  v8 = [(_UIEditMenuPresentation *)self sourceView];
  v9 = [_UIEditMenuSceneComponent sceneComponentForView:v8];

  if (v9)
  {
    [(_UIEditMenuOverlayUIClientPresentation *)self _configureOverlayServiceIfNeeded];
    v10 = [(_UIEditMenuPresentation *)self sourceView];
    v11 = _UIEditMenuGetPlatformMetrics([v10 _userInterfaceIdiom]);
    [v11 sourceRectMargins];
    v13 = v12;

    v14 = [(_UIEditMenuPresentation *)self delegate];
    [v14 _editMenuPresentation:self targetRectForConfiguration:v7];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = [(_UIEditMenuPresentation *)self sourceView];
    v24 = [(UIView *)v23 _constrainRectWithinSceneBounds:v16 additionalInsets:v18, v20, v22, v13 + 4.0];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = +[_UIOEditMenuPresentationConfiguration configurationWithMenu:preferredArrowDirection:sourceRect:enforcesMenuControllerLifecycle:initialUserInterfaceStyle:](_UIOEditMenuPresentationConfiguration, "configurationWithMenu:preferredArrowDirection:sourceRect:enforcesMenuControllerLifecycle:initialUserInterfaceStyle:", v6, [v7 preferredArrowDirection], -[_UIEditMenuPresentation enforcesMenuControllerLifecycle](self, "enforcesMenuControllerLifecycle"), -[_UIEditMenuPresentation resolvedUserInterfaceStyle](self, "resolvedUserInterfaceStyle"), v24, v26, v28, v30);
    presentationConfiguration = self->_presentationConfiguration;
    self->_presentationConfiguration = v31;

    [v9 setActivePresentation:self];
    v33 = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
    [v33 setRootMenu:v6];

    v34 = [_UIORequestEditMenuPresentationAction alloc];
    v35 = self->_presentationConfiguration;
    v36 = [(_UIEditMenuPresentation *)self sourceView];
    v37 = [(_UIORequestEditMenuPresentationAction *)v34 initWithConfiguration:v35 view:v36];

    v38 = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
    [v38 sendOverlayAction:v37];

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

    v40 = [(_UIEditMenuPresentation *)self activeConfiguration];
    v41 = [(_UIEditMenuPresentation *)self sourceView];
    v42 = 138412546;
    v43 = v40;
    v44 = 2112;
    v45 = v41;
    _os_log_fault_impl(&dword_188A29000, v37, OS_LOG_TYPE_FAULT, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v42, 0x16u);
    goto LABEL_6;
  }

  v39 = *(__UILogGetCategoryCachedImpl("Assert", &displayMenu_configuration____s_category) + 8);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    v37 = v39;
    v40 = [(_UIEditMenuPresentation *)self activeConfiguration];
    v41 = [(_UIEditMenuPresentation *)self sourceView];
    v42 = 138412546;
    v43 = v40;
    v44 = 2112;
    v45 = v41;
    _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v42, 0x16u);
LABEL_6:

    goto LABEL_7;
  }

LABEL_8:
}

- (void)sourceViewDidUpdateFromTraitCollection:(id)a3
{
  v4 = a3;
  v5 = [(_UIEditMenuPresentation *)self resolvedUserInterfaceStyle];
  v6 = [v4 userInterfaceStyle];

  if (v5 != v6)
  {
    v7 = [_UIORequestEditMenuTraitUpdateAction alloc];
    v8 = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
    v9 = [v8 identifier];
    v11 = [(_UIORequestEditMenuTraitUpdateAction *)v7 initWithConfigurationIdentifier:v9 userInterfaceStyle:v5];

    v10 = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
    [v10 sendOverlayAction:v11];
  }
}

- (void)replaceVisibleMenuWithMenu:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [_UIORequestEditMenuUpdateAction alloc];
  v8 = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
  v9 = [v8 identifier];
  v12 = [(_UIORequestEditMenuUpdateAction *)v7 initWithConfigurationIdentifier:v9 updatedMenu:v6 reason:a4];

  v10 = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
  [v10 sendOverlayAction:v12];

  v11 = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  [v11 setDisplayedMenu:v6];
}

- (void)hideMenuWithReason:(int64_t)a3
{
  v5 = [(_UIEditMenuOverlayUIClientPresentation *)self presentationConfiguration];
  v10 = [v5 identifier];

  v6 = [[_UIORequestEditMenuDismissalAction alloc] initWithConfigurationIdentifier:v10 reason:a3];
  v7 = [(_UIEditMenuOverlayUIClientPresentation *)self overlayService];
  [v7 sendOverlayAction:v6];

  v8 = [(_UIEditMenuPresentation *)self sourceView];
  v9 = [_UIEditMenuSceneComponent sceneComponentForView:v8];
  [v9 removeActivePresentation:self];
}

- (void)handleLifecycleEvent:(int64_t)a3
{
  if (a3 <= 3)
  {
    [(_UIEditMenuPresentation *)self transitionWithEvent:?];
  }
}

- (void)performMenuLeafAction:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  v9 = [v7 identifier];
  v10 = [v8 menuLeafForIdentifier:v9];

  v11 = [v7 pasteAuthenticationMessage];

  [UIPasteboard _attemptAuthenticationWithMessage:v11];
  if (v10)
  {
    v12 = [(_UIEditMenuPresentation *)self delegate];
    [v12 _editMenuPresentation:self didSelectMenuLeaf:v10 completion:v6];
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

- (void)preparedMenuWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [(_UIEditMenuOverlayUIClientPresentation *)self menuManager];
  v10 = [v9 menuForIdentifier:v8];

  if (!v10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIEditMenuOverlayUIPresentation.m" lineNumber:160 description:@"Could not find matching menu for the given request"];
  }

  v11 = [(_UIEditMenuPresentation *)self delegate];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___UIEditMenuOverlayUIClientPresentation_preparedMenuWithIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E710E108;
  v14[4] = self;
  v15 = v7;
  v12 = v7;
  [v11 _editMenuPresentation:self preparedMenuForDisplay:v10 completion:v14];
}

- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = _UIEditMenuOverlayUIClientPresentation;
  [(_UIEditMenuPresentation *)&v10 didTransitionFrom:a3 to:?];
  if (a4 == 4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63___UIEditMenuOverlayUIClientPresentation_didTransitionFrom_to___block_invoke_2;
    v8[3] = &unk_1E70F3590;
    v8[4] = self;
    [(_UIEditMenuPresentation *)self animateScaleDismissalWithAnimations:v8 completion:0];
    v6 = [(_UIEditMenuPresentation *)self sourceView];
    v7 = [_UIEditMenuSceneComponent sceneComponentForView:v6];
    [v7 removeActivePresentation:self];
  }

  else if (a4 == 2)
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