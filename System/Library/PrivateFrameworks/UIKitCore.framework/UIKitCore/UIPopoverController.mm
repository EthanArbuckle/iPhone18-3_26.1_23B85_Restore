@interface UIPopoverController
+ (BOOL)_forceAttemptsToAvoidKeyboard;
+ (BOOL)_popoversDisabled;
+ (BOOL)_showTargetRectPref;
+ (UIEdgeInsets)_defaultPopoverLayoutMarginsForPopoverControllerStyle:(int64_t)a3 andContentViewController:(id)a4;
- (BOOL)_attemptsToAvoidKeyboard;
- (BOOL)_canRepresentAutomatically;
- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)_gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)_gestureRecognizerShouldBegin:(id)a3;
- (BOOL)_shimPopoverPresentationController;
- (BOOL)_shimPresentSlidingPopoverAnimated:(BOOL)a3;
- (BOOL)isPopoverVisible;
- (BOOL)isPresentingOrDismissing;
- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)a3;
- (CGPoint)_centerPointForScale:(double)a3 frame:(CGRect)a4 anchor:(CGPoint)a5;
- (CGSize)_currentPopoverContentSize;
- (CGSize)popoverContentSize;
- (Class)_defaultChromeViewClass;
- (Class)_popoverLayoutInfoForChromeClass:(Class)a3;
- (UIColor)backgroundColor;
- (UIEdgeInsets)popoverLayoutMargins;
- (UIPopoverArrowDirection)popoverArrowDirection;
- (UIPopoverController)init;
- (UIView)_presentingView;
- (id)_completionBlockForDismissalWhenNotifyingDelegate:(BOOL)a3;
- (id)_gestureRecognizerForPresentationFromEdge:(unint64_t)a3;
- (id)_initWithContentViewController:(id)a3 popoverControllerStyle:(int64_t)a4;
- (id)_layoutInfoForCurrentKeyboardState;
- (id)_layoutInfoFromLayoutInfo:(id)a3 forCurrentKeyboardStateAndHostingWindow:(id)a4;
- (id)_managingSplitViewController;
- (id)_splitParentController;
- (id)delegate;
- (void)_adjustPopoverForNewContentSizeFromViewController:(id)a3 allowShrink:(BOOL)a4;
- (void)_beginMapsTransitionToNewViewController:(id)a3 arrowDirections:(unint64_t)a4 slideDuration:(double)a5 expandDuration:(double)a6;
- (void)_beginMapsTransitionToNewViewController:(id)a3 newTargetRect:(CGRect)a4 inView:(id)a5 arrowDirections:(unint64_t)a6 slideDuration:(double)a7 expandDuration:(double)a8;
- (void)_commonPresentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6;
- (void)_containedViewControllerModalStateChanged;
- (void)_dismissPopoverAnimated:(BOOL)a3 stateOnly:(BOOL)a4 notifyDelegate:(BOOL)a5;
- (void)_hostingWindowDidRotate:(id)a3;
- (void)_hostingWindowWillRotate:(id)a3;
- (void)_incrementSlideTransitionCount:(BOOL)a3;
- (void)_invalidateLayoutInfo;
- (void)_keyboardStateChanged:(id)a3;
- (void)_layoutDimmingViewForInterfaceOrientationOfHostingWindow:(id)a3;
- (void)_modalAnimationFinishedEndIgnoringInteractiveEvents:(BOOL)a3;
- (void)_modalTransition:(int)a3 fromViewController:(id)a4 toViewController:(id)a5 target:(id)a6 didFinish:(int64_t)a7;
- (void)_moveAwayFromTheKeyboard:(id)a3;
- (void)_newViewControllerWasPushed:(id)a3;
- (void)_performHierarchyCheckOnViewController:(id)a3;
- (void)_postludeForDismissal;
- (void)_presentPopoverBySlidingIn:(BOOL)a3 fromEdge:(unint64_t)a4 ofView:(id)a5 animated:(BOOL)a6 stateOnly:(BOOL)a7 notifyDelegate:(BOOL)a8;
- (void)_presentPopoverFromEdge:(unint64_t)a3 ofView:(id)a4 animated:(BOOL)a5;
- (void)_presentPopoverFromRect:(CGRect)a3 embeddedInView:(id)a4 usingViewForLayoutConstraints:(id)a5 permittedArrowDirections:(unint64_t)a6 animate:(BOOL)a7;
- (void)_presentShimmedPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6;
- (void)_scrollViewDidEndDragging:(id)a3;
- (void)_scrollViewWillBeginDragging:(id)a3;
- (void)_setContentViewController:(id)a3 backgroundStyle:(int64_t)a4 animated:(BOOL)a5;
- (void)_setGesturesEnabled:(BOOL)a3;
- (void)_setIgnoresKeyboardNotifications:(BOOL)a3;
- (void)_setPopoverBackgroundStyle:(int64_t)a3;
- (void)_setPopoverView:(id)a3;
- (void)_setPresentationState:(int)a3;
- (void)_setupPresentationController;
- (void)_startWatchingForKeyboardNotificationsIfNecessary;
- (void)_startWatchingForNavigationControllerNotifications:(id)a3;
- (void)_startWatchingForScrollViewNotifications;
- (void)_startWatchingForWindowRotations;
- (void)_stopWatchingForKeyboardNotifications;
- (void)_stopWatchingForNavigationControllerNotifications:(id)a3;
- (void)_stopWatchingForNotifications;
- (void)_stopWatchingForScrollViewNotifications;
- (void)_stopWatchingForWindowRotations;
- (void)_swipe:(id)a3;
- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4 animated:(BOOL)a5;
- (void)_updateDimmingViewTransformForInterfaceOrientationOfHostingWindow:(id)a3;
- (void)dealloc;
- (void)dimmingViewWasTapped:(id)a3;
- (void)dismissPopoverAnimated:(BOOL)animated;
- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5;
- (void)popoverPresentationControllerDidDismissPopover:(id)a3;
- (void)presentPopoverFromBarButtonItem:(UIBarButtonItem *)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated;
- (void)presentPopoverFromRect:(CGRect)rect inView:(UIView *)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated;
- (void)setBackgroundColor:(UIColor *)backgroundColor;
- (void)setContentViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)setPassthroughViews:(NSArray *)passthroughViews;
- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated;
- (void)setPopoverFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setPopoverLayoutMargins:(UIEdgeInsets)popoverLayoutMargins;
@end

@implementation UIPopoverController

+ (BOOL)_popoversDisabled
{
  v2 = _UIMainBundleIdentifier();
  v3 = ([v2 isEqualToString:@"com.apple.mobilesafari"] & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"com.apple.iBooks") & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"com.apple.itunesu") & 1) == 0 && (objc_msgSend(v2, "isEqualToString:", @"com.apple.Maps") & 1) == 0 && !objc_msgSend(v2, "isEqualToString:", @"com.apple.accessibility.AccessibilityUIServer");

  return v3;
}

+ (BOOL)_showTargetRectPref
{
  if (qword_1ED49D838 != -1)
  {
    dispatch_once(&qword_1ED49D838, &__block_literal_global_144);
  }

  return _MergedGlobals_1055;
}

void __42__UIPopoverController__showTargetRectPref__block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIPopoverControllerPaintsTargetRect"];
  _MergedGlobals_1055 = [v0 BOOLValue];
}

+ (UIEdgeInsets)_defaultPopoverLayoutMarginsForPopoverControllerStyle:(int64_t)a3 andContentViewController:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = [v5 view];
      [v7 bounds];
      v8 = -CGRectGetWidth(v18);

      v9 = [v6 view];
      v10 = [v9 _shouldReverseLayoutDirection];

      if (v10)
      {
        v11 = -1.0;
      }

      else
      {
        v11 = v8;
      }

      if (!v10)
      {
        v8 = -1.0;
      }

      v12 = 0.0;
    }

    else
    {
      v8 = 0.0;
      v12 = 0.0;
      v11 = 0.0;
    }

    v13 = 0.0;
  }

  else
  {
    v13 = 30.0;
    v8 = 10.0;
    v12 = 10.0;
    v11 = 10.0;
  }

  v14 = v13;
  v15 = v11;
  v16 = v12;
  v17 = v8;
  result.right = v17;
  result.bottom = v16;
  result.left = v15;
  result.top = v14;
  return result;
}

- (UIPopoverController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"-[UIPopoverController init] is not a valid initializer. You must call -[UIPopoverController initWithContentViewController:]."];

  return 0;
}

- (id)_initWithContentViewController:(id)a3 popoverControllerStyle:(int64_t)a4
{
  v8 = a3;
  if (dyld_program_sdk_at_least() && !dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

  v9 = +[UIDevice currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v10 = +[UIDevice currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v12 = [objc_opt_class() _popoversDisabled];
  if (a4 || !v12)
  {
LABEL_10:
    if (a4 == 1)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UIPopoverController initWithContentViewController:] called when not running under UIUserInterfaceIdiomPad."];
LABEL_11:
  if (_UIAppUseModernRotationAndPresentationBehaviors() && ([objc_opt_class() _useLegacyPopoverControllers] & 1) == 0)
  {
    v25.receiver = self;
    v25.super_class = UIPopoverController;
    v13 = [(UIPopoverController *)&v25 init];
    self = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_contentViewController, a3);
      goto LABEL_21;
    }
  }

LABEL_15:
  if (!v8)
  {
  }

  if (a4 >= 2)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:373 description:{@"Invalid popover controller type (%ld)", a4}];
  }

  [(UIPopoverController *)self _performHierarchyCheckOnViewController:v8];
  v24.receiver = self;
  v24.super_class = UIPopoverController;
  v14 = [(UIPopoverController *)&v24 init];
  self = v14;
  if (v14)
  {
    v14->_popoverControllerStyle = a4;
    objc_storeStrong(&v14->_contentViewController, a3);
    [(UIViewController *)self->_contentViewController _setPopoverController:self];
    [(UIPopoverController *)self _transitionFromViewController:0 toViewController:self->_contentViewController animated:0];
    v15 = objc_alloc_init(UIDimmingView);
    dimmingView = self->_dimmingView;
    self->_dimmingView = v15;

    [(UIView *)self->_dimmingView setTintAdjustmentMode:1];
    [(UIDimmingView *)self->_dimmingView setDelegate:self];
    self->_currentArrowDirection = -1;
    self->_presentationState = 4;
    [objc_opt_class() _defaultPopoverLayoutMarginsForPopoverControllerStyle:self->_popoverControllerStyle andContentViewController:self->_contentViewController];
    self->_popoverLayoutMargins.top = v17;
    self->_popoverLayoutMargins.left = v18;
    self->_popoverLayoutMargins.bottom = v19;
    self->_popoverLayoutMargins.right = v20;
    *&self->_retainsSelfWhilePresented = 256;
    self->_showsTargetRect = [objc_opt_class() _showTargetRectPref];
  }

LABEL_21:
  v21 = self;

  return v21;
}

- (void)dealloc
{
  v12[7] = *MEMORY[0x1E69E9840];
  v3 = [(UIPopoverController *)self _presentationController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 delegate];

    if (v5 == self)
    {
      [v4 setDelegate:0];
    }
  }

  else if ([(UIPopoverController *)self isPopoverVisible])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"-[UIPopoverController dealloc] reached while popover is still visible."];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v12[0] = 0x1EFB3A1B0;
  v12[1] = @"UIKeyboardWillShowNotification";
  v12[2] = @"UIKeyboardDidHideNotification";
  v12[3] = @"UIWindowWillRotateNotification";
  v12[4] = @"UIWindowDidRotateNotification";
  v12[5] = @"_UIScrollViewWillBeginDraggingNotification";
  v12[6] = @"_UIScrollViewDidEndDraggingNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];
  [(NSNotificationCenter *)v6 _uiRemoveObserver:v7 names:?];

  [(_UIPopoverView *)self->_popoverView setPopoverController:0];
  v8 = [(UIViewController *)self->_contentViewController _popoverController];

  if (v8 == self)
  {
    [(UIViewController *)self->_contentViewController _setPopoverController:0];
  }

  [(UIDimmingView *)self->_dimmingView setDelegate:0];
  v9 = [(UIGestureRecognizer *)self->_vendedGestureRecognizer view];
  [v9 removeGestureRecognizer:self->_vendedGestureRecognizer];

  [(UIGestureRecognizer *)self->_vendedGestureRecognizer removeTarget:self action:sel__swipe_];
  v10 = [(UIGestureRecognizer *)self->_dimmingViewGestureRecognizer view];
  [v10 removeGestureRecognizer:self->_dimmingViewGestureRecognizer];

  [(UIGestureRecognizer *)self->_dimmingViewGestureRecognizer removeTarget:self action:sel__swipe_];
  [(UIPopoverController *)self _setPresentationController:0];

  v11.receiver = self;
  v11.super_class = UIPopoverController;
  [(UIPopoverController *)&v11 dealloc];
}

- (void)setContentViewController:(UIViewController *)viewController animated:(BOOL)animated
{
  v4 = animated;
  v10 = viewController;
  if (!v10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[UIPopoverController setContentViewController:animated:] called with a nil viewController."];
  }

  if ([(UIPopoverController *)self _shimPopoverPresentationController])
  {
    v6 = [(UIPopoverController *)self _presentationController];
    [v6 _setContentViewController:v10 animated:v4];
  }

  else
  {
    [(UIPopoverController *)self _performHierarchyCheckOnViewController:v10];
    v7 = v10;
    contentViewController = self->_contentViewController;
    if (contentViewController == v10)
    {
      goto LABEL_8;
    }

    [(UIPopoverController *)self _transitionFromViewController:contentViewController toViewController:v10 animated:v4];
    v9 = v10;
    v6 = self->_contentViewController;
    self->_contentViewController = v9;
  }

  v7 = v10;
LABEL_8:
}

- (void)setPopoverFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = self->_popoverView;
  v11 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardState];
  [v11 offset];
  v13 = v12;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIPopoverController_setPopoverFrame_animated___block_invoke;
  aBlock[3] = &unk_1E7101718;
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  aBlock[4] = self;
  v14 = v10;
  v22 = v14;
  v27 = v13;
  v15 = _Block_copy(aBlock);
  v16 = v15;
  if (v4)
  {
    v17 = [(UIPopoverController *)self contentViewController];
    v18 = [v17 transitionCoordinator];

    if (v18)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __48__UIPopoverController_setPopoverFrame_animated___block_invoke_2;
      v19[3] = &unk_1E7101880;
      v19[4] = self;
      v20 = v16;
      [v18 animateAlongsideTransition:0 completion:v19];
    }

    else
    {
      [(UIPopoverController *)self _presentationAnimationDuration];
      [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:133 options:v16 animations:0 completion:?];
    }
  }

  else
  {
    (*(v15 + 2))(v15);
  }
}

uint64_t __48__UIPopoverController_setPopoverFrame_animated___block_invoke(double *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  v5 = a1[8];
  v4 = a1[9];
  v6 = *(a1 + 4);
  if ((*(v6 + 416) & 0x10) != 0)
  {
    v7 = *(v6 + 48);
    if (v7)
    {
      v8 = [*(v6 + 32) superview];
      [v7 convertRect:v8 toView:{v3, v2, v5, v4}];
      v3 = v9;
      v2 = v10;
      v5 = v11;
      v4 = v12;
    }
  }

  v13 = *(a1 + 5);
  v14 = a1[10];

  return [v13 _setFrame:v3 arrowOffset:{v2, v5, v4, v14}];
}

uint64_t __48__UIPopoverController_setPopoverFrame_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _presentationAnimationDuration];
  v2 = *(a1 + 40);

  return [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:133 options:v2 animations:0 completion:?];
}

