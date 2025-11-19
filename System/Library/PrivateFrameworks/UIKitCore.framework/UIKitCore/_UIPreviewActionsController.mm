@interface _UIPreviewActionsController
+ (id)actionsControllerWithContainerView:(id)a3 platterView:(id)a4 presentedViewController:(id)a5 delegate:(id)a6;
- (BOOL)_hasPreviewSwipeActions;
- (BOOL)_hasSelectedSwipeAction;
- (BOOL)_platterIsInInitialPositionMostly;
- (BOOL)_previewActionsSheetIsVisible;
- (BOOL)_shouldDismiss;
- (BOOL)platterPanned;
- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)a3;
- (CGPoint)_centerForMenuDismissedForActionSheet:(id)a3;
- (CGPoint)_centerForMenuPresentedForActionSheet:(id)a3;
- (CGPoint)_centerForPlatterWithMenuViewPresentedForActionSheet:(id)a3;
- (CGPoint)centerForMenuDismissed;
- (CGPoint)centerForMenuPresented;
- (CGPoint)centerForPlatterWithMenuViewDismissed;
- (CGPoint)centerForPlatterWithMenuViewPresented;
- (CGPoint)initialCenterForLeadingSwipeActionView;
- (CGPoint)initialCenterForTrailingSwipeActionView;
- (CGPoint)lastPanningLocation;
- (CGRect)_initialPlatterFrame;
- (CGRect)frameForActionView;
- (CGSize)totalPanningTranslation;
- (NSArray)currentPreviewActionItems;
- (UIPreviewAction)leadingPreviewAction;
- (UIPreviewAction)trailingPreviewAction;
- (_UIPreviewActionsController)initWithContainerView:(id)a3 platterView:(id)a4 presentedViewController:(id)a5 delegate:(id)a6;
- (_UIPreviewActionsControllerDelegate)delegate;
- (_UIPreviewQuickActionView)leadingPreviewActionView;
- (_UIPreviewQuickActionView)trailingPreviewActionView;
- (double)_platterOffsetDistance;
- (double)_quickActionSelectionOffset;
- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)a3;
- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)a3;
- (void)_actionsControllerCommonInit;
- (void)_activateFeedbackIfNeeded;
- (void)_configureFeedbackGenerator;
- (void)_configurePlatterDynamicsController;
- (void)_deactivateFeedbackIfNeeded;
- (void)_disablePlatterController;
- (void)_dismissForSelectedSwipeAction;
- (void)_dismissWithAction:(id)a3;
- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)a3 finalSelectionState:(BOOL)a4;
- (void)_hideChromeAndSetAffordanceHidden:(BOOL)a3;
- (void)_presentSubactionsForActionGroup:(id)a3;
- (void)_setAffordanceAlpha:(double)a3 withDuration:(double)a4 hideOnCompletion:(BOOL)a5;
- (void)_updateAffordanceIfNecessary;
- (void)_updateSwipeActionsState;
- (void)beginPanningAtLocation:(CGPoint)a3;
- (void)dealloc;
- (void)dismissPreviewActionsWithCompletion:(id)a3;
- (void)endPanningAtLocation:(CGPoint)a3;
- (void)platterMenuDynamicsController:(id)a3 didMoveSwipeView:(id)a4 toPosition:(CGPoint)a5;
- (void)platterMenuDynamicsControllerDidDismissWithController:(id)a3;
- (void)setLeadingSwipeActionViewSelected:(BOOL)a3;
- (void)setTrailingSwipeActionViewSelected:(BOOL)a3;
- (void)translationDidUpdateForPlatterMenuDynamicsController:(id)a3;
- (void)updatePanningLocation:(CGPoint)a3;
@end

@implementation _UIPreviewActionsController

- (_UIPreviewActionsController)initWithContainerView:(id)a3 platterView:(id)a4 presentedViewController:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _UIPreviewActionsController;
  v15 = [(_UIPreviewActionsController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerView, a3);
    objc_storeStrong(&v16->_platterView, a4);
    objc_storeStrong(&v16->_presentedViewController, a5);
    objc_storeWeak(&v16->_delegate, v14);
    [(_UIPreviewActionsController *)v16 _actionsControllerCommonInit];
  }

  return v16;
}

