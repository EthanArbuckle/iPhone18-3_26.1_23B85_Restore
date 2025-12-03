@interface _UINavigationControllerRefreshControlHost
+ (BOOL)canHostRefreshControlOwnedByScrollView:(id)view inNavigationController:(id)controller;
- (BOOL)isHostingRefreshControlOwnedByScrollView:(id)view;
- (NSString)description;
- (UINavigationController)navigationController;
- (UIRefreshControl)refreshControl;
- (UIScrollView)scrollView;
- (_UINavigationControllerRefreshControlHost)initWithNavigationController:(id)controller scrollView:(id)view;
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
- (void)decrementInsetHeight:(double)height;
- (void)incrementInsetHeight:(double)height;
- (void)refreshControl:(id)control didChangeToState:(int64_t)state fromState:(int64_t)fromState;
- (void)setHostContainerView:(id)view;
- (void)setRestingHeightOfRefreshControl:(double)control;
- (void)setUnobstructedHeight:(double)height;
- (void)stopAnimations;
@end

@implementation _UINavigationControllerRefreshControlHost

- (void)_removeRefreshControlFromContainerView
{
  refreshControl = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
  if (refreshControl)
  {
    v6 = refreshControl;
    [refreshControl removeFromSuperview];
    WeakRetained = objc_loadWeakRetained(&self->_scrollView);
    [WeakRetained _removeScrollViewScrollObserver:v6];

    [MEMORY[0x1E69977A0] deactivateConstraints:self->_refreshControlConstraints];
    refreshControlConstraints = self->_refreshControlConstraints;
    self->_refreshControlConstraints = 0;

    refreshControl = v6;
  }
}

- (UIRefreshControl)refreshControl
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);

  return WeakRetained;
}

