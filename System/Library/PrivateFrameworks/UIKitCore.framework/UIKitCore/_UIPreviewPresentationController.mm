@interface _UIPreviewPresentationController
+ (id)_backgroundEffectForTraitCollection:(id)collection interactive:(BOOL)interactive;
- (BOOL)_canCommitPresentation;
- (BOOL)_canDismissPresentation;
- (BOOL)_hasPreviewActions;
- (BOOL)_hasPreviewQuickActions;
- (BOOL)_hasSelectedQuickAction;
- (BOOL)_platterIsInInitialPosition;
- (BOOL)_platterIsInInitialPositionMostly;
- (BOOL)_platterIsSelectingPreviewActions;
- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)position;
- (CGPoint)_dismissedActionSheetCenterForActionSheet:(id)sheet;
- (CGPoint)_presentedActionSheetCenterForActionSheet:(id)sheet;
- (CGPoint)centerForMenuDismissed;
- (CGPoint)centerForMenuDismissedForActionSheet:(id)sheet;
- (CGPoint)centerForMenuPresented;
- (CGPoint)centerForMenuPresentedForActionSheet:(id)sheet;
- (CGPoint)centerForPlatterWithMenuViewDismissed;
- (CGPoint)centerForPlatterWithMenuViewPresented;
- (CGPoint)centerForPlatterWithMenuViewPresentedForActionSheet:(id)sheet;
- (CGPoint)initialCenterForLeadingSwipeActionView;
- (CGPoint)initialCenterForTrailingSwipeActionView;
- (CGRect)_preferredSourceViewRect;
- (CGRect)platterBounds;
- (CGRect)platterContainerBounds;
- (NSArray)previewActionItems;
- (UIPreviewAction)leadingPreviewAction;
- (UIPreviewAction)trailingPreviewAction;
- (UIPreviewInteractionController)previewInteractionController;
- (UIViewControllerPreviewing)previewingContext;
- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate;
- (_UIPreviewPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController;
- (double)_leadingQuickActionOffsetForCenterPosition:(CGPoint)position swipeView:(id)view;
- (double)_quickActionSelectionOffset;
- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)style;
- (double)_trailingQuickActionOffsetForCenterPosition:(CGPoint)position swipeView:(id)view;
- (double)platterContainerCenterX;
- (double)platterContainerCenterY;
- (double)presentationViewCornerRadius;
- (id)_animatorForContainmentTransition;
- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)items;
- (id)_viewsParticipatingInNavigationControllerTransition;
- (id)platterView;
- (void)_configureActionSheetChromeViews;
- (void)_configureDynamicsController;
- (void)_configureInitialActionSheetViewIfNeeded;
- (void)_dismissForHandledActionWithCompletion:(id)completion;
- (void)_dismissForSelectionQuickActionAnimated;
- (void)_dismissPresentation;
- (void)_dismissPresentationWithCompletion:(id)completion;
- (void)_hideQuickActions;
- (void)_invokeCommitHandlerFromInteractionProgress;
- (void)_layoutForDismissTransition;
- (void)_layoutForPreviewInteractionProgress:(double)progress;
- (void)_layoutForPreviewTransition;
- (void)_layoutForRevealTransition;
- (void)_layoutForRevealUnhighlightTransition:(double)transition;
- (void)_panningGestureRecognizerDidFire:(id)fire;
- (void)_prepareInitialSourceViewSnapshot;
- (void)_preparePresentationContainerViewForPreviewInteraction;
- (void)_preparePresentationContainerViewForPreviewTransition;
- (void)_presentSubActionSheetForPreviewActionGroup:(id)group;
- (void)_presentationTransitionWillBeginForContainerEffectView:(id)view;
- (void)_previewTransitionDidComplete:(BOOL)complete;
- (void)_restorePlatterToInitialStatePositionAnimatedWithCompletion:(id)completion;
- (void)_revealTransitionDidComplete:(BOOL)complete;
- (void)_setupInteractionProgressForBreathing;
- (void)_stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded;
- (void)_triggerQuickActionHandlerIfNeeded;
- (void)_unhighlightPreviewCellSnapshotViewsIfNeeded;
- (void)_updateBreathingTransformWithProgress:(double)progress animated:(BOOL)animated;
- (void)_updateRevealContainerViewForSourceRect:(CGRect)rect;
- (void)_updateVisibiltyOfPreviewActionChromeForCurrentState;
- (void)_willCommitPresentation;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)interactionProgress:(id)progress didEnd:(BOOL)end;
- (void)interactionProgressDidUpdate:(id)update;
- (void)platterMenuDynamicsController:(id)controller didMoveSwipeView:(id)view toPosition:(CGPoint)position;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)presentationTransitionDidEnd:(BOOL)end;
- (void)presentationTransitionWillBegin;
- (void)setPanningGestureRecognizer:(id)recognizer;
- (void)setPresentationViewCornerRadius:(double)radius;
- (void)setupAdditionalModalGestureRecognizers;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container;
- (void)updateSwipeActionsIfApplicable;
@end

@implementation _UIPreviewPresentationController

- (_UIPreviewPresentationController)initWithPresentedViewController:(id)controller presentingViewController:(id)viewController
{
  v9.receiver = self;
  v9.super_class = _UIPreviewPresentationController;
  v4 = [(UIPreviewPresentationController *)&v9 initWithPresentedViewController:controller presentingViewController:viewController];
  v5 = v4;
  if (v4)
  {
    [(UIPresentationController *)v4 setSourceRect:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(_UIPreviewPresentationController *)v5 setCurrentPresentationPhase:0];
    v6 = objc_alloc_init(_UIVelocityIntegrator);
    [(_UIPreviewPresentationController *)v5 setRevealPanningVelocityIntegrator:v6];

    v7 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(_UIPreviewPresentationController *)self setPanningGestureRecognizer:0];
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v3 dealloc];
}

- (double)presentationViewCornerRadius
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setPresentationViewCornerRadius:(double)radius
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView setCornerRadius:radius];
}

- (void)_presentationTransitionWillBeginForContainerEffectView:(id)view
{
  v25.receiver = self;
  v25.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v25 _presentationTransitionWillBeginForContainerEffectView:view];
  [(_UIPreviewPresentationController *)self _preferredSourceViewRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UIPreviewPresentationController *)self _updateRevealContainerViewForSourceRect:?];
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  contentView = [presentationContainerEffectView contentView];

  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  [contentView addSubview:revealContainerView];

  sourceView = [(UIPresentationController *)self sourceView];
  [contentView convertRect:sourceView fromView:{v5, v7, v9, v11}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  revealContainerView2 = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView2 setFrame:{v17, v19, v21, v23}];
}

- (void)presentationTransitionWillBegin
{
  v32.receiver = self;
  v32.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v32 presentationTransitionWillBegin];
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  contentView = [presentationContainerEffectView contentView];

  v5 = [UIScrollView alloc];
  [contentView bounds];
  v6 = [(UIScrollView *)v5 initWithFrame:?];
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)v6 setScrollEnabled:0];
  [contentView bounds];
  [(UIScrollView *)v6 setContentSize:v7, v8];
  [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v6 setShowsVerticalScrollIndicator:0];
  [contentView addSubview:v6];
  [(_UIPreviewPresentationController *)self setContainerScrollView:v6];
  v9 = [_UIPreviewPresentationContainerView alloc];
  [contentView bounds];
  v10 = [(_UIPreviewPresentationContainerView *)v9 initWithFrame:?];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  view = [presentedViewController view];
  [(_UIPreviewPresentationContainerView *)v10 setContentView:view];

  [(UIView *)v10 setHidden:1];
  [(_UIPreviewPresentationController *)self setPresentationContainerView:v10];
  [(UIView *)v6 addSubview:v10];
  v13 = [UIView alloc];
  [contentView bounds];
  v14 = [(UIView *)v13 initWithFrame:?];
  [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v14];
  [(_UIPreviewPresentationController *)self setActionSheetContainerView:v14];
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Containerscrol_0.isa, v6, v14, 0);
  centerXAnchor = [(UIView *)v6 centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(_UIPreviewPresentationController *)self setContainerScrollViewXConstraint:v18];

  widthAnchor = [(UIView *)v6 widthAnchor];
  widthAnchor2 = [contentView widthAnchor];
  v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v21 setActive:1];

  containerScrollViewXConstraint = [(_UIPreviewPresentationController *)self containerScrollViewXConstraint];
  [containerScrollViewXConstraint setActive:1];

  v23 = MEMORY[0x1E69977A0];
  v24 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[containerScrollView]|" options:0 metrics:0 views:v15];
  [v23 activateConstraints:v24];

  v25 = MEMORY[0x1E69977A0];
  v26 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[actionSheetContainerView]|" options:0 metrics:0 views:v15];
  [v25 activateConstraints:v26];

  v27 = MEMORY[0x1E69977A0];
  v28 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[actionSheetContainerView]|" options:0 metrics:0 views:v15];
  [v27 activateConstraints:v28];

  presentedViewController2 = [(UIPresentationController *)self presentedViewController];
  view2 = [presentedViewController2 view];
  [(_UIPreviewPresentationContainerView *)v10 setContentView:view2];

  [(UIView *)v10 setHidden:1];
  [(_UIPreviewPresentationController *)self setPresentationContainerView:v10];
  [(UIView *)v6 addSubview:v10];
  forcePresentationControllerDelegate = [(_UIPreviewPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [forcePresentationControllerDelegate forcePresentationTransitionWillBegin:self];
  }

  [(_UIPreviewPresentationController *)self _unhighlightPreviewCellSnapshotViewsIfNeeded];
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v4 presentationTransitionDidEnd:end];
  [(_UIPreviewPresentationController *)self _stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded];
}

