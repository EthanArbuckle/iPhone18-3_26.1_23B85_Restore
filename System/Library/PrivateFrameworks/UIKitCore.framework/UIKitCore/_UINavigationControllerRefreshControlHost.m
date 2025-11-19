@interface _UINavigationControllerRefreshControlHost
+ (BOOL)canHostRefreshControlOwnedByScrollView:(id)a3 inNavigationController:(id)a4;
- (BOOL)isHostingRefreshControlOwnedByScrollView:(id)a3;
- (NSString)description;
- (UINavigationController)navigationController;
- (UIRefreshControl)refreshControl;
- (UIScrollView)scrollView;
- (_UINavigationControllerRefreshControlHost)initWithNavigationController:(id)a3 scrollView:(id)a4;
- (_UINavigationControllerRefreshControlHostDelegate)delegate;
- (double)_alphaForRefreshingControlStateWithPossiblyObstructedContent;
- (double)_thresholdForObstructedContentFullAlpha;
- (double)_thresholdForObstructedContentZeroAlpha;
- (double)fullHeightOfRefreshControl;
- (void)_installRefreshControlIntoContainerView;
- (void)_notifyLayoutDidChange;
- (void)_removeRefreshControlFromContainerView;
- (void)_updateFadeOutProgress;
- (void)dealloc;
- (void)decrementInsetHeight:(double)a3;
- (void)incrementInsetHeight:(double)a3;
- (void)refreshControl:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5;
- (void)setHostContainerView:(id)a3;
- (void)setRestingHeightOfRefreshControl:(double)a3;
- (void)setUnobstructedHeight:(double)a3;
- (void)stopAnimations;
@end

@implementation _UINavigationControllerRefreshControlHost

- (void)_removeRefreshControlFromContainerView
{
  v3 = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
  if (v3)
  {
    v6 = v3;
    [v3 removeFromSuperview];
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained _removeScrollViewScrollObserver:v6];

    [MEMORY[0x1E69977A0] deactivateConstraints:self->_refreshControlConstraints];
    refreshControlConstraints = self->_refreshControlConstraints;
    self->_refreshControlConstraints = 0;

    v3 = v6;
  }
}

- (UIRefreshControl)refreshControl
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);

  return WeakRetained;
}

- (void)_installRefreshControlIntoContainerView
{
  v18 = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);

  if (WeakRetained)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [v18 heightAnchor];
    v6 = [v5 constraintEqualToConstant:60.0];
    [(NSArray *)v4 addObject:v6];

    v7 = [v18 centerYAnchor];
    v8 = [(UIView *)self->_hostContainerView centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];
    [(NSArray *)v4 addObject:v9];

    v10 = [v18 leftAnchor];
    v11 = [(UIView *)self->_hostContainerView leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    [(NSArray *)v4 addObject:v12];

    v13 = [v18 rightAnchor];
    v14 = [(UIView *)self->_hostContainerView rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [(NSArray *)v4 addObject:v15];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_hostContainerView addSubview:v18];
    [MEMORY[0x1E69977A0] activateConstraints:v4];
    refreshControlConstraints = self->_refreshControlConstraints;
    self->_refreshControlConstraints = v4;

    v17 = objc_loadWeakRetained(&self->_scrollView);
    [v17 _addScrollViewScrollObserver:v18];
  }
}

- (UIScrollView)scrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_scrollView);

  return WeakRetained;
}

- (double)fullHeightOfRefreshControl
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
  [WeakRetained _refreshControlHeight];
  v4 = v3;

  return v4;
}

- (_UINavigationControllerRefreshControlHost)initWithNavigationController:(id)a3 scrollView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([objc_opt_class() canHostRefreshControlOwnedByScrollView:v8 inNavigationController:v7] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UINavigationControllerRefreshControlHost.m" lineNumber:26 description:@"invalid parameters"];
  }

  v15.receiver = self;
  v15.super_class = _UINavigationControllerRefreshControlHost;
  v9 = [(_UINavigationControllerRefreshControlHost *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_navigationController, v7);
    objc_storeWeak(&v10->_scrollView, v8);
    v11 = [v8 refreshControl];
    objc_storeWeak(&v10->_refreshControl, v11);

    WeakRetained = objc_loadWeakRetained(&v10->_refreshControl);
    [WeakRetained _setHost:v10];

    v10->_unobstructedHeight = 0.0;
  }

  return v10;
}

- (void)setRestingHeightOfRefreshControl:(double)a3
{
  v3 = fmax(a3, 0.0);
  if (self->_restingHeightOfRefreshControl != v3)
  {
    self->_restingHeightOfRefreshControl = v3;
    [(_UINavigationControllerRefreshControlHost *)self _notifyLayoutDidChange];
  }
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = _UINavigationControllerRefreshControlHost;
  v3 = [(_UINavigationControllerRefreshControlHost *)&v17 description];
  if (os_variant_has_internal_diagnostics())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = [v3 stringByAppendingFormat:@" delegate=%p", v6];

      v3 = v7;
    }

    v8 = objc_loadWeakRetained(&self->_navigationController);

    if (v8)
    {
      v9 = objc_loadWeakRetained(&self->_navigationController);
      v10 = [v3 stringByAppendingFormat:@" navigationController=%p", v9];

      v3 = v10;
    }

    v11 = objc_loadWeakRetained(&self->_scrollView);

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_scrollView);
      v13 = [v3 stringByAppendingFormat:@" scrollView=%p", v12];

      v3 = v13;
    }

    v14 = objc_loadWeakRetained(&self->_refreshControl);

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_refreshControl);
      v16 = [v3 stringByAppendingFormat:@" refreshControl=%p", v15];

      v3 = v16;
    }
  }

  return v3;
}

