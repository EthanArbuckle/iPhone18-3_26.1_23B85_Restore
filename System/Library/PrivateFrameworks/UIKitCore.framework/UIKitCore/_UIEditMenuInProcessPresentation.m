@interface _UIEditMenuInProcessPresentation
- (BOOL)canPresentEditMenu;
- (id)configureContainerViewWithConfiguration:(id)a3;
- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4;
- (void)teardownContainerView;
@end

@implementation _UIEditMenuInProcessPresentation

- (BOOL)canPresentEditMenu
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(_UIEditMenuPresentation *)self sourceView];
  v4 = [_UIEditMenuSceneComponent sceneComponentForView:v3];

  if (!v4)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v6 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_6;
      }

      v7 = [(_UIEditMenuPresentation *)self activeConfiguration];
      v8 = [(_UIEditMenuPresentation *)self sourceView];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_fault_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v10, 0x16u);
LABEL_5:

LABEL_6:
      goto LABEL_7;
    }

    v5 = *(__UILogGetCategoryCachedImpl("Assert", &canPresentEditMenu___s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [(_UIEditMenuPresentation *)self activeConfiguration];
      v8 = [(_UIEditMenuPresentation *)self sourceView];
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "The edit menu (configuration: %@) can only be presented when the view is in a window scene: %@", &v10, 0x16u);
      goto LABEL_5;
    }
  }

LABEL_7:

  return v4 != 0;
}

- (id)configureContainerViewWithConfiguration:(id)a3
{
  v4 = a3;
  if (!self->_menuContainerView)
  {
    v5 = [(_UIEditMenuPresentation *)self sourceView];
    v6 = [v5 window];

    v7 = [v4 _overrideSourceWindow];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    v10 = v9;

    v11 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:v6 == v10];
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
    v12 = [(_UIEditMenuPresentation *)self sourceView];
    v13 = [v12 traitCollection];
    v14 = _UIEditMenuGetPlatformMetrics([v13 userInterfaceIdiom]);

    v15 = [v14 containerViewConfigurator];

    if (v15)
    {
      v16 = [v14 containerViewConfigurator];
      (v16)[2](v16, v11);
    }

    [v10 addSubview:v11];
    objc_storeStrong(&self->_menuContainerView, v11);
    if (v6 != v10)
    {
      v17 = [[_UIEditMenuContainerView alloc] initWithPresentation:self enablePassthrough:1];
      [v6 _usableSceneBounds];
      [(_UIEditMenuContainerView *)v17 setFrame:?];
      [(UIView *)v17 setAutoresizingMask:18];
      [v6 addSubview:v17];
      touchPassthroughView = self->_touchPassthroughView;
      self->_touchPassthroughView = v17;
    }
  }

  -[_UIEditMenuContainerView setIgnoresPassthroughInPresentationSource:](self->_menuContainerView, "setIgnoresPassthroughInPresentationSource:", [v4 _ignoresPassthroughInView]);
  -[_UIEditMenuContainerView setIgnoresPassthroughInPresentationSource:](self->_touchPassthroughView, "setIgnoresPassthroughInPresentationSource:", [v4 _ignoresPassthroughInView]);
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

- (void)didTransitionFrom:(unint64_t)a3 to:(unint64_t)a4
{
  v29.receiver = self;
  v29.super_class = _UIEditMenuInProcessPresentation;
  [(_UIEditMenuContentPresentation *)&v29 didTransitionFrom:a3 to:?];
  if (a4 == 7)
  {
    v6 = [(_UIEditMenuPresentation *)self sourceView];
    v7 = [v6 window];

    v8 = [(_UIEditMenuInProcessPresentation *)self containerView];
    v9 = [v8 window];

    if (v7 != v9)
    {
      v10 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [v10 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v9 convertRect:v7 toWindow:{v12, v14, v16, v18}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [v27 setFrame:{v20, v22, v24, v26}];

      v28 = [(_UIEditMenuInProcessPresentation *)self containerView];
      [v7 addSubview:v28];
    }
  }
}

@end