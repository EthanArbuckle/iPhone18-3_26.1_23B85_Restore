@interface TriggerRootViewController
- (_TtC10WorkflowUI25TriggerRootViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)createAutomationCoordinatorDidCancel:(id)cancel;
- (void)createAutomationCoordinatorDidFinish:(id)finish;
- (void)dataSourceDidUpdateTriggers:(id)triggers;
- (void)startCreateNewPersonalAutomation;
- (void)viewDidLoad;
@end

@implementation TriggerRootViewController

- (void)viewDidLoad
{
  selfCopy = self;
  TriggerRootViewController.viewDidLoad()();
}

- (void)startCreateNewPersonalAutomation
{
  selfCopy = self;
  TriggerRootViewController.startCreateNewPersonalAutomation()();
}

- (void)createAutomationCoordinatorDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  TriggerRootViewController.createAutomationCoordinatorDidCancel(_:)(cancelCopy);
}

- (void)createAutomationCoordinatorDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  TriggerRootViewController.createAutomationCoordinatorDidFinish(_:)(finishCopy);
}

- (void)dataSourceDidUpdateTriggers:(id)triggers
{
  triggersCopy = triggers;
  selfCopy = self;
  TriggerRootViewController.dataSourceDidUpdateTriggers(_:)(selfCopy);
}

- (_TtC10WorkflowUI25TriggerRootViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  TriggerRootViewController.init(nibName:bundle:)();
}

@end