- (void)stopAnimations
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59___UINavigationControllerRefreshControlHost_stopAnimations__block_invoke;
  v2[3] = &unk_1E70F3590;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

+ (BOOL)canHostRefreshControlOwnedByScrollView:(id)a3 inNavigationController:(id)a4
{
  v5 = a3;
  v6 = [a4 navigationBar];
  if ([v6 supportsRefreshControlHosting])
  {
    v7 = [v5 refreshControl];
    if (v7)
    {
      v8 = [v6 _hasVariableHeight];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isHostingRefreshControlOwnedByScrollView:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationControllerRefreshControlHost *)self scrollView];
  if (v5 == v4)
  {
    v7 = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
    v8 = [v4 refreshControl];
    v6 = v7 == v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHostContainerView:(id)a3
{
  v11 = a3;
  if (v11)
  {
    WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
    [WeakRetained _setHost:self];
  }

  if (self->_hostContainerView != v11)
  {
    v6 = objc_loadWeakRetained(&self->_refreshControl);
    v7 = [v6 superview];

    if (v7 != v11)
    {
      [(_UINavigationControllerRefreshControlHost *)self _removeRefreshControlFromContainerView];
    }

    objc_storeStrong(&self->_hostContainerView, a3);
    v8 = objc_loadWeakRetained(&self->_refreshControl);
    v9 = [v8 superview];
    hostContainerView = self->_hostContainerView;

    if (v9 != hostContainerView)
    {
      [(_UINavigationControllerRefreshControlHost *)self _installRefreshControlIntoContainerView];
    }
  }
}

- (void)dealloc
{
  [(UIView *)self->_hostContainerView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = _UINavigationControllerRefreshControlHost;
  [(_UINavigationControllerRefreshControlHost *)&v3 dealloc];
}

- (void)setUnobstructedHeight:(double)a3
{
  hostContainerView = self->_hostContainerView;
  if (hostContainerView)
  {
    UIRoundToViewScale(hostContainerView);
  }

  if (self->_unobstructedHeight != a3)
  {
    self->_unobstructedHeight = a3;

    [(_UINavigationControllerRefreshControlHost *)self _notifyLayoutDidChange];
  }
}

- (void)incrementInsetHeight:(double)a3
{
  [(_UINavigationControllerRefreshControlHost *)self restingHeightOfRefreshControl];
  v6 = v5 + a3;

  [(_UINavigationControllerRefreshControlHost *)self setRestingHeightOfRefreshControl:v6];
}

- (void)decrementInsetHeight:(double)a3
{
  [(_UINavigationControllerRefreshControlHost *)self restingHeightOfRefreshControl];
  v6 = v5 - a3;

  [(_UINavigationControllerRefreshControlHost *)self setRestingHeightOfRefreshControl:v6];
}

- (void)refreshControl:(id)a3 didChangeToState:(int64_t)a4 fromState:(int64_t)a5
{
  [(_UINavigationControllerRefreshControlHost *)self _notifyLayoutDidChange:a3];
  if (a4 == 4)
  {
    v7 = [(_UINavigationControllerRefreshControlHost *)self scrollView];
    [v7 _contentOffsetAnimationDuration];
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87___UINavigationControllerRefreshControlHost_refreshControl_didChangeToState_fromState___block_invoke;
    v11[3] = &unk_1E70F35B8;
    v12 = v7;
    v13 = self;
    v10 = v7;
    [UIView animateWithDuration:v11 animations:v9];
  }
}

- (void)_notifyLayoutDidChange
{
  [(_UINavigationControllerRefreshControlHost *)self _updateFadeOutProgress];
  v3 = [(_UINavigationControllerRefreshControlHost *)self delegate];
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67___UINavigationControllerRefreshControlHost__notifyLayoutDidChange__block_invoke;
    v5[3] = &unk_1E70F35B8;
    v6 = v3;
    v7 = self;
    [WeakRetained _performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:v5];
  }
}

- (void)_updateFadeOutProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
  v4 = [WeakRetained refreshControlState];

  if (v4 > 6)
  {
    v5 = 0.0;
  }

  else if (((1 << v4) & 0x47) != 0)
  {
    v5 = 1.0;
  }

  else
  {
    if (((1 << v4) & 0x28) != 0)
    {
      [(_UINavigationControllerRefreshControlHost *)self _alphaForRefreshingControlStateWithPossiblyObstructedContent];
    }

    else
    {
      [(UIView *)self->_hostContainerView alpha];
    }

    v5 = v6;
  }

  [(UIView *)self->_hostContainerView alpha];
  if (v5 != v7)
  {
    hostContainerView = self->_hostContainerView;

    [(UIView *)hostContainerView setAlpha:v5];
  }
}

- (double)_thresholdForObstructedContentFullAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
  [WeakRetained _refreshControlHeight];
  v4 = v3 + -2.0;

  return v4;
}

- (double)_thresholdForObstructedContentZeroAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
  [WeakRetained _refreshControlHeight];
  v4 = v3 * 0.5;

  return v4;
}

- (double)_alphaForRefreshingControlStateWithPossiblyObstructedContent
{
  [(_UINavigationControllerRefreshControlHost *)self _thresholdForObstructedContentFullAlpha];
  v4 = v3;
  [(_UINavigationControllerRefreshControlHost *)self _thresholdForObstructedContentZeroAlpha];
  v6 = (self->_unobstructedHeight - v5) / (v4 - v5);
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  return fmax(v6, 0.0);
}

- (_UINavigationControllerRefreshControlHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end