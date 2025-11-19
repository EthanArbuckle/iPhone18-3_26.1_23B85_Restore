@interface _UIInteractiveHighlightEnvironment
+ (id)interactiveHighlightEnvironmentForContainerView:(id)a3;
+ (id)requestInteractiveHighlightEnvironmentForView:(id)a3;
- (UIView)contentView;
- (_UIInteractiveHighlightEnvironment)initWithContainerScreen:(id)a3;
- (_UIInteractiveHighlightEnvironment)initWithContainerView:(id)a3;
- (_UIInteractiveHighlightEnvironment)initWithParentEnvironment:(id)a3;
- (id)backgroundVisualEffectForProgress:(double)a3;
- (id)interactiveHighlightEffectForView:(id)a3 options:(unint64_t)a4;
- (id)newBackgroundEffectAnimator;
- (id)newViewRecordForView:(id)a3 options:(unint64_t)a4;
- (int64_t)indexOfViewRecordForView:(id)a3;
- (void)applyBackgroundEffectWithMagnitude:(double)a3 interactive:(BOOL)a4 completion:(id)a5;
- (void)applyContentInsets:(UIEdgeInsets)a3;
- (void)dealloc;
- (void)disableClippingForView:(id)a3 ancestorView:(id)a4;
- (void)finalizeBackgroundEffect;
- (void)finalizeContainerWindowIfNeeded;
- (void)finalizeContentViewIfNeeded;
- (void)finalizeViewRecord:(id)a3;
- (void)initBackgroundEffectViewIfNeeded;
- (void)initContainerWindowIfNeeded;
- (void)initContentViewIfNeeded;
- (void)removeAllViewRecords;
- (void)removeInteractiveHighlightEffect:(id)a3;
- (void)removeViewRecordsIfNeeded;
- (void)reset;
- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)setUserInteractionOnContainerEnabled:(BOOL)a3;
@end

@implementation _UIInteractiveHighlightEnvironment

- (_UIInteractiveHighlightEnvironment)initWithContainerView:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _UIInteractiveHighlightEnvironment;
  v6 = [(_UIInteractiveHighlightEnvironment *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_containerView, a3);
    objc_setAssociatedObject(v7->_containerView, &_UIInteractiveHighlightingEnvironmentProperty, v7, 0);
    [(_UIInteractiveHighlightEnvironment *)v7 setUserInteractionOnContainerEnabled:0];
    v8 = v7;
  }

  return v7;
}

- (_UIInteractiveHighlightEnvironment)initWithContainerScreen:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIInteractiveHighlightEnvironment;
  v5 = [(_UIInteractiveHighlightEnvironment *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_containerScreen, v4);
    [(_UIInteractiveHighlightEnvironment *)v6 initContainerWindowIfNeeded];
    [(_UIInteractiveHighlightEnvironment *)v6 setUserInteractionOnContainerEnabled:0];
    v7 = v6;
  }

  return v6;
}

- (_UIInteractiveHighlightEnvironment)initWithParentEnvironment:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment"}];
  }

  WeakRetained = objc_loadWeakRetained(v5 + 12);

  if (WeakRetained)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:137 description:@"Cannot override a child environment."];
  }

  v7 = [v5 contentView];
  v8 = [(_UIInteractiveHighlightEnvironment *)self initWithContainerView:v7];
  if (v8)
  {
    objc_storeWeak(v5 + 12, v8);
    v9 = v8;
  }

  return v8;
}

- (void)dealloc
{
  objc_setAssociatedObject(self->_containerView, &_UIInteractiveHighlightingEnvironmentProperty, 0, 0);
  v3.receiver = self;
  v3.super_class = _UIInteractiveHighlightEnvironment;
  [(_UIInteractiveHighlightEnvironment *)&v3 dealloc];
}

- (UIView)contentView
{
  [(_UIInteractiveHighlightEnvironment *)self initContainerWindowIfNeeded];
  [(_UIInteractiveHighlightEnvironment *)self initContentViewIfNeeded];
  contentView = self->_contentView;

  return contentView;
}

