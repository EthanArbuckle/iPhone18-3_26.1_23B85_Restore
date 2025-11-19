@interface TSKComposedViewController
- (TSKComposedViewController)initWithViewController:(id)a3;
- (void)dealloc;
- (void)p_loadChildView;
- (void)p_unloadChildView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation TSKComposedViewController

- (TSKComposedViewController)initWithViewController:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSKComposedViewController;
  v4 = [(TSKPopoverBasedViewController *)&v6 initWithNibName:0 bundle:0];
  if (v4)
  {
    v4->mComposedViewController = a3;
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
    v7 = [(TSKComposedViewController *)self view];
    v8 = [(UIViewController *)self->mComposedViewController view];

    [v7 addSubview:v8];
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v7 viewWillAppear:v3];
  [(UIViewController *)self->mComposedViewController viewWillAppear:v3];
  [v5 setStatusBarHidden:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKComposedViewController *)&v7 viewDidAppear:v3];
  [(UIViewController *)self->mComposedViewController viewDidAppear:v3];
  [v5 setStatusBarHidden:v6];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v5 "keyWindow")];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKComposedViewController *)&v7 viewWillDisappear:v3];
  [(UIViewController *)self->mComposedViewController viewWillDisappear:v3];
  [v5 setStatusBarHidden:v6];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v5 "keyWindow")];
  [(UIViewController *)self->mComposedViewController viewDidDisappear:v3];
  v7.receiver = self;
  v7.super_class = TSKComposedViewController;
  [(TSKPopoverBasedViewController *)&v7 viewDidDisappear:v3];
  [(TSKComposedViewController *)self p_unloadChildView];
  [v5 setStatusBarHidden:v6];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = TSKComposedViewController;
  [TSKComposedViewController viewWillTransitionToSize:sel_viewWillTransitionToSize_withTransitionCoordinator_ withTransitionCoordinator:?];
  [(UIViewController *)self->mComposedViewController viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
}

@end