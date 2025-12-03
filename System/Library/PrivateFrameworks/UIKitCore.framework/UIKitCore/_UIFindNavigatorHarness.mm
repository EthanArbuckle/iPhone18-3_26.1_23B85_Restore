@interface _UIFindNavigatorHarness
- (BOOL)_shouldAdjustHostViewContentOffsets;
- (UIScrollView)hostScrollView;
- (UIView)hostView;
- (UIView)interactionView;
- (_UIFindNavigatorHarness)init;
- (void)_adjustHostViewScrollOffsetToTopIfSupported;
- (void)_layoutFindNavigator;
- (void)_sendPlacementUpdate;
- (void)beginHoistingFindNavigator:(BOOL)navigator;
- (void)dealloc;
- (void)endHoistingFindNavigator:(BOOL)navigator endingActiveSession:(BOOL)session;
- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)size;
- (void)presentFindNavigatorWithFindSession:(id)session showingReplace:(BOOL)replace idiom:(int64_t)idiom;
- (void)setInteractionView:(id)view;
@end

@implementation _UIFindNavigatorHarness

- (_UIFindNavigatorHarness)init
{
  v6.receiver = self;
  v6.super_class = _UIFindNavigatorHarness;
  v2 = [(_UIFindNavigatorHarness *)&v6 init];
  if (v2)
  {
    v3 = [(UIInputViewController *)[_UIFindNavigatorViewController alloc] initWithNibName:0 bundle:0];
    findNavigatorViewController = v2->_findNavigatorViewController;
    v2->_findNavigatorViewController = v3;

    [(_UIFindNavigatorViewController *)v2->_findNavigatorViewController setFindNavigatorViewControllerDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(_UIFindNavigatorHarness *)self endHoistingFindNavigator:0];
  v3.receiver = self;
  v3.super_class = _UIFindNavigatorHarness;
  [(_UIFindNavigatorHarness *)&v3 dealloc];
}

- (void)setInteractionView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_interactionView, viewCopy);
  NSClassFromString(&cfstr_Wkwebview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  self->_interactionViewIsWebView = isKindOfClass & 1;
}

- (BOOL)_shouldAdjustHostViewContentOffsets
{
  WeakRetained = objc_loadWeakRetained(&self->_hostScrollView);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_hostScrollView);
  [v4 contentOffset];
  v6 = v5;
  v7 = objc_loadWeakRetained(&self->_hostScrollView);
  [v7 _minimumContentOffset];
  v9 = vabdd_f64(v6, v8) < 2.22044605e-16;

  return v9;
}

- (void)_adjustHostViewScrollOffsetToTopIfSupported
{
  WeakRetained = objc_loadWeakRetained(&self->_hostScrollView);
  [WeakRetained contentOffset];
  v4 = v3;
  v5 = objc_loadWeakRetained(&self->_hostScrollView);
  [v5 _minimumContentOffset];
  v7 = v6;
  v8 = objc_loadWeakRetained(&self->_hostScrollView);
  [v8 setContentOffset:{v4, v7}];
}

- (void)beginHoistingFindNavigator:(BOOL)navigator
{
  navigatorCopy = navigator;
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  if (!WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFindNavigatorHarness.m" lineNumber:82 description:@"No host view to hoist the find navigator."];
  }

  if (!self->_isHoistingFindNavigator)
  {
    self->_isHoistingFindNavigator = 1;
    _shouldAdjustHostViewContentOffsets = [(_UIFindNavigatorHarness *)self _shouldAdjustHostViewContentOffsets];
    v8 = objc_loadWeakRetained(&self->_hostView);
    _findNavigatorView = [(_UIFindNavigatorHarness *)self _findNavigatorView];
    [v8 addSubview:_findNavigatorView];

    v10 = objc_loadWeakRetained(&self->_hostView);
    [(UIView *)v10 _addGeometryChangeObserver:?];

    [(_UIFindNavigatorHarness *)self _layoutFindNavigator];
    if (navigatorCopy)
    {
      _findNavigatorView2 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
      [_findNavigatorView2 frame];
      CGAffineTransformMakeTranslation(&v19, 0.0, -v12);
      _findNavigatorView3 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
      v18 = v19;
      [_findNavigatorView3 setTransform:&v18];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54___UIFindNavigatorHarness_beginHoistingFindNavigator___block_invoke;
      v16[3] = &unk_1E70F35E0;
      v16[4] = self;
      v17 = _shouldAdjustHostViewContentOffsets;
      [UIView animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:600.0 completion:0.0];
    }

    else if (_shouldAdjustHostViewContentOffsets)
    {
      [(_UIFindNavigatorHarness *)self _adjustHostViewScrollOffsetToTopIfSupported];
      [(_UIFindNavigatorHarness *)self _sendPlacementUpdate];
    }
  }

  _findNavigatorView4 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [_findNavigatorView4 becomeFirstResponder];
}