- (void)_actionsControllerCommonInit
{
  v3 = [(_UIPreviewActionsController *)self currentPreviewActionItems];
  v4 = [(_UIPreviewActionsController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:v3];
  [(_UIPreviewActionsController *)self setPreviewActionsView:v4];

  v5 = [(_UIPreviewActionsController *)self previewActionsView];

  if (v5)
  {
    [(_UIPreviewActionsController *)self _memoizePreviewActionViews];
    [(_UIPreviewActionsController *)self _configurePlatterDynamicsController];
    v6 = objc_alloc_init(UIView);
    v7 = _UIImageWithName(@"uippc-arrow-up-gray.png");
    v8 = [v7 imageWithRenderingMode:2];

    v9 = [[UIImageView alloc] initWithImage:v8];
    v10 = +[UIColor whiteColor];
    [(UIView *)v9 setTintColor:v10];

    [(UIView *)v6 addSubview:v9];
    [(UIView *)v9 frame];
    [(UIView *)v6 setFrame:?];
    _updateAffordanceFrameOrigin(self->_platterView, v6);
    [(UIView *)v6 setAlpha:0.0];
    [(_UIPreviewActionsController *)self setAffordanceImageView:v9];
    v11 = [(UIView *)self->_platterView superview];
    [v11 addSubview:v6];

    [(_UIPreviewActionsController *)self setAffordanceView:v6];
    if (![(_UIPreviewActionsController *)self _hasPreviewSwipeActions])
    {
      [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController lockIntoYAxis];
    }
  }

  [(_UIPreviewActionsController *)self _configureFeedbackGenerator];
}

- (void)_configurePlatterDynamicsController
{
  v3 = [_UIPlatterMenuDynamicsController alloc];
  v7 = [(_UIPreviewActionsController *)self containerView];
  v4 = [(_UIPreviewActionsController *)self platterView];
  v5 = [(_UIPreviewActionsController *)self previewActionsView];
  v6 = [(_UIPlatterMenuDynamicsController *)v3 initWithContainerView:v7 platterView:v4 menuView:v5 delegate:self];
  [(_UIPreviewActionsController *)self setPlatterDynamicsController:v6];
}

- (void)dealloc
{
  [(UIView *)self->_leadingPreviewActionView removeFromSuperview];
  [(UIView *)self->_trailingPreviewActionView removeFromSuperview];
  [(UIView *)self->_previewActionsView removeFromSuperview];
  v3.receiver = self;
  v3.super_class = _UIPreviewActionsController;
  [(_UIPreviewActionsController *)&v3 dealloc];
}

+ (id)actionsControllerWithContainerView:(id)a3 platterView:(id)a4 presentedViewController:(id)a5 delegate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithContainerView:v13 platterView:v12 presentedViewController:v11 delegate:v10];

  return v14;
}

- (void)beginPanningAtLocation:(CGPoint)a3
{
  if (self->_platterDynamicsController)
  {
    y = a3.y;
    x = a3.x;
    [(_UIPreviewActionsController *)self setHasBegun:1];
    [(_UIPreviewActionsController *)self setTotalPanningTranslation:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(_UIPreviewActionsController *)self setLastPanningLocation:x, y];
    [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController didBeginPanningWithPoint:x, y];
  }

  [(_UIPreviewActionsController *)self _activateFeedbackIfNeeded:a3.x];
}

- (void)updatePanningLocation:(CGPoint)a3
{
  if (self->_platterDynamicsController)
  {
    y = a3.y;
    x = a3.x;
    width = self->_totalPanningTranslation.width;
    [(_UIPreviewActionsController *)self lastPanningLocation];
    v8 = width + vabdd_f64(v7, x);
    height = self->_totalPanningTranslation.height;
    [(_UIPreviewActionsController *)self lastPanningLocation];
    self->_totalPanningTranslation.width = v8;
    self->_totalPanningTranslation.height = height + vabdd_f64(v10, y);
    self->_lastPanningLocation.x = x;
    self->_lastPanningLocation.y = y;
    platterDynamicsController = self->_platterDynamicsController;

    [(_UIPlatterMenuDynamicsController *)platterDynamicsController didPanWithPoint:x, y];
  }
}

- (void)endPanningAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(_UIPreviewActionsController *)self _deactivateFeedbackIfNeeded];
  if (self->_platterDynamicsController)
  {
    [(_UIPreviewActionsController *)self setHasBegun:0];
    [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController didEndPanningWithPoint:x, y];
    if ([(_UIPreviewActionsController *)self _hasSelectedSwipeAction])
    {

      [(_UIPreviewActionsController *)self _dismissForSelectedSwipeAction];
    }

    else if ([(_UIPreviewActionsController *)self _shouldDismiss])
    {

      [(_UIPreviewActionsController *)self _dismissWithAction:0];
    }
  }
}

