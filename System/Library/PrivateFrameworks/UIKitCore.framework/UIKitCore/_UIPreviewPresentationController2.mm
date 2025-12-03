@interface _UIPreviewPresentationController2
- (CGAffineTransform)preferredContentPlatterTransform;
- (CGRect)_computedPlatterFrame;
- (CGRect)_preferredContentPlatterRectForContainerRect:(CGRect)rect;
- (UIViewControllerPreviewing_Internal)previewingContext;
- (UIViewPropertyAnimator)currentTransitionAnimator;
- (_UIPreviewInteractionHighlighting)currentHighlighter;
- (_UIPreviewPresentationController2)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController previewingContext:(id)context;
- (void)_layoutContentViews;
- (void)_performDismissAnimationsWithTransitionContext:(id)context;
- (void)_performPresentationAnimationsWithTransitionContext:(id)context;
- (void)_performReducedMotionDismissAnimationsWithTransitionContext:(id)context;
- (void)_performReducedMotionPresentationAnimationsWithTransitionContext:(id)context;
- (void)_performTransitionAnimations:(id)animations;
- (void)_prepareContentPlatterViewForPresentationTransitionIfNeeded:(id)needed;
- (void)_prepareContentViewsForPresentationAnimationsIfNeeded;
- (void)_prepareRevealPlatterViewForPresentationTransitionIfNeeded:(id)needed;
- (void)_presentationTransitionWillBeginForContainerEffectView:(id)view;
- (void)_updateFromInteractionEffect:(id)effect;
- (void)containerViewDidLayoutSubviews;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setPreferredContentPlatterTransform:(CGAffineTransform *)transform;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
@end

@implementation _UIPreviewPresentationController2

- (_UIPreviewPresentationController2)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController previewingContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = _UIPreviewPresentationController2;
  v9 = [(UIPreviewPresentationController *)&v15 initWithPresentedViewController:controller presentingViewController:viewController];
  v10 = v9;
  if (v9)
  {
    [(_UIPreviewPresentationController2 *)v9 setShouldScaleContentViewToAspectFitPlatter:1];
    [(_UIPreviewPresentationController2 *)v10 setPreviewingContext:contextCopy];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    v14[0] = *MEMORY[0x1E695EFD0];
    v14[1] = v11;
    v14[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(_UIPreviewPresentationController2 *)v10 setPreferredContentPlatterTransform:v14];
    v12 = v10;
  }

  return v10;
}

- (void)_presentationTransitionWillBeginForContainerEffectView:(id)view
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController2;
  viewCopy = view;
  [(UIPreviewPresentationController *)&v6 _presentationTransitionWillBeginForContainerEffectView:viewCopy];
  [(_UIPreviewPresentationController2 *)self _prepareRevealPlatterViewForPresentationTransitionIfNeeded:viewCopy, v6.receiver, v6.super_class];
  [(_UIPreviewPresentationController2 *)self _prepareContentPlatterViewForPresentationTransitionIfNeeded:viewCopy];

  containerView = [(UIPresentationController *)self containerView];
  [containerView setNeedsLayout];
  [containerView layoutIfNeeded];
  [(_UIPreviewPresentationController2 *)self _prepareContentViewsForPresentationAnimationsIfNeeded];
}

- (void)presentationTransitionWillBegin
{
  v11.receiver = self;
  v11.super_class = _UIPreviewPresentationController2;
  [(UIPreviewPresentationController *)&v11 presentationTransitionWillBegin];
  previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];

  if (previewingContext)
  {
    revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];
    contentView = [revealPlatterView contentView];

    currentHighlighter = [(_UIPreviewPresentationController2 *)self currentHighlighter];
    containerView = [(UIPresentationController *)self containerView];
    previewingContext2 = [(_UIPreviewPresentationController2 *)self previewingContext];
    v9 = [currentHighlighter highlightShouldBeginInContainerView:contentView presentationContainerView:containerView previewingContext:previewingContext2];

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68___UIPreviewPresentationController2_presentationTransitionWillBegin__block_invoke;
    v10[3] = &unk_1E70F3590;
    v10[4] = self;
    [(_UIPreviewPresentationController2 *)self _performTransitionAnimations:v10];
  }
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationController2;
  [(UIPreviewPresentationController *)&v3 presentationTransitionDidEnd:end];
}

- (void)dismissalTransitionWillBegin
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController2;
  [(UIPreviewPresentationController *)&v4 dismissalTransitionWillBegin];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65___UIPreviewPresentationController2_dismissalTransitionWillBegin__block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(_UIPreviewPresentationController2 *)self _performTransitionAnimations:v3];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationController2;
  [(UIPreviewPresentationController *)&v3 dismissalTransitionDidEnd:end];
}

