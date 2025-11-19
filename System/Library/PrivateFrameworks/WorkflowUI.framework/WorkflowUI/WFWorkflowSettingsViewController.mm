@interface WFWorkflowSettingsViewController
- (WFWorkflowSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFWorkflowSettingsViewControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
@end

@implementation WFWorkflowSettingsViewController

- (WFWorkflowSettingsViewControllerDelegate)delegate
{
  v2 = sub_2748DE69C();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2748DE744();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2748DEA90();
}

- (WFWorkflowSettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  WorkflowSettingsViewController.init(nibName:bundle:)();
}

@end