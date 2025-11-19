@interface TSKPopoverBasedViewController
- (BOOL)isPopoverVisible;
- (BOOL)isVisible;
- (BOOL)p_shouldResizeViewWithKeyboard;
- (CGRect)frameForCurrentiPhoneOrientation;
- (CGSize)contentSize;
- (TSKPopoverBasedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (TSKPopoverController)popoverController;
- (double)p_originOffsetForKeyboardFrame:(CGRect)a3;
- (id)navigationBar;
- (id)p_newCloseImageBarButtonWithTarget:(id)a3 action:(SEL)a4;
- (id)p_newRootViewController;
- (id)p_outsideTouchWatchView;
- (id)p_topParentViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)dealloc;
- (void)dismissAnimated:(BOOL)a3;
- (void)keyboardWillHideOrUndock:(id)a3;
- (void)keyboardWillShowOrDock:(id)a3;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)outsideTouch:(id)a3;
- (void)p_didDismissPopover:(id)a3;
- (void)p_dismissFullscreenModalAnimated:(BOOL)a3;
- (void)p_dismissFullscreenModalFromCloseButton;
- (void)p_dismissHalfHeight;
- (void)p_dismissHalfHeightFromCloseButton;
- (void)p_dismissPopoverAnimated:(BOOL)a3;
- (void)p_informDelegateOfDidDismiss;
- (void)p_informDelegateOfWillDismiss;
- (void)p_informDelegateOfWillShow;
- (void)p_installHideOnTouchGesture;
- (void)p_keyboardWillHide:(BOOL)a3 withNotification:(id)a4;
- (void)p_registerPopoverBasedViewControllerNotifications;
- (void)p_removeHideOnTouchGesture;
- (void)p_showModalInViewController:(id)a3 withTitle:(id)a4 animated:(BOOL)a5 withDoneButton:(BOOL)a6;
- (void)p_willPresentPopover;
- (void)presentInRect:(CGRect)a3 inView:(id)a4 animated:(BOOL)a5 modal:(BOOL)a6 closeBlock:(id)a7 animations:(id)a8;
- (void)presentModallyFromBarItem:(id)a3 viewController:(id)a4;
- (void)presentModallyFromRect:(CGRect)a3 inView:(id)a4 viewController:(id)a5 arrowDirection:(unint64_t)a6 animated:(BOOL)a7 withDoneButton:(BOOL)a8 constrainToView:(BOOL)a9 withPadding:(double)a10 fromToolbar:(BOOL)a11;
- (void)presentModallyWithTitle:(id)a3 viewController:(id)a4 animated:(BOOL)a5 withDoneButton:(BOOL)a6;
- (void)resetOutsideTouchWatchView;
- (void)setAllowsOutsideTouch:(BOOL)a3;
- (void)setWrapInNavigationController:(BOOL)a3;
- (void)showPopoverFromBarItem:(id)a3;
- (void)showPopoverFromRect:(CGRect)a3 inView:(id)a4 arrowDirection:(unint64_t)a5 animated:(BOOL)a6 constrainToView:(BOOL)a7 withPadding:(double)a8 fromToolbar:(BOOL)a9;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TSKPopoverBasedViewController

- (TSKPopoverBasedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6.receiver = self;
  v6.super_class = TSKPopoverBasedViewController;
  v4 = [(TSKPopoverBasedViewController *)&v6 initWithNibName:a3 bundle:a4];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v4 viewWillAppear:a3];
  [TSKKeyboardMonitor addKeyboardObserver:self];
  [(TSKPopoverBasedViewController *)self contentSize];
  [(TSKPopoverBasedViewController *)self setPreferredContentSize:?];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TSKPopoverBasedViewController;
  [(TSKPopoverBasedViewController *)&v4 viewDidDisappear:a3];
  [TSKKeyboardMonitor removeKeyboardObserver:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TSKPopoverBasedViewController *)self presentingViewController];

  return [v2 supportedInterfaceOrientations];
}

- (id)p_topParentViewController
{
  v2 = [(TSKPopoverBasedViewController *)self parentViewController];
  do
  {
    v3 = v2;
    v2 = [v2 parentViewController];
  }

  while (v2);
  return v3;
}

