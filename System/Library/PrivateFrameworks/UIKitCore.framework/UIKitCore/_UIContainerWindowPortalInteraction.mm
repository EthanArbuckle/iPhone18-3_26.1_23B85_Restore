@interface _UIContainerWindowPortalInteraction
- (BOOL)_isSwiftUI:(id)i;
- (BOOL)_viewIsVisibleInContainer:(id)container;
- (CGRect)_unionFrameForView:(id)view;
- (UIView)view;
- (UIWindow)containerWindow;
- (id)_makePortalView;
- (id)_visibleViewContainer;
- (void)_setPortalViewEnabled:(BOOL)enabled;
- (void)_viewVisibilityDidChange;
- (void)didMoveToView:(id)view;
- (void)ensureVisibilityInContainerWindow;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
@end

@implementation _UIContainerWindowPortalInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)ensureVisibilityInContainerWindow
{
  if (self->_portalViewEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    isHidden = [WeakRetained isHidden];

    if ((isHidden & 1) == 0)
    {
      if (self->_attemptsToUseAncestorViewContainer || (v5 = objc_loadWeakRetained(&self->_view), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isRemoteKeyboardWindow"), v6, v5, v7))
      {
        [(_UIContainerWindowPortalInteraction *)self _visibleViewContainer];
        containerWindow2 = v8 = 0.0;
        if (self->_shouldAdjustZPositionToMatchAncestorViewContainer)
        {
          containerWindow = [(_UIContainerWindowPortalInteraction *)self containerWindow];

          if (containerWindow2 != containerWindow)
          {
            v10 = objc_loadWeakRetained(&self->_view);
            layer = [v10 layer];
            [layer zPosition];
            v8 = v12;

            v13 = objc_loadWeakRetained(&self->_view);
            superview = [v13 superview];

            for (i = superview == containerWindow2; superview && superview != containerWindow2; i = superview == containerWindow2)
            {
              v16 = superview;
              layer2 = [superview layer];
              [layer2 zPosition];
              v8 = v8 + v18;

              superview = [v16 superview];
            }

            if (!i)
            {
              v8 = 0.0;
            }
          }
        }
      }

      else
      {
        containerWindow2 = [(_UIContainerWindowPortalInteraction *)self containerWindow];
        v8 = 0.0;
      }

      superview2 = [(UIView *)self->_portalView superview];

      v20 = containerWindow2;
      if (containerWindow2 != superview2)
      {
        [(UIView *)self->_portalView removeFromSuperview];
        _makePortalView = [(_UIContainerWindowPortalInteraction *)self _makePortalView];
        portalView = self->_portalView;
        self->_portalView = _makePortalView;

        [containerWindow2 addSubview:self->_portalView];
        v20 = containerWindow2;
        if (self->_shouldAdjustZPositionToMatchAncestorViewContainer && v8 > 0.0)
        {
          layer3 = [(UIView *)self->_portalView layer];
          [layer3 setZPosition:v8];

          v20 = containerWindow2;
        }
      }
    }
  }
}

- (UIWindow)containerWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (!WeakRetained || (v4 = objc_loadWeakRetained(&self->_view), [v4 keyboardSceneDelegate], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "containerWindow"), containerWindow = objc_claimAutoreleasedReturnValue(), v5, v4, !containerWindow))
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    containerWindow = [v7 containerWindow];
  }

  return containerWindow;
}

- (CGRect)_unionFrameForView:(id)view
{
  v30 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subviews = [viewCopy subviews];
  v13 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v25 + 1) + 8 * v16) frame];
        v34.origin.x = v17;
        v34.origin.y = v18;
        v34.size.width = v19;
        v34.size.height = v20;
        v31.origin.x = x;
        v31.origin.y = y;
        v31.size.width = width;
        v31.size.height = height;
        v32 = CGRectUnion(v31, v34);
        x = v32.origin.x;
        y = v32.origin.y;
        width = v32.size.width;
        height = v32.size.height;
        ++v16;
      }

      while (v14 != v16);
      v14 = [subviews countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }

  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (BOOL)_viewIsVisibleInContainer:(id)container
{
  if (!container)
  {
    return 0;
  }

  containerCopy = container;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(_UIContainerWindowPortalInteraction *)self _unionFrameForView:WeakRetained];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_view);
  [containerCopy convertRect:v14 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [containerCopy visibleBounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  v35 = v16;
  v36 = v18;
  v37 = v20;
  v38 = v22;

  return CGRectContainsRect(*&v31, *&v35);
}

- (BOOL)_isSwiftUI:(id)i
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  bundlePath = [v3 bundlePath];

  LOBYTE(v3) = [bundlePath containsString:@"SwiftUI"];
  return v3;
}

