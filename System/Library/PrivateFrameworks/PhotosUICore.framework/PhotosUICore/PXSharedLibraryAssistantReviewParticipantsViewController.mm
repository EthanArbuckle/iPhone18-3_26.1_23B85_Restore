@interface PXSharedLibraryAssistantReviewParticipantsViewController
- (BOOL)shouldHideBackButton;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantReviewParticipantsViewController)initWithViewModel:(id)model participantViewModel:(id)viewModel sharedLibraryStatusProvider:(id)provider;
- (void)_cancelShareIfInProgress;
- (void)_finishAssistantWithInvitationTransport:(int64_t)transport sourceItem:(id)item;
- (void)_setIsProcessing:(BOOL)processing;
- (void)_updateActionButtons;
- (void)_updateCaptionText;
- (void)_updateHeaderDetailText;
- (void)_updateIcon;
- (void)_updateNavigationItem;
- (void)_updateProgress;
- (void)_updateTableViewInteractability;
- (void)_updateTableViewLayoutConstraints;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation PXSharedLibraryAssistantReviewParticipantsViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x1E69E9840];
  if (PXProgressFractionCompletedObservationContext_257015 == context)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(NSProgress *)self->_shareProgress fractionCompleted];
      *buf = 134217984;
      v16 = v8;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Preview progress fraction completed observation: %.3f", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __107__PXSharedLibraryAssistantReviewParticipantsViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v13 = &unk_1E774C648;
    selfCopy = self;
    px_dispatch_on_main_queue();
  }

  v9.receiver = self;
  v9.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)&v9 observeValueForKeyPath:path ofObject:object change:change context:?];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXSharedLibraryAssistantViewModelObservationContext_257019 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:285 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = observableCopy;
  if ((change & 0x10) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  }

  if ((change & 0x20) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateActionButtons];
  }

  if (((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]| 0x20) & change) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateHeaderDetailText];
  }

  if ((change & 0x1000) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _cancelShareIfInProgress];
  }
}

- (void)_cancelShareIfInProgress
{
  viewModel = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  if ([viewModel isCancelingAssistant])
  {
    shareProgress = self->_shareProgress;

    if (shareProgress)
    {
      v4 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Canceled by the user: Publish Shared Library", buf, 2u);
      }

      [(NSProgress *)self->_shareProgress cancel];
    }
  }

  else
  {
  }
}

- (void)_updateProgress
{
  v10 = *MEMORY[0x1E69E9840];
  [(NSProgress *)self->_shareProgress fractionCompleted];
  v4 = v3;
  v5 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_DEFAULT, "Preview progress fraction completed UI update: %.3f", &v8, 0xCu);
  }

  spinnerView = self->_spinnerView;
  if (v4 <= 0.0)
  {
    [(UIActivityIndicatorView *)spinnerView startAnimating];
    [(PXRoundProgressView *)self->_progressView setHidden:1];
  }

  else
  {
    [(UIActivityIndicatorView *)spinnerView stopAnimating];
    [(PXRoundProgressView *)self->_progressView setHidden:0];
    *&v7 = v4;
    [(PXRoundProgressView *)self->_progressView setProgress:v7];
  }
}

- (void)_updateCaptionText
{
  if (self->_shareProgress)
  {
    v3 = &stru_1F1741150;
  }

  else
  {
    v3 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupDataRetentionInfoOwner");
  }

  v12 = v3;
  v4 = [(__CFString *)v3 length];
  buttonTray = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  v6 = buttonTray;
  if (v4)
  {
    v7 = MEMORY[0x1E695DFF8];
    IsIPad = PLPhysicalDeviceIsIPad();
    v9 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ios_ui-05052022";
    if (IsIPad)
    {
      v9 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ipados_ui-05052022";
    }

    v10 = v9;
    v11 = [v7 URLWithString:v10];
    [v6 setCaptionText:v12 learnMoreURL:v11];
  }

  else
  {
    [buttonTray setCaptionText:v12];
  }
}

- (void)_updateTableViewInteractability
{
  sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  isPublished = [sharedLibrary isPublished];

  v5 = (isPublished & 1) == 0 && self->_shareProgress == 0;
  tableViewController = self->_tableViewController;

  [(PXSharedLibraryParticipantTableViewController *)tableViewController setInteractionEnabled:v5];
}

