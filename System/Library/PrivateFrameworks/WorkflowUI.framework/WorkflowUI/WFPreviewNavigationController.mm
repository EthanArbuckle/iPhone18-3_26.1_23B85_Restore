@interface WFPreviewNavigationController
- (WFPreviewNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (WFPreviewNavigationController)initWithRootViewController:(id)controller isInSheetView:(BOOL)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation WFPreviewNavigationController

- (WFPreviewNavigationController)initWithRootViewController:(id)controller isInSheetView:(BOOL)view
{
  swift_getObjectType();
  controllerCopy = controller;

  return sub_274810068(controllerCopy, view, self);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27480DB44();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_27480E918(appearing);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_27480EB8C();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_27480EEF8(disappear);
}

- (WFPreviewNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  WFPreviewNavigationController.init(nibName:bundle:)();
}

@end