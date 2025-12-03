@interface TSKPopoverBasedViewController
- (BOOL)isPopoverVisible;
- (BOOL)isVisible;
- (BOOL)p_shouldResizeViewWithKeyboard;
- (CGRect)frameForCurrentiPhoneOrientation;
- (CGSize)contentSize;
- (TSKPopoverBasedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (TSKPopoverController)popoverController;
- (double)p_originOffsetForKeyboardFrame:(CGRect)frame;
- (id)navigationBar;
- (id)p_newCloseImageBarButtonWithTarget:(id)target action:(SEL)action;
- (id)p_newRootViewController;
- (id)p_outsideTouchWatchView;
- (id)p_topParentViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)animated;
- (void)keyboardWillHideOrUndock:(id)undock;
- (void)keyboardWillShowOrDock:(id)dock;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)outsideTouch:(id)touch;
- (void)p_didDismissPopover:(id)popover;
- (void)p_dismissFullscreenModalAnimated:(BOOL)animated;
- (void)p_dismissFullscreenModalFromCloseButton;
- (void)p_dismissHalfHeight;
- (void)p_dismissHalfHeightFromCloseButton;
- (void)p_dismissPopoverAnimated:(BOOL)animated;
- (void)p_informDelegateOfDidDismiss;
- (void)p_informDelegateOfWillDismiss;
- (void)p_informDelegateOfWillShow;
- (void)p_installHideOnTouchGesture;
- (void)p_keyboardWillHide:(BOOL)hide withNotification:(id)notification;
- (void)p_registerPopoverBasedViewControllerNotifications;
- (void)p_removeHideOnTouchGesture;
- (void)p_showModalInViewController:(id)controller withTitle:(id)title animated:(BOOL)animated withDoneButton:(BOOL)button;
- (void)p_willPresentPopover;
- (void)presentInRect:(CGRect)rect inView:(id)view animated:(BOOL)animated modal:(BOOL)modal closeBlock:(id)block animations:(id)animations;
- (void)presentModallyFromBarItem:(id)item viewController:(id)controller;
- (void)presentModallyFromRect:(CGRect)rect inView:(id)view viewController:(id)controller arrowDirection:(unint64_t)direction animated:(BOOL)animated withDoneButton:(BOOL)button constrainToView:(BOOL)toView withPadding:(double)self0 fromToolbar:(BOOL)self1;
- (void)presentModallyWithTitle:(id)title viewController:(id)controller animated:(BOOL)animated withDoneButton:(BOOL)button;
- (void)resetOutsideTouchWatchView;
- (void)setAllowsOutsideTouch:(BOOL)touch;
- (void)setWrapInNavigationController:(BOOL)controller;
- (void)showPopoverFromBarItem:(id)item;
- (void)showPopoverFromRect:(CGRect)rect inView:(id)view arrowDirection:(unint64_t)direction animated:(BOOL)animated constrainToView:(BOOL)toView withPadding:(double)padding fromToolbar:(BOOL)toolbar;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TSKPopoverBasedViewController

- (TSKPopoverBasedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v6.receiver = self;
  v6.super_class = TSKPopoverBasedViewController;
  v4 = [(TSKPopoverBasedViewController *)&v6 initWithNibName:name bundle:bundle];
  if (v4 && TSUPhoneUI())
  {
    v4->mWrapInNavigationController = 1;
    v4->mDismissOnUndo = 1;
  }

  return v4;
}

- (void)dealloc
{
  self->mHideOnTouchGestureRecognizer = 0;

  self->mPopoverToggleView = 0;
  self->mPopoverController = 0;

  self->mHalfHeightViewController = 0;
  self->mHalfHeightCloseBlock = 0;

  self->mHalfHeightTapShield = 0;
  self->mHalfHeightParentView = 0;
  v3.receiver = self;
  v3.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v3 viewDidLoad];
  [(TSKPopoverBasedViewController *)self setEdgesForExtendedLayout:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v4 viewWillAppear:appear];
  [TSKKeyboardMonitor addKeyboardObserver:self];
  [(TSKPopoverBasedViewController *)self contentSize];
  [(TSKPopoverBasedViewController *)self setPreferredContentSize:?];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v4 viewDidDisappear:disappear];
  [TSKKeyboardMonitor removeKeyboardObserver:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  presentingViewController = [(TSKPopoverBasedViewController *)self presentingViewController];

  return [presentingViewController supportedInterfaceOrientations];
}

