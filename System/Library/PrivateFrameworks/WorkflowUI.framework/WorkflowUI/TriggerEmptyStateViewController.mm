@interface TriggerEmptyStateViewController
- (_TtC10WorkflowUI31TriggerEmptyStateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation TriggerEmptyStateViewController

- (void)loadView
{
  selfCopy = self;
  TriggerEmptyStateViewController.loadView()();
}

- (_TtC10WorkflowUI31TriggerEmptyStateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return TriggerEmptyStateViewController.init(nibName:bundle:)(v5, v7, bundle);
}

@end