@interface PXSharedLibraryAssistantSummaryViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantSummaryViewController)initWithViewModel:(id)model sharedLibraryStatusProvider:(id)provider libraryFilterState:(id)state;
- (void)_createPreviewAndCompleteAssistant;
- (void)_previewInvitationAndCompleteAssistant;
- (void)_setIsProcessing:(BOOL)processing;
- (void)cancelShareIfInProgress;
- (void)createPreviewAndCompleteAssistant;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prepareUIForProcessing:(BOOL)processing;
- (void)skipAndContinue;
- (void)updateProgress;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantSummaryViewController

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v18 = *MEMORY[0x1E69E9840];
  if (PXProgressFractionCompletedObservationContext_116390 == context)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
      [previewProgress fractionCompleted];
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Preview progress fraction completed observation: %.3f", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __106__PXSharedLibraryAssistantSummaryViewController_Internal__observeValueForKeyPath_ofObject_change_context___block_invoke;
    v14 = &unk_1E774C648;
    selfCopy = self;
    px_dispatch_on_main_queue();
  }

  v10.receiver = self;
  v10.super_class = PXSharedLibraryAssistantSummaryViewController;
  [(PXSharedLibraryAssistantSummaryViewController *)&v10 observeValueForKeyPath:path ofObject:object change:change context:?];
}

- (void)_previewInvitationAndCompleteAssistant
{
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  sharedLibrary = [viewModel sharedLibrary];
  sharedLibraryRule = [viewModel sharedLibraryRule];
  autoSharePolicy = [viewModel autoSharePolicy];
  _presentationEnvironment = [(PXSharedLibraryAssistantSummaryViewController *)self _presentationEnvironment];
  [(PXSharedLibraryAssistantSummaryViewController *)self _setIsProcessing:1];
  statusProvider = [(PXSharedLibraryAssistantSummaryViewController *)self statusProvider];
  previewIsOutdated = [viewModel previewIsOutdated];
  previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PXSharedLibraryAssistantSummaryViewController_Internal___previewInvitationAndCompleteAssistant__block_invoke;
  v13[3] = &unk_1E77411F0;
  v14 = viewModel;
  v15 = a2;
  v13[4] = self;
  v12 = viewModel;
  PXSharedLibraryPreviewInvitation(statusProvider, sharedLibrary, sharedLibraryRule, autoSharePolicy, previewIsOutdated, previewProgress, _presentationEnvironment, v13);
}

void __97__PXSharedLibraryAssistantSummaryViewController_Internal___previewInvitationAndCompleteAssistant__block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _setIsProcessing:0];
  if (a2)
  {
    v4 = [*(a1 + 32) assistantViewControllerDelegate];
    if (!v4)
    {
      PXAssertGetLog();
    }

    [v4 completeAssistantForAssistantViewController:*(a1 + 32)];
    v5 = [*(a1 + 32) libraryFilterState];
    PXSharedLibraryNavigateToLibraryViewInSharedLibraryViewMode(1, v5);

    v6 = [*(a1 + 40) infosWithBothPeopleAndParticipants];
    PXSharedLibraryLinkContactsToPeopleForInfos(v6);
  }
}

- (void)_createPreviewAndCompleteAssistant
{
  _presentationEnvironment = [(PXSharedLibraryAssistantSummaryViewController *)self _presentationEnvironment];
  [(PXSharedLibraryAssistantSummaryViewController *)self _setIsProcessing:1];
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PXSharedLibraryAssistantSummaryViewController_Internal___createPreviewAndCompleteAssistant__block_invoke;
  v7[3] = &unk_1E7741CE0;
  v7[4] = self;
  v7[5] = a2;
  PXSharedLibraryCreatePreview(viewModel, previewProgress, _presentationEnvironment, v7);
}

void __93__PXSharedLibraryAssistantSummaryViewController_Internal___createPreviewAndCompleteAssistant__block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _setIsProcessing:0];
  if (a2)
  {
    v4 = [*(a1 + 32) assistantViewControllerDelegate];
    if (!v4)
    {
      PXAssertGetLog();
    }

    [v4 completeAssistantForAssistantViewController:*(a1 + 32)];
    v5 = [*(a1 + 32) libraryFilterState];
    PXSharedLibraryNavigateToLibraryViewInSharedLibraryViewMode(1, v5);

    v6 = [*(a1 + 32) viewModel];
    v7 = [v6 infosWithBothPeopleAndParticipants];
    PXSharedLibraryLinkContactsToPeopleForInfos(v7);
  }
}

