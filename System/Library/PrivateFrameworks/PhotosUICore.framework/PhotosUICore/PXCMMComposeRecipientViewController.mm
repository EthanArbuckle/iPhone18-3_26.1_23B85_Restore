@interface PXCMMComposeRecipientViewController
- (PXCMMActionControllerDelegate)actionDelegate;
- (PXCMMComposeRecipientViewController)initWithCoder:(id)coder;
- (PXCMMComposeRecipientViewController)initWithNibName:(id)name bundle:(id)bundle;
- (PXCMMComposeRecipientViewController)initWithSession:(id)session;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space;
- (void)_handleActionButton:(id)button;
- (void)_setNeedsUpdate;
- (void)_tapToRadarTapped:(id)tapped;
- (void)_updateFooter;
- (void)_updateTableView;
- (void)_updateUserInteraction;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)animated forComposeRecipientTableViewController:(id)controller;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setActionProgress:(id)progress;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation PXCMMComposeRecipientViewController

- (PXCMMActionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)point inCoordinateSpace:(id)space
{
  v18.receiver = self;
  v18.super_class = PXCMMComposeRecipientViewController;
  v5 = [(UIViewController *)&v18 px_diagnosticsItemProvidersForPoint:space inCoordinateSpace:point.x, point.y];
  v6 = [v5 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"CMM Compose Recipient" forKeyedSubscript:@"PXDiagnosticsTitle"];
  session = [(PXCMMComposeRecipientViewController *)self session];
  diagnosticDictionary = [session diagnosticDictionary];
  [dictionary setObject:diagnosticDictionary forKeyedSubscript:@"Session"];

  tableViewModel = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  composeRecipientDataSourceManager = [tableViewModel composeRecipientDataSourceManager];
  diagnosticDictionary2 = [composeRecipientDataSourceManager diagnosticDictionary];
  [dictionary setObject:diagnosticDictionary2 forKeyedSubscript:@"Recipient Manager"];

  v13 = objc_alloc_init(PXDiagnosticsItemProvider);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PXCMMComposeRecipientViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
  v16[3] = &unk_1E774BB70;
  v17 = dictionary;
  v14 = dictionary;
  [(PXDiagnosticsItemProvider *)v13 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierDebugDictionary" loadHandler:v16];
  [v6 addObject:v13];

  return v6;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (PXProgressFinishedObservationContext == context || PXProgressCancelledObservationContext == context)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v23 = &unk_1E774C648;
    selfCopy = self;
    goto LABEL_10;
  }

  if (PXProgressFractionCompletedObservationContext == context)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v18 = &unk_1E774C648;
    selfCopy2 = self;
LABEL_10:
    px_dispatch_on_main_queue();
  }

  v14.receiver = self;
  v14.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
}

void __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) updater];
  [v2 setNeedsUpdateOf:sel__updateFooter];

  v3 = [*(a1 + 32) updater];
  [v3 setNeedsUpdateOf:sel__updateUserInteraction];
}

void __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 setNeedsUpdateOf:sel__updateFooter];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXComposeRecipientTableViewModelObservationContext_81277 == context)
  {
    if (changeCopy)
    {
      session = [(PXCMMComposeRecipientViewController *)self session];
      viewModel = [session viewModel];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __68__PXCMMComposeRecipientViewController_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E7746A48;
      v12[4] = self;
      [viewModel performChanges:v12];
    }

    if ((changeCopy & 2) != 0)
    {
      updater = [(PXCMMComposeRecipientViewController *)self updater];
      [updater setNeedsUpdateOf:sel__updateFooter];
    }
  }
}

void __68__PXCMMComposeRecipientViewController_observable_didChange_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 tableViewModel];
  v5 = [v4 recipients];

  [v3 setRecipients:v5];
}

- (void)dismissPresentedViewControllerAnimated:(BOOL)animated forComposeRecipientTableViewController:(id)controller
{
  v5 = [(PXCMMComposeRecipientViewController *)self presentedViewController:animated];
  [(PXCMMComposeRecipientViewController *)self dismissViewControllerAnimated:v5 != 0 completion:0];
}

