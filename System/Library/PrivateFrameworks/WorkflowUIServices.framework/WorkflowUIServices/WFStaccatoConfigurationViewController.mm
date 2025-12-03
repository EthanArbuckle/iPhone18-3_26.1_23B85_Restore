@interface WFStaccatoConfigurationViewController
- (WFStaccatoConfigurationViewController)initWithConfigurationContext:(id)context;
- (WFStaccatoConfigurationViewControllerDelegate)delegate;
- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error;
- (void)loadView;
- (void)setSelectedAction:(id)action;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation WFStaccatoConfigurationViewController

- (WFStaccatoConfigurationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error
{
  errorCopy = error;
  actionCopy = action;
  delegate = [(WFStaccatoConfigurationViewController *)self delegate];
  [delegate configurationController:self didFinishWithAction:actionCopy error:errorCopy];
}

- (void)setSelectedAction:(id)action
{
  actionCopy = action;
  if (actionCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = actionCopy;
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
  innerViewController = [(WFStaccatoConfigurationViewController *)self innerViewController];
  [innerViewController setSelectedAction:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = WFStaccatoConfigurationViewController;
  [(WFStaccatoConfigurationViewController *)&v7 viewWillAppear:appear];
  sheetPresentationController = [(WFStaccatoConfigurationViewController *)self sheetPresentationController];
  traitOverrides = [sheetPresentationController traitOverrides];
  [traitOverrides setUserInterfaceStyle:2];

  sheetPresentationController2 = [(WFStaccatoConfigurationViewController *)self sheetPresentationController];
  [sheetPresentationController2 setPrefersGrabberVisible:1];
}

- (void)loadView
{
  v42[4] = *MEMORY[0x1E69E9840];
  v41.receiver = self;
  v41.super_class = WFStaccatoConfigurationViewController;
  [(WFStaccatoConfigurationViewController *)&v41 loadView];
  v3 = [WFSystemActionConfigurationViewController alloc];
  configurationContext = [(WFStaccatoConfigurationViewController *)self configurationContext];
  v5 = [(WFSystemActionConfigurationViewController *)v3 initWithConfigurationContext:configurationContext];

  [(WFSystemActionConfigurationViewController *)v5 setDelegate:self];
  [(WFStaccatoConfigurationViewController *)self addChildViewController:v5];
  view = [(WFStaccatoConfigurationViewController *)self view];
  [view bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  view2 = [(WFSystemActionConfigurationViewController *)v5 view];
  [view2 setFrame:{v8, v10, v12, v14}];

  view3 = [(WFSystemActionConfigurationViewController *)v5 view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(WFStaccatoConfigurationViewController *)self view];
  view5 = [(WFSystemActionConfigurationViewController *)v5 view];
  [view4 addSubview:view5];

  v31 = MEMORY[0x1E696ACD8];
  view6 = [(WFSystemActionConfigurationViewController *)v5 view];
  topAnchor = [view6 topAnchor];
  view7 = [(WFStaccatoConfigurationViewController *)self view];
  topAnchor2 = [view7 topAnchor];
  v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v42[0] = v36;
  view8 = [(WFSystemActionConfigurationViewController *)v5 view];
  bottomAnchor = [view8 bottomAnchor];
  view9 = [(WFStaccatoConfigurationViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v42[1] = v30;
  view10 = [(WFSystemActionConfigurationViewController *)v5 view];
  leadingAnchor = [view10 leadingAnchor];
  view11 = [(WFStaccatoConfigurationViewController *)self view];
  leadingAnchor2 = [view11 leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v42[2] = v20;
  view12 = [(WFSystemActionConfigurationViewController *)v5 view];
  trailingAnchor = [view12 trailingAnchor];
  view13 = [(WFStaccatoConfigurationViewController *)self view];
  trailingAnchor2 = [view13 trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v42[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  [v31 activateConstraints:v26];

  [(WFSystemActionConfigurationViewController *)v5 didMoveToParentViewController:self];
  [(WFStaccatoConfigurationViewController *)self setInnerViewController:v5];
}

- (WFStaccatoConfigurationViewController)initWithConfigurationContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = WFStaccatoConfigurationViewController;
  v6 = [(WFStaccatoConfigurationViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configurationContext, context);
    v8 = v7;
  }

  return v7;
}

@end