- (CGSize)popoverContentSize
{
  width = self->_popoverContentSize.width;
  height = self->_popoverContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPopoverContentSize:(CGSize)size animated:(BOOL)animated
{
  v4 = animated;
  height = size.height;
  width = size.width;
  if ([(UIPopoverController *)self _shimPopoverPresentationController]&& ([(UIPopoverController *)self _presentationController], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v38 = [(UIPopoverController *)self _presentationController];
    [v38 setPopoverContentSize:v4 animated:{width, height}];
  }

  else if (!self->_popoverControllerStyle)
  {
    self->_popoverContentSize.width = width;
    self->_popoverContentSize.height = height;
    v9 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
    [v9 setPreferredContentSize:{width, height}];
    if ((*&self->_popoverControllerFlags & 0x10) != 0 && self->_layoutConstraintView)
    {
      v10 = [(UIView *)self->_popoverView superview];
      [v10 convertRect:self->_layoutConstraintView toView:{self->_targetRectInEmbeddingView.origin.x, self->_targetRectInEmbeddingView.origin.y, self->_targetRectInEmbeddingView.size.width, self->_targetRectInEmbeddingView.size.height}];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      [v9 setSourceViewRect:{v12, v14, v16, v18}];
    }

    v19 = [(_UIPopoverView *)self->_popoverView backgroundView];
    v20 = v19;
    if (v19)
    {
      [v19 _contentViewInsets];
      [v9 setContentInset:?];
    }

    [(UIPopoverController *)self setPreferredLayoutInfo:v9];
    if ([(UIPopoverController *)self isPopoverVisible]|| [(UIPopoverController *)self _isPresenting])
    {
      v21 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardState];
      [v21 frame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [(UIView *)self->_popoverView frame];
      v45.origin.x = v30;
      v45.origin.y = v31;
      v45.size.width = v32;
      v45.size.height = v33;
      v44.origin.x = v23;
      v44.origin.y = v25;
      v44.size.width = v27;
      v44.size.height = v29;
      if (!CGRectEqualToRect(v44, v45))
      {
        if (v4)
        {
          v34 = ![(UIPopoverController *)self _isPresenting];
        }

        else
        {
          v34 = 0;
        }

        v41[0] = 0;
        v41[1] = v41;
        v41[2] = 0x3032000000;
        v41[3] = __Block_byref_object_copy__53;
        v41[4] = __Block_byref_object_dispose__53;
        v35 = self;
        v42 = v35;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __54__UIPopoverController_setPopoverContentSize_animated___block_invoke;
        aBlock[3] = &unk_1E7101768;
        aBlock[4] = v41;
        *&aBlock[5] = v23;
        *&aBlock[6] = v25;
        *&aBlock[7] = v27;
        *&aBlock[8] = v29;
        v40 = v34;
        v36 = _Block_copy(aBlock);
        v37 = v36;
        if (v34)
        {
          [(UIView *)self->_popoverView layoutBelowIfNeeded];
          [(UIPopoverController *)v35 _presentationAnimationDuration];
          [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v37 animations:0 completion:?];
        }

        else
        {
          (*(v36 + 2))(v36);
        }

        _Block_object_dispose(v41, 8);
      }
    }
  }
}

- (BOOL)isPopoverVisible
{
  if ([(UIPopoverController *)self _shimPopoverPresentationController])
  {
    v3 = [(UIPopoverController *)self _presentationController];
    v4 = [v3 isPopoverVisible];
  }

  else
  {
    popoverView = self->_popoverView;
    if (!popoverView)
    {
      return 0;
    }

    v3 = [(UIView *)popoverView window];
    if (v3)
    {
      v4 = self->_popoverControllerStyle != 1 || (self->_presentationState - 1) < 3;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (UIPopoverArrowDirection)popoverArrowDirection
{
  popoverView = self->_popoverView;
  if (popoverView)
  {
    return [(_UIPopoverView *)popoverView arrowDirection];
  }

  else
  {
    return -1;
  }
}

- (UIEdgeInsets)popoverLayoutMargins
{
  if ([(UIPopoverController *)self _shimPopoverPresentationController]&& !self->_presentationController)
  {
    [0 popoverLayoutMargins];
  }

  else
  {
    top = self->_popoverLayoutMargins.top;
    left = self->_popoverLayoutMargins.left;
    bottom = self->_popoverLayoutMargins.bottom;
    right = self->_popoverLayoutMargins.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setPopoverLayoutMargins:(UIEdgeInsets)popoverLayoutMargins
{
  right = popoverLayoutMargins.right;
  bottom = popoverLayoutMargins.bottom;
  left = popoverLayoutMargins.left;
  top = popoverLayoutMargins.top;
  if ([(UIPopoverController *)self _shimPopoverPresentationController]&& (presentationController = self->_presentationController) != 0)
  {

    [(UIPopoverPresentationController *)presentationController setPopoverLayoutMargins:top, left, bottom, right];
  }

  else
  {
    self->_popoverLayoutMargins.top = top;
    self->_popoverLayoutMargins.left = left;
    self->_popoverLayoutMargins.bottom = bottom;
    self->_popoverLayoutMargins.right = right;
  }
}

- (UIColor)backgroundColor
{
  if ([(UIPopoverController *)self _shimPopoverPresentationController]&& (presentationController = self->_presentationController) != 0)
  {
    v4 = [(UIPopoverPresentationController *)presentationController backgroundColor];
  }

  else
  {
    v4 = self->_backgroundColor;
  }

  return v4;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
  v10 = backgroundColor;
  if ([(UIPopoverController *)self _shimPopoverPresentationController])
  {
    presentationController = self->_presentationController;
    if (presentationController)
    {
      [(UIPopoverPresentationController *)presentationController setBackgroundColor:v10];
    }

    else
    {
      v5 = v10;
      if (self->_backgroundColor == v10)
      {
        goto LABEL_9;
      }

      v8 = [(UIColor *)v10 copy];
      v9 = self->_backgroundColor;
      self->_backgroundColor = v8;
    }
  }

  else
  {
    v5 = v10;
    if (self->_backgroundColor == v10)
    {
      goto LABEL_9;
    }

    v6 = [(UIColor *)v10 copy];
    v7 = self->_backgroundColor;
    self->_backgroundColor = v6;

    [(_UIPopoverView *)self->_popoverView setPopoverBackgroundColor:v10];
  }

  v5 = v10;
LABEL_9:
}

- (void)setPassthroughViews:(NSArray *)passthroughViews
{
  v9 = passthroughViews;
  if ([(UIPopoverController *)self _shimPopoverPresentationController])
  {
    presentationController = self->_presentationController;
    if (presentationController)
    {
      [(UIPopoverPresentationController *)presentationController setPassthroughViews:v9];
    }

    else
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_passthroughViews;
      self->_passthroughViews = v7;
    }

    v6 = v9;
  }

  else
  {
    v5 = [(NSArray *)v9 copy];

    [(UIDimmingView *)self->_dimmingView setPassthroughViews:v5];
    v6 = v5;
  }
}

- (Class)_popoverLayoutInfoForChromeClass:(Class)a3
{
  objc_opt_class();
  v3 = objc_opt_class();

  return v3;
}

- (Class)_defaultChromeViewClass
{
  popoverControllerStyle = self->_popoverControllerStyle;
  if (popoverControllerStyle == 1)
  {
    v5 = objc_opt_class();
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (popoverControllerStyle || (v5 = +[_UIPopoverStandardChromeView legacyChromeViewClass]) == 0)
  {
LABEL_8:
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:663 description:@"Failed to determine chrome view class"];

    v5 = 0;
  }

LABEL_4:

  return v5;
}

- (void)_setPresentationState:(int)a3
{
  v5 = [(UIPopoverController *)self _managingSplitViewController];
  popoverView = self->_popoverView;
  v12 = v5;
  if (popoverView)
  {
    v7 = [(UIView *)popoverView window];
    if (v7)
    {
      v9 = self->_popoverControllerStyle == 1 && v12 != 0;
    }

    else
    {
      v9 = 0;
    }

    v5 = v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = self->_presentationState - 1;
  if (v9 && (a3 - 1) < 2 != v10 < 2)
  {
    v11 = v10 < 2;
    [v5 _popoverController:self willChangeToVisible:(a3 - 1) < 2];
    self->_presentationState = a3;
    [v12 _popoverController:self didChangeFromVisible:v11];
    v5 = v12;
  }

  else
  {
    self->_presentationState = a3;
  }
}

- (void)_incrementSlideTransitionCount:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    if (!self->_slideTransitionCount)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:693 description:@"About to overflow slide transition count"];
    }

    v4 = -1;
  }

  self->_slideTransitionCount += v4;
}

- (void)_invalidateLayoutInfo
{
  preferredLayoutInfo = self->_preferredLayoutInfo;
  self->_preferredLayoutInfo = 0;
}

- (void)_presentPopoverBySlidingIn:(BOOL)a3 fromEdge:(unint64_t)a4 ofView:(id)a5 animated:(BOOL)a6 stateOnly:(BOOL)a7 notifyDelegate:(BOOL)a8
{
  v106 = a8;
  v105 = a6;
  v108 = a3;
  v125[1] = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = [v10 window];
  if (v11)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E695DF30];
    v11 = _NSFullMethodName();
    [v12 raise:*MEMORY[0x1E695D940] format:{@"%@: Popovers cannot be presented from a view which does not have a window.", v11}];
LABEL_4:
  }

  if (a4 != 2 && a4 != 8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:707 description:@"Only 'UIMinXEdge' and 'UIMaxXEdge' are currently supported"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v10;
  }

  else
  {
    v14 = [v10 window];
  }

  v15 = v14;
  presentationState = self->_presentationState;
  v17 = presentationState == 4 && v108;
  v18 = presentationState != 2 || v108;
  if ([v14 _isTextEffectsWindow])
  {
    *&self->_popoverControllerFlags |= 8u;
  }

  [(UIPopoverController *)self _layoutDimmingViewForInterfaceOrientationOfHostingWindow:v15];
  v19 = [(UIView *)self->_dimmingView superview];

  if (v19 != v15)
  {
    [v15 addSubview:self->_dimmingView];
  }

  v20 = [(UIPopoverController *)self _managingSplitViewController];
  if (v20)
  {
    v21 = [(UIPopoverController *)self _managingSplitViewController];
    [v21 _contentSizeForChildViewController:self->_contentViewController inPopoverController:self];
    v23 = v22;
  }

  else
  {
    [(UIViewController *)self->_contentViewController _resolvedPreferredContentSize];
    v23 = v24;
  }

  [v10 bounds];
  Height = CGRectGetHeight(v126);
  v26 = 0.0;
  if (a4 != 2)
  {
    [v10 bounds];
    v26 = CGRectGetWidth(v127) - v23;
  }

  if (!self->_preferredLayoutInfo)
  {
    dimmingView = self->_dimmingView;
    [v10 convertRect:v15 toView:{v26, 0.0, v23, Height}];
    [(UIView *)dimmingView convertRect:v15 fromView:?];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    self->_targetRectInDimmingView.origin.x = v28;
    self->_targetRectInDimmingView.origin.y = v30;
    self->_targetRectInDimmingView.size.width = v32;
    self->_targetRectInDimmingView.size.height = v34;
    v36 = objc_alloc_init([(UIPopoverController *)self _popoverLayoutInfoForChromeClass:objc_opt_class()]);
    preferredLayoutInfo = self->_preferredLayoutInfo;
    self->_preferredLayoutInfo = v36;

    v38 = self->_preferredLayoutInfo;
    v122[0] = MEMORY[0x1E69E9820];
    v122[1] = 3221225472;
    v122[2] = __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke;
    v122[3] = &unk_1E71031F0;
    v122[4] = self;
    *&v122[5] = v29;
    *&v122[6] = v31;
    *&v122[7] = v33;
    *&v122[8] = v35;
    v123 = a4 == 2;
    [(_UIPopoverLayoutInfo *)v38 updateProperties:v122];
  }

  v128.origin.x = v26;
  v128.origin.y = 0.0;
  v128.size.width = v23;
  v128.size.height = Height;
  Width = CGRectGetWidth(v128);
  if (!a7)
  {
    v129.origin.x = v26;
    v129.origin.y = 0.0;
    v129.size.width = v23;
    v129.size.height = Height;
    v44 = CGRectGetWidth(v129);
    v45 = -v44;
    v46 = v26 + v44;
    if (a4 == 2)
    {
      v46 = v45;
    }

    v47 = self->_dimmingView;
    [v10 convertRect:v15 toView:{v46, 0.0, v23, Height}];
    [(UIView *)v47 convertRect:v15 fromView:?];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    if (v17)
    {
      v56 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
      [v56 setSourceViewRect:{v49, v51, v53, v55}];
      v57 = [(UIPopoverController *)self _layoutInfoFromLayoutInfo:v56 forCurrentKeyboardStateAndHostingWindow:v15];

      [(UIPopoverController *)self _startWatchingForKeyboardNotificationsIfNecessary];
    }

    else if (v18)
    {
      v58 = [(UIView *)self->_popoverView layer];
      v59 = [v58 presentationLayer];
      popoverView = self->_popoverView;
      if (v59)
      {
        v61 = [(UIView *)popoverView layer];
        v62 = [v61 presentationLayer];
        [v62 frame];
        v101 = v64;
        v102 = v63;
        v66 = v65;
        v68 = v67;
      }

      else
      {
        [(UIView *)popoverView frame];
        v101 = v70;
        v102 = v69;
        v66 = v71;
        v68 = v72;
      }

      v73 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
      [v73 setPreferredContentSize:{v66, v68}];
      [(UIView *)self->_dimmingView bounds];
      v74 = CGRectGetWidth(v130);
      [(UIView *)self->_dimmingView bounds];
      v75 = CGRectGetHeight(v131);
      if (v74 < v75)
      {
        v74 = v75;
      }

      v76 = 0.0;
      if (a4 != 2)
      {
        [v10 bounds];
        v76 = CGRectGetWidth(v132) - v23;
      }

      [v73 setContainingFrame:{v76, 0.0, v74, v74}];
      [v73 setSourceViewRect:{v102, v101, v66, v68}];
      v57 = [(UIPopoverController *)self _layoutInfoFromLayoutInfo:v73 forCurrentKeyboardStateAndHostingWindow:v15];
    }

    else
    {
      v57 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:v15];
    }

    if (v108)
    {
      v103 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:v15];
    }

    else
    {
      v77 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
      [v77 setPreferredContentSize:{v53, v55}];
      [v77 setSourceViewRect:{v49, v51, v53, v55}];
      v103 = [(UIPopoverController *)self _layoutInfoFromLayoutInfo:v77 forCurrentKeyboardStateAndHostingWindow:v15];
    }

    objc_initWeak(&location, self);
    [(UIPopoverController *)self _incrementSlideTransitionCount:1];
    if (!self->_popoverView)
    {
      popoverBackgroundViewClass = self->_popoverBackgroundViewClass;
      if (!popoverBackgroundViewClass)
      {
        popoverBackgroundViewClass = objc_opt_class();
      }

      v79 = objc_alloc([objc_opt_class() _popoverViewClass]);
      [v57 frame];
      v80 = [v79 initWithFrame:popoverBackgroundViewClass backgroundViewClass:?];
      v81 = self->_popoverView;
      self->_popoverView = v80;

      [(_UIPopoverView *)self->_popoverView setPopoverController:self];
      v82 = self->_popoverView;
      +[_UIPopoverSlidingChromeView cornerRadius];
      [(_UIPopoverView *)v82 _setCornerRadius:?];
      [(UIPopoverController *)self _setPopoverBackgroundStyle:self->_popoverBackgroundStyle];
      [(_UIPopoverView *)self->_popoverView setPopoverBackgroundColor:self->_backgroundColor];
    }

    v118[0] = MEMORY[0x1E69E9820];
    v118[1] = 3221225472;
    v118[2] = __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_2;
    v118[3] = &unk_1E70F5AF0;
    v120 = v17;
    v118[4] = self;
    v39 = v57;
    v119 = v39;
    [UIView performWithoutAnimation:v118];

    if (v108)
    {
      v43 = 1;
    }

    else
    {
      v43 = 3;
    }

    if (v108)
    {
      v83 = 2;
    }

    else
    {
      v83 = 4;
    }

    if (self->_presentationState == v83)
    {
      goto LABEL_60;
    }

    contentViewController = self->_contentViewController;
    if (v108)
    {
      [(UIViewController *)contentViewController beginAppearanceTransition:1 animated:0];
      if (presentationState == 4)
      {
        v85 = [MEMORY[0x1E696AD88] defaultCenter];
        [v85 postNotificationName:@"_UIAlertWillAppearNotification" object:self userInfo:0];
        v124 = @"UIPopoverControllerPresentingWindowKey";
        v86 = [(UIView *)self->_popoverView window];
        v125[0] = v86;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:&v124 count:1];
        [v85 postNotificationName:@"UIPopoverControllerWillPresentPopoverNotification" object:self userInfo:v87];

        [(UIPopoverController *)self _startWatchingForWindowRotations];
      }
    }

    else
    {
      if ([(UIViewController *)contentViewController _appearState]!= 2)
      {
LABEL_60:
        v42 = 0;
LABEL_67:
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_3;
        aBlock[3] = &unk_1E70F35B8;
        aBlock[4] = self;
        v40 = v103;
        v117 = v40;
        v41 = _Block_copy(aBlock);

        goto LABEL_68;
      }

      [(UIViewController *)self->_contentViewController beginAppearanceTransition:0 animated:0];
    }

    v42 = 1;
    goto LABEL_67;
  }

  objc_initWeak(&location, self);
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (v108)
  {
    v43 = 1;
  }

  else
  {
    v43 = 3;
  }