- (id)p_topParentViewController
{
  parentViewController = [(TSKPopoverBasedViewController *)self parentViewController];
  do
  {
    v3 = parentViewController;
    parentViewController = [parentViewController parentViewController];
  }

  while (parentViewController);
  return v3;
}

- (id)p_newRootViewController
{
  i_contentViewController = [(TSKPopoverBasedViewController *)self i_contentViewController];
  if ([(TSKPopoverBasedViewController *)self imposeContentSizeOnViewControllers])
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];
    [i_contentViewController setPreferredContentSize:?];
  }

  if (![(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    return i_contentViewController;
  }

  [i_contentViewController setEdgesForExtendedLayout:0];
  [i_contentViewController setAutomaticallyAdjustsScrollViewInsets:0];
  TSUPhoneUI();
  v4 = [objc_alloc(objc_opt_class()) initWithRootViewController:i_contentViewController];
  [v4 setDelegate:self];
  [v4 setWantsFullScreenLayout:0];
  [v4 setToolbarHidden:{-[TSKPopoverBasedViewController shouldHideToolbar](self, "shouldHideToolbar")}];
  [objc_msgSend(v4 "navigationBar")];
  if ((TSUPhoneUI() & 1) == 0)
  {
    [objc_msgSend(v4 "view")];
  }

  isNavigationBarHidden = [v4 isNavigationBarHidden];
  [i_contentViewController preferredContentSize];
  v7 = v6;
  v9 = v8;
  if ((isNavigationBarHidden & 1) == 0)
  {
    navigationBar = [v4 navigationBar];
    [objc_msgSend(i_contentViewController "view")];
    [navigationBar sizeThatFits:{v11, v12}];
    v9 = v9 + v13;
  }

  [v4 setPreferredContentSize:{v7, v9}];
  return v4;
}

- (void)setWrapInNavigationController:(BOOL)controller
{
  if (self->mWrapInNavigationController != controller)
  {
    self->mWrapInNavigationController = controller;
    if (![(TSKPopoverBasedViewController *)self isVisible])
    {
      mPopoverController = self->mPopoverController;
      if (mPopoverController)
      {

        self->mPopoverController = 0;
      }
    }
  }
}

- (id)navigationBar
{
  objc_opt_class();
  v2 = TSUDynamicCast();

  return [v2 navigationBar];
}

- (void)outsideTouch:(id)touch
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (mPopoverDelegate = self->mPopoverDelegate, [touch locationInView:{-[TSKPopoverBasedViewController view](self, "view")}], -[TSKPopoverBasedViewControllerDelegate popoverController:shouldReceiveOutsideTouchAtLocation:inView:](mPopoverDelegate, "popoverController:shouldReceiveOutsideTouchAtLocation:inView:", self, -[TSKPopoverBasedViewController view](self, "view"), v6, v7)))
  {
    if (![(TSKPopoverBasedViewController *)self staysOpenOnOutsideTouches])
    {
      mPopoverToggleView = self->mPopoverToggleView;
      if (!mPopoverToggleView || (-[UIView bounds](mPopoverToggleView, "bounds"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, [touch locationInView:self->mPopoverToggleView], v20.x = v17, v20.y = v18, v21.origin.x = v10, v21.origin.y = v12, v21.size.width = v14, v21.size.height = v16, !CGRectContainsPoint(v21, v20)))
      {

        [(TSKPopoverBasedViewController *)self p_dismissPopoverAnimated:1];
      }
    }
  }
}

