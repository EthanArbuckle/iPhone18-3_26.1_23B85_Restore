@interface EditorHostingViewController
- (_TtC14WorkflowEditor27EditorHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)contentScrollViewForEdge:(unint64_t)a3;
- (void)loadView;
- (void)workflow:(WFWorkflow *)a3 askToRemoveNestedActionsWithinAction:(WFAction *)a4 completionHandler:(id)a5;
@end

@implementation EditorHostingViewController

- (void)loadView
{
  v2 = self;
  sub_274513688();
}

- (id)contentScrollViewForEdge:(unint64_t)a3
{
  v4 = self;
  v5 = sub_2745149E4(a3);

  return v5;
}

- (void)workflow:(WFWorkflow *)a3 askToRemoveNestedActionsWithinAction:(WFAction *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_2745EA34C(&unk_2746564E8, v9);
}

- (_TtC14WorkflowEditor27EditorHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v5 = a4;
  EditorHostingViewController.init(nibName:bundle:)();
}

@end