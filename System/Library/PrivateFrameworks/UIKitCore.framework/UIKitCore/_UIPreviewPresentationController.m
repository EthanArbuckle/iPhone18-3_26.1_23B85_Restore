@interface _UIPreviewPresentationController
+ (id)_backgroundEffectForTraitCollection:(id)a3 interactive:(BOOL)a4;
- (BOOL)_canCommitPresentation;
- (BOOL)_canDismissPresentation;
- (BOOL)_hasPreviewActions;
- (BOOL)_hasPreviewQuickActions;
- (BOOL)_hasSelectedQuickAction;
- (BOOL)_platterIsInInitialPosition;
- (BOOL)_platterIsInInitialPositionMostly;
- (BOOL)_platterIsSelectingPreviewActions;
- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)a3;
- (CGPoint)_dismissedActionSheetCenterForActionSheet:(id)a3;
- (CGPoint)_presentedActionSheetCenterForActionSheet:(id)a3;
- (CGPoint)centerForMenuDismissed;
- (CGPoint)centerForMenuDismissedForActionSheet:(id)a3;
- (CGPoint)centerForMenuPresented;
- (CGPoint)centerForMenuPresentedForActionSheet:(id)a3;
- (CGPoint)centerForPlatterWithMenuViewDismissed;
- (CGPoint)centerForPlatterWithMenuViewPresented;
- (CGPoint)centerForPlatterWithMenuViewPresentedForActionSheet:(id)a3;
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
- (_UIPreviewPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4;
- (double)_leadingQuickActionOffsetForCenterPosition:(CGPoint)a3 swipeView:(id)a4;
- (double)_quickActionSelectionOffset;
- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)a3;
- (double)_trailingQuickActionOffsetForCenterPosition:(CGPoint)a3 swipeView:(id)a4;
- (double)platterContainerCenterX;
- (double)platterContainerCenterY;
- (double)presentationViewCornerRadius;
- (id)_animatorForContainmentTransition;
- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)a3;
- (id)_viewsParticipatingInNavigationControllerTransition;
- (id)platterView;
- (void)_configureActionSheetChromeViews;
- (void)_configureDynamicsController;
- (void)_configureInitialActionSheetViewIfNeeded;
- (void)_dismissForHandledActionWithCompletion:(id)a3;
- (void)_dismissForSelectionQuickActionAnimated;
- (void)_dismissPresentation;
- (void)_dismissPresentationWithCompletion:(id)a3;
- (void)_hideQuickActions;
- (void)_invokeCommitHandlerFromInteractionProgress;
- (void)_layoutForDismissTransition;
- (void)_layoutForPreviewInteractionProgress:(double)a3;
- (void)_layoutForPreviewTransition;
- (void)_layoutForRevealTransition;
- (void)_layoutForRevealUnhighlightTransition:(double)a3;
- (void)_panningGestureRecognizerDidFire:(id)a3;
- (void)_prepareInitialSourceViewSnapshot;
- (void)_preparePresentationContainerViewForPreviewInteraction;
- (void)_preparePresentationContainerViewForPreviewTransition;
- (void)_presentSubActionSheetForPreviewActionGroup:(id)a3;
- (void)_presentationTransitionWillBeginForContainerEffectView:(id)a3;
- (void)_previewTransitionDidComplete:(BOOL)a3;
- (void)_restorePlatterToInitialStatePositionAnimatedWithCompletion:(id)a3;
- (void)_revealTransitionDidComplete:(BOOL)a3;
- (void)_setupInteractionProgressForBreathing;
- (void)_stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded;
- (void)_triggerQuickActionHandlerIfNeeded;
- (void)_unhighlightPreviewCellSnapshotViewsIfNeeded;
- (void)_updateBreathingTransformWithProgress:(double)a3 animated:(BOOL)a4;
- (void)_updateRevealContainerViewForSourceRect:(CGRect)a3;
- (void)_updateVisibiltyOfPreviewActionChromeForCurrentState;
- (void)_willCommitPresentation;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4;
- (void)interactionProgressDidUpdate:(id)a3;
- (void)platterMenuDynamicsController:(id)a3 didMoveSwipeView:(id)a4 toPosition:(CGPoint)a5;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
- (void)setPanningGestureRecognizer:(id)a3;
- (void)setPresentationViewCornerRadius:(double)a3;
- (void)setupAdditionalModalGestureRecognizers;
- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3;
- (void)updateSwipeActionsIfApplicable;
@end

@implementation _UIPreviewPresentationController

- (_UIPreviewPresentationController)initWithPresentedViewController:(id)a3 presentingViewController:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIPreviewPresentationController;
  v4 = [(UIPreviewPresentationController *)&v9 initWithPresentedViewController:a3 presentingViewController:a4];
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
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setPresentationViewCornerRadius:(double)a3
{
  v4 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v4 setCornerRadius:a3];
}

- (void)_presentationTransitionWillBeginForContainerEffectView:(id)a3
{
  v25.receiver = self;
  v25.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v25 _presentationTransitionWillBeginForContainerEffectView:a3];
  [(_UIPreviewPresentationController *)self _preferredSourceViewRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UIPreviewPresentationController *)self _updateRevealContainerViewForSourceRect:?];
  v12 = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  v13 = [v12 contentView];

  v14 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v13 addSubview:v14];

  v15 = [(UIPresentationController *)self sourceView];
  [v13 convertRect:v15 fromView:{v5, v7, v9, v11}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v24 setFrame:{v17, v19, v21, v23}];
}

