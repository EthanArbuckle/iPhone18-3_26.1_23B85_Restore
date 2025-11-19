@interface WFPreviewNavigationController
- (WFPreviewNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFPreviewNavigationController)initWithRootViewController:(id)a3 isInSheetView:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WFPreviewNavigationController

- (WFPreviewNavigationController)initWithRootViewController:(id)a3 isInSheetView:(BOOL)a4
{
  swift_getObjectType();
  v7 = a3;

  return sub_274810068(v7, a4, self);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27480DB44();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_27480E918(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_27480EB8C();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_27480EEF8(a3);
}

- (WFPreviewNavigationController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  WFPreviewNavigationController.init(nibName:bundle:)();
}

@end