- (void)_updateUserInteraction
{
  actionProgress = [(PXCMMComposeRecipientViewController *)self actionProgress];
  v12 = actionProgress;
  if (actionProgress && ([actionProgress isFinished] & 1) == 0)
  {
    isCancelled = [v12 isCancelled];
  }

  else
  {
    isCancelled = 1;
  }

  navigationController = [(PXCMMComposeRecipientViewController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  firstObject = [viewControllers firstObject];
  navigationItem = [firstObject navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];

  [leftBarButtonItem setEnabled:isCancelled];
  tableViewController = [(PXCMMComposeRecipientViewController *)self tableViewController];
  tableView = [tableViewController tableView];

  [tableView setUserInteractionEnabled:isCancelled];
}

- (void)_updateTableView
{
  specManager = [(PXCMMComposeRecipientViewController *)self specManager];
  extendedTraitCollection = [specManager extendedTraitCollection];
  [extendedTraitCollection safeAreaInsets];
  v6 = v5;
  v8 = v7;

  [(UIVisualEffectView *)self->_footerVisualEffectView frame];
  v9 = CGRectGetMinY(v15) - v6;
  [(PXComposeRecipientTableViewController *)self->_tableViewController tableViewHeight];
  v11 = v10 > v9;
  tableView = [(PXComposeRecipientTableViewController *)self->_tableViewController tableView];
  [tableView setScrollEnabled:v11];
  [(PXCMMComposeRecipientViewController *)self maximumContentWidth];
  [tableView setFrame:{v8, v6, v12, v9}];
}

- (void)_updateFooter
{
  actionProgress = [(PXCMMComposeRecipientViewController *)self actionProgress];
  v42 = actionProgress;
  if (!actionProgress || ([actionProgress isFinished] & 1) != 0 || objc_msgSend(v42, "isCancelled"))
  {
    tableViewModel = [(PXCMMComposeRecipientViewController *)self tableViewModel];
    composeRecipients = [tableViewModel composeRecipients];
    v6 = [composeRecipients count] != 0;
  }

  else
  {
    v6 = 0;
  }

  [(UIButton *)self->_sendButton setEnabled:v6];
  view = [(PXCMMComposeRecipientViewController *)self view];
  [view bounds];
  v9 = v8;
  v41 = v10;

  specManager = [(PXCMMComposeRecipientViewController *)self specManager];
  extendedTraitCollection = [specManager extendedTraitCollection];

  [extendedTraitCollection safeAreaInsets];
  v14 = v13;
  v16 = v15;
  v18 = v9 - v13 - v17;
  specManager2 = [(PXCMMComposeRecipientViewController *)self specManager];
  spec = [specManager2 spec];

  [spec composeFooterMargins];
  v22 = v21;
  v24 = v23;
  v26 = v18 - (v21 + v25);
  [(UILabel *)self->_privacyMessageLabel sizeThatFits:v26, 1.79769313e308];
  v28 = v27;
  [(UIButton *)self->_sendButton sizeThatFits:v26, 1.79769313e308];
  v30 = v29;
  [spec composePrivacyMessageInset];
  v32 = v24 + v16 + v30 + v28 + v31 * 2.0;
  [(UIVisualEffectView *)self->_footerVisualEffectView setFrame:v14, v41 - v32, v18, v32];
  [spec composePrivacyMessageInset];
  [(UILabel *)self->_privacyMessageLabel setFrame:v22, v33, v26, v28];
  [(UILabel *)self->_privacyMessageLabel frame];
  MaxY = CGRectGetMaxY(v44);
  [spec composePrivacyMessageInset];
  [(UIButton *)self->_sendButton setFrame:v22, MaxY + v35, v26, v30];
  tapToRadarButton = self->_tapToRadarButton;
  if (tapToRadarButton)
  {
    [(UIButton *)tapToRadarButton sizeThatFits:v26, 1.79769313e308];
    v38 = v37;
    [(UIButton *)self->_sendButton frame];
    [(UIButton *)self->_tapToRadarButton setFrame:v22, CGRectGetMaxY(v45) + 3.0, v26, v38];
  }

  tableViewController = [(PXCMMComposeRecipientViewController *)self tableViewController];
  tableView = [tableViewController tableView];

  [tableView setContentInset:{0.0, 0.0, v32 - v16, 0.0}];
  [tableView setScrollIndicatorInsets:{0.0, 0.0, v32 - v16, 0.0}];
}

- (void)_setNeedsUpdate
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:294 description:{@"%s must be called on the main thread", "-[PXCMMComposeRecipientViewController _setNeedsUpdate]"}];
  }

  viewIfLoaded = [(PXCMMComposeRecipientViewController *)self viewIfLoaded];
  [viewIfLoaded setNeedsLayout];
}