- (void)dismissalTransitionWillBegin
{
  v3.receiver = self;
  v3.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v3 dismissalTransitionWillBegin];
  [(_UIPreviewPresentationController *)self _hideQuickActions];
  [(_UIPreviewPresentationController *)self _stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded];
  [(_UIPreviewPresentationController *)self _endBreathing];
}

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v4 dismissalTransitionDidEnd:end];
  [(_UIPreviewPresentationController *)self _triggerQuickActionHandlerIfNeeded];
}

- (void)containerViewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 containerViewWillLayoutSubviews];
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  [presentationContainerView setPreferredContentSize:?];

  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  [presentationContainerView setFrame:?];
}

- (id)_viewsParticipatingInNavigationControllerTransition
{
  v7[1] = *MEMORY[0x1E69E9840];
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];

  if (presentationContainerEffectView)
  {
    presentationContainerEffectView2 = [(UIPreviewPresentationController *)self presentationContainerEffectView];
    v7[0] = presentationContainerEffectView2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)_animatorForContainmentTransition
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [[_UIPreviewTransitionController alloc] initWithInteractionProgress:0 targetPresentationPhase:4];
  v11[0] = @"backgroundView";
  presentationContainerEffectView = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  v12[0] = presentationContainerEffectView;
  v11[1] = @"containerView";
  containerView = [(UIPresentationController *)self containerView];
  v12[1] = containerView;
  v11[2] = @"presentationContainerView";
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  v12[2] = presentationContainerView;
  v11[3] = @"presentationView";
  _presentationView = [(UIPresentationController *)self _presentationView];
  v12[3] = _presentationView;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  [(_UIPreviewTransitionController *)v3 setViewsParticipatingInCommitTransition:v8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69___UIPreviewPresentationController__animatorForContainmentTransition__block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  [(_UIPreviewTransitionController *)v3 setAnimations:v10 completion:0 forPresentationPhase:4];

  return v3;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 preferredContentSizeDidChangeForChildContentContainer:container];
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  [presentationContainerView setPreferredContentSize:?];

  [presentationContainerView setNeedsLayout];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)container
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 systemLayoutFittingSizeDidChangeForChildContentContainer:container];
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  [presentedViewController preferredContentSize];
  [presentationContainerView setPreferredContentSize:?];

  [presentationContainerView setNeedsLayout];
}

- (void)interactionProgressDidUpdate:(id)update
{
  updateCopy = update;
  interactionProgressForCommit = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (interactionProgressForCommit == updateCopy)
  {
    if (![(_UIPreviewPresentationController *)self hasAskedForCommitInternally])
    {
      [updateCopy percentComplete];
      if (v7 >= 1.0)
      {
        if ([(_UIPreviewPresentationController *)self _canCommitPresentation])
        {
          [(_UIPreviewPresentationController *)self _invokeCommitHandlerFromInteractionProgress];
        }
      }
    }
  }

  else
  {
    interactionProgressForBreathing = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];

    if (interactionProgressForBreathing == updateCopy)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __65___UIPreviewPresentationController_interactionProgressDidUpdate___block_invoke;
      v8[3] = &unk_1E70F35B8;
      v8[4] = self;
      v9 = updateCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }

    else
    {
      [updateCopy percentComplete];
      [(_UIPreviewPresentationController *)self _layoutForPreviewInteractionProgress:?];
    }
  }
}

- (void)interactionProgress:(id)progress didEnd:(BOOL)end
{
  endCopy = end;
  progressCopy = progress;
  interactionProgressForCommit = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (interactionProgressForCommit == progressCopy && ![(_UIPreviewPresentationController *)self hasAskedForCommitInternally]&& endCopy && [(_UIPreviewPresentationController *)self _canCommitPresentation])
  {

    [(_UIPreviewPresentationController *)self _invokeCommitHandlerFromInteractionProgress];
  }
}

- (void)_updateBreathingTransformWithProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(_UIPreviewPresentationController *)self isBreathing])
  {
    presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
    layer = [presentationContainerView layer];

    if (layer)
    {
      [layer sublayerTransform];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    CATransform3DGetAffineTransform(&m, &v36);
    v9 = m.a + m.c;
    platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
    [platterMenuController currentVelocity];
    v12 = v11;

    v13 = 1.0;
    v14 = 0.0;
    if ([(_UIPreviewPresentationController *)self _canCommitPresentation])
    {
      v15 = -v12;
      if (v12 >= 0.0)
      {
        v15 = v12;
      }

      if (v15 < 50.0)
      {
        v16 = fmin(fmax(progress, 0.0), 1.0);
        v13 = 1.0 - v16 + v16 * 1.05;
        v14 = v16 * 10.0 + (1.0 - v16) * 0.0;
      }
    }

    if (v13 != v9)
    {
      if (animatedCopy)
      {
        actionSheetAvailableImageView3 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
        v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"sublayerTransform"];
        [v18 setDuration:0.1];
        [v18 setTimingFunction:actionSheetAvailableImageView3];
        v19 = MEMORY[0x1E696B098];
        presentationLayer = [layer presentationLayer];
        v21 = presentationLayer;
        if (presentationLayer)
        {
          [presentationLayer sublayerTransform];
        }

        else
        {
          memset(&v36, 0, sizeof(v36));
        }

        v22 = [v19 valueWithCATransform3D:&v36];
        [v18 setFromValue:v22];

        v23 = MEMORY[0x1E696B098];
        CGAffineTransformMakeScale(&m, v13, v13);
        CATransform3DMakeAffineTransform(&v36, &m);
        v24 = [v23 valueWithCATransform3D:&v36];
        [v18 setToValue:v24];

        [layer addAnimation:v18 forKey:@"com.apple.breathing"];
        v25 = MEMORY[0x1E696B098];
        CGAffineTransformMakeScale(&m, v13, v13);
        CATransform3DMakeAffineTransform(&v36, &m);
        v26 = [v25 valueWithCATransform3D:&v36];
        [layer setValue:v26 forKey:@"sublayerTransform"];

        v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];

        [v27 setDuration:0.1];
        [v27 setTimingFunction:actionSheetAvailableImageView3];
        v28 = MEMORY[0x1E696B098];
        CGAffineTransformMakeTranslation(&v36, 0.0, -v14);
        v29 = [v28 valueWithCGAffineTransform:&v36];
        [v27 setToValue:v29];

        actionSheetAvailableImageView = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        layer2 = [actionSheetAvailableImageView layer];
        [layer2 addAnimation:v27 forKey:@"com.apple.breathing.arrow"];

        CGAffineTransformMakeTranslation(&v35, 0.0, -v14);
        actionSheetAvailableImageView2 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        *&v36.m11 = *&v35.a;
        *&v36.m13 = *&v35.c;
        *&v36.m21 = *&v35.tx;
        [actionSheetAvailableImageView2 setTransform:&v36];
      }

      else
      {
        CGAffineTransformMakeScale(&v36, v13, v13);
        CATransform3DMakeAffineTransform(&v34, &v36);
        v36 = v34;
        [layer setSublayerTransform:&v36];
        CGAffineTransformMakeTranslation(&v33, 0.0, -v14);
        actionSheetAvailableImageView3 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        *&v36.m11 = *&v33.a;
        *&v36.m13 = *&v33.c;
        *&v36.m21 = *&v33.tx;
        [actionSheetAvailableImageView3 setTransform:&v36];
      }
    }
  }
}

- (NSArray)previewActionItems
{
  previewActionItems = self->_previewActionItems;
  if (!previewActionItems)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    previewActionItems = [presentedViewController previewActionItems];
    v6 = [previewActionItems copy];
    v7 = self->_previewActionItems;
    self->_previewActionItems = v6;

    previewActionItems = self->_previewActionItems;
  }

  return previewActionItems;
}

- (UIPreviewAction)leadingPreviewAction
{
  leadingPreviewAction = self->_leadingPreviewAction;
  if (!leadingPreviewAction)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    leadingPreviewAction = [presentedViewController leadingPreviewAction];
    v6 = [leadingPreviewAction copy];
    v7 = self->_leadingPreviewAction;
    self->_leadingPreviewAction = v6;

    leadingPreviewAction = self->_leadingPreviewAction;
  }

  return leadingPreviewAction;
}

- (UIPreviewAction)trailingPreviewAction
{
  trailingPreviewAction = self->_trailingPreviewAction;
  if (!trailingPreviewAction)
  {
    presentedViewController = [(UIPresentationController *)self presentedViewController];
    trailingPreviewAction = [presentedViewController trailingPreviewAction];
    v6 = [trailingPreviewAction copy];
    v7 = self->_trailingPreviewAction;
    self->_trailingPreviewAction = v6;

    trailingPreviewAction = self->_trailingPreviewAction;
  }

  return trailingPreviewAction;
}

