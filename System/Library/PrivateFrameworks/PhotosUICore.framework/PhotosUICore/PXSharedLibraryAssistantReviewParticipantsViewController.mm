@interface PXSharedLibraryAssistantReviewParticipantsViewController
- (BOOL)shouldHideBackButton;
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantReviewParticipantsViewController)initWithViewModel:(id)a3 participantViewModel:(id)a4 sharedLibraryStatusProvider:(id)a5;
- (void)_cancelShareIfInProgress;
- (void)_finishAssistantWithInvitationTransport:(int64_t)a3 sourceItem:(id)a4;
- (void)_setIsProcessing:(BOOL)a3;
- (void)_updateActionButtons;
- (void)_updateCaptionText;
- (void)_updateHeaderDetailText;
- (void)_updateIcon;
- (void)_updateNavigationItem;
- (void)_updateProgress;
- (void)_updateTableViewInteractability;
- (void)_updateTableViewLayoutConstraints;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation PXSharedLibraryAssistantReviewParticipantsViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v17 = *MEMORY[0x1E69E9840];
  if (PXProgressFractionCompletedObservationContext_257015 == a6)
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
    v14 = self;
    px_dispatch_on_main_queue();
  }

  v9.receiver = self;
  v9.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)&v9 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (PXSharedLibraryAssistantViewModelObservationContext_257019 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:285 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((a4 & 0x10) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  }

  if ((a4 & 0x20) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateActionButtons];
  }

  if (((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]| 0x20) & a4) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateHeaderDetailText];
  }

  if ((a4 & 0x1000) != 0)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _cancelShareIfInProgress];
  }
}

- (void)_cancelShareIfInProgress
{
  v5 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  if ([v5 isCancelingAssistant])
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
  v5 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  v6 = v5;
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
    [v5 setCaptionText:v12];
  }
}

- (void)_updateTableViewInteractability
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  v4 = [v3 isPublished];

  v5 = (v4 & 1) == 0 && self->_shareProgress == 0;
  tableViewController = self->_tableViewController;

  [(PXSharedLibraryParticipantTableViewController *)tableViewController setInteractionEnabled:v5];
}

- (void)_updateHeaderDetailText
{
  v3 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  objc_claimAutoreleasedReturnValue();
  v4 = [v3 localizedParticipantList];
  [v3 participantDataSource];
  v5 = [objc_claimAutoreleasedReturnValue() numberOfParticipants];
  if (v3)
  {
    [v3 shareCounts];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  PXSharedLibraryAssistantReviewParticipantsSubtitle(v4, v5, v6);
}

- (void)_updateIcon
{
  v3 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self viewModel];
  v4 = [v3 participantsImage];
  v5 = v4;
  if (!v4)
  {
    PXSharedLibraryCreatePlatterImage(@"person.2.fill", 0);
  }

  v7 = v4;

  v6 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  [v6 setIcon:v7 accessibilityLabel:0];
}

- (void)_updateActionButtons
{
  v3 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  shareProgress = self->_shareProgress;
  v12 = v3;
  if (shareProgress)
  {
    [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:0];
  }

  else
  {
    v5 = [v3 emailAddresses];
    if ([v5 count])
    {
      [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:1];
    }

    else
    {
      v6 = [v12 phoneNumbers];
      -[OBBoldTrayButton setEnabled:](self->_shareInMessagesButton, "setEnabled:", [v6 count] != 0);
    }
  }

  [(OBLinkTrayButton *)self->_shareButton setEnabled:shareProgress == 0];
  v7 = [v12 numberOfParticipants];
  v8 = 2 * (v7 > 0);
  if (v7 <= 0)
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
  v3 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self shouldHideBackButton];
  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setHidesBackButton:v3];
}

- (void)_updateTableViewLayoutConstraints
{
  v10[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696ACD8] deactivateConstraints:self->_tableViewLayoutConstraints];
  [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableViewHeight];
  v4 = v3;
  v5 = [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableView];
  v6 = [v5 heightAnchor];
  v7 = [v6 constraintEqualToConstant:v4];
  v10[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  tableViewLayoutConstraints = self->_tableViewLayoutConstraints;
  self->_tableViewLayoutConstraints = v8;

  [MEMORY[0x1E696ACD8] activateConstraints:self->_tableViewLayoutConstraints];
}

- (void)_setIsProcessing:(BOOL)a3
{
  v3 = a3;
  v5 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
    v10 = [v6 stackView];
  }

  else
  {
    v10 = 0;
  }

  if (v3)
  {
    v7 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    shareProgress = self->_shareProgress;
    self->_shareProgress = v7;

    [(NSProgress *)self->_shareProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_257015];
    [v10 insertArrangedSubview:self->_progressView atIndex:0];
    [v10 setCustomSpacing:self->_progressView afterView:10.0];
    [v10 insertArrangedSubview:self->_spinnerView atIndex:1];
    [v10 setCustomSpacing:self->_spinnerView afterView:12.0];
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
  [(OBBoldTrayButton *)self->_shareInMessagesButton setEnabled:!v3];
}

