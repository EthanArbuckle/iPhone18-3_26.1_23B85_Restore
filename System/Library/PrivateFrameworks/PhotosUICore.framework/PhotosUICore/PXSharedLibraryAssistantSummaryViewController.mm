@interface PXSharedLibraryAssistantSummaryViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryAssistantSummaryViewController)initWithViewModel:(id)a3 sharedLibraryStatusProvider:(id)a4 libraryFilterState:(id)a5;
- (void)_createPreviewAndCompleteAssistant;
- (void)_previewInvitationAndCompleteAssistant;
- (void)_setIsProcessing:(BOOL)a3;
- (void)cancelShareIfInProgress;
- (void)createPreviewAndCompleteAssistant;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepareUIForProcessing:(BOOL)a3;
- (void)skipAndContinue;
- (void)updateProgress;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryAssistantSummaryViewController

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v18 = *MEMORY[0x1E69E9840];
  if (PXProgressFractionCompletedObservationContext_116390 == a6)
  {
    v7 = PLSharedLibraryGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
      [v8 fractionCompleted];
      *buf = 134217984;
      v17 = v9;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEFAULT, "Preview progress fraction completed observation: %.3f", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __106__PXSharedLibraryAssistantSummaryViewController_Internal__observeValueForKeyPath_ofObject_change_context___block_invoke;
    v14 = &unk_1E774C648;
    v15 = self;
    px_dispatch_on_main_queue();
  }

  v10.receiver = self;
  v10.super_class = PXSharedLibraryAssistantSummaryViewController;
  [(PXSharedLibraryAssistantSummaryViewController *)&v10 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
}

- (void)_previewInvitationAndCompleteAssistant
{
  v4 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v5 = [v4 sharedLibrary];
  v6 = [v4 sharedLibraryRule];
  v7 = [v4 autoSharePolicy];
  v8 = [(PXSharedLibraryAssistantSummaryViewController *)self _presentationEnvironment];
  [(PXSharedLibraryAssistantSummaryViewController *)self _setIsProcessing:1];
  v9 = [(PXSharedLibraryAssistantSummaryViewController *)self statusProvider];
  v10 = [v4 previewIsOutdated];
  v11 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PXSharedLibraryAssistantSummaryViewController_Internal___previewInvitationAndCompleteAssistant__block_invoke;
  v13[3] = &unk_1E77411F0;
  v14 = v4;
  v15 = a2;
  v13[4] = self;
  v12 = v4;
  PXSharedLibraryPreviewInvitation(v9, v5, v6, v7, v10, v11, v8, v13);
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
  v4 = [(PXSharedLibraryAssistantSummaryViewController *)self _presentationEnvironment];
  [(PXSharedLibraryAssistantSummaryViewController *)self _setIsProcessing:1];
  v5 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v6 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __93__PXSharedLibraryAssistantSummaryViewController_Internal___createPreviewAndCompleteAssistant__block_invoke;
  v7[3] = &unk_1E7741CE0;
  v7[4] = self;
  v7[5] = a2;
  PXSharedLibraryCreatePreview(v5, v6, v4, v7);
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

- (void)_setIsProcessing:(BOOL)a3
{
  v3 = a3;
  [(PXSharedLibraryAssistantSummaryViewController *)self prepareUIForProcessing:?];
  if (v3)
  {
    v6 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
    [v6 addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext_116390];
    [(PXSharedLibraryAssistantSummaryViewController *)self setPreviewProgress:v6];
  }

  else
  {
    v5 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
    [v5 removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext_116390];

    [(PXSharedLibraryAssistantSummaryViewController *)self setPreviewProgress:0];
  }
}

- (void)cancelShareIfInProgress
{
  v6 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  if ([v6 isCancelingAssistant])
  {
    v3 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];

    if (v3)
    {
      v4 = PLSharedLibraryGetLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Canceled by the user: Create Shared Library Preview", buf, 2u);
      }

      v5 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
      [v5 cancel];
    }
  }

  else
  {
  }
}

