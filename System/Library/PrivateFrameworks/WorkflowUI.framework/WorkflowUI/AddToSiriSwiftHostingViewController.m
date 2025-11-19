@interface AddToSiriSwiftHostingViewController
- (WFDatabase)database;
- (WFWorkflow)workflow;
- (_TtC10WorkflowUI35AddToSiriSwiftHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP10WorkflowUI43AddToSiriSwiftHostingViewControllerDelegate_)delegate;
- (void)setDatabase:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setWorkflow:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AddToSiriSwiftHostingViewController

- (_TtP10WorkflowUI43AddToSiriSwiftHostingViewControllerDelegate_)delegate
{
  v2 = sub_27491BBE4();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_27491BC54(a3);
}

- (WFWorkflow)workflow
{
  v2 = sub_27491BCA0();

  return v2;
}

- (void)setWorkflow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27491BD2C(a3);
}

- (WFDatabase)database
{
  v2 = sub_27491BD6C();

  return v2;
}

- (void)setDatabase:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27491BDF8(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_27491BE04();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_27491C754(a3);
}

- (_TtC10WorkflowUI35AddToSiriSwiftHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_27491C8FC(v5, v7, a4);
}

@end