- (void)_tapToRadarTapped:(id)tapped
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__PXCMMComposeRecipientViewController__tapToRadarTapped___block_invoke;
  v5[3] = &unk_1E774B308;
  v5[4] = self;
  v4 = [PXFeedbackTapToRadarUtilities alertControllerWithPrivacyTitle:@"Privacy Warning" message:@"This will capture the recipients contact information and take a snapshot of the details of your Photo Library (such as names and locations completion:but not actual assets)\n\nBy submitting this feedback you agree to share the details of this snapshot with Apple.", v5];
  [(PXCMMComposeRecipientViewController *)self presentViewController:v4 animated:1 completion:0];
}

void __57__PXCMMComposeRecipientViewController__tapToRadarTapped___block_invoke(uint64_t a1, int a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    v4 = [*(a1 + 32) session];
    v5 = [v4 diagnosticDictionary];

    if (v5)
    {
      [v3 addObject:v5];
    }

    v6 = [*(a1 + 32) tableViewModel];
    v7 = [v6 composeRecipientDataSourceManager];

    v8 = [v7 diagnosticDictionary];
    if (v8)
    {
      [v3 addObject:v8];
    }

    if ([v3 count])
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [PXFeedbackTapToRadarUtilities attachmentURLForDiagnosticDictionaries:v3 descriptionName:v10];

      if (v11)
      {
        v17[0] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = +[PXFeedbackTapToRadarUtilities summaryDescription];
    v16 = @"com.apple.PhotoLibraryServices.PhotosDiagnostics";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    LOWORD(v15) = 1;
    [PXFeedbackTapToRadarUtilities fileRadarWithTitle:@"CMM - Compose Recipient List - [TTR] <Insert Bug Title>" description:v13 classification:@"Other Bug" componentID:@"476292" componentName:@"Photos UI Sharing" componentVersion:@"all" keyword:0 screenshotURLs:0 attachmentURLs:v12 includeSysDiagnose:v15 includeInternalRelease:v14 additionalExtensionIdentifiers:0 completionHandler:?];
  }
}

- (void)setActionProgress:(id)progress
{
  progressCopy = progress;
  actionProgress = self->_actionProgress;
  if (actionProgress != progressCopy)
  {
    v9 = progressCopy;
    [(NSProgress *)actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext];
    objc_storeStrong(&self->_actionProgress, progress);
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"finished" options:1 context:PXProgressFinishedObservationContext];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"cancelled" options:1 context:PXProgressCancelledObservationContext];
    updater = [(PXCMMComposeRecipientViewController *)self updater];
    [updater setNeedsUpdateOf:sel__updateFooter];

    updater2 = [(PXCMMComposeRecipientViewController *)self updater];
    [updater2 setNeedsUpdateOf:sel__updateUserInteraction];

    progressCopy = v9;
  }
}

- (void)_handleActionButton:(id)button
{
  buttonCopy = button;
  tableViewModel = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  composeRecipientDataSourceManager = [tableViewModel composeRecipientDataSourceManager];
  dataSource = [composeRecipientDataSourceManager dataSource];

  composeRecipients = [dataSource composeRecipients];
  composeRecipients2 = [tableViewModel composeRecipients];
  actionDelegate = [(PXCMMComposeRecipientViewController *)self actionDelegate];
  session = [(PXCMMComposeRecipientViewController *)self session];
  v12 = [actionDelegate completeMyMomentViewController:self performActionForSession:session];

  [(PXCMMComposeRecipientViewController *)self setActionProgress:v12];
  v13 = composeRecipients;
  v14 = composeRecipients2;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___TraceComposeRecipientStatistics_block_invoke;
  v16[3] = &unk_1E772FA60;
  v15 = v14;
  v17 = v15;
  v18 = v22;
  v19 = v23;
  v20 = v21;
  [v13 enumerateObjectsUsingBlock:v16];

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v7 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  updater = [(PXCMMComposeRecipientViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooter];

  updater2 = [(PXCMMComposeRecipientViewController *)self updater];
  [updater2 setNeedsUpdateOf:sel__updateTableView];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v12 viewWillLayoutSubviews];
  specManager = [(PXCMMComposeRecipientViewController *)self specManager];
  extendedTraitCollection = [specManager extendedTraitCollection];

  view = [(PXCMMComposeRecipientViewController *)self view];
  [view bounds];
  v7 = v6;

  [extendedTraitCollection safeAreaInsets];
  v9 = v8;
  [extendedTraitCollection safeAreaInsets];
  [(PXCMMComposeRecipientViewController *)self setMaximumContentWidth:v7 - (v9 + v10)];
  updater = [(PXCMMComposeRecipientViewController *)self updater];
  [updater updateIfNeeded];
}