LABEL_68:
  [(UIPopoverController *)self _setPresentationState:v43];
  v88 = [(UIPopoverController *)self _completionBlockForDismissalWhenNotifyingDelegate:v106];
  v110[0] = MEMORY[0x1E69E9820];
  v110[1] = 3221225472;
  v110[2] = __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_4;
  v110[3] = &unk_1E7103218;
  objc_copyWeak(&v112, &location);
  v113 = a7;
  v114 = v108;
  v110[4] = self;
  v89 = v88;
  v111 = v89;
  v115 = v42;
  v90 = _Block_copy(v110);
  if (!v105 || a7)
  {
    if (v41)
    {
      v41[2](v41);
    }

    v90[2](v90, 1);
  }

  else
  {
    v91 = self->_dimmingView;
    [v39 frame];
    [(UIView *)v91 convertRect:v15 toView:?];
    [v10 convertRect:v15 fromView:?];
    if (v108)
    {
      if (a4 == 2)
      {
        MaxX = CGRectGetMaxX(*&v92);
      }

      else
      {
        MinX = CGRectGetMinX(*&v92);
        [v10 bounds];
        MaxX = MinX - CGRectGetMaxX(v133);
      }

      v97 = Width - MaxX;
    }

    else if (a4 == 2)
    {
      v97 = CGRectGetMaxX(*&v92);
    }

    else
    {
      v99 = CGRectGetMinX(*&v92);
      [v10 bounds];
      v97 = v99 - CGRectGetMaxX(v134);
    }

    [(UIPopoverController *)self _presentationAnimationDuration];
    [UIView animateWithDuration:v41 animations:v90 completion:v100 * (v97 / Width)];
  }

  objc_destroyWeak(&v112);
  objc_destroyWeak(&location);
}

uint64_t __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 128) setPreferredContentSize:{*(a1 + 56), *(a1 + 64)}];
  +[_UIPopoverSlidingChromeView contentViewInsets];
  [*(*(a1 + 32) + 128) setContentInset:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 128);
  [*(v2 + 40) bounds];
  [v3 setContainingFrame:?];
  [*(*(a1 + 32) + 128) setContainingFrameInsets:{*(*(a1 + 32) + 448), *(*(a1 + 32) + 456), *(*(a1 + 32) + 464), *(*(a1 + 32) + 472)}];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = v4[20];
  v7 = v4[21];
  v8 = v4[22];
  v9 = v4[23];

  return [v5 setSourceViewRect:{v6, v7, v8, v9}];
}

uint64_t __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _transitionFromViewController:0 toViewController:*(*(a1 + 32) + 16) animated:0];
  }

  [*(*(a1 + 32) + 40) addSubview:*(*(a1 + 32) + 32)];
  v2 = *(*(a1 + 32) + 32);
  [*(a1 + 40) frame];
  [v2 setFrame:?];
  v3 = *(*(a1 + 32) + 32);

  return [v3 layoutBelowIfNeeded];
}

void __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) popoverView];
  [*(a1 + 40) frame];
  [v2 setFrame:?];
}

void __100__UIPopoverController__presentPopoverBySlidingIn_fromEdge_ofView_animated_stateOnly_notifyDelegate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = WeakRetained;
  if ((*(a1 + 56) & 1) != 0 || (v3 = [WeakRetained _slideTransitionCount] == 1, WeakRetained = v6, v3))
  {
    if ([WeakRetained _presentationState] == 3 || *(a1 + 56) == 1 && (*(a1 + 57) & 1) == 0)
    {
      [v6 _setPresentationState:4];
      [v6 _setPresentingView:0];
      if (!*(*(a1 + 32) + 384))
      {
        [v6 _setPresentationEdge:0];
      }

      (*(*(a1 + 40) + 16))();
      if ((*(a1 + 56) & 1) == 0 && *(a1 + 58) == 1)
      {
        v4 = [v6 contentViewController];
        [v4 endAppearanceTransition];
      }

      [v6 _postludeForDismissal];
    }

    else if ([v6 _presentationState] == 1)
    {
      [v6 _setPresentationState:2];
      if ((*(a1 + 56) & 1) == 0 && *(a1 + 58) == 1)
      {
        v5 = [v6 contentViewController];
        [v5 endAppearanceTransition];
      }
    }

    [v6 _resetSlideTransitionCount];
  }

  else if ([v6 _slideTransitionCount] && (*(a1 + 56) & 1) == 0)
  {
    [v6 _incrementSlideTransitionCount:0];
  }
}

- (void)_presentPopoverFromEdge:(unint64_t)a3 ofView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  obj = a4;
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);
  if (WeakRetained || self->_presentationEdge && !self->_vendedGestureRecognizer)
  {
    v10 = objc_loadWeakRetained(&self->_presentingView);
    if (v10 == obj)
    {
      presentationEdge = self->_presentationEdge;

      if (presentationEdge == a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:891 description:@"Unexpected presenting view or presentation edge"];
  }

LABEL_9:
  v13 = objc_storeWeak(&self->_presentingView, obj);
  self->_presentationEdge = a3;
  v14 = v13;
  [(UIPopoverController *)self _presentPopoverBySlidingIn:1 fromEdge:a3 ofView:obj animated:v5 stateOnly:0 notifyDelegate:0];
}

- (void)_presentPopoverFromRect:(CGRect)a3 embeddedInView:(id)a4 usingViewForLayoutConstraints:(id)a5 permittedArrowDirections:(unint64_t)a6 animate:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v72[1] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a5;
  if (a6 == -1)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D940];
    v19 = _NSFullMethodName();
    [v17 raise:v18 format:{@"%@: Popovers cannot be presented with UIPopoverArrowDirectionUnknown.", v19}];
  }

  v20 = [v15 window];
  if (!v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v20 = _NSFullMethodName();
    [v21 raise:v22 format:{@"%@: Popovers cannot be presented from a view which does not have a window.", v20}];
  }

LABEL_7:
  v23 = [v16 subviews];
  v24 = [v23 containsObject:v15];

  if ((v24 & 1) == 0)
  {
    v25 = MEMORY[0x1E695DF30];
    v26 = *MEMORY[0x1E695D940];
    v27 = _NSFullMethodName();
    [v25 raise:v26 format:{@"%@: The view for embedding must be a subview of the layoutConstraintView.", v27}];
  }

  *&self->_popoverControllerFlags |= 0x30u;
  self->_embeddedTargetRect.origin.x = x;
  self->_embeddedTargetRect.origin.y = y;
  self->_embeddedTargetRect.size.width = width;
  self->_embeddedTargetRect.size.height = height;
  objc_storeStrong(&self->_layoutConstraintView, a5);
  popoverBackgroundViewClass = self->_popoverBackgroundViewClass;
  if (!popoverBackgroundViewClass)
  {
    popoverBackgroundViewClass = [(UIPopoverController *)self _defaultChromeViewClass];
  }

  [(UIPopoverController *)self _setPresentationState:1];
  self->_targetRectInEmbeddingView.origin.x = x;
  self->_targetRectInEmbeddingView.origin.y = y;
  self->_targetRectInEmbeddingView.size.width = width;
  self->_targetRectInEmbeddingView.size.height = height;
  [v15 convertRect:v16 toView:{x, y, width, height}];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = objc_alloc_init([(UIPopoverController *)self _popoverLayoutInfoForChromeClass:popoverBackgroundViewClass]);
  preferredLayoutInfo = self->_preferredLayoutInfo;
  self->_preferredLayoutInfo = v37;

  v39 = self->_preferredLayoutInfo;
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke;
  v63[3] = &unk_1E7103240;
  v63[4] = self;
  v65 = popoverBackgroundViewClass;
  v66 = a6;
  v40 = v16;
  v64 = v40;
  v67 = v30;
  v68 = v32;
  v69 = v34;
  v70 = v36;
  [(_UIPopoverLayoutInfo *)v39 updateProperties:v63];
  [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setPreferredArrowDirections:[(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo arrowDirection]];
  [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo frame];
  [v40 convertRect:v15 toView:?];
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_2;
  v62[3] = &unk_1E7103268;
  v62[4] = self;
  *&v62[5] = v41;
  *&v62[6] = v43;
  *&v62[7] = v45;
  *&v62[8] = v47;
  v62[9] = popoverBackgroundViewClass;
  [UIView performWithoutAnimation:v62];
  v49 = [MEMORY[0x1E696AD88] defaultCenter];
  v71 = @"UIPopoverControllerPresentingWindowKey";
  v50 = [v15 window];
  v72[0] = v50;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:&v71 count:1];
  [v49 postNotificationName:@"UIPopoverControllerWillPresentPopoverNotification" object:self userInfo:v51];

  [(UIPopoverController *)self _transitionFromViewController:0 toViewController:self->_contentViewController animated:0];
  v73.origin.x = v42;
  v73.origin.y = v44;
  v73.size.width = v46;
  v73.size.height = v48;
  v52 = CGRectGetWidth(v73) * 0.5;
  v74.origin.x = v42;
  v74.origin.y = v44;
  v74.size.width = v46;
  v74.size.height = v48;
  v53 = CGRectGetHeight(v74);
  v54 = [(_UIPopoverView *)self->_popoverView arrowDirection];
  if (v54 - 1 < 2)
  {
    [(_UIPopoverView *)self->_popoverView arrowOffset];
    v52 = v52 + v56;
  }

  else if (v54 == 4 || v54 == 8)
  {
    [(_UIPopoverView *)self->_popoverView arrowOffset];
    v53 = v53 + v55;
  }

  if ((*&self->_popoverControllerFlags & 0x20) != 0)
  {
    [(UIView *)self->_popoverView setAlpha:0.0];
    [v15 addSubview:self->_popoverView];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_3;
    aBlock[3] = &unk_1E71016A8;
    aBlock[4] = self;
    v61 = v7;
    *&aBlock[5] = v42;
    *&aBlock[6] = v44;
    *&aBlock[7] = v46;
    *&aBlock[8] = v48;
    *&aBlock[9] = v52;
    *&aBlock[10] = v53;
    v57 = _Block_copy(aBlock);
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_111;
    v59[3] = &unk_1E70F5AC0;
    v59[4] = self;
    v58 = _Block_copy(v59);
    if (v7)
    {
      [UIView animateWithDuration:v57 animations:v58 completion:0.23];
    }

    else
    {
      v57[2](v57);
      v58[2](v58, 1);
    }
  }

  else
  {
    [v15 addSubview:self->_popoverView];
    [(UIPopoverController *)self _setPresentationState:2];
  }

  [(UIView *)self->_popoverView layoutBelowIfNeeded];
}

uint64_t __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  [*(a1 + 48) contentViewInsets];
  [v2 setContentInset:?];
  v3 = *(*(a1 + 32) + 128);
  [*(a1 + 48) arrowHeight];
  [v3 setArrowHeight:?];
  [*(*(a1 + 32) + 128) setPreferredContentSize:{*(*(a1 + 32) + 144), *(*(a1 + 32) + 152)}];
  [*(*(a1 + 32) + 128) setPreferredArrowDirections:*(a1 + 56)];
  v4 = *(*(a1 + 32) + 128);
  [*(a1 + 40) bounds];
  [v4 setContainingFrame:?];
  [*(*(a1 + 32) + 128) setContainingFrameInsets:{*(*(a1 + 32) + 448), *(*(a1 + 32) + 456), *(*(a1 + 32) + 464), *(*(a1 + 32) + 472)}];
  v5 = *(*(a1 + 32) + 128);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = *(a1 + 88);

  return [v5 setSourceViewRect:{v6, v7, v8, v9}];
}

uint64_t __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(objc_msgSend(objc_opt_class() "_popoverViewClass"))];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  [*(*(a1 + 32) + 32) setPopoverController:?];
  [*(*(a1 + 32) + 32) setArrowDirection:{objc_msgSend(*(*(a1 + 32) + 128), "arrowDirection")}];
  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  [*(a1 + 72) _contentViewCornerRadiusForArrowDirection:{objc_msgSend(*(v5 + 128), "arrowDirection")}];
  [v6 _setCornerRadius:?];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  [*(v7 + 128) offset];
  [v8 setArrowOffset:?];
  [*(a1 + 32) _setPopoverBackgroundStyle:*(*(a1 + 32) + 112)];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  v11 = *(v9 + 120);

  return [v10 setPopoverBackgroundColor:v11];
}

void __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_3(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setAlpha:1.0];
  if (*(a1 + 88) == 1)
  {
    LODWORD(v2) = 1058536130;
    LODWORD(v3) = 1039604887;
    LODWORD(v4) = 1044467595;
    LODWORD(v5) = 1070230353;
    v14 = [MEMORY[0x1E69793D0] functionWithControlPoints:v2 :v3 :v4 :v5];
    v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
    [v6 setTimingFunction:v14];
    [v6 setFromValue:&unk_1EFE2E288];
    [v6 setToValue:&unk_1EFE30190];
    [v6 setRemovedOnCompletion:1];
    [v6 setDuration:UIAnimationDragCoefficient() * 0.23];
    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
    [v7 setTimingFunction:v14];
    [*(a1 + 32) _centerPointForScale:0.699999988 frame:*(a1 + 40) anchor:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    v8 = [MEMORY[0x1E696B098] valueWithCGPoint:?];
    [v7 setFromValue:v8];

    v9 = MEMORY[0x1E696B098];
    v10 = [*(*(a1 + 32) + 32) layer];
    [v10 position];
    v11 = [v9 valueWithCGPoint:?];
    [v7 setToValue:v11];

    [v7 setRemovedOnCompletion:1];
    [v7 setDuration:UIAnimationDragCoefficient() * 0.23];
    v12 = [*(*(a1 + 32) + 32) layer];
    [v12 addAnimation:v6 forKey:@"bounce"];

    v13 = [*(*(a1 + 32) + 32) layer];
    [v13 addAnimation:v7 forKey:@"center"];
  }
}

void __125__UIPopoverController__presentPopoverFromRect_embeddedInView_usingViewForLayoutConstraints_permittedArrowDirections_animate___block_invoke_111(uint64_t a1)
{
  [*(a1 + 32) _setPresentationState:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained popoverController:*(a1 + 32) animationCompleted:0];
  }
}