- (id)p_outsideTouchWatchView
{
  selfCopy = self;
  if ([(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    selfCopy = [(TSKPopoverBasedViewController *)selfCopy navigationController];
  }

  return [(TSKPopoverBasedViewController *)selfCopy view];
}

- (void)p_installHideOnTouchGesture
{
  if (TSUPadUI())
  {
    p_outsideTouchWatchView = [(TSKPopoverBasedViewController *)self p_outsideTouchWatchView];
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    if (v4)
    {
      v5 = v4;
      self->mHideOnTouchGestureRecognizer = [[TSKHideOnTouchOutsideViewGestureRecognizer alloc] initWithTarget:self action:sel_outsideTouch_ watchView:p_outsideTouchWatchView];
      v6 = [objc_msgSend(objc_msgSend(v5 "view")];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v6 insertObject:self->mHideOnTouchGestureRecognizer atIndex:0];
      [objc_msgSend(v5 "view")];

      v7 = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(v5, "view")}];
      popoverController = [(TSKPopoverBasedViewController *)self popoverController];

      [(TSKPopoverController *)popoverController setPassthroughViews:v7];
    }
  }
}

- (void)p_removeHideOnTouchGesture
{
  if (TSUPadUI())
  {
    [-[TSKHideOnTouchOutsideViewGestureRecognizer view](self->mHideOnTouchGestureRecognizer "view")];

    self->mHideOnTouchGestureRecognizer = 0;
    popoverController = [(TSKPopoverBasedViewController *)self popoverController];

    [(TSKPopoverController *)popoverController setPassthroughViews:0];
  }
}

- (void)setAllowsOutsideTouch:(BOOL)touch
{
  touchCopy = touch;
  if (TSUPadUI())
  {
    self->mAllowsOutsideTouch = touchCopy;
    if ([(TSKPopoverBasedViewController *)self isPopoverVisible])
    {
      mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
      if (mHideOnTouchGestureRecognizer)
      {
        v6 = 1;
      }

      else
      {
        v6 = !touchCopy;
      }

      if (v6)
      {
        if (mHideOnTouchGestureRecognizer && !touchCopy)
        {

          [(TSKPopoverBasedViewController *)self p_removeHideOnTouchGesture];
        }
      }

      else
      {

        [(TSKPopoverBasedViewController *)self p_installHideOnTouchGesture];
      }
    }
  }
}

- (void)resetOutsideTouchWatchView
{
  p_outsideTouchWatchView = [(TSKPopoverBasedViewController *)self p_outsideTouchWatchView];
  mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;

  [(TSKHideOnTouchOutsideViewGestureRecognizer *)mHideOnTouchGestureRecognizer setWatchView:p_outsideTouchWatchView];
}

- (CGSize)contentSize
{
  [(TSKPopoverBasedViewController *)self preferredContentSize];
  if (v3 == 0.0)
  {
    [-[TSKPopoverBasedViewController view](self "view")];
    v5 = v4;
  }

  else
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];
    v5 = v6;
  }

  [(TSKPopoverBasedViewController *)self preferredContentSize];
  if (v7 == 0.0)
  {
    [-[TSKPopoverBasedViewController view](self "view")];
    v9 = v8;
  }

  else
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];
  }

  v10 = v5;
  result.height = v9;
  result.width = v10;
  return result;
}

- (CGRect)frameForCurrentiPhoneOrientation
{
  if ((TSUPhoneUI() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController frameForCurrentiPhoneOrientation]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 423, @"This should only be called from iPhone (or non-iPad)"}];
  }

  if (TSUPhoneUI())
  {
    [[(UIViewController *)self->mHalfHeightViewController view] frame];
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)p_informDelegateOfWillShow
{
  popoverDelegate = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)popoverDelegate popoverControllerWillShowPopoverBasedViewController:self];
  }
}

- (void)p_informDelegateOfWillDismiss
{
  popoverDelegate = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)popoverDelegate popoverControllerWillDismissPopoverBasedViewController:self];
  }
}

- (void)p_informDelegateOfDidDismiss
{
  popoverDelegate = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)popoverDelegate popoverControllerDidDismissPopoverBasedViewController:self];
  }
}

- (void)p_dismissFullscreenModalAnimated:(BOOL)animated
{
  animatedCopy = animated;
  self->mViewControllerVisible = 0;
  v5 = [-[TSKPopoverBasedViewController i_contentViewController](self "i_contentViewController")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TSKPopoverBasedViewController_p_dismissFullscreenModalAnimated___block_invoke;
  v6[3] = &unk_279D46770;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:animatedCopy completion:v6];
}