+ (id)_backgroundEffectForTraitCollection:(id)collection interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  collectionCopy = collection;
  if ([objc_opt_class() _shouldApplyVisualEffectsToPresentingView])
  {
    v9.receiver = self;
    v9.super_class = &OBJC_METACLASS____UIPreviewPresentationController;
    v7 = objc_msgSendSuper2(&v9, sel__backgroundEffectForTraitCollection_interactive_, collectionCopy, interactiveCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_configureInitialActionSheetViewIfNeeded
{
  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {
    previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];

    if (!previewActionSheet)
    {
      previewActionItems = [(_UIPreviewPresentationController *)self previewActionItems];
      v5 = [(_UIPreviewPresentationController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:previewActionItems];
      [(_UIPreviewPresentationController *)self setPreviewActionSheet:v5];

      previewActionSheet2 = [(_UIPreviewPresentationController *)self previewActionSheet];
      [(_UIPreviewPresentationController *)self _dismissedActionSheetCenterForActionSheet:previewActionSheet2];
      v7 = v6;
      v9 = v8;
      previewActionSheet3 = [(_UIPreviewPresentationController *)self previewActionSheet];
      [previewActionSheet3 setCenter:{v7, v9}];
    }
  }
}

- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
  _window = [previewActionSheet _window];
  [_window _managedSafeAreaInsets];
  v9 = v8;

  if (fabs(v9) >= 2.22044605e-16)
  {
    previewActionSheet2 = [(_UIPreviewPresentationController *)self previewActionSheet];
    [previewActionSheet2 contentInsets];
    v12 = v11;

    y = y - (v9 - v12);
  }

  v13 = x;
  v14 = y;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)_layoutForRevealTransition
{
  [(_UIPreviewPresentationController *)self setCurrentPresentationPhase:1];
  CGAffineTransformMakeScale(&v5, 1.0175, 1.0175);
  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  v4 = v5;
  [revealContainerView setTransform:&v4];
}

- (void)_layoutForRevealUnhighlightTransition:(double)transition
{
  v3 = 1.0 - transition;
  initialSourceViewSnapshot = [(_UIPreviewPresentationController *)self initialSourceViewSnapshot];
  [initialSourceViewSnapshot setAlpha:v3];
}

- (void)_revealTransitionDidComplete:(BOOL)complete
{
  presentationPhaseCompletionBlock = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];

  if (presentationPhaseCompletionBlock)
  {
    presentationPhaseCompletionBlock2 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];
    presentationPhaseCompletionBlock2[2](presentationPhaseCompletionBlock2, 1);
  }

  [(_UIPreviewPresentationController *)self _stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded];
}

- (void)_preparePresentationContainerViewForPreviewTransition
{
  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __89___UIPreviewPresentationController__preparePresentationContainerViewForPreviewTransition__block_invoke;
  v48[3] = &unk_1E70F3590;
  v48[4] = self;
  [UIView performWithoutAnimation:v48];
  platterView = [presentationContainerView platterView];
  [platterView bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  platterView2 = [presentationContainerView platterView];
  superview = [presentationContainerView superview];
  [platterView2 convertRect:superview toView:{v15, v17, v19, v21}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [presentationContainerView setAlpha:0.0];
  if (_AXSReduceMotionEnabled())
  {
    [presentationContainerView setBlurRadius:0.0];
    v32 = *(MEMORY[0x1E695EFD0] + 16);
    *&v47.a = *MEMORY[0x1E695EFD0];
    *&v47.c = v32;
    *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    v33 = &v47;
  }

  else
  {
    [presentationContainerView setBlurRadius:60.0];
    v44 = *(MEMORY[0x1E695EFD0] + 16);
    *&v47.a = *MEMORY[0x1E695EFD0];
    *&v47.c = v44;
    *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    v49.origin.x = v5;
    v49.origin.y = v7;
    v49.size.width = v9;
    v49.size.height = v11;
    MidX = CGRectGetMidX(v49);
    v50.size.height = v31;
    v42 = v31;
    v35 = MidX;
    v50.origin.x = v25;
    v50.origin.y = v27;
    v50.size.width = v29;
    tx = v35 - CGRectGetMidX(v50);
    v51.origin.x = v5;
    v36 = v5;
    v51.origin.y = v7;
    v51.size.width = v9;
    v51.size.height = v11;
    v37 = v7;
    MidY = CGRectGetMidY(v51);
    v52.origin.x = v25;
    v52.origin.y = v27;
    v52.size.width = v29;
    v52.size.height = v42;
    v39 = CGRectGetMidY(v52);
    *&v46.a = *&v47.a;
    *&v46.c = v44;
    *&v46.tx = *&v47.tx;
    CGAffineTransformTranslate(&v47, &v46, tx, MidY - v39);
    v53.origin.x = v36;
    v53.origin.y = v37;
    v53.size.width = v9;
    v53.size.height = v11;
    Height = CGRectGetHeight(v53);
    v54.origin.x = v25;
    v54.origin.y = v27;
    v54.size.width = v29;
    v54.size.height = v42;
    v41 = CGRectGetHeight(v54);
    v45 = v47;
    CGAffineTransformScale(&v46, &v45, Height / v41, Height / v41);
    v47 = v46;
    v33 = &v46;
  }

  [presentationContainerView setTransform:v33];
  [presentationContainerView setHidden:0];
  [presentationContainerView setShouldRasterizeForTransition:1];
}

- (void)_layoutForPreviewTransition
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63___UIPreviewPresentationController__layoutForPreviewTransition__block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  [UIView performWithoutAnimation:v10];
  [(_UIPreviewPresentationController *)self setCurrentPresentationPhase:2];
  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView setBlurRadius:60.0];

  revealContainerView2 = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView2 setAlpha:0.0];

  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView setBlurRadius:0.0];

  presentationContainerView2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView2 setAlpha:1.0];

  presentationContainerView3 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v8;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [presentationContainerView3 setTransform:v9];
}

- (void)_previewTransitionDidComplete:(BOOL)complete
{
  completeCopy = complete;
  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView setAlpha:1.0];

  revealContainerView2 = [(_UIPreviewPresentationController *)self revealContainerView];
  [revealContainerView2 setHidden:1];

  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView setShouldRasterizeForTransition:0];

  if (completeCopy)
  {
    [(_UIPreviewPresentationController *)self _preparePresentationContainerViewForPreviewInteraction];
    presentationPhaseCompletionBlock = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];

    if (presentationPhaseCompletionBlock)
    {
      presentationPhaseCompletionBlock2 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];
      presentationPhaseCompletionBlock2[2](presentationPhaseCompletionBlock2, 2);
    }

    [(_UIPreviewPresentationController *)self _configureActionSheetChromeViews];
    [(_UIPreviewPresentationController *)self _updateVisibiltyOfPreviewActionChromeForCurrentState];
  }

  [(_UIPreviewPresentationController *)self _setupInteractionProgressForBreathing];
  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {

    [(_UIPreviewPresentationController *)self _configureDynamicsController];
  }
}