- (CGPoint)_centerPointForScale:(double)a3 frame:(CGRect)a4 anchor:(CGPoint)a5
{
  v5 = round(a4.origin.x + a4.size.width * 0.5 * a3 - (a3 + -1.0) * a5.x);
  v6 = a4.size.height * 0.5 * a3 + round(a4.origin.y - (a3 + -1.0) * a5.y);
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- (BOOL)_shimPresentSlidingPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  vendedGestureRecognizer = [(UIPopoverController *)self _managingSplitViewController];
  v6 = vendedGestureRecognizer;
  if (vendedGestureRecognizer && self->_popoverControllerStyle == 1)
  {
    if (self->_vendedGestureRecognizer)
    {
      vendedGestureRecognizer = self->_vendedGestureRecognizer;
    }

    v7 = [vendedGestureRecognizer view];
    if (self->_vendedGestureRecognizer)
    {
      presentationEdge = self->_presentationEdge;
    }

    else
    {
      presentationEdge = 2;
    }

    [(UIPopoverController *)self _presentPopoverFromEdge:presentationEdge ofView:v7 animated:v3];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_commonPresentPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v78[1] = *MEMORY[0x1E69E9840];
  v15 = a4;
  if ([(UIPopoverController *)self _shimPresentSlidingPopoverAnimated:v6])
  {
    goto LABEL_34;
  }

  if (self->_popoverControllerStyle)
  {
    v52 = [MEMORY[0x1E696AAA8] currentHandler];
    [v52 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:1040 description:@"This method is only supported for fading popovers"];
  }

  if (a5 == -1)
  {
    v16 = MEMORY[0x1E695DF30];
    v17 = _NSFullMethodName();
    [v16 raise:*MEMORY[0x1E695D940] format:{@"%@: Popovers cannot be presented with UIPopoverArrowDirectionUnknown.", v17}];
  }

  v18 = [v15 window];
  if (!v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }

    v19 = MEMORY[0x1E695DF30];
    v18 = _NSFullMethodName();
    [v19 raise:*MEMORY[0x1E695D940] format:{@"%@: Popovers cannot be presented from a view which does not have a window.", v18}];
  }

LABEL_10:
  if (![(UIPopoverController *)self isPresentingOrDismissing])
  {
    if (width < 1.0 || height < 1.0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke;
      block[3] = &unk_1E70F32F0;
      block[4] = self;
      block[5] = a2;
      if (_commonPresentPopoverFromRect_inView_permittedArrowDirections_animated__onceToken != -1)
      {
        dispatch_once(&_commonPresentPopoverFromRect_inView_permittedArrowDirections_animated__onceToken, block);
      }

      if (width < 2.0)
      {
        width = 2.0;
      }

      if (height < 2.0)
      {
        height = 2.0;
      }
    }

    objc_storeStrong(&self->_currentPresentationView, a4);
    self->_currentPresentationRectInView.origin.x = x;
    self->_currentPresentationRectInView.origin.y = y;
    self->_currentPresentationRectInView.size.width = width;
    self->_currentPresentationRectInView.size.height = height;
    self->_originalArrowDirections = a5;
    [(UIPopoverController *)self _setPresentationState:1];
    self->_requestedArrowDirections = a5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v15;
    }

    else
    {
      v20 = [v15 window];
    }

    v21 = v20;
    if ([v20 _isTextEffectsWindow])
    {
      *&self->_popoverControllerFlags |= 8u;
    }

    v53 = [MEMORY[0x1E696AD88] defaultCenter];
    [v53 postNotificationName:@"_UIAlertWillAppearNotification" object:self userInfo:0];
    v77 = @"UIPopoverControllerPresentingWindowKey";
    v78[0] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    [v53 postNotificationName:@"UIPopoverControllerWillPresentPopoverNotification" object:self userInfo:v22];

    if (self->_popoverView)
    {
      [(UIPopoverController *)self _layoutDimmingViewForInterfaceOrientationOfHostingWindow:v21];
      [v15 convertRect:self->_dimmingView toView:{x, y, width, height}];
      self->_targetRectInDimmingView.origin.x = v23;
      self->_targetRectInDimmingView.size.height = v24;
      self->_targetRectInDimmingView.origin.y = v25;
      self->_targetRectInDimmingView.size.width = v26;
      preferredLayoutInfo = self->_preferredLayoutInfo;
      [(UIView *)self->_dimmingView bounds];
      [(_UIPopoverLayoutInfo *)preferredLayoutInfo setContainingFrame:?];
      [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setSourceViewRect:self->_targetRectInDimmingView.origin.x, self->_targetRectInDimmingView.origin.y, self->_targetRectInDimmingView.size.width, self->_targetRectInDimmingView.size.height];
      [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setPreferredArrowDirections:a5];
      v28 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardState];
      -[_UIPopoverLayoutInfo setPreferredArrowDirections:](self->_preferredLayoutInfo, "setPreferredArrowDirections:", [v28 arrowDirection]);
      v29 = [(_UIPopoverView *)self->_popoverView arrowDirection];
      v30 = v29 != [v28 arrowDirection];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_2;
      v73[3] = &unk_1E70F5AF0;
      v75 = v30;
      v73[4] = self;
      v74 = v28;
      v31 = v28;
      [UIView performWithoutAnimation:v73];
      [(UIPopoverController *)self _setPresentationState:2];
    }

    else
    {
      if (self->_retainsSelfWhilePresented)
      {
        objc_storeStrong(&self->_retainedSelf, self);
      }

      [(UIPopoverController *)self _layoutDimmingViewForInterfaceOrientationOfHostingWindow:v21];
      [v21 addSubview:self->_dimmingView];
      [v15 convertRect:self->_dimmingView toView:{x, y, width, height}];
      self->_targetRectInDimmingView.origin.x = v32;
      self->_targetRectInDimmingView.origin.y = v33;
      self->_targetRectInDimmingView.size.width = v34;
      self->_targetRectInDimmingView.size.height = v35;
      popoverBackgroundViewClass = self->_popoverBackgroundViewClass;
      if (!popoverBackgroundViewClass)
      {
        popoverBackgroundViewClass = [(UIPopoverController *)self _defaultChromeViewClass];
      }

      v37 = objc_alloc_init([(UIPopoverController *)self _popoverLayoutInfoForChromeClass:popoverBackgroundViewClass]);
      v38 = self->_preferredLayoutInfo;
      self->_preferredLayoutInfo = v37;

      v39 = self->_preferredLayoutInfo;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_3;
      v69[3] = &unk_1E7103290;
      v69[4] = self;
      v71 = popoverBackgroundViewClass;
      v72 = a5;
      v40 = v21;
      v70 = v40;
      [(_UIPopoverLayoutInfo *)v39 updateProperties:v69];
      v41 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:v40];
      -[_UIPopoverLayoutInfo setPreferredArrowDirections:](self->_preferredLayoutInfo, "setPreferredArrowDirections:", [v41 arrowDirection]);
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_4;
      v66[3] = &unk_1E71032B8;
      v66[4] = self;
      v42 = v41;
      v67 = v42;
      v68 = popoverBackgroundViewClass;
      [UIView performWithoutAnimation:v66];
      [(UIPopoverController *)self _transitionFromViewController:0 toViewController:self->_contentViewController animated:0];
      [(UIPopoverController *)self _startWatchingForKeyboardNotificationsIfNecessary];
      v64[0] = 0;
      v64[1] = v64;
      v64[2] = 0x3032000000;
      v64[3] = __Block_byref_object_copy__53;
      v64[4] = __Block_byref_object_dispose__53;
      v65 = self->_popoverView;
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x3032000000;
      v62[3] = __Block_byref_object_copy__53;
      v62[4] = __Block_byref_object_dispose__53;
      v43 = self;
      v63 = v43;
      [(UIView *)self->_popoverView setAlpha:0.0];
      [(UIView *)self->_dimmingView addSubview:self->_popoverView];
      v44 = [(UIView *)self->_popoverView layer];
      [v44 setShouldRasterize:0];

      v45 = [(UIView *)self->_popoverView layer];
      [v45 setAllowsGroupOpacity:0];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_5;
      aBlock[3] = &unk_1E70FB728;
      v61 = v64;
      v59 = v40;
      v60 = v43;
      v46 = _Block_copy(aBlock);
      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_6;
      v57[3] = &unk_1E71032E0;
      v57[4] = v43;
      v57[5] = v64;
      v57[6] = v62;
      v47 = _Block_copy(v57);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_7;
      v54[3] = &unk_1E70F77D0;
      v48 = v46;
      v55 = v48;
      v49 = v47;
      v56 = v49;
      [UIView performWithoutAnimation:v54];

      if (v43->_showsTargetRect)
      {
        v50 = [[UIView alloc] initWithFrame:self->_targetRectInDimmingView.origin.x, self->_targetRectInDimmingView.origin.y, self->_targetRectInDimmingView.size.width, self->_targetRectInDimmingView.size.height];
        v51 = [UIColor colorWithRed:1.0 green:0.0 blue:0.5 alpha:0.5];
        [(UIView *)v50 setBackgroundColor:v51];

        [(UIView *)v50 setTag:4277268721];
        [(UIView *)self->_dimmingView insertSubview:v50 below:self->_popoverView];
      }

      [(UIPopoverController *)v43 _startWatchingForWindowRotations];
      [(UIPopoverController *)v43 _startWatchingForScrollViewNotifications];

      _Block_object_dispose(v62, 8);
      _Block_object_dispose(v64, 8);
    }
  }

LABEL_34:
}

void __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke()
{
  v0 = _NSFullMethodName();
  NSLog(&cfstr_TheRectPassedI.isa, v0);
}

uint64_t __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 32) setArrowDirection:{objc_msgSend(*(a1 + 40), "arrowDirection")}];
    v2 = *(*(a1 + 32) + 32);
    v3 = [v2 backgroundView];
    [objc_opt_class() _contentViewCornerRadiusForArrowDirection:{objc_msgSend(*(a1 + 40), "arrowDirection")}];
    [v2 _setCornerRadius:?];

    v4 = *(*(a1 + 32) + 32);
    [*(a1 + 40) offset];
    [v4 setArrowOffset:?];
  }

  v5 = *(*(a1 + 32) + 32);
  [*(a1 + 40) frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [*(a1 + 40) offset];

  return [v5 _setFrame:v7 arrowOffset:{v9, v11, v13, v14}];
}

void __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 128);
  [*(a1 + 48) contentViewInsets];
  [v2 setContentInset:?];
  v3 = *(*(a1 + 32) + 128);
  [*(a1 + 48) arrowHeight];
  [v3 setArrowHeight:?];
  [*(*(a1 + 32) + 128) setPreferredContentSize:{*(*(a1 + 32) + 144), *(*(a1 + 32) + 152)}];
  [*(*(a1 + 32) + 128) setPreferredArrowDirections:*(a1 + 56)];
  v4 = *(a1 + 32);
  v5 = *(v4 + 128);
  [*(v4 + 40) bounds];
  [v5 setContainingFrame:?];
  [*(*(a1 + 32) + 128) setContainingFrameInsets:{*(*(a1 + 32) + 448), *(*(a1 + 32) + 456), *(*(a1 + 32) + 464), *(*(a1 + 32) + 472)}];
  [*(*(a1 + 32) + 128) setSourceViewRect:{*(*(a1 + 32) + 160), *(*(a1 + 32) + 168), *(*(a1 + 32) + 176), *(*(a1 + 32) + 184)}];
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 128);
  v8 = [v6 windowScene];
  [v7 setPreferLandscapeOrientations:{(objc_msgSend(v8, "_interfaceOrientation") - 3) < 0xFFFFFFFFFFFFFFFELL}];
}

uint64_t __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_4(id *a1)
{
  v2 = objc_alloc([objc_opt_class() _popoverViewClass]);
  [a1[5] frame];
  v3 = [v2 initWithFrame:a1[6] backgroundViewClass:?];
  v4 = a1[4];
  v5 = v4[4];
  v4[4] = v3;

  [*(a1[4] + 4) setPopoverController:?];
  [*(a1[4] + 4) setArrowDirection:{objc_msgSend(a1[5], "arrowDirection")}];
  v6 = *(a1[4] + 4);
  [a1[5] offset];
  [v6 setArrowOffset:?];
  [*(a1[4] + 4) setArrowDirection:{objc_msgSend(a1[5], "arrowDirection")}];
  v7 = *(a1[4] + 4);
  [a1[6] _contentViewCornerRadiusForArrowDirection:{objc_msgSend(a1[5], "arrowDirection")}];
  [v7 _setCornerRadius:?];
  [a1[4] _setPopoverBackgroundStyle:*(a1[4] + 14)];
  v8 = a1[4];
  v9 = v8[4];
  v10 = v8[15];

  return [v9 setPopoverBackgroundColor:v10];
}

uint64_t __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_5(void *a1)
{
  [*(*(a1[6] + 8) + 40) setAlpha:1.0];
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _beginOcclusion:v3];
}

void __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_6(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v2 setShouldRasterize:0];

  v3 = [*(*(*(a1 + 40) + 8) + 40) layer];
  [v3 setAllowsGroupOpacity:1];

  [*(a1 + 32) _setPresentationState:2];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained popoverController:*(*(*(a1 + 48) + 8) + 40) animationCompleted:0];
  }
}

uint64_t __94__UIPopoverController__commonPresentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_7(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (BOOL)_shimPopoverPresentationController
{
  if ((*&self->_popoverControllerFlags & 0x10) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else if (self->_popoverControllerStyle == 1)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = _UIAppUseModernRotationAndPresentationBehaviors();
    if (v2)
    {
      LOBYTE(v2) = [objc_opt_class() _useLegacyPopoverControllers] ^ 1;
    }
  }

  return v2;
}

- (void)_setupPresentationController
{
  if (self->_passthroughViews)
  {
    [(UIPopoverPresentationController *)self->_presentationController setPassthroughViews:?];
  }

  if (self->_backgroundColor)
  {
    [(UIPopoverPresentationController *)self->_presentationController setBackgroundColor:?];
  }

  [(UIPresentationController *)self->_presentationController setDelegate:self];
  [(UIPopoverPresentationController *)self->_presentationController setPopoverBackgroundViewClass:[(UIPopoverController *)self popoverBackgroundViewClass]];
  presentationController = self->_presentationController;
  [(UIPopoverController *)self popoverContentSize];
  [(UIPopoverPresentationController *)presentationController setPopoverContentSize:0 animated:?];
  v4 = self->_presentationController;
  top = self->_popoverLayoutMargins.top;
  left = self->_popoverLayoutMargins.left;
  bottom = self->_popoverLayoutMargins.bottom;
  right = self->_popoverLayoutMargins.right;

  [(UIPopoverPresentationController *)v4 setPopoverLayoutMargins:top, left, bottom, right];
}

- (void)_presentShimmedPopoverFromRect:(CGRect)a3 inView:(id)a4 permittedArrowDirections:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = [v13 _viewControllerForAncestor];
  [(UIViewController *)self->_contentViewController setModalPresentationStyle:7];
  v15 = [(UIViewController *)self->_contentViewController popoverPresentationController];
  if ([v15 dismissed])
  {
    if (!self->_allowsPopoverPresentationToAdapt)
    {
      [v15 setDelegate:self];
    }

    [(UIPopoverController *)self _setPresentationController:v15];
    [(UIPresentationController *)self->_presentationController setSourceRect:x, y, width, height];
    [(UIPresentationController *)self->_presentationController setSourceView:v13];
    [(UIPopoverPresentationController *)self->_presentationController setPermittedArrowDirections:a5];
    [(UIPopoverController *)self _setupPresentationController];
    [v14 presentViewController:self->_contentViewController animated:v6 completion:0];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__UIPopoverController__presentShimmedPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke;
    block[3] = &unk_1E70F3590;
    v17 = v15;
    if (_presentShimmedPopoverFromRect_inView_permittedArrowDirections_animated__once != -1)
    {
      dispatch_once(&_presentShimmedPopoverFromRect_inView_permittedArrowDirections_animated__once, block);
    }
  }
}

void __95__UIPopoverController__presentShimmedPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIPopoverControllerPresentingWindowKey_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Application tried to represent an active popover presentation: %@", &v4, 0xCu);
  }
}

- (void)presentPopoverFromRect:(CGRect)rect inView:(UIView *)view permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated
{
  v6 = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = view;
  if ([(UIPopoverController *)self _shimPopoverPresentationController])
  {
    v14 = [(UIView *)v13 _viewControllerForAncestor];
    v15 = [v14 transitionCoordinator];

    if (v15)
    {
      *&self->_popoverControllerFlags |= 0x40u;
      v16 = [v14 transitionCoordinator];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __87__UIPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke;
      v17[3] = &unk_1E7103330;
      v17[4] = self;
      v19 = x;
      v20 = y;
      v21 = width;
      v22 = height;
      v18 = v13;
      v23 = arrowDirections;
      v24 = v6;
      [v16 animateAlongsideTransition:0 completion:v17];
    }

    else
    {
      [(UIPopoverController *)self _presentShimmedPopoverFromRect:v13 inView:arrowDirections permittedArrowDirections:v6 animated:x, y, width, height];
    }
  }

  else
  {
    [(UIPopoverController *)self _commonPresentPopoverFromRect:v13 inView:arrowDirections permittedArrowDirections:v6 animated:x, y, width, height];
  }
}

