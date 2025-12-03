@interface WFWorkflowSettingsViewController
- (WFWorkflowSettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFWorkflowSettingsViewControllerDelegate)delegate;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
@end

@implementation WFWorkflowSettingsViewController

- (WFWorkflowSettingsViewControllerDelegate)delegate
{
  v2 = sub_2748DE69C();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2748DE744();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2748DEA90();
}

- (WFWorkflowSettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  WorkflowSettingsViewController.init(nibName:bundle:)();
}

@end