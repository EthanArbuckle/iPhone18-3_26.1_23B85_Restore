@interface WFComposeViewController
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityPerformMagicTap;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)willDeleteWhenClosed;
- (NSString)cachedNavigationTitle;
- (NSUndoManager)undoManager;
- (WFComposeViewController)initWithNibName:(id)name bundle:(id)bundle;
- (WFComposeViewController)initWithWorkflow:(id)workflow isAutomation:(BOOL)automation home:(id)home triggerInputType:(Class)type hideRunnerToolbar:(BOOL)toolbar;
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
- (void)appendActionWithIdentifier:(id)identifier;
- (void)exitSelectVariableMode;
- (void)find:(id)find;
- (void)prepareToDismiss;
- (void)presentIconPicker;
- (void)renameWorkflow;
- (void)requestDismissal;
- (void)runWorkflowFromKeyPress;
- (void)scrollToAction:(id)action;
- (void)setCachedNavigationTitle:(id)title;
- (void)setDelegate:(id)delegate;
- (void)showActionDrawer;
- (void)showActionError:(id)error for:(id)for;
- (void)showShortcutDetails;
- (void)stopWorkflow;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)setCachedNavigationTitle:(id)title
{
  if (title)
  {
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2748AFEFC(v4, v6);
}

- (WFComposeViewController)initWithWorkflow:(id)workflow isAutomation:(BOOL)automation home:(id)home triggerInputType:(Class)type hideRunnerToolbar:(BOOL)toolbar
{
  if (type)
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

  else
  {
    ObjCClassMetadata = 0;
  }

  workflowCopy = workflow;
  homeCopy = home;
  return sub_2748AFF50(workflowCopy, automation, home, ObjCClassMetadata, toolbar);
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

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  WFComposeViewController.delegate.setter();
}

- (NSUndoManager)undoManager
{
  v2 = WFComposeViewController.undoManager.getter();

  return v2;
}

- (void)viewDidLoad
{
  selfCopy = self;
  WFComposeViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  WFComposeViewController.viewWillAppear(_:)(appear);
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  WFComposeViewController.viewWillLayoutSubviews()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  WFComposeViewController.viewDidLayoutSubviews()();
}

- (void)find:(id)find
{
  if (find)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2749FD774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  WFComposeViewController.find(_:)();

  sub_2747BC7EC(v6, &qword_28096D550);
}

- (BOOL)willDeleteWhenClosed
{
  selfCopy = self;
  v3 = WFComposeViewController.willDeleteWhenClosed.getter();

  return v3 & 1;
}

- (void)presentIconPicker
{
  selfCopy = self;
  WFComposeViewController.presentIconPicker()();
}

- (void)scrollToAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  WFComposeViewController.scroll(to:)();
}

- (void)showActionError:(id)error for:(id)for
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  forCopy = for;
  selfCopy = self;
  WFComposeViewController.showActionError(_:for:)();
}

- (void)prepareToDismiss
{
  selfCopy = self;
  WFComposeViewController.prepareToDismiss()();
}

- (void)showActionDrawer
{
  selfCopy = self;
  sub_2748B3AD8(0);
}

- (void)showShortcutDetails
{
  selfCopy = self;
  sub_2748B3AD8(1);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2749FD774();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = WFComposeViewController.canPerformAction(_:withSender:)(action, v10);

  sub_2747BC7EC(v10, &qword_28096D550);
  return v8 & 1;
}

- (BOOL)accessibilityPerformMagicTap
{
  selfCopy = self;
  WFComposeViewController.accessibilityPerformMagicTap()();

  return 1;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  WFComposeViewController.accessibilityPerformEscape()();

  return 1;
}

- (void)runWorkflowFromKeyPress
{
  selfCopy = self;
  sub_2748B3F48();
}

- (void)stopWorkflow
{
  selfCopy = self;
  sub_2748B3FC8();
}

- (void)renameWorkflow
{
  selfCopy = self;
  sub_2748B403C();
}

- (void)addCommentActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addCommentActionFromKeyPress()();
}

- (void)addSetVariableActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addSetVariableActionFromKeyPress()();
}

- (void)addAskForInputActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addAskForInputActionFromKeyPress()();
}

- (void)addShowResultActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addShowResultActionFromKeyPress()();
}

- (void)addChooseFromMenuActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addChooseFromMenuActionFromKeyPress()();
}

- (void)addConditionalActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addConditionalActionFromKeyPress()();
}

- (void)addRepeatCountActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addRepeatCountActionFromKeyPress()();
}

- (void)addRepeatEachActionFromKeyPress
{
  selfCopy = self;
  WFComposeViewController.addRepeatEachActionFromKeyPress()();
}

- (void)appendActionWithIdentifier:(id)identifier
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  selfCopy = self;
  sub_2748B463C();
}

- (void)requestDismissal
{
  selfCopy = self;
  sub_2748B4764();
}

- (WFComposeViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  bundleCopy = bundle;
  WFComposeViewController.init(nibName:bundle:)();
}

- (void)exitSelectVariableMode
{
  selfCopy = self;
  sub_2748B55C4();
}

@end