- (void)_layoutForDismissTransition
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  revealContainerView = [(_UIPreviewPresentationController *)self revealContainerView];
  platterView = [presentationContainerView platterView];
  [platterView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  platterView2 = [presentationContainerView platterView];
  superview = [presentationContainerView superview];
  [platterView2 convertRect:superview toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [revealContainerView frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = _AXSReduceMotionEnabled();
  v33 = MEMORY[0x1E695EFD0];
  if (v32)
  {
    v34 = *(MEMORY[0x1E695EFD0] + 16);
    *&v49.a = *MEMORY[0x1E695EFD0];
    *&v49.c = v34;
    *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
    [presentationContainerView setTransform:&v49];
    v35 = 0.0;
  }

  else
  {
    v46 = *(MEMORY[0x1E695EFD0] + 16);
    *&v49.a = *MEMORY[0x1E695EFD0];
    *&v49.c = v46;
    *&v49.tx = *(MEMORY[0x1E695EFD0] + 32);
    v50.origin.x = v25;
    v50.origin.y = v27;
    v50.size.width = v29;
    v50.size.height = v31;
    tx = CGRectGetMidX(v50);
    rect = v25;
    v51.origin.x = v17;
    rect_8 = v17;
    v51.origin.y = v19;
    v51.size.width = v21;
    v51.size.height = v23;
    txa = tx - CGRectGetMidX(v51);
    v52.origin.x = v25;
    v52.origin.y = v27;
    v52.size.width = v29;
    v52.size.height = v31;
    MidY = CGRectGetMidY(v52);
    v53.origin.x = v17;
    v53.origin.y = v19;
    v53.size.width = v21;
    v53.size.height = v23;
    v37 = CGRectGetMidY(v53);
    *&v48.a = *&v49.a;
    *&v48.c = v46;
    *&v48.tx = *&v49.tx;
    CGAffineTransformTranslate(&v49, &v48, txa, MidY - v37);
    v54.origin.x = rect;
    v54.origin.y = v27;
    v54.size.width = v29;
    v54.size.height = v31;
    Height = CGRectGetHeight(v54);
    v55.origin.x = rect_8;
    v55.origin.y = v19;
    v55.size.width = v21;
    v55.size.height = v23;
    v39 = CGRectGetHeight(v55);
    v47 = v49;
    CGAffineTransformScale(&v48, &v47, Height / v39, Height / v39);
    v49 = v48;
    [presentationContainerView setTransform:&v48];
    v35 = 60.0;
  }

  [presentationContainerView setBlurRadius:v35];
  [presentationContainerView setAlpha:0.0];
  v40 = v33[1];
  *&v49.a = *v33;
  *&v49.c = v40;
  *&v49.tx = v33[2];
  [revealContainerView setTransform:&v49];
  [revealContainerView setAlpha:1.0];
  [revealContainerView setBlurRadius:0.0];
  containerView = [(UIPresentationController *)self containerView];
  [containerView setUserInteractionEnabled:0];

  [(_UIPreviewPresentationController *)self setCurrentPresentationPhase:0];
}

- (void)_preparePresentationContainerViewForPreviewInteraction
{
  v3 = +[_UIStatistics previewInteractionTapCount];
  [v3 setSampleRate:0.0];

  v4 = +[_UIStatistics previewInteractionPeekCount];
  [v4 incrementValueBy:1];

  v5 = +[_UIStatistics previewInteractionPeekDuration];
  [v5 startTimingForObject:self];

  _UIPowerLogPeekBegan();
  interactionProgressForPresentation = [(_UIPreviewPresentationController *)self interactionProgressForPresentation];
  [interactionProgressForPresentation addProgressObserver:self];

  [(_UIPreviewPresentationController *)self _configureInitialActionSheetViewIfNeeded];
}

- (void)_layoutForPreviewInteractionProgress:(double)progress
{
  CGAffineTransformMakeScale(&v6, progress, progress);
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  v5 = v6;
  [presentationContainerView setTransform:&v5];
}

- (void)_willCommitPresentation
{
  [(_UIPreviewPresentationController *)self _endBreathing];
  platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
  [platterMenuController resetAnimator];

  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
  [previewActionSheet setHidden:1];

  leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [leadingQuickActionView setHidden:1];

  trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
  [trailingQuickActionView setHidden:1];

  actionSheetAvailableImageView = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
  [actionSheetAvailableImageView setHidden:1];
}

- (BOOL)_canDismissPresentation
{
  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]- 4 < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_8;
  }

  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {
    revealPanningVelocityIntegrator = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];

    if (revealPanningVelocityIntegrator)
    {
      revealPanningVelocityIntegrator2 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [revealPanningVelocityIntegrator2 velocity];
      v6 = v5;

      if (v6 < 0.0)
      {
        revealPanningVelocityIntegrator3 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
        [revealPanningVelocityIntegrator3 offset];
        v9 = fabs(v8);

        if (v9 >= 44.0)
        {
LABEL_12:
          LOBYTE(v10) = 0;
          return v10;
        }
      }
    }
  }

  if (![(_UIPreviewPresentationController *)self hasAskedForDismissalInternally]&& ![(_UIPreviewPresentationController *)self hasAskedForCommitInternally])
  {
    if ([(_UIPreviewPresentationController *)self _platterIsInInitialPositionMostly]&& ![(_UIPreviewPresentationController *)self preDismissAnimationsInflight])
    {
      platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
      v10 = [platterMenuController isMenuPresenting] ^ 1;

      return v10;
    }

    goto LABEL_12;
  }

LABEL_8:
  LOBYTE(v10) = 1;
  return v10;
}

- (BOOL)_canCommitPresentation
{
  if ([(_UIPreviewPresentationController *)self _platterIsInInitialPositionMostly])
  {
    return 1;
  }

  return [(_UIPreviewPresentationController *)self hasAskedForCommitInternally];
}

- (void)_triggerQuickActionHandlerIfNeeded
{
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
  {
    leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    quickAction = [leadingQuickActionView quickAction];
    handler = [quickAction handler];

    if (!handler)
    {
      goto LABEL_8;
    }

    leadingQuickActionView2 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    quickAction2 = [leadingQuickActionView2 quickAction];
    handler2 = [quickAction2 handler];
    leadingQuickActionView3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    goto LABEL_7;
  }

  if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
  {
    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    quickAction3 = [trailingQuickActionView quickAction];
    handler3 = [quickAction3 handler];

    if (handler3)
    {
      leadingQuickActionView2 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      quickAction2 = [leadingQuickActionView2 quickAction];
      handler2 = [quickAction2 handler];
      leadingQuickActionView3 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
LABEL_7:
      v13 = leadingQuickActionView3;
      quickAction4 = [leadingQuickActionView3 quickAction];
      (handler2)[2](handler2, quickAction4, presentedViewController);
    }
  }

LABEL_8:
}

- (void)_prepareInitialSourceViewSnapshot
{
  sourceView = [(UIPresentationController *)self sourceView];
  [(UIPresentationController *)self sourceRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  previewingContext = [(_UIPreviewPresentationController *)self previewingContext];
  customViewForInteractiveHighlight = [previewingContext customViewForInteractiveHighlight];

  if (!customViewForInteractiveHighlight)
  {
    customViewForInteractiveHighlight = [sourceView resizableSnapshotViewFromRect:0 afterScreenUpdates:v4 withCapInsets:{v6, v8, v10, 0.0, 0.0, 0.0, 0.0}];
    [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshot:customViewForInteractiveHighlight];
  }

  v13 = objc_alloc_init(_UIPreviewInteractionTransitionWindow);
  [sourceView convertRect:0 toView:{v4, v6, v8, v10}];
  [(UIWindow *)v13 setFrame:?];
  [(UIWindow *)v13 setHidden:0];
  [(UIView *)v13 addSubview:customViewForInteractiveHighlight];
  [(UIView *)v13 bounds];
  [customViewForInteractiveHighlight setFrame:?];
  [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshotWindow:v13];
}

- (void)_updateRevealContainerViewForSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = [[_UIPreviewPresentationEffectView alloc] initWithFrame:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(UIView *)v13 setUserInteractionEnabled:0];
  sourceView = [(UIPresentationController *)self sourceView];
  if (sourceView)
  {
    previewingContext = [(_UIPreviewPresentationController *)self previewingContext];
    customViewForInteractiveHighlight = [previewingContext customViewForInteractiveHighlight];

    if (customViewForInteractiveHighlight)
    {
      [(UIView *)v13 addSubview:customViewForInteractiveHighlight];
    }

    else if (![(_UIPreviewPresentationController *)self _sourceViewSnapshotAndScaleTransformSuppressed])
    {
      v11 = [sourceView resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, 0.0, 0.0, 0.0, 0.0}];
      [v11 setAutoresizingMask:18];
      [(UIView *)v13 addSubview:v11];
      initialSourceViewSnapshot = [(_UIPreviewPresentationController *)self initialSourceViewSnapshot];
      [(UIView *)v13 insertSubview:initialSourceViewSnapshot aboveSubview:v11];
    }
  }

  [(_UIPreviewPresentationController *)self setRevealContainerView:v13];
}

- (void)_unhighlightPreviewCellSnapshotViewsIfNeeded
{
  if (![(_UIPreviewPresentationController *)self _sourceViewSnapshotAndScaleTransformSuppressed])
  {
    objc_initWeak(&location, self);
    v3 = [_UIPreviewPresentationAnimator alloc];
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __80___UIPreviewPresentationController__unhighlightPreviewCellSnapshotViewsIfNeeded__block_invoke;
    v8 = &unk_1E710CAC0;
    objc_copyWeak(&v9, &location);
    v4 = [(_UIPreviewPresentationAnimator *)v3 initWithDuration:&v5 advanceBlock:0.4];
    [(_UIPreviewPresentationController *)self setUnhighlightPreviewCellSnapshotViewAnimator:v4, v5, v6, v7, v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded
{
  unhighlightPreviewCellSnapshotViewAnimator = [(_UIPreviewPresentationController *)self unhighlightPreviewCellSnapshotViewAnimator];
  [unhighlightPreviewCellSnapshotViewAnimator stopAnimation];

  [(_UIPreviewPresentationController *)self setUnhighlightPreviewCellSnapshotViewAnimator:0];

  [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshotWindow:0];
}

- (CGRect)_preferredSourceViewRect
{
  sourceView = [(UIPresentationController *)self sourceView];
  [(UIPresentationController *)self sourceRect];
  [UIForcePresentationHelper sourceRectForView:sourceView proposedSourceRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)platterContainerCenterX
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView bounds];
  MidX = CGRectGetMidX(v5);

  return MidX;
}

- (double)platterContainerCenterY
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView bounds];
  MidY = CGRectGetMidY(v5);

  return MidY;
}

- (CGRect)platterBounds
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  platterView = [presentationContainerView platterView];
  [platterView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)platterView
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  platterView = [presentationContainerView platterView];

  return platterView;
}

- (CGRect)platterContainerBounds
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGPoint)centerForPlatterWithMenuViewPresented
{
  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewPresentedForActionSheet:previewActionSheet];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)centerForPlatterWithMenuViewDismissed
{
  [(_UIPreviewPresentationController *)self platterContainerCenterX];
  v4 = v3;
  [(_UIPreviewPresentationController *)self platterContainerCenterY];
  v6 = v5;
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
}