- (BOOL)platterPanned
{
  platterDynamicsController = self->_platterDynamicsController;
  if (platterDynamicsController)
  {
    LOBYTE(platterDynamicsController) = [(_UIPlatterMenuDynamicsController *)platterDynamicsController platterPanned];
  }

  return platterDynamicsController;
}

- (void)dismissPreviewActionsWithCompletion:(id)a3
{
  v8 = a3;
  [(_UIPreviewActionsController *)self _setAffordanceAlpha:1 withDuration:0.0 hideOnCompletion:0.1];
  [(_UIPreviewActionsController *)self _hideChromeAndSetAffordanceHidden:0];
  [(_UIPreviewActionsController *)self _platterOffsetDistance];
  v5 = v4;
  v6 = [(_UIPreviewActionsController *)self _isSwipeActionVisible];
  if (v5 <= 44.0 && !v6)
  {
    if (v8)
    {
      v8[2]();
    }
  }

  else
  {
    [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController _animateToPlatterDismissedWithDuration:v8 completion:0.225];
  }
}

- (CGRect)frameForActionView
{
  v2 = [(_UIPreviewActionsController *)self previewActionsView];
  [v2 frame];
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

- (void)_hideChromeAndSetAffordanceHidden:(BOOL)a3
{
  if (a3)
  {
    v4 = [(_UIPreviewActionsController *)self affordanceView];
    v5 = [v4 layer];
    v6 = [v5 animationForKey:@"opacity"];

    if (!v6)
    {
      v7 = [(_UIPreviewActionsController *)self affordanceView];
      [v7 setHidden:1];
    }
  }

  v8 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [v8 setHidden:1];

  v9 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [v9 setHidden:1];
}

- (double)_platterOffsetDistance
{
  [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController currentTranslation];
  v4 = v3;
  [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController currentTranslation];
  return sqrt((v4 - *MEMORY[0x1E695EFF8]) * (v4 - *MEMORY[0x1E695EFF8]) + (v5 - *(MEMORY[0x1E695EFF8] + 8)) * (v5 - *(MEMORY[0x1E695EFF8] + 8)));
}

- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(_UIPreviewActionsController *)self delegate];
    [v5 maximumPreviewActionsViewSizeForPreviewActionsController:self];
    v7 = v6;
    v9 = v8;

    v10 = [[_UIPreviewActionSheetView alloc] initWithFrame:0 title:v4 items:0.0 contentInsets:0.0, v7, v9, 20.0, 0.0, 20.0, 0.0];
    v11 = [(_UIPreviewActionsController *)self containerView];
    [v11 addSubview:v10];

    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v10 setNeedsLayout];
    [(UIView *)v10 layoutIfNeeded];
    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v10 setAutoresizingMask:0];
    [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:v10];
    [(UIView *)v10 setCenter:?];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __88___UIPreviewActionsController__makeAndAddToViewHierarchyPreviewActionSheetForMenuItems___block_invoke;
    v13[3] = &unk_1E711AD78;
    objc_copyWeak(&v14, &location);
    [(_UIPreviewActionSheetView *)v10 setCompletionHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSArray)currentPreviewActionItems
{
  currentPreviewActionItems = self->_currentPreviewActionItems;
  if (!currentPreviewActionItems)
  {
    v4 = [(_UIPreviewActionsController *)self presentedViewController];
    v5 = [v4 previewActionItems];

    if ([v5 count])
    {
      v6 = [v5 copy];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    v7 = self->_currentPreviewActionItems;
    self->_currentPreviewActionItems = v6;

    currentPreviewActionItems = self->_currentPreviewActionItems;
  }

  return currentPreviewActionItems;
}

- (UIPreviewAction)leadingPreviewAction
{
  leadingPreviewAction = self->_leadingPreviewAction;
  if (!leadingPreviewAction)
  {
    v4 = [(_UIPreviewActionsController *)self containerView];
    v5 = v4[13];

    v6 = [(_UIPreviewActionsController *)self presentedViewController];
    v7 = v6;
    if ((v5 & 0x400000) != 0)
    {
      [v6 trailingPreviewAction];
    }

    else
    {
      [v6 leadingPreviewAction];
    }
    v8 = ;
    v9 = [v8 copy];
    v10 = self->_leadingPreviewAction;
    self->_leadingPreviewAction = v9;

    leadingPreviewAction = self->_leadingPreviewAction;
  }

  return leadingPreviewAction;
}

- (UIPreviewAction)trailingPreviewAction
{
  trailingPreviewAction = self->_trailingPreviewAction;
  if (!trailingPreviewAction)
  {
    v4 = [(_UIPreviewActionsController *)self containerView];
    v5 = v4[13];

    v6 = [(_UIPreviewActionsController *)self presentedViewController];
    v7 = v6;
    if ((v5 & 0x400000) != 0)
    {
      [v6 leadingPreviewAction];
    }

    else
    {
      [v6 trailingPreviewAction];
    }
    v8 = ;
    v9 = [v8 copy];
    v10 = self->_trailingPreviewAction;
    self->_trailingPreviewAction = v9;

    trailingPreviewAction = self->_trailingPreviewAction;
  }

  return trailingPreviewAction;
}

- (_UIPreviewQuickActionView)leadingPreviewActionView
{
  if (!self->_leadingPreviewActionView)
  {
    v3 = [(_UIPreviewActionsController *)self leadingPreviewAction];

    if (v3)
    {
      v4 = [_UIPreviewQuickActionView alloc];
      v5 = [(_UIPreviewQuickActionView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      leadingPreviewActionView = self->_leadingPreviewActionView;
      self->_leadingPreviewActionView = v5;

      [(UIView *)self->_leadingPreviewActionView setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(_UIPreviewActionsController *)self leadingPreviewAction];
      [(_UIPreviewQuickActionView *)self->_leadingPreviewActionView setQuickAction:v7];

      [(UIView *)self->_leadingPreviewActionView layoutIfNeeded];
      v8 = [(_UIPreviewActionsController *)self platterView];
      v9 = [v8 superview];
      v10 = self->_leadingPreviewActionView;
      v11 = [(_UIPreviewActionsController *)self platterView];
      [v9 insertSubview:v10 belowSubview:v11];

      [(_UIPreviewActionsController *)self initialCenterForLeadingSwipeActionView];
      [(UIView *)self->_leadingPreviewActionView setCenter:?];
      [(UIView *)self->_leadingPreviewActionView setHidden:1];
    }
  }

  v12 = self->_leadingPreviewActionView;

  return v12;
}

- (_UIPreviewQuickActionView)trailingPreviewActionView
{
  if (!self->_trailingPreviewActionView)
  {
    v3 = [(_UIPreviewActionsController *)self trailingPreviewAction];

    if (v3)
    {
      v4 = [_UIPreviewQuickActionView alloc];
      v5 = [(_UIPreviewQuickActionView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      trailingPreviewActionView = self->_trailingPreviewActionView;
      self->_trailingPreviewActionView = v5;

      [(UIView *)self->_trailingPreviewActionView setTranslatesAutoresizingMaskIntoConstraints:0];
      v7 = [(_UIPreviewActionsController *)self trailingPreviewAction];
      [(_UIPreviewQuickActionView *)self->_trailingPreviewActionView setQuickAction:v7];

      [(UIView *)self->_trailingPreviewActionView layoutIfNeeded];
      v8 = [(_UIPreviewActionsController *)self platterView];
      v9 = [v8 superview];
      v10 = self->_trailingPreviewActionView;
      v11 = [(_UIPreviewActionsController *)self platterView];
      [v9 insertSubview:v10 belowSubview:v11];

      [(_UIPreviewActionsController *)self initialCenterForTrailingSwipeActionView];
      [(UIView *)self->_trailingPreviewActionView setCenter:?];
      [(UIView *)self->_trailingPreviewActionView setHidden:1];
    }
  }

  v12 = self->_trailingPreviewActionView;

  return v12;
}

- (CGRect)_initialPlatterFrame
{
  v3 = [(_UIPreviewActionsController *)self platterView];
  [v3 bounds];
  Width = CGRectGetWidth(v15);
  v5 = [(_UIPreviewActionsController *)self platterView];
  [v5 bounds];
  Height = CGRectGetHeight(v16);
  v7 = [(_UIPreviewActionsController *)self containerView];
  [v7 bounds];
  MidX = CGRectGetMidX(v17);
  v9 = [(_UIPreviewActionsController *)self containerView];
  [v9 bounds];
  v10 = round(CGRectGetMidY(v18) - Height * 0.5);

  v11 = round(MidX - Width * 0.5);
  v12 = v10;
  v13 = Width;
  v14 = Height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)_hasPreviewSwipeActions
{
  v3 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)_hasSelectedSwipeAction
{
  v3 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if ([v3 selected])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    v4 = [v5 selected];
  }

  return v4;
}

- (BOOL)_previewActionsSheetIsVisible
{
  v3 = [(_UIPreviewActionsController *)self previewActionsView];
  if (v3)
  {
    v4 = [(_UIPreviewActionsController *)self previewActionsView];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(_UIPreviewActionsController *)self containerView];
    [v13 bounds];
    v21.origin.x = v14;
    v21.origin.y = v15;
    v21.size.width = v16;
    v21.size.height = v17;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    v18 = CGRectIntersectsRect(v20, v21);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (double)_quickActionSelectionOffset
{
  v3 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [v3 bounds];
  Width = CGRectGetWidth(v7);

  if (Width <= 2.22044605e-16)
  {
    v5 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
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
  [(_UIPreviewActionsController *)self _quickActionSelectionOffset];
  v5 = 2.0;
  if (a3 == 2)
  {
    v5 = 3.5;
  }

  return v5 * v4;
}

- (void)_updateSwipeActionsState
{
  if ([(_UIPreviewActionsController *)self _hasPreviewSwipeActions])
  {
    v3 = [(_UIPreviewActionsController *)self platterDynamicsController];
    [v3 currentTranslation];
    v5 = v4;

    v6 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    [v6 setHidden:v5 > 0.0];

    v7 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    [v7 setHidden:v5 < 0.0];

    v8 = [(_UIPreviewActionsController *)self leadingPreviewActionView];

    if (v8)
    {
      v9 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      v10 = [v9 quickAction];
      -[_UIPreviewActionsController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [v10 style]);
      v12 = v11;

      if (v12 > 0.0)
      {
        [(_UIPreviewActionsController *)self setLeadingSwipeActionViewSelected:v5 < -v12];
        v13 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
        v14 = [v13 selected];

        if (v14)
        {
          v15 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
          [v15 setSelected:0];
        }
      }
    }

    v16 = [(_UIPreviewActionsController *)self trailingPreviewActionView];

    if (v16)
    {
      v17 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      v18 = [v17 quickAction];
      -[_UIPreviewActionsController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [v18 style]);
      v20 = v19;

      if (v20 > 0.0)
      {
        [(_UIPreviewActionsController *)self setTrailingSwipeActionViewSelected:v5 > v20];
        v21 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
        v22 = [v21 selected];

        if (v22)
        {
          v23 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
          [v23 setSelected:0];
        }
      }
    }

    v24 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    v25 = [v24 selected];

    if (v25)
    {
      v26 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      [v26 setHidden:0];

      v27 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      [v27 setHidden:1];
    }

    v28 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    v29 = [v28 selected];

    if (v29)
    {
      v30 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      [v30 setHidden:0];

      v31 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      [v31 setHidden:1];
    }
  }
}

- (void)_dismissForSelectedSwipeAction
{
  [(_UIPreviewActionsController *)self _disablePlatterController];
  v3 = [(_UIPreviewActionsController *)self containerView];
  [v3 bounds];
  MidX = CGRectGetMidX(v33);
  v5 = [(_UIPreviewActionsController *)self containerView];
  [v5 bounds];
  MidY = CGRectGetMidY(v34);

  v7 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if ([v7 selected])
  {
    [(_UIPreviewActionsController *)self leadingPreviewActionView];
  }

  else
  {
    [(_UIPreviewActionsController *)self trailingPreviewActionView];
  }
  v8 = ;

  [(_UIPreviewActionsController *)self centerForPlatterWithMenuViewDismissed];
  v10 = v9;
  v11 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  v12 = [v11 selected];

  if (v12)
  {
    v13 = [(_UIPreviewActionsController *)self containerView];
    [v13 bounds];
    Width = CGRectGetWidth(v35);
    v15 = [(_UIPreviewActionsController *)self platterView];
    [v15 bounds];
    v16 = Width + CGRectGetWidth(v36) * 0.5;
  }

  else
  {
    v13 = [(_UIPreviewActionsController *)self platterView];
    [v13 bounds];
    v16 = CGRectGetWidth(v37) * -0.5;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke;
  aBlock[3] = &unk_1E7100760;
  aBlock[4] = self;
  v29 = v16;
  v30 = v10;
  v17 = v8;
  v28 = v17;
  v31 = MidX;
  v32 = MidY;
  v18 = _Block_copy(aBlock);
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __61___UIPreviewActionsController__dismissForSelectedSwipeAction__block_invoke_2;
  v24 = &unk_1E70F3C60;
  v25 = self;
  v26 = v17;
  v19 = v17;
  v20 = _Block_copy(&v21);
  [UIView animateWithDuration:v18 animations:v20 completion:0.3, v21, v22, v23, v24, v25];
}

- (void)_dismissWithAction:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [(_UIPreviewActionsController *)self _hideChromeAndSetAffordanceHidden:0];
  }

  [(_UIPreviewActionsController *)self _disablePlatterController];
  [(_UIPreviewActionsController *)self centerForPlatterWithMenuViewDismissed];
  v7 = v6;
  if (v4)
  {
    v8 = [(_UIPreviewActionsController *)self platterView];
    [v8 bounds];
    v9 = -CGRectGetHeight(v18);
  }

  else
  {
    v9 = v5;
  }

  [(_UIPreviewActionsController *)self centerForMenuDismissed];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___UIPreviewActionsController__dismissWithAction___block_invoke;
  aBlock[3] = &unk_1E70F3B20;
  aBlock[4] = self;
  aBlock[5] = v7;
  *&aBlock[6] = v9;
  aBlock[7] = v10;
  aBlock[8] = v11;
  v12 = _Block_copy(aBlock);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50___UIPreviewActionsController__dismissWithAction___block_invoke_2;
  v15[3] = &unk_1E70F3C60;
  v15[4] = self;
  v16 = v4;
  v13 = v4;
  v14 = _Block_copy(v15);
  [UIView animateWithDuration:v12 animations:v14 completion:0.3];
}

- (BOOL)_shouldDismiss
{
  v3 = [(_UIPreviewActionsController *)self _previewActionsSheetIsVisible];
  v4 = [(_UIPreviewActionsController *)self _hasSelectedSwipeAction];
  v5 = [(_UIPreviewActionsController *)self platterDynamicsController];
  [v5 currentVelocity];
  v7 = v6 >= 0.1;

  return v7 || !v3 && !v4;
}

- (void)_disablePlatterController
{
  v3 = [(_UIPreviewActionsController *)self platterDynamicsController];
  [v3 resetAnimator];

  [(_UIPreviewActionsController *)self setPlatterDynamicsController:0];
}

- (BOOL)_platterIsInInitialPositionMostly
{
  v3 = [(_UIPreviewActionsController *)self containerView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = v5;
  v20.origin.y = v7;
  v20.size.width = v9;
  v20.size.height = v11;
  v13 = round(CGRectGetMidY(v20) + -22.0);
  v14 = [(_UIPreviewActionsController *)self platterView];
  [v14 center];
  v18.x = v15;
  v18.y = v16;
  v21.size.width = 44.0;
  v21.origin.x = round(MidX + -22.0);
  v21.origin.y = v13;
  v21.size.height = 44.0;
  LOBYTE(v3) = CGRectContainsPoint(v21, v18);

  return v3;
}

- (void)_presentSubactionsForActionGroup:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 _actions];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(_UIPreviewActionsController *)self previewActionsView];
      v9 = [v5 _actions];
      v10 = [(_UIPreviewActionsController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:v9];

      objc_initWeak(location, self);
      v11 = [(_UIPreviewActionsController *)self previewActionsView];
      v12 = [v11 window];
      [v12 setUserInteractionEnabled:0];

      [(_UIPreviewActionsController *)self _disablePlatterController];
      [(_UIPreviewActionsController *)self _centerForPlatterWithMenuViewPresentedForActionSheet:v10];
      v14 = v13;
      v16 = v15;
      [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:v8];
      v18 = v17;
      v20 = v19;
      [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:v8];
      v22 = v21;
      v24 = v23;
      [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:v10];
      v26 = v25;
      v28 = v27;
      [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:v10];
      v43 = v30;
      v44 = v29;
      [v10 setCenter:{v26, v28}];
      [v8 setCenter:{v18, v20}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke;
      aBlock[3] = &unk_1E70F6848;
      aBlock[4] = self;
      aBlock[5] = v14;
      aBlock[6] = v16;
      v31 = _Block_copy(aBlock);
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_2;
      v58[3] = &unk_1E70F6848;
      v32 = v8;
      v59 = v32;
      v60 = v22;
      v61 = v24;
      v33 = _Block_copy(v58);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_3;
      v54[3] = &unk_1E70F6848;
      v34 = v10;
      v55 = v34;
      v56 = v44;
      v57 = v43;
      v35 = _Block_copy(v54);
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_4;
      v50[3] = &unk_1E7103A08;
      objc_copyWeak(&v53, location);
      v36 = v34;
      v51 = v36;
      v37 = v32;
      v52 = v37;
      v38 = _Block_copy(v50);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __64___UIPreviewActionsController__presentSubactionsForActionGroup___block_invoke_6;
      v45[3] = &unk_1E711ADA0;
      v49 = 0x3FD999999999999ALL;
      v39 = v31;
      v46 = v39;
      v40 = v33;
      v47 = v40;
      v41 = v35;
      v48 = v41;
      v42 = [UIViewPropertyAnimator runningPropertyAnimatorWithDuration:4 delay:v45 options:v38 animations:0.4 completion:0.0];

      objc_destroyWeak(&v53);
      objc_destroyWeak(location);
    }
  }
}

- (void)_setAffordanceAlpha:(double)a3 withDuration:(double)a4 hideOnCompletion:(BOOL)a5
{
  v9 = [(_UIPreviewActionsController *)self affordanceView];
  [v9 alpha];
  v11 = vabdd_f64(v10, a3);

  if (v11 > 2.22044605e-16)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke;
    v14[3] = &unk_1E70F32F0;
    v14[4] = self;
    *&v14[5] = a3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke_2;
    v12[3] = &unk_1E70FA0F0;
    v13 = a5;
    v12[4] = self;
    [UIView animateWithDuration:v14 animations:v12 completion:a4];
  }
}

- (void)_updateAffordanceIfNecessary
{
  v3 = [(_UIPreviewActionsController *)self affordanceView];

  if (v3)
  {
    _updateAffordanceFrameOrigin(self->_platterView, self->_affordanceView);
    v4 = [(_UIPreviewActionsController *)self _platterIsInInitialPositionMostly];
    v5 = 0.0;
    if (v4)
    {
      v5 = 1.0;
    }

    [(_UIPreviewActionsController *)self _setAffordanceAlpha:0 withDuration:v5 hideOnCompletion:0.2];
  }
}

- (CGPoint)centerForPlatterWithMenuViewPresented
{
  v3 = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForPlatterWithMenuViewPresentedForActionSheet:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForPlatterWithMenuViewPresentedForActionSheet:(id)a3
{
  v4 = a3;
  v5 = [(_UIPreviewActionsController *)self delegate];
  [v5 initialPlatterPositionForPreviewActionsController:self];
  v7 = v6;
  v9 = v8;

  if (v4)
  {
    [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:v4];
    v11 = v10;
    [v4 bounds];
    v12 = v11 - CGRectGetHeight(v18) * 0.5;
    v13 = [(_UIPreviewActionsController *)self platterView];
    [v13 bounds];
    v14 = v12 - CGRectGetHeight(v19) * 0.5;

    if (v14 <= v9)
    {
      v9 = v14;
    }
  }

  v15 = v7;
  v16 = v9;
  result.y = v16;
  result.x = v15;
  return result;
}

- (CGPoint)centerForPlatterWithMenuViewDismissed
{
  v3 = [(_UIPreviewActionsController *)self delegate];
  [v3 initialPlatterPositionForPreviewActionsController:self];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)centerForMenuPresented
{
  v3 = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForMenuPresentedForActionSheet:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_UIPreviewActionsController *)self containerView];
    [v5 bounds];
    Height = CGRectGetHeight(v22);

    [v4 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    v15 = Height + CGRectGetHeight(v23) * -0.5;
    v16 = [(_UIPreviewActionsController *)self containerView];
    [v16 bounds];
    MidX = CGRectGetMidX(v24);
  }

  else
  {
    MidX = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  [(_UIPreviewActionsController *)self _applyLayoutAdjustmentsForManagedViewWithPosition:MidX, v15];
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)centerForMenuDismissed
{
  v3 = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:v3];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForMenuDismissedForActionSheet:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_UIPreviewActionsController *)self containerView];
    [v5 bounds];
    Height = CGRectGetHeight(v21);

    [v4 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    v15 = Height + CGRectGetHeight(v22) * 0.5;
    v16 = [(_UIPreviewActionsController *)self containerView];
    [v16 bounds];
    MidX = CGRectGetMidX(v23);
  }

  else
  {
    MidX = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v18 = MidX;
  v19 = v15;
  result.y = v19;
  result.x = v18;
  return result;
}