- (void)_setIsProcessing:(BOOL)processing
{
  processingCopy = processing;
  [(PXSharedLibraryAssistantSummaryViewController *)self prepareUIForProcessing:?];
  if (processingCopy)
  {
    v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v6 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_116390];
    [(PXSharedLibraryAssistantSummaryViewController *)self setPreviewProgress:v6];
  }

  else
  {
    previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
    [previewProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_116390];

    [(PXSharedLibraryAssistantSummaryViewController *)self setPreviewProgress:0];
  }
}

- (void)cancelShareIfInProgress
{
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  if ([viewModel isCancelingAssistant])
  {
    previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];

    if (previewProgress)
    {
      v4 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Canceled by the user: Create Shared Library Preview", buf, 2u);
      }

      previewProgress2 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
      [previewProgress2 cancel];
    }
  }

  else
  {
  }
}

- (void)skipAndContinue
{
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  mode = [viewModel mode];
  if ((mode - 1) >= 2)
  {
    if (!mode)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+Internal.m" lineNumber:60 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    assistantViewControllerDelegate = [(PXSharedLibraryAssistantSummaryViewController *)self assistantViewControllerDelegate];
    if (!assistantViewControllerDelegate)
    {
      PXAssertGetLog();
    }

    [assistantViewControllerDelegate stepForwardInAssistantForAssistantViewController:self];
    infosWithBothPeopleAndParticipants = [viewModel infosWithBothPeopleAndParticipants];
    PXSharedLibraryLinkContactsToPeopleForInfos(infosWithBothPeopleAndParticipants);
  }
}

- (void)createPreviewAndCompleteAssistant
{
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  mode = [viewModel mode];
  switch(mode)
  {
    case 1:
      [(PXSharedLibraryAssistantSummaryViewController *)self _createPreviewAndCompleteAssistant];
      break;
    case 2:
      [(PXSharedLibraryAssistantSummaryViewController *)self _previewInvitationAndCompleteAssistant];
      break;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+Internal.m" lineNumber:43 description:@"Code which should be unreachable has been reached"];

      abort();
  }
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryAssistantViewModelObservationContext_202221 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:193 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((changeCopy & 0x1000) != 0)
  {
    v11 = observableCopy;
    [(PXSharedLibraryAssistantSummaryViewController *)self cancelShareIfInProgress];
    observableCopy = v11;
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryAssistantSummaryViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLayoutSubviews];
  [(PXSharedLibraryAssistantSummaryViewController *)self _contentViewHeight];
  [(NSLayoutConstraint *)self->_contentViewHeightConstraint setConstant:?];
}