- (void)_updateHeaderDetailText
{
  viewModel = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  objc_claimAutoreleasedReturnValue();
  localizedParticipantList = [viewModel localizedParticipantList];
  [viewModel participantDataSource];
  numberOfParticipants = [objc_claimAutoreleasedReturnValue() numberOfParticipants];
  if (viewModel)
  {
    [viewModel shareCounts];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  PXSharedLibraryAssistantReviewParticipantsSubtitle(localizedParticipantList, numberOfParticipants, v6);
}

- (void)_updateIcon
{
  viewModel = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  participantsImage = [viewModel participantsImage];
  v5 = participantsImage;
  if (!participantsImage)
  {
    PXSharedLibraryCreatePlatterImage(@"person.2.fill", 0);
  }

  v7 = participantsImage;

  headerView = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  [headerView setIcon:v7 accessibilityLabel:0];
}

- (void)_updateActionButtons
{
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  shareProgress = self->_shareProgress;
  v12 = participantDataSource;
  if (shareProgress)
  {
    [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:0];
  }

  else
  {
    emailAddresses = [participantDataSource emailAddresses];
    if ([emailAddresses count])
    {
      [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:1];
    }

    else
    {
      phoneNumbers = [v12 phoneNumbers];
      -[OBBoldTrayButton setEnabled:](self->_shareInMessagesButton, "setEnabled:", [phoneNumbers count] != 0);
    }
  }

  [(OBLinkTrayButton *)self->_shareButton setEnabled:shareProgress == 0];
  numberOfParticipants = [v12 numberOfParticipants];
  v8 = 2 * (numberOfParticipants > 0);
  if (numberOfParticipants <= 0)
  {
    v9 = @"PXSharedLibraryAssistant_ReviewRecipients_ButtonTitle_inviteLater";
  }

  else
  {
    v9 = @"PXSharedLibraryAssistant_ReviewRecipients_ButtonTitle_shareLink";
  }

  self->_shareButtonTransport = v8;
  shareButton = self->_shareButton;
  v11 = PXLocalizedSharedLibraryString(v9);
  [(OBLinkTrayButton *)shareButton setTitle:v11 forState:0];
}

- (void)_updateNavigationItem
{
  shouldHideBackButton = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self shouldHideBackButton];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:shouldHideBackButton];
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

- (void)_setIsProcessing:(BOOL)processing
{
  processingCopy = processing;
  buttonTray = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  if (objc_opt_respondsToSelector())
  {
    buttonTray2 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
    stackView = [buttonTray2 stackView];
  }

  else
  {
    stackView = 0;
  }

  if (processingCopy)
  {
    v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    shareProgress = self->_shareProgress;
    self->_shareProgress = v7;

    [(NSProgress *)self->_shareProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_257015];
    [stackView insertArrangedSubview:self->_progressView atIndex:0];
    [stackView setCustomSpacing:self->_progressView afterView:10.0];
    [stackView insertArrangedSubview:self->_spinnerView atIndex:1];
    [stackView setCustomSpacing:self->_spinnerView afterView:12.0];
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateProgress];
  }

  else
  {
    [(PXRoundProgressView *)self->_progressView removeFromSuperview];
    [(UIActivityIndicatorView *)self->_spinnerView removeFromSuperview];
    [(NSProgress *)self->_shareProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_257015];
    v9 = self->_shareProgress;
    self->_shareProgress = 0;
  }

  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateNavigationItem];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateTableViewInteractability];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateCaptionText];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateActionButtons];
  [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:!processingCopy];
}

- (void)_finishAssistantWithInvitationTransport:(int64_t)transport sourceItem:(id)item
{
  v6 = [off_1E7721960 popoverPresenterWithViewController:self sourceItem:item];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _setIsProcessing:1];
  statusProvider = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self statusProvider];
  viewModel = self->_viewModel;
  shareProgress = self->_shareProgress;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__PXSharedLibraryAssistantReviewParticipantsViewController__finishAssistantWithInvitationTransport_sourceItem___block_invoke;
  v10[3] = &unk_1E774C5C0;
  v10[4] = self;
  PXSharedLibraryFinishReviewAssistant(statusProvider, viewModel, transport, shareProgress, v6, v10);
}

