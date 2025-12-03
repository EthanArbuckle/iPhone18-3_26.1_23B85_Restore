@interface AddToSiriSwiftHostingViewController
- (WFDatabase)database;
- (WFWorkflow)workflow;
- (_TtC10WorkflowUI35AddToSiriSwiftHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP10WorkflowUI43AddToSiriSwiftHostingViewControllerDelegate_)delegate;
- (void)setDatabase:(id)database;
- (void)setDelegate:(id)delegate;
- (void)setWorkflow:(id)workflow;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AddToSiriSwiftHostingViewController

- (_TtP10WorkflowUI43AddToSiriSwiftHostingViewControllerDelegate_)delegate
{
  v2 = sub_27491BBE4();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27491BC54(delegate);
}

- (WFWorkflow)workflow
{
  v2 = sub_27491BCA0();

  return v2;
}

- (void)setWorkflow:(id)workflow
{
  workflowCopy = workflow;
  selfCopy = self;
  sub_27491BD2C(workflow);
}

- (WFDatabase)database
{
  v2 = sub_27491BD6C();

  return v2;
}

- (void)setDatabase:(id)database
{
  databaseCopy = database;
  selfCopy = self;
  sub_27491BDF8(database);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_27491BE04();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_27491C754(disappear);
}

- (_TtC10WorkflowUI35AddToSiriSwiftHostingViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_27491C8FC(v5, v7, bundle);
}

@end