- (id)p_newRootViewController
{
  v3 = [(TSKPopoverBasedViewController *)self i_contentViewController];
  if ([(TSKPopoverBasedViewController *)self imposeContentSizeOnViewControllers])
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];
    [v3 setPreferredContentSize:?];
  }

  if (![(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    return v3;
  }

  [v3 setEdgesForExtendedLayout:0];
  [v3 setAutomaticallyAdjustsScrollViewInsets:0];
  TSUPhoneUI();
  v4 = [objc_alloc(objc_opt_class()) initWithRootViewController:v3];
  [v4 setDelegate:self];
  [v4 setWantsFullScreenLayout:0];
  [v4 setToolbarHidden:{-[TSKPopoverBasedViewController shouldHideToolbar](self, "shouldHideToolbar")}];
  [objc_msgSend(v4 "navigationBar")];
  if ((TSUPhoneUI() & 1) == 0)
  {
    [objc_msgSend(v4 "view")];
  }

  v5 = [v4 isNavigationBarHidden];
  [v3 preferredContentSize];
  v7 = v6;
  v9 = v8;
  if ((v5 & 1) == 0)
  {
    v10 = [v4 navigationBar];
    [objc_msgSend(v3 "view")];
    [v10 sizeThatFits:{v11, v12}];
    v9 = v9 + v13;
  }

  [v4 setPreferredContentSize:{v7, v9}];
  return v4;
}

- (void)setWrapInNavigationController:(BOOL)a3
{
  if (self->mWrapInNavigationController != a3)
  {
    self->mWrapInNavigationController = a3;
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

- (void)outsideTouch:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || (mPopoverDelegate = self->mPopoverDelegate, [a3 locationInView:{-[TSKPopoverBasedViewController view](self, "view")}], -[TSKPopoverBasedViewControllerDelegate popoverController:shouldReceiveOutsideTouchAtLocation:inView:](mPopoverDelegate, "popoverController:shouldReceiveOutsideTouchAtLocation:inView:", self, -[TSKPopoverBasedViewController view](self, "view"), v6, v7)))
  {
    if (![(TSKPopoverBasedViewController *)self staysOpenOnOutsideTouches])
    {
      mPopoverToggleView = self->mPopoverToggleView;
      if (!mPopoverToggleView || (-[UIView bounds](mPopoverToggleView, "bounds"), v10 = v9, v12 = v11, v14 = v13, v16 = v15, [a3 locationInView:self->mPopoverToggleView], v20.x = v17, v20.y = v18, v21.origin.x = v10, v21.origin.y = v12, v21.size.width = v14, v21.size.height = v16, !CGRectContainsPoint(v21, v20)))
      {

        [(TSKPopoverBasedViewController *)self p_dismissPopoverAnimated:1];
      }
    }
  }
}

- (id)p_outsideTouchWatchView
{
  v2 = self;
  if ([(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    v2 = [(TSKPopoverBasedViewController *)v2 navigationController];
  }

  return [(TSKPopoverBasedViewController *)v2 view];
}

- (void)p_installHideOnTouchGesture
{
  if (TSUPadUI())
  {
    v3 = [(TSKPopoverBasedViewController *)self p_outsideTouchWatchView];
    v4 = [objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
    if (v4)
    {
      v5 = v4;
      self->mHideOnTouchGestureRecognizer = [[TSKHideOnTouchOutsideViewGestureRecognizer alloc] initWithTarget:self action:sel_outsideTouch_ watchView:v3];
      v6 = [objc_msgSend(objc_msgSend(v5 "view")];
      if (!v6)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v6 insertObject:self->mHideOnTouchGestureRecognizer atIndex:0];
      [objc_msgSend(v5 "view")];

      v7 = [MEMORY[0x277CBEA60] arrayWithObject:{objc_msgSend(v5, "view")}];
      v8 = [(TSKPopoverBasedViewController *)self popoverController];

      [(TSKPopoverController *)v8 setPassthroughViews:v7];
    }
  }
}

- (void)p_removeHideOnTouchGesture
{
  if (TSUPadUI())
  {
    [-[TSKHideOnTouchOutsideViewGestureRecognizer view](self->mHideOnTouchGestureRecognizer "view")];

    self->mHideOnTouchGestureRecognizer = 0;
    v3 = [(TSKPopoverBasedViewController *)self popoverController];

    [(TSKPopoverController *)v3 setPassthroughViews:0];
  }
}

- (void)setAllowsOutsideTouch:(BOOL)a3
{
  v3 = a3;
  if (TSUPadUI())
  {
    self->mAllowsOutsideTouch = v3;
    if ([(TSKPopoverBasedViewController *)self isPopoverVisible])
    {
      mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
      if (mHideOnTouchGestureRecognizer)
      {
        v6 = 1;
      }

      else
      {
        v6 = !v3;
      }

      if (v6)
      {
        if (mHideOnTouchGestureRecognizer && !v3)
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
  v3 = [(TSKPopoverBasedViewController *)self p_outsideTouchWatchView];
  mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;

  [(TSKHideOnTouchOutsideViewGestureRecognizer *)mHideOnTouchGestureRecognizer setWatchView:v3];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController frameForCurrentiPhoneOrientation]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 423, @"This should only be called from iPhone (or non-iPad)"}];
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
  v3 = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)v3 popoverControllerWillShowPopoverBasedViewController:self];
  }
}

- (void)p_informDelegateOfWillDismiss
{
  v3 = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)v3 popoverControllerWillDismissPopoverBasedViewController:self];
  }
}