- (void)p_dismissHalfHeightFromCloseButton
{
  [(TSKPopoverBasedViewController *)self closeButtonPressed];

  [(TSKPopoverBasedViewController *)self dismissAnimated:1];
}

- (void)p_dismissFullscreenModalFromCloseButton
{
  [(TSKPopoverBasedViewController *)self closeButtonPressed];

  [(TSKPopoverBasedViewController *)self dismissAnimated:1];
}

- (void)p_dismissPopoverAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_dismissPopoverAnimated:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 494, @"Can't present popovers on the phone!"}];
  }

  mPopoverController = self->mPopoverController;

  [(TSKPopoverController *)mPopoverController dismissPopoverAnimated:animatedCopy];
}

- (void)p_registerPopoverBasedViewControllerNotifications
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, TSKPopoverBasedViewControllerIsModalKey, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", TSUPhoneUI()), TSKPopoverBasedViewControllerIsFullscreenKey, 0}];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = TSKPopoverBasedViewControllerWillPresentNotification;

  [defaultCenter postNotificationName:v7 object:self userInfo:v5];
}

- (void)p_showModalInViewController:(id)controller withTitle:(id)title animated:(BOOL)animated withDoneButton:(BOOL)button
{
  buttonCopy = button;
  animatedCopy = animated;
  if ((TSUPhoneUI() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_showModalInViewController:withTitle:animated:withDoneButton:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 511, @"Can't show modal view controller on iPad."}];
  }

  if ([objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")])
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:&__block_literal_global_12];
  }

  self->mViewControllerVisible = 1;
  [(TSKPopoverBasedViewController *)self p_informDelegateOfWillShow];
  p_newRootViewController = [(TSKPopoverBasedViewController *)self p_newRootViewController];
  if ([(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    objc_opt_class();
    v14 = TSUDynamicCast();
    if (v14)
    {
      v15 = v14;
      popoverDelegate = [(TSKPopoverBasedViewController *)self popoverDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSKPopoverBasedViewControllerDelegate *)popoverDelegate wantsCloseArrowForPopoverBasedViewController:self])
      {
        v17 = [(TSKPopoverBasedViewController *)self p_newCloseImageBarButtonWithTarget:self action:sel_p_dismissFullscreenModalFromCloseButton];
        goto LABEL_13;
      }

      if (buttonCopy)
      {
        if (TSUPhoneUI())
        {
          v18 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
          v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v18];
LABEL_13:
          v19 = v17;
          if (!title)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v20 = @"Done";
        v21 = 2;
      }

      else
      {
        v20 = @"Close";
        v21 = 1;
      }

      v19 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:objc_msgSend(TSKBundle() style:"localizedStringForKey:value:table:" target:v20 action:{&stru_287D36338, @"TSKit", v21, self, sel_p_dismissFullscreenModalFromCloseButton}];
      [(TSKPopoverBasedViewController *)self i_configureCloseItem:v19];
      if (!title)
      {
LABEL_19:
        [objc_msgSend(objc_msgSend(v15 "topViewController")];

        goto LABEL_20;
      }

LABEL_18:
      [objc_msgSend(objc_msgSend(v15 "topViewController")];
      goto LABEL_19;
    }
  }

LABEL_20:

  [controller presentViewController:p_newRootViewController animated:animatedCopy completion:0];
}

uint64_t __95__TSKPopoverBasedViewController_p_showModalInViewController_withTitle_animated_withDoneButton___block_invoke()
{
  v0 = [MEMORY[0x277D75718] sharedMenuController];

  return [v0 hideMenu];
}

- (id)p_newCloseImageBarButtonWithTarget:(id)target action:(SEL)action
{
  v7 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = [MEMORY[0x277D755B8] imageNamed:@"TSKInsp_Close-ArrowDown" inBundle:TSKBundle() compatibleWithTraitCollection:{-[TSKPopoverBasedViewController traitCollection](self, "traitCollection")}];

  return [v7 initWithImage:v8 style:1 target:target action:action];
}

- (void)presentModallyFromRect:(CGRect)rect inView:(id)view viewController:(id)controller arrowDirection:(unint64_t)direction animated:(BOOL)animated withDoneButton:(BOOL)button constrainToView:(BOOL)toView withPadding:(double)self0 fromToolbar:(BOOL)self1
{
  toViewCopy = toView;
  buttonCopy = button;
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];
  if (TSUPhoneUI())
  {

    [(TSKPopoverBasedViewController *)self p_showModalInViewController:controller withTitle:0 animated:animatedCopy withDoneButton:buttonCopy];
  }

  else
  {

    [(TSKPopoverBasedViewController *)self showPopoverFromRect:view inView:direction arrowDirection:animatedCopy animated:toViewCopy constrainToView:toolbar withPadding:x fromToolbar:y, width, height, padding];
  }
}