void __87__UIPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 350000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__UIPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_2;
  v7[3] = &unk_1E7103308;
  v3 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v4 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v4;
  v5 = v3;
  v6 = *(a1 + 80);
  v8 = v5;
  v11 = v6;
  v12 = *(a1 + 88);
  dispatch_after(v2, MEMORY[0x1E69E96A0], v7);
}

_BYTE *__87__UIPopoverController_presentPopoverFromRect_inView_permittedArrowDirections_animated___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[416] & 0x40) != 0)
  {
    result = [result _presentShimmedPopoverFromRect:*(a1 + 40) inView:*(a1 + 80) permittedArrowDirections:*(a1 + 88) animated:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
    *(*(a1 + 32) + 416) &= ~0x40u;
  }

  return result;
}

- (void)presentPopoverFromBarButtonItem:(UIBarButtonItem *)item permittedArrowDirections:(UIPopoverArrowDirection)arrowDirections animated:(BOOL)animated
{
  v5 = animated;
  v66[1] = *MEMORY[0x1E69E9840];
  v9 = item;
  if (![(UIPopoverController *)self _shimPresentSlidingPopoverAnimated:v5])
  {
    if ([(UIPopoverController *)self _shimPopoverPresentationController])
    {
      v10 = [(UIBarButtonItem *)v9 view];
      v11 = [v10 _viewControllerForAncestor];

      [(UIViewController *)self->_contentViewController setModalPresentationStyle:7];
      v12 = [(UIViewController *)self->_contentViewController popoverPresentationController];
      [(UIPopoverController *)self _setPresentationController:v12];

      [(UIPresentationController *)self->_presentationController setBarButtonItem:v9];
      [(UIPopoverPresentationController *)self->_presentationController setPermittedArrowDirections:arrowDirections];
      [(UIPopoverController *)self _setupPresentationController];
      [v11 presentViewController:self->_contentViewController animated:v5 completion:0];
    }

    else
    {
      v60 = v5;
      if (arrowDirections == -1)
      {
        v13 = MEMORY[0x1E695DF30];
        v14 = *MEMORY[0x1E695D940];
        v15 = _NSFullMethodName();
        [v13 raise:v14 format:{@"%@: Popovers cannot be presented with UIPopoverArrowDirectionUnknown.", v15}];
      }

      v16 = [(UIBarButtonItem *)v9 view];
      if (!v16 || (v17 = v16, -[UIBarButtonItem view](v9, "view"), v18 = objc_claimAutoreleasedReturnValue(), [v18 superview], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v17, !v19))
      {
        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D940];
        v22 = _NSFullMethodName();
        [v20 raise:v21 format:{@"%@: Popovers cannot be presented from a view which does not have a window.", v22}];
      }

      v23 = [(UIBarButtonItem *)v9 view];
      [v23 bounds];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      v32 = (v31 + -1.0) / 3.0;
      if (v32 > 5.0)
      {
        v32 = 5.0;
      }

      v33 = floor(v32);
      v34 = (v29 + -1.0) / 3.0;
      if (v34 > 5.0)
      {
        v34 = 5.0;
      }

      v35 = floor(v34);
      v36 = v33 + v33;
      v37 = v35 + v35;
      v38 = v35 + v35 + v35;
      v39 = v33 + v33 + v33;
      v40 = [(UIBarButtonItem *)v9 view];
      v41 = [v40 superview];
      v42 = [v41 subviews];
      v43 = [(UIBarButtonItem *)v9 view];
      v66[0] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
      v45 = [v42 arrayByExcludingObjectsInArray:v44];

      if ([v45 count])
      {
        v46 = [(UIPopoverController *)self passthroughViews];
        v47 = [v46 count];

        if (v47)
        {
          v59 = arrowDirections;
          v48 = [(UIPopoverController *)self passthroughViews];
          v49 = [v48 mutableCopy];

          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v50 = v45;
          v51 = v45;
          v52 = [v51 countByEnumeratingWithState:&v61 objects:v65 count:16];
          if (v52)
          {
            v53 = v52;
            v54 = *v62;
            do
            {
              for (i = 0; i != v53; ++i)
              {
                if (*v62 != v54)
                {
                  objc_enumerationMutation(v51);
                }

                v56 = *(*(&v61 + 1) + 8 * i);
                if (([v49 containsObject:v56] & 1) == 0)
                {
                  [v49 addObject:v56];
                }
              }

              v53 = [v51 countByEnumeratingWithState:&v61 objects:v65 count:16];
            }

            while (v53);
          }

          [(UIPopoverController *)self setPassthroughViews:v49];
          LOBYTE(arrowDirections) = v59;
          v45 = v50;
        }

        else
        {
          [(UIPopoverController *)self setPassthroughViews:v45];
        }
      }

      v57 = v25 + v37;
      if (self->_targetBarButtonItem != v9)
      {
        objc_storeStrong(&self->_targetBarButtonItem, item);
      }

      v58 = [(UIBarButtonItem *)v9 view];
      [(UIPopoverController *)self presentPopoverFromRect:v58 inView:arrowDirections & 3 permittedArrowDirections:v60 animated:v57, v27 + v36, v29 - v38, v31 - v39];
    }
  }
}

- (void)dismissPopoverAnimated:(BOOL)animated
{
  v3 = animated;
  *&self->_popoverControllerFlags &= ~0x40u;
  if ([(UIPopoverController *)self isPopoverVisible])
  {
    if (!-[UIPopoverController _shimPopoverPresentationController](self, "_shimPopoverPresentationController") || (-[UIPopoverController _presentationController](self, "_presentationController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 dismissing], v5, (v6 & 1) == 0))
    {
      v7 = [(UIPopoverController *)self _managingSplitViewController];
      if (![(UIPopoverController *)self _shimPopoverPresentationController]|| v7)
      {
        if (!v7 || ([v7 _isRotating] & 1) == 0)
        {
          [(UIPopoverController *)self _dismissPopoverAnimated:v3 stateOnly:0 notifyDelegate:0];
        }
      }

      else
      {
        objc_storeStrong(&self->_retainedSelf, self);
        v8 = [(UIPopoverController *)self _presentationController];
        v9 = [v8 presentingViewController];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __46__UIPopoverController_dismissPopoverAnimated___block_invoke;
        v10[3] = &unk_1E70F3590;
        v10[4] = self;
        [v9 dismissViewControllerAnimated:v3 completion:v10];
      }
    }
  }
}

void __46__UIPopoverController_dismissPopoverAnimated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 400);
  *(v1 + 400) = 0;
}

- (void)_setPopoverView:(id)a3
{
  v5 = a3;
  popoverView = self->_popoverView;
  if (popoverView != v5)
  {
    v7 = v5;
    [(_UIPopoverView *)popoverView setPopoverController:0];
    objc_storeStrong(&self->_popoverView, a3);
    [(_UIPopoverView *)self->_popoverView setPopoverController:self];
    v5 = v7;
  }
}

- (id)_splitParentController
{
  WeakRetained = objc_loadWeakRetained(&self->_splitParentController);

  return WeakRetained;
}

- (CGSize)_currentPopoverContentSize
{
  popoverView = self->_popoverView;
  if (popoverView)
  {
    v3 = [(_UIPopoverView *)popoverView contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
  }

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)_updateDimmingViewTransformForInterfaceOrientationOfHostingWindow:(id)a3
{
  v4 = a3;
  if (([v4 _isHostedInAnotherProcess] & 1) == 0 && !+[UIWindow _transformLayerRotationsAreEnabled](UIWindow, "_transformLayerRotationsAreEnabled"))
  {
    v5 = [v4 interfaceOrientation];
    dimmingView = self->_dimmingView;
    switch(v5)
    {
      case 1:
        v7 = 0.0;
        break;
      case 3:
        v7 = 1.57079633;
        break;
      case 4:
        v7 = -1.57079633;
        break;
      default:
        v7 = 3.14159265;
        if (v5 != 2)
        {
          v7 = 0.0;
        }

        break;
    }

    CGAffineTransformMakeRotation(&v8, v7);
    *&v8.a = vrndaq_f64(*&v8.a);
    *&v8.c = vrndaq_f64(*&v8.c);
    *&v8.tx = vrndaq_f64(*&v8.tx);
    v9 = v8;
    [(UIView *)dimmingView setTransform:&v9, *&v8.a, *&v8.c, *&v8.tx];
  }
}

- (void)_layoutDimmingViewForInterfaceOrientationOfHostingWindow:(id)a3
{
  v4 = a3;
  [(UIPopoverController *)self _updateDimmingViewTransformForInterfaceOrientationOfHostingWindow:v4];
  dimmingView = self->_dimmingView;
  [v4 bounds];
  v7 = v6;
  [v4 bounds];
  v9 = v8;

  [(UIView *)dimmingView setFrame:0.0, 0.0, v7, v9];
}

- (void)_transitionFromViewController:(id)a3 toViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v10 view];
  if (self->_popoverContentSize.width == *MEMORY[0x1E695F060] && self->_popoverContentSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    [v10 _resolvedPreferredContentSize];
    self->_popoverContentSize.width = v13;
    self->_popoverContentSize.height = v14;
  }

  popoverView = self->_popoverView;
  if (popoverView)
  {
    v43 = v5;
    v16 = [(_UIPopoverView *)popoverView contentView];
    v17 = [v10 _viewForContentInPopover];
    v18 = [v9 _viewForContentInPopover];
    [v16 bounds];
    v44 = v17;
    [v17 setFrame:?];
    v19 = [(UIViewController *)v10 _parentViewController];

    if (!v19)
    {
LABEL_15:
      [v10 _willBecomeContentViewControllerOfPopover:self];
      [v9 _willResignContentViewControllerOfPopover:self];
      height = self->_popoverContentSize.height;
      v28 = height == 1137.0 || height == 1100.0;
      if (self->_popoverContentSize.width == 320.0 && v28)
      {
        [(UIViewController *)self->_contentViewController _resolvedPreferredContentSize];
        self->_popoverContentSize.width = v29;
        self->_popoverContentSize.height = v30;
      }

      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke;
      v54[3] = &unk_1E70F35B8;
      v31 = v10;
      v55 = v31;
      v32 = v16;
      v56 = v32;
      [UIView performWithoutAnimation:v54];
      v33 = [v9 _popoverController];
      v34 = v33 == self;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke_2;
      aBlock[3] = &unk_1E70F35B8;
      v35 = v31;
      v52 = v35;
      v36 = v18;
      v53 = v36;
      v37 = _Block_copy(aBlock);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke_3;
      v45[3] = &unk_1E7103358;
      v50 = v34;
      v38 = v36;
      v46 = v38;
      v47 = v35;
      v48 = self;
      v49 = v9;
      v39 = _Block_copy(v45);
      if (v43)
      {
        [(UIPopoverController *)self _presentationAnimationDuration];
        [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:4 options:v37 animations:v39 completion:?];
      }

      else
      {
        v37[2](v37);
        v39[2](v39, 1);
      }

      goto LABEL_25;
    }

    v20 = [v10 _existingView];
    v21 = [v20 window];

    WeakRetained = objc_loadWeakRetained(&self->_splitParentController);
    if (WeakRetained)
    {
      v23 = objc_loadWeakRetained(&self->_splitParentController);
      v24 = [(UIViewController *)v10 _parentViewController];

      if (v23 == v24)
      {
        if (!v10)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v41 = [MEMORY[0x1E696AAA8] currentHandler];
      v42 = a2;
      v40 = v41;
      [v41 handleFailureInMethod:v42 object:self file:@"UIPopoverController.m" lineNumber:1430 description:@"Preexisting parent controller doesn't match parent of incoming view controller"];
    }

    else
    {
      v40 = [(UIViewController *)v10 _parentViewController];
      objc_storeWeak(&self->_splitParentController, v40);
    }

    if (!v10)
    {
LABEL_13:
      if (v21)
      {
        [v10 setPerformingModalTransition:1];
        v26 = [v10 _existingView];
        [v26 removeFromSuperview];

        [v10 setPerformingModalTransition:0];
      }

      goto LABEL_15;
    }

LABEL_12:
    v25 = v10[192];
    v10[192] = v25 | 0x100;
    [v10 setParentViewController:0];
    v10[192] = v10[192] & 0xFEFF | v25 & 0x100;
    goto LABEL_13;
  }

LABEL_25:
  [(UIPopoverController *)self _containedViewControllerModalStateChanged];
}

void __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForContentInPopover];
  [v2 setAlpha:0.0];

  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) _viewForContentInPopover];
  [v3 addSubview:v4];
}

uint64_t __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _viewForContentInPopover];
  [v2 setAlpha:1.0];

  v3 = *(a1 + 40);

  return [v3 setAlpha:0.0];
}

uint64_t __79__UIPopoverController__transitionFromViewController_toViewController_animated___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    [*(a1 + 32) removeFromSuperview];
  }

  [*(a1 + 40) _didBecomeContentViewControllerOfPopover:*(a1 + 48)];
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);

  return [v2 _didResignContentViewControllerOfPopover:v3];
}

- (void)_performHierarchyCheckOnViewController:(id)a3
{
  v6 = a3;
  v4 = [(UIViewController *)v6 _parentViewController];
  if (v4)
  {
    v3 = [(UIViewController *)v6 _parentViewController];
    if (([v3 _optsOutOfPopoverControllerHierarchyCheck] & 1) == 0)
    {

LABEL_7:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:@"The content view controller argument must be the root of its associated view controller hierarchy."];
      goto LABEL_8;
    }
  }

  v5 = [v6 _parentModalViewController];

  if (v4)
  {
  }

  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_setPopoverBackgroundStyle:(int64_t)a3
{
  self->_popoverBackgroundStyle = a3;
  popoverView = self->_popoverView;
  if (popoverView)
  {
    [(_UIPopoverView *)popoverView setBackgroundStyle:?];
  }
}

- (void)_setContentViewController:(id)a3 backgroundStyle:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  self->_popoverBackgroundStyle = a4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v9 = self;
  v17 = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__UIPopoverController__setContentViewController_backgroundStyle_animated___block_invoke;
  v11[3] = &unk_1E7101790;
  v11[4] = &v12;
  v11[5] = a4;
  v10 = _Block_copy(v11);
  [v13[5] setContentViewController:v8 animated:v5];
  if (v5)
  {
    [(UIPopoverController *)v9 _presentationAnimationDuration];
    [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:4 options:v10 animations:0 completion:?];
  }

  else
  {
    v10[2](v10);
  }

  _Block_object_dispose(&v12, 8);
}

- (void)_beginMapsTransitionToNewViewController:(id)a3 newTargetRect:(CGRect)a4 inView:(id)a5 arrowDirections:(unint64_t)a6 slideDuration:(double)a7 expandDuration:(double)a8
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = a5;
  [v16 _resolvedPreferredContentSize];
  v19 = v18;
  v21 = v20;
  self->_targetRectInEmbeddingView.origin.x = x;
  self->_targetRectInEmbeddingView.origin.y = y;
  self->_targetRectInEmbeddingView.size.width = width;
  self->_targetRectInEmbeddingView.size.height = height;
  [v17 convertRect:self->_layoutConstraintView toView:{x, y, width, height}];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = [(_UIPopoverView *)self->_popoverView backgroundView];
  [objc_opt_class() _contentViewCornerRadiusForArrowDirection:a6];
  v32 = v31;

  v33 = [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo copy];
  [v33 setPreferredContentSize:{v19, v21}];
  [v33 setPreferredArrowDirections:a6];
  [v33 setSourceViewRect:{v23, v25, v27, v29}];
  v34 = [(_UIPopoverView *)self->_popoverView backgroundView];
  [v34 _contentViewInsetsForArrowDirection:{objc_msgSend(v33, "arrowDirection")}];
  [v33 setContentInset:?];

  [v33 setPreferredArrowDirections:{objc_msgSend(v33, "arrowDirection")}];
  [(UIPopoverController *)self setPreferredLayoutInfo:v33];
  layoutConstraintView = self->_layoutConstraintView;
  [v33 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(UIView *)self->_popoverView superview];
  [(UIView *)layoutConstraintView convertRect:v44 toView:v37, v39, v41, v43];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke;
  v65[3] = &unk_1E7100760;
  v65[4] = self;
  v67 = v46;
  v68 = v48;
  v69 = v50;
  v70 = v52;
  v66 = v33;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_2;
  v56[3] = &unk_1E71033A8;
  v56[4] = self;
  v57 = v66;
  v58 = v16;
  v59 = v32;
  v60 = v46;
  v61 = v48;
  v62 = v50;
  v63 = v52;
  v64 = a8;
  v53 = v16;
  v54 = v66;
  [UIView animateWithDuration:133 delay:v65 options:v56 animations:a7 completion:0.0];
}