- (CGPoint)centerForMenuPresented
{
  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:previewActionSheet];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)centerForMenuDismissed
{
  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:previewActionSheet];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)platterMenuDynamicsController:(id)controller didMoveSwipeView:(id)view toPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  viewCopy = view;
  leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];

  if (leadingQuickActionView == viewCopy)
  {
    [(_UIPreviewPresentationController *)self _leadingQuickActionOffsetForCenterPosition:x swipeView:y];
    v12 = v14;
    leadingQuickActionViewEdgeConstraint = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
  }

  else
  {
    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];

    v10 = viewCopy;
    if (trailingQuickActionView != viewCopy)
    {
      goto LABEL_6;
    }

    [(_UIPreviewPresentationController *)self _trailingQuickActionOffsetForCenterPosition:x swipeView:y];
    v12 = v11;
    leadingQuickActionViewEdgeConstraint = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
  }

  v15 = leadingQuickActionViewEdgeConstraint;
  [leadingQuickActionViewEdgeConstraint setConstant:v12];

  v10 = viewCopy;
LABEL_6:
}

- (double)_trailingQuickActionOffsetForCenterPosition:(CGPoint)position swipeView:(id)view
{
  x = position.x;
  [view bounds];
  v6 = x + CGRectGetWidth(v11) * 0.5;
  containerView = [(UIPresentationController *)self containerView];
  [containerView bounds];
  v9 = v8;

  return v6 - v9;
}

- (double)_leadingQuickActionOffsetForCenterPosition:(CGPoint)position swipeView:(id)view
{
  x = position.x;
  [view bounds];
  return -(x + v5 * -0.5);
}

- (CGPoint)initialCenterForLeadingSwipeActionView
{
  leadingSwipeActionView = [(_UIPreviewPresentationController *)self leadingSwipeActionView];
  if (leadingSwipeActionView)
  {
    [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewDismissed];
    v5 = v4;
    v7 = v6;
    platterView = [(_UIPreviewPresentationController *)self platterView];
    [platterView frame];
    v10 = v9;
    v12 = v11;
    v13 = round(v7 - v11 * 0.5);
    v14 = round(v5 - v9 * 0.5);

    [leadingSwipeActionView bounds];
    v16 = v15;
    v23.origin.x = v14;
    v23.origin.y = v13;
    v23.size.width = v10;
    v23.size.height = v12;
    v17 = CGRectGetMinX(v23) + v16 * 0.5 + 2.0;
    containerView = [(UIPresentationController *)self containerView];
    [containerView bounds];
    v19 = CGRectGetHeight(v24) * 0.5;
  }

  else
  {
    v17 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)initialCenterForTrailingSwipeActionView
{
  trailingSwipeActionView = [(_UIPreviewPresentationController *)self trailingSwipeActionView];
  if (trailingSwipeActionView)
  {
    [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewDismissed];
    v5 = v4;
    v7 = v6;
    platterView = [(_UIPreviewPresentationController *)self platterView];
    [platterView frame];
    v10 = v9;
    v12 = v11;
    v13 = round(v7 - v11 * 0.5);
    v14 = round(v5 - v9 * 0.5);

    [trailingSwipeActionView bounds];
    v16 = v15;
    v23.origin.x = v14;
    v23.origin.y = v13;
    v23.size.width = v10;
    v23.size.height = v12;
    v17 = CGRectGetMaxX(v23) - (v16 * 0.5 + 2.0);
    containerView = [(UIPresentationController *)self containerView];
    [containerView bounds];
    v19 = CGRectGetHeight(v24) * 0.5;
  }

  else
  {
    v17 = *MEMORY[0x1E695EFF8];
    v19 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v20 = v17;
  v21 = v19;
  result.y = v21;
  result.x = v20;
  return result;
}

- (CGPoint)centerForPlatterWithMenuViewPresentedForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UIPreviewPresentationController *)self platterContainerCenterY];
  v14 = v13;
  [sheetCopy bounds];
  v16 = v15;

  v26.origin.x = v6;
  v26.origin.y = v8;
  v26.size.width = v10;
  v26.size.height = v12;
  Height = CGRectGetHeight(v26);
  [(_UIPreviewPresentationController *)self minimumSpacingBetweenPlatterAndMenu];
  v19 = Height - (v16 + v18 + v18);
  [(_UIPreviewPresentationController *)self platterBounds];
  v20 = v19 + CGRectGetHeight(v27) * -0.5;
  [(_UIPreviewPresentationController *)self platterContainerCenterY];
  if (v14 + -40.0 < v20 && v20 > v21)
  {
    v20 = v14 + -40.0;
  }

  [(_UIPreviewPresentationController *)self platterContainerCenterX];
  v24 = v20;
  result.y = v24;
  result.x = v23;
  return result;
}

- (CGPoint)centerForMenuPresentedForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [sheetCopy bounds];
  v14 = v13;

  [(_UIPreviewPresentationController *)self platterContainerCenterX];
  v16 = v15;
  v23.origin.x = v6;
  v23.origin.y = v8;
  v23.size.width = v10;
  v23.size.height = v12;
  Height = CGRectGetHeight(v23);
  [(_UIPreviewPresentationController *)self minimumSpacingBetweenPlatterAndMenu];

  [(_UIPreviewPresentationController *)self _applyLayoutAdjustmentsForManagedViewWithPosition:v16, Height - (v14 * 0.5 + v18)];
  result.y = v20;
  result.x = v19;
  return result;
}

- (CGPoint)centerForMenuDismissedForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  [sheetCopy bounds];
  v8 = v7;

  [(_UIPreviewPresentationController *)self platterContainerCenterX];
  v10 = v6 + v8 * 0.5;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_configureDynamicsController
{
  previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];

  if (!previewActionSheet)
  {
    return;
  }

  v4 = [_UIPlatterMenuDynamicsController alloc];
  containerView = [(UIPresentationController *)self containerView];
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  platterView = [presentationContainerView platterView];
  previewActionSheet2 = [(_UIPreviewPresentationController *)self previewActionSheet];
  v21 = [(_UIPlatterMenuDynamicsController *)v4 initWithContainerView:containerView platterView:platterView menuView:previewActionSheet2 delegate:self];

  if (![(_UIPreviewPresentationController *)self _hasPreviewQuickActions])
  {
    [(_UIPlatterMenuDynamicsController *)v21 lockIntoYAxis];
  }

  revealPanningVelocityIntegrator = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];

  if (!revealPanningVelocityIntegrator)
  {
    v14 = 0.0;
    v12 = 0.0;
    goto LABEL_15;
  }

  revealPanningVelocityIntegrator2 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
  [revealPanningVelocityIntegrator2 velocity];
  v12 = v11;
  v14 = v13;

  if (v14 < 0.0)
  {
    revealPanningVelocityIntegrator = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
    [revealPanningVelocityIntegrator velocity];
    if (fabs(v15) > -300.0)
    {
      revealPanningVelocityIntegrator3 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [revealPanningVelocityIntegrator3 offset];
      v18 = fabs(v17);

      LODWORD(revealPanningVelocityIntegrator) = v18 > 44.0;
      if (v18 > 44.0)
      {
        v12 = 0.0;
      }

      goto LABEL_14;
    }
  }

  LODWORD(revealPanningVelocityIntegrator) = 0;
LABEL_14:
  [(_UIPreviewPresentationController *)self setRevealPanningVelocityIntegrator:0];
LABEL_15:
  [(_UIPreviewPresentationController *)self setPlatterMenuController:v21];
  panningGestureRecognizerInProgress = [(_UIPreviewPresentationController *)self panningGestureRecognizerInProgress];
  if (revealPanningVelocityIntegrator && !panningGestureRecognizerInProgress && ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 2 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 3))
  {
    platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
    [platterMenuController _animateToPlatterPresentedWithVelocity:{v12, v14}];
  }
}

- (void)_invokeCommitHandlerFromInteractionProgress
{
  [(_UIPreviewPresentationController *)self setInteractionProgressForCommit:0];
  [(_UIPreviewPresentationController *)self setHasAskedForCommitInternally:1];
  forcePresentationControllerDelegate = [(_UIPreviewPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [forcePresentationControllerDelegate forcePresentationControllerWantsToCommit:self];
  }
}

- (void)_dismissPresentation
{
  platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
  [platterMenuController resetAnimator];

  [(_UIPreviewPresentationController *)self _dismissPresentationWithCompletion:0];
}

- (void)_hideQuickActions
{
  leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [leadingQuickActionView setHidden:1];

  trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
  [trailingQuickActionView setHidden:1];
}

- (double)_quickActionSelectionOffset
{
  leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [leadingQuickActionView bounds];
  Width = CGRectGetWidth(v7);

  if (Width <= 2.22044605e-16)
  {
    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    [trailingQuickActionView bounds];
    Width = CGRectGetWidth(v8);
  }

  result = 44.0;
  if (Width <= 44.0)
  {
    return Width;
  }

  return result;
}

- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)style
{
  [(_UIPreviewPresentationController *)self _quickActionSelectionOffset];
  v5 = 2.0;
  if (style == 2)
  {
    v5 = 3.5;
  }

  return v5 * v4;
}