- (CGPoint)initialCenterForLeadingSwipeActionView
{
  [(_UIPreviewActionsController *)self _initialPlatterFrame];
  MinX = CGRectGetMinX(v11);
  v4 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [v4 bounds];
  v5 = MinX + CGRectGetWidth(v12) * 0.5;
  v6 = [(_UIPreviewActionsController *)self containerView];
  [v6 bounds];
  MidY = CGRectGetMidY(v13);

  v8 = v5;
  v9 = MidY;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)initialCenterForTrailingSwipeActionView
{
  [(_UIPreviewActionsController *)self _initialPlatterFrame];
  MaxX = CGRectGetMaxX(v11);
  v4 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [v4 bounds];
  v5 = MaxX + CGRectGetWidth(v12) * -0.5;
  v6 = [(_UIPreviewActionsController *)self containerView];
  [v6 bounds];
  MidY = CGRectGetMidY(v13);

  v8 = v5;
  v9 = MidY;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)platterMenuDynamicsControllerDidDismissWithController:(id)a3
{
  v4 = [(_UIPreviewActionsController *)self delegate];
  [v4 didDismissPreviewActionsController:self];
}

- (void)platterMenuDynamicsController:(id)a3 didMoveSwipeView:(id)a4 toPosition:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v10 = a4;
  [a3 currentTranslation];
  if (fabs(v9) > 2.22044605e-16)
  {
    [v10 setHidden:1];
    [v10 setCenter:{x, y}];
    [(_UIPreviewActionsController *)self _updateSwipeActionsState];
  }
}