void __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _popoverControllerWillBeginMapsTransitionMovingSideways:*(a1 + 32)];
  }

  [*(*(a1 + 32) + 32) frame];
  v3 = v2;
  v5 = v4;
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v8 = [*(*(a1 + 32) + 32) backgroundView];
  [objc_opt_class() arrowHeight];
  v10 = v9;

  v11 = [*(a1 + 40) arrowDirection];
  v12 = v6 + v10;
  if (v11 == 8)
  {
    v13 = v7 - v10;
  }

  else
  {
    v13 = v7;
  }

  if (v11 != 8)
  {
    v12 = v6;
  }

  if (v11 == 4)
  {
    v14 = v7 - v10;
  }

  else
  {
    v14 = v13;
  }

  if (v11 != 4)
  {
    v6 = v12;
  }

  [*(*(a1 + 32) + 32) _hideArrow];
  [*(*(a1 + 32) + 32) setFrame:{v6, v3, v14, v5}];
}

void __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained _popoverControllerDidFinishMapsTransitionMovingSideways:*(a1 + 32)];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_3;
  v14[3] = &unk_1E7103380;
  v3 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v3;
  v17 = *(a1 + 56);
  v16 = *(a1 + 48);
  v4 = *(a1 + 80);
  v18 = *(a1 + 64);
  v19 = v4;
  [UIView performWithoutAnimation:v14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = *(a1 + 96);
  v5 = *(a1 + 80);
  v12 = *(a1 + 64);
  v13 = v5;
  block[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_4;
  block[3] = &unk_1E7101718;
  v6 = *(a1 + 32);
  v9 = WeakRetained;
  v10 = v6;
  v7 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_3(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) arrowDirection];
  [*(*(a1 + 32) + 32) setArrowDirection:{objc_msgSend(*(a1 + 40), "arrowDirection")}];
  v3 = *(*(a1 + 32) + 32);
  [*(a1 + 40) offset];
  [v3 setArrowOffset:?];
  [*(*(a1 + 32) + 32) _setCornerRadius:*(a1 + 56)];
  [*(a1 + 32) setContentViewController:*(a1 + 48) animated:0];
  [*(*(a1 + 32) + 32) frame];
  v5 = v4;
  v7 = v6;
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  v10 = [*(*(a1 + 32) + 32) backgroundView];
  [objc_opt_class() arrowHeight];
  v12 = v11;

  if (v2 == 1)
  {
    v5 = v5 + v12;
    goto LABEL_5;
  }

  if (v2 == 2)
  {
LABEL_5:
    v7 = v7 - v12;
  }

  v13 = *(*(a1 + 32) + 32);

  return [v13 setFrame:{v8, v5, v9, v7}];
}

void __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_5;
  v11[3] = &unk_1E7100760;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12 = v3;
  v13 = v4;
  v5 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_6;
  v8[3] = &unk_1E70F3C60;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = v6;
  v10 = v7;
  [UIView animateWithDuration:133 delay:v11 options:v8 animations:v2 completion:0.0];
}

uint64_t __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 32) _popoverControllerWillBeginMapsTransitionExpanding:*(a1 + 40)];
  }

  [*(*(a1 + 40) + 32) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = *(*(a1 + 40) + 32);

  return [v2 _showArrow];
}

uint64_t __129__UIPopoverController__beginMapsTransitionToNewViewController_newTargetRect_inView_arrowDirections_slideDuration_expandDuration___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = *(a1 + 40);
      v4 = [*(v3 + 16) view];
      [v4 bounds];
      *(v3 + 144) = v5;
      *(v3 + 152) = v6;

      v7 = *(a1 + 32);
      v8 = *(a1 + 40);

      return [v7 _popoverControllerDidFinishMapsTransitionExpanding:v8];
    }
  }

  return result;
}

- (void)_beginMapsTransitionToNewViewController:(id)a3 arrowDirections:(unint64_t)a4 slideDuration:(double)a5 expandDuration:(double)a6
{
  popoverView = self->_popoverView;
  v11 = a3;
  v12 = [(UIView *)popoverView superview];
  [(UIPopoverController *)self _beginMapsTransitionToNewViewController:v11 newTargetRect:v12 inView:a4 arrowDirections:self->_embeddedTargetRect.origin.x slideDuration:self->_embeddedTargetRect.origin.y expandDuration:self->_embeddedTargetRect.size.width, self->_embeddedTargetRect.size.height, a5, a6];
}

- (id)_completionBlockForDismissalWhenNotifyingDelegate:(BOOL)a3
{
  v3 = a3;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v3)
  {
    LOBYTE(v3) = objc_opt_respondsToSelector();
  }

  v6 = objc_opt_respondsToSelector() & 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__UIPopoverController__completionBlockForDismissalWhenNotifyingDelegate___block_invoke;
  aBlock[3] = &unk_1E71033D0;
  objc_copyWeak(&v11, &location);
  v12 = v3 & 1;
  v13 = v6;
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(v7);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

void __73__UIPopoverController__completionBlockForDismissalWhenNotifyingDelegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = objc_loadWeakRetained(WeakRetained + 1);
  v3 = WeakRetained[2];
  v4 = [WeakRetained _splitParentController];
  v5 = WeakRetained[49];
  if (!v5 || [v5 state] != 1 && objc_msgSend(WeakRetained[49], "state") != 2)
  {
    [WeakRetained[5] removeFromSuperview];
  }

  if (v4)
  {
    v6 = [v3 _popoverController];

    if (WeakRetained == v6)
    {
      if (v3)
      {
        v8 = v3[192];
        v3[192] = v8 | 0x100;
        [v3 setParentViewController:v4];
        v3[192] = v3[192] & 0xFEFF | v8 & 0x100;
      }
    }

    else
    {
      v7 = [v3 _popoverController];
      [v7 _setSplitParentController:v4];
    }

    v9 = [WeakRetained _managingSplitViewController];

    if (!v9)
    {
      [WeakRetained _setSplitParentController:0];
    }
  }

  [WeakRetained[4] removeFromSuperview];
  [v3 _didResignContentViewControllerOfPopover:WeakRetained];
  if (*(a1 + 40) == 1)
  {
    [v11 popoverControllerDidDismissPopover:WeakRetained];
  }

  if (*(a1 + 41) == 1)
  {
    [v11 popoverController:WeakRetained animationCompleted:1];
  }

  [WeakRetained _setPresentationState:4];
  [WeakRetained _setPopoverView:0];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"_UIAlertDidDisappearNotification" object:WeakRetained userInfo:0];
  [v10 postNotificationName:@"UIPopoverControllerDidDismissPopoverNotification" object:WeakRetained userInfo:0];
}

- (void)_postludeForDismissal
{
  [(UIPopoverController *)self setPreferredLayoutInfo:0];
  [(UIPopoverController *)self _stopWatchingForNotifications];
  if (self->_showsTargetRect)
  {
    v3 = [(UIView *)self->_dimmingView viewWithTag:4277268721];
    [v3 removeFromSuperview];
  }

  if (self->_showsOrientationMarker)
  {
    v4 = [(UIView *)self->_dimmingView viewWithTag:4277268722];
    [v4 removeFromSuperview];
  }

  if (self->_showsPresentationArea)
  {
    v5 = [(UIView *)self->_dimmingView viewWithTag:4277268723];
    [v5 removeFromSuperview];
  }

  *&self->_popoverControllerFlags &= ~8u;
  if (self->_retainsSelfWhilePresented)
  {
    retainedSelf = self->_retainedSelf;
    self->_retainedSelf = 0;
  }
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained popoverControllerShouldDismissPopover:self];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)popoverPresentationControllerDidDismissPopover:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained popoverControllerDidDismissPopover:self];
  }
}

- (void)popoverPresentationController:(id)a3 willRepositionPopoverToRect:(CGRect *)a4 inView:(id *)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained popoverController:self willRepositionPopoverToRect:a4 inView:a5];
  }
}

- (void)_dismissPopoverAnimated:(BOOL)a3 stateOnly:(BOOL)a4 notifyDelegate:(BOOL)a5
{
  v6 = a5;
  v7 = a3;
  v42 = *MEMORY[0x1E69E9840];
  v9 = [(UIViewController *)self->_contentViewController childModalViewController];

  if (v9)
  {
    [(UIViewController *)self->_contentViewController dismissViewControllerAnimated:0 completion:0];
  }

  targetBarButtonItem = self->_targetBarButtonItem;
  if (targetBarButtonItem)
  {
    self->_targetBarButtonItem = 0;
  }

  layoutConstraintView = self->_layoutConstraintView;
  if (layoutConstraintView)
  {
    self->_layoutConstraintView = 0;
  }

  if ((![(UIPopoverController *)self isPresentingOrDismissing]|| self->_popoverControllerStyle) && self->_popoverView)
  {
    if (self->_popoverControllerStyle)
    {
      presentationEdge = self->_presentationEdge;
      WeakRetained = objc_loadWeakRetained(&self->_presentingView);
      [UIPopoverController _presentPopoverBySlidingIn:"_presentPopoverBySlidingIn:fromEdge:ofView:animated:stateOnly:notifyDelegate:" fromEdge:0 ofView:presentationEdge animated:? stateOnly:? notifyDelegate:?];
    }

    else
    {
      [(UIPopoverController *)self _setPresentationState:3];
      v13 = [(_UIPopoverView *)self->_popoverView presentedActionSheet];
      v14 = v13;
      if (v13)
      {
        [v13 dismissWithClickedButtonIndex:objc_msgSend(v13 animated:{"cancelButtonIndex"), 1}];
      }

      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__53;
      v38 = __Block_byref_object_dispose__53;
      v39 = self->_popoverView;
      v15 = [(UIView *)self->_popoverView layer];
      [v15 setShouldRasterize:0];

      v16 = [(UIView *)self->_popoverView layer];
      [v16 setFrozen:0];

      v17 = [(UIView *)self->_popoverView layer];
      [v17 setAllowsGroupOpacity:0];

      v18 = [v35[5] window];
      if (os_variant_has_internal_diagnostics())
      {
        if (!v18)
        {
          v25 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            v28 = v35[5];
            *buf = 138412290;
            v41 = v28;
            _os_log_fault_impl(&dword_188A29000, v25, OS_LOG_TYPE_FAULT, "Expected window when dismissing popover view in order to set rasterization scale. Using mainScreen scale instead. popoverView = %@", buf, 0xCu);
          }
        }
      }

      else if (!v18)
      {
        v26 = *(__UILogGetCategoryCachedImpl("Assert", &_dismissPopoverAnimated_stateOnly_notifyDelegate____s_category) + 8);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = v35[5];
          *buf = 138412290;
          v41 = v27;
          _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Expected window when dismissing popover view in order to set rasterization scale. Using mainScreen scale instead. popoverView = %@", buf, 0xCu);
        }
      }

      v19 = [(UIView *)self->_popoverView layer];
      if (v18)
      {
        v20 = [v18 screen];
        [v20 scale];
      }

      else
      {
        v20 = [(UIPopoverController *)self contentViewController];
        v5 = [v20 _screen];
        [v5 scale];
      }

      [v19 setRasterizationScale:?];
      if (!v18)
      {
      }

      [(UIViewController *)self->_contentViewController _willResignContentViewControllerOfPopover:self];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __72__UIPopoverController__dismissPopoverAnimated_stateOnly_notifyDelegate___block_invoke;
      aBlock[3] = &unk_1E70FCDA0;
      aBlock[4] = self;
      aBlock[5] = &v34;
      v21 = _Block_copy(aBlock);
      objc_storeStrong(&self->_retainedSelf, self);
      v22 = [(UIPopoverController *)self _completionBlockForDismissalWhenNotifyingDelegate:v6];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __72__UIPopoverController__dismissPopoverAnimated_stateOnly_notifyDelegate___block_invoke_2;
      v30[3] = &unk_1E71033F8;
      v32 = &v34;
      v23 = v22;
      v30[4] = self;
      v31 = v23;
      v24 = _Block_copy(v30);
      if (v7)
      {
        [(UIPopoverController *)self _dismissalAnimationDuration];
        [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:133 options:v21 animations:v24 completion:?];
      }

      else
      {
        v21[2](v21);
        v24[2](v24, 1);
      }

      [(UIPopoverController *)self _postludeForDismissal];

      _Block_object_dispose(&v34, 8);
    }
  }
}

void __72__UIPopoverController__dismissPopoverAnimated_stateOnly_notifyDelegate___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setAlpha:0.0];
  v2 = [*(*(a1 + 32) + 40) superview];
  [v2 _endOcclusion:*(a1 + 32)];

  v3 = *(*(a1 + 32) + 40);
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];
}

void __72__UIPopoverController__dismissPopoverAnimated_stateOnly_notifyDelegate___block_invoke_2(void *a1)
{
  v2 = [*(*(a1[6] + 8) + 40) layer];
  [v2 setShouldRasterize:0];

  v3 = [*(*(a1[6] + 8) + 40) layer];
  [v3 setFrozen:0];

  v4 = [*(*(a1[6] + 8) + 40) layer];
  [v4 setAllowsGroupOpacity:1];

  (*(a1[5] + 16))();
  v5 = a1[4];
  v6 = *(v5 + 400);
  *(v5 + 400) = 0;
}

- (void)dimmingViewWasTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained popoverControllerShouldDismissPopover:self])
  {
    [(UIPopoverController *)self _dismissPopoverAnimated:1 stateOnly:0 notifyDelegate:1];
  }
}

- (id)_gestureRecognizerForPresentationFromEdge:(unint64_t)a3
{
  if (a3 != 2 && a3 != 8)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UIPopoverController.m" lineNumber:1842 description:@"Only 'UIMinXEdge' and 'UIMaxXEdge' are currently supported"];
  }

  vendedGestureRecognizer = self->_vendedGestureRecognizer;
  if (!vendedGestureRecognizer)
  {
    self->_presentationEdge = a3;
    v8 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__swipe_];
    v9 = self->_vendedGestureRecognizer;
    self->_vendedGestureRecognizer = v8;

    [(UIPanGestureRecognizer *)self->_vendedGestureRecognizer setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_vendedGestureRecognizer setMaximumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)self->_vendedGestureRecognizer setDelegate:self];
    v10 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__swipe_];
    dimmingViewGestureRecognizer = self->_dimmingViewGestureRecognizer;
    self->_dimmingViewGestureRecognizer = v10;

    [(UIPanGestureRecognizer *)self->_dimmingViewGestureRecognizer setMinimumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)self->_dimmingViewGestureRecognizer setMaximumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)self->_dimmingViewGestureRecognizer setDelegate:self];
    [(UIView *)self->_dimmingView addGestureRecognizer:self->_dimmingViewGestureRecognizer];
    vendedGestureRecognizer = self->_vendedGestureRecognizer;
  }

  return vendedGestureRecognizer;
}