- (void)_updateVisibiltyOfPreviewActionChromeForCurrentState
{
  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 2 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 3)
  {
    if ([(_UIPreviewPresentationController *)self _hasPreviewQuickActions])
    {
      platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
      [platterMenuController currentTranslation];
      v5 = fabs(v4);

      trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      isHidden = [trailingQuickActionView isHidden];

      if (v5 < 2.22044605e-16 != isHidden)
      {
        trailingQuickActionView2 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
        [trailingQuickActionView2 setHidden:v5 < 2.22044605e-16];
      }

      leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      isHidden2 = [leadingQuickActionView isHidden];

      if (v5 < 2.22044605e-16 != isHidden2)
      {
        leadingQuickActionView2 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
        [leadingQuickActionView2 setHidden:v5 < 2.22044605e-16];
      }
    }

    if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
    {
      if ([(_UIPreviewPresentationController *)self _platterIsInInitialPositionMostly])
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      actionSheetAvailableImageView = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
      [actionSheetAvailableImageView alpha];
      v15 = v14;

      if (v12 != v15)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __88___UIPreviewPresentationController__updateVisibiltyOfPreviewActionChromeForCurrentState__block_invoke;
        v16[3] = &unk_1E70F32F0;
        v16[4] = self;
        *&v16[5] = v12;
        [UIView animateWithDuration:v16 animations:0.2];
      }
    }
  }
}

- (BOOL)_hasPreviewQuickActions
{
  leadingPreviewAction = [(_UIPreviewPresentationController *)self leadingPreviewAction];
  if (leadingPreviewAction)
  {
    v4 = 1;
  }

  else
  {
    trailingPreviewAction = [(_UIPreviewPresentationController *)self trailingPreviewAction];
    v4 = trailingPreviewAction != 0;
  }

  return v4;
}

- (BOOL)_hasSelectedQuickAction
{
  if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
  {
    return 1;
  }

  return [(_UIPreviewPresentationController *)self trailingQuickActionViewSelected];
}

- (BOOL)_hasPreviewActions
{
  previewActionItems = [(_UIPreviewPresentationController *)self previewActionItems];
  v3 = [previewActionItems count] != 0;

  return v3;
}

- (void)_presentSubActionSheetForPreviewActionGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy)
  {
    _actions = [groupCopy _actions];
    v7 = [_actions count];

    if (v7)
    {
      _actions2 = [v5 _actions];
      v9 = [(_UIPreviewPresentationController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:_actions2];

      previewActionSheet = [(_UIPreviewPresentationController *)self previewActionSheet];
      objc_initWeak(location, self);
      containerView = [(UIPresentationController *)self containerView];
      window = [containerView window];
      [window setUserInteractionEnabled:0];

      platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
      [platterMenuController resetAnimator];

      [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewPresentedForActionSheet:v9];
      v15 = v14;
      v17 = v16;
      [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:previewActionSheet];
      v19 = v18;
      v21 = v20;
      [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:previewActionSheet];
      v23 = v22;
      v25 = v24;
      [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:v9];
      v27 = v26;
      v29 = v28;
      [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:v9];
      v42 = v31;
      v43 = v30;
      [v9 setCenter:{v27, v29}];
      [previewActionSheet setCenter:{v19, v21}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke;
      aBlock[3] = &unk_1E70F6848;
      aBlock[4] = self;
      aBlock[5] = v15;
      aBlock[6] = v17;
      v32 = _Block_copy(aBlock);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_2;
      v58[3] = &unk_1E70F6848;
      v33 = previewActionSheet;
      v59 = v33;
      v60 = v23;
      v61 = v25;
      v34 = _Block_copy(v58);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_3;
      v54[3] = &unk_1E70F6848;
      v35 = v9;
      v55 = v35;
      v56 = v43;
      v57 = v42;
      v36 = _Block_copy(v54);
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_4;
      v52[3] = &unk_1E70F0F78;
      v37 = v32;
      v53 = v37;
      [UIView animateWithDuration:v52 animations:&__block_literal_global_457 completion:0.4];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_6;
      v50[3] = &unk_1E70F0F78;
      v38 = v34;
      v51 = v38;
      [UIView animateWithDuration:0 delay:v50 options:&__block_literal_global_79_0 animations:0.2 completion:0.0];
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_8;
      v48[3] = &unk_1E70F0F78;
      v39 = v36;
      v49 = v39;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __80___UIPreviewPresentationController__presentSubActionSheetForPreviewActionGroup___block_invoke_9;
      v44[3] = &unk_1E70F8908;
      objc_copyWeak(&v47, location);
      v40 = v35;
      v45 = v40;
      v41 = v33;
      v46 = v41;
      [UIView animateWithDuration:0 delay:v48 options:v44 animations:0.2 completion:0.2];

      objc_destroyWeak(&v47);
      objc_destroyWeak(location);
    }
  }
}

- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)items
{
  itemsCopy = items;
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView _standardPreferredContentSize];
  v7 = v6;

  presentationContainerView2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView2 bounds];
  v9 = CGRectGetHeight(v23) * 0.7;

  v10 = [[_UIPreviewActionSheetView alloc] initWithFrame:0 title:itemsCopy items:0.0 contentInsets:0.0, v7, v9, 20.0, 0.0, 20.0, 0.0];
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  objc_initWeak(&location, presentedViewController);

  objc_initWeak(&from, self);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __93___UIPreviewPresentationController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke;
  v17 = &unk_1E711B220;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  [(_UIPreviewActionSheetView *)v10 setCompletionHandler:&v14];
  v12 = [(_UIPreviewPresentationController *)self actionSheetContainerView:v14];
  [v12 addSubview:v10];

  [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)v10 setNeedsLayout];
  [(UIView *)v10 layoutIfNeeded];
  [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:1];
  [(UIView *)v10 setAutoresizingMask:0];
  [(_UIPreviewPresentationController *)self _dismissedActionSheetCenterForActionSheet:v10];
  [(UIView *)v10 setCenter:?];
  [(_UIPreviewActionSheetView *)v10 setDelegate:self];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v10;
}

- (CGPoint)_dismissedActionSheetCenterForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  superview = [sheetCopy superview];
  [superview bounds];
  MidX = CGRectGetMidX(v20);
  superview2 = [sheetCopy superview];
  [superview2 bounds];
  Height = CGRectGetHeight(v21);
  [sheetCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = Height + CGRectGetHeight(v22) * 0.5;

  v17 = MidX;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (CGPoint)_presentedActionSheetCenterForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  superview = [sheetCopy superview];
  [superview bounds];
  MidX = CGRectGetMidX(v20);
  superview2 = [sheetCopy superview];
  [superview2 bounds];
  Height = CGRectGetHeight(v21);
  [sheetCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = Height + CGRectGetHeight(v22) * -0.5 + -20.0;

  v17 = MidX;
  v18 = v16;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)_dismissPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_UIPreviewPresentationController *)self setPreDismissAnimationsInflight:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___UIPreviewPresentationController__dismissPresentationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E70F37C0;
  aBlock[4] = self;
  v5 = completionCopy;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  actionSheetAvailableImageView = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
  [actionSheetAvailableImageView setHidden:1];

  if (![(_UIPreviewPresentationController *)self _platterIsSelectingPreviewActions])
  {
    [(_UIPreviewPresentationController *)self _hideQuickActions];
    if ([(_UIPreviewPresentationController *)self _platterIsInInitialPosition])
    {
      v6[2](v6);
      goto LABEL_9;
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __71___UIPreviewPresentationController__dismissPresentationWithCompletion___block_invoke_3;
    v9[3] = &unk_1E70F0F78;
    v10 = v6;
    [(_UIPreviewPresentationController *)self _restorePlatterToInitialStatePositionAnimatedWithCompletion:v9];
    v8 = v10;
LABEL_8:

    goto LABEL_9;
  }

  if (![(_UIPreviewPresentationController *)self _hasSelectedQuickAction])
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __71___UIPreviewPresentationController__dismissPresentationWithCompletion___block_invoke_2;
    v11[3] = &unk_1E70F0F78;
    v12 = v6;
    [(_UIPreviewPresentationController *)self _restorePlatterToInitialStatePositionAnimatedWithCompletion:v11];
    v8 = v12;
    goto LABEL_8;
  }

  [(_UIPreviewPresentationController *)self _dismissForSelectionQuickActionAnimated];
LABEL_9:
}

- (BOOL)_platterIsSelectingPreviewActions
{
  platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
  [platterMenuController currentTranslation];
  v4 = fabs(v3) > 2.0;

  return v4;
}