- (id)interactiveHighlightEffectForView:(id)a3 options:(unint64_t)a4
{
  v7 = a3;
  v8 = [v7 window];

  if (!v8)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"view.window"}];
  }

  if (!self->_viewRecords)
  {
    self->_viewRecords = MEMORY[0x1E695E0F0];
  }

  v9 = objc_alloc_init(_UIInteractiveHighlightEffect);
  v10 = [(_UIInteractiveHighlightEnvironment *)self indexOfViewRecordForView:v7];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(_UIInteractiveHighlightEnvironment *)self newViewRecordForView:v7 options:a4];
    v12 = [(NSArray *)self->_viewRecords arrayByAddingObject:v11];
    viewRecords = self->_viewRecords;
    self->_viewRecords = v12;
  }

  else
  {
    v11 = [(NSArray *)self->_viewRecords objectAtIndexedSubscript:v10];
  }

  [(_UIInteractiveHighlightEffect *)v9 setView:v7];
  v14 = [v11 effectView];
  [(_UIInteractiveHighlightEffect *)v9 setEffectView:v14];

  v15 = [v11 portalView];
  [(_UIInteractiveHighlightEffect *)v9 setPortalView:v15];

  v16 = [v11 superview];
  [(_UIInteractiveHighlightEffect *)v9 setSuperview:v16];

  [(_UIInteractiveHighlightEffect *)v9 setEnvironment:self];
  v17 = [v11 interactiveHighlightEffects];
  [v17 addObject:v9];

  return v9;
}

- (void)applyBackgroundEffectWithMagnitude:(double)a3 interactive:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  [(_UIInteractiveHighlightEnvironment *)self initContainerWindowIfNeeded];
  [(_UIInteractiveHighlightEnvironment *)self initBackgroundEffectViewIfNeeded];
  v9 = self->_customBackgroundEffectView;
  v10 = [(UIView *)v9 superview];
  containerView = self->_containerView;

  if (v10 != containerView)
  {
    [(UIView *)self->_containerView bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)v9 setAutoresizingMask:18];
    v12 = self->_containerView;
    if (self->_contentView)
    {
      [(UIView *)v12 insertSubview:v9 belowSubview:?];
    }

    else
    {
      [(UIView *)v12 addSubview:v9];
    }
  }

  if (!(self->_backgroundEffectAnimator | v9))
  {
    v13 = [(_UIInteractiveHighlightEnvironment *)self newBackgroundEffectAnimator];
    backgroundEffectAnimator = self->_backgroundEffectAnimator;
    self->_backgroundEffectAnimator = v13;
  }

  backgroundEffectProgress = self->_backgroundEffectProgress;
  if (!backgroundEffectProgress)
  {
    v16 = objc_alloc_init(UIViewFloatAnimatableProperty);
    v17 = self->_backgroundEffectProgress;
    self->_backgroundEffectProgress = v16;

    backgroundEffectProgress = self->_backgroundEffectProgress;
  }

  objc_initWeak(&location, backgroundEffectProgress);
  v35[0] = self->_backgroundEffectProgress;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke;
  v32[3] = &unk_1E70F2F80;
  objc_copyWeak(&v33, &location);
  v32[4] = self;
  [UIView _createTransformerWithInputAnimatableProperties:v18 presentationValueChangedCallback:v32];

  if (v5)
  {
    v19 = 600.0;
  }

  else
  {
    v19 = 500.0;
  }

  if (v5)
  {
    v20 = a3 * 60.0 + (1.0 - a3) * 50.0;
  }

  else
  {
    v20 = a3 * 60.0 + (1.0 - a3) * 50.0 + 10.0;
  }

  v21 = [MEMORY[0x1E696AFB0] UUID];
  v22 = [v21 copy];
  backgroundAnimationIdentifier = self->_backgroundAnimationIdentifier;
  self->_backgroundAnimationIdentifier = v22;

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke_2;
  v30[3] = &unk_1E70F8DC8;
  objc_copyWeak(v31, &location);
  v31[1] = *&a3;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96___UIInteractiveHighlightEnvironment_applyBackgroundEffectWithMagnitude_interactive_completion___block_invoke_3;
  v26[3] = &unk_1E711AE80;
  v29 = v5;
  v26[4] = self;
  v24 = v21;
  v27 = v24;
  v25 = v8;
  v28 = v25;
  [UIView _animateUsingSpringWithTension:0 friction:v30 interactive:v26 animations:v19 completion:v20];
  [(UIWindow *)self->_containerWindow setHidden:0];
  [(_UIInteractiveHighlightEnvironment *)self setUserInteractionOnContainerEnabled:v5];

  objc_destroyWeak(v31);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&location);
}

