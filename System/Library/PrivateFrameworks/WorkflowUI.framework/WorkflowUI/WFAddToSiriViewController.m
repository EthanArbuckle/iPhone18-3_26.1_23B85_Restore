@interface WFAddToSiriViewController
- (WFAddToSiriViewController)initWithWorkflow:(id)a3 database:(id)a4;
- (WFAddToSiriViewControllerDelegate)delegate;
- (void)addToSiriDidCancelWithViewController:(id)a3;
- (void)addToSiriWithViewController:(id)a3 createdShortcut:(id)a4;
- (void)addToSiriWithViewController:(id)a3 deletedShortcut:(id)a4;
- (void)addToSiriWithViewController:(id)a3 savedShortcut:(id)a4;
- (void)viewDidLoad;
@end

@implementation WFAddToSiriViewController

- (WFAddToSiriViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addToSiriWithViewController:(id)a3 savedShortcut:(id)a4
{
  v9 = a4;
  v5 = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(WFAddToSiriViewController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 addToSiriViewController:self didSaveShortcut:v9];
  }

  else
  {
    [v7 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriWithViewController:(id)a3 deletedShortcut:(id)a4
{
  v9 = a4;
  v5 = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(WFAddToSiriViewController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 addToSiriViewController:self didDeleteShortcut:v9];
  }

  else
  {
    [v7 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriWithViewController:(id)a3 createdShortcut:(id)a4
{
  v9 = a4;
  v5 = [(WFAddToSiriViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [(WFAddToSiriViewController *)self delegate];
  v8 = v7;
  if (v6)
  {
    [v7 addToSiriViewController:self didCreateShortcut:v9];
  }

  else
  {
    [v7 addToSiriViewControllerDidCancel:self];
  }
}

- (void)addToSiriDidCancelWithViewController:(id)a3
{
  v4 = [(WFAddToSiriViewController *)self delegate];
  [v4 addToSiriViewControllerDidCancel:self];
}

- (void)viewDidLoad
{
  v34[4] = *MEMORY[0x277D85DE8];
  v33.receiver = self;
  v33.super_class = WFAddToSiriViewController;
  [(WFAddToSiriViewController *)&v33 viewDidLoad];
  v3 = objc_alloc_init(_TtC10WorkflowUI35AddToSiriSwiftHostingViewController);
  [(AddToSiriSwiftHostingViewController *)v3 setDelegate:self];
  v4 = [(WFAddToSiriViewController *)self workflow];
  [(AddToSiriSwiftHostingViewController *)v3 setWorkflow:v4];

  v5 = [(WFAddToSiriViewController *)self database];
  [(AddToSiriSwiftHostingViewController *)v3 setDatabase:v5];

  [(WFAddToSiriViewController *)self addChildViewController:v3];
  v6 = [(WFAddToSiriViewController *)self view];
  v7 = [(AddToSiriSwiftHostingViewController *)v3 view];
  [v6 addSubview:v7];

  v8 = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [(WFAddToSiriViewController *)self view];
  [v9 setTintColor:v8];

  [(AddToSiriSwiftHostingViewController *)v3 didMoveToParentViewController:self];
  v10 = [(AddToSiriSwiftHostingViewController *)v3 view];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(WFAddToSiriViewController *)self setHostedAddToSiriController:v3];
  v23 = MEMORY[0x277CCAAD0];
  v32 = [(WFAddToSiriViewController *)self view];
  v30 = [v32 leadingAnchor];
  v31 = [(AddToSiriSwiftHostingViewController *)v3 view];
  v29 = [v31 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v34[0] = v28;
  v27 = [(WFAddToSiriViewController *)self view];
  v25 = [v27 trailingAnchor];
  v26 = [(AddToSiriSwiftHostingViewController *)v3 view];
  v24 = [v26 trailingAnchor];
  v22 = [v25 constraintEqualToAnchor:v24];
  v34[1] = v22;
  v21 = [(WFAddToSiriViewController *)self view];
  v20 = [v21 topAnchor];
  v11 = [(AddToSiriSwiftHostingViewController *)v3 view];
  v12 = [v11 topAnchor];
  v13 = [v20 constraintEqualToAnchor:v12];
  v34[2] = v13;
  v14 = [(WFAddToSiriViewController *)self view];
  v15 = [v14 bottomAnchor];
  v16 = [(AddToSiriSwiftHostingViewController *)v3 view];
  v17 = [v16 bottomAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  v34[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  [v23 activateConstraints:v19];
}

- (WFAddToSiriViewController)initWithWorkflow:(id)a3 database:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = WFAddToSiriViewController;
  v9 = [(WFAddToSiriViewController *)&v13 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, a4);
    objc_storeStrong(&v10->_workflow, a3);
    v11 = v10;
  }

  return v10;
}

@end