- (void)presentationTransitionWillBegin
{
  v32.receiver = self;
  v32.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v32 presentationTransitionWillBegin];
  v3 = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  v4 = [v3 contentView];

  v5 = [UIScrollView alloc];
  [v4 bounds];
  v6 = [(UIScrollView *)v5 initWithFrame:?];
  [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIScrollView *)v6 setScrollEnabled:0];
  [v4 bounds];
  [(UIScrollView *)v6 setContentSize:v7, v8];
  [(UIScrollView *)v6 setShowsHorizontalScrollIndicator:0];
  [(UIScrollView *)v6 setShowsVerticalScrollIndicator:0];
  [v4 addSubview:v6];
  [(_UIPreviewPresentationController *)self setContainerScrollView:v6];
  v9 = [_UIPreviewPresentationContainerView alloc];
  [v4 bounds];
  v10 = [(_UIPreviewPresentationContainerView *)v9 initWithFrame:?];
  v11 = [(UIPresentationController *)self presentedViewController];
  v12 = [v11 view];
  [(_UIPreviewPresentationContainerView *)v10 setContentView:v12];

  [(UIView *)v10 setHidden:1];
  [(_UIPreviewPresentationController *)self setPresentationContainerView:v10];
  [(UIView *)v6 addSubview:v10];
  v13 = [UIView alloc];
  [v4 bounds];
  v14 = [(UIView *)v13 initWithFrame:?];
  [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 addSubview:v14];
  [(_UIPreviewPresentationController *)self setActionSheetContainerView:v14];
  v15 = _NSDictionaryOfVariableBindings(&cfstr_Containerscrol_0.isa, v6, v14, 0);
  v16 = [(UIView *)v6 centerXAnchor];
  v17 = [v4 centerXAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];
  [(_UIPreviewPresentationController *)self setContainerScrollViewXConstraint:v18];

  v19 = [(UIView *)v6 widthAnchor];
  v20 = [v4 widthAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v21 setActive:1];

  v22 = [(_UIPreviewPresentationController *)self containerScrollViewXConstraint];
  [v22 setActive:1];

  v23 = MEMORY[0x1E69977A0];
  v24 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[containerScrollView]|" options:0 metrics:0 views:v15];
  [v23 activateConstraints:v24];

  v25 = MEMORY[0x1E69977A0];
  v26 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"H:|[actionSheetContainerView]|" options:0 metrics:0 views:v15];
  [v25 activateConstraints:v26];

  v27 = MEMORY[0x1E69977A0];
  v28 = [MEMORY[0x1E69977A0] constraintsWithVisualFormat:@"V:|[actionSheetContainerView]|" options:0 metrics:0 views:v15];
  [v27 activateConstraints:v28];

  v29 = [(UIPresentationController *)self presentedViewController];
  v30 = [v29 view];
  [(_UIPreviewPresentationContainerView *)v10 setContentView:v30];

  [(UIView *)v10 setHidden:1];
  [(_UIPreviewPresentationController *)self setPresentationContainerView:v10];
  [(UIView *)v6 addSubview:v10];
  v31 = [(_UIPreviewPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v31 forcePresentationTransitionWillBegin:self];
  }

  [(_UIPreviewPresentationController *)self _unhighlightPreviewCellSnapshotViewsIfNeeded];
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v4 presentationTransitionDidEnd:a3];
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

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _UIPreviewPresentationController;
  [(UIPreviewPresentationController *)&v4 dismissalTransitionDidEnd:a3];
  [(_UIPreviewPresentationController *)self _triggerQuickActionHandlerIfNeeded];
}

- (void)containerViewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 containerViewWillLayoutSubviews];
  v3 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v4 = [(UIPresentationController *)self presentedViewController];
  [v4 preferredContentSize];
  [v3 setPreferredContentSize:?];

  v5 = [(UIPresentationController *)self containerView];
  [v5 bounds];
  [v3 setFrame:?];
}

- (id)_viewsParticipatingInNavigationControllerTransition
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [(UIPreviewPresentationController *)self presentationContainerEffectView];

  if (v3)
  {
    v4 = [(UIPreviewPresentationController *)self presentationContainerEffectView];
    v7[0] = v4;
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
  v4 = [(UIPreviewPresentationController *)self presentationContainerEffectView];
  v12[0] = v4;
  v11[1] = @"containerView";
  v5 = [(UIPresentationController *)self containerView];
  v12[1] = v5;
  v11[2] = @"presentationContainerView";
  v6 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v12[2] = v6;
  v11[3] = @"presentationView";
  v7 = [(UIPresentationController *)self _presentationView];
  v12[3] = v7;
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v5 = [(UIPresentationController *)self presentedViewController];
  [v5 preferredContentSize];
  [v4 setPreferredContentSize:?];

  [v4 setNeedsLayout];
}

- (void)systemLayoutFittingSizeDidChangeForChildContentContainer:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIPreviewPresentationController;
  [(UIPresentationController *)&v6 systemLayoutFittingSizeDidChangeForChildContentContainer:a3];
  v4 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v5 = [(UIPresentationController *)self presentedViewController];
  [v5 preferredContentSize];
  [v4 setPreferredContentSize:?];

  [v4 setNeedsLayout];
}

- (void)interactionProgressDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (v5 == v4)
  {
    if (![(_UIPreviewPresentationController *)self hasAskedForCommitInternally])
    {
      [v4 percentComplete];
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
    v6 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];

    if (v6 == v4)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __65___UIPreviewPresentationController_interactionProgressDidUpdate___block_invoke;
      v8[3] = &unk_1E70F35B8;
      v8[4] = self;
      v9 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v8);
    }

    else
    {
      [v4 percentComplete];
      [(_UIPreviewPresentationController *)self _layoutForPreviewInteractionProgress:?];
    }
  }
}

- (void)interactionProgress:(id)a3 didEnd:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (v7 == v6 && ![(_UIPreviewPresentationController *)self hasAskedForCommitInternally]&& v4 && [(_UIPreviewPresentationController *)self _canCommitPresentation])
  {

    [(_UIPreviewPresentationController *)self _invokeCommitHandlerFromInteractionProgress];
  }
}