- (void)presentModallyFromBarItem:(id)item viewController:(id)controller
{
  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];
  if (TSUPhoneUI())
  {

    [(TSKPopoverBasedViewController *)self p_showModalInViewController:controller withTitle:0 animated:1 withDoneButton:0];
  }

  else
  {

    [(TSKPopoverBasedViewController *)self showPopoverFromBarItem:item];
  }
}

- (void)presentModallyWithTitle:(id)title viewController:(id)controller animated:(BOOL)animated withDoneButton:(BOOL)button
{
  buttonCopy = button;
  animatedCopy = animated;
  if ((TSUPhoneUI() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController presentModallyWithTitle:viewController:animated:withDoneButton:]"];
    [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 658, @"presentModallyWithTitle is only intended to be used on the phone."}];
  }

  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];

  [(TSKPopoverBasedViewController *)self p_showModalInViewController:controller withTitle:title animated:animatedCopy withDoneButton:buttonCopy];
}

- (void)p_dismissHalfHeight
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  self->mViewControllerVisible = 0;
  mHalfHeightCloseBlock = self->mHalfHeightCloseBlock;
  if (mHalfHeightCloseBlock)
  {
    mHalfHeightCloseBlock[2](mHalfHeightCloseBlock, self);

    self->mHalfHeightCloseBlock = 0;
  }

  mHalfHeightAnimated = self->mHalfHeightAnimated;
  v5 = self->mHalfHeightTapShield;
  v6 = self->mHalfHeightViewController;

  self->mHalfHeightViewController = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__TSKPopoverBasedViewController_p_dismissHalfHeight__block_invoke;
  v16[3] = &unk_279D47910;
  v17 = mHalfHeightAnimated;
  v16[4] = v6;
  v16[5] = v5;
  v16[6] = self;
  if (self->mHalfHeightAnimated)
  {
    view = [(UIViewController *)v6 view];
    [(UIView *)view frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [[(UIView *)view superview] bounds];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__TSKPopoverBasedViewController_p_dismissHalfHeight__block_invoke_2;
    v15[3] = &unk_279D47938;
    v15[4] = view;
    v15[5] = v9;
    v15[6] = v14;
    v15[7] = v11;
    v15[8] = v13;
    [MEMORY[0x277D75D18] animateWithDuration:4 delay:v15 options:v16 animations:0.200000003 completion:0.0];
  }

  else
  {
    __52__TSKPopoverBasedViewController_p_dismissHalfHeight__block_invoke(v16);
  }
}

uint64_t __52__TSKPopoverBasedViewController_p_dismissHalfHeight__block_invoke(uint64_t a1)
{
  [*(a1 + 32) viewWillDisappear:*(a1 + 56)];
  [objc_msgSend(*(a1 + 32) "view")];
  [*(a1 + 32) viewDidDisappear:*(a1 + 56)];
  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 40) setDelegate:0];

  v2 = *(a1 + 48);

  return [v2 p_informDelegateOfDidDismiss];
}