- (void)_finishAssistantWithInvitationTransport:(int64_t)a3 sourceItem:(id)a4
{
  v6 = [off_1E7721960 popoverPresenterWithViewController:self sourceItem:a4];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _setIsProcessing:1];
  v7 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self statusProvider];
  viewModel = self->_viewModel;
  shareProgress = self->_shareProgress;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __111__PXSharedLibraryAssistantReviewParticipantsViewController__finishAssistantWithInvitationTransport_sourceItem___block_invoke;
  v10[3] = &unk_1E774C5C0;
  v10[4] = self;
  PXSharedLibraryFinishReviewAssistant(v7, viewModel, a3, shareProgress, v6, v10);
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

  v3 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel sharedLibrary];
  v4 = [v3 isPublished];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  v4 = a3;
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(OBTableWelcomeController *)&v11 viewWillAppear:a3];
  v4 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  v5 = [v4 numberOfParticipants];

  tableViewController = self->_tableViewController;
  if (v5)
  {
    [(PXSharedLibraryParticipantTableViewController *)tableViewController setDelegate:0];
    v7 = objc_alloc(MEMORY[0x1E69DD020]);
    v8 = [v7 initWithFrame:0 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  }

  else
  {
    [(PXSharedLibraryParticipantTableViewController *)tableViewController setDelegate:self];
    v8 = [(PXSharedLibraryParticipantTableViewController *)self->_tableViewController tableView];
  }

  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v9 setBackgroundColor:v10];

  [(OBTableWelcomeController *)self setTableView:v9];
}

- (void)viewDidLoad
{
  v31[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  [(OBTableWelcomeController *)&v30 viewDidLoad];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateIcon];
  v3 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  v4 = [(PXSharedLibraryAssistantParticipantViewModel *)self->_participantViewModel title];
  [v3 setTitle:v4];

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
  v13 = [(PXRoundProgressView *)self->_progressView widthAnchor];
  v14 = [v13 constraintEqualToConstant:v9];
  v31[0] = v14;
  v15 = [(PXRoundProgressView *)self->_progressView heightAnchor];
  v16 = [v15 constraintEqualToConstant:v11];
  v31[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  [v12 activateConstraints:v17];

  v18 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v18;

  [(UIActivityIndicatorView *)self->_spinnerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [MEMORY[0x1E69B7D00] boldButton];
  v21 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_ReviewRecipients_ButtonTitle_sendInMessages");
  [v20 setTitle:v21 forState:0];

  [v20 addTarget:self action:sel_inviteButtonTapped_ forControlEvents:0x2000];
  v22 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  [v22 addButton:v20];

  v23 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_inviteButtonTapped_];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self addKeyCommand:v23];

  shareInMessagesButton = self->_shareInMessagesButton;
  self->_shareInMessagesButton = v20;
  v25 = v20;

  v26 = [MEMORY[0x1E69B7D38] linkButton];
  [v26 addTarget:self action:sel_shareButtonTapped_ forControlEvents:0x2000];
  v27 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self buttonTray];
  [v27 addButton:v26];

  shareButton = self->_shareButton;
  self->_shareButton = v26;

  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateActionButtons];
  [(PXSharedLibraryAssistantReviewParticipantsViewController *)self _updateCaptionText];
  v29 = [(PXSharedLibraryAssistantReviewParticipantsViewController *)self headerView];
  [v29 setAllowFullWidthIcon:1];
}

- (PXSharedLibraryAssistantReviewParticipantsViewController)initWithViewModel:(id)a3 participantViewModel:(id)a4 sharedLibraryStatusProvider:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"participantViewModel"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantReviewParticipantsViewController+iOS.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = PXSharedLibraryAssistantReviewParticipantsViewController;
  v13 = [(OBTableWelcomeController *)&v23 initWithTitle:&stru_1F1741150 detailText:0 icon:0 adoptTableViewScrollView:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_statusProvider, a5);
    objc_storeStrong(&v14->_viewModel, a3);
    [(PXSharedLibraryAssistantViewModel *)v14->_viewModel registerChangeObserver:v14 context:PXSharedLibraryAssistantViewModelObservationContext_257019];
    objc_storeStrong(&v14->_participantViewModel, a4);
    v15 = [PXSharedLibraryParticipantTableViewController alloc];
    v16 = [(PXSharedLibraryAssistantViewModel *)v14->_viewModel participantDataSourceManager];
    v17 = [(PXSharedLibraryParticipantTableViewController *)v15 initWithDataSourceManager:v16];
    tableViewController = v14->_tableViewController;
    v14->_tableViewController = v17;
  }

  return v14;
}

@end