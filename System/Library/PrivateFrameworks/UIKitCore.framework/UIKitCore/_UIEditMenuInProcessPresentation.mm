@interface _UIEditMenuInProcessPresentation
- (BOOL)canPresentEditMenu;
- (id)configureContainerViewWithConfiguration:(id)configuration;
- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to;
- (void)teardownContainerView;
@end

@implementation _UIEditMenuInProcessPresentation

- (BOOL)canPresentEditMenu
{
  v14 = *MEMORY[0x1E69E9840];
  sourceView = [(_UIEditMenuPresentation *)self sourceView];
  v4 = [_UIEditMenuSceneComponent sceneComponentForView:sourceView];

  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
      sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
      v10 = 138412546;
      v11 = activeConfiguration;
      v12 = 2112;
      v13 = sourceView2;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v10, 0x16u);
LABEL_5:

LABEL_6:
      goto LABEL_7;
    }

    v5 = *(__UILogGetCategoryCachedImpl("Assert", &canPresentEditMenu___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      activeConfiguration = [(_UIEditMenuPresentation *)self activeConfiguration];
      sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
      v10 = 138412546;
      v11 = activeConfiguration;
      v12 = 2112;
      v13 = sourceView2;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v10, 0x16u);
      goto LABEL_5;
    }
  }

LABEL_7:

  return v4 != 0;
}

- (id)configureContainerViewWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!self->_menuContainerView)
  {
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    window = [sourceView window];

    _overrideSourceWindow = [configurationCopy _overrideSourceWindow];
    v8 = _overrideSourceWindow;
    if (_overrideSourceWindow)
    {
      v9 = _overrideSourceWindow;
    }

    else
    {
      v9 = window;
    }

    v10 = v9;

    v11 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:window == v10];
    if ([v10 _isTextEffectsWindow])
    {
      [v10 _usableSceneBounds];
    }

    else
    {
      [v10 bounds];
    }

    [(_UIEditMenuContainerView *)v11 setFrame:?];
    [(UIView *)v11 setAutoresizingMask:18];
    sourceView2 = [(_UIEditMenuPresentation *)self sourceView];
    traitCollection = [sourceView2 traitCollection];
    v14 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    containerViewConfigurator = [v14 containerViewConfigurator];

    if (containerViewConfigurator)
    {
      containerViewConfigurator2 = [v14 containerViewConfigurator];
      (containerViewConfigurator2)[2](containerViewConfigurator2, v11);
    }

    [v10 addSubview:v11];
    objc_storeStrong(&self->_menuContainerView, v11);
    if (window != v10)
    {
      v17 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:1];
      [window _usableSceneBounds];
      [(_UIEditMenuContainerView *)v17 setFrame:?];
      [(UIView *)v17 setAutoresizingMask:18];
      [window addSubview:v17];
      touchPassthroughView = self->_touchPassthroughView;
      self->_touchPassthroughView = v17;
    }
  }

  -[_UIEditMenuContainerView setIgnoresPassthroughInPresentationSource:](self->_menuContainerView, "setIgnoresPassthroughInPresentationSource:", [configurationCopy _ignoresPassthroughInView]);
  -[_UIEditMenuContainerView setIgnoresPassthroughInPresentationSource:](self->_touchPassthroughView, "setIgnoresPassthroughInPresentationSource:", [configurationCopy _ignoresPassthroughInView]);
  menuContainerView = self->_menuContainerView;
  v20 = menuContainerView;

  return menuContainerView;
}

- (void)teardownContainerView
{
  [(UIView *)self->_menuContainerView removeFromSuperview];
  menuContainerView = self->_menuContainerView;
  self->_menuContainerView = 0;

  [(UIView *)self->_touchPassthroughView removeFromSuperview];
  touchPassthroughView = self->_touchPassthroughView;
  self->_touchPassthroughView = 0;
}

- (void)didTransitionFrom:(unint64_t)from to:(unint64_t)to
{
  v29.receiver = self;
  v29.super_class = _UIEditMenuInProcessPresentation;
  [(_UIEditMenuContentPresentation *)&v29 didTransitionFrom:from to:?];
  if (to == 7)
  {
    sourceView = [(_UIEditMenuPresentation *)self sourceView];
    window = [sourceView window];

    containerView = [(_UIEditMenuInProcessPresentation *)self containerView];
    window2 = [containerView window];

    if (window != window2)
    {
      containerView2 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [containerView2 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [window2 convertRect:window toWindow:{v12, v14, v16, v18}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      containerView3 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [containerView3 setFrame:{v20, v22, v24, v26}];

      containerView4 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [window addSubview:containerView4];
    }
  }
}

@end