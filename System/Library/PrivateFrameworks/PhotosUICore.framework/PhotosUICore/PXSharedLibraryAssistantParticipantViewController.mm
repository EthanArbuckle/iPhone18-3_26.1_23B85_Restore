@interface PXSharedLibraryAssistantParticipantViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantParticipantViewController)initWithAssistantViewModel:(id)model participantViewModel:(id)viewModel;
- (void)_continueAssistant;
- (void)_updateButtonsAppearance;
- (void)_updateTableViewLayoutConstraints;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantParticipantViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0x20) != 0 && PXSharedLibraryAssistantViewModelObservationContext == context)
  {
    [(PXSharedLibraryAssistantParticipantViewController *)self _updateButtonsAppearance];
  }
}

- (void)_continueAssistant
{
  v4 = *MEMORY[0x1E69E9840];
  assistantViewControllerDelegate = [(PXSharedLibraryAssistantParticipantViewController *)self assistantViewControllerDelegate];
  if (!assistantViewControllerDelegate)
  {
    PXAssertGetLog();
  }

  [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
}

- (void)_updateButtonsAppearance
{
  assistantViewModel = [(PXSharedLibraryAssistantParticipantViewController *)self assistantViewModel];
  participantDataSource = [assistantViewModel participantDataSource];

  emailAddresses = [participantDataSource emailAddresses];
  if ([emailAddresses count])
  {
    v5 = 1;
  }

  else
  {
    phoneNumbers = [participantDataSource phoneNumbers];
    v5 = [phoneNumbers count] != 0;
  }

  [(OBTrayButton *)self->_titleButton setEnabled:v5];
  [(OBLinkTrayButton *)self->_addLaterButton setEnabled:v5 ^ 1];
}

- (void)_updateTableViewLayoutConstraints
{
  v10[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_tableViewLayoutConstraints];
  [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableViewHeight];
  v4 = v3;
  tableView = [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableView];
  heightAnchor = [tableView heightAnchor];
  v7 = [heightAnchor constraintEqualToConstant:v4];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  tableViewLayoutConstraints = self->_tableViewLayoutConstraints;
  self->_tableViewLayoutConstraints = v8;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_tableViewLayoutConstraints];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantParticipantViewController;
  changeCopy = change;
  [(PXSharedLibraryAssistantParticipantViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryAssistantParticipantViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXSharedLibraryAssistantParticipantViewController *)self _updateIcon];
  }
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PXSharedLibraryAssistantParticipantViewController;
  [(OBTableWelcomeController *)&v21 viewDidLoad];
  assistantViewModel = [(PXSharedLibraryAssistantParticipantViewController *)self assistantViewModel];
  [assistantViewModel registerChangeObserver:self context:PXSharedLibraryAssistantViewModelObservationContext];
  v4 = [PXSharedLibraryParticipantTableViewController alloc];
  participantDataSourceManager = [assistantViewModel participantDataSourceManager];
  v6 = [(PXSharedLibraryParticipantTableViewController *)v4 initWithDataSourceManager:participantDataSourceManager];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v6;

  [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController setDelegate:self];
  tableView = [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableView];
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [tableView setBackgroundColor:systemBackgroundColor];

  [(OBTableWelcomeController *)self setTableView:tableView];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v11 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ButtonTitle_Continue");
  [boldButton setTitle:v11 forState:0];

  [boldButton addTarget:self action:sel_continueButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantParticipantViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v13 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_continueButtonTapped_];
  [(PXSharedLibraryAssistantParticipantViewController *)self addKeyCommand:v13];

  titleButton = self->_titleButton;
  self->_titleButton = boldButton;
  v15 = boldButton;

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  addLaterButton = self->_addLaterButton;
  self->_addLaterButton = linkButton;

  v18 = self->_addLaterButton;
  v19 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupAssistant_Participants_AddLater");
  [(OBLinkTrayButton *)v18 setTitle:v19 forState:0];

  [(OBLinkTrayButton *)self->_addLaterButton addTarget:self action:sel_addLaterButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantParticipantViewController *)self buttonTray];
  [buttonTray2 addButton:self->_addLaterButton];

  [(PXSharedLibraryAssistantParticipantViewController *)self _updateButtonsAppearance];
  [(PXSharedLibraryAssistantParticipantViewController *)self _updateIcon];
}

- (PXSharedLibraryAssistantParticipantViewController)initWithAssistantViewModel:(id)model participantViewModel:(id)viewModel
{
  modelCopy = model;
  viewModelCopy = viewModel;
  title = [viewModelCopy title];
  subtitle = [viewModelCopy subtitle];
  v14.receiver = self;
  v14.super_class = PXSharedLibraryAssistantParticipantViewController;
  v11 = [(OBTableWelcomeController *)&v14 initWithTitle:title detailText:subtitle icon:0 adoptTableViewScrollView:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assistantViewModel, model);
    objc_storeStrong(&v12->_participantViewModel, viewModel);
  }

  return v12;
}

@end