@interface TFFeedbackFormViewController
- (TFFeedbackFormViewController)initWithPresenter:(id)presenter;
- (void)adjustContentOffsetForKeyboardNotification:(id)notification;
- (void)loadView;
- (void)prepareForEntryType:(unint64_t)type;
- (void)registerNotifications;
- (void)reloadEntriesAtIndexPaths:(id)paths;
- (void)reloadEntryGroupsAtIndices:(id)indices;
- (void)setNavigationItemTitle:(id)title;
- (void)showErrorAlertWithTitle:(id)title message:(id)message;
- (void)showSubmitButtonForSubmissionPendingState:(BOOL)state;
- (void)submitButtonPressed:(id)pressed;
- (void)traitCollectionDidChange:(id)change;
- (void)unregisterNotifications;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation TFFeedbackFormViewController

- (TFFeedbackFormViewController)initWithPresenter:(id)presenter
{
  presenterCopy = presenter;
  v19.receiver = self;
  v19.super_class = TFFeedbackFormViewController;
  v6 = [(TFFeedbackFormViewController *)&v19 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presenter, presenter);
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

  tableView = [(TFFeedbackFormViewController *)self tableView];
  [tableView setAutoresizingMask:18];

  viewDataSource = [(TFFeedbackFormViewController *)self viewDataSource];
  tableView2 = [(TFFeedbackFormViewController *)self tableView];
  [tableView2 setDataSource:viewDataSource];

  viewDataSource2 = [(TFFeedbackFormViewController *)self viewDataSource];
  tableView3 = [(TFFeedbackFormViewController *)self tableView];
  [tableView3 setDelegate:viewDataSource2];

  tableView4 = [(TFFeedbackFormViewController *)self tableView];
  [tableView4 setKeyboardDismissMode:2];

  tableView5 = [(TFFeedbackFormViewController *)self tableView];
  [tableView5 setSeparatorStyle:0];

  tableView6 = [(TFFeedbackFormViewController *)self tableView];
  [tableView6 setContentInset:{0.0, 0.0, 50.0, 0.0}];

  view = [(TFFeedbackFormViewController *)self view];
  tableView7 = [(TFFeedbackFormViewController *)self tableView];
  [view addSubview:tableView7];

  viewDataSource3 = [(TFFeedbackFormViewController *)self viewDataSource];
  tableView8 = [(TFFeedbackFormViewController *)self tableView];
  [viewDataSource3 prepareTableViewForDataSource:tableView8];

  [(TFFeedbackFormViewController *)self showSubmitButtonForSubmissionPendingState:0];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewDidLoad];
  presenter = [(TFFeedbackFormViewController *)self presenter];
  [presenter prepareViewForForm];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewWillAppear:appear];
  [(TFFeedbackFormViewController *)self registerNotifications];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v5 viewWillDisappear:disappear];
  tableView = [(TFFeedbackFormViewController *)self tableView];
  [tableView endEditing:1];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v4 viewDidDisappear:disappear];
  [(TFFeedbackFormViewController *)self unregisterNotifications];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = TFFeedbackFormViewController;
  [(TFFeedbackFormViewController *)&v5 traitCollectionDidChange:change];
  tableView = [(TFFeedbackFormViewController *)self tableView];
  [tableView reloadData];
}

- (void)registerNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_adjustContentOffsetForKeyboardNotification_ name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_adjustContentOffsetForKeyboardNotification_ name:*MEMORY[0x277D76C50] object:0];
}

- (void)unregisterNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
}

- (void)setNavigationItemTitle:(id)title
{
  titleCopy = title;
  navigationItem = [(TFFeedbackFormViewController *)self navigationItem];
  [navigationItem setTitle:titleCopy];
}

- (void)prepareForEntryType:(unint64_t)type
{
  tableView = [(TFFeedbackFormViewController *)self tableView];
  v4 = [TFFeedbackEntryTypeCellProvider cellClassForEntryType:type];
  v5 = [TFFeedbackEntryTypeCellProvider reuseIdentifierForEntryType:type];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)reloadEntryGroupsAtIndices:(id)indices
{
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    tableView = [(TFFeedbackFormViewController *)self tableView];
    [tableView reloadSections:indicesCopy withRowAnimation:100];
  }
}

- (void)reloadEntriesAtIndexPaths:(id)paths
{
  pathsCopy = paths;
  if ([pathsCopy count])
  {
    tableView = [(TFFeedbackFormViewController *)self tableView];
    [tableView reloadRowsAtIndexPaths:pathsCopy withRowAnimation:100];
  }
}

- (void)showSubmitButtonForSubmissionPendingState:(BOOL)state
{
  stateCopy = state;
  activityIndicatorView = [(TFFeedbackFormViewController *)self activityIndicatorView];
  v6 = activityIndicatorView;
  if (stateCopy)
  {
    [activityIndicatorView startAnimating];

    [(TFFeedbackFormViewController *)self activityItem];
  }

  else
  {
    [activityIndicatorView stopAnimating];

    [(TFFeedbackFormViewController *)self submitButtonItem];
  }
  v8 = ;
  navigationItem = [(TFFeedbackFormViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v8];
}

- (void)showErrorAlertWithTitle:(id)title message:(id)message
{
  v8 = [MEMORY[0x277D75110] alertControllerWithTitle:title message:message preferredStyle:1];
  v5 = MEMORY[0x277D750F8];
  v6 = TFLocalizedString(@"ALERT_DISMISS_ACTION_TITLE");
  v7 = [v5 actionWithTitle:v6 style:0 handler:&__block_literal_global_0];

  [v8 addAction:v7];
  [(TFFeedbackFormViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)adjustContentOffsetForKeyboardNotification:(id)notification
{
  notificationCopy = notification;
  name = [notificationCopy name];
  v5 = [name isEqualToString:*MEMORY[0x277D76BA8]];

  if (v5)
  {
    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
    [v7 CGRectValue];
    v9 = v8;

    v10 = v9 + 50.0;
  }

  else
  {
    v10 = 50.0;
  }

  tableView = [(TFFeedbackFormViewController *)self tableView];
  [tableView setContentInset:{0.0, 0.0, v10, 0.0}];
}

- (void)submitButtonPressed:(id)pressed
{
  tableView = [(TFFeedbackFormViewController *)self tableView];
  [tableView endEditing:1];

  presenter = [(TFFeedbackFormViewController *)self presenter];
  [presenter presenterViewDidInitiateFeedbackSubmission:self];
}

@end