- (void)containerViewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationController2;
  [(UIPresentationController *)&v3 containerViewDidLayoutSubviews];
  if (![(_UIPreviewPresentationController2 *)self hasPerformedInitialLayout])
  {
    [(_UIPreviewPresentationController2 *)self setHasPerformedInitialLayout:1];
    [(_UIPreviewPresentationController2 *)self _layoutContentViews];
  }
}

- (void)_layoutContentViews
{
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  contentView = [presentationContainerEffectView contentView];

  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UIPreviewPresentationController2 *)self _preferredContentPlatterRectForContainerRect:?];
  v35 = v14;
  v36 = v13;
  v33 = v16;
  v34 = v15;
  previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];
  if (previewingContext)
  {
    previewingContext2 = [(_UIPreviewPresentationController2 *)self previewingContext];
    [previewingContext2 preferredSourceViewRectInCoordinateSpace:contentView];
    v37 = v20;
    v38 = v19;
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v37 = *(MEMORY[0x1E695F058] + 8);
    v38 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
  }

  if ([(_UIPreviewPresentationController2 *)self shouldScaleContentViewToAspectFitPlatter])
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [presentedViewController preferredContentSize];
    Width = v26;
    Height = v28;

    if (Width == 0.0)
    {
      v42.origin.x = v6;
      v42.origin.y = v8;
      v42.size.width = v10;
      v42.size.height = v12;
      Width = CGRectGetWidth(v42);
    }

    if (Height == 0.0)
    {
      v43.origin.x = v6;
      v43.origin.y = v8;
      v43.size.width = v10;
      v43.size.height = v12;
      Height = CGRectGetHeight(v43);
    }
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __56___UIPreviewPresentationController2__layoutContentViews__block_invoke;
  v40[3] = &unk_1E70F3590;
  v41 = contentPlatterView;
  v31 = contentPlatterView;
  [UIView performWithoutAnimation:v40];
  [v31 setContentSize:{Width, Height}];
  [v31 setFrame:{v36, v35, v34, v33}];
  [v31 setCornerRadius:13.0];
  [v31 setDropShadowEnabled:1];
  [(_UIPreviewPresentationController2 *)self preferredContentPlatterTransform];
  *v39 = *&v39[7];
  *&v39[2] = *&v39[9];
  *&v39[4] = *&v39[11];
  [v31 setTransform:v39];
  revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];
  [revealPlatterView setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v22, v24}];
  [revealPlatterView setCenter:{v38 + v22 * 0.5, v37 + v24 * 0.5}];
  [revealPlatterView setDropShadowEnabled:0];
}

- (CGRect)_preferredContentPlatterRectForContainerRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CGRectIsEmpty(rect))
  {
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    _UIPreviewInteractionPlatterInsetsForRect(x, y, width, height);
    v8 = x + v12;
    v9 = y + v13;
    v10 = width - (v12 + v14);
    v11 = height - (v13 + v15);
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    [presentedViewController preferredContentSize];
    v18 = v17;
    v20 = v19;

    if (v18 != *MEMORY[0x1E695F060] || v20 != *(MEMORY[0x1E695F060] + 8))
    {
      if (v18 <= 0.0)
      {
        v22 = v10;
      }

      else
      {
        v22 = v18;
      }

      if (v20 <= 0.0)
      {
        v23 = v11;
      }

      else
      {
        v23 = v20;
      }

      v24 = v22 / v23;
      if (v24 <= v10 / v11)
      {
        v25 = v11 * v24;
        v26 = v11;
      }

      else
      {
        v25 = v10;
        v26 = v10 / v24;
      }

      traitCollection = [(UIPresentationController *)self traitCollection];
      [traitCollection displayScale];
      v8 = UIRectCenteredIntegralRectScale(0.0, 0.0, v25, v26, v8, v9, v10, v11, v28);
      v9 = v29;
      v10 = v30;
      v11 = v31;
    }
  }

  v32 = v8;
  v33 = v9;
  v34 = v10;
  v35 = v11;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController2;
  [(UIPresentationController *)&v4 preferredContentSizeDidChangeForChildContentContainer:container];
  [(_UIPreviewPresentationController2 *)self _layoutContentViews];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = _UIPreviewPresentationController2;
  [(UIPresentationController *)&v5 systemLayoutFittingSizeDidChangeForChildContentContainer:container];
  containerView = [(UIPresentationController *)self containerView];
  [containerView setNeedsLayout];
}