- (void)_updateBreathingTransformWithProgress:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(_UIPreviewPresentationController *)self isBreathing])
  {
    v7 = [(_UIPreviewPresentationController *)self presentationContainerView];
    v8 = [v7 layer];

    if (v8)
    {
      [v8 sublayerTransform];
    }

    else
    {
      memset(&v36, 0, sizeof(v36));
    }

    CATransform3DGetAffineTransform(&m, &v36);
    v9 = m.a + m.c;
    v10 = [(_UIPreviewPresentationController *)self platterMenuController];
    [v10 currentVelocity];
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
        v16 = fmin(fmax(a3, 0.0), 1.0);
        v13 = 1.0 - v16 + v16 * 1.05;
        v14 = v16 * 10.0 + (1.0 - v16) * 0.0;
      }
    }

    if (v13 != v9)
    {
      if (v4)
      {
        v17 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
        v18 = [MEMORY[0x1E6979318] animationWithKeyPath:@"sublayerTransform"];
        [v18 setDuration:0.1];
        [v18 setTimingFunction:v17];
        v19 = MEMORY[0x1E696B098];
        v20 = [v8 presentationLayer];
        v21 = v20;
        if (v20)
        {
          [v20 sublayerTransform];
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

        [v8 addAnimation:v18 forKey:@"com.apple.breathing"];
        v25 = MEMORY[0x1E696B098];
        CGAffineTransformMakeScale(&m, v13, v13);
        CATransform3DMakeAffineTransform(&v36, &m);
        v26 = [v25 valueWithCATransform3D:&v36];
        [v8 setValue:v26 forKey:@"sublayerTransform"];

        v27 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform"];

        [v27 setDuration:0.1];
        [v27 setTimingFunction:v17];
        v28 = MEMORY[0x1E696B098];
        CGAffineTransformMakeTranslation(&v36, 0.0, -v14);
        v29 = [v28 valueWithCGAffineTransform:&v36];
        [v27 setToValue:v29];

        v30 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        v31 = [v30 layer];
        [v31 addAnimation:v27 forKey:@"com.apple.breathing.arrow"];

        CGAffineTransformMakeTranslation(&v35, 0.0, -v14);
        v32 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        *&v36.m11 = *&v35.a;
        *&v36.m13 = *&v35.c;
        *&v36.m21 = *&v35.tx;
        [v32 setTransform:&v36];
      }

      else
      {
        CGAffineTransformMakeScale(&v36, v13, v13);
        CATransform3DMakeAffineTransform(&v34, &v36);
        v36 = v34;
        [v8 setSublayerTransform:&v36];
        CGAffineTransformMakeTranslation(&v33, 0.0, -v14);
        v17 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
        *&v36.m11 = *&v33.a;
        *&v36.m13 = *&v33.c;
        *&v36.m21 = *&v33.tx;
        [v17 setTransform:&v36];
      }
    }
  }
}

- (NSArray)previewActionItems
{
  previewActionItems = self->_previewActionItems;
  if (!previewActionItems)
  {
    v4 = [(UIPresentationController *)self presentedViewController];
    v5 = [v4 previewActionItems];
    v6 = [v5 copy];
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
    v4 = [(UIPresentationController *)self presentedViewController];
    v5 = [v4 leadingPreviewAction];
    v6 = [v5 copy];
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
    v4 = [(UIPresentationController *)self presentedViewController];
    v5 = [v4 trailingPreviewAction];
    v6 = [v5 copy];
    v7 = self->_trailingPreviewAction;
    self->_trailingPreviewAction = v6;

    trailingPreviewAction = self->_trailingPreviewAction;
  }

  return trailingPreviewAction;
}

+ (id)_backgroundEffectForTraitCollection:(id)a3 interactive:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([objc_opt_class() _shouldApplyVisualEffectsToPresentingView])
  {
    v9.receiver = a1;
    v9.super_class = &OBJC_METACLASS____UIPreviewPresentationController;
    v7 = objc_msgSendSuper2(&v9, sel__backgroundEffectForTraitCollection_interactive_, v6, v4);
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
    v3 = [(_UIPreviewPresentationController *)self previewActionSheet];

    if (!v3)
    {
      v4 = [(_UIPreviewPresentationController *)self previewActionItems];
      v5 = [(_UIPreviewPresentationController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:v4];
      [(_UIPreviewPresentationController *)self setPreviewActionSheet:v5];

      v11 = [(_UIPreviewPresentationController *)self previewActionSheet];
      [(_UIPreviewPresentationController *)self _dismissedActionSheetCenterForActionSheet:v11];
      v7 = v6;
      v9 = v8;
      v10 = [(_UIPreviewPresentationController *)self previewActionSheet];
      [v10 setCenter:{v7, v9}];
    }
  }
}

- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIPreviewPresentationController *)self previewActionSheet];
  v7 = [v6 _window];
  [v7 _managedSafeAreaInsets];
  v9 = v8;

  if (fabs(v9) >= 2.22044605e-16)
  {
    v10 = [(_UIPreviewPresentationController *)self previewActionSheet];
    [v10 contentInsets];
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
  v3 = [(_UIPreviewPresentationController *)self revealContainerView];
  v4 = v5;
  [v3 setTransform:&v4];
}

- (void)_layoutForRevealUnhighlightTransition:(double)a3
{
  v3 = 1.0 - a3;
  v4 = [(_UIPreviewPresentationController *)self initialSourceViewSnapshot];
  [v4 setAlpha:v3];
}

- (void)_revealTransitionDidComplete:(BOOL)a3
{
  v4 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];

  if (v4)
  {
    v5 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];
    v5[2](v5, 1);
  }

  [(_UIPreviewPresentationController *)self _stopUnhighlightPreviewCellSnapshotViewAnimationIfNeeded];
}

- (void)_preparePresentationContainerViewForPreviewTransition
{
  v3 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __89___UIPreviewPresentationController__preparePresentationContainerViewForPreviewTransition__block_invoke;
  v48[3] = &unk_1E70F3590;
  v48[4] = self;
  [UIView performWithoutAnimation:v48];
  v13 = [v12 platterView];
  [v13 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = [v12 platterView];
  v23 = [v12 superview];
  [v22 convertRect:v23 toView:{v15, v17, v19, v21}];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v12 setAlpha:0.0];
  if (_AXSReduceMotionEnabled())
  {
    [v12 setBlurRadius:0.0];
    v32 = *(MEMORY[0x1E695EFD0] + 16);
    *&v47.a = *MEMORY[0x1E695EFD0];
    *&v47.c = v32;
    *&v47.tx = *(MEMORY[0x1E695EFD0] + 32);
    v33 = &v47;
  }

  else
  {
    [v12 setBlurRadius:60.0];
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

  [v12 setTransform:v33];
  [v12 setHidden:0];
  [v12 setShouldRasterizeForTransition:1];
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
  v3 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v3 setBlurRadius:60.0];

  v4 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v4 setAlpha:0.0];

  v5 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v5 setBlurRadius:0.0];

  v6 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v6 setAlpha:1.0];

  v7 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v8 = *(MEMORY[0x1E695EFD0] + 16);
  v9[0] = *MEMORY[0x1E695EFD0];
  v9[1] = v8;
  v9[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v7 setTransform:v9];
}

