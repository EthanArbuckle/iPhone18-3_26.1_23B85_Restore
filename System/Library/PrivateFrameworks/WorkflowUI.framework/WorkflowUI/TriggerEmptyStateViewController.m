@interface TriggerEmptyStateViewController
- (_TtC10WorkflowUI31TriggerEmptyStateViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation TriggerEmptyStateViewController

- (void)loadView
{
  v2 = self;
  TriggerEmptyStateViewController.loadView()();
}

- (_TtC10WorkflowUI31TriggerEmptyStateViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return TriggerEmptyStateViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end