- (BOOL)_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  vendedGestureRecognizer = self->_vendedGestureRecognizer;
  if (vendedGestureRecognizer == v4 || self->_dimmingViewGestureRecognizer == v4)
  {
    v8 = [(UIGestureRecognizer *)v4 view];
    [(UIPanGestureRecognizer *)v5 locationInView:v8];
    if (vendedGestureRecognizer == v5)
    {
      v14 = v9;
      v15 = v10;
      if ([(UIPopoverController *)self isPopoverVisible])
      {
        goto LABEL_8;
      }

      [(UIPanGestureRecognizer *)self->_vendedGestureRecognizer translationInView:v8];
      v18 = v17;
      if (([v8 _shouldReverseLayoutDirection] & 1) == 0 && v18 <= 0.0 || objc_msgSend(v8, "_shouldReverseLayoutDirection") && v18 >= 0.0)
      {
        LOBYTE(v7) = 0;
        goto LABEL_11;
      }

      v19 = [v8 hitTest:0 withEvent:{v14, v15}];
      if (!v19)
      {
LABEL_8:
        LOBYTE(v7) = 1;
LABEL_11:

        goto LABEL_12;
      }

      v20 = v19;
      do
      {
        objc_opt_class();
        v7 = (objc_opt_isKindOfClass() & 1) == 0 || ([v20 isDecelerating] & 1) == 0 && (self->_presentationEdge & objc_msgSend(v20, "_currentlyAbuttedContentEdges")) != 0;
        v11 = [v20 superview];

        if (!v7)
        {
          break;
        }

        v20 = v11;
      }

      while (v11);
    }

    else
    {
      [(UIPanGestureRecognizer *)v5 locationInView:v8];
      v11 = [v8 hitTest:0 withEvent:?];
      if (v11)
      {
        v12 = [(UIPopoverController *)self contentViewController];
        v13 = [v12 view];
        v7 = [v11 isDescendantOfView:v13] ^ 1;
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    goto LABEL_11;
  }

  LOBYTE(v7) = 1;
LABEL_12:

  return v7;
}

- (BOOL)_gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if ((self->_vendedGestureRecognizer == v6 || self->_dimmingViewGestureRecognizer == v6) && [v7 _isGestureType:8])
  {
    v9 = v8;
    if ([v9 _failsPastHysteresisWithoutMinTouches])
    {
      v10 = [v9 minimumNumberOfTouches] < 2;
    }

    else
    {
      v11 = v6;
      v12 = v9;
      v13 = [(UIPanGestureRecognizer *)v11 minimumNumberOfTouches];
      v14 = [(UIPanGestureRecognizer *)v11 maximumNumberOfTouches];
      v15 = [(UIPanGestureRecognizer *)v11 minimumNumberOfTouches];

      v16 = v14 - v15;
      v17 = [v12 minimumNumberOfTouches];
      v18 = [v12 maximumNumberOfTouches];
      v19 = [v12 minimumNumberOfTouches];

      v21.length = v16 + 1;
      v22.length = v18 - v19 + 1;
      v21.location = v13;
      v22.location = v17;
      v10 = NSIntersectionRange(v21, v22).length != 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  vendedGestureRecognizer = self->_vendedGestureRecognizer;
  if (vendedGestureRecognizer == v6 || self->_dimmingViewGestureRecognizer == v6)
  {
    if ([v7 _isGestureType:10])
    {
      v10 = [(UIGestureRecognizer *)v6 view];
      v11 = [v8 view];
      [v10 convertPoint:v11 toView:{10.0, 10.0}];
      v13 = v12;

      v14 = [(UIGestureRecognizer *)v6 view];
      v15 = [v8 view];
      [v14 convertPoint:v15 toView:{20.0, 10.0}];
      v17 = v16;

      v18 = [v8 direction];
      v19 = v13 < v17;
      if (v13 > v17)
      {
        v19 = 1;
      }

      v20 = v18 & v19;
      goto LABEL_16;
    }

    vendedGestureRecognizer = self->_vendedGestureRecognizer;
  }

  if ((vendedGestureRecognizer == v6 || self->_dimmingViewGestureRecognizer == v6) && [v8 _isGestureType:8])
  {
    v21 = v8;
    if ([v21 _failsPastHysteresisWithoutMinTouches])
    {
      v20 = [v21 minimumNumberOfTouches] > 1;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

LABEL_16:

  return v20;
}

- (void)_swipe:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_vendedGestureRecognizer == v4 || self->_dimmingViewGestureRecognizer == v4)
  {
    v21 = v4;
    if ([(UIGestureRecognizer *)v4 state]!= UIGestureRecognizerStateBegan && [(UIGestureRecognizer *)v21 state]!= UIGestureRecognizerStateChanged)
    {
      if ([(UIGestureRecognizer *)v21 state]!= UIGestureRecognizerStateEnded)
      {
        v16 = [(UIGestureRecognizer *)v21 state];
        v5 = v21;
        if (v16 != 4)
        {
          goto LABEL_44;
        }
      }

      self->_presentationDirection = 0;
      self->_didPresentInActiveSequence = 0;
      v17 = [(UIPopoverController *)self isPopoverVisible];
      v5 = v21;
      if (v17)
      {
        goto LABEL_44;
      }

      [(UIView *)self->_dimmingView removeFromSuperview];
      goto LABEL_43;
    }

    v6 = [(UIGestureRecognizer *)v21 view];
    v7 = v21;
    [(UIPanGestureRecognizer *)v7 velocityInView:v6];
    v9 = v8;
    if (v8 >= 0.0)
    {
      presentationDirection = 0;
    }

    else
    {
      presentationDirection = -1;
    }

    if (v8 > 0.0)
    {
      presentationDirection = 1;
    }

    if (presentationDirection != self->_presentationDirection)
    {
      self->_presentationDirection = presentationDirection;
      if (!presentationDirection)
      {
LABEL_42:

LABEL_43:
        v5 = v21;
        goto LABEL_44;
      }

      [(UIPanGestureRecognizer *)v7 setTranslation:v6 inView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
      presentationDirection = self->_presentationDirection;
    }

    if (presentationDirection)
    {
      v11 = [(UIPopoverController *)self _dimmingView];
      v12 = [v11 _shouldReverseLayoutDirection] ? -1 : 1;

      v13 = self->_presentationDirection;
      v14 = [(UIPopoverController *)self isPopoverVisible];
      if (v13 == v12)
      {
        v15 = !v14 || [(UIPopoverController *)self _isDismissing];
      }

      else
      {
        v15 = v14 && ![(UIPopoverController *)self _isDismissing];
      }

      if (v9 != 0.0)
      {
        [(UIPanGestureRecognizer *)v7 translationInView:v6];
        if (v9 <= 0.0)
        {
          v18 = -v18;
        }

        if (v18 >= 40.0)
        {
          if (v15)
          {
            if ([(UIPopoverController *)self isPopoverVisible]&& ![(UIPopoverController *)self _isDismissing])
            {
              [(UIPopoverController *)self dismissPopoverAnimated:1];
            }

            else
            {
              presentationEdge = self->_presentationEdge;
              v20 = [(UIGestureRecognizer *)self->_vendedGestureRecognizer view];
              [(UIPopoverController *)self _presentPopoverFromEdge:presentationEdge ofView:v20 animated:1];

              self->_didPresentInActiveSequence = 1;
            }
          }

          else if (self->_dimmingViewGestureRecognizer == v7 && !self->_didPresentInActiveSequence && [(UIPopoverController *)self isPopoverVisible]&& ![(UIPopoverController *)self isPresentingOrDismissing])
          {
            self->_didPresentInActiveSequence = 1;
          }
        }
      }
    }

    goto LABEL_42;
  }

LABEL_44:
}

- (void)_setGesturesEnabled:(BOOL)a3
{
  v3 = a3;
  [(UIGestureRecognizer *)self->_vendedGestureRecognizer setEnabled:?];
  dimmingViewGestureRecognizer = self->_dimmingViewGestureRecognizer;

  [(UIGestureRecognizer *)dimmingViewGestureRecognizer setEnabled:v3];
}

- (void)_adjustPopoverForNewContentSizeFromViewController:(id)a3 allowShrink:(BOOL)a4
{
  [(UIViewController *)self->_contentViewController _resolvedPreferredContentSize];
  [(UIPopoverController *)self setPopoverContentSize:1 animated:?];

  [(UIPopoverController *)self _containedViewControllerModalStateChanged];
}

- (void)_newViewControllerWasPushed:(id)a3
{
  v6 = a3;
  if ([(UIPopoverController *)self isPopoverVisible])
  {
    v4 = [v6 userInfo];
    v5 = [v4 objectForKey:0x1EFB3A210];

    [(UIPopoverController *)self _adjustPopoverForNewContentSizeFromViewController:v5 allowShrink:0];
  }
}

- (void)_startWatchingForNavigationControllerNotifications:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:self selector:sel__newViewControllerWasPushed_ name:0x1EFB3A1B0 object:v5];
}

- (void)_stopWatchingForNavigationControllerNotifications:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:0x1EFB3A1B0 object:v5];
}

+ (BOOL)_forceAttemptsToAvoidKeyboard
{
  if (qword_1ED49D840 != -1)
  {
    dispatch_once(&qword_1ED49D840, &__block_literal_global_151);
  }

  return byte_1ED49D831;
}

void __52__UIPopoverController__forceAttemptsToAvoidKeyboard__block_invoke()
{
  v1 = _UIKitPreferencesOnce();
  v0 = [v1 objectForKey:@"UIPopoverControllerForceAttemptsToAvoidKeyboard"];
  byte_1ED49D831 = [v0 BOOLValue];
}

- (BOOL)_attemptsToAvoidKeyboard
{
  if (self->_ignoresKeyboardNotifications)
  {
    return 0;
  }

  if (!self->_popoverControllerStyle || (*&self->_popoverControllerFlags & 0x10) == 0)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _forceAttemptsToAvoidKeyboard];
}

- (id)_layoutInfoFromLayoutInfo:(id)a3 forCurrentKeyboardStateAndHostingWindow:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[UIPopoverController _attemptsToAvoidKeyboard](self, "_attemptsToAvoidKeyboard") || ([v7 windowScene], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "keyboardSceneDelegate"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "visibleFrameInView:", 0), v11 = v10, v13 = v12, v15 = v14, v17 = v16, v9, v8, v71.origin.x = v11, v71.origin.y = v13, v71.size.width = v15, v71.size.height = v17, CGRectIsEmpty(v71)) || (+[UIKeyboard activeKeyboard](UIKeyboard, "activeKeyboard"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isDescendantOfView:", self->_popoverView), v18, v19) || (*&self->_popoverControllerFlags & 8) != 0 || objc_msgSend(UIApp, "_isSpringBoard") && (+[UIKeyboardSceneDelegate automaticKeyboardArbiterClient](UIKeyboardSceneDelegate, "automaticKeyboardArbiterClient"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "keyboardActive"), v20, (v21 & 1) == 0))
  {
    v40 = v6;
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    dimmingView = self->_dimmingView;
    if (dimmingView)
    {
      [(UIView *)dimmingView transform];
    }

    [(UIPopoverController *)self _updateDimmingViewTransformForInterfaceOrientationOfHostingWindow:v7];
    [v7 convertRect:0 fromWindow:{v11, v13, v15, v17}];
    [v7 convertRect:self->_dimmingView toView:?];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [(UIView *)self->_dimmingView frame];
    v78.origin.x = v31;
    v78.origin.y = v32;
    v78.size.width = v33;
    v78.size.height = v34;
    v72.origin.x = v24;
    v72.origin.y = v26;
    v72.size.width = v28;
    v72.size.height = v30;
    v73 = CGRectIntersection(v72, v78);
    top = self->_popoverLayoutMargins.top;
    left = self->_popoverLayoutMargins.left;
    right = self->_popoverLayoutMargins.right;
    v38 = v73.size.height + self->_popoverLayoutMargins.bottom;
    v39 = self->_dimmingView;
    v66[0] = v67;
    v66[1] = v68;
    v66[2] = v69;
    [(UIView *)v39 setTransform:v66];
    v40 = [v6 copy];
    [v40 setContainingFrameInsets:{top, left, v38, right}];
    [v40 sourceViewRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [v40 containingFrame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [v40 containingFrameInsets];
    v58 = v50 + v57;
    v60 = v52 + v59;
    v62 = v54 - (v57 + v61);
    v64 = v56 - (v59 + v63);
    v74.origin.x = v58;
    v74.origin.y = v60;
    v74.size.width = v62;
    v74.size.height = v64;
    v79.origin.x = v42;
    v79.origin.y = v44;
    v79.size.width = v46;
    v79.size.height = v48;
    v75 = CGRectIntersection(v74, v79);
    if (CGRectIsEmpty(v75))
    {
      v76.origin.x = v58;
      v76.origin.y = v60;
      v76.size.width = v62;
      v76.size.height = v64;
      if (CGRectGetMaxY(v76) < v44)
      {
        v77.origin.x = v58;
        v77.origin.y = v60;
        v77.size.width = v62;
        v77.size.height = v64;
        [v40 setSourceViewRect:{v42, CGRectGetMaxY(v77), v46, 1.0}];
      }
    }
  }

  return v40;
}

- (id)_layoutInfoForCurrentKeyboardState
{
  v3 = [(UIView *)self->_popoverView window];
  v4 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardStateAndHostingWindow:v3];

  return v4;
}

- (void)_moveAwayFromTheKeyboard:(id)a3
{
  popoverView = self->_popoverView;
  v5 = a3;
  [(UIView *)popoverView layoutIfNeeded];
  v6 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardState];
  v7 = [v5 objectForKey:@"UIKeyboardAnimationDurationUserInfoKey"];

  if (v7)
  {
    [v7 doubleValue];
  }

  else
  {
    v8 = 0;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__UIPopoverController__moveAwayFromTheKeyboard___block_invoke;
  aBlock[3] = &unk_1E71017E0;
  v15 = v8;
  aBlock[4] = self;
  v14 = v6;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  v11 = [(UIPopoverController *)self contentViewController];
  v12 = [v11 transitionCoordinator];

  if (v12)
  {
    if ([v12 isInteractive])
    {
      [v12 notifyWhenInteractionEndsUsingBlock:v10];
    }

    else
    {
      [v12 animateAlongsideTransition:0 completion:v10];
    }
  }

  else
  {
    v10[2](v10, 0);
  }
}

void __48__UIPopoverController__moveAwayFromTheKeyboard___block_invoke(double *a1)
{
  v1 = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__UIPopoverController__moveAwayFromTheKeyboard___block_invoke_2;
  v3[3] = &unk_1E70F35B8;
  v2 = *(a1 + 5);
  *&v3[4] = a1[4];
  v4 = v2;
  [UIView animateWithDuration:133 delay:v3 options:0 animations:v1 completion:0.0];
}

uint64_t __48__UIPopoverController__moveAwayFromTheKeyboard___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  [*(a1 + 40) frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) offset];

  return [v2 _setFrame:v4 arrowOffset:{v6, v8, v10, v11}];
}

- (void)_keyboardStateChanged:(id)a3
{
  v4 = [a3 userInfo];
  [(UIPopoverController *)self performSelector:sel__moveAwayFromTheKeyboard_ withObject:v4 afterDelay:0.0];
}

- (void)_startWatchingForKeyboardNotificationsIfNecessary
{
  if ([(UIPopoverController *)self _attemptsToAvoidKeyboard])
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__keyboardStateChanged_ name:@"UIKeyboardWillShowNotification" object:0];
    [v3 addObserver:self selector:sel__keyboardStateChanged_ name:@"UIKeyboardDidHideNotification" object:0];
  }
}

- (void)_stopWatchingForKeyboardNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
  [v3 removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
}