- (void)_installRefreshControlIntoContainerView
{
  refreshControl = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);

  if (WeakRetained)
  {
    array = [MEMORY[0x1E695DF70] array];
    heightAnchor = [refreshControl heightAnchor];
    v6 = [heightAnchor constraintEqualToConstant:60.0];
    [(NSArray *)array addObject:v6];

    centerYAnchor = [refreshControl centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_hostContainerView centerYAnchor];
    v9 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [(NSArray *)array addObject:v9];

    leftAnchor = [refreshControl leftAnchor];
    leftAnchor2 = [(UIView *)self->_hostContainerView leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [(NSArray *)array addObject:v12];

    rightAnchor = [refreshControl rightAnchor];
    rightAnchor2 = [(UIView *)self->_hostContainerView rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    [(NSArray *)array addObject:v15];

    [refreshControl setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_hostContainerView addSubview:refreshControl];
    [MEMORY[0x1E69977A0] activateConstraints:array];
    refreshControlConstraints = self->_refreshControlConstraints;
    self->_refreshControlConstraints = array;

    v17 = objc_loadWeakRetained(&self->_scrollView);
    [v17 _addScrollViewScrollObserver:refreshControl];
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

- (_UINavigationControllerRefreshControlHost)initWithNavigationController:(id)controller scrollView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  if (([objc_opt_class() canHostRefreshControlOwnedByScrollView:viewCopy inNavigationController:controllerCopy] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationControllerRefreshControlHost.m" lineNumber:26 description:@"invalid parameters"];
  }

  v15.receiver = self;
  v15.super_class = _UINavigationControllerRefreshControlHost;
  v9 = [(_UINavigationControllerRefreshControlHost *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_navigationController, controllerCopy);
    objc_storeWeak(&v10->_scrollView, viewCopy);
    refreshControl = [viewCopy refreshControl];
    objc_storeWeak(&v10->_refreshControl, refreshControl);

    WeakRetained = objc_loadWeakRetained(&v10->_refreshControl);
    [WeakRetained _setHost:v10];

    v10->_unobstructedHeight = 0.0;
  }

  return v10;
}

- (void)setRestingHeightOfRefreshControl:(double)control
{
  v3 = fmax(control, 0.0);
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

+ (BOOL)canHostRefreshControlOwnedByScrollView:(id)view inNavigationController:(id)controller
{
  viewCopy = view;
  navigationBar = [controller navigationBar];
  if ([navigationBar supportsRefreshControlHosting])
  {
    refreshControl = [viewCopy refreshControl];
    if (refreshControl)
    {
      _hasVariableHeight = [navigationBar _hasVariableHeight];
    }

    else
    {
      _hasVariableHeight = 0;
    }
  }

  else
  {
    _hasVariableHeight = 0;
  }

  return _hasVariableHeight;
}

- (BOOL)isHostingRefreshControlOwnedByScrollView:(id)view
{
  viewCopy = view;
  scrollView = [(_UINavigationControllerRefreshControlHost *)self scrollView];
  if (scrollView == viewCopy)
  {
    refreshControl = [(_UINavigationControllerRefreshControlHost *)self refreshControl];
    refreshControl2 = [viewCopy refreshControl];
    v6 = refreshControl == refreshControl2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setHostContainerView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
    [WeakRetained _setHost:self];
  }

  if (self->_hostContainerView != viewCopy)
  {
    v6 = objc_loadWeakRetained(&self->_refreshControl);
    superview = [v6 superview];

    if (superview != viewCopy)
    {
      [(_UINavigationControllerRefreshControlHost *)self _removeRefreshControlFromContainerView];
    }

    objc_storeStrong(&self->_hostContainerView, view);
    v8 = objc_loadWeakRetained(&self->_refreshControl);
    superview2 = [v8 superview];
    hostContainerView = self->_hostContainerView;

    if (superview2 != hostContainerView)
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

- (void)setUnobstructedHeight:(double)height
{
  hostContainerView = self->_hostContainerView;
  if (hostContainerView)
  {
    UIRoundToViewScale(hostContainerView);
  }

  if (self->_unobstructedHeight != height)
  {
    self->_unobstructedHeight = height;

    [(_UINavigationControllerRefreshControlHost *)self _notifyLayoutDidChange];
  }
}

- (void)incrementInsetHeight:(double)height
{
  [(_UINavigationControllerRefreshControlHost *)self restingHeightOfRefreshControl];
  v6 = v5 + height;

  [(_UINavigationControllerRefreshControlHost *)self setRestingHeightOfRefreshControl:v6];
}

- (void)decrementInsetHeight:(double)height
{
  [(_UINavigationControllerRefreshControlHost *)self restingHeightOfRefreshControl];
  v6 = v5 - height;

  [(_UINavigationControllerRefreshControlHost *)self setRestingHeightOfRefreshControl:v6];
}

- (void)refreshControl:(id)control didChangeToState:(int64_t)state fromState:(int64_t)fromState
{
  [(_UINavigationControllerRefreshControlHost *)self _notifyLayoutDidChange:control];
  if (state == 4)
  {
    scrollView = [(_UINavigationControllerRefreshControlHost *)self scrollView];
    [scrollView _contentOffsetAnimationDuration];
    v9 = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __87___UINavigationControllerRefreshControlHost_refreshControl_didChangeToState_fromState___block_invoke;
    v11[3] = &unk_1E70F35B8;
    v12 = scrollView;
    selfCopy = self;
    v10 = scrollView;
    [UIView animateWithDuration:v11 animations:v9];
  }
}

- (void)_notifyLayoutDidChange
{
  [(_UINavigationControllerRefreshControlHost *)self _updateFadeOutProgress];
  delegate = [(_UINavigationControllerRefreshControlHost *)self delegate];
  if (delegate)
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationController);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67___UINavigationControllerRefreshControlHost__notifyLayoutDidChange__block_invoke;
    v5[3] = &unk_1E70F35B8;
    v6 = delegate;
    selfCopy = self;
    [WeakRetained _performWhileIgnoringUpdateTopViewFramesToMatchScrollOffset:v5];
  }
}

- (void)_updateFadeOutProgress
{
  WeakRetained = objc_loadWeakRetained(&self->_refreshControl);
  refreshControlState = [WeakRetained refreshControlState];

  if (refreshControlState > 6)
  {
    v5 = 0.0;
  }

  else if (((1 << refreshControlState) & 0x47) != 0)
  {
    v5 = 1.0;
  }

  else
  {
    if (((1 << refreshControlState) & 0x28) != 0)
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