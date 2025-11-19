@interface TFFeedbackFormViewController
- (TFFeedbackFormViewController)initWithPresenter:(id)a3;
- (void)adjustContentOffsetForKeyboardNotification:(id)a3;
- (void)loadView;
- (void)prepareForEntryType:(unint64_t)a3;
- (void)registerNotifications;
- (void)reloadEntriesAtIndexPaths:(id)a3;
- (void)reloadEntryGroupsAtIndices:(id)a3;
- (void)setNavigationItemTitle:(id)a3;
- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4;
- (void)showSubmitButtonForSubmissionPendingState:(BOOL)a3;
- (void)submitButtonPressed:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unregisterNotifications;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation TFFeedbackFormViewController

- (TFFeedbackFormViewController)initWithPresenter:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = TFFeedbackFormViewController;
  v6 = [(TFFeedbackFormViewController *)&v19 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, a3);
    v8 = [[TFFeedbackFormViewDataSource alloc] initWithPresenter:v7->_presenter];
    viewDataSource = v7->_viewDataSource;
    v7->_viewDataSource = v8;

    v10 = objc_alloc(MEMORY[0x277D751E0]);
    v11 = TFLocalizedString(@"FEEDBACK_NAVIGATION_SUBMIT_BUTTON_TITLE");
    v12 = [v10 initWithTitle:v11 style:2 target:v7 action:sel_submitButtonPressed_];
    submitButtonItem = v7->_submitButtonItem;
    v7->_submitButtonItem = v12;

    v14 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v7->_activityIndicatorView;
    v7->_activityIndicatorView = v14;

    v16 = [objc_alloc(MEMORY[0x277D751E0]) initWithCustomView:v7->_activityIndicatorView];
    activityItem = v7->_activityItem;
    v7->_activityItem = v16;
  }

  return v7;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], v5, v6, v7}];
  [(TFFeedbackFormViewController *)self setView:v8];

  v9 = [objc_alloc(MEMORY[0x277D75B40]) initWithFrame:1 style:{v4, v5, v6, v7}];
  [(TFFeedbackFormViewController *)self setTableView:v9];

  v10 = [(TFFeedbackFormViewController *)self tableView];
  [v10 setAutoresizingMask:18];

  v11 = [(TFFeedbackFormViewController *)self viewDataSource];
  v12 = [(TFFeedbackFormViewController *)self tableView];
  [v12 setDataSource:v11];

  v13 = [(TFFeedbackFormViewController *)self viewDataSource];
  v14 = [(TFFeedbackFormViewController *)self tableView];
  [v14 setDelegate:v13];

  v15 = [(TFFeedbackFormViewController *)self tableView];
  [v15 setKeyboardDismissMode:2];

  v16 = [(TFFeedbackFormViewController *)self tableView];
  [v16 setSeparatorStyle:0];

  v17 = [(TFFeedbackFormViewController *)self tableView];
  [v17 setContentInset:{0.0, 0.0, 50.0, 0.0}];

  v18 = [(TFFeedbackFormViewController *)self view];
  v19 = [(TFFeedbackFormViewController *)self tableView];
  [v18 addSubview:v19];

  v20 = [(TFFeedbackFormViewController *)self viewDataSource];
  v21 = [(TFFeedbackFormViewController *)self tableView];
  [v20 prepareTableViewForDataSource:v21];

  [(TFFeedbackFormViewController *)self showSubmitButtonForSubmissionPendingState:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewDidLoad];
  v3 = [(TFFeedbackFormViewController *)self presenter];
  [v3 prepareViewForForm];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewWillAppear:a3];
  [(TFFeedbackFormViewController *)self registerNotifications];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v5 viewWillDisappear:a3];
  v4 = [(TFFeedbackFormViewController *)self tableView];
  [v4 endEditing:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewDidDisappear:a3];
  [(TFFeedbackFormViewController *)self unregisterNotifications];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(TFFeedbackFormViewController *)self tableView];
  [v4 reloadData];
}

- (void)registerNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel_adjustContentOffsetForKeyboardNotification_ name:*MEMORY[0x277D76BA8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel_adjustContentOffsetForKeyboardNotification_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)unregisterNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
}

- (void)setNavigationItemTitle:(id)a3
{
  v4 = a3;
  v5 = [(TFFeedbackFormViewController *)self navigationItem];
  [v5 setTitle:v4];
}

- (void)prepareForEntryType:(unint64_t)a3
{
  v6 = [(TFFeedbackFormViewController *)self tableView];
  v4 = [TFFeedbackEntryTypeCellProvider cellClassForEntryType:a3];
  v5 = [TFFeedbackEntryTypeCellProvider reuseIdentifierForEntryType:a3];
  [v6 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)reloadEntryGroupsAtIndices:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(TFFeedbackFormViewController *)self tableView];
    [v4 reloadSections:v5 withRowAnimation:100];
  }
}

- (void)reloadEntriesAtIndexPaths:(id)a3
{
  v5 = a3;
  if ([v5 count])
  {
    v4 = [(TFFeedbackFormViewController *)self tableView];
    [v4 reloadRowsAtIndexPaths:v5 withRowAnimation:100];
  }
}

- (void)showSubmitButtonForSubmissionPendingState:(BOOL)a3
{
  v3 = a3;
  v5 = [(TFFeedbackFormViewController *)self activityIndicatorView];
  v6 = v5;
  if (v3)
  {
    [v5 startAnimating];

    [(TFFeedbackFormViewController *)self activityItem];
  }

  else
  {
    [v5 stopAnimating];

    [(TFFeedbackFormViewController *)self submitButtonItem];
  }
  v8 = ;
  v7 = [(TFFeedbackFormViewController *)self navigationItem];
  [v7 setRightBarButtonItem:v8];
}

- (void)showErrorAlertWithTitle:(id)a3 message:(id)a4
{
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:a3 message:a4 preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = TFLocalizedString(@"ALERT_DISMISS_ACTION_TITLE");
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_0];

  [v8 addAction:v7];
  [(TFFeedbackFormViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)adjustContentOffsetForKeyboardNotification:(id)a3
{
  v12 = a3;
  v4 = [v12 name];
  v5 = [v4 isEqualToString:*MEMORY[0x277D76BA8]];

  if (v5)
  {
    v6 = [v12 userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277D76BB8]];
    [v7 CGRectValue];
    v9 = v8;

    v10 = v9 + 50.0;
  }

  else
  {
    v10 = 50.0;
  }

  v11 = [(TFFeedbackFormViewController *)self tableView];
  [v11 setContentInset:{0.0, 0.0, v10, 0.0}];
}

- (void)submitButtonPressed:(id)a3
{
  v4 = [(TFFeedbackFormViewController *)self tableView];
  [v4 endEditing:1];

  v5 = [(TFFeedbackFormViewController *)self presenter];
  [v5 presenterViewDidInitiateFeedbackSubmission:self];
}

@end