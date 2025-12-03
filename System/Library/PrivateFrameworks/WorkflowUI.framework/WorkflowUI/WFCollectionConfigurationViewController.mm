@interface WFCollectionConfigurationViewController
- (UIView)iconPreview;
- (WFPreviewNavigationController)previewNavigationController;
- (_TtC10WorkflowUI39WFCollectionConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)setPreviewNavigationController:(id)controller;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation WFCollectionConfigurationViewController

- (WFPreviewNavigationController)previewNavigationController
{
  v2 = WFCollectionConfigurationViewController.previewNavigationController.getter();

  return v2;
}

- (void)setPreviewNavigationController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  WFCollectionConfigurationViewController.previewNavigationController.setter(controller);
}

- (UIView)iconPreview
{
  v2 = WFCollectionConfigurationViewController.iconPreview.getter();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  WFCollectionConfigurationViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  WFCollectionConfigurationViewController.viewIsAppearing(_:)(appearing);
}

- (_TtC10WorkflowUI39WFCollectionConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  WFCollectionConfigurationViewController.init(nibName:bundle:)();
}

@end