- (void)p_informDelegateOfDidDismiss
{
  v3 = [(TSKPopoverBasedViewController *)self popoverDelegate];
  if (objc_opt_respondsToSelector())
  {

    [(TSKPopoverBasedViewControllerDelegate *)v3 popoverControllerDidDismissPopoverBasedViewController:self];
  }
}

- (void)p_dismissFullscreenModalAnimated:(BOOL)a3
{
  v3 = a3;
  self->mViewControllerVisible = 0;
  v5 = [-[TSKPopoverBasedViewController i_contentViewController](self "i_contentViewController")];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__TSKPopoverBasedViewController_p_dismissFullscreenModalAnimated___block_invoke;
  v6[3] = &unk_279D46770;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:v3 completion:v6];
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

- (void)p_dismissPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  if (TSUPhoneUI())
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_dismissPopoverAnimated:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 494, @"Can't present popovers on the phone!"}];
  }

  mPopoverController = self->mPopoverController;

  [(TSKPopoverController *)mPopoverController dismissPopoverAnimated:v3];
}

- (void)p_registerPopoverBasedViewControllerNotifications
{
  v3 = MEMORY[0x277CBEAC0];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, TSKPopoverBasedViewControllerIsModalKey, objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", TSUPhoneUI()), TSKPopoverBasedViewControllerIsFullscreenKey, 0}];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = TSKPopoverBasedViewControllerWillPresentNotification;

  [v6 postNotificationName:v7 object:self userInfo:v5];
}