- (void)removeInteractiveHighlightEffect:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_viewRecords;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) interactiveHighlightEffects];
        [v10 removeObject:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(_UIInteractiveHighlightEnvironment *)self removeViewRecordsIfNeeded];
}

- (void)setUserInteractionOnContainerEnabled:(BOOL)a3
{
  v3 = a3;
  containerWindow = self->_containerWindow;
  if (containerWindow)
  {
    [(UIView *)containerWindow setUserInteractionEnabled:a3];
    v7 = [(UIView *)self->_containerWindow layer];
    [v7 setAllowsHitTesting:v3];
  }

  else
  {
    contentView = self->_contentView;

    [(UIView *)contentView setUserInteractionEnabled:?];
  }
}

- (void)disableClippingForView:(id)a3 ancestorView:(id)a4
{
  v8 = a3;
  v6 = a4;
  [v8 setClipsToBounds:0];
  if (v8 != v6)
  {
    v7 = [v8 superview];
    [(_UIInteractiveHighlightEnvironment *)self disableClippingForView:v7 ancestorView:v6];
  }
}

- (void)setHidden:(BOOL)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  containerWindow = self->_containerWindow;
  if (v5)
  {
    if ([(UIView *)containerWindow isHidden]&& !v6)
    {
      [(UIView *)self->_containerWindow setAlpha:0.0];
      [(UIWindow *)self->_containerWindow setHidden:0];
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68___UIInteractiveHighlightEnvironment_setHidden_animated_completion___block_invoke;
    v13[3] = &unk_1E70F35E0;
    v13[4] = self;
    v14 = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68___UIInteractiveHighlightEnvironment_setHidden_animated_completion___block_invoke_2;
    v10[3] = &unk_1E711AEA8;
    v10[4] = self;
    v12 = v6;
    v11 = v8;
    [UIView animateWithDuration:0 delay:v13 options:v10 animations:0.3 completion:0.0];
  }

  else
  {
    [(UIWindow *)containerWindow setHidden:v6];
    [(UIView *)self->_containerWindow setAlpha:1.0];
    if (v8)
    {
      (*(v8 + 2))(v8, 1, 0);
    }
  }
}

- (void)reset
{
  [(_UIInteractiveHighlightEnvironment *)self finalizeBackgroundEffect];
  [(_UIInteractiveHighlightEnvironment *)self removeAllViewRecords];
  [(_UIInteractiveHighlightEnvironment *)self setUserInteractionOnContainerEnabled:0];

  [(_UIInteractiveHighlightEnvironment *)self setHidden:0];
}

- (void)applyContentInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(UIView *)self->_contentClipView superview];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  contentClipView = self->_contentClipView;

  [(UIView *)contentClipView setFrame:left + v10, top + v12, v14 - (left + right), v16 - (top + bottom)];
}

- (id)newViewRecordForView:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v6 = a3;
  [(_UIInteractiveHighlightEnvironment *)self initContainerWindowIfNeeded];
  [(_UIInteractiveHighlightEnvironment *)self initContentViewIfNeeded];
  if (v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_alloc_init(_UIPortalView);
    [(_UIPortalView *)v7 setHidesSourceView:1];
    [(_UIPortalView *)v7 setMatchesPosition:1];
    [(_UIPortalView *)v7 setMatchesTransform:0];
    [(_UIPortalView *)v7 setMatchesAlpha:1];
    [(_UIPortalView *)v7 setAllowsBackdropGroups:1];
    [(_UIPortalView *)v7 setSourceView:v6];
  }

  v8 = self->_contentClipView;
  if ((v4 & 2) != 0)
  {
    v9 = self->_contentOverlayView;

    v8 = v9;
  }

  v10 = [v6 superview];
  v11 = [[UIVisualEffectView alloc] initWithEffect:0];
  [v6 bounds];
  [v6 convertRect:v8 toView:?];
  [(UIView *)v11 setFrame:?];
  if (v7)
  {
    v12 = [(UIVisualEffectView *)v11 contentView];
    [v12 addSubview:v7];

    v13 = [(UIVisualEffectView *)v11 contentView];
    [v13 bounds];
    [(_UIPortalView *)v7 setFrame:?];

    [(UIView *)v7 setAutoresizingMask:18];
  }

  else if (v4)
  {
    [v6 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(UIVisualEffectView *)v11 contentView];
    [v22 addSubview:v6];

    v23 = [(UIVisualEffectView *)v11 contentView];
    [v23 convertRect:v10 fromCoordinateSpace:{v15, v17, v19, v21}];
    [v6 setFrame:?];
  }

  [(UIView *)v8 addSubview:v11];
  v24 = objc_alloc_init(_UIInteractiveHighlightViewRecord);
  [(_UIInteractiveHighlightViewRecord *)v24 setView:v6];
  [(_UIInteractiveHighlightViewRecord *)v24 setEffectView:v11];
  [(_UIInteractiveHighlightViewRecord *)v24 setPortalView:v7];
  if (v4)
  {
    [(_UIInteractiveHighlightViewRecord *)v24 setSuperview:v10];
  }

  else
  {
    [(UIView *)v11 setUserInteractionEnabled:0];
    [(_UIInteractiveHighlightEnvironment *)self disableClippingForView:v7 ancestorView:v11];
  }

  v25 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
  [(_UIInteractiveHighlightViewRecord *)v24 setInteractiveHighlightEffects:v25];

  return v24;
}