- (void)endHoistingFindNavigator:(BOOL)navigator endingActiveSession:(BOOL)session
{
  if (self->_isHoistingFindNavigator)
  {
    aBlock[5] = v7;
    aBlock[6] = v6;
    aBlock[13] = v4;
    aBlock[14] = v5;
    sessionCopy = session;
    navigatorCopy = navigator;
    self->_isHoistingFindNavigator = 0;
    _shouldAdjustHostViewContentOffsets = [(_UIFindNavigatorHarness *)self _shouldAdjustHostViewContentOffsets];
    WeakRetained = objc_loadWeakRetained(&self->_hostView);
    [(UIView *)WeakRetained _removeGeometryChangeObserver:?];

    findNavigatorViewController = [(_UIFindNavigatorHarness *)self findNavigatorViewController];
    findSession = [findNavigatorViewController findSession];

    if (findSession && sessionCopy)
    {
      parentInteraction = [findSession parentInteraction];
      [parentInteraction _didEndActiveFindSession];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (navigatorCopy)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke_2;
      v20[3] = &unk_1E70F35E0;
      v20[4] = self;
      v21 = _shouldAdjustHostViewContentOffsets;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke_3;
      v18[3] = &unk_1E70FE248;
      v18[4] = self;
      v19 = v16;
      [UIView animateWithDuration:0 delay:v20 usingSpringWithDamping:v18 initialSpringVelocity:0.35 options:0.0 animations:600.0 completion:0.0];
    }

    else
    {
      v16[2](v16);
      if (_shouldAdjustHostViewContentOffsets)
      {
        [(_UIFindNavigatorHarness *)self _adjustHostViewScrollOffsetToTopIfSupported];
      }

      [(_UIFindNavigatorHarness *)self _sendPlacementUpdate];
    }
  }
}

- (void)_layoutFindNavigator
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);
  [WeakRetained safeAreaInsets];
  v5 = v4;

  _findNavigatorView = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [_findNavigatorView intrinsicContentSize];
  v8 = v7;

  v9 = -v8;
  v10 = objc_loadWeakRetained(&self->_hostView);
  [v10 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (self->_interactionViewIsWebView)
  {
    v17 = objc_loadWeakRetained(&self->_hostScrollView);

    if (v17)
    {
      v18 = objc_loadWeakRetained(&self->_interactionView);
      [v18 _obscuredInsets];
      if (v5 < v19)
      {
        v5 = v19;
      }
    }

    else
    {
      v9 = 0.0;
    }
  }

  if (v9 >= v14 + v5)
  {
    v20 = v9;
  }

  else
  {
    v20 = v14 + v5;
  }

  _findNavigatorView2 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [_findNavigatorView2 setFrame:{v12, v20, v16, v8}];

  v22 = objc_loadWeakRetained(&self->_hostScrollView);
  [v22 _setSystemInsetAdjustment:@"findadj" forAdjustmentTypeIdentifier:v8];

  v24 = objc_loadWeakRetained(&self->_hostView);
  _findNavigatorView3 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v24 bringSubviewToFront:_findNavigatorView3];
}

- (void)_sendPlacementUpdate
{
  findNavigatorViewController = [(_UIFindNavigatorHarness *)self findNavigatorViewController];
  findSession = [findNavigatorViewController findSession];

  v4 = objc_alloc_init(_UIFindNavigatorInlinePlacement);
  _findNavigatorView = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [_findNavigatorView intrinsicContentSize];
  [(_UIFindNavigatorInlinePlacement *)v4 setIntrinsicContentSize:?];

  [(_UIFindNavigatorPlacement *)v4 setShowing:self->_isHoistingFindNavigator];
  WeakRetained = objc_loadWeakRetained(&self->_hostView);
  [(_UIFindNavigatorInlinePlacement *)v4 setHostView:WeakRetained];

  parentInteraction = [findSession parentInteraction];
  [parentInteraction _willChangeNavigatorPlacement:v4];
}

- (void)presentFindNavigatorWithFindSession:(id)session showingReplace:(BOOL)replace idiom:(int64_t)idiom
{
  replaceCopy = replace;
  sessionCopy = session;
  v10 = sessionCopy;
  if (replaceCopy)
  {
    supportsReplacement = [sessionCopy supportsReplacement];
  }

  else
  {
    supportsReplacement = 0;
  }

  [(_UIFindNavigatorViewController *)self->_findNavigatorViewController setFindSession:v10];
  findNavigatorView = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  [findNavigatorView setMode:supportsReplacement];
  [findNavigatorView setIntrinsicHeightDerivedFromAssistantBar:0];
  [findNavigatorView setVisibleSeparatorEdges:4];
  [findNavigatorView setUsesOpaqueBackground:1];
  [(_UIFindNavigatorViewController *)self->_findNavigatorViewController setTintTechnique:0];
  [(_UIFindNavigatorHarness *)self beginHoistingFindNavigator:1];
}

- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)size
{
  [(_UIFindNavigatorHarness *)self _layoutFindNavigator];

  [(_UIFindNavigatorHarness *)self _sendPlacementUpdate];
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  return WeakRetained;
}

- (UIView)hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  return WeakRetained;
}

- (UIScrollView)hostScrollView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostScrollView);

  return WeakRetained;
}

@end