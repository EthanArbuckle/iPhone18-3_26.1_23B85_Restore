@interface _UIPreviewActionsController
+ (id)actionsControllerWithContainerView:(id)view platterView:(id)platterView presentedViewController:(id)controller delegate:(id)delegate;
- (BOOL)_hasPreviewSwipeActions;
- (BOOL)_hasSelectedSwipeAction;
- (BOOL)_platterIsInInitialPositionMostly;
- (BOOL)_previewActionsSheetIsVisible;
- (BOOL)_shouldDismiss;
- (BOOL)platterPanned;
- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)position;
- (CGPoint)_centerForMenuDismissedForActionSheet:(id)sheet;
- (CGPoint)_centerForMenuPresentedForActionSheet:(id)sheet;
- (CGPoint)_centerForPlatterWithMenuViewPresentedForActionSheet:(id)sheet;
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
- (_UIPreviewActionsController)initWithContainerView:(id)view platterView:(id)platterView presentedViewController:(id)controller delegate:(id)delegate;
- (_UIPreviewActionsControllerDelegate)delegate;
- (_UIPreviewQuickActionView)leadingPreviewActionView;
- (_UIPreviewQuickActionView)trailingPreviewActionView;
- (double)_platterOffsetDistance;
- (double)_quickActionSelectionOffset;
- (double)_quickActionsSelectionThresholdForPreviewMenuItemStyle:(int64_t)style;
- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)items;
- (void)_actionsControllerCommonInit;
- (void)_activateFeedbackIfNeeded;
- (void)_configureFeedbackGenerator;
- (void)_configurePlatterDynamicsController;
- (void)_deactivateFeedbackIfNeeded;
- (void)_disablePlatterController;
- (void)_dismissForSelectedSwipeAction;
- (void)_dismissWithAction:(id)action;
- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)state finalSelectionState:(BOOL)selectionState;
- (void)_hideChromeAndSetAffordanceHidden:(BOOL)hidden;
- (void)_presentSubactionsForActionGroup:(id)group;
- (void)_setAffordanceAlpha:(double)alpha withDuration:(double)duration hideOnCompletion:(BOOL)completion;
- (void)_updateAffordanceIfNecessary;
- (void)_updateSwipeActionsState;
- (void)beginPanningAtLocation:(CGPoint)location;
- (void)dealloc;
- (void)dismissPreviewActionsWithCompletion:(id)completion;
- (void)endPanningAtLocation:(CGPoint)location;
- (void)platterMenuDynamicsController:(id)controller didMoveSwipeView:(id)view toPosition:(CGPoint)position;
- (void)platterMenuDynamicsControllerDidDismissWithController:(id)controller;
- (void)setLeadingSwipeActionViewSelected:(BOOL)selected;
- (void)setTrailingSwipeActionViewSelected:(BOOL)selected;
- (void)translationDidUpdateForPlatterMenuDynamicsController:(id)controller;
- (void)updatePanningLocation:(CGPoint)location;
@end

@implementation _UIPreviewActionsController

- (_UIPreviewActionsController)initWithContainerView:(id)view platterView:(id)platterView presentedViewController:(id)controller delegate:(id)delegate
{
  viewCopy = view;
  platterViewCopy = platterView;
  controllerCopy = controller;
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = _UIPreviewActionsController;
  v15 = [(_UIPreviewActionsController *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_containerView, view);
    objc_storeStrong(&v16->_platterView, platterView);
    objc_storeStrong(&v16->_presentedViewController, controller);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    [(_UIPreviewActionsController *)v16 _actionsControllerCommonInit];
  }

  return v16;
}

