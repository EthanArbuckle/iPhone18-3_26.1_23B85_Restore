@interface _UIContainerWindowPortalInteraction
- (BOOL)_isSwiftUI:(id)a3;
- (BOOL)_viewIsVisibleInContainer:(id)a3;
- (CGRect)_unionFrameForView:(id)a3;
- (UIView)view;
- (UIWindow)containerWindow;
- (id)_makePortalView;
- (id)_visibleViewContainer;
- (void)_setPortalViewEnabled:(BOOL)a3;
- (void)_viewVisibilityDidChange;
- (void)didMoveToView:(id)a3;
- (void)ensureVisibilityInContainerWindow;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
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
    v4 = [WeakRetained isHidden];

    if ((v4 & 1) == 0)
    {
      if (self->_attemptsToUseAncestorViewContainer || (v5 = objc_loadWeakRetained(&self->_view), [v5 window], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_isRemoteKeyboardWindow"), v6, v5, v7))
      {
        [(_UIContainerWindowPortalInteraction *)self _visibleViewContainer];
        v24 = v8 = 0.0;
        if (self->_shouldAdjustZPositionToMatchAncestorViewContainer)
        {
          v9 = [(_UIContainerWindowPortalInteraction *)self containerWindow];

          if (v24 != v9)
          {
            v10 = objc_loadWeakRetained(&self->_view);
            v11 = [v10 layer];
            [v11 zPosition];
            v8 = v12;

            v13 = objc_loadWeakRetained(&self->_view);
            v14 = [v13 superview];

            for (i = v14 == v24; v14 && v14 != v24; i = v14 == v24)
            {
              v16 = v14;
              v17 = [v14 layer];
              [v17 zPosition];
              v8 = v8 + v18;

              v14 = [v16 superview];
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
        v24 = [(_UIContainerWindowPortalInteraction *)self containerWindow];
        v8 = 0.0;
      }

      v19 = [(UIView *)self->_portalView superview];

      v20 = v24;
      if (v24 != v19)
      {
        [(UIView *)self->_portalView removeFromSuperview];
        v21 = [(_UIContainerWindowPortalInteraction *)self _makePortalView];
        portalView = self->_portalView;
        self->_portalView = v21;

        [v24 addSubview:self->_portalView];
        v20 = v24;
        if (self->_shouldAdjustZPositionToMatchAncestorViewContainer && v8 > 0.0)
        {
          v23 = [(UIView *)self->_portalView layer];
          [v23 setZPosition:v8];

          v20 = v24;
        }
      }
    }
  }
}

- (UIWindow)containerWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (!WeakRetained || (v4 = objc_loadWeakRetained(&self->_view), [v4 keyboardSceneDelegate], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "containerWindow"), v6 = objc_claimAutoreleasedReturnValue(), v5, v4, !v6))
  {
    v7 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v6 = [v7 containerWindow];
  }

  return v6;
}

- (CGRect)_unionFrameForView:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = [v3 subviews];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(v12);
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
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
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

- (BOOL)_viewIsVisibleInContainer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  [(_UIContainerWindowPortalInteraction *)self _unionFrameForView:WeakRetained];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = objc_loadWeakRetained(&self->_view);
  [v4 convertRect:v14 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v4 visibleBounds];
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

- (BOOL)_isSwiftUI:(id)a3
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 bundlePath];

  LOBYTE(v3) = [v4 containsString:@"SwiftUI"];
  return v3;
}

- (id)_visibleViewContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained superview];

  if (v4)
  {
    do
    {
      if ([(_UIContainerWindowPortalInteraction *)self _viewIsVisibleInContainer:v4]&& ![(_UIContainerWindowPortalInteraction *)self _isSwiftUI:v4])
      {
        break;
      }

      v5 = [v4 superview];

      v4 = v5;
    }

    while (v5);
  }

  [v4 safeAreaInsets];
  if (v6 > 0.0)
  {
    v7 = [v4 _viewControllerForAncestor];
    v8 = [v7 navigationController];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 navigationBar];
      v11 = objc_loadWeakRetained(&self->_view);
      [(_UIContainerWindowPortalInteraction *)self _unionFrameForView:v11];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v20 = objc_loadWeakRetained(&self->_view);
      [v10 convertRect:v20 fromView:{v13, v15, v17, v19}];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v10 bounds];
      v39.origin.x = v22;
      v39.origin.y = v24;
      v39.size.width = v26;
      v39.size.height = v28;
      if (CGRectIntersectsRect(v38, v39))
      {
        v29 = [v10 superview];

        v4 = v29;
      }
    }
  }

  v30 = [(UIView *)v4 __viewDelegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    v32 = [(UIView *)v4 __viewDelegate];
    v33 = [v32 _containerForContainerWindowPortalInteraction];

    if (v33)
    {
      v34 = v33;

      v4 = v34;
    }
  }

  if (!v4)
  {
    v4 = [(_UIContainerWindowPortalInteraction *)self containerWindow];
    if (!v4)
    {
      v35 = objc_loadWeakRetained(&self->_view);
      v4 = [v35 window];
    }
  }

  return v4;
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

- (void)_setPortalViewEnabled:(BOOL)a3
{
  if (self->_portalViewEnabled != a3)
  {
    self->_portalViewEnabled = a3;
    if (a3 && (WeakRetained = objc_loadWeakRetained(&self->_view), v5 = [WeakRetained isHidden], WeakRetained, (v5 & 1) == 0))
    {
      [(UIView *)self->_portalView removeFromSuperview];
      v7 = [(_UIContainerWindowPortalInteraction *)self _makePortalView];
      portalView = self->_portalView;
      self->_portalView = v7;

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

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained != v4)
  {

    [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:0];
  }
}

- (void)didMoveToView:(id)a3
{
  obj = a3;
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

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  if (WeakRetained)
  {

    [(_UIContainerWindowPortalInteraction *)self _setPortalViewEnabled:v3];
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