- (void)_configureActionSheetChromeViews
{
  leadingPreviewAction = [(_UIPreviewPresentationController *)self leadingPreviewAction];

  v4 = leadingPreviewAction != 0;
  v5 = MEMORY[0x1E695F058];
  if (leadingPreviewAction)
  {
    v6 = [[_UIPreviewQuickActionView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingPreviewAction2 = [(_UIPreviewPresentationController *)self leadingPreviewAction];
    [(_UIPreviewQuickActionView *)v6 setQuickAction:leadingPreviewAction2];

    [(UIView *)v6 layoutIfNeeded];
    presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
    [presentationContainerView addSubview:v6];

    containerScrollView = [(_UIPreviewPresentationController *)self containerScrollView];
    superview = [containerScrollView superview];

    v11 = v6;
    containerScrollView2 = [(_UIPreviewPresentationController *)self containerScrollView];
    [superview insertSubview:v11 below:containerScrollView2];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    leadingAnchor = [superview leadingAnchor];
    leadingAnchor2 = [(UIView *)v11 leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(_UIPreviewPresentationController *)self setLeadingQuickActionViewEdgeConstraint:v16];

    [(_UIPreviewPresentationController *)self initialCenterForLeadingSwipeActionView];
    [(_UIPreviewPresentationController *)self _leadingQuickActionOffsetForCenterPosition:v11 swipeView:?];
    v18 = v17;
    leadingQuickActionViewEdgeConstraint = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
    [leadingQuickActionViewEdgeConstraint setConstant:v18];

    leadingQuickActionViewEdgeConstraint2 = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
    [v13 addObject:leadingQuickActionViewEdgeConstraint2];

    centerYAnchor = [superview centerYAnchor];
    centerYAnchor2 = [(_UIPreviewQuickActionView *)v11 centerYAnchor];
    v23 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v13 addObject:v23];

    [MEMORY[0x1E69977A0] activateConstraints:v13];
    [(_UIPreviewPresentationController *)self setLeadingQuickActionView:v11];

    leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    [leadingQuickActionView setHidden:1];
  }

  trailingPreviewAction = [(_UIPreviewPresentationController *)self trailingPreviewAction];

  if (trailingPreviewAction)
  {
    v26 = [[_UIPreviewQuickActionView alloc] initWithFrame:*v5, v5[1], v5[2], v5[3]];
    [(UIView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    trailingPreviewAction2 = [(_UIPreviewPresentationController *)self trailingPreviewAction];
    [(_UIPreviewQuickActionView *)v26 setQuickAction:trailingPreviewAction2];

    [(UIView *)v26 layoutIfNeeded];
    presentationContainerView2 = [(_UIPreviewPresentationController *)self presentationContainerView];
    [presentationContainerView2 addSubview:v26];

    containerScrollView3 = [(_UIPreviewPresentationController *)self containerScrollView];
    superview2 = [containerScrollView3 superview];

    v31 = v26;
    containerScrollView4 = [(_UIPreviewPresentationController *)self containerScrollView];
    [superview2 insertSubview:v31 below:containerScrollView4];

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    trailingAnchor = [(UIView *)v31 trailingAnchor];
    trailingAnchor2 = [superview2 trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(_UIPreviewPresentationController *)self setTrailingQuickActionViewEdgeConstraint:v36];

    [(_UIPreviewPresentationController *)self initialCenterForTrailingSwipeActionView];
    [(_UIPreviewPresentationController *)self _trailingQuickActionOffsetForCenterPosition:v31 swipeView:?];
    v38 = v37;
    trailingQuickActionViewEdgeConstraint = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
    [trailingQuickActionViewEdgeConstraint setConstant:v38];

    trailingQuickActionViewEdgeConstraint2 = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
    [v33 addObject:trailingQuickActionViewEdgeConstraint2];

    centerYAnchor3 = [(_UIPreviewQuickActionView *)v31 centerYAnchor];
    centerYAnchor4 = [superview2 centerYAnchor];
    v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v33 addObject:v43];

    [MEMORY[0x1E69977A0] activateConstraints:v33];
    [(_UIPreviewPresentationController *)self setTrailingQuickActionView:v31];

    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    v4 = 1;
    [trailingQuickActionView setHidden:1];
  }

  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {
    containerScrollView5 = [(_UIPreviewPresentationController *)self containerScrollView];
    superview3 = [containerScrollView5 superview];

    v47 = _UIImageWithName(@"uippc-arrow-up-gray.png");
    v48 = [v47 imageWithRenderingMode:2];

    v49 = [[UIImageView alloc] initWithImage:v48];
    v50 = +[UIColor _controlForegroundColor];
    [(UIView *)v49 setTintColor:v50];

    [(UIImageView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [superview3 addSubview:v49];
    platterView = [(_UIPreviewPresentationController *)self platterView];
    centerXAnchor = [(UIView *)v49 centerXAnchor];
    centerXAnchor2 = [platterView centerXAnchor];
    v54 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v54 setActive:1];

    bottomAnchor = [(UIView *)v49 bottomAnchor];
    topAnchor = [platterView topAnchor];
    v57 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:-12.0];
    [v57 setActive:1];

    [(UIView *)v49 setAlpha:0.0];
    [(_UIPreviewPresentationController *)self setActionSheetAvailableImageView:v49];
  }

  if (v4)
  {
    containerView = [(UIPresentationController *)self containerView];
    [containerView setNeedsLayout];

    containerView2 = [(UIPresentationController *)self containerView];
    [containerView2 layoutIfNeeded];
  }
}

- (BOOL)_platterIsInInitialPositionMostly
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v13 = round(CGRectGetMidY(v22) + -22.0);
  presentationContainerView2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  platterView = [presentationContainerView2 platterView];
  [platterView center];
  v20.x = v16;
  v20.y = v17;
  v23.size.width = 44.0;
  v23.origin.x = round(MidX + -22.0);
  v23.origin.y = v13;
  v23.size.height = 44.0;
  v18 = CGRectContainsPoint(v23, v20);

  return v18;
}

- (BOOL)_platterIsInInitialPosition
{
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  [presentationContainerView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  MidX = CGRectGetMidX(v21);
  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v13 = round(CGRectGetMidY(v22) + -1.0);
  presentationContainerView2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  platterView = [presentationContainerView2 platterView];
  [platterView center];
  v20.x = v16;
  v20.y = v17;
  v23.size.width = 2.0;
  v23.size.height = 2.0;
  v23.origin.x = round(MidX + -1.0);
  v23.origin.y = v13;
  v18 = CGRectContainsPoint(v23, v20);

  return v18;
}

- (void)_restorePlatterToInitialStatePositionAnimatedWithCompletion:(id)completion
{
  completionCopy = completion;
  containerView = [(UIPresentationController *)self containerView];
  window = [containerView window];
  [window setUserInteractionEnabled:0];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96___UIPreviewPresentationController__restorePlatterToInitialStatePositionAnimatedWithCompletion___block_invoke;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __96___UIPreviewPresentationController__restorePlatterToInitialStatePositionAnimatedWithCompletion___block_invoke_2;
  v8[3] = &unk_1E70FE248;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [UIView animateWithDuration:v10 animations:v8 completion:0.175];
}

- (void)_dismissForSelectionQuickActionAnimated
{
  [(_UIPreviewPresentationController *)self setPreDismissAnimationsInflight:1];
  if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
  {
    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
LABEL_5:
    v4 = trailingQuickActionView;
    [trailingQuickActionView setHidden:1];

    goto LABEL_6;
  }

  if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
  {
    trailingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    goto LABEL_5;
  }

LABEL_6:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke_2;
  v10[3] = &unk_1E70F3590;
  v10[4] = self;
  v6 = _Block_copy(v10);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75___UIPreviewPresentationController__dismissForSelectionQuickActionAnimated__block_invoke_3;
  v8[3] = &unk_1E70F3608;
  v9 = v6;
  v7 = v6;
  [UIView animateWithDuration:v5 animations:v8 completion:0.2];
}

- (void)_dismissForHandledActionWithCompletion:(id)completion
{
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  presentedViewController = [(UIPresentationController *)self presentedViewController];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke_2;
  v14 = &unk_1E710B1B0;
  selfCopy = self;
  v16 = presentedViewController;
  v17 = completionCopy;
  v7 = completionCopy;
  v8 = presentedViewController;
  v9 = _Block_copy(&v11);
  v10 = [(_UIPreviewPresentationController *)self platterMenuController:v11];
  [v10 resetAnimator];

  [(_UIPreviewPresentationController *)self setHasAskedForDismissalInternally:1];
  [UIView animateWithDuration:v5 animations:v9 completion:0.225];
}

- (void)setPanningGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  panningGestureRecognizer = self->_panningGestureRecognizer;
  v8 = recognizerCopy;
  if (panningGestureRecognizer != recognizerCopy)
  {
    if (panningGestureRecognizer)
    {
      [(UIGestureRecognizer *)panningGestureRecognizer removeTarget:self action:0];
    }

    objc_storeStrong(&self->_panningGestureRecognizer, recognizer);
    v7 = self->_panningGestureRecognizer;
    if (v7)
    {
      [(UIGestureRecognizer *)v7 addTarget:self action:sel__panningGestureRecognizerDidFire_];
    }
  }
}

- (void)_panningGestureRecognizerDidFire:(id)fire
{
  fireCopy = fire;
  if ([fireCopy state] == 1 || objc_msgSend(fireCopy, "state") == 2)
  {
    v4 = 1;
  }

  else
  {
    if ([fireCopy state] != 3 && objc_msgSend(fireCopy, "state") != 5 && objc_msgSend(fireCopy, "state") != 4)
    {
      goto LABEL_9;
    }

    v4 = 0;
  }

  [(_UIPreviewPresentationController *)self setPanningGestureRecognizerInProgress:v4];
LABEL_9:
  presentationContainerView = [(_UIPreviewPresentationController *)self presentationContainerView];
  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 1 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 2)
  {
    platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];

    if (!platterMenuController)
    {
      revealPanningVelocityIntegrator = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [fireCopy locationInView:presentationContainerView];
      [revealPanningVelocityIntegrator addSample:?];
    }
  }

  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 2 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 3)
  {
    [fireCopy locationInView:presentationContainerView];
    v9 = v8;
    v11 = v10;
    if ([fireCopy state] == 1)
    {
      platterMenuController2 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (platterMenuController2)
      {
        platterMenuController3 = [(_UIPreviewPresentationController *)self platterMenuController];
        [platterMenuController3 didBeginPanningWithPoint:{v9, v11}];

        [(_UIPreviewPresentationController *)self setDidSendBeginEvent:1];
      }
    }

    else if ([fireCopy state] == 2)
    {
      platterMenuController4 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (platterMenuController4)
      {
        if (![(_UIPreviewPresentationController *)self didSendBeginEvent])
        {
          [(_UIPreviewPresentationController *)self setDidSendBeginEvent:1];
          platterMenuController5 = [(_UIPreviewPresentationController *)self platterMenuController];
          [platterMenuController5 didBeginPanningWithPoint:{v9, v11}];
        }

        platterMenuController6 = [(_UIPreviewPresentationController *)self platterMenuController];
        [platterMenuController6 didPanWithPoint:{v9, v11}];

        [(_UIPreviewPresentationController *)self _updateVisibiltyOfPreviewActionChromeForCurrentState];
        [(_UIPreviewPresentationController *)self updateSwipeActionsIfApplicable];
      }
    }

    else
    {
      [(_UIPreviewPresentationController *)self setupAdditionalModalGestureRecognizers];
      platterMenuController7 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (platterMenuController7)
      {
        [(_UIPreviewPresentationController *)self setDidSendBeginEvent:0];
        platterMenuController8 = [(_UIPreviewPresentationController *)self platterMenuController];
        [platterMenuController8 didEndPanningWithPoint:{v9, v11}];

        platterMenuController9 = [(_UIPreviewPresentationController *)self platterMenuController];
        v20 = 0;
        if (([platterMenuController9 isMenuPresented] & 1) == 0)
        {
          platterMenuController10 = [(_UIPreviewPresentationController *)self platterMenuController];
          isMenuPresenting = [platterMenuController10 isMenuPresenting];

          v20 = isMenuPresenting ^ 1;
        }

        platterMenuController11 = [(_UIPreviewPresentationController *)self platterMenuController];
        isSelectingSwipeAction = [platterMenuController11 isSelectingSwipeAction];

        if ((v20 & 1) != 0 || isSelectingSwipeAction)
        {
          platterMenuController12 = [(_UIPreviewPresentationController *)self platterMenuController];
          [platterMenuController12 resetAnimator];

          [(_UIPreviewPresentationController *)self _dismissPresentation];
        }
      }
    }
  }
}