- (void)_prepareRevealPlatterViewForPresentationTransitionIfNeeded:(id)needed
{
  neededCopy = needed;
  revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];

  if (!revealPlatterView)
  {
    previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];

    if (previewingContext)
    {
      previewingContext2 = [(_UIPreviewPresentationController2 *)self previewingContext];
      [previewingContext2 preferredSourceViewRectInCoordinateSpace:0];
      v8 = v7;
      v10 = v9;

      v11 = [[UIView alloc] initWithFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v8, v10];
      v12 = [[_UIPreviewPresentationPlatterView alloc] initWithContentView:v11];
      [(UIView *)v12 setUserInteractionEnabled:0];
      contentView = [neededCopy contentView];
      [contentView addSubview:v12];

      [(_UIPreviewPresentationController2 *)self setRevealPlatterView:v12];
    }
  }
}

- (void)_prepareContentPlatterViewForPresentationTransitionIfNeeded:(id)needed
{
  neededCopy = needed;
  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];

  if (!contentPlatterView)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    view = [presentedViewController view];

    v7 = [[_UIPreviewPresentationPlatterView alloc] initWithContentView:view];
    [(UIView *)v7 setUserInteractionEnabled:[(_UIPreviewPresentationController2 *)self shouldEnableUserInteractionOnPlatter]];
    contentView = [neededCopy contentView];
    [contentView addSubview:v7];

    [(_UIPreviewPresentationController2 *)self setContentPlatterView:v7];
  }
}

- (void)_prepareContentViewsForPresentationAnimationsIfNeeded
{
  currentTransitionAnimator = [(_UIPreviewPresentationController2 *)self currentTransitionAnimator];

  if (currentTransitionAnimator)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    transitionCoordinator = [presentedViewController transitionCoordinator];

    if (transitionCoordinator)
    {
      presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
      contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
      [contentPlatterView frame];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];
      contentView = [presentationContainerEffectView contentView];
      [previewingContext preferredSourceViewRectInCoordinateSpace:contentView];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v34 = v24;

      rect_24 = *(MEMORY[0x1E695EFD0] + 16);
      *&v39.a = *MEMORY[0x1E695EFD0];
      *&v39.c = rect_24;
      *&v39.tx = *(MEMORY[0x1E695EFD0] + 32);
      v40.origin.x = v19;
      v40.origin.y = v21;
      v40.size.width = v23;
      v40.size.height = v25;
      MidX = CGRectGetMidX(v40);
      v41.origin.x = v9;
      v41.origin.y = v11;
      v41.size.width = v13;
      v41.size.height = v15;
      tx = MidX - CGRectGetMidX(v41);
      v42.origin.x = v19;
      v42.origin.y = v21;
      v27 = v21;
      v42.size.width = v23;
      v42.size.height = v34;
      MidY = CGRectGetMidY(v42);
      v43.origin.x = v9;
      v43.origin.y = v11;
      v43.size.width = v13;
      v43.size.height = v15;
      v29 = CGRectGetMidY(v43);
      *&v38.a = *&v39.a;
      *&v38.c = rect_24;
      *&v38.tx = *&v39.tx;
      CGAffineTransformTranslate(&v39, &v38, tx, MidY - v29);
      v44.origin.x = v19;
      v44.origin.y = v27;
      v44.size.width = v23;
      v44.size.height = v34;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v9;
      v45.origin.y = v11;
      v45.size.width = v13;
      v45.size.height = v15;
      v31 = CGRectGetHeight(v45);
      v37 = v39;
      CGAffineTransformScale(&v38, &v37, Height / v31 * 1.2, Height / v31 * 1.2);
      v39 = v38;
      [contentPlatterView setTransform:&v38];
      [contentPlatterView setAlpha:0.0];
      [contentPlatterView setBlurRadius:96.0];
      [contentPlatterView setDropShadowEnabled:0];
      traitCollection = [(UIPresentationController *)self traitCollection];
      v33 = [UIForcePresentationHelper visualEffectForPresentationPhase:0 traitCollection:traitCollection variant:0];
      [presentationContainerEffectView setEffect:v33];
    }
  }
}

- (void)_performTransitionAnimations:(id)animations
{
  animationsCopy = animations;
  currentTransitionAnimator = [(_UIPreviewPresentationController2 *)self currentTransitionAnimator];
  [currentTransitionAnimator addAnimations:animationsCopy];
}

- (void)_performPresentationAnimationsWithTransitionContext:(id)context
{
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  [presentationContainerEffectView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
  revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];
  [(_UIPreviewPresentationController2 *)self _preferredContentPlatterRectForContainerRect:v6, v8, v10, v12];
  v41 = v16;
  v42 = v15;
  v40 = v17;
  v19 = v18;
  previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];
  contentView = [presentationContainerEffectView contentView];
  [previewingContext preferredSourceViewRectInCoordinateSpace:contentView];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  currentTransitionAnimator = [(_UIPreviewPresentationController2 *)self currentTransitionAnimator];
  [currentTransitionAnimator duration];
  v32 = v31;

  [(_UIPreviewPresentationController2 *)self interactiveTransitionFraction];
  v34 = v33;
  traitCollection = [(UIPresentationController *)self traitCollection];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __89___UIPreviewPresentationController2__performPresentationAnimationsWithTransitionContext___block_invoke;
  v43[3] = &unk_1E711B030;
  v44 = revealPlatterView;
  v45 = presentationContainerEffectView;
  selfCopy = self;
  v47 = traitCollection;
  v49 = v34;
  v50 = 1.0 - v34;
  v51 = v42;
  v52 = v41;
  v53 = v40;
  v54 = v19;
  v55 = v23;
  v56 = v25;
  v57 = v27;
  v58 = v29;
  v48 = contentPlatterView;
  v36 = contentPlatterView;
  v37 = traitCollection;
  v38 = presentationContainerEffectView;
  v39 = revealPlatterView;
  [UIView animateKeyframesWithDuration:6 delay:v43 options:0 animations:v32 completion:0.0];
}