- (void)p_showModalInViewController:(id)a3 withTitle:(id)a4 animated:(BOOL)a5 withDoneButton:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  if ((TSUPhoneUI() & 1) == 0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_showModalInViewController:withTitle:animated:withDoneButton:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 511, @"Can't show modal view controller on iPad."}];
  }

  if ([objc_msgSend(MEMORY[0x277D75718] "sharedMenuController")])
  {
    [MEMORY[0x277D75D18] performWithoutAnimation:&__block_literal_global_12];
  }

  self->mViewControllerVisible = 1;
  [(TSKPopoverBasedViewController *)self p_informDelegateOfWillShow];
  v13 = [(TSKPopoverBasedViewController *)self p_newRootViewController];
  if ([(TSKPopoverBasedViewController *)self wrapInNavigationController])
  {
    objc_opt_class();
    v14 = TSUDynamicCast();
    if (v14)
    {
      v15 = v14;
      v16 = [(TSKPopoverBasedViewController *)self popoverDelegate];
      if ((objc_opt_respondsToSelector() & 1) != 0 && [(TSKPopoverBasedViewControllerDelegate *)v16 wantsCloseArrowForPopoverBasedViewController:self])
      {
        v17 = [(TSKPopoverBasedViewController *)self p_newCloseImageBarButtonWithTarget:self action:sel_p_dismissFullscreenModalFromCloseButton];
        goto LABEL_13;
      }

      if (v6)
      {
        if (TSUPhoneUI())
        {
          v18 = [+[TSKApplicationDelegate sharedDelegate](TSKApplicationDelegate "sharedDelegate")];
          v17 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v18];
LABEL_13:
          v19 = v17;
          if (!a4)
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
      if (!a4)
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

  [a3 presentViewController:v13 animated:v7 completion:0];
}

uint64_t __95__TSKPopoverBasedViewController_p_showModalInViewController_withTitle_animated_withDoneButton___block_invoke()
{
  v0 = [MEMORY[0x277D75718] sharedMenuController];

  return [v0 hideMenu];
}

- (id)p_newCloseImageBarButtonWithTarget:(id)a3 action:(SEL)a4
{
  v7 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = [MEMORY[0x277D755B8] imageNamed:@"TSKInsp_Close-ArrowDown" inBundle:TSKBundle() compatibleWithTraitCollection:{-[TSKPopoverBasedViewController traitCollection](self, "traitCollection")}];

  return [v7 initWithImage:v8 style:1 target:a3 action:a4];
}

- (void)presentModallyFromRect:(CGRect)a3 inView:(id)a4 viewController:(id)a5 arrowDirection:(unint64_t)a6 animated:(BOOL)a7 withDoneButton:(BOOL)a8 constrainToView:(BOOL)a9 withPadding:(double)a10 fromToolbar:(BOOL)a11
{
  v12 = a9;
  v13 = a8;
  v14 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];
  if (TSUPhoneUI())
  {

    [(TSKPopoverBasedViewController *)self p_showModalInViewController:a5 withTitle:0 animated:v14 withDoneButton:v13];
  }

  else
  {

    [(TSKPopoverBasedViewController *)self showPopoverFromRect:a4 inView:a6 arrowDirection:v14 animated:v12 constrainToView:a11 withPadding:x fromToolbar:y, width, height, a10];
  }
}

- (void)presentModallyFromBarItem:(id)a3 viewController:(id)a4
{
  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];
  if (TSUPhoneUI())
  {

    [(TSKPopoverBasedViewController *)self p_showModalInViewController:a4 withTitle:0 animated:1 withDoneButton:0];
  }

  else
  {

    [(TSKPopoverBasedViewController *)self showPopoverFromBarItem:a3];
  }
}

