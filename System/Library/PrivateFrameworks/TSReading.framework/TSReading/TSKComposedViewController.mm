@interface TSKComposedViewController
- (TSKComposedViewController)initWithViewController:(id)controller;
- (void)dealloc;
- (void)p_loadChildView;
- (void)p_unloadChildView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation TSKComposedViewController

- (TSKComposedViewController)initWithViewController:(id)controller
{
  v6.receiver = self;
  v6.super_class = TSKComposedViewController;
  v4 = [(TSKPopoverBasedViewController *)&v6 initWithNibName:0 bundle:0];
  if (v4)
  {
    v4->mComposedViewController = controller;
  }

  return v4;
}

- (void)dealloc
{
  [[(UIViewController *)self->mComposedViewController view] removeFromSuperview];

  self->mComposedViewController = 0;
  v3.receiver = self;
  v3.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v3 dealloc];
}

- (void)p_loadChildView
{
  if (![[(UIViewController *)self->mComposedViewController view] superview])
  {
    [-[TSKComposedViewController view](self "view")];
    [[(UIViewController *)self->mComposedViewController view] setFrame:v3, v4, v5, v6];
    view = [(TSKComposedViewController *)self view];
    view2 = [(UIViewController *)self->mComposedViewController view];

    [view addSubview:view2];
  }
}

- (void)p_unloadChildView
{
  if ([[(UIViewController *)self->mComposedViewController view] superview])
  {
    [[(UIViewController *)self->mComposedViewController view] removeFromSuperview];

    self->mComposedViewController = 0;
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v3 viewDidLoad];
  [(TSKComposedViewController *)self p_loadChildView];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v7 viewWillAppear:appearCopy];
  [(UIViewController *)self->mComposedViewController viewWillAppear:appearCopy];
  [mEMORY[0x277D75128] setStatusBarHidden:v6];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKComposedViewController *)&v7 viewDidAppear:appearCopy];
  [(UIViewController *)self->mComposedViewController viewDidAppear:appearCopy];
  [mEMORY[0x277D75128] setStatusBarHidden:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(mEMORY[0x277D75128] "keyWindow")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKComposedViewController *)&v7 viewWillDisappear:disappearCopy];
  [(UIViewController *)self->mComposedViewController viewWillDisappear:disappearCopy];
  [mEMORY[0x277D75128] setStatusBarHidden:v6];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(mEMORY[0x277D75128] "keyWindow")];
  [(UIViewController *)self->mComposedViewController viewDidDisappear:disappearCopy];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v7 viewDidDisappear:disappearCopy];
  [(TSKComposedViewController *)self p_unloadChildView];
  [mEMORY[0x277D75128] setStatusBarHidden:v6];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = TSKComposedViewController;
  [TSKComposedViewController viewWillTransitionToSize:sel_viewWillTransitionToSize_withTransitionCoordinator_ withTransitionCoordinator:?];
  [(UIViewController *)self->mComposedViewController viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
}

@end