- (void)_performReducedMotionPresentationAnimationsWithTransitionContext:(id)context
{
  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
  [contentPlatterView setAlpha:1.0];

  revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];
  [revealPlatterView setAlpha:0.0];

  v6 = objc_opt_class();
  traitCollection = [(UIPresentationController *)self traitCollection];
  v7 = [v6 _backgroundEffectForTraitCollection:traitCollection interactive:0];
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  [presentationContainerEffectView setEffect:v7];
}

- (void)_performDismissAnimationsWithTransitionContext:(id)context
{
  contextCopy = context;
  if ([(_UIPreviewPresentationController2 *)self _shouldReduceMotion])
  {
    [(_UIPreviewPresentationController2 *)self _performReducedMotionDismissAnimationsWithTransitionContext:contextCopy];
  }

  else
  {
    presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
    [presentationContainerEffectView bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
    [(_UIPreviewPresentationController2 *)self _preferredContentPlatterRectForContainerRect:v7, v9, v11, v13];
    v37 = v15;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    previewingContext = [(_UIPreviewPresentationController2 *)self previewingContext];
    contentView = [presentationContainerEffectView contentView];
    [previewingContext preferredSourceViewRectInCoordinateSpace:contentView];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    currentTransitionAnimator = [(_UIPreviewPresentationController2 *)self currentTransitionAnimator];
    [currentTransitionAnimator duration];
    v34 = v33;

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __84___UIPreviewPresentationController2__performDismissAnimationsWithTransitionContext___block_invoke;
    v38[3] = &unk_1E70F8980;
    v39 = presentationContainerEffectView;
    v40 = contentPlatterView;
    v41 = v25;
    v42 = v27;
    v43 = v29;
    v44 = v31;
    v45 = v37;
    v46 = v17;
    v47 = v19;
    v48 = v21;
    v35 = contentPlatterView;
    v36 = presentationContainerEffectView;
    [UIView animateKeyframesWithDuration:6 delay:v38 options:0 animations:v34 completion:0.0];
  }
}

- (void)_performReducedMotionDismissAnimationsWithTransitionContext:(id)context
{
  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
  [contentPlatterView setAlpha:0.0];

  revealPlatterView = [(_UIPreviewPresentationController2 *)self revealPlatterView];
  [revealPlatterView setAlpha:0.0];

  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  [presentationContainerEffectView setEffect:0];
}

- (CGRect)_computedPlatterFrame
{
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  [presentationContainerEffectView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(_UIPreviewPresentationController2 *)self _preferredContentPlatterRectForContainerRect:v5, v7, v9, v11];
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_updateFromInteractionEffect:(id)effect
{
  if (effect)
  {
    [effect preferredContentTransform];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v8 = v11;
  v9 = v12;
  v10 = v13;
  [(_UIPreviewPresentationController2 *)self setPreferredContentPlatterTransform:&v8];
  [(_UIPreviewPresentationController2 *)self preferredContentPlatterTransform];
  contentPlatterView = [(_UIPreviewPresentationController2 *)self contentPlatterView];
  v8 = v5;
  v9 = v6;
  v10 = v7;
  [contentPlatterView setTransform:&v8];
}

- (UIViewControllerPreviewing_Internal)previewingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_previewingContext);

  return WeakRetained;
}

- (CGAffineTransform)preferredContentPlatterTransform
{
  v3 = *&self[11].c;
  *&retstr->a = *&self[11].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[11].tx;
  return self;
}

- (void)setPreferredContentPlatterTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_preferredContentPlatterTransform.a = *&transform->a;
  *&self->_preferredContentPlatterTransform.c = v4;
  *&self->_preferredContentPlatterTransform.tx = v3;
}

- (_UIPreviewInteractionHighlighting)currentHighlighter
{
  WeakRetained = objc_loadWeakRetained(&self->_currentHighlighter);

  return WeakRetained;
}

- (UIViewPropertyAnimator)currentTransitionAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_currentTransitionAnimator);

  return WeakRetained;
}

@end