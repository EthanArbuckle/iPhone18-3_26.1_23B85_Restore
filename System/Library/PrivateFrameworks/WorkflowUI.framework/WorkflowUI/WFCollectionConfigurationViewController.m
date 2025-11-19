@interface WFCollectionConfigurationViewController
- (UIView)iconPreview;
- (WFPreviewNavigationController)previewNavigationController;
- (_TtC10WorkflowUI39WFCollectionConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)setPreviewNavigationController:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation WFCollectionConfigurationViewController

- (WFPreviewNavigationController)previewNavigationController
{
  v2 = WFCollectionConfigurationViewController.previewNavigationController.getter();

  return v2;
}

- (void)setPreviewNavigationController:(id)a3
{
  v5 = a3;
  v6 = self;
  WFCollectionConfigurationViewController.previewNavigationController.setter(a3);
}

- (UIView)iconPreview
{
  v2 = WFCollectionConfigurationViewController.iconPreview.getter();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  WFCollectionConfigurationViewController.viewDidLoad()();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  WFCollectionConfigurationViewController.viewIsAppearing(_:)(a3);
}

- (_TtC10WorkflowUI39WFCollectionConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  WFCollectionConfigurationViewController.init(nibName:bundle:)();
}

@end