- (BOOL)_canRepresentAutomatically
{
  result = targetBarButtonItem && (-[UIBarButtonItem view](targetBarButtonItem, "view"), (v4 = targetBarButtonItem = self->_targetBarButtonItem;
  return result;
}

- (void)_hostingWindowWillRotate:(id)a3
{
  v4 = a3;
  popoverControllerStyle = self->_popoverControllerStyle;
  if (popoverControllerStyle == 1)
  {
    v6 = v4;
    [(UIPopoverController *)self _invalidateLayoutInfo];
  }

  else
  {
    if (popoverControllerStyle)
    {
      goto LABEL_8;
    }

    v6 = v4;
    if (self->_dismissesOnRotation)
    {
      [(UIPopoverController *)self _dismissPopoverAnimated:0 stateOnly:0 notifyDelegate:1];
    }

    else
    {
      [(UIView *)self->_popoverView setAlpha:0.0];
    }
  }

  v4 = v6;
LABEL_8:
}

- (void)_hostingWindowDidRotate:(id)a3
{
  v4 = [a3 object];
  [(UIPopoverController *)self _layoutDimmingViewForInterfaceOrientationOfHostingWindow:v4];
  if ([(UIPopoverController *)self _canRepresentAutomatically]&& (targetBarButtonItem = self->_targetBarButtonItem) != 0)
  {
    [(UIPopoverController *)self presentPopoverFromBarButtonItem:targetBarButtonItem permittedArrowDirections:self->_requestedArrowDirections animated:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();
    currentPresentationView = self->_currentPresentationView;
    if (v7)
    {
      size = self->_currentPresentationRectInView.size;
      origin = self->_currentPresentationRectInView.origin;
      v29 = size;
      v27 = currentPresentationView;
      v10 = currentPresentationView;
      [WeakRetained popoverController:self willRepositionPopoverToRect:&origin inView:&v27];
      v11 = v27;
      v12 = v27;

      if (v12 != self->_currentPresentationView)
      {
        objc_storeStrong(&self->_currentPresentationView, v11);
      }

      [(UIView *)v12 convertRect:self->_dimmingView toView:origin, v29];
      self->_targetRectInDimmingView.origin.x = v13;
      self->_targetRectInDimmingView.origin.y = v14;
      self->_targetRectInDimmingView.size.width = v15;
      self->_targetRectInDimmingView.size.height = v16;
    }

    else
    {
      v17 = [(UIView *)currentPresentationView window];

      if (v17)
      {
        [(UIView *)self->_currentPresentationView convertRect:self->_dimmingView toView:self->_currentPresentationRectInView.origin.x, self->_currentPresentationRectInView.origin.y, self->_currentPresentationRectInView.size.width, self->_currentPresentationRectInView.size.height];
        self->_targetRectInDimmingView.origin.x = v18;
        self->_targetRectInDimmingView.origin.y = v19;
        self->_targetRectInDimmingView.size.width = v20;
        self->_targetRectInDimmingView.size.height = v21;
      }
    }

    [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo setSourceViewRect:self->_targetRectInDimmingView.origin.x, self->_targetRectInDimmingView.origin.y, self->_targetRectInDimmingView.size.width, self->_targetRectInDimmingView.size.height];
    if ([(UIPopoverController *)self _attemptsToAvoidKeyboard])
    {
      preferredLayoutInfo = self->_preferredLayoutInfo;
      [(UIView *)self->_dimmingView bounds];
      [(_UIPopoverLayoutInfo *)preferredLayoutInfo setContainingFrame:?];
      v23 = [(UIPopoverController *)self _layoutInfoForCurrentKeyboardState];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __47__UIPopoverController__hostingWindowDidRotate___block_invoke;
      v25[3] = &unk_1E70F35B8;
      v25[4] = self;
      v26 = v23;
      v24 = v23;
      [UIView performWithoutAnimation:v25];
    }
  }

  if (!self->_popoverControllerStyle)
  {
    [(UIView *)self->_popoverView setAlpha:1.0];
  }
}

uint64_t __47__UIPopoverController__hostingWindowDidRotate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  [*(a1 + 40) frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [*(a1 + 40) offset];

  return [v2 _setFrame:v4 arrowOffset:{v6, v8, v10, v11}];
}

- (void)_startWatchingForWindowRotations
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(UIView *)self->_popoverView window];
  [v5 addObserver:self selector:sel__hostingWindowWillRotate_ name:@"UIWindowWillRotateNotification" object:v3];

  v4 = [(UIView *)self->_popoverView window];
  [v5 addObserver:self selector:sel__hostingWindowDidRotate_ name:@"UIWindowDidRotateNotification" object:v4];
}

- (void)_stopWatchingForWindowRotations
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIWindowWillRotateNotification" object:0];
  [v3 removeObserver:self name:@"UIWindowDidRotateNotification" object:0];
}

- (void)_scrollViewWillBeginDragging:(id)a3
{
  popoverView = self->_popoverView;
  v5 = [a3 object];
  if (popoverView)
  {
    v9 = v5;
    v6 = [v5 isDescendantOfView:popoverView];

    if (v6)
    {
      draggingChildScrollViewCount = self->draggingChildScrollViewCount;
      if (!draggingChildScrollViewCount)
      {
        if ([(UIDimmingView *)self->_dimmingView ignoresTouches])
        {
          v8 = 4;
        }

        else
        {
          v8 = 0;
        }

        *&self->_popoverControllerFlags = *&self->_popoverControllerFlags & 0xFB | v8;
        [(UIDimmingView *)self->_dimmingView setIgnoresTouches:1];
        draggingChildScrollViewCount = self->draggingChildScrollViewCount;
      }

      self->draggingChildScrollViewCount = draggingChildScrollViewCount + 1;
    }
  }

  else
  {
  }
}

- (void)_scrollViewDidEndDragging:(id)a3
{
  v4 = [a3 object];
  v5 = v4;
  if (self->_popoverView)
  {
    v8 = v4;
    v6 = [v4 isDescendantOfView:?];
    v5 = v8;
    if (v6)
    {
      v7 = self->draggingChildScrollViewCount - 1;
      self->draggingChildScrollViewCount = v7;
      if (!v7)
      {
        [(UIDimmingView *)self->_dimmingView setIgnoresTouches:(*&self->_popoverControllerFlags >> 2) & 1];
        v5 = v8;
      }
    }
  }
}

- (void)_startWatchingForScrollViewNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__scrollViewWillBeginDragging_ name:@"_UIScrollViewWillBeginDraggingNotification" object:0];
  [v3 addObserver:self selector:sel__scrollViewDidEndDragging_ name:@"_UIScrollViewDidEndDraggingNotification" object:0];
}

- (void)_stopWatchingForScrollViewNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIScrollViewWillBeginDraggingNotification" object:0];
  [v3 removeObserver:self name:@"_UIScrollViewDidEndDraggingNotification" object:0];
}

- (void)_setIgnoresKeyboardNotifications:(BOOL)a3
{
  if (self->_ignoresKeyboardNotifications != a3)
  {
    self->_ignoresKeyboardNotifications = a3;
    if (a3)
    {
      [(UIPopoverController *)self _stopWatchingForKeyboardNotifications];
      if (UIKeyboardAutomaticIsOnScreen())
      {
        popoverView = self->_popoverView;
        [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo frame];
        v6 = v5;
        v8 = v7;
        v10 = v9;
        v12 = v11;
        [(_UIPopoverLayoutInfo *)self->_preferredLayoutInfo offset];

        [(_UIPopoverView *)popoverView _setFrame:v6 arrowOffset:v8, v10, v12, v13];
      }
    }

    else if ([(UIPopoverController *)self _attemptsToAvoidKeyboard])
    {
      [(UIPopoverController *)self _startWatchingForKeyboardNotificationsIfNecessary];
      if (UIKeyboardAutomaticIsOnScreen())
      {

        [(UIPopoverController *)self _moveAwayFromTheKeyboard:0];
      }
    }
  }
}

- (void)_stopWatchingForNotifications
{
  [(UIPopoverController *)self _stopWatchingForKeyboardNotifications];
  [(UIPopoverController *)self _stopWatchingForScrollViewNotifications];

  [(UIPopoverController *)self _stopWatchingForWindowRotations];
}

- (void)_containedViewControllerModalStateChanged
{
  v3 = [(UIPopoverController *)self contentViewController];
  v4 = [v3 isModalInPresentation];

  dimmingView = self->_dimmingView;

  [(UIDimmingView *)dimmingView setIgnoresTouches:v4];
}

- (BOOL)isPresentingOrDismissing
{
  if ([(UIPopoverController *)self _isPresenting])
  {
    return 1;
  }

  return [(UIPopoverController *)self _isDismissing];
}

- (id)_managingSplitViewController
{
  v2 = [(UIPopoverController *)self _splitParentController];
  if (v2)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_modalTransition:(int)a3 fromViewController:(id)a4 toViewController:(id)a5 target:(id)a6 didFinish:(int64_t)a7
{
  v11 = a4;
  v64 = a5;
  v12 = a5;
  obj = a6;
  v56 = a6;
  v13 = a3 & 0xFFFFFFFE;
  contentViewController = self->_contentViewController;
  v59 = contentViewController == v11;
  v60 = (a3 & 0xFFFFFFFE) == 8;
  if (a3 == 8)
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  v68 = v11;
  if (a3 == 8)
  {
    v16 = v11;
  }

  else
  {
    v16 = v12;
  }

  v17 = v15;
  v18 = v16;
  objc_storeStrong(&self->_slidingViewController, v15);
  v67 = v18;
  v19 = [(UIViewController *)v18 view];
  v65 = [(UIViewController *)v17 view];
  v20 = [(UIPopoverController *)self _managingSplitViewController];
  v66 = v19;
  if (v20)
  {
    v21 = [(UIPopoverController *)self _managingSplitViewController];
    [v21 _contentSizeForChildViewController:self->_contentViewController inPopoverController:self];
    width = v22;
    height = v24;
  }

  else
  {
    [(UIViewController *)v12 _resolvedPreferredContentSize];
    width = v26;
    height = v27;
  }

  v28 = v17;

  if ((*&self->_popoverControllerFlags & 0x10) != 0)
  {
    width = self->_popoverContentSize.width;
    height = self->_popoverContentSize.height;
  }

  v29 = [(UIViewController *)self->_contentViewController view];
  v30 = [(UIViewController *)v67 view];
  if (v29 == v30)
  {
    v32 = [(UIViewController *)v67 view];
    v31 = [v32 superview];
  }

  else
  {
    v31 = [(UIViewController *)self->_contentViewController view];
  }

  v58 = [v31 autoresizingMask];
  [(UIViewController *)v68 setPerformingModalTransition:1];
  if (a3 == 8)
  {
    [v31 setAutoresizingMask:0];
    [(UIPopoverController *)self setPopoverContentSize:v13 == 8 animated:width, height];
    [(UIPopoverController *)self _currentPopoverContentSize];
    width = v33;
    height = v34;
  }

  v35 = [(UIViewController *)self->_contentViewController view];
  v36 = [v35 superview];
  [v36 frame];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  v45 = [(UIViewController *)v28 view];
  self->_toViewAutoResizingMask = [v45 autoresizingMask];

  v46 = [(UIViewController *)v28 view];
  [v46 setAutoresizingMask:0];

  v87 = 0;
  v88 = &v87;
  v89 = 0x4010000000;
  v91 = 0;
  v92 = 0;
  v90 = "";
  v93 = width;
  v94 = height;
  if (a3 == 8)
  {
    [(UIViewController *)v12 view];
    v48 = v47 = v65;
    [v48 setFrame:{0.0, v44, width, height}];

    v49 = [(UIViewController *)v12 view];
    [v31 addSubview:v49];
  }

  else
  {
    [v31 bounds];
    v47 = v65;
    [v66 setFrame:?];
    [v65 frame];
    v50 = v88;
    *(v88 + 6) = v51;
    *(v50 + 7) = v52;
    *(v50 + 4) = v53;
    v50[5] = height;
    [v31 insertSubview:v66 belowSubview:v65];
  }

  objc_storeStrong(&self->_target, obj);
  self->_didFinish = a7;
  objc_storeStrong(&self->_modalPresentationFromViewController, a4);
  objc_storeStrong(&self->_modalPresentationToViewController, v64);
  if (contentViewController != v68)
  {
    [(UIViewController *)&self->_modalPresentationFromViewController->super.super.isa __viewWillDisappear:?];
  }

  if (contentViewController != v12)
  {
    [(UIViewController *)self->_modalPresentationToViewController __viewWillAppear:v13 == 8];
  }

  if (v13 == 8)
  {
    [UIApp beginIgnoringInteractionEvents];
  }

  else
  {
    [(UIPopoverController *)self _modalAnimationFinishedEndIgnoringInteractiveEvents:0];
  }

  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke;
  v86[3] = &unk_1E7103420;
  v86[4] = self;
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke_2;
  v71[3] = &unk_1E7103448;
  v54 = v31;
  v76 = v38;
  v77 = v40;
  v78 = v42;
  v79 = v44;
  v83 = v59;
  v72 = v54;
  v73 = self;
  v80 = width;
  v81 = height;
  v84 = v60;
  v85 = contentViewController == v12;
  v75 = &v87;
  v55 = v47;
  v74 = v55;
  v82 = v58;
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke_3;
  v69[3] = &unk_1E70FA0F0;
  v70 = v60;
  v69[4] = self;
  [UIView conditionallyAnimate:v13 == 8 withAnimation:v86 layout:v71 completion:v69];

  _Block_object_dispose(&v87, 8);
}

void __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v4 _presentationAnimationDuration];
  [UIView animateWithDuration:"animateWithDuration:delay:options:animations:completion:" delay:0 options:v6 animations:v5 completion:?];
}

void __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  if ((*(a1 + 120) & 1) == 0)
  {
    [*(a1 + 40) setPopoverContentSize:*(a1 + 121) animated:{*(a1 + 96), *(a1 + 104)}];
    if ((*(a1 + 122) & 1) == 0)
    {
      [*(a1 + 40) popoverContentSize];
      v2 = *(*(a1 + 56) + 8);
      *(v2 + 48) = v3;
      *(v2 + 56) = v4;
    }
  }

  [*(a1 + 48) setFrame:{*(*(*(a1 + 56) + 8) + 32), *(*(*(a1 + 56) + 8) + 40), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56)}];
  v5 = *(a1 + 40);
  v6 = *(v5 + 328);
  v7 = [*(v5 + 336) view];
  [v7 setAutoresizingMask:v6];

  if (*(a1 + 120) == 1)
  {
    v8 = *(a1 + 112);
    v9 = *(a1 + 32);

    [v9 setAutoresizingMask:v8];
  }
}

uint64_t __93__UIPopoverController__modalTransition_fromViewController_toViewController_target_didFinish___block_invoke_3(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) _modalAnimationFinishedEndIgnoringInteractiveEvents:1];
  }

  return result;
}

- (void)_modalAnimationFinishedEndIgnoringInteractiveEvents:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [self->_target _completionBlock];
    v16 = _Block_copy(v5);
  }

  else
  {
    v16 = 0;
  }

  if (self->_target)
  {
    didFinish = self->_didFinish;
    if (didFinish == 2)
    {
      if (objc_opt_respondsToSelector())
      {
        [self->_target _didFinishDismissTransition];
      }
    }

    else if (didFinish == 1 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [self->_target _didFinishPresentTransition];
    }
  }

  modalPresentationFromViewController = self->_modalPresentationFromViewController;
  if (modalPresentationFromViewController != self->_contentViewController)
  {
    v8 = [(UIViewController *)self->_modalPresentationToViewController modalPresentationStyle];
    modalPresentationFromViewController = self->_modalPresentationFromViewController;
    if (v8 != 18)
    {
      v9 = [(UIViewController *)modalPresentationFromViewController view];
      [v9 removeFromSuperview];

      [(UIViewController *)&self->_modalPresentationFromViewController->super.super.isa __viewDidDisappear:?];
      modalPresentationFromViewController = self->_modalPresentationFromViewController;
    }
  }

  [(UIViewController *)modalPresentationFromViewController setPerformingModalTransition:0];
  target = self->_target;
  self->_target = 0;

  self->_didFinish = 0;
  modalPresentationToViewController = self->_modalPresentationToViewController;
  if (modalPresentationToViewController != self->_contentViewController)
  {
    [(UIViewController *)modalPresentationToViewController __viewDidAppear:1];
  }

  v12 = self->_modalPresentationFromViewController;
  v13 = self->_modalPresentationToViewController;
  v14 = self->_modalPresentationFromViewController;
  self->_modalPresentationFromViewController = 0;

  v15 = self->_modalPresentationToViewController;
  self->_modalPresentationToViewController = 0;

  if (v3)
  {
    [UIApp endIgnoringInteractionEvents];
  }

  if (v16)
  {
    v16[2](v16, 1);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)_presentingView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingView);

  return WeakRetained;
}

@end