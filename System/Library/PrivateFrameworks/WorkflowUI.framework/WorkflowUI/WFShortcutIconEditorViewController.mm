@interface WFShortcutIconEditorViewController
- (WFShortcutIconEditorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFShortcutIconEditorViewControllerDelegate)delegate;
- (void)setDelegate:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation WFShortcutIconEditorViewController

- (WFShortcutIconEditorViewControllerDelegate)delegate
{
  v2 = ShortcutIconEditorViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  ShortcutIconEditorViewController.delegate.setter();
}

- (void)viewDidLoad
{
  v2 = self;
  ShortcutIconEditorViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  ShortcutIconEditorViewController.viewWillDisappear(_:)(a3);
}

- (WFShortcutIconEditorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  ShortcutIconEditorViewController.init(nibName:bundle:)();
}

@end