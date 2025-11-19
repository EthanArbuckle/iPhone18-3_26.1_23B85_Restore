@interface WFStaccatoConfigurationViewController
- (WFStaccatoConfigurationViewController)initWithConfigurationContext:(id)a3;
- (WFStaccatoConfigurationViewControllerDelegate)delegate;
- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5;
- (void)loadView;
- (void)setSelectedAction:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation WFStaccatoConfigurationViewController

- (WFStaccatoConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(WFStaccatoConfigurationViewController *)self delegate];
  [v9 configurationController:self didFinishWithAction:v8 error:v7];
}

- (void)setSelectedAction:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&self->_selectedAction, v4);
  v5 = v4;
  v6 = [(WFStaccatoConfigurationViewController *)self innerViewController];
  [v6 setSelectedAction:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = WFStaccatoConfigurationViewController;
  [(WFStaccatoConfigurationViewController *)&v7 viewWillAppear:a3];
  v4 = [(WFStaccatoConfigurationViewController *)self sheetPresentationController];
  v5 = [v4 traitOverrides];
  [v5 setUserInterfaceStyle:2];

  v6 = [(WFStaccatoConfigurationViewController *)self sheetPresentationController];
  [v6 setPrefersGrabberVisible:1];
}

- (void)loadView
{
  v42[4] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = WFStaccatoConfigurationViewController;
  [(WFStaccatoConfigurationViewController *)&v41 loadView];
  v3 = [WFSystemActionConfigurationViewController alloc];
  v4 = [(WFStaccatoConfigurationViewController *)self configurationContext];
  v5 = [(WFSystemActionConfigurationViewController *)v3 initWithConfigurationContext:v4];

  [(WFSystemActionConfigurationViewController *)v5 setDelegate:self];
  [(WFStaccatoConfigurationViewController *)self addChildViewController:v5];
  v6 = [(WFStaccatoConfigurationViewController *)self view];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(WFSystemActionConfigurationViewController *)v5 view];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(WFSystemActionConfigurationViewController *)v5 view];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(WFStaccatoConfigurationViewController *)self view];
  v18 = [(WFSystemActionConfigurationViewController *)v5 view];
  [v17 addSubview:v18];

  v31 = MEMORY[0x1E696ACD8];
  v40 = [(WFSystemActionConfigurationViewController *)v5 view];
  v38 = [v40 topAnchor];
  v39 = [(WFStaccatoConfigurationViewController *)self view];
  v37 = [v39 topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v42[0] = v36;
  v35 = [(WFSystemActionConfigurationViewController *)v5 view];
  v33 = [v35 bottomAnchor];
  v34 = [(WFStaccatoConfigurationViewController *)self view];
  v32 = [v34 bottomAnchor];
  v30 = [v33 constraintEqualToAnchor:v32];
  v42[1] = v30;
  v29 = [(WFSystemActionConfigurationViewController *)v5 view];
  v27 = [v29 leadingAnchor];
  v28 = [(WFStaccatoConfigurationViewController *)self view];
  v19 = [v28 leadingAnchor];
  v20 = [v27 constraintEqualToAnchor:v19];
  v42[2] = v20;
  v21 = [(WFSystemActionConfigurationViewController *)v5 view];
  v22 = [v21 trailingAnchor];
  v23 = [(WFStaccatoConfigurationViewController *)self view];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24];
  v42[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v31 activateConstraints:v26];

  [(WFSystemActionConfigurationViewController *)v5 didMoveToParentViewController:self];
  [(WFStaccatoConfigurationViewController *)self setInnerViewController:v5];
}

- (WFStaccatoConfigurationViewController)initWithConfigurationContext:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFStaccatoConfigurationViewController;
  v6 = [(WFStaccatoConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationContext, a3);
    v8 = v7;
  }

  return v7;
}

@end