- (void)_previewTransitionDidComplete:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v5 setAlpha:1.0];

  v6 = [(_UIPreviewPresentationController *)self revealContainerView];
  [v6 setHidden:1];

  v7 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v7 setShouldRasterizeForTransition:0];

  if (v3)
  {
    [(_UIPreviewPresentationController *)self _preparePresentationContainerViewForPreviewInteraction];
    v8 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];

    if (v8)
    {
      v9 = [(_UIPreviewPresentationController *)self presentationPhaseCompletionBlock];
      v9[2](v9, 2);
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
  v3 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v4 = [(_UIPreviewPresentationController *)self revealContainerView];
  v5 = [v3 platterView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [v3 platterView];
  v15 = [v3 superview];
  [v14 convertRect:v15 toView:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [v4 frame];
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
    [v3 setTransform:&v49];
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
    [v3 setTransform:&v48];
    v35 = 60.0;
  }

  [v3 setBlurRadius:v35];
  [v3 setAlpha:0.0];
  v40 = v33[1];
  *&v49.a = *v33;
  *&v49.c = v40;
  *&v49.tx = v33[2];
  [v4 setTransform:&v49];
  [v4 setAlpha:1.0];
  [v4 setBlurRadius:0.0];
  v41 = [(UIPresentationController *)self containerView];
  [v41 setUserInteractionEnabled:0];

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
  v6 = [(_UIPreviewPresentationController *)self interactionProgressForPresentation];
  [v6 addProgressObserver:self];

  [(_UIPreviewPresentationController *)self _configureInitialActionSheetViewIfNeeded];
}

- (void)_layoutForPreviewInteractionProgress:(double)a3
{
  CGAffineTransformMakeScale(&v6, a3, a3);
  v4 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v5 = v6;
  [v4 setTransform:&v5];
}

- (void)_willCommitPresentation
{
  [(_UIPreviewPresentationController *)self _endBreathing];
  v3 = [(_UIPreviewPresentationController *)self platterMenuController];
  [v3 resetAnimator];

  v4 = [(_UIPreviewPresentationController *)self previewActionSheet];
  [v4 setHidden:1];

  v5 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [v5 setHidden:1];

  v6 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
  [v6 setHidden:1];

  v7 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
  [v7 setHidden:1];
}

- (BOOL)_canDismissPresentation
{
  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]- 4 < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_8;
  }

  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {
    v3 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];

    if (v3)
    {
      v4 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [v4 velocity];
      v6 = v5;

      if (v6 < 0.0)
      {
        v7 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
        [v7 offset];
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
      v12 = [(_UIPreviewPresentationController *)self platterMenuController];
      v10 = [v12 isMenuPresenting] ^ 1;

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
  v15 = [(UIPresentationController *)self presentedViewController];
  if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
  {
    v3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    v4 = [v3 quickAction];
    v5 = [v4 handler];

    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    v7 = [v6 quickAction];
    v8 = [v7 handler];
    v9 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    goto LABEL_7;
  }

  if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
  {
    v10 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    v11 = [v10 quickAction];
    v12 = [v11 handler];

    if (v12)
    {
      v6 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      v7 = [v6 quickAction];
      v8 = [v7 handler];
      v9 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
LABEL_7:
      v13 = v9;
      v14 = [v9 quickAction];
      (v8)[2](v8, v14, v15);
    }
  }

LABEL_8:
}

- (void)_prepareInitialSourceViewSnapshot
{
  v14 = [(UIPresentationController *)self sourceView];
  [(UIPresentationController *)self sourceRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_UIPreviewPresentationController *)self previewingContext];
  v12 = [v11 customViewForInteractiveHighlight];

  if (!v12)
  {
    v12 = [v14 resizableSnapshotViewFromRect:0 afterScreenUpdates:v4 withCapInsets:{v6, v8, v10, 0.0, 0.0, 0.0, 0.0}];
    [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshot:v12];
  }

  v13 = objc_alloc_init(_UIPreviewInteractionTransitionWindow);
  [v14 convertRect:0 toView:{v4, v6, v8, v10}];
  [(UIWindow *)v13 setFrame:?];
  [(UIWindow *)v13 setHidden:0];
  [(UIView *)v13 addSubview:v12];
  [(UIView *)v13 bounds];
  [v12 setFrame:?];
  [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshotWindow:v13];
}

- (void)_updateRevealContainerViewForSourceRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = [[_UIPreviewPresentationEffectView alloc] initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(UIView *)v13 setUserInteractionEnabled:0];
  v8 = [(UIPresentationController *)self sourceView];
  if (v8)
  {
    v9 = [(_UIPreviewPresentationController *)self previewingContext];
    v10 = [v9 customViewForInteractiveHighlight];

    if (v10)
    {
      [(UIView *)v13 addSubview:v10];
    }

    else if (![(_UIPreviewPresentationController *)self _sourceViewSnapshotAndScaleTransformSuppressed])
    {
      v11 = [v8 resizableSnapshotViewFromRect:0 afterScreenUpdates:x withCapInsets:{y, width, height, 0.0, 0.0, 0.0, 0.0}];
      [v11 setAutoresizingMask:18];
      [(UIView *)v13 addSubview:v11];
      v12 = [(_UIPreviewPresentationController *)self initialSourceViewSnapshot];
      [(UIView *)v13 insertSubview:v12 aboveSubview:v11];
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
  v3 = [(_UIPreviewPresentationController *)self unhighlightPreviewCellSnapshotViewAnimator];
  [v3 stopAnimation];

  [(_UIPreviewPresentationController *)self setUnhighlightPreviewCellSnapshotViewAnimator:0];

  [(_UIPreviewPresentationController *)self setInitialSourceViewSnapshotWindow:0];
}

- (CGRect)_preferredSourceViewRect
{
  v3 = [(UIPresentationController *)self sourceView];
  [(UIPresentationController *)self sourceRect];
  [UIForcePresentationHelper sourceRectForView:v3 proposedSourceRect:?];
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
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v2 bounds];
  MidX = CGRectGetMidX(v5);

  return MidX;
}

- (double)platterContainerCenterY
{
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v2 bounds];
  MidY = CGRectGetMidY(v5);

  return MidY;
}

- (CGRect)platterBounds
{
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v3 = [v2 platterView];
  [v3 bounds];
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
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v3 = [v2 platterView];

  return v3;
}

- (CGRect)platterContainerBounds
{
  v2 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v2 bounds];
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
  v3 = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewPresentedForActionSheet:v3];
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
  v3 = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:v3];
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
  v3 = [(_UIPreviewPresentationController *)self previewActionSheet];
  [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)platterMenuDynamicsController:(id)a3 didMoveSwipeView:(id)a4 toPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v16 = a4;
  v8 = [(_UIPreviewPresentationController *)self leadingQuickActionView];

  if (v8 == v16)
  {
    [(_UIPreviewPresentationController *)self _leadingQuickActionOffsetForCenterPosition:x swipeView:y];
    v12 = v14;
    v13 = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
  }

  else
  {
    v9 = [(_UIPreviewPresentationController *)self trailingQuickActionView];

    v10 = v16;
    if (v9 != v16)
    {
      goto LABEL_6;
    }

    [(_UIPreviewPresentationController *)self _trailingQuickActionOffsetForCenterPosition:x swipeView:y];
    v12 = v11;
    v13 = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
  }

  v15 = v13;
  [v13 setConstant:v12];

  v10 = v16;