- (void)presentModallyWithTitle:(id)a3 viewController:(id)a4 animated:(BOOL)a5 withDoneButton:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  if ((TSUPhoneUI() & 1) == 0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController presentModallyWithTitle:viewController:animated:withDoneButton:]"];
    [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 658, @"presentModallyWithTitle is only intended to be used on the phone."}];
  }

  [(TSKPopoverBasedViewController *)self p_registerPopoverBasedViewControllerNotifications];

  [(TSKPopoverBasedViewController *)self p_showModalInViewController:a4 withTitle:a3 animated:v7 withDoneButton:v6];
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
    v7 = [(UIViewController *)v6 view];
    [(UIView *)v7 frame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [[(UIView *)v7 superview] bounds];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __52__TSKPopoverBasedViewController_p_dismissHalfHeight__block_invoke_2;
    v15[3] = &unk_279D47938;
    v15[4] = v7;
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

- (void)presentInRect:(CGRect)a3 inView:(id)a4 animated:(BOOL)a5 modal:(BOOL)a6 closeBlock:(id)a7 animations:(id)a8
{
  v10 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = MEMORY[0x277CBEAC0];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v20 = TSKPopoverBasedViewControllerIsModalKey;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22 = [v18 dictionaryWithObjectsAndKeys:{v19, v20, v21, TSKPopoverBasedViewControllerIsFullscreenKey, 0}];
  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 postNotificationName:TSKPopoverBasedViewControllerWillPresentNotification object:self userInfo:v22];
  self->mViewControllerVisible = 1;
  if (!a4)
  {
    v24 = [MEMORY[0x277D6C290] currentHandler];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController presentInRect:inView:animated:modal:closeBlock:animations:]"];
    [v24 handleFailureInFunction:v25 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 743, @"invalid nil value for '%s'", "parentView"}];
  }

  self->mHalfHeightParentView = a4;
  v26 = [(TSKPopoverBasedViewController *)self p_newRootViewController];
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

  self->mHalfHeightAnimated = a5;
  [(TSKPopoverBasedViewController *)self setHalfHeightViewController:v26];
  self->mHalfHeightOriginalFrame.origin.x = x;
  self->mHalfHeightOriginalFrame.origin.y = y;
  self->mHalfHeightOriginalFrame.size.width = width;
  self->mHalfHeightOriginalFrame.size.height = height;
  [a4 bounds];
  v31 = v30;

  self->mHalfHeightTapShield = 0;
  if (v10)
  {
    v32 = [TSKModalShieldView alloc];
    [a4 bounds];
    v33 = [(TSKModalShieldView *)v32 initWithFrame:?];
    self->mHalfHeightTapShield = v33;
    [(TSKModalShieldView *)v33 setDelegate:self];
    [a4 addSubview:self->mHalfHeightTapShield];
  }

  v34 = [(UIViewController *)self->mHalfHeightViewController view];
  v35 = v34;
  if (self->mHalfHeightAnimated)
  {
    [(UIView *)v34 setFrame:x, v31, width, height];
    [(UIView *)v35 layoutIfNeeded];
    [a4 addSubview:v35];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __91__TSKPopoverBasedViewController_presentInRect_inView_animated_modal_closeBlock_animations___block_invoke;
    v36[3] = &unk_279D47960;
    v36[4] = v35;
    v36[5] = a8;
    *&v36[6] = x;
    *&v36[7] = y;
    *&v36[8] = width;
    *&v36[9] = height;
    [MEMORY[0x277D75D18] animateWithDuration:v36 animations:0.200000003];
  }

  else
  {
    [(UIView *)v34 setFrame:x, y, width, height];
    [a4 addSubview:v35];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (TSUPhoneUI())
  {
    [+[TSKPopoverUndoObserver sharedObserver](TSKPopoverUndoObserver "sharedObserver")];
    self->mUndoManagerNotificationsRegistered = 1;
  }

  self->mHalfHeightCloseBlock = [a7 copy];
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

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
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
      self->mHalfHeightAnimated = v3;

      [(TSKPopoverBasedViewController *)self p_dismissHalfHeight];
    }

    else
    {

      [(TSKPopoverBasedViewController *)self p_dismissFullscreenModalAnimated:v3];
    }
  }

  else
  {

    [(TSKPopoverBasedViewController *)self p_dismissPopoverAnimated:v3];
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
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController popoverController]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 902, @"iPad-specific API is being called on a phone!"}];
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

- (void)showPopoverFromRect:(CGRect)a3 inView:(id)a4 arrowDirection:(unint64_t)a5 animated:(BOOL)a6 constrainToView:(BOOL)a7 withPadding:(double)a8 fromToolbar:(BOOL)a9
{
  v9 = a9;
  v11 = a7;
  v12 = a6;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (TSUPhoneUI())
  {
    v20 = [MEMORY[0x277D6C290] currentHandler];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController showPopoverFromRect:inView:arrowDirection:animated:constrainToView:withPadding:fromToolbar:]"];
    [v20 handleFailureInFunction:v21 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 929, @"Can't present popovers on the phone!"}];
  }

  v22 = [(TSKPopoverBasedViewController *)self popoverController];
  [(TSKPopoverBasedViewController *)self p_willPresentPopover];
  if (v9)
  {
    v23 = y + 5.0;
  }

  else
  {
    v23 = y;
  }

  [(TSKPopoverController *)v22 presentPopoverFromRect:a4 inView:a5 permittedArrowDirections:v12 animated:v11 constrainToView:x withPadding:v23, width, height, a8];
}

- (void)showPopoverFromBarItem:(id)a3
{
  if (TSUPhoneUI())
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController showPopoverFromBarItem:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 955, @"Can't present popovers on the phone!"}];
  }

  [(TSKPopoverBasedViewController *)self p_willPresentPopover];
  v7 = [(TSKPopoverBasedViewController *)self popoverController];

  [(TSKPopoverController *)v7 presentPopoverFromBarButtonItem:a3 permittedArrowDirections:15 animated:1];
}

