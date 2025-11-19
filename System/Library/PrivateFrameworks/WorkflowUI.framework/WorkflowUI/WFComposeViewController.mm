@interface WFComposeViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)willDeleteWhenClosed;
- (NSString)cachedNavigationTitle;
- (NSUndoManager)undoManager;
- (WFComposeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (WFComposeViewController)initWithWorkflow:(id)a3 isAutomation:(BOOL)a4 home:(id)a5 triggerInputType:(Class)a6 hideRunnerToolbar:(BOOL)a7;
- (WFComposeViewControllerDelegate)delegate;
- (WFWorkflow)workflow;
- (void)addAskForInputActionFromKeyPress;
- (void)addChooseFromMenuActionFromKeyPress;
- (void)addCommentActionFromKeyPress;
- (void)addConditionalActionFromKeyPress;
- (void)addRepeatCountActionFromKeyPress;
- (void)addRepeatEachActionFromKeyPress;
- (void)addSetVariableActionFromKeyPress;
- (void)addShowResultActionFromKeyPress;
- (void)appendActionWithIdentifier:(id)a3;
- (void)exitSelectVariableMode;
- (void)find:(id)a3;
- (void)prepareToDismiss;
- (void)presentIconPicker;
- (void)renameWorkflow;
- (void)requestDismissal;
- (void)runWorkflowFromKeyPress;
- (void)scrollToAction:(id)a3;
- (void)setCachedNavigationTitle:(id)a3;
- (void)setDelegate:(id)a3;
- (void)showActionDrawer;
- (void)showActionError:(id)a3 for:(id)a4;
- (void)showShortcutDetails;
- (void)stopWorkflow;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WFComposeViewController

- (NSString)cachedNavigationTitle
{
  sub_2748AFE40();
  if (v2)
  {
    v3 = sub_2749FCD64();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCachedNavigationTitle:(id)a3
{
  if (a3)
  {
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_2748AFEFC(v4, v6);
}

- (WFComposeViewController)initWithWorkflow:(id)a3 isAutomation:(BOOL)a4 home:(id)a5 triggerInputType:(Class)a6 hideRunnerToolbar:(BOOL)a7
{
  if (a6)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  v12 = a3;
  v13 = a5;
  return sub_2748AFF50(v12, a4, a5, ObjCClassMetadata, a7);
}

- (WFWorkflow)workflow
{
  v2 = WFComposeViewController.workflow.getter();

  return v2;
}

- (WFComposeViewControllerDelegate)delegate
{
  v2 = WFComposeViewController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  WFComposeViewController.delegate.setter();
}

- (NSUndoManager)undoManager
{
  v2 = WFComposeViewController.undoManager.getter();

  return v2;
}

- (void)viewDidLoad
{
  v2 = self;
  WFComposeViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  WFComposeViewController.viewWillAppear(_:)(a3);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  WFComposeViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  WFComposeViewController.viewDidLayoutSubviews()();
}

- (void)find:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2749FD774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  WFComposeViewController.find(_:)();

  sub_2747BC7EC(v6, &qword_28096D550);
}

- (BOOL)willDeleteWhenClosed
{
  v2 = self;
  v3 = WFComposeViewController.willDeleteWhenClosed.getter();

  return v3 & 1;
}

- (void)presentIconPicker
{
  v2 = self;
  WFComposeViewController.presentIconPicker()();
}

- (void)scrollToAction:(id)a3
{
  v4 = a3;
  v5 = self;
  WFComposeViewController.scroll(to:)();
}

- (void)showActionError:(id)a3 for:(id)a4
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = a4;
  v7 = self;
  WFComposeViewController.showActionError(_:for:)();
}

- (void)prepareToDismiss
{
  v2 = self;
  WFComposeViewController.prepareToDismiss()();
}

- (void)showActionDrawer
{
  v2 = self;
  sub_2748B3AD8(0);
}

- (void)showShortcutDetails
{
  v2 = self;
  sub_2748B3AD8(1);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_2749FD774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = WFComposeViewController.canPerformAction(_:withSender:)(a3, v10);

  sub_2747BC7EC(v10, &qword_28096D550);
  return v8 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  v2 = self;
  WFComposeViewController.accessibilityPerformMagicTap()();

  return 1;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = self;
  WFComposeViewController.accessibilityPerformEscape()();

  return 1;
}

- (void)runWorkflowFromKeyPress
{
  v2 = self;
  sub_2748B3F48();
}

- (void)stopWorkflow
{
  v2 = self;
  sub_2748B3FC8();
}

- (void)renameWorkflow
{
  v2 = self;
  sub_2748B403C();
}

- (void)addCommentActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addCommentActionFromKeyPress()();
}

- (void)addSetVariableActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addSetVariableActionFromKeyPress()();
}

- (void)addAskForInputActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addAskForInputActionFromKeyPress()();
}

- (void)addShowResultActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addShowResultActionFromKeyPress()();
}

- (void)addChooseFromMenuActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addChooseFromMenuActionFromKeyPress()();
}

- (void)addConditionalActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addConditionalActionFromKeyPress()();
}

- (void)addRepeatCountActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addRepeatCountActionFromKeyPress()();
}

- (void)addRepeatEachActionFromKeyPress
{
  v2 = self;
  WFComposeViewController.addRepeatEachActionFromKeyPress()();
}

- (void)appendActionWithIdentifier:(id)a3
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v4 = self;
  sub_2748B463C();
}

- (void)requestDismissal
{
  v2 = self;
  sub_2748B4764();
}

- (WFComposeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  v5 = a4;
  WFComposeViewController.init(nibName:bundle:)();
}

- (void)exitSelectVariableMode
{
  v2 = self;
  sub_2748B55C4();
}

@end