LABEL_6:
}

- (double)_trailingQuickActionOffsetForCenterPosition:(CGPoint)a3 swipeView:(id)a4
{
  x = a3.x;
  [a4 bounds];
  v6 = x + CGRectGetWidth(v11) * 0.5;
  v7 = [(UIPresentationController *)self containerView];
  [v7 bounds];
  v9 = v8;

  return v6 - v9;
}

- (double)_leadingQuickActionOffsetForCenterPosition:(CGPoint)a3 swipeView:(id)a4
{
  x = a3.x;
  [a4 bounds];
  return -(x + v5 * -0.5);
}

- (CGPoint)initialCenterForLeadingSwipeActionView
{
  v3 = [(_UIPreviewPresentationController *)self leadingSwipeActionView];
  if (v3)
  {
    [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewDismissed];
    v5 = v4;
    v7 = v6;
    v8 = [(_UIPreviewPresentationController *)self platterView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v13 = round(v7 - v11 * 0.5);
    v14 = round(v5 - v9 * 0.5);

    [v3 bounds];
    v16 = v15;
    v23.origin.x = v14;
    v23.origin.y = v13;
    v23.size.width = v10;
    v23.size.height = v12;
    v17 = CGRectGetMinX(v23) + v16 * 0.5 + 2.0;
    v18 = [(UIPresentationController *)self containerView];
    [v18 bounds];
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
  v3 = [(_UIPreviewPresentationController *)self trailingSwipeActionView];
  if (v3)
  {
    [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewDismissed];
    v5 = v4;
    v7 = v6;
    v8 = [(_UIPreviewPresentationController *)self platterView];
    [v8 frame];
    v10 = v9;
    v12 = v11;
    v13 = round(v7 - v11 * 0.5);
    v14 = round(v5 - v9 * 0.5);

    [v3 bounds];
    v16 = v15;
    v23.origin.x = v14;
    v23.origin.y = v13;
    v23.size.width = v10;
    v23.size.height = v12;
    v17 = CGRectGetMaxX(v23) - (v16 * 0.5 + 2.0);
    v18 = [(UIPresentationController *)self containerView];
    [v18 bounds];
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

- (CGPoint)centerForPlatterWithMenuViewPresentedForActionSheet:(id)a3
{
  v4 = a3;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(_UIPreviewPresentationController *)self platterContainerCenterY];
  v14 = v13;
  [v4 bounds];
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

- (CGPoint)centerForMenuPresentedForActionSheet:(id)a3
{
  v4 = a3;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 bounds];
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

- (CGPoint)centerForMenuDismissedForActionSheet:(id)a3
{
  v4 = a3;
  [(_UIPreviewPresentationController *)self platterContainerBounds];
  v6 = v5;
  [v4 bounds];
  v8 = v7;

  [(_UIPreviewPresentationController *)self platterContainerCenterX];
  v10 = v6 + v8 * 0.5;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)_configureDynamicsController
{
  v3 = [(_UIPreviewPresentationController *)self previewActionSheet];

  if (!v3)
  {
    return;
  }

  v4 = [_UIPlatterMenuDynamicsController alloc];
  v5 = [(UIPresentationController *)self containerView];
  v6 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v7 = [v6 platterView];
  v8 = [(_UIPreviewPresentationController *)self previewActionSheet];
  v21 = [(_UIPlatterMenuDynamicsController *)v4 initWithContainerView:v5 platterView:v7 menuView:v8 delegate:self];

  if (![(_UIPreviewPresentationController *)self _hasPreviewQuickActions])
  {
    [(_UIPlatterMenuDynamicsController *)v21 lockIntoYAxis];
  }

  v9 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];

  if (!v9)
  {
    v14 = 0.0;
    v12 = 0.0;
    goto LABEL_15;
  }

  v10 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
  [v10 velocity];
  v12 = v11;
  v14 = v13;

  if (v14 < 0.0)
  {
    v9 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
    [v9 velocity];
    if (fabs(v15) > -300.0)
    {
      v16 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [v16 offset];
      v18 = fabs(v17);

      LODWORD(v9) = v18 > 44.0;
      if (v18 > 44.0)
      {
        v12 = 0.0;
      }

      goto LABEL_14;
    }
  }

  LODWORD(v9) = 0;
LABEL_14:
  [(_UIPreviewPresentationController *)self setRevealPanningVelocityIntegrator:0];
LABEL_15:
  [(_UIPreviewPresentationController *)self setPlatterMenuController:v21];
  v19 = [(_UIPreviewPresentationController *)self panningGestureRecognizerInProgress];
  if (v9 && !v19 && ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 2 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 3))
  {
    v20 = [(_UIPreviewPresentationController *)self platterMenuController];
    [v20 _animateToPlatterPresentedWithVelocity:{v12, v14}];
  }
}

- (void)_invokeCommitHandlerFromInteractionProgress
{
  [(_UIPreviewPresentationController *)self setInteractionProgressForCommit:0];
  [(_UIPreviewPresentationController *)self setHasAskedForCommitInternally:1];
  v3 = [(_UIPreviewPresentationController *)self forcePresentationControllerDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 forcePresentationControllerWantsToCommit:self];
  }
}

- (void)_dismissPresentation
{
  v3 = [(_UIPreviewPresentationController *)self platterMenuController];
  [v3 resetAnimator];

  [(_UIPreviewPresentationController *)self _dismissPresentationWithCompletion:0];
}

- (void)_hideQuickActions
{
  v3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [v3 setHidden:1];

  v4 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
  [v4 setHidden:1];
}

- (double)_quickActionSelectionOffset
{
  v3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
  [v3 bounds];
  Width = CGRectGetWidth(v7);

  if (Width <= 2.22044605e-16)
  {
    v5 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    [v5 bounds];
    Width = CGRectGetWidth(v8);
  }

  result = 44.0;
  if (Width <= 44.0)
  {
    return Width;
  }

  return result;
}

- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)a3
{
  [(_UIPreviewPresentationController *)self _quickActionSelectionOffset];
  v5 = 2.0;
  if (a3 == 2)
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
      v3 = [(_UIPreviewPresentationController *)self platterMenuController];
      [v3 currentTranslation];
      v5 = fabs(v4);

      v6 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      v7 = [v6 isHidden];

      if (v5 < 2.22044605e-16 != v7)
      {
        v8 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
        [v8 setHidden:v5 < 2.22044605e-16];
      }

      v9 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      v10 = [v9 isHidden];

      if (v5 < 2.22044605e-16 != v10)
      {
        v11 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
        [v11 setHidden:v5 < 2.22044605e-16];
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

      v13 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
      [v13 alpha];
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
  v3 = [(_UIPreviewPresentationController *)self leadingPreviewAction];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIPreviewPresentationController *)self trailingPreviewAction];
    v4 = v5 != 0;
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
  v2 = [(_UIPreviewPresentationController *)self previewActionItems];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_presentSubActionSheetForPreviewActionGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _actions];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [v5 _actions];
      v9 = [(_UIPreviewPresentationController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:v8];

      v10 = [(_UIPreviewPresentationController *)self previewActionSheet];
      objc_initWeak(location, self);
      v11 = [(UIPresentationController *)self containerView];
      v12 = [v11 window];
      [v12 setUserInteractionEnabled:0];

      v13 = [(_UIPreviewPresentationController *)self platterMenuController];
      [v13 resetAnimator];

      [(_UIPreviewPresentationController *)self centerForPlatterWithMenuViewPresentedForActionSheet:v9];
      v15 = v14;
      v17 = v16;
      [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:v10];
      v19 = v18;
      v21 = v20;
      [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:v10];
      v23 = v22;
      v25 = v24;
      [(_UIPreviewPresentationController *)self centerForMenuDismissedForActionSheet:v9];
      v27 = v26;
      v29 = v28;
      [(_UIPreviewPresentationController *)self centerForMenuPresentedForActionSheet:v9];
      v42 = v31;
      v43 = v30;
      [v9 setCenter:{v27, v29}];
      [v10 setCenter:{v19, v21}];
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
      v33 = v10;
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

- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v5 _standardPreferredContentSize];
  v7 = v6;

  v8 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v8 bounds];
  v9 = CGRectGetHeight(v23) * 0.7;

  v10 = [[_UIPreviewActionSheetView alloc] initWithFrame:0 title:v4 items:0.0 contentInsets:0.0, v7, v9, 20.0, 0.0, 20.0, 0.0];
  v11 = [(UIPresentationController *)self presentedViewController];
  objc_initWeak(&location, v11);

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

