@interface WFShortcutIconEditorViewController
- (WFShortcutIconEditorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFShortcutIconEditorViewControllerDelegate)delegate;
- (void)setDelegate:(id)delegate;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation WFShortcutIconEditorViewController

- (WFShortcutIconEditorViewControllerDelegate)delegate
{
  v2 = ShortcutIconEditorViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  ShortcutIconEditorViewController.delegate.setter();
}

- (void)viewDidLoad
{
  selfCopy = self;
  ShortcutIconEditorViewController.viewDidLoad()();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  ShortcutIconEditorViewController.viewWillDisappear(_:)(disappear);
}

- (WFShortcutIconEditorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  ShortcutIconEditorViewController.init(nibName:bundle:)();
}

@end