- (int64_t)indexOfViewRecordForView:(id)a3
{
  v4 = a3;
  viewRecords = self->_viewRecords;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63___UIInteractiveHighlightEnvironment_indexOfViewRecordForView___block_invoke;
  v9[3] = &unk_1E711AED0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)viewRecords indexOfObjectPassingTest:v9];

  return v7;
}

- (void)removeViewRecordsIfNeeded
{
  v3 = [(NSArray *)self->_viewRecords indexesOfObjectsPassingTest:&__block_literal_global_452];
  viewRecords = self->_viewRecords;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63___UIInteractiveHighlightEnvironment_removeViewRecordsIfNeeded__block_invoke_2;
  v7[3] = &unk_1E711AF18;
  v7[4] = self;
  [(NSArray *)viewRecords enumerateObjectsAtIndexes:v3 options:0 usingBlock:v7];
  v5 = [(NSArray *)self->_viewRecords mutableCopy];
  [(NSArray *)v5 removeObjectsAtIndexes:v3];
  v6 = self->_viewRecords;
  self->_viewRecords = v5;

  [(_UIInteractiveHighlightEnvironment *)self finalizeContentViewIfNeeded];
  [(_UIInteractiveHighlightEnvironment *)self finalizeContainerWindowIfNeeded];
}

- (void)removeAllViewRecords
{
  viewRecords = self->_viewRecords;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58___UIInteractiveHighlightEnvironment_removeAllViewRecords__block_invoke;
  v6[3] = &unk_1E711AF18;
  v6[4] = self;
  [(NSArray *)viewRecords enumerateObjectsUsingBlock:v6];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = self->_viewRecords;
  self->_viewRecords = v4;

  [(_UIInteractiveHighlightEnvironment *)self finalizeContentViewIfNeeded];
  [(_UIInteractiveHighlightEnvironment *)self finalizeContainerWindowIfNeeded];
}

- (void)finalizeViewRecord:(id)a3
{
  v28 = a3;
  v5 = [v28 superview];
  if (v5)
  {
    v6 = [v28 view];
    if (!v6)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:437 description:@"Cannot transfer ownership of an already deallocated view."];
    }

    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v6 superview];
    [v5 convertRect:v15 fromCoordinateSpace:{v8, v10, v12, v14}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v5 addSubview:v6];
    [v6 setFrame:{v17, v19, v21, v23}];
  }

  else
  {
    v24 = [v28 portalView];
    [v24 setHidesSourceView:0];

    v6 = [v28 portalView];
    v25 = [v6 sourceView];
    [v25 setNeedsLayout];
  }

  v26 = [v28 effectView];
  [v26 removeFromSuperview];
}