- (void)translationDidUpdateForPlatterMenuDynamicsController:(id)a3
{
  v4 = a3;
  [v4 currentTranslation];
  if (fabs(v5) > 2.22044605e-16)
  {
    v6 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    [v6 setHidden:1];

    v7 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    [v7 setHidden:1];
  }

  [(_UIPreviewActionsController *)self _updateAffordanceIfNecessary];
  v15 = [(_UIPreviewActionsController *)self delegate];
  [v4 currentTranslation];
  v9 = v8;
  v11 = v10;

  v12 = [(_UIPreviewActionsController *)self platterDynamicsController];
  [v12 currentVelocity];
  [v15 previewActionsController:self didUpdatePlatterTranslation:v9 withVelocity:{v11, v13, v14}];
}

- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UIPreviewActionsController *)self previewActionsView];
  v7 = [v6 _window];
  [v7 _managedSafeAreaInsets];
  v9 = v8;

  if (fabs(v9) >= 2.22044605e-16)
  {
    v10 = [(_UIPreviewActionsController *)self previewActionsView];
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

- (void)_configureFeedbackGenerator
{
  v3 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration defaultConfiguration];
  v7 = [v3 tweakedConfigurationForClass:objc_opt_class() usage:@"swipeAction"];

  v4 = [_UIStatesFeedbackGenerator alloc];
  v5 = [(_UIPreviewActionsController *)self containerView];
  v6 = [(_UIStatesFeedbackGenerator *)v4 initWithConfiguration:v7 view:v5];
  [(_UIPreviewActionsController *)self setSwipeFeedbackGenerator:v6];
}