- (void)viewDidLoad
{
  v80[12] = *MEMORY[0x1E69E9840];
  v79.receiver = self;
  v79.super_class = PXSharedLibraryAssistantSummaryViewController;
  [(OBBaseWelcomeController *)&v79 viewDidLoad];
  v3 = [PXSharedLibraryAssistantSummaryContentView alloc];
  viewModel = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v5 = [(PXSharedLibraryAssistantSummaryContentView *)v3 initWithViewModel:viewModel];
  summaryInfoView = self->_summaryInfoView;
  self->_summaryInfoView = v5;

  [(UIView *)self->_summaryInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(PXSharedLibraryAssistantSummaryViewController *)self contentView];
  [contentView addSubview:self->_summaryInfoView];
  v8 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Summary_Title");
  headerView = [(PXSharedLibraryAssistantSummaryViewController *)self headerView];
  [headerView setTitle:v8];

  viewModel2 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  mode = [viewModel2 mode];
  v13 = PXSharedLibraryAssistantSummaryDetail(mode, v12);
  headerView2 = [(PXSharedLibraryAssistantSummaryViewController *)self headerView];
  [headerView2 setDetailText:v13];

  v15 = [off_1E7721870 alloc];
  v16 = [v15 initWithFrame:4 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  progressView = self->_progressView;
  self->_progressView = v16;

  [(PXRoundProgressView *)self->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PXRoundProgressView *)self->_progressView setHidden:1];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  progressLabel = self->_progressLabel;
  self->_progressLabel = v18;

  [(UILabel *)self->_progressLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_progressLabel setHidden:1];
  v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
  [(UILabel *)self->_progressLabel setFont:v20];

  [(UILabel *)self->_progressLabel setNumberOfLines:0];
  [(UILabel *)self->_progressLabel setTextAlignment:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_progressLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_progressLabel setAdjustsFontForContentSizeCategory:1];
  v22 = PXLocalizedSharedLibraryString(@"PXSharedLibraryCreatingPreviewProgressTitle");
  [(UILabel *)self->_progressLabel setText:v22];

  secondaryContentView = [(PXSharedLibraryAssistantSummaryViewController *)self secondaryContentView];
  [secondaryContentView addSubview:self->_progressView];
  v24 = secondaryContentView;
  [secondaryContentView addSubview:self->_progressLabel];
  heightAnchor = [contentView heightAnchor];
  [(PXSharedLibraryAssistantSummaryViewController *)self _contentViewHeight];
  v26 = [heightAnchor constraintEqualToConstant:?];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v26;

  heightAnchor2 = [(PXRoundProgressView *)self->_progressView heightAnchor];
  v29 = [heightAnchor2 constraintEqualToConstant:0.0];
  progressHeightConstraint = self->_progressHeightConstraint;
  self->_progressHeightConstraint = v29;

  v65 = MEMORY[0x1E696ACD8];
  [(UIView *)self->_summaryInfoView centerXAnchor];
  v77 = v76 = contentView;
  centerXAnchor = [contentView centerXAnchor];
  v74 = [v77 constraintEqualToAnchor:centerXAnchor];
  v80[0] = v74;
  centerYAnchor = [(UIView *)self->_summaryInfoView centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v71 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31 = self->_contentViewHeightConstraint;
  v80[1] = v71;
  v80[2] = v31;
  topAnchor = [(PXRoundProgressView *)self->_progressView topAnchor];
  v32 = v24;
  topAnchor2 = [v24 topAnchor];
  v68 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:40.0];
  v80[3] = v68;
  leadingAnchor = [(PXRoundProgressView *)self->_progressView leadingAnchor];
  leadingAnchor2 = [v24 leadingAnchor];
  v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v80[4] = v64;
  trailingAnchor = [(PXRoundProgressView *)self->_progressView trailingAnchor];
  trailingAnchor2 = [v24 trailingAnchor];
  v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v80[5] = v61;
  widthAnchor = [(PXRoundProgressView *)self->_progressView widthAnchor];
  v59 = [widthAnchor constraintEqualToConstant:30.0];
  v33 = self->_progressHeightConstraint;
  v80[6] = v59;
  v80[7] = v33;
  bottomAnchor = [(PXRoundProgressView *)self->_progressView bottomAnchor];
  topAnchor3 = [(UILabel *)self->_progressLabel topAnchor];
  v56 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-10.0];
  v80[8] = v56;
  leadingAnchor3 = [(UILabel *)self->_progressLabel leadingAnchor];
  leadingAnchor4 = [v24 leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v80[9] = v35;
  trailingAnchor3 = [(UILabel *)self->_progressLabel trailingAnchor];
  v78 = v32;
  trailingAnchor4 = [v32 trailingAnchor];
  v38 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v80[10] = v38;
  bottomAnchor2 = [(UILabel *)self->_progressLabel bottomAnchor];
  bottomAnchor3 = [v32 bottomAnchor];
  v41 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v80[11] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:12];
  [v65 activateConstraints:v42];

  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v76 setBackgroundColor:systemBackgroundColor];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  previewButton = self->_previewButton;
  self->_previewButton = boldButton;

  v46 = self->_previewButton;
  v47 = PXSharedLibraryAssistantSummaryStartButtonTitleForMode([(PXSharedLibraryAssistantViewModel *)self->_viewModel mode]);
  [(OBBoldTrayButton *)v46 setTitle:v47 forState:0];

  [(OBBoldTrayButton *)self->_previewButton addTarget:self action:sel_primaryButtonTapped_ forControlEvents:0x2000];
  buttonTray = [(PXSharedLibraryAssistantSummaryViewController *)self buttonTray];
  [buttonTray addButton:self->_previewButton];

  v49 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_primaryButtonTapped_];
  [(PXSharedLibraryAssistantSummaryViewController *)self addKeyCommand:v49];

  linkButton = [MEMORY[0x1E69B7D38] linkButton];
  skipPreviewButton = self->_skipPreviewButton;
  self->_skipPreviewButton = linkButton;

  v52 = self->_skipPreviewButton;
  v53 = PXSharedLibraryAssistantSummaryDeclineButtonTitleForMode([(PXSharedLibraryAssistantViewModel *)self->_viewModel mode]);
  [(OBTrayButton *)v52 setTitle:v53 forState:0];

  [(OBTrayButton *)self->_skipPreviewButton addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryAssistantSummaryViewController *)self buttonTray];
  [buttonTray2 addButton:self->_skipPreviewButton];
}