- (void)updateSwipeActionsIfApplicable
{
  if ([(_UIPreviewPresentationController *)self _hasPreviewQuickActions])
  {
    platterMenuController = [(_UIPreviewPresentationController *)self platterMenuController];
    [platterMenuController currentTranslation];
    v5 = v4;

    containerView = [(UIPresentationController *)self containerView];
    v7 = containerView[13];

    leadingQuickActionView = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    quickAction = [leadingQuickActionView quickAction];

    if (quickAction)
    {
      leadingQuickActionView2 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      quickAction2 = [leadingQuickActionView2 quickAction];
      -[_UIPreviewPresentationController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [quickAction2 style]);
      v13 = v12;

      if (v13 > 0.0)
      {
        v14 = (v7 & 0x400000) != 0 ? v5 > v13 : v5 < -v13;
        [(_UIPreviewPresentationController *)self setLeadingQuickActionViewSelected:v14];
        if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
        {
          [(_UIPreviewPresentationController *)self setTrailingQuickActionViewSelected:0];
        }
      }
    }

    trailingQuickActionView = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    quickAction3 = [trailingQuickActionView quickAction];

    if (quickAction3)
    {
      trailingQuickActionView2 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      quickAction4 = [trailingQuickActionView2 quickAction];
      -[_UIPreviewPresentationController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [quickAction4 style]);
      v20 = v19;

      if (v20 > 0.0)
      {
        v21 = (v7 & 0x400000) != 0 ? v5 < -v20 : v5 > v20;
        [(_UIPreviewPresentationController *)self setTrailingQuickActionViewSelected:v21];
        if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
        {
          [(_UIPreviewPresentationController *)self setLeadingQuickActionViewSelected:0];
        }
      }
    }

    if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
    {
      trailingQuickActionView3 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      [trailingQuickActionView3 setHidden:0];

      leadingQuickActionView3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      [leadingQuickActionView3 setHidden:1];
    }

    if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
    {
      leadingQuickActionView4 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      [leadingQuickActionView4 setHidden:0];

      trailingQuickActionView4 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      [trailingQuickActionView4 setHidden:1];
    }

    trailingQuickActionViewSelected = [(_UIPreviewPresentationController *)self trailingQuickActionViewSelected];
    trailingQuickActionView5 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    [trailingQuickActionView5 setSelected:trailingQuickActionViewSelected];

    leadingQuickActionViewSelected = [(_UIPreviewPresentationController *)self leadingQuickActionViewSelected];
    leadingQuickActionView5 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    [leadingQuickActionView5 setSelected:leadingQuickActionViewSelected];

    leadingQuickActionViewSelected2 = [(_UIPreviewPresentationController *)self leadingQuickActionViewSelected];
    platterMenuController2 = [(_UIPreviewPresentationController *)self platterMenuController];
    [platterMenuController2 setLeadingSwipeActionViewSelected:leadingQuickActionViewSelected2];

    trailingQuickActionViewSelected2 = [(_UIPreviewPresentationController *)self trailingQuickActionViewSelected];
    platterMenuController3 = [(_UIPreviewPresentationController *)self platterMenuController];
    [platterMenuController3 setTrailingSwipeActionViewSelected:trailingQuickActionViewSelected2];
  }
}

- (void)_setupInteractionProgressForBreathing
{
  interactionProgressForBreathing = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];

  if (!interactionProgressForBreathing)
  {
    v4 = [UIPreviewForceInteractionProgress alloc];
    actionSheetContainerView = [(_UIPreviewPresentationController *)self actionSheetContainerView];
    window = [actionSheetContainerView window];
    v7 = [(UIPreviewForceInteractionProgress *)v4 initWithView:window targetState:3];
    [(_UIPreviewPresentationController *)self setInteractionProgressForBreathing:v7];

    interactionProgressForBreathing2 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];
    [interactionProgressForBreathing2 setCompletesAtTargetState:0];

    interactionProgressForBreathing3 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];
    [interactionProgressForBreathing3 addProgressObserver:self];
  }

  [(_UIPreviewPresentationController *)self _beginBreathing];
}

- (void)setupAdditionalModalGestureRecognizers
{
  interactionProgressForCommit = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (!interactionProgressForCommit)
  {
    v4 = [UIPreviewForceInteractionProgress alloc];
    actionSheetContainerView = [(_UIPreviewPresentationController *)self actionSheetContainerView];
    window = [actionSheetContainerView window];
    v7 = [(UIPreviewForceInteractionProgress *)v4 initWithView:window targetState:3];
    [(_UIPreviewPresentationController *)self setInteractionProgressForCommit:v7];

    interactionProgressForCommit2 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];
    [interactionProgressForCommit2 setCompletesAtTargetState:0];

    interactionProgressForCommit3 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];
    [interactionProgressForCommit3 addProgressObserver:self];
  }

  [(_UIPreviewPresentationController *)self setPanningGestureRecognizer:0];
  modalPreviewActionsPanningGestureRecognizer = [(_UIPreviewPresentationController *)self modalPreviewActionsPanningGestureRecognizer];

  if (!modalPreviewActionsPanningGestureRecognizer)
  {
    v11 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__panningGestureRecognizerDidFire_];
    [(UIPanGestureRecognizer *)v11 setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v11 setMaximumNumberOfTouches:1];
    containerView = [(UIPresentationController *)self containerView];
    [containerView addGestureRecognizer:v11];

    [(_UIPreviewPresentationController *)self setModalPreviewActionsPanningGestureRecognizer:v11];
  }

  tapToDismissGestureRecognizer = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];

  if (!tapToDismissGestureRecognizer)
  {
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__tapToDismissPreviewWithActionsDidFire_];
    [(_UIPreviewPresentationController *)self setTapToDismissGestureRecognizer:v14];

    tapToDismissGestureRecognizer2 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [tapToDismissGestureRecognizer2 setNumberOfTapsRequired:1];

    tapToDismissGestureRecognizer3 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [tapToDismissGestureRecognizer3 setNumberOfTouchesRequired:1];

    containerView2 = [(UIPresentationController *)self containerView];
    tapToDismissGestureRecognizer4 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [containerView2 addGestureRecognizer:tapToDismissGestureRecognizer4];
  }
}

- (_UIForcePresentationControllerDelegate)forcePresentationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forcePresentationControllerDelegate);

  return WeakRetained;
}

- (UIPreviewInteractionController)previewInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_previewInteractionController);

  return WeakRetained;
}

- (UIViewControllerPreviewing)previewingContext
{
  WeakRetained = objc_loadWeakRetained(&self->_previewingContext);

  return WeakRetained;
}

@end