- (void)skipAndContinue
{
  v4 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v5 = [v4 mode];
  if ((v5 - 1) >= 2)
  {
    if (!v5)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+Internal.m" lineNumber:60 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  else
  {
    v6 = [(PXSharedLibraryAssistantSummaryViewController *)self assistantViewControllerDelegate];
    if (!v6)
    {
      PXAssertGetLog();
    }

    [v6 stepForwardInAssistantForAssistantViewController:self];
    v7 = [v4 infosWithBothPeopleAndParticipants];
    PXSharedLibraryLinkContactsToPeopleForInfos(v7);
  }
}

- (void)createPreviewAndCompleteAssistant
{
  v6 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v4 = [v6 mode];
  switch(v4)
  {
    case 1:
      [(PXSharedLibraryAssistantSummaryViewController *)self _createPreviewAndCompleteAssistant];
      break;
    case 2:
      [(PXSharedLibraryAssistantSummaryViewController *)self _previewInvitationAndCompleteAssistant];
      break;
    case 0:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+Internal.m" lineNumber:43 description:@"Code which should be unreachable has been reached"];

      abort();
  }
}

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryAssistantViewModelObservationContext_202221 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:193 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x1000) != 0)
  {
    v11 = v9;
    [(PXSharedLibraryAssistantSummaryViewController *)self cancelShareIfInProgress];
    v9 = v11;
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
  v4 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v5 = [(PXSharedLibraryAssistantSummaryContentView *)v3 initWithViewModel:v4];
  summaryInfoView = self->_summaryInfoView;
  self->_summaryInfoView = v5;

  [(UIView *)self->_summaryInfoView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [(PXSharedLibraryAssistantSummaryViewController *)self contentView];
  [v7 addSubview:self->_summaryInfoView];
  v8 = PXLocalizedSharedLibraryString(@"PXSharedLibraryAssistant_Summary_Title");
  v9 = [(PXSharedLibraryAssistantSummaryViewController *)self headerView];
  [v9 setTitle:v8];

  v10 = [(PXSharedLibraryAssistantSummaryViewController *)self viewModel];
  v11 = [v10 mode];
  v13 = PXSharedLibraryAssistantSummaryDetail(v11, v12);
  v14 = [(PXSharedLibraryAssistantSummaryViewController *)self headerView];
  [v14 setDetailText:v13];

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
  v21 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_progressLabel setTextColor:v21];

  [(UILabel *)self->_progressLabel setAdjustsFontForContentSizeCategory:1];
  v22 = PXLocalizedSharedLibraryString(@"PXSharedLibraryCreatingPreviewProgressTitle");
  [(UILabel *)self->_progressLabel setText:v22];

  v23 = [(PXSharedLibraryAssistantSummaryViewController *)self secondaryContentView];
  [v23 addSubview:self->_progressView];
  v24 = v23;
  [v23 addSubview:self->_progressLabel];
  v25 = [v7 heightAnchor];
  [(PXSharedLibraryAssistantSummaryViewController *)self _contentViewHeight];
  v26 = [v25 constraintEqualToConstant:?];
  contentViewHeightConstraint = self->_contentViewHeightConstraint;
  self->_contentViewHeightConstraint = v26;

  v28 = [(PXRoundProgressView *)self->_progressView heightAnchor];
  v29 = [v28 constraintEqualToConstant:0.0];
  progressHeightConstraint = self->_progressHeightConstraint;
  self->_progressHeightConstraint = v29;

  v65 = MEMORY[0x1E696ACD8];
  [(UIView *)self->_summaryInfoView centerXAnchor];
  v77 = v76 = v7;
  v75 = [v7 centerXAnchor];
  v74 = [v77 constraintEqualToAnchor:v75];
  v80[0] = v74;
  v73 = [(UIView *)self->_summaryInfoView centerYAnchor];
  v72 = [v7 centerYAnchor];
  v71 = [v73 constraintEqualToAnchor:v72];
  v31 = self->_contentViewHeightConstraint;
  v80[1] = v71;
  v80[2] = v31;
  v70 = [(PXRoundProgressView *)self->_progressView topAnchor];
  v32 = v24;
  v69 = [v24 topAnchor];
  v68 = [v70 constraintEqualToAnchor:v69 constant:40.0];
  v80[3] = v68;
  v67 = [(PXRoundProgressView *)self->_progressView leadingAnchor];
  v66 = [v24 leadingAnchor];
  v64 = [v67 constraintEqualToAnchor:v66];
  v80[4] = v64;
  v63 = [(PXRoundProgressView *)self->_progressView trailingAnchor];
  v62 = [v24 trailingAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v80[5] = v61;
  v60 = [(PXRoundProgressView *)self->_progressView widthAnchor];
  v59 = [v60 constraintEqualToConstant:30.0];
  v33 = self->_progressHeightConstraint;
  v80[6] = v59;
  v80[7] = v33;
  v58 = [(PXRoundProgressView *)self->_progressView bottomAnchor];
  v57 = [(UILabel *)self->_progressLabel topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57 constant:-10.0];
  v80[8] = v56;
  v55 = [(UILabel *)self->_progressLabel leadingAnchor];
  v34 = [v24 leadingAnchor];
  v35 = [v55 constraintEqualToAnchor:v34];
  v80[9] = v35;
  v36 = [(UILabel *)self->_progressLabel trailingAnchor];
  v78 = v32;
  v37 = [v32 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v80[10] = v38;
  v39 = [(UILabel *)self->_progressLabel bottomAnchor];
  v40 = [v32 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];
  v80[11] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:12];
  [v65 activateConstraints:v42];

  v43 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v76 setBackgroundColor:v43];

  v44 = [MEMORY[0x1E69B7D00] boldButton];
  previewButton = self->_previewButton;
  self->_previewButton = v44;

  v46 = self->_previewButton;
  v47 = PXSharedLibraryAssistantSummaryStartButtonTitleForMode([(PXSharedLibraryAssistantViewModel *)self->_viewModel mode]);
  [(OBBoldTrayButton *)v46 setTitle:v47 forState:0];

  [(OBBoldTrayButton *)self->_previewButton addTarget:self action:sel_primaryButtonTapped_ forControlEvents:0x2000];
  v48 = [(PXSharedLibraryAssistantSummaryViewController *)self buttonTray];
  [v48 addButton:self->_previewButton];

  v49 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel_primaryButtonTapped_];
  [(PXSharedLibraryAssistantSummaryViewController *)self addKeyCommand:v49];

  v50 = [MEMORY[0x1E69B7D38] linkButton];
  skipPreviewButton = self->_skipPreviewButton;
  self->_skipPreviewButton = v50;

  v52 = self->_skipPreviewButton;
  v53 = PXSharedLibraryAssistantSummaryDeclineButtonTitleForMode([(PXSharedLibraryAssistantViewModel *)self->_viewModel mode]);
  [(OBTrayButton *)v52 setTitle:v53 forState:0];

  [(OBTrayButton *)self->_skipPreviewButton addTarget:self action:sel_secondaryButtonTapped_ forControlEvents:0x2000];
  v54 = [(PXSharedLibraryAssistantSummaryViewController *)self buttonTray];
  [v54 addButton:self->_skipPreviewButton];
}

