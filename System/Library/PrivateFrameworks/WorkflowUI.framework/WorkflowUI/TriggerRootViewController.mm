@interface TriggerRootViewController
- (_TtC10WorkflowUI25TriggerRootViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)createAutomationCoordinatorDidCancel:(id)a3;
- (void)createAutomationCoordinatorDidFinish:(id)a3;
- (void)dataSourceDidUpdateTriggers:(id)a3;
- (void)startCreateNewPersonalAutomation;
- (void)viewDidLoad;
@end

@implementation TriggerRootViewController

- (void)viewDidLoad
{
  v2 = self;
  TriggerRootViewController.viewDidLoad()();
}

- (void)startCreateNewPersonalAutomation
{
  v2 = self;
  TriggerRootViewController.startCreateNewPersonalAutomation()();
}

- (void)createAutomationCoordinatorDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  TriggerRootViewController.createAutomationCoordinatorDidCancel(_:)(v4);
}

- (void)createAutomationCoordinatorDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  TriggerRootViewController.createAutomationCoordinatorDidFinish(_:)(v4);
}

- (void)dataSourceDidUpdateTriggers:(id)a3
{
  v4 = a3;
  v5 = self;
  TriggerRootViewController.dataSourceDidUpdateTriggers(_:)(v5);
}

- (_TtC10WorkflowUI25TriggerRootViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  TriggerRootViewController.init(nibName:bundle:)();
}

@end