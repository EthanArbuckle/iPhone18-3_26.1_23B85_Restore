@interface PXSharedLibraryReplyAssistantReviewViewController
- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate;
- (PXSharedLibraryReplyAssistantReviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (PXSharedLibraryReplyAssistantReviewViewController)initWithViewModel:(id)model sharedLibraryStatusProvider:(id)provider;
- (void)_setIsProcessing:(BOOL)processing;
- (void)_updateHeaderText;
- (void)acceptInvitation;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation PXSharedLibraryReplyAssistantReviewViewController

- (PXAssistantViewControllerDelegate)assistantViewControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->assistantViewControllerDelegate);

  return WeakRetained;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (PXSharedLibraryAssistantViewModelObservationContext_134509 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:112 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((+[PXSharedLibraryAssistantViewModel shareCountChangeDescriptors]& change) != 0)
  {
    [(PXSharedLibraryReplyAssistantReviewViewController *)self _updateHeaderText];
  }
}

- (void)_updateHeaderText
{
  headerView = [(PXSharedLibraryReplyAssistantReviewViewController *)self headerView];
  v12 = 0uLL;
  v13 = 0;
  viewModel = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  v5 = viewModel;
  if (viewModel)
  {
    [viewModel shareCounts];
  }

  else
  {
    v12 = 0uLL;
    v13 = 0;
  }

  v6 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ReviewTitle");
  [headerView setTitle:v6];

  viewModel2 = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  sharedLibrary = [viewModel2 sharedLibrary];
  v9 = PXSharedLibraryGetCurrentUserParticipant(sharedLibrary);

  if (v9)
  {
    v10 = v12;
    v11 = v13;
    PXSharedLibraryReplyAssistantReviewSubtitle(&v10, v9);
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PXSharedLibraryReplyAssistantReviewViewController;
  changeCopy = change;
  [(PXSharedLibraryReplyAssistantReviewViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PXSharedLibraryReplyAssistantReviewViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
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
  buttonTray = [(PXSharedLibraryReplyAssistantReviewViewController *)self buttonTray];
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
  [buttonTray setCaptionText:v4 learnMoreURL:v9];

  boldButton = [MEMORY[0x1E69B7D00] boldButton];
  movePhotosButton = self->_movePhotosButton;
  self->_movePhotosButton = boldButton;

  v12 = self->_movePhotosButton;
  v13 = PXLocalizedSharedLibraryString(@"PXSharedLibraryReplyAssistant_Intro_ReviewButtonTitle_Join");
  [(OBBoldTrayButton *)v12 setTitle:v13 forState:0];

  [(OBBoldTrayButton *)self->_movePhotosButton addTarget:self action:sel_moveButtonTapped_ forControlEvents:0x2000];
  buttonTray2 = [(PXSharedLibraryReplyAssistantReviewViewController *)self buttonTray];
  [buttonTray2 addButton:self->_movePhotosButton];
}

- (PXSharedLibraryReplyAssistantReviewViewController)initWithViewModel:(id)model sharedLibraryStatusProvider:(id)provider
{
  modelCopy = model;
  providerCopy = provider;
  v10 = providerCopy;
  if (modelCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"sharedLibraryStatusProvider"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PXSharedLibraryReplyAssistantReviewViewController;
  v11 = [(PXSharedLibraryReplyAssistantReviewViewController *)&v16 initWithTitle:&stru_1F1741150 detailText:0 icon:0 contentLayout:2];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_statusProvider, provider);
    objc_storeStrong(&v12->_viewModel, model);
    [(PXSharedLibraryAssistantViewModel *)v12->_viewModel registerChangeObserver:v12 context:PXSharedLibraryAssistantViewModelObservationContext_134509];
  }

  return v12;
}

- (PXSharedLibraryReplyAssistantReviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  titleCopy = title;
  textCopy = text;
  iconCopy = icon;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryReplyAssistantReviewViewController+iOS.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXSharedLibraryReplyAssistantReviewViewController initWithTitle:detailText:icon:contentLayout:]"}];

  abort();
}

- (void)acceptInvitation
{
  viewModel = [(PXSharedLibraryReplyAssistantReviewViewController *)self viewModel];
  sharedLibrary = [viewModel sharedLibrary];
  sharedLibraryRule = [viewModel sharedLibraryRule];
  autoSharePolicy = [viewModel autoSharePolicy];
  v8 = [off_1E7721960 defaultPresenterWithViewController:self];
  [(PXSharedLibraryReplyAssistantReviewViewController *)self _setIsProcessing:1];
  statusProvider = [(PXSharedLibraryReplyAssistantReviewViewController *)self statusProvider];
  previewIsOutdated = [viewModel previewIsOutdated];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PXSharedLibraryReplyAssistantReviewViewController_Internal__acceptInvitation__block_invoke;
  v11[3] = &unk_1E7741CE0;
  v11[4] = self;
  v11[5] = a2;
  PXSharedLibraryAcceptInvitation(statusProvider, sharedLibrary, sharedLibraryRule, autoSharePolicy, previewIsOutdated, 0, v8, v11);
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

- (void)_setIsProcessing:(BOOL)processing
{
  processingCopy = processing;
  movePhotosButton = [(PXSharedLibraryReplyAssistantReviewViewController *)self movePhotosButton];
  if (processingCopy)
  {
    [movePhotosButton setEnabled:0];
    [movePhotosButton showsBusyIndicator];
  }

  else
  {
    [movePhotosButton setEnabled:1];
    [movePhotosButton hidesBusyIndicator];
  }

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:processingCopy];
}

@end