- (void)updateProgress
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(PXSharedLibraryAssistantSummaryViewController *)self previewProgress];
  [v3 fractionCompleted];
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

- (void)prepareUIForProcessing:(BOOL)a3
{
  progressView = self->_progressView;
  if (a3)
  {
    [(PXRoundProgressView *)progressView setHidden:0];
    [(NSLayoutConstraint *)self->_progressHeightConstraint setConstant:25.0];
    [(UILabel *)self->_progressLabel setHidden:0];
    [(OBBoldTrayButton *)self->_previewButton setEnabled:0];
    [(OBTrayButton *)self->_skipPreviewButton setEnabled:0];
    [(OBBoldTrayButton *)self->_previewButton setHidden:1];
    [(OBTrayButton *)self->_skipPreviewButton setHidden:1];
    v5 = [(OBBaseWelcomeController *)self navigationItem];
    [v5 setHidesBackButton:1];

    v7 = [(PXSharedLibraryAssistantSummaryViewController *)self scrollView];
    v6 = [(PXSharedLibraryAssistantSummaryViewController *)self secondaryContentView];
    [v6 frame];
    [v7 scrollRectToVisible:1 animated:?];
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
    v7 = [(OBBaseWelcomeController *)self navigationItem];
    [v7 setHidesBackButton:0];
  }
}

- (PXSharedLibraryAssistantSummaryViewController)initWithViewModel:(id)a3 sharedLibraryStatusProvider:(id)a4 libraryFilterState:(id)a5
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
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

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
  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryAssistantSummaryViewController+iOS.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"libraryFilterState"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = PXSharedLibraryAssistantSummaryViewController;
  v13 = [(PXSharedLibraryAssistantSummaryViewController *)&v19 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_viewModel, a3);
    objc_storeStrong(&v14->_statusProvider, a4);
    objc_storeStrong(&v14->_libraryFilterState, a5);
    [(PXSharedLibraryAssistantViewModel *)v14->_viewModel registerChangeObserver:v14 context:PXSharedLibraryAssistantViewModelObservationContext_202221];
  }

  return v14;
}

@end