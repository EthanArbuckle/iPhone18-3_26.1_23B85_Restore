@interface PXSharedLibraryReplyAssistantReviewViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryReplyAssistantReviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (PXSharedLibraryReplyAssistantReviewViewController)initWithViewModel:(id)a3 sharedLibraryStatusProvider:(id)a4;
- (void)_setIsProcessing:(BOOL)a3;
- (void)_updateHeaderText;
- (void)acceptInvitation;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryReplyAssistantReviewViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v10 = a3;
  if (PXSharedLibraryAssistantViewModelObservationContext_134509 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:112 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]& a4) != 0)
  {
    [(PXSharedLibraryReplyAssistantReviewViewController *)self _updateHeaderText];
  }
}

- (void)_updateHeaderText
{
  v3 = [(PXSharedLibraryReplyAssistantReviewViewController *)self headerView];
  v12 = 0uLL;
  v13 = 0;
  v4 = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  v5 = v4;
  if (v4)
  {
    [v4 shareCounts];
  }

  else
  {
    v12 = 0uLL;
    v13 = 0;
  }

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ReviewTitle");
  [v3 setTitle:v6];

  v7 = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  v8 = [v7 sharedLibrary];
  v9 = PXSharedLibraryGetCurrentUserParticipant(v8);

  if (v9)
  {
    v10 = v12;
    v11 = v13;
    PXSharedLibraryReplyAssistantReviewSubtitle(&v10, v9);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryReplyAssistantReviewViewController;
  v4 = a3;
  [(PXSharedLibraryReplyAssistantReviewViewController *)&v8 traitCollectionDidChange:v4];
  v5 = [(PXSharedLibraryReplyAssistantReviewViewController *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(PXSharedLibraryReplyAssistantReviewViewController *)self _updateIcon];
  }
}

- (void)viewDidLoad
{
  v15.receiver = self;
  v15.super_class = PXSharedLibraryReplyAssistantReviewViewController;
  [(OBBaseWelcomeController *)&v15 viewDidLoad];
  [(PXSharedLibraryReplyAssistantReviewViewController *)self _updateIcon];
  [(PXSharedLibraryReplyAssistantReviewViewController *)self _updateHeaderText];
  v3 = [(PXSharedLibraryReplyAssistantReviewViewController *)self buttonTray];
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrarySetupDataRetentionInfoParticipant");
  v5 = MEMORY[0x1E695DFF8];
  IsIPad = PLPhysicalDeviceIsIPad();
  v7 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ios_ui-05052022";
  if (IsIPad)
  {
    v7 = @"https://support.apple.com/118229?cid=mc-ols-icloudphotos-article_ht213248-ipados_ui-05052022";
  }

  v8 = v7;
  v9 = [v5 URLWithString:v8];
  [v3 setCaptionText:v4 learnMoreURL:v9];

  v10 = [MEMORY[0x1E69B7D00] boldButton];
  movePhotosButton = self->_movePhotosButton;
  self->_movePhotosButton = v10;

  v12 = self->_movePhotosButton;
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ReviewButtonTitle_Join");
  [(OBBoldTrayButton *)v12 setTitle:v13 forState:0];

  [(OBBoldTrayButton *)self->_movePhotosButton addTarget:self action:sel_moveButtonTapped_ forControlEvents:0x2000];
  v14 = [(PXSharedLibraryReplyAssistantReviewViewController *)self buttonTray];
  [v14 addButton:self->_movePhotosButton];
}

- (PXSharedLibraryReplyAssistantReviewViewController)initWithViewModel:(id)a3 sharedLibraryStatusProvider:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXSharedLibraryReplyAssistantReviewViewController;
  v11 = [(PXSharedLibraryReplyAssistantReviewViewController *)&v16 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:2];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusProvider, a4);
    objc_storeStrong(&v12->_viewModel, a3);
    [(PXSharedLibraryAssistantViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXSharedLibraryAssistantViewModelObservationContext_134509];
  }

  return v12;
}

- (PXSharedLibraryReplyAssistantReviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  [v13 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXSharedLibraryReplyAssistantReviewViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

- (void)acceptInvitation
{
  v4 = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  v5 = [v4 sharedLibrary];
  v6 = [v4 sharedLibraryRule];
  v7 = [v4 autoSharePolicy];
  v8 = [off_1E7721960 defaultPresenterWithViewController:self];
  [(PXSharedLibraryReplyAssistantReviewViewController *)self _setIsProcessing:1];
  v9 = [(PXSharedLibraryReplyAssistantReviewViewController *)self statusProvider];
  v10 = [v4 previewIsOutdated];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PXSharedLibraryReplyAssistantReviewViewController_Internal__acceptInvitation__block_invoke;
  v11[3] = &unk_1E7741CE0;
  v11[4] = self;
  v11[5] = a2;
  PXSharedLibraryAcceptInvitation(v9, v5, v6, v7, v10, 0, v8, v11);
}

void __79__PXSharedLibraryReplyAssistantReviewViewController_Internal__acceptInvitation__block_invoke(uint64_t a1, int a2)
{
  [*(a1 + 32) _setIsProcessing:0];
  if (a2)
  {
    v4 = [*(a1 + 32) assistantViewControllerDelegate];
    if (!v4)
    {
      PXAssertGetLog();
    }

    [v4 stepForwardInAssistantForAssistantViewController:*(a1 + 32)];
  }
}

- (void)_setIsProcessing:(BOOL)a3
{
  v3 = a3;
  v6 = [(PXSharedLibraryReplyAssistantReviewViewController *)self movePhotosButton];
  if (v3)
  {
    [v6 setEnabled:0];
    [v6 showsBusyIndicator];
  }

  else
  {
    [v6 setEnabled:1];
    [v6 hidesBusyIndicator];
  }

  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setHidesBackButton:v3];
}

@end