- (void)updateProgress
{
  v10 = *MEMORY[0x1E69E9840];
  previewProgress = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  [previewProgress fractionCompleted];
  v5 = v4;

  v6 = PLSharedLibraryGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_DEFAULT, "Preview progress fraction completed UI update: %.3f", &v8, 0xCu);
  }

  *&v7 = v5;
  [(PXRoundProgressView *)self->_progressView setProgress:v7];
}

- (void)prepareUIForProcessing:(BOOL)processing
{
  progressView = self->_progressView;
  if (processing)
  {
    [(PXRoundProgressView *)progressView setHidden:0];
    [(NSLayoutConstraint *)self->_progressHeightConstraint setConstant:25.0];
    [(UILabel *)self->_progressLabel setHidden:0];
    [(OBBoldTrayButton *)self->_previewButton setEnabled:0];
    [(OBTrayButton *)self->_skipPreviewButton setEnabled:0];
    [(OBBoldTrayButton *)self->_previewButton setHidden:1];
    [(OBTrayButton *)self->_skipPreviewButton setHidden:1];
    navigationItem = [(OBBaseWelcomeController *)self navigationItem];
    [navigationItem setHidesBackButton:1];

    scrollView = [(PXSharedLibraryAssistantSummaryViewController *)self scrollView];
    secondaryContentView = [(PXSharedLibraryAssistantSummaryViewController *)self secondaryContentView];
    [secondaryContentView frame];
    [scrollView scrollRectToVisible:1 animated:?];
  }

  else
  {
    [(PXRoundProgressView *)progressView setHidden:1];
    [(NSLayoutConstraint *)self->_progressHeightConstraint setConstant:0.0];
    [(UILabel *)self->_progressLabel setHidden:1];
    [(UILabel *)self->_progressLabel setText:0];
    [(OBBoldTrayButton *)self->_previewButton setEnabled:1];
    [(OBTrayButton *)self->_skipPreviewButton setEnabled:1];
    [(OBBoldTrayButton *)self->_previewButton setHidden:0];
    [(OBTrayButton *)self->_skipPreviewButton setHidden:0];
    scrollView = [(OBBaseWelcomeController *)self navigationItem];
    [scrollView setHidesBackButton:0];
  }
}

- (PXSharedLibraryAssistantSummaryViewController)initWithViewModel:(id)model sharedLibraryStatusProvider:(id)provider libraryFilterState:(id)state
{
  modelCopy = model;
  providerCopy = provider;
  stateCopy = state;
  if (modelCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

    if (stateCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

  if (!providerCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (stateCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"libraryFilterState"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = PXSharedLibraryAssistantSummaryViewController;
  v13 = [(PXSharedLibraryAssistantSummaryViewController *)&v19 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_viewModel, model);
    objc_storeStrong(&v14->_statusProvider, provider);
    objc_storeStrong(&v14->_libraryFilterState, state);
    [(PXSharedLibraryAssistantViewModel *)v14->_viewModel registerChangeObserver:v14 context:PXSharedLibraryAssistantViewModelObservationContext_202221];
  }

  return v14;
}

@end