- (void)viewDidLoad
{
  v56.receiver = self;
  v56.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v56 viewDidLoad];
  specManager = [(PXCMMComposeRecipientViewController *)self specManager];
  spec = [specManager spec];

  composeRecipientViewBackgroundColor = [spec composeRecipientViewBackgroundColor];
  view = [(PXCMMComposeRecipientViewController *)self view];
  [view setBackgroundColor:composeRecipientViewBackgroundColor];

  tableViewModel = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  [tableViewModel performChanges:&__block_literal_global_24765];
  [tableViewModel registerChangeObserver:self context:PXComposeRecipientTableViewModelObservationContext_81277];
  v8 = [[PXComposeRecipientTableViewController alloc] initWithViewModel:tableViewModel];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v8;

  [(PXComposeRecipientTableViewController *)self->_tableViewController setDelegate:self];
  view2 = [(PXCMMComposeRecipientViewController *)self view];
  tableView = [(PXComposeRecipientTableViewController *)self->_tableViewController tableView];
  [view2 addSubview:tableView];

  v51 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v12 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v51];
  footerVisualEffectView = self->_footerVisualEffectView;
  self->_footerVisualEffectView = v12;

  view3 = [(PXCMMComposeRecipientViewController *)self view];
  [view3 addSubview:self->_footerVisualEffectView];

  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  privacyMessageLabel = self->_privacyMessageLabel;
  self->_privacyMessageLabel = v15;

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_privacyMessageLabel setTextColor:secondaryLabelColor];

  [(UILabel *)self->_privacyMessageLabel setNumberOfLines:0];
  [(UILabel *)self->_privacyMessageLabel setTextAlignment:1];
  v18 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:*MEMORY[0x1E69DDC38] withSymbolicTraits:0x8000];
  [(UILabel *)self->_privacyMessageLabel setFont:v18];

  v19 = PXLocalizedStringFromTable(@"PXComposeRecipientPrivacyMessage", @"PhotosUICore");
  [(UILabel *)self->_privacyMessageLabel setText:v19];

  contentView = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
  [contentView addSubview:self->_privacyMessageLabel];

  v21 = [MEMORY[0x1E69DC738] buttonWithType:1];
  sendButton = self->_sendButton;
  self->_sendButton = v21;

  [(UIButton *)self->_sendButton addTarget:self action:sel__handleActionButton_ forControlEvents:64];
  v23 = self->_sendButton;
  v24 = PXLocalizedStringFromTable(@"PXCompleteMyMomentSendingTitle", @"PhotosUICore");
  [(UIButton *)v23 setTitle:v24 forState:0];

  v25 = self->_sendButton;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UIButton *)v25 setTitleColor:whiteColor forState:0];

  v27 = self->_sendButton;
  v28 = MEMORY[0x1E69DC738];
  view4 = [(PXCMMComposeRecipientViewController *)self view];
  tintColor = [view4 tintColor];
  v31 = [v28 px_buttonBackgroundImageForType:0 color:tintColor cornerRadius:0 controlState:6.0];
  [(UIButton *)v27 setBackgroundImage:v31 forState:0];

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0;
  v53 = 0.0;
  view5 = [(PXCMMComposeRecipientViewController *)self view];
  tintColor2 = [view5 tintColor];
  [tintColor2 getRed:&v55 green:&v54 blue:&v53 alpha:&v52];

  v34 = self->_sendButton;
  v35 = MEMORY[0x1E69DC738];
  v36 = [MEMORY[0x1E69DC888] colorWithRed:v55 green:v54 blue:v53 alpha:0.5];
  v37 = [v35 px_buttonBackgroundImageForType:0 color:v36 cornerRadius:2 controlState:6.0];
  [(UIButton *)v34 setBackgroundImage:v37 forState:2];

  v38 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  titleLabel = [(UIButton *)self->_sendButton titleLabel];
  [titleLabel setFont:v38];

  [spec composeCornerRadius];
  v41 = v40;
  layer = [(UIButton *)self->_sendButton layer];
  [layer setCornerRadius:v41];

  [spec composeFooterInsets];
  [(UIButton *)self->_sendButton setContentEdgeInsets:?];
  contentView2 = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
  [contentView2 addSubview:self->_sendButton];

  v44 = +[PXRootSettings sharedInstance];
  LODWORD(titleLabel) = [v44 canShowInternalUI];

  if (titleLabel)
  {
    v45 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v46 = +[PXRootSettings sharedInstance];
    -[UIButton setHidden:](v45, "setHidden:", [v46 canShowInternalUI] ^ 1);

    [(UIButton *)v45 setTitle:@"File Radar (Apple Internal)" forState:0];
    [(UIButton *)v45 addTarget:self action:sel__tapToRadarTapped_ forControlEvents:64];
    contentView3 = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
    [contentView3 addSubview:v45];

    tapToRadarButton = self->_tapToRadarButton;
    self->_tapToRadarButton = v45;
  }

  updater = [(PXCMMComposeRecipientViewController *)self updater];
  [updater setNeedsUpdateOf:sel__updateFooter];

  updater2 = [(PXCMMComposeRecipientViewController *)self updater];
  [updater2 setNeedsUpdateOf:sel__updateTableView];
}

void __50__PXCMMComposeRecipientViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PXLocalizedStringFromTable(@"PXComposeRecipientHeaderTitle", @"PhotosUICore");
  [v2 setHeaderTitle:v3];
}

- (void)dealloc
{
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext];
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext];
  [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext];
  v3.receiver = self;
  v3.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v3 dealloc];
}

- (PXCMMComposeRecipientViewController)initWithSession:(id)session
{
  sessionCopy = session;
  if (!sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v32.receiver = self;
  v32.super_class = PXCMMComposeRecipientViewController;
  v7 = [(PXCMMComposeRecipientViewController *)&v32 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, session);
    [(PXCMMComposeRecipientViewController *)v8 px_enableExtendedTraitCollection];
    px_extendedTraitCollection = [(PXCMMComposeRecipientViewController *)v8 px_extendedTraitCollection];
    v10 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:px_extendedTraitCollection activityType:[(PXCMMSession *)v8->_session activityType]];
    specManager = v8->_specManager;
    v8->_specManager = v10;

    v12 = [[off_1E7721940 alloc] initWithTarget:v8];
    updater = v8->_updater;
    v8->_updater = v12;

    [(PXUpdater *)v8->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateFooter];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateTableView];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateUserInteraction];
    peopleSuggestionsDataSourceManager = [(PXCMMSession *)v8->_session peopleSuggestionsDataSourceManager];
    dataSource = [peopleSuggestionsDataSourceManager dataSource];
    v16 = [dataSource numberOfItemsInSection:0];

    v17 = +[PXCompleteMyMomentSettings sharedInstance];
    graphSuggestionEnabled = [v17 graphSuggestionEnabled];

    if (graphSuggestionEnabled && v16 > 0)
    {
      v19 = 1;
    }

    else
    {
      peopleSuggestionsPreviewDataSourceManager = [(PXCMMSession *)v8->_session peopleSuggestionsPreviewDataSourceManager];
      dataSource2 = [peopleSuggestionsPreviewDataSourceManager dataSource];
      v22 = [dataSource2 numberOfItemsInSection:0];

      if (v22 < 1)
      {
        v19 = 0;
        v23 = 0;
      }

      else
      {
        v23 = peopleSuggestionsPreviewDataSourceManager;
        v19 = 2;
      }

      peopleSuggestionsDataSourceManager = v23;
    }

    v24 = [[PXComposeRecipientDataSourceManager alloc] initWithPeopleSuggestionsDataSourceManager:peopleSuggestionsDataSourceManager sourceType:v19];
    v25 = [[PXComposeRecipientTableViewModel alloc] initWithComposeRecipientDataSourceManager:v24];
    tableViewModel = v8->_tableViewModel;
    v8->_tableViewModel = v25;

    v27 = v8->_tableViewModel;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PXCMMComposeRecipientViewController_initWithSession___block_invoke;
    v30[3] = &unk_1E772FA18;
    v31 = v8;
    [(PXComposeRecipientTableViewModel *)v27 performChanges:v30];
  }

  return v8;
}

void __55__PXCMMComposeRecipientViewController_initWithSession___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 992);
  v3 = a2;
  v7 = [v2 viewModel];
  v4 = [v7 recipients];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  [v3 setRecipients:v6];

  [v3 setCanAddRecipients:1];
  [v3 setCanSelectRecipients:1];
}

- (PXCMMComposeRecipientViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXCMMComposeRecipientViewController initWithCoder:]"}];

  abort();
}

- (PXCMMComposeRecipientViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:91 description:{@"%s is not available as initializer", "-[PXCMMComposeRecipientViewController initWithNibName:bundle:]"}];

  abort();
}

@end