- (void)_actionsControllerCommonInit
{
  currentPreviewActionItems = [(_UIPreviewActionsController *)self currentPreviewActionItems];
  v4 = [(_UIPreviewActionsController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:currentPreviewActionItems];
  [(_UIPreviewActionsController *)self setPreviewActionsView:v4];

  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];

  if (previewActionsView)
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
    superview = [(UIView *)self->_platterView superview];
    [superview addSubview:v6];

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
  containerView = [(_UIPreviewActionsController *)self containerView];
  platterView = [(_UIPreviewActionsController *)self platterView];
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  v6 = [(_UIPlatterMenuDynamicsController *)v3 initWithContainerView:containerView platterView:platterView menuView:previewActionsView delegate:self];
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

+ (id)actionsControllerWithContainerView:(id)view platterView:(id)platterView presentedViewController:(id)controller delegate:(id)delegate
{
  delegateCopy = delegate;
  controllerCopy = controller;
  platterViewCopy = platterView;
  viewCopy = view;
  v14 = [[self alloc] initWithContainerView:viewCopy platterView:platterViewCopy presentedViewController:controllerCopy delegate:delegateCopy];

  return v14;
}

- (void)beginPanningAtLocation:(CGPoint)location
{
  if (self->_platterDynamicsController)
  {
    y = location.y;
    x = location.x;
    [(_UIPreviewActionsController *)self setHasBegun:1];
    [(_UIPreviewActionsController *)self setTotalPanningTranslation:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(_UIPreviewActionsController *)self setLastPanningLocation:x, y];
    [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController didBeginPanningWithPoint:x, y];
  }

  [(_UIPreviewActionsController *)self _activateFeedbackIfNeeded:location.x];
}

- (void)updatePanningLocation:(CGPoint)location
{
  if (self->_platterDynamicsController)
  {
    y = location.y;
    x = location.x;
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

- (void)endPanningAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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

- (void)dismissPreviewActionsWithCompletion:(id)completion
{
  completionCopy = completion;
  [(_UIPreviewActionsController *)self _setAffordanceAlpha:1 withDuration:0.0 hideOnCompletion:0.1];
  [(_UIPreviewActionsController *)self _hideChromeAndSetAffordanceHidden:0];
  [(_UIPreviewActionsController *)self _platterOffsetDistance];
  v5 = v4;
  _isSwipeActionVisible = [(_UIPreviewActionsController *)self _isSwipeActionVisible];
  if (v5 <= 44.0 && !_isSwipeActionVisible)
  {
    if (completionCopy)
    {
      completionCopy[2]();
    }
  }

  else
  {
    [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController _animateToPlatterDismissedWithDuration:completionCopy completion:0.225];
  }
}

- (CGRect)frameForActionView
{
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  [previewActionsView frame];
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

- (void)_hideChromeAndSetAffordanceHidden:(BOOL)hidden
{
  if (hidden)
  {
    affordanceView = [(_UIPreviewActionsController *)self affordanceView];
    layer = [affordanceView layer];
    v6 = [layer animationForKey:@"opacity"];

    if (!v6)
    {
      affordanceView2 = [(_UIPreviewActionsController *)self affordanceView];
      [affordanceView2 setHidden:1];
    }
  }

  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [leadingPreviewActionView setHidden:1];

  trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [trailingPreviewActionView setHidden:1];
}

- (double)_platterOffsetDistance
{
  [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController currentTranslation];
  v4 = v3;
  [(_UIPlatterMenuDynamicsController *)self->_platterDynamicsController currentTranslation];
  return sqrt((v4 - *MEMORY[0x1E695EFF8]) * (v4 - *MEMORY[0x1E695EFF8]) + (v5 - *(MEMORY[0x1E695EFF8] + 8)) * (v5 - *(MEMORY[0x1E695EFF8] + 8)));
}

- (id)_makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    delegate = [(_UIPreviewActionsController *)self delegate];
    [delegate maximumPreviewActionsViewSizeForPreviewActionsController:self];
    v7 = v6;
    v9 = v8;

    v10 = [[_UIPreviewActionSheetView alloc] initWithFrame:0 title:itemsCopy items:0.0 contentInsets:0.0, v7, v9, 20.0, 0.0, 20.0, 0.0];
    containerView = [(_UIPreviewActionsController *)self containerView];
    [containerView addSubview:v10];

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
    presentedViewController = [(_UIPreviewActionsController *)self presentedViewController];
    previewActionItems = [presentedViewController previewActionItems];

    if ([previewActionItems count])
    {
      v6 = [previewActionItems copy];
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
    containerView = [(_UIPreviewActionsController *)self containerView];
    v5 = containerView[13];

    presentedViewController = [(_UIPreviewActionsController *)self presentedViewController];
    v7 = presentedViewController;
    if ((v5 & 0x400000) != 0)
    {
      [presentedViewController trailingPreviewAction];
    }

    else
    {
      [presentedViewController leadingPreviewAction];
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
    containerView = [(_UIPreviewActionsController *)self containerView];
    v5 = containerView[13];

    presentedViewController = [(_UIPreviewActionsController *)self presentedViewController];
    v7 = presentedViewController;
    if ((v5 & 0x400000) != 0)
    {
      [presentedViewController leadingPreviewAction];
    }

    else
    {
      [presentedViewController trailingPreviewAction];
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
    leadingPreviewAction = [(_UIPreviewActionsController *)self leadingPreviewAction];

    if (leadingPreviewAction)
    {
      v4 = [_UIPreviewQuickActionView alloc];
      v5 = [(_UIPreviewQuickActionView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      leadingPreviewActionView = self->_leadingPreviewActionView;
      self->_leadingPreviewActionView = v5;

      [(UIView *)self->_leadingPreviewActionView setTranslatesAutoresizingMaskIntoConstraints:0];
      leadingPreviewAction2 = [(_UIPreviewActionsController *)self leadingPreviewAction];
      [(_UIPreviewQuickActionView *)self->_leadingPreviewActionView setQuickAction:leadingPreviewAction2];

      [(UIView *)self->_leadingPreviewActionView layoutIfNeeded];
      platterView = [(_UIPreviewActionsController *)self platterView];
      superview = [platterView superview];
      v10 = self->_leadingPreviewActionView;
      platterView2 = [(_UIPreviewActionsController *)self platterView];
      [superview insertSubview:v10 belowSubview:platterView2];

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
    trailingPreviewAction = [(_UIPreviewActionsController *)self trailingPreviewAction];

    if (trailingPreviewAction)
    {
      v4 = [_UIPreviewQuickActionView alloc];
      v5 = [(_UIPreviewQuickActionView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      trailingPreviewActionView = self->_trailingPreviewActionView;
      self->_trailingPreviewActionView = v5;

      [(UIView *)self->_trailingPreviewActionView setTranslatesAutoresizingMaskIntoConstraints:0];
      trailingPreviewAction2 = [(_UIPreviewActionsController *)self trailingPreviewAction];
      [(_UIPreviewQuickActionView *)self->_trailingPreviewActionView setQuickAction:trailingPreviewAction2];

      [(UIView *)self->_trailingPreviewActionView layoutIfNeeded];
      platterView = [(_UIPreviewActionsController *)self platterView];
      superview = [platterView superview];
      v10 = self->_trailingPreviewActionView;
      platterView2 = [(_UIPreviewActionsController *)self platterView];
      [superview insertSubview:v10 belowSubview:platterView2];

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
  platterView = [(_UIPreviewActionsController *)self platterView];
  [platterView bounds];
  Width = CGRectGetWidth(v15);
  platterView2 = [(_UIPreviewActionsController *)self platterView];
  [platterView2 bounds];
  Height = CGRectGetHeight(v16);
  containerView = [(_UIPreviewActionsController *)self containerView];
  [containerView bounds];
  MidX = CGRectGetMidX(v17);
  containerView2 = [(_UIPreviewActionsController *)self containerView];
  [containerView2 bounds];
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
  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if (leadingPreviewActionView)
  {
    v4 = 1;
  }

  else
  {
    trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    v4 = trailingPreviewActionView != 0;
  }

  return v4;
}

- (BOOL)_hasSelectedSwipeAction
{
  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if ([leadingPreviewActionView selected])
  {
    selected = 1;
  }

  else
  {
    trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    selected = [trailingPreviewActionView selected];
  }

  return selected;
}

- (BOOL)_previewActionsSheetIsVisible
{
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  if (previewActionsView)
  {
    previewActionsView2 = [(_UIPreviewActionsController *)self previewActionsView];
    [previewActionsView2 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    containerView = [(_UIPreviewActionsController *)self containerView];
    [containerView bounds];
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
  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [leadingPreviewActionView bounds];
  Width = CGRectGetWidth(v7);

  if (Width <= 2.22044605e-16)
  {
    trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    [trailingPreviewActionView bounds];
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
  [(_UIPreviewActionsController *)self _quickActionSelectionOffset];
  v5 = 2.0;
  if (style == 2)
  {
    v5 = 3.5;
  }

  return v5 * v4;
}

- (void)_updateSwipeActionsState
{
  if ([(_UIPreviewActionsController *)self _hasPreviewSwipeActions])
  {
    platterDynamicsController = [(_UIPreviewActionsController *)self platterDynamicsController];
    [platterDynamicsController currentTranslation];
    v5 = v4;

    leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    [leadingPreviewActionView setHidden:v5 > 0.0];

    trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    [trailingPreviewActionView setHidden:v5 < 0.0];

    leadingPreviewActionView2 = [(_UIPreviewActionsController *)self leadingPreviewActionView];

    if (leadingPreviewActionView2)
    {
      leadingPreviewActionView3 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      quickAction = [leadingPreviewActionView3 quickAction];
      -[_UIPreviewActionsController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [quickAction style]);
      v12 = v11;

      if (v12 > 0.0)
      {
        [(_UIPreviewActionsController *)self setLeadingSwipeActionViewSelected:v5 < -v12];
        leadingPreviewActionView4 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
        selected = [leadingPreviewActionView4 selected];

        if (selected)
        {
          trailingPreviewActionView2 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
          [trailingPreviewActionView2 setSelected:0];
        }
      }
    }

    trailingPreviewActionView3 = [(_UIPreviewActionsController *)self trailingPreviewActionView];

    if (trailingPreviewActionView3)
    {
      trailingPreviewActionView4 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      quickAction2 = [trailingPreviewActionView4 quickAction];
      -[_UIPreviewActionsController _quickActionsSelectionThresholdForPreviewMenuItemStyle:](self, "_quickActionsSelectionThresholdForPreviewMenuItemStyle:", [quickAction2 style]);
      v20 = v19;

      if (v20 > 0.0)
      {
        [(_UIPreviewActionsController *)self setTrailingSwipeActionViewSelected:v5 > v20];
        trailingPreviewActionView5 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
        selected2 = [trailingPreviewActionView5 selected];

        if (selected2)
        {
          leadingPreviewActionView5 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
          [leadingPreviewActionView5 setSelected:0];
        }
      }
    }

    trailingPreviewActionView6 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    selected3 = [trailingPreviewActionView6 selected];

    if (selected3)
    {
      trailingPreviewActionView7 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      [trailingPreviewActionView7 setHidden:0];

      leadingPreviewActionView6 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      [leadingPreviewActionView6 setHidden:1];
    }

    leadingPreviewActionView7 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    selected4 = [leadingPreviewActionView7 selected];

    if (selected4)
    {
      leadingPreviewActionView8 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
      [leadingPreviewActionView8 setHidden:0];

      trailingPreviewActionView8 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
      [trailingPreviewActionView8 setHidden:1];
    }
  }
}

- (void)_dismissForSelectedSwipeAction
{
  [(_UIPreviewActionsController *)self _disablePlatterController];
  containerView = [(_UIPreviewActionsController *)self containerView];
  [containerView bounds];
  MidX = CGRectGetMidX(v33);
  containerView2 = [(_UIPreviewActionsController *)self containerView];
  [containerView2 bounds];
  MidY = CGRectGetMidY(v34);

  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  if ([leadingPreviewActionView selected])
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
  leadingPreviewActionView2 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  selected = [leadingPreviewActionView2 selected];

  if (selected)
  {
    containerView3 = [(_UIPreviewActionsController *)self containerView];
    [containerView3 bounds];
    Width = CGRectGetWidth(v35);
    platterView = [(_UIPreviewActionsController *)self platterView];
    [platterView bounds];
    v16 = Width + CGRectGetWidth(v36) * 0.5;
  }

  else
  {
    containerView3 = [(_UIPreviewActionsController *)self platterView];
    [containerView3 bounds];
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
  selfCopy = self;
  v26 = v17;
  v19 = v17;
  v20 = _Block_copy(&v21);
  [UIView animateWithDuration:v18 animations:v20 completion:0.3, v21, v22, v23, v24, selfCopy];
}

- (void)_dismissWithAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    [(_UIPreviewActionsController *)self _hideChromeAndSetAffordanceHidden:0];
  }

  [(_UIPreviewActionsController *)self _disablePlatterController];
  [(_UIPreviewActionsController *)self centerForPlatterWithMenuViewDismissed];
  v7 = v6;
  if (actionCopy)
  {
    platterView = [(_UIPreviewActionsController *)self platterView];
    [platterView bounds];
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
  v16 = actionCopy;
  v13 = actionCopy;
  v14 = _Block_copy(v15);
  [UIView animateWithDuration:v12 animations:v14 completion:0.3];
}

- (BOOL)_shouldDismiss
{
  _previewActionsSheetIsVisible = [(_UIPreviewActionsController *)self _previewActionsSheetIsVisible];
  _hasSelectedSwipeAction = [(_UIPreviewActionsController *)self _hasSelectedSwipeAction];
  platterDynamicsController = [(_UIPreviewActionsController *)self platterDynamicsController];
  [platterDynamicsController currentVelocity];
  v7 = v6 >= 0.1;

  return v7 || !_previewActionsSheetIsVisible && !_hasSelectedSwipeAction;
}

- (void)_disablePlatterController
{
  platterDynamicsController = [(_UIPreviewActionsController *)self platterDynamicsController];
  [platterDynamicsController resetAnimator];

  [(_UIPreviewActionsController *)self setPlatterDynamicsController:0];
}

- (BOOL)_platterIsInInitialPositionMostly
{
  containerView = [(_UIPreviewActionsController *)self containerView];
  [containerView bounds];
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
  platterView = [(_UIPreviewActionsController *)self platterView];
  [platterView center];
  v18.x = v15;
  v18.y = v16;
  v21.size.width = 44.0;
  v21.origin.x = round(MidX + -22.0);
  v21.origin.y = v13;
  v21.size.height = 44.0;
  LOBYTE(containerView) = CGRectContainsPoint(v21, v18);

  return containerView;
}

- (void)_presentSubactionsForActionGroup:(id)group
{
  groupCopy = group;
  v5 = groupCopy;
  if (groupCopy)
  {
    _actions = [groupCopy _actions];
    v7 = [_actions count];

    if (v7)
    {
      previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
      _actions2 = [v5 _actions];
      v10 = [(_UIPreviewActionsController *)self _makeAndAddToViewHierarchyPreviewActionSheetForMenuItems:_actions2];

      objc_initWeak(location, self);
      previewActionsView2 = [(_UIPreviewActionsController *)self previewActionsView];
      window = [previewActionsView2 window];
      [window setUserInteractionEnabled:0];

      [(_UIPreviewActionsController *)self _disablePlatterController];
      [(_UIPreviewActionsController *)self _centerForPlatterWithMenuViewPresentedForActionSheet:v10];
      v14 = v13;
      v16 = v15;
      [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:previewActionsView];
      v18 = v17;
      v20 = v19;
      [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:previewActionsView];
      v22 = v21;
      v24 = v23;
      [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:v10];
      v26 = v25;
      v28 = v27;
      [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:v10];
      v43 = v30;
      v44 = v29;
      [v10 setCenter:{v26, v28}];
      [previewActionsView setCenter:{v18, v20}];
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
      v32 = previewActionsView;
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

- (void)_setAffordanceAlpha:(double)alpha withDuration:(double)duration hideOnCompletion:(BOOL)completion
{
  affordanceView = [(_UIPreviewActionsController *)self affordanceView];
  [affordanceView alpha];
  v11 = vabdd_f64(v10, alpha);

  if (v11 > 2.22044605e-16)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke;
    v14[3] = &unk_1E70F32F0;
    v14[4] = self;
    *&v14[5] = alpha;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81___UIPreviewActionsController__setAffordanceAlpha_withDuration_hideOnCompletion___block_invoke_2;
    v12[3] = &unk_1E70FA0F0;
    completionCopy = completion;
    v12[4] = self;
    [UIView animateWithDuration:v14 animations:v12 completion:duration];
  }
}

- (void)_updateAffordanceIfNecessary
{
  affordanceView = [(_UIPreviewActionsController *)self affordanceView];

  if (affordanceView)
  {
    _updateAffordanceFrameOrigin(self->_platterView, self->_affordanceView);
    _platterIsInInitialPositionMostly = [(_UIPreviewActionsController *)self _platterIsInInitialPositionMostly];
    v5 = 0.0;
    if (_platterIsInInitialPositionMostly)
    {
      v5 = 1.0;
    }

    [(_UIPreviewActionsController *)self _setAffordanceAlpha:0 withDuration:v5 hideOnCompletion:0.2];
  }
}

- (CGPoint)centerForPlatterWithMenuViewPresented
{
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForPlatterWithMenuViewPresentedForActionSheet:previewActionsView];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForPlatterWithMenuViewPresentedForActionSheet:(id)sheet
{
  sheetCopy = sheet;
  delegate = [(_UIPreviewActionsController *)self delegate];
  [delegate initialPlatterPositionForPreviewActionsController:self];
  v7 = v6;
  v9 = v8;

  if (sheetCopy)
  {
    [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:sheetCopy];
    v11 = v10;
    [sheetCopy bounds];
    v12 = v11 - CGRectGetHeight(v18) * 0.5;
    platterView = [(_UIPreviewActionsController *)self platterView];
    [platterView bounds];
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
  delegate = [(_UIPreviewActionsController *)self delegate];
  [delegate initialPlatterPositionForPreviewActionsController:self];
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
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForMenuPresentedForActionSheet:previewActionsView];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForMenuPresentedForActionSheet:(id)sheet
{
  if (sheet)
  {
    sheetCopy = sheet;
    containerView = [(_UIPreviewActionsController *)self containerView];
    [containerView bounds];
    Height = CGRectGetHeight(v22);

    [sheetCopy bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v23.origin.x = v8;
    v23.origin.y = v10;
    v23.size.width = v12;
    v23.size.height = v14;
    v15 = Height + CGRectGetHeight(v23) * -0.5;
    containerView2 = [(_UIPreviewActionsController *)self containerView];
    [containerView2 bounds];
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
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  [(_UIPreviewActionsController *)self _centerForMenuDismissedForActionSheet:previewActionsView];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)_centerForMenuDismissedForActionSheet:(id)sheet
{
  if (sheet)
  {
    sheetCopy = sheet;
    containerView = [(_UIPreviewActionsController *)self containerView];
    [containerView bounds];
    Height = CGRectGetHeight(v21);

    [sheetCopy bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v22.origin.x = v8;
    v22.origin.y = v10;
    v22.size.width = v12;
    v22.size.height = v14;
    v15 = Height + CGRectGetHeight(v22) * 0.5;
    containerView2 = [(_UIPreviewActionsController *)self containerView];
    [containerView2 bounds];
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
  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [leadingPreviewActionView bounds];
  v5 = MinX + CGRectGetWidth(v12) * 0.5;
  containerView = [(_UIPreviewActionsController *)self containerView];
  [containerView bounds];
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
  trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [trailingPreviewActionView bounds];
  v5 = MaxX + CGRectGetWidth(v12) * -0.5;
  containerView = [(_UIPreviewActionsController *)self containerView];
  [containerView bounds];
  MidY = CGRectGetMidY(v13);

  v8 = v5;
  v9 = MidY;
  result.y = v9;
  result.x = v8;
  return result;
}

- (void)platterMenuDynamicsControllerDidDismissWithController:(id)controller
{
  delegate = [(_UIPreviewActionsController *)self delegate];
  [delegate didDismissPreviewActionsController:self];
}

- (void)platterMenuDynamicsController:(id)controller didMoveSwipeView:(id)view toPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  viewCopy = view;
  [controller currentTranslation];
  if (fabs(v9) > 2.22044605e-16)
  {
    [viewCopy setHidden:1];
    [viewCopy setCenter:{x, y}];
    [(_UIPreviewActionsController *)self _updateSwipeActionsState];
  }
}

- (void)translationDidUpdateForPlatterMenuDynamicsController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy currentTranslation];
  if (fabs(v5) > 2.22044605e-16)
  {
    leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
    [leadingPreviewActionView setHidden:1];

    trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
    [trailingPreviewActionView setHidden:1];
  }

  [(_UIPreviewActionsController *)self _updateAffordanceIfNecessary];
  delegate = [(_UIPreviewActionsController *)self delegate];
  [controllerCopy currentTranslation];
  v9 = v8;
  v11 = v10;

  platterDynamicsController = [(_UIPreviewActionsController *)self platterDynamicsController];
  [platterDynamicsController currentVelocity];
  [delegate previewActionsController:self didUpdatePlatterTranslation:v9 withVelocity:{v11, v13, v14}];
}

- (CGPoint)_applyLayoutAdjustmentsForManagedViewWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  previewActionsView = [(_UIPreviewActionsController *)self previewActionsView];
  _window = [previewActionsView _window];
  [_window _managedSafeAreaInsets];
  v9 = v8;

  if (fabs(v9) >= 2.22044605e-16)
  {
    previewActionsView2 = [(_UIPreviewActionsController *)self previewActionsView];
    [previewActionsView2 contentInsets];
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
  containerView = [(_UIPreviewActionsController *)self containerView];
  v6 = [(_UIStatesFeedbackGenerator *)v4 initWithConfiguration:v7 view:containerView];
  [(_UIPreviewActionsController *)self setSwipeFeedbackGenerator:v6];
}

- (void)_activateFeedbackIfNeeded
{
  swipeFeedbackGenerator = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if ((isActive & 1) == 0)
  {
    swipeFeedbackGenerator2 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
    [swipeFeedbackGenerator2 activateWithCompletionBlock:0];
  }
}

- (void)_deactivateFeedbackIfNeeded
{
  swipeFeedbackGenerator = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if (isActive)
  {
    swipeFeedbackGenerator2 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
    [swipeFeedbackGenerator2 deactivate];
  }
}

- (void)_fireConfirmFeedbackIfNeededForInitialSelectionState:(BOOL)state finalSelectionState:(BOOL)selectionState
{
  selectionStateCopy = selectionState;
  stateCopy = state;
  swipeFeedbackGenerator = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
  isActive = [swipeFeedbackGenerator isActive];

  if (isActive)
  {
    if (!selectionStateCopy || stateCopy)
    {
      if (!stateCopy || selectionStateCopy)
      {
        return;
      }

      swipeFeedbackGenerator2 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration openState];
    }

    else
    {
      swipeFeedbackGenerator2 = [(_UIPreviewActionsController *)self swipeFeedbackGenerator];
      v9 = +[_UIStatesFeedbackGeneratorSwipeActionConfiguration confirmState];
    }

    v10 = v9;
    [swipeFeedbackGenerator2 transitionToState:v9 ended:1];
  }
}

- (void)setLeadingSwipeActionViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  leadingPreviewActionView = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  selected = [leadingPreviewActionView selected];

  leadingPreviewActionView2 = [(_UIPreviewActionsController *)self leadingPreviewActionView];
  [leadingPreviewActionView2 setSelected:selectedCopy];

  [(_UIPreviewActionsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:selected finalSelectionState:selectedCopy];
}

- (void)setTrailingSwipeActionViewSelected:(BOOL)selected
{
  selectedCopy = selected;
  trailingPreviewActionView = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  selected = [trailingPreviewActionView selected];

  trailingPreviewActionView2 = [(_UIPreviewActionsController *)self trailingPreviewActionView];
  [trailingPreviewActionView2 setSelected:selectedCopy];

  [(_UIPreviewActionsController *)self _fireConfirmFeedbackIfNeededForInitialSelectionState:selected finalSelectionState:selectedCopy];
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