- (void)initContainerWindowIfNeeded
{
  if (!self->_containerWindow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_containerScreen);

    if (WeakRetained)
    {
      v4 = objc_alloc_init(_UIInteractiveHighlightEffectWindow);
      [(UIWindow *)v4 _setWindowControlsStatusBarOrientation:0];
      v5 = objc_alloc_init(UIViewController);
      [(UIWindow *)v4 setRootViewController:v5];

      v6 = +[UIColor clearColor];
      [(UIView *)v4 setBackgroundColor:v6];

      [(UIView *)v4 setOpaque:0];
      [(UIWindow *)v4 setWindowLevel:10000001.0];
      v7 = [(UIWindow *)v4 rootViewController];
      v8 = [v7 view];
      containerView = self->_containerView;
      self->_containerView = v8;

      objc_setAssociatedObject(self->_containerView, &_UIInteractiveHighlightingEnvironmentProperty, self, 0);
      containerWindow = self->_containerWindow;
      self->_containerWindow = v4;
    }
  }
}

- (void)initBackgroundEffectViewIfNeeded
{
  if (!self->_customBackgroundEffectView && !self->_backgroundEffectView)
  {
    v3 = [(UIVisualEffectView *)[_UIInteractiveHighlightBackgroundEffectView alloc] initWithEffect:0];
    [(UIView *)self->_containerView bounds];
    [(UIView *)v3 setFrame:?];
    [(UIView *)v3 setAutoresizingMask:18];
    [(UIView *)v3 setUserInteractionEnabled:0];
    containerView = self->_containerView;
    if (self->_contentView)
    {
      [(UIView *)containerView insertSubview:v3 belowSubview:?];
    }

    else
    {
      [(UIView *)containerView addSubview:v3];
    }

    backgroundEffectView = self->_backgroundEffectView;
    self->_backgroundEffectView = &v3->super;
  }
}

- (void)initContentViewIfNeeded
{
  if (!self->_contentView)
  {
    v4 = objc_alloc_init(_UIInteractiveHighlightContentView);
    [(UIView *)self->_containerView bounds];
    [(UIView *)v4 setFrame:?];
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIView *)v4 setUserInteractionEnabled:0];
    [(UIView *)self->_containerView addSubview:v4];
    contentView = self->_contentView;
    self->_contentView = &v4->super;

    v6 = objc_alloc_init(UIView);
    [(UIView *)self->_contentView bounds];
    [(UIView *)v6 setFrame:?];
    [(UIView *)v6 setClipsToBounds:1];
    [(UIView *)self->_contentView addSubview:v6];
    contentClipView = self->_contentClipView;
    self->_contentClipView = v6;

    v8 = objc_alloc_init(UIView);
    [(UIView *)self->_contentView bounds];
    [(UIView *)v8 setFrame:?];
    [(UIView *)v8 setClipsToBounds:0];
    [(UIView *)v8 setAutoresizingMask:18];
    [(UIView *)self->_contentView addSubview:v8];
    contentOverlayView = self->_contentOverlayView;
    self->_contentOverlayView = v8;
  }
}

- (id)newBackgroundEffectAnimator
{
  if (!self->_backgroundEffectView)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:534 description:{@"Cannot create background animator, effect view is missing."}];
  }

  v3 = [UIViewPropertyAnimator alloc];
  v4 = [[UICubicTimingParameters alloc] initWithAnimationCurve:3];
  v5 = [(UIViewPropertyAnimator *)v3 initWithDuration:v4 timingParameters:1.0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65___UIInteractiveHighlightEnvironment_newBackgroundEffectAnimator__block_invoke;
  v9[3] = &unk_1E70F3590;
  v9[4] = self;
  [(UIViewPropertyAnimator *)v5 addAnimations:v9];
  return v5;
}

- (id)backgroundVisualEffectForProgress:(double)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3 <= 0.0)
  {
    v6 = 0;
  }

  else
  {
    if (_AXSEnhanceBackgroundContrastEnabled())
    {
      v4 = +[UIColor blackColor];
      v5 = [UIVisualEffect effectCompositingColor:v4 withMode:1 alpha:a3 * 0.3 + (1.0 - a3) * 0.0];
      v12[0] = v5;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    }

    else
    {
      v7 = (1.0 - a3) * 0.0;
      v4 = [_UIZoomEffect _underlayZoomEffectWithMagnitude:a3 * 0.015 + v7];
      v11[0] = v4;
      v5 = +[UIColor blackColor];
      v8 = [UIVisualEffect effectCompositingColor:v5 withMode:1 alpha:a3 * 0.055 + v7];
      v11[1] = v8;
      v9 = [UIBlurEffect effectWithBlurRadius:a3 * 7.0 + v7];
      v11[2] = v9;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
    }
  }

  return v6;
}