- (CGPoint)_dismissedActionSheetCenterForActionSheet:(id)a3
{
  v3 = a3;
  v4 = [v3 superview];
  [v4 bounds];
  MidX = CGRectGetMidX(v20);
  v6 = [v3 superview];
  [v6 bounds];
  Height = CGRectGetHeight(v21);
  [v3 bounds];
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

- (CGPoint)_presentedActionSheetCenterForActionSheet:(id)a3
{
  v3 = a3;
  v4 = [v3 superview];
  [v4 bounds];
  MidX = CGRectGetMidX(v20);
  v6 = [v3 superview];
  [v6 bounds];
  Height = CGRectGetHeight(v21);
  [v3 bounds];
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

- (void)_dismissPresentationWithCompletion:(id)a3
{
  v4 = a3;
  [(_UIPreviewPresentationController *)self setPreDismissAnimationsInflight:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __71___UIPreviewPresentationController__dismissPresentationWithCompletion___block_invoke;
  aBlock[3] = &unk_1E70F37C0;
  aBlock[4] = self;
  v5 = v4;
  v14 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [(_UIPreviewPresentationController *)self actionSheetAvailableImageView];
  [v7 setHidden:1];

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
  v2 = [(_UIPreviewPresentationController *)self platterMenuController];
  [v2 currentTranslation];
  v4 = fabs(v3) > 2.0;

  return v4;
}

- (void)_configureActionSheetChromeViews
{
  v3 = [(_UIPreviewPresentationController *)self leadingPreviewAction];

  v4 = v3 != 0;
  v5 = MEMORY[0x1E695F058];
  if (v3)
  {
    v6 = [[_UIPreviewQuickActionView alloc] initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(_UIPreviewPresentationController *)self leadingPreviewAction];
    [(_UIPreviewQuickActionView *)v6 setQuickAction:v7];

    [(UIView *)v6 layoutIfNeeded];
    v8 = [(_UIPreviewPresentationController *)self presentationContainerView];
    [v8 addSubview:v6];

    v9 = [(_UIPreviewPresentationController *)self containerScrollView];
    v10 = [v9 superview];

    v11 = v6;
    v12 = [(_UIPreviewPresentationController *)self containerScrollView];
    [v10 insertSubview:v11 below:v12];

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [v10 leadingAnchor];
    v15 = [(UIView *)v11 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [(_UIPreviewPresentationController *)self setLeadingQuickActionViewEdgeConstraint:v16];

    [(_UIPreviewPresentationController *)self initialCenterForLeadingSwipeActionView];
    [(_UIPreviewPresentationController *)self _leadingQuickActionOffsetForCenterPosition:v11 swipeView:?];
    v18 = v17;
    v19 = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
    [v19 setConstant:v18];

    v20 = [(_UIPreviewPresentationController *)self leadingQuickActionViewEdgeConstraint];
    [v13 addObject:v20];

    v21 = [v10 centerYAnchor];
    v22 = [(_UIPreviewQuickActionView *)v11 centerYAnchor];
    v23 = [v21 constraintEqualToAnchor:v22];
    [v13 addObject:v23];

    [MEMORY[0x1E69977A0] activateConstraints:v13];
    [(_UIPreviewPresentationController *)self setLeadingQuickActionView:v11];

    v24 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    [v24 setHidden:1];
  }

  v25 = [(_UIPreviewPresentationController *)self trailingPreviewAction];

  if (v25)
  {
    v26 = [[_UIPreviewQuickActionView alloc] initWithFrame:*v5, v5[1], v5[2], v5[3]];
    [(UIView *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [(_UIPreviewPresentationController *)self trailingPreviewAction];
    [(_UIPreviewQuickActionView *)v26 setQuickAction:v27];

    [(UIView *)v26 layoutIfNeeded];
    v28 = [(_UIPreviewPresentationController *)self presentationContainerView];
    [v28 addSubview:v26];

    v29 = [(_UIPreviewPresentationController *)self containerScrollView];
    v30 = [v29 superview];

    v31 = v26;
    v32 = [(_UIPreviewPresentationController *)self containerScrollView];
    [v30 insertSubview:v31 below:v32];

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v34 = [(UIView *)v31 trailingAnchor];
    v35 = [v30 trailingAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];
    [(_UIPreviewPresentationController *)self setTrailingQuickActionViewEdgeConstraint:v36];

    [(_UIPreviewPresentationController *)self initialCenterForTrailingSwipeActionView];
    [(_UIPreviewPresentationController *)self _trailingQuickActionOffsetForCenterPosition:v31 swipeView:?];
    v38 = v37;
    v39 = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
    [v39 setConstant:v38];

    v40 = [(_UIPreviewPresentationController *)self trailingQuickActionViewEdgeConstraint];
    [v33 addObject:v40];

    v41 = [(_UIPreviewQuickActionView *)v31 centerYAnchor];
    v42 = [v30 centerYAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    [v33 addObject:v43];

    [MEMORY[0x1E69977A0] activateConstraints:v33];
    [(_UIPreviewPresentationController *)self setTrailingQuickActionView:v31];

    v44 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    v4 = 1;
    [v44 setHidden:1];
  }

  if ([(_UIPreviewPresentationController *)self _hasPreviewActions])
  {
    v45 = [(_UIPreviewPresentationController *)self containerScrollView];
    v46 = [v45 superview];

    v47 = _UIImageWithName(@"uippc-arrow-up-gray.png");
    v48 = [v47 imageWithRenderingMode:2];

    v49 = [[UIImageView alloc] initWithImage:v48];
    v50 = +[UIColor _controlForegroundColor];
    [(UIView *)v49 setTintColor:v50];

    [(UIImageView *)v49 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v46 addSubview:v49];
    v51 = [(_UIPreviewPresentationController *)self platterView];
    v52 = [(UIView *)v49 centerXAnchor];
    v53 = [v51 centerXAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    [v54 setActive:1];

    v55 = [(UIView *)v49 bottomAnchor];
    v56 = [v51 topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:-12.0];
    [v57 setActive:1];

    [(UIView *)v49 setAlpha:0.0];
    [(_UIPreviewPresentationController *)self setActionSheetAvailableImageView:v49];
  }

  if (v4)
  {
    v58 = [(UIPresentationController *)self containerView];
    [v58 setNeedsLayout];

    v59 = [(UIPresentationController *)self containerView];
    [v59 layoutIfNeeded];
  }
}

- (BOOL)_platterIsInInitialPositionMostly
{
  v3 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v3 bounds];
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
  v14 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v15 = [v14 platterView];
  [v15 center];
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
  v3 = [(_UIPreviewPresentationController *)self presentationContainerView];
  [v3 bounds];
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
  v14 = [(_UIPreviewPresentationController *)self presentationContainerView];
  v15 = [v14 platterView];
  [v15 center];
  v20.x = v16;
  v20.y = v17;
  v23.size.width = 2.0;
  v23.size.height = 2.0;
  v23.origin.x = round(MidX + -1.0);
  v23.origin.y = v13;
  v18 = CGRectContainsPoint(v23, v20);

  return v18;
}

- (void)_restorePlatterToInitialStatePositionAnimatedWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UIPresentationController *)self containerView];
  v6 = [v5 window];
  [v6 setUserInteractionEnabled:0];

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
  v9 = v4;
  v7 = v4;
  [UIView animateWithDuration:v10 animations:v8 completion:0.175];
}

- (void)_dismissForSelectionQuickActionAnimated
{
  [(_UIPreviewPresentationController *)self setPreDismissAnimationsInflight:1];
  if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
  {
    v3 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
LABEL_5:
    v4 = v3;
    [v3 setHidden:1];

    goto LABEL_6;
  }

  if ([(_UIPreviewPresentationController *)self trailingQuickActionViewSelected])
  {
    v3 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
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

- (void)_dismissForHandledActionWithCompletion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = [(UIPresentationController *)self presentedViewController];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __75___UIPreviewPresentationController__dismissForHandledActionWithCompletion___block_invoke_2;
  v14 = &unk_1E710B1B0;
  v15 = self;
  v16 = v6;
  v17 = v4;
  v7 = v4;
  v8 = v6;
  v9 = _Block_copy(&v11);
  v10 = [(_UIPreviewPresentationController *)self platterMenuController:v11];
  [v10 resetAnimator];

  [(_UIPreviewPresentationController *)self setHasAskedForDismissalInternally:1];
  [UIView animateWithDuration:v5 animations:v9 completion:0.225];
}

- (void)setPanningGestureRecognizer:(id)a3
{
  v5 = a3;
  panningGestureRecognizer = self->_panningGestureRecognizer;
  v8 = v5;
  if (panningGestureRecognizer != v5)
  {
    if (panningGestureRecognizer)
    {
      [(UIGestureRecognizer *)panningGestureRecognizer removeTarget:self action:0];
    }

    objc_storeStrong(&self->_panningGestureRecognizer, a3);
    v7 = self->_panningGestureRecognizer;
    if (v7)
    {
      [(UIGestureRecognizer *)v7 addTarget:self action:sel__panningGestureRecognizerDidFire_];
    }
  }
}

- (void)_panningGestureRecognizerDidFire:(id)a3
{
  v26 = a3;
  if ([v26 state] == 1 || objc_msgSend(v26, "state") == 2)
  {
    v4 = 1;
  }

  else
  {
    if ([v26 state] != 3 && objc_msgSend(v26, "state") != 5 && objc_msgSend(v26, "state") != 4)
    {
      goto LABEL_9;
    }

    v4 = 0;
  }

  [(_UIPreviewPresentationController *)self setPanningGestureRecognizerInProgress:v4];
LABEL_9:
  v5 = [(_UIPreviewPresentationController *)self presentationContainerView];
  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 1 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 2)
  {
    v6 = [(_UIPreviewPresentationController *)self platterMenuController];

    if (!v6)
    {
      v7 = [(_UIPreviewPresentationController *)self revealPanningVelocityIntegrator];
      [v26 locationInView:v5];
      [v7 addSample:?];
    }
  }

  if ([(_UIPreviewPresentationController *)self currentPresentationPhase]== 2 || [(_UIPreviewPresentationController *)self currentPresentationPhase]== 3)
  {
    [v26 locationInView:v5];
    v9 = v8;
    v11 = v10;
    if ([v26 state] == 1)
    {
      v12 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (v12)
      {
        v13 = [(_UIPreviewPresentationController *)self platterMenuController];
        [v13 didBeginPanningWithPoint:{v9, v11}];

        [(_UIPreviewPresentationController *)self setDidSendBeginEvent:1];
      }
    }

    else if ([v26 state] == 2)
    {
      v14 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (v14)
      {
        if (![(_UIPreviewPresentationController *)self didSendBeginEvent])
        {
          [(_UIPreviewPresentationController *)self setDidSendBeginEvent:1];
          v15 = [(_UIPreviewPresentationController *)self platterMenuController];
          [v15 didBeginPanningWithPoint:{v9, v11}];
        }

        v16 = [(_UIPreviewPresentationController *)self platterMenuController];
        [v16 didPanWithPoint:{v9, v11}];

        [(_UIPreviewPresentationController *)self _updateVisibiltyOfPreviewActionChromeForCurrentState];
        [(_UIPreviewPresentationController *)self updateSwipeActionsIfApplicable];
      }
    }

    else
    {
      [(_UIPreviewPresentationController *)self setupAdditionalModalGestureRecognizers];
      v17 = [(_UIPreviewPresentationController *)self platterMenuController];

      if (v17)
      {
        [(_UIPreviewPresentationController *)self setDidSendBeginEvent:0];
        v18 = [(_UIPreviewPresentationController *)self platterMenuController];
        [v18 didEndPanningWithPoint:{v9, v11}];

        v19 = [(_UIPreviewPresentationController *)self platterMenuController];
        v20 = 0;
        if (([v19 isMenuPresented] & 1) == 0)
        {
          v21 = [(_UIPreviewPresentationController *)self platterMenuController];
          v22 = [v21 isMenuPresenting];

          v20 = v22 ^ 1;
        }

        v23 = [(_UIPreviewPresentationController *)self platterMenuController];
        v24 = [v23 isSelectingSwipeAction];

        if ((v20 & 1) != 0 || v24)
        {
          v25 = [(_UIPreviewPresentationController *)self platterMenuController];
          [v25 resetAnimator];

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
    v3 = [(_UIPreviewPresentationController *)self platterMenuController];
    [v3 currentTranslation];
    v5 = v4;

    v6 = [(UIPresentationController *)self containerView];
    v7 = v6[13];

    v8 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    v9 = [v8 quickAction];

    if (v9)
    {
      v10 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      v11 = [v10 quickAction];
      -[_UIPreviewPresentationController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [v11 style]);
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

    v15 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    v16 = [v15 quickAction];

    if (v16)
    {
      v17 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      v18 = [v17 quickAction];
      -[_UIPreviewPresentationController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [v18 style]);
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
      v22 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      [v22 setHidden:0];

      v23 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      [v23 setHidden:1];
    }

    if ([(_UIPreviewPresentationController *)self leadingQuickActionViewSelected])
    {
      v24 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
      [v24 setHidden:0];

      v25 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
      [v25 setHidden:1];
    }

    v26 = [(_UIPreviewPresentationController *)self trailingQuickActionViewSelected];
    v27 = [(_UIPreviewPresentationController *)self trailingQuickActionView];
    [v27 setSelected:v26];

    v28 = [(_UIPreviewPresentationController *)self leadingQuickActionViewSelected];
    v29 = [(_UIPreviewPresentationController *)self leadingQuickActionView];
    [v29 setSelected:v28];

    v30 = [(_UIPreviewPresentationController *)self leadingQuickActionViewSelected];
    v31 = [(_UIPreviewPresentationController *)self platterMenuController];
    [v31 setLeadingSwipeActionViewSelected:v30];

    v32 = [(_UIPreviewPresentationController *)self trailingQuickActionViewSelected];
    v33 = [(_UIPreviewPresentationController *)self platterMenuController];
    [v33 setTrailingSwipeActionViewSelected:v32];
  }
}

- (void)_setupInteractionProgressForBreathing
{
  v3 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];

  if (!v3)
  {
    v4 = [UIPreviewForceInteractionProgress alloc];
    v5 = [(_UIPreviewPresentationController *)self actionSheetContainerView];
    v6 = [v5 window];
    v7 = [(UIPreviewForceInteractionProgress *)v4 initWithView:v6 targetState:3];
    [(_UIPreviewPresentationController *)self setInteractionProgressForBreathing:v7];

    v8 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];
    [v8 setCompletesAtTargetState:0];

    v9 = [(_UIPreviewPresentationController *)self interactionProgressForBreathing];
    [v9 addProgressObserver:self];
  }

  [(_UIPreviewPresentationController *)self _beginBreathing];
}

- (void)setupAdditionalModalGestureRecognizers
{
  v3 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];

  if (!v3)
  {
    v4 = [UIPreviewForceInteractionProgress alloc];
    v5 = [(_UIPreviewPresentationController *)self actionSheetContainerView];
    v6 = [v5 window];
    v7 = [(UIPreviewForceInteractionProgress *)v4 initWithView:v6 targetState:3];
    [(_UIPreviewPresentationController *)self setInteractionProgressForCommit:v7];

    v8 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];
    [v8 setCompletesAtTargetState:0];

    v9 = [(_UIPreviewPresentationController *)self interactionProgressForCommit];
    [v9 addProgressObserver:self];
  }

  [(_UIPreviewPresentationController *)self setPanningGestureRecognizer:0];
  v10 = [(_UIPreviewPresentationController *)self modalPreviewActionsPanningGestureRecognizer];

  if (!v10)
  {
    v11 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__panningGestureRecognizerDidFire_];
    [(UIPanGestureRecognizer *)v11 setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v11 setMaximumNumberOfTouches:1];
    v12 = [(UIPresentationController *)self containerView];
    [v12 addGestureRecognizer:v11];

    [(_UIPreviewPresentationController *)self setModalPreviewActionsPanningGestureRecognizer:v11];
  }

  v13 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];

  if (!v13)
  {
    v14 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__tapToDismissPreviewWithActionsDidFire_];
    [(_UIPreviewPresentationController *)self setTapToDismissGestureRecognizer:v14];

    v15 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [v15 setNumberOfTapsRequired:1];

    v16 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [v16 setNumberOfTouchesRequired:1];

    v18 = [(UIPresentationController *)self containerView];
    v17 = [(_UIPreviewPresentationController *)self tapToDismissGestureRecognizer];
    [v18 addGestureRecognizer:v17];
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