void __111__PXSharedLibraryAssistantReviewParticipantsViewController__finishAssistantWithInvitationTransport_sourceItem___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = a3;
  [*(a1 + 32) _setIsProcessing:0];
  if (a2)
  {
    v5 = [*(a1 + 32) assistantViewControllerDelegate];
    [v5 stepForwardInAssistantForAssistantViewController:*(a1 + 32)];

    v6 = [*(a1 + 32) viewModel];
    v7 = [v6 infosWithBothPeopleAndParticipants];
    PXSharedLibraryLinkContactsToPeopleForInfos(v7);

LABEL_6:
    v8 = v11;
    goto LABEL_7;
  }

  v8 = v11;
  if (v11)
  {
    v9 = v11;
    v10 = [v9 px_isDomain:@"PXSharedLibraryErrorDomain" code:-1001];

    v8 = v11;
    if (v10)
    {
      [*(a1 + 32) _updateNavigationItem];
      [*(a1 + 32) _updateTableViewInteractability];
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (BOOL)shouldHideBackButton
{
  if (self->_shareProgress)
  {
    return 1;
  }

  sharedLibrary = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  isPublished = [sharedLibrary isPublished];

  return isPublished;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  changeCopy = change;
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v11.receiver = self;
  v11.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(OBTableWelcomeController *)&v11 viewWillAppear:appear];
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  numberOfParticipants = [participantDataSource numberOfParticipants];

  tableViewController = self->_tableViewController;
  if (numberOfParticipants)
  {
    [(PXSharedLibraryParticipantTableViewController *)tableViewController setDelegate:0];
    v7 = objc_alloc(MEMORY[0x1E69DD020]);
    tableView = [v7 initWithFrame:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else
  {
    [(PXSharedLibraryParticipantTableViewController *)tableViewController setDelegate:self];
    tableView = [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableView];
  }

  v9 = tableView;
  [tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v9 setBackgroundColor:systemBackgroundColor];

  [(OBTableWelcomeController *)self setTableView:v9];
}

- (void)viewDidLoad
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(OBTableWelcomeController *)&v30 viewDidLoad];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  headerView = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  title = [(PXSharedLibraryAssistantParticipantViewModel *)self->_participantViewModel title];
  [headerView setTitle:title];

  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateHeaderDetailText];
  v5 = [off_1E7721870 alloc];
  v6 = [v5 initWithFrame:4 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  progressView = self->_progressView;
  self->_progressView = v6;

  [(PXRoundProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [off_1E7721870 sizeForSizeClass:2];
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x1E696ACD8];
  widthAnchor = [(PXRoundProgressView *)self->_progressView widthAnchor];
  v14 = [widthAnchor constraintEqualToConstant:v9];
  v31[0] = v14;
  heightAnchor = [(PXRoundProgressView *)self->_progressView heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:v11];
  v31[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v12 activateConstraints:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v18;

  [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  v21 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ReviewRecipients_ButtonTitle_sendInMessages");
  [boldButton setTitle:v21 forState:0];

  [boldButton addTarget:self action:sel_inviteButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  [buttonTray addButton:boldButton];

  v23 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_inviteButtonTapped_];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self addKeyCommand:v23];

  shareInMessagesButton = self->_shareInMessagesButton;
  self->_shareInMessagesButton = boldButton;
  v25 = boldButton;

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  [linkButton addTarget:self action:sel_shareButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  [buttonTray2 addButton:linkButton];

  shareButton = self->_shareButton;
  self->_shareButton = linkButton;

  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateActionButtons];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateCaptionText];
  headerView2 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  [headerView2 setAllowFullWidthIcon:1];
}

- (PXSharedLibraryAssistantReviewParticipantsViewController)initWithViewModel:(id)model participantViewModel:(id)viewModel sharedLibraryStatusProvider:(id)provider
{
  modelCopy = model;
  viewModelCopy = viewModel;
  providerCopy = provider;
  if (modelCopy)
  {
    if (viewModelCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"participantViewModel"}];

    if (providerCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

  if (!viewModelCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (providerCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  v13 = [(OBTableWelcomeController *)&v23 initWithTitle:&stru_1F1741150 detailText:0 icon:0 adoptTableViewScrollView:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_statusProvider, provider);
    objc_storeStrong(&v14->_viewModel, model);
    [(PXSharedLibraryAssistantViewModel *)v14->_viewModel registerChangeObserver:v14 context:PXSharedLibraryAssistantViewModelObservationContext_257019];
    objc_storeStrong(&v14->_participantViewModel, viewModel);
    v15 = [PXSharedLibraryParticipantTableViewController alloc];
    participantDataSourceManager = [(PXSharedLibraryAssistantViewModel *)v14->_viewModel participantDataSourceManager];
    v17 = [(PXSharedLibraryParticipantTableViewController *)v15 initWithDataSourceManager:participantDataSourceManager];
    tableViewController = v14->_tableViewController;
    v14->_tableViewController = v17;
  }

  return v14;
}

@end