- (id)_visibleViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  superview = [WeakRetained superview];

  if (superview)
  {
    do
    {
      if ([(_UIContainerWindowPortalInteraction *)self _viewIsVisibleInContainer:superview]&& ![(_UIContainerWindowPortalInteraction *)self _isSwiftUI:superview])
      {
        break;
      }

      v4Superview = [superview superview];

      superview = v4Superview;
    }

    while (v4Superview);
  }

  [superview safeAreaInsets];
  if (v6 > 0.0)
  {
    _viewControllerForAncestor = [superview _viewControllerForAncestor];
    navigationController = [_viewControllerForAncestor navigationController];
    v9 = navigationController;
    if (navigationController)
    {
      navigationBar = [navigationController navigationBar];
      v11 = objc_loadWeakRetained(&self->_view);
      [(_UIContainerWindowPortalInteraction *)self _unionFrameForView:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = objc_loadWeakRetained(&self->_view);
      [navigationBar convertRect:v20 fromView:{v13, v15, v17, v19}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [navigationBar bounds];
      v39.origin.x = v22;
      v39.origin.y = v24;
      v39.size.width = v26;
      v39.size.height = v28;
      if (CGRectIntersectsRect(v38, v39))
      {
        superview2 = [navigationBar superview];

        superview = superview2;
      }
    }
  }

  __viewDelegate = [(UIView *)superview __viewDelegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    __viewDelegate2 = [(UIView *)superview __viewDelegate];
    _containerForContainerWindowPortalInteraction = [__viewDelegate2 _containerForContainerWindowPortalInteraction];

    if (_containerForContainerWindowPortalInteraction)
    {
      v34 = _containerForContainerWindowPortalInteraction;

      superview = v34;
    }
  }

  if (!superview)
  {
    superview = [(_UIContainerWindowPortalInteraction *)self containerWindow];
    if (!superview)
    {
      v35 = objc_loadWeakRetained(&self->_view);
      superview = [v35 window];
    }
  }

  return superview;
}

- (id)_makePortalView
{
  v3 = [_UIContainerWindowPortalView alloc];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v5 = [(_UIPortalView *)v3 initWithSourceView:WeakRetained];

  [(_UIPortalView *)v5 setForwardsClientHitTestingToSourceView:1];
  [(_UIPortalView *)v5 _setGeometryFrozen:1];
  [(_UIPortalView *)v5 setHidesSourceView:1];
  [(_UIPortalView *)v5 setMatchesPosition:1];
  [(_UIPortalView *)v5 setMatchesTransform:1];
  [(_UIPortalView *)v5 setMatchesAlpha:1];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_loadWeakRetained(&self->_view);
  v8 = objc_opt_class();
  v9 = objc_loadWeakRetained(&self->_view);
  v10 = [v6 stringWithFormat:@"source: <%@: %p>", v8, v9];

  [(_UIPortalView *)v5 setName:v10];

  return v5;
}

- (void)_setPortalViewEnabled:(BOOL)enabled
{
  if (self->_portalViewEnabled != enabled)
  {
    self->_portalViewEnabled = enabled;
    if (enabled && (WeakRetained = objc_loadWeakRetained(&self->_view), v5 = [WeakRetained isHidden], WeakRetained, (v5 & 1) == 0))
    {
      [(UIView *)self->_portalView removeFromSuperview];
      _makePortalView = [(_UIContainerWindowPortalInteraction *)self _makePortalView];
      portalView = self->_portalView;
      self->_portalView = _makePortalView;

      [(_UIContainerWindowPortalInteraction *)self ensureVisibilityInContainerWindow];
    }

    else
    {
      [(UIView *)self->_portalView removeFromSuperview];
      v6 = self->_portalView;
      self->_portalView = 0;
    }
  }
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != viewCopy)
  {

    [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:0];
  }
}

- (void)didMoveToView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:0];
    objc_storeWeak(&self->_view, obj);
    v5 = obj;
    if (obj)
    {
      [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:[(_UIContainerWindowPortalInteraction *)self isEnabled]];
      v5 = obj;
    }
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {

    [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:enabledCopy];
  }
}

- (void)_viewVisibilityDidChange
{
  if ([(_UIContainerWindowPortalInteraction *)self isEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v4 = [WeakRetained isHidden] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:v4];
}

@end