- (void)_activateFeedbackIfNeeded
{
  v3 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  v4 = [v3 isActive];

  if ((v4 & 1) == 0)
  {
    v5 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
    [v5 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  v3 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  v4 = [v3 isActive];

  if (v4)
  {
    v5 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
    [v5 deactivate];
  }
}

- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)a3 finalSelectionState:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  v8 = [v7 isActive];

  if (v8)
  {
    if (!v4 || v5)
    {
      if (!v5 || v4)
      {
        return;
      }

      v11 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration openState];
    }

    else
    {
      v11 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration confirmState];
    }

    v10 = v9;
    [v11 transitionToState:v9 ended:1];
  }
}

- (void)setLeadingSwipeActionViewSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  v6 = [v5 selected];

  v7 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [v7 setSelected:v3];

  [(_UIPreviewActionsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:v6 finalSelectionState:v3];
}

- (void)setTrailingSwipeActionViewSelected:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  v6 = [v5 selected];

  v7 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [v7 setSelected:v3];

  [(_UIPreviewActionsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:v6 finalSelectionState:v3];
}

- (CGSize)totalPanningTranslation
{
  width = self->_totalPanningTranslation.width;
  height = self->_totalPanningTranslation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_UIPreviewActionsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)lastPanningLocation
{
  x = self->_lastPanningLocation.x;
  y = self->_lastPanningLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end