- (void)presentInRect:(CGRect)rect inView:(id)view animated:(BOOL)animated modal:(BOOL)modal closeBlock:(id)block animations:(id)animations
{
  modalCopy = modal;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v18 = MEMORY[0x277CBEAC0];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v20 = TSKPopoverBasedViewControllerIsModalKey;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22 = [v18 dictionaryWithObjectsAndKeys:{v19, v20, v21, TSKPopoverBasedViewControllerIsFullscreenKey, 0}];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:TSKPopoverBasedViewControllerWillPresentNotification object:self userInfo:v22];
  self->mViewControllerVisible = 1;
  if (!view)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController presentInRect:inView:animated:modal:closeBlock:animations:]"];
    [currentHandler handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 743, @"invalid nil value for '%s'", "parentView"}];
  }

  self->mHalfHeightParentView = view;
  p_newRootViewController = [(TSKPopoverBasedViewController *)self p_newRootViewController];
  if ([(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    objc_opt_class();
    v27 = TSUDynamicCast();
    if ([(TSKPopoverBasedViewController *)self useDoneButton])
    {
      v28 = [objc_alloc(MEMORY[0x277D751E0]) initWithTitle:objc_msgSend(TSKBundle() style:"localizedStringForKey:value:table:" target:@"Done" action:{&stru_287D36338, @"TSKit", 0, self, sel_p_dismissHalfHeightFromCloseButton}];
    }

    else
    {
      v28 = [(TSKPopoverBasedViewController *)self p_newCloseImageBarButtonWithTarget:self action:sel_p_dismissHalfHeightFromCloseButton];
    }

    v29 = v28;
    [objc_msgSend(objc_msgSend(v27 "topViewController")];
    [v27 setShowTopSeparator:1];
    [v27 setIsFullscreenViewController:0];
  }

  self->mHalfHeightAnimated = animated;
  [(TSKPopoverBasedViewController *)self setHalfHeightViewController:p_newRootViewController];
  self->mHalfHeightOriginalFrame.origin.x = x;
  self->mHalfHeightOriginalFrame.origin.y = y;
  self->mHalfHeightOriginalFrame.size.width = width;
  self->mHalfHeightOriginalFrame.size.height = height;
  [view bounds];
  v31 = v30;

  self->mHalfHeightTapShield = 0;
  if (modalCopy)
  {
    v32 = [TSKModalShieldView alloc];
    [view bounds];
    v33 = [(TSKModalShieldView *)v32 initWithFrame:?];
    self->mHalfHeightTapShield = v33;
    [(TSKModalShieldView *)v33 setDelegate:self];
    [view addSubview:self->mHalfHeightTapShield];
  }

  view = [(UIViewController *)self->mHalfHeightViewController view];
  v35 = view;
  if (self->mHalfHeightAnimated)
  {
    [(UIView *)view setFrame:x, v31, width, height];
    [(UIView *)v35 layoutIfNeeded];
    [view addSubview:v35];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __91__TSKPopoverBasedViewController_presentInRect_inView_animated_modal_closeBlock_animations___block_invoke;
    v36[3] = &unk_279D47960;
    v36[4] = v35;
    v36[5] = animations;
    *&v36[6] = x;
    *&v36[7] = y;
    *&v36[8] = width;
    *&v36[9] = height;
    [MEMORY[0x277D75D18] animateWithDuration:v36 animations:0.200000003];
  }

  else
  {
    [(UIView *)view setFrame:x, y, width, height];
    [view addSubview:v35];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (TSUPhoneUI())
  {
    [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
    self->mUndoManagerNotificationsRegistered = 1;
  }

  self->mHalfHeightCloseBlock = [block copy];
}

uint64_t __91__TSKPopoverBasedViewController_presentInRect_inView_animated_modal_closeBlock_animations___block_invoke(double *a1)
{
  v2 = *(a1 + 5);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 4);
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];

  return [v3 setFrame:{v4, v5, v6, v7}];
}

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(TSKPopoverBasedViewController *)self p_informDelegateOfWillDismiss];
  if (TSUPhoneUI())
  {
    if (self->mUndoManagerNotificationsRegistered)
    {
      [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
      self->mUndoManagerNotificationsRegistered = 0;
    }

    if (self->mHalfHeightViewController)
    {
      self->mHalfHeightAnimated = animatedCopy;

      [(TSKPopoverBasedViewController *)self p_dismissHalfHeight];
    }

    else
    {

      [(TSKPopoverBasedViewController *)self p_dismissFullscreenModalAnimated:animatedCopy];
    }
  }

  else
  {

    [(TSKPopoverBasedViewController *)self p_dismissPopoverAnimated:animatedCopy];
  }
}

- (BOOL)isVisible
{
  if (TSUPhoneUI())
  {
    return self->mViewControllerVisible;
  }

  return [(TSKPopoverBasedViewController *)self isPopoverVisible];
}

- (TSKPopoverController)popoverController
{
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController popoverController]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 902, @"iPad-specific API is being called on a phone!"}];
  }

  [(TSKPopoverBasedViewController *)self contentSize];
  [(TSKPopoverBasedViewController *)self setPreferredContentSize:?];
  result = self->mPopoverController;
  if (!result)
  {
    v6 = [[TSKPopoverController alloc] initWithContentViewController:[(TSKPopoverBasedViewController *)self p_newRootViewController]];
    self->mPopoverController = v6;
    [(TSKPopoverController *)v6 setDismissOnUndo:1];
    return self->mPopoverController;
  }

  return result;
}

