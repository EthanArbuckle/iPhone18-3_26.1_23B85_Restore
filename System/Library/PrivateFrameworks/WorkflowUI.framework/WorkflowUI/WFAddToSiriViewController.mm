@interface WFAddToSiriViewController
- (WFAddToSiriViewController)initWithWorkflow:(id)workflow database:(id)database;
- (WFAddToSiriViewControllerDelegate)delegate;
- (void)addToSiriDidCancelWithViewController:(id)controller;
- (void)addToSiriWithViewController:(id)controller createdShortcut:(id)shortcut;
- (void)addToSiriWithViewController:(id)controller deletedShortcut:(id)shortcut;
- (void)addToSiriWithViewController:(id)controller savedShortcut:(id)shortcut;
- (void)viewDidLoad;
@end

@implementation WFAddToSiriViewController

- (WFAddToSiriViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addToSiriWithViewController:(id)controller savedShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  delegate2 = [(WFAddToSiriViewController *)self delegate];
  v8 = delegate2;
  if (v6)
  {
    [delegate2 addToSiriViewController:self didSaveShortcut:shortcutCopy];
  }

  else
  {
    [delegate2 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriWithViewController:(id)controller deletedShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  delegate2 = [(WFAddToSiriViewController *)self delegate];
  v8 = delegate2;
  if (v6)
  {
    [delegate2 addToSiriViewController:self didDeleteShortcut:shortcutCopy];
  }

  else
  {
    [delegate2 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriWithViewController:(id)controller createdShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  delegate = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  delegate2 = [(WFAddToSiriViewController *)self delegate];
  v8 = delegate2;
  if (v6)
  {
    [delegate2 addToSiriViewController:self didCreateShortcut:shortcutCopy];
  }

  else
  {
    [delegate2 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriDidCancelWithViewController:(id)controller
{
  delegate = [(WFAddToSiriViewController *)self delegate];
  [delegate addToSiriViewControllerDidCancel:self];
}

- (void)viewDidLoad
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFAddToSiriViewController;
  [(WFAddToSiriViewController *)&v33 viewDidLoad];
  v3 = objc_alloc_init(_TtC10WorkflowUI35AddToSiriSwiftHostingViewController);
  [(AddToSiriSwiftHostingViewController *)v3 setDelegate:self];
  workflow = [(WFAddToSiriViewController *)self workflow];
  [(AddToSiriSwiftHostingViewController *)v3 setWorkflow:workflow];

  database = [(WFAddToSiriViewController *)self database];
  [(AddToSiriSwiftHostingViewController *)v3 setDatabase:database];

  [(WFAddToSiriViewController *)self addChildViewController:v3];
  view = [(WFAddToSiriViewController *)self view];
  view2 = [(AddToSiriSwiftHostingViewController *)v3 view];
  [view addSubview:view2];

  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  view3 = [(WFAddToSiriViewController *)self view];
  [view3 setTintColor:systemBlueColor];

  [(AddToSiriSwiftHostingViewController *)v3 didMoveToParentViewController:self];
  view4 = [(AddToSiriSwiftHostingViewController *)v3 view];
  [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(WFAddToSiriViewController *)self setHostedAddToSiriController:v3];
  v23 = MEMORY[0x277CCAAD0];
  view5 = [(WFAddToSiriViewController *)self view];
  leadingAnchor = [view5 leadingAnchor];
  view6 = [(AddToSiriSwiftHostingViewController *)v3 view];
  leadingAnchor2 = [view6 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v34[0] = v28;
  view7 = [(WFAddToSiriViewController *)self view];
  trailingAnchor = [view7 trailingAnchor];
  view8 = [(AddToSiriSwiftHostingViewController *)v3 view];
  trailingAnchor2 = [view8 trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v34[1] = v22;
  view9 = [(WFAddToSiriViewController *)self view];
  topAnchor = [view9 topAnchor];
  view10 = [(AddToSiriSwiftHostingViewController *)v3 view];
  topAnchor2 = [view10 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[2] = v13;
  view11 = [(WFAddToSiriViewController *)self view];
  bottomAnchor = [view11 bottomAnchor];
  view12 = [(AddToSiriSwiftHostingViewController *)v3 view];
  bottomAnchor2 = [view12 bottomAnchor];
  v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v34[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v23 activateConstraints:v19];
}

- (WFAddToSiriViewController)initWithWorkflow:(id)workflow database:(id)database
{
  workflowCopy = workflow;
  databaseCopy = database;
  v13.receiver = self;
  v13.super_class = WFAddToSiriViewController;
  v9 = [(WFAddToSiriViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_workflow, workflow);
    v11 = v10;
  }

  return v10;
}

@end