- (BOOL)isPopoverVisible
{
  if (TSUPhoneUI())
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController isPopoverVisible]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 962, @"iPad-specific API is being called on a phone!"}];
  }

  if ((-[TSKPopoverController isPopoverVisible](self->mPopoverController, "isPopoverVisible") & 1) != 0 || [-[TSKPopoverController contentViewController](self->mPopoverController "contentViewController")] && objc_msgSend(objc_msgSend(-[TSKPopoverController contentViewController](self->mPopoverController, "contentViewController"), "view"), "window"))
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [(TSKPopoverBasedViewController *)self isViewLoaded];
    if (v5)
    {
      LOBYTE(v5) = [-[TSKPopoverBasedViewController view](self "view")] != 0;
    }
  }

  return v5;
}

- (void)p_willPresentPopover
{
  if (TSUPhoneUI())
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_willPresentPopover]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 979, @"iPad-specific API is being called on a phone!"}];
  }

  if (self->mAllowsOutsideTouch && !self->mHideOnTouchGestureRecognizer)
  {
    [(TSKPopoverBasedViewController *)self p_installHideOnTouchGesture];
  }

  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  [(TSKPopoverBasedViewController *)self p_informDelegateOfWillShow];
}

- (void)p_didDismissPopover:(id)a3
{
  if ([a3 object] == self->mPopoverController)
  {
    if (TSUPhoneUI())
    {
      v4 = [MEMORY[0x277D6C290] currentHandler];
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverBasedViewController p_didDismissPopover:]"];
      [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverBasedViewController.m"), 1001, @"iPad-specific API is being called on a phone!"}];
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

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  if ([TSUProtocolCast() wantsDismissButton])
  {
    v8 = [a3 viewControllers];
    if ([v8 count] >= 2)
    {
      objc_opt_class();
      [v8 firstObject];
      [objc_msgSend(a4 "navigationItem")];
    }
  }

  if ([(TSKPopoverBasedViewController *)self imposeContentSizeOnViewControllers])
  {
    [(TSKPopoverBasedViewController *)self preferredContentSize];

    [a4 setPreferredContentSize:?];
  }
}

- (void)keyboardWillShowOrDock:(id)a3
{
  if ([(TSKPopoverBasedViewController *)self viewResizesWithKeyboard])
  {

    [(TSKPopoverBasedViewController *)self p_keyboardWillHide:0 withNotification:a3];
  }
}

- (void)keyboardWillHideOrUndock:(id)a3
{
  if ([(TSKPopoverBasedViewController *)self viewResizesWithKeyboard])
  {

    [(TSKPopoverBasedViewController *)self p_keyboardWillHide:1 withNotification:a3];
  }
}

- (void)p_keyboardWillHide:(BOOL)a3 withNotification:(id)a4
{
  if ([(TSKPopoverBasedViewController *)self p_shouldResizeViewWithKeyboard])
  {
    v7 = [a4 userInfo];
    v8 = [v7 objectForKey:*MEMORY[0x277D76BB0]];
    v9 = [(TSKPopoverBasedViewController *)self view];
    [v8 CGRectValue];
    [v9 convertRect:0 fromView:?];
    v11 = v10;
    [v8 CGRectValue];
    [(TSKPopoverBasedViewController *)self p_originOffsetForKeyboardFrame:?];
    v13 = v12;
    v14 = [a4 userInfo];
    v15 = [v14 objectForKey:*MEMORY[0x277D76BB8]];
    v16 = [(TSKPopoverBasedViewController *)self view];
    [v15 CGRectValue];
    [v16 convertRect:0 fromView:?];
    v18 = v11 - v17;
    v19 = [a4 userInfo];
    v20 = [v19 objectForKey:*MEMORY[0x277D76B78]];
    v34 = 0.0;
    [v20 getValue:&v34];
    [[(UIViewController *)self->mHalfHeightViewController view] frame];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27 - (v18 - v13);
    if (TSUStatusBarIsLandscape())
    {
      if (a3)
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

- (double)p_originOffsetForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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