- (void)showPopoverFromRect:(CGRect)rect inView:(id)view arrowDirection:(unint64_t)direction animated:(BOOL)animated constrainToView:(BOOL)toView withPadding:(double)padding fromToolbar:(BOOL)toolbar
{
  toolbarCopy = toolbar;
  toViewCopy = toView;
  animatedCopy = animated;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController showPopoverFromRect:inView:arrowDirection:animated:constrainToView:withPadding:fromToolbar:]"];
    [currentHandler handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 929, @"Can't present popovers on the phone!"}];
  }

  popoverController = [(TSKPopoverBasedViewController *)self popoverController];
  [(TSKPopoverBasedViewController *)self p_willPresentPopover];
  if (toolbarCopy)
  {
    v23 = y + 5.0;
  }

  else
  {
    v23 = y;
  }

  [(TSKPopoverController *)popoverController presentPopoverFromRect:view inView:direction permittedArrowDirections:animatedCopy animated:toViewCopy constrainToView:x withPadding:v23, width, height, padding];
}

- (void)showPopoverFromBarItem:(id)item
{
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController showPopoverFromBarItem:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 955, @"Can't present popovers on the phone!"}];
  }

  [(TSKPopoverBasedViewController *)self p_willPresentPopover];
  popoverController = [(TSKPopoverBasedViewController *)self popoverController];

  [(TSKPopoverController *)popoverController presentPopoverFromBarButtonItem:item permittedArrowDirections:15 animated:1];
}

- (BOOL)isPopoverVisible
{
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController isPopoverVisible]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 962, @"iPad-specific API is being called on a phone!"}];
  }

  if ((-[TSKPopoverController isPopoverVisible](self->mPopoverController, "isPopoverVisible") & 1) != 0 || [-[TSKPopoverController contentViewController](self->mPopoverController "contentViewController")] && objc_msgSend(objc_msgSend(-[TSKPopoverController contentViewController](self->mPopoverController, "contentViewController"), "view"), "window"))
  {
    LOBYTE(isViewLoaded) = 1;
  }

  else
  {
    isViewLoaded = [(TSKPopoverBasedViewController *)self isViewLoaded];
    if (isViewLoaded)
    {
      LOBYTE(isViewLoaded) = [-[TSKPopoverBasedViewController view](self "view")] != 0;
    }
  }

  return isViewLoaded;
}

- (void)p_willPresentPopover
{
  if (TSUPhoneUI())
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_willPresentPopover]"];
    [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 979, @"iPad-specific API is being called on a phone!"}];
  }

  if (self->mAllowsOutsideTouch && !self->mHideOnTouchGestureRecognizer)
  {
    [(TSKPopoverBasedViewController *)self p_installHideOnTouchGesture];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  [(TSKPopoverBasedViewController *)self p_informDelegateOfWillShow];
}

- (void)p_didDismissPopover:(id)popover
{
  if ([popover object] == self->mPopoverController)
  {
    if (TSUPhoneUI())
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_didDismissPopover:]"];
      [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 1001, @"iPad-specific API is being called on a phone!"}];
    }

    if (self->mHideOnTouchGestureRecognizer)
    {
      [(TSKPopoverBasedViewController *)self p_removeHideOnTouchGesture];
    }

    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    [(TSKPopoverBasedViewController *)self p_informDelegateOfDidDismiss];

    self->mPopoverController = 0;
  }
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  if ([TSUProtocolCast() wantsDismissButton])
  {
    viewControllers = [controller viewControllers];
    if ([viewControllers count] >= 2)
    {
      objc_opt_class();
      [viewControllers firstObject];
      [objc_msgSend(viewController "navigationItem")];
    }
  }

  if ([(TSKPopoverBasedViewController *)self imposeContentSizeOnViewControllers])
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];

    [viewController setPreferredContentSize:?];
  }
}

