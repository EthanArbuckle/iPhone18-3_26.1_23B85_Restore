@interface EditorHostingViewController
- (_TtC14WorkflowEditor27EditorHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)contentScrollViewForEdge:(unint64_t)edge;
- (void)loadView;
- (void)workflow:(WFWorkflow *)workflow askToRemoveNestedActionsWithinAction:(WFAction *)action completionHandler:(id)handler;
@end

@implementation EditorHostingViewController

- (void)loadView
{
  selfCopy = self;
  sub_274513688();
}

- (id)contentScrollViewForEdge:(unint64_t)edge
{
  selfCopy = self;
  v5 = sub_2745149E4(edge);

  return v5;
}

- (void)workflow:(WFWorkflow *)workflow askToRemoveNestedActionsWithinAction:(WFAction *)action completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = workflow;
  v9[3] = action;
  v9[4] = v8;
  v9[5] = self;
  workflowCopy = workflow;
  actionCopy = action;
  selfCopy = self;

  sub_2745EA34C(&unk_2746564E8, v9);
}

- (_TtC14WorkflowEditor27EditorHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_27463B6AC();
  }

  bundleCopy = bundle;
  EditorHostingViewController.init(nibName:bundle:)();
}

@end