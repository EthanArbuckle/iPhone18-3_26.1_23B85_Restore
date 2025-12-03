@interface WFComposeNavigationController
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation WFComposeNavigationController

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v17.receiver = self;
  v17.super_class = WFComposeNavigationController;
  [(WFComposeNavigationController *)&v17 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(WFComposeNavigationController *)self setNavigationBarHidden:1];
    navigationBar = [(WFComposeNavigationController *)self navigationBar];
    [navigationBar bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;

    navigationBar2 = [(WFComposeNavigationController *)self navigationBar];
    [navigationBar2 intrinsicContentSize];
    v15 = v14;

    navigationBar3 = [(WFComposeNavigationController *)self navigationBar];
    [navigationBar3 setBounds:{v8, v10, v12, v15}];

    [(WFComposeNavigationController *)self setNavigationBarHidden:0];
  }
}

@end