- (void)keyboardWillShowOrDock:(id)dock
{
  if ([(TSKPopoverBasedViewController *)self viewResizesWithKeyboard])
  {

    [(TSKPopoverBasedViewController *)self p_keyboardWillHide:0 withNotification:dock];
  }
}

- (void)keyboardWillHideOrUndock:(id)undock
{
  if ([(TSKPopoverBasedViewController *)self viewResizesWithKeyboard])
  {

    [(TSKPopoverBasedViewController *)self p_keyboardWillHide:1 withNotification:undock];
  }
}

- (void)p_keyboardWillHide:(BOOL)hide withNotification:(id)notification
{
  if ([(TSKPopoverBasedViewController *)self p_shouldResizeViewWithKeyboard])
  {
    userInfo = [notification userInfo];
    v8 = [userInfo objectForKey:*MEMORY[0x277D76BB0]];
    view = [(TSKPopoverBasedViewController *)self view];
    [v8 CGRectValue];
    [view convertRect:0 fromView:?];
    v11 = v10;
    [v8 CGRectValue];
    [(TSKPopoverBasedViewController *)self p_originOffsetForKeyboardFrame:?];
    v13 = v12;
    userInfo2 = [notification userInfo];
    v15 = [userInfo2 objectForKey:*MEMORY[0x277D76BB8]];
    view2 = [(TSKPopoverBasedViewController *)self view];
    [v15 CGRectValue];
    [view2 convertRect:0 fromView:?];
    v18 = v11 - v17;
    userInfo3 = [notification userInfo];
    v20 = [userInfo3 objectForKey:*MEMORY[0x277D76B78]];
    v34 = 0.0;
    [v20 getValue:&v34];
    [[(UIViewController *)self->mHalfHeightViewController view] frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27 - (v18 - v13);
    if (TSUStatusBarIsLandscape())
    {
      if (hide)
      {
        [(TSKPopoverBasedViewController *)self frameForCurrentiPhoneOrientation];
        v22 = v29;
        v28 = v30;
        v24 = v31;
        v26 = v32;
      }

      else
      {
        v26 = v26 + v28;
        v28 = 0.0;
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __69__TSKPopoverBasedViewController_p_keyboardWillHide_withNotification___block_invoke;
    v33[3] = &unk_279D47938;
    v33[4] = self;
    v33[5] = v22;
    *&v33[6] = v28;
    v33[7] = v24;
    *&v33[8] = v26;
    [MEMORY[0x277D75D18] animateWithDuration:v33 animations:0 completion:v34];
  }
}

uint64_t __69__TSKPopoverBasedViewController_p_keyboardWillHide_withNotification___block_invoke(double *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[8];
  v5 = [*(*(a1 + 4) + 1032) view];

  return [v5 setFrame:{v1, v2, v3, v4}];
}

- (double)p_originOffsetForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  [v7 frame];
  v9 = v8;
  [v7 frame];
  if (x >= 0.0)
  {
    if (x <= v9)
    {
      if (y >= 0.0)
      {
        v11 = 0.0;
        if (y > v10)
        {
          v11 = y - v10;
        }
      }

      else
      {
        v11 = y + height;
      }
    }

    else
    {
      v11 = x - v9;
    }
  }

  else
  {
    v11 = x + width;
  }

  return fabs(v11);
}

- (BOOL)p_shouldResizeViewWithKeyboard
{
  mHalfHeightViewController = self->mHalfHeightViewController;
  if (mHalfHeightViewController)
  {
    if (TSUPhoneUI())
    {
      LOBYTE(mHalfHeightViewController) = self->mViewResizesWithKeyboard;
    }

    else
    {
      LOBYTE(mHalfHeightViewController) = 0;
    }
  }

  return mHalfHeightViewController & 1;
}

@end