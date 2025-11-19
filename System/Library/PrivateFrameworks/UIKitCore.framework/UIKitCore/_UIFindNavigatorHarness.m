@interface _UIFindNavigatorHarness
- (BOOL)_shouldAdjustHostViewContentOffsets;
- (UIScrollView)hostScrollView;
- (UIView)hostView;
- (UIView)interactionView;
- (_UIFindNavigatorHarness)init;
- (void)_adjustHostViewScrollOffsetToTopIfSupported;
- (void)_layoutFindNavigator;
- (void)_sendPlacementUpdate;
- (void)beginHoistingFindNavigator:(BOOL)a3;
- (void)dealloc;
- (void)endHoistingFindNavigator:(BOOL)a3 endingActiveSession:(BOOL)a4;
- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)a3;
- (void)presentFindNavigatorWithFindSession:(id)a3 showingReplace:(BOOL)a4 idiom:(int64_t)a5;
- (void)setInteractionView:(id)a3;
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

- (void)setInteractionView:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_interactionView, v4);
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

- (void)beginHoistingFindNavigator:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostView);

  if (!WeakRetained)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFindNavigatorHarness.m" lineNumber:82 description:@"No host view to hoist the find navigator."];
  }

  if (!self->_isHoistingFindNavigator)
  {
    self->_isHoistingFindNavigator = 1;
    v7 = [(_UIFindNavigatorHarness *)self _shouldAdjustHostViewContentOffsets];
    v8 = objc_loadWeakRetained(&self->_hostView);
    v9 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
    [v8 addSubview:v9];

    v10 = objc_loadWeakRetained(&self->_hostView);
    [(UIView *)v10 _addGeometryChangeObserver:?];

    [(_UIFindNavigatorHarness *)self _layoutFindNavigator];
    if (v3)
    {
      v11 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
      [v11 frame];
      CGAffineTransformMakeTranslation(&v19, 0.0, -v12);
      v13 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
      v18 = v19;
      [v13 setTransform:&v18];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __54___UIFindNavigatorHarness_beginHoistingFindNavigator___block_invoke;
      v16[3] = &unk_1E70F35E0;
      v16[4] = self;
      v17 = v7;
      [UIView animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.35 options:0.0 animations:600.0 completion:0.0];
    }

    else if (v7)
    {
      [(_UIFindNavigatorHarness *)self _adjustHostViewScrollOffsetToTopIfSupported];
      [(_UIFindNavigatorHarness *)self _sendPlacementUpdate];
    }
  }

  v14 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v14 becomeFirstResponder];
}

- (void)endHoistingFindNavigator:(BOOL)a3 endingActiveSession:(BOOL)a4
{
  if (self->_isHoistingFindNavigator)
  {
    aBlock[5] = v7;
    aBlock[6] = v6;
    aBlock[13] = v4;
    aBlock[14] = v5;
    v8 = a4;
    v9 = a3;
    self->_isHoistingFindNavigator = 0;
    v11 = [(_UIFindNavigatorHarness *)self _shouldAdjustHostViewContentOffsets];
    WeakRetained = objc_loadWeakRetained(&self->_hostView);
    [(UIView *)WeakRetained _removeGeometryChangeObserver:?];

    v13 = [(_UIFindNavigatorHarness *)self findNavigatorViewController];
    v14 = [v13 findSession];

    if (v14 && v8)
    {
      v15 = [v14 parentInteraction];
      [v15 _didEndActiveFindSession];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke;
    aBlock[3] = &unk_1E70F3590;
    aBlock[4] = self;
    v16 = _Block_copy(aBlock);
    v17 = v16;
    if (v9)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72___UIFindNavigatorHarness_endHoistingFindNavigator_endingActiveSession___block_invoke_2;
      v20[3] = &unk_1E70F35E0;
      v20[4] = self;
      v21 = v11;
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
      if (v11)
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

  v6 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v6 intrinsicContentSize];
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

  v21 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v21 setFrame:{v12, v20, v16, v8}];

  v22 = objc_loadWeakRetained(&self->_hostScrollView);
  [v22 _setSystemInsetAdjustment:@"findadj" forAdjustmentTypeIdentifier:v8];

  v24 = objc_loadWeakRetained(&self->_hostView);
  v23 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v24 bringSubviewToFront:v23];
}

- (void)_sendPlacementUpdate
{
  v3 = [(_UIFindNavigatorHarness *)self findNavigatorViewController];
  v8 = [v3 findSession];

  v4 = objc_alloc_init(_UIFindNavigatorInlinePlacement);
  v5 = [(_UIFindNavigatorHarness *)self _findNavigatorView];
  [v5 intrinsicContentSize];
  [(_UIFindNavigatorInlinePlacement *)v4 setIntrinsicContentSize:?];

  [(_UIFindNavigatorPlacement *)v4 setShowing:self->_isHoistingFindNavigator];
  WeakRetained = objc_loadWeakRetained(&self->_hostView);
  [(_UIFindNavigatorInlinePlacement *)v4 setHostView:WeakRetained];

  v7 = [v8 parentInteraction];
  [v7 _willChangeNavigatorPlacement:v4];
}

- (void)presentFindNavigatorWithFindSession:(id)a3 showingReplace:(BOOL)a4 idiom:(int64_t)a5
{
  v5 = a4;
  v7 = a3;
  v10 = v7;
  if (v5)
  {
    v8 = [v7 supportsReplacement];
  }

  else
  {
    v8 = 0;
  }

  [(_UIFindNavigatorViewController *)self->_findNavigatorViewController setFindSession:v10];
  v9 = [(_UIFindNavigatorViewController *)self->_findNavigatorViewController findNavigatorView];
  [v9 setMode:v8];
  [v9 setIntrinsicHeightDerivedFromAssistantBar:0];
  [v9 setVisibleSeparatorEdges:4];
  [v9 setUsesOpaqueBackground:1];
  [(_UIFindNavigatorViewController *)self->_findNavigatorViewController setTintTechnique:0];
  [(_UIFindNavigatorHarness *)self beginHoistingFindNavigator:1];
}

- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)a3
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