- (void)finalizeBackgroundEffect
{
  [(UIViewPropertyAnimator *)self->_backgroundEffectAnimator stopAnimation:1];
  if ([(UIViewPropertyAnimator *)self->_backgroundEffectAnimator state]== 2)
  {
    [(UIViewPropertyAnimator *)self->_backgroundEffectAnimator finishAnimationAtPosition:1];
  }

  backgroundEffectAnimator = self->_backgroundEffectAnimator;
  self->_backgroundEffectAnimator = 0;

  backgroundEffectProgress = self->_backgroundEffectProgress;
  self->_backgroundEffectProgress = 0;

  [(UIVisualEffectView *)self->_backgroundEffectView setBackgroundEffects:MEMORY[0x1E695E0F0]];
  if (!self->_containerWindow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_parentEnvironment);

    if (!WeakRetained)
    {
      [(UIView *)self->_backgroundEffectView removeFromSuperview];
      backgroundEffectView = self->_backgroundEffectView;
      self->_backgroundEffectView = 0;

      [(UIView *)self->_customBackgroundEffectView removeFromSuperview];
      customBackgroundEffectView = self->_customBackgroundEffectView;
      self->_customBackgroundEffectView = 0;
    }
  }

  [(_UIInteractiveHighlightEnvironment *)self finalizeContainerWindowIfNeeded];
}

- (void)finalizeContentViewIfNeeded
{
  if (self->_contentView && ![(NSArray *)self->_viewRecords count])
  {
    [(UIView *)self->_contentView removeFromSuperview];
    contentView = self->_contentView;
    self->_contentView = 0;

    [(UIView *)self->_contentClipView removeFromSuperview];
    contentClipView = self->_contentClipView;
    self->_contentClipView = 0;

    [(UIView *)self->_contentOverlayView removeFromSuperview];
    contentOverlayView = self->_contentOverlayView;
    self->_contentOverlayView = 0;

    [(_UIInteractiveHighlightEnvironment *)self applyContentInsets:0.0, 0.0, 0.0, 0.0];
  }
}

- (void)finalizeContainerWindowIfNeeded
{
  if (self->_containerWindow && ![(NSArray *)self->_viewRecords count]&& !self->_backgroundEffectProgress)
  {
    [(_UIInteractiveHighlightEnvironment *)self finalizeContentViewIfNeeded];
    containerView = self->_containerView;
    self->_containerView = 0;

    [(UIView *)self->_backgroundEffectView removeFromSuperview];
    backgroundEffectView = self->_backgroundEffectView;
    self->_backgroundEffectView = 0;

    [(UIView *)self->_customBackgroundEffectView removeFromSuperview];
    customBackgroundEffectView = self->_customBackgroundEffectView;
    self->_customBackgroundEffectView = 0;

    [(UIWindow *)self->_containerWindow setHidden:1];
    containerWindow = self->_containerWindow;
    self->_containerWindow = 0;
  }
}

+ (id)requestInteractiveHighlightEnvironmentForView:(id)a3
{
  v3 = a3;
  v4 = _UIInteractiveHighlightingEnvironmentFromView(v3);
  if (v4)
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((v4 + 96));
    if (WeakRetained)
    {
      goto LABEL_12;
    }

    v7 = [[_UIInteractiveHighlightEnvironment alloc] initWithParentEnvironment:v5];
  }

  else
  {
    v5 = [v3 window];
    if ([v5 _isHostedInAnotherProcess])
    {
      v8 = v5;
      v9 = _UIInteractiveHighlightingEnvironmentFromView(v8);
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = [[_UIInteractiveHighlightEnvironment alloc] initWithContainerView:v8];
      }

      v7 = v10;
    }

    else
    {
      v8 = [v5 screen];
      v7 = [v8 _interactiveHighlightEnvironment];
    }
  }

  WeakRetained = v7;
  v5 = WeakRetained;
LABEL_12:
  v11 = WeakRetained;

  return v11;
}

+ (id)interactiveHighlightEnvironmentForContainerView:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"_UIInteractiveHighlightEnvironment.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"containerView"}];
  }

  v6 = objc_getAssociatedObject(v5, &_UIInteractiveHighlightingEnvironmentProperty);
  if (!v6)
  {
    v6 = [[a1 alloc] initWithContainerView:v5];
  }

  return v6;
}

@end