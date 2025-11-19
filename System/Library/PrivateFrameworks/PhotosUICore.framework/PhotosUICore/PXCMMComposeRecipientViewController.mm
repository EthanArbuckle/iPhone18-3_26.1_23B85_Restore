@interface PXCMMComposeRecipientViewController
- (PXCMMActionControllerDelegate)actionDelegate;
- (PXCMMComposeRecipientViewController)initWithCoder:(id)a3;
- (PXCMMComposeRecipientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (PXCMMComposeRecipientViewController)initWithSession:(id)a3;
- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4;
- (void)_handleActionButton:(id)a3;
- (void)_setNeedsUpdate;
- (void)_tapToRadarTapped:(id)a3;
- (void)_updateFooter;
- (void)_updateTableView;
- (void)_updateUserInteraction;
- (void)dealloc;
- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 forComposeRecipientTableViewController:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setActionProgress:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation PXCMMComposeRecipientViewController

- (PXCMMActionControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (id)px_diagnosticsItemProvidersForPoint:(CGPoint)a3 inCoordinateSpace:(id)a4
{
  v18.receiver = self;
  v18.super_class = PXCMMComposeRecipientViewController;
  v5 = [(UIViewController *)&v18 px_diagnosticsItemProvidersForPoint:a4 inCoordinateSpace:a3.x, a3.y];
  v6 = [v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  [v7 setObject:@"CMM Compose Recipient" forKeyedSubscript:@"PXDiagnosticsTitle"];
  v8 = [(PXCMMComposeRecipientViewController *)self session];
  v9 = [v8 diagnosticDictionary];
  [v7 setObject:v9 forKeyedSubscript:@"Session"];

  v10 = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  v11 = [v10 composeRecipientDataSourceManager];
  v12 = [v11 diagnosticDictionary];
  [v7 setObject:v12 forKeyedSubscript:@"Recipient Manager"];

  v13 = objc_alloc_init(PXDiagnosticsItemProvider);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __93__PXCMMComposeRecipientViewController_px_diagnosticsItemProvidersForPoint_inCoordinateSpace___block_invoke;
  v16[3] = &unk_1E774BB70;
  v17 = v7;
  v14 = v7;
  [(PXDiagnosticsItemProvider *)v13 registerItemForIdentifier:@"PXDiagnosticsItemIdentifierDebugDictionary" loadHandler:v16];
  [v6 addObject:v13];

  return v6;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (PXProgressFinishedObservationContext == a6 || PXProgressCancelledObservationContext == a6)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke;
    v23 = &unk_1E774C648;
    v24 = self;
    goto LABEL_10;
  }

  if (PXProgressFractionCompletedObservationContext == a6)
  {
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __86__PXCMMComposeRecipientViewController_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v18 = &unk_1E774C648;
    v19 = self;
LABEL_10:
    px_dispatch_on_main_queue();
  }

  v14.receiver = self;
  v14.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXComposeRecipientTableViewModelObservationContext_81277 == a5)
  {
    if (v6)
    {
      v9 = [(PXCMMComposeRecipientViewController *)self session];
      v10 = [v9 viewModel];

      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __68__PXCMMComposeRecipientViewController_observable_didChange_context___block_invoke;
      v12[3] = &unk_1E7746A48;
      v12[4] = self;
      [v10 performChanges:v12];
    }

    if ((v6 & 2) != 0)
    {
      v11 = [(PXCMMComposeRecipientViewController *)self updater];
      [v11 setNeedsUpdateOf:sel__updateFooter];
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

- (void)dismissPresentedViewControllerAnimated:(BOOL)a3 forComposeRecipientTableViewController:(id)a4
{
  v5 = [(PXCMMComposeRecipientViewController *)self presentedViewController:a3];
  [(PXCMMComposeRecipientViewController *)self dismissViewControllerAnimated:v5 != 0 completion:0];
}

- (void)_updateUserInteraction
{
  v3 = [(PXCMMComposeRecipientViewController *)self actionProgress];
  v12 = v3;
  if (v3 && ([v3 isFinished] & 1) == 0)
  {
    v4 = [v12 isCancelled];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(PXCMMComposeRecipientViewController *)self navigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 firstObject];
  v8 = [v7 navigationItem];
  v9 = [v8 leftBarButtonItem];

  [v9 setEnabled:v4];
  v10 = [(PXCMMComposeRecipientViewController *)self tableViewController];
  v11 = [v10 tableView];

  [v11 setUserInteractionEnabled:v4];
}

- (void)_updateTableView
{
  v3 = [(PXCMMComposeRecipientViewController *)self specManager];
  v4 = [v3 extendedTraitCollection];
  [v4 safeAreaInsets];
  v6 = v5;
  v8 = v7;

  [(UIVisualEffectView *)self->_footerVisualEffectView frame];
  v9 = CGRectGetMinY(v15) - v6;
  [(PXComposeRecipientTableViewController *)self->_tableViewController tableViewHeight];
  v11 = v10 > v9;
  v13 = [(PXComposeRecipientTableViewController *)self->_tableViewController tableView];
  [v13 setScrollEnabled:v11];
  [(PXCMMComposeRecipientViewController *)self maximumContentWidth];
  [v13 setFrame:{v8, v6, v12, v9}];
}

- (void)_updateFooter
{
  v3 = [(PXCMMComposeRecipientViewController *)self actionProgress];
  v42 = v3;
  if (!v3 || ([v3 isFinished] & 1) != 0 || objc_msgSend(v42, "isCancelled"))
  {
    v4 = [(PXCMMComposeRecipientViewController *)self tableViewModel];
    v5 = [v4 composeRecipients];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  [(UIButton *)self->_sendButton setEnabled:v6];
  v7 = [(PXCMMComposeRecipientViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v41 = v10;

  v11 = [(PXCMMComposeRecipientViewController *)self specManager];
  v12 = [v11 extendedTraitCollection];

  [v12 safeAreaInsets];
  v14 = v13;
  v16 = v15;
  v18 = v9 - v13 - v17;
  v19 = [(PXCMMComposeRecipientViewController *)self specManager];
  v20 = [v19 spec];

  [v20 composeFooterMargins];
  v22 = v21;
  v24 = v23;
  v26 = v18 - (v21 + v25);
  [(UILabel *)self->_privacyMessageLabel sizeThatFits:v26, 1.79769313e308];
  v28 = v27;
  [(UIButton *)self->_sendButton sizeThatFits:v26, 1.79769313e308];
  v30 = v29;
  [v20 composePrivacyMessageInset];
  v32 = v24 + v16 + v30 + v28 + v31 * 2.0;
  [(UIVisualEffectView *)self->_footerVisualEffectView setFrame:v14, v41 - v32, v18, v32];
  [v20 composePrivacyMessageInset];
  [(UILabel *)self->_privacyMessageLabel setFrame:v22, v33, v26, v28];
  [(UILabel *)self->_privacyMessageLabel frame];
  MaxY = CGRectGetMaxY(v44);
  [v20 composePrivacyMessageInset];
  [(UIButton *)self->_sendButton setFrame:v22, MaxY + v35, v26, v30];
  tapToRadarButton = self->_tapToRadarButton;
  if (tapToRadarButton)
  {
    [(UIButton *)tapToRadarButton sizeThatFits:v26, 1.79769313e308];
    v38 = v37;
    [(UIButton *)self->_sendButton frame];
    [(UIButton *)self->_tapToRadarButton setFrame:v22, CGRectGetMaxY(v45) + 3.0, v26, v38];
  }

  v39 = [(PXCMMComposeRecipientViewController *)self tableViewController];
  v40 = [v39 tableView];

  [v40 setContentInset:{0.0, 0.0, v32 - v16, 0.0}];
  [v40 setScrollIndicatorInsets:{0.0, 0.0, v32 - v16, 0.0}];
}

- (void)_setNeedsUpdate
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:294 description:{@"%s must be called on the main thread", "-[PXCMMComposeRecipientViewController _setNeedsUpdate]"}];
  }

  v5 = [(PXCMMComposeRecipientViewController *)self viewIfLoaded];
  [v5 setNeedsLayout];
}

- (void)_tapToRadarTapped:(id)a3
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

- (void)setActionProgress:(id)a3
{
  v5 = a3;
  actionProgress = self->_actionProgress;
  if (actionProgress != v5)
  {
    v9 = v5;
    [(NSProgress *)actionProgress removeObserver:self forKeyPath:@"finished" context:PXProgressFinishedObservationContext];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"fractionCompleted" context:PXProgressFractionCompletedObservationContext];
    [(NSProgress *)self->_actionProgress removeObserver:self forKeyPath:@"cancelled" context:PXProgressCancelledObservationContext];
    objc_storeStrong(&self->_actionProgress, a3);
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"finished" options:1 context:PXProgressFinishedObservationContext];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"fractionCompleted" options:1 context:PXProgressFractionCompletedObservationContext];
    [(NSProgress *)self->_actionProgress addObserver:self forKeyPath:@"cancelled" options:1 context:PXProgressCancelledObservationContext];
    v7 = [(PXCMMComposeRecipientViewController *)self updater];
    [v7 setNeedsUpdateOf:sel__updateFooter];

    v8 = [(PXCMMComposeRecipientViewController *)self updater];
    [v8 setNeedsUpdateOf:sel__updateUserInteraction];

    v5 = v9;
  }
}

- (void)_handleActionButton:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  v6 = [v5 composeRecipientDataSourceManager];
  v7 = [v6 dataSource];

  v8 = [v7 composeRecipients];
  v9 = [v5 composeRecipients];
  v10 = [(PXCMMComposeRecipientViewController *)self actionDelegate];
  v11 = [(PXCMMComposeRecipientViewController *)self session];
  v12 = [v10 completeMyMomentViewController:self performActionForSession:v11];

  [(PXCMMComposeRecipientViewController *)self setActionProgress:v12];
  v13 = v8;
  v14 = v9;
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v7 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
  v5 = [(PXCMMComposeRecipientViewController *)self updater];
  [v5 setNeedsUpdateOf:sel__updateFooter];

  v6 = [(PXCMMComposeRecipientViewController *)self updater];
  [v6 setNeedsUpdateOf:sel__updateTableView];
}

- (void)viewWillLayoutSubviews
{
  v12.receiver = self;
  v12.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v12 viewWillLayoutSubviews];
  v3 = [(PXCMMComposeRecipientViewController *)self specManager];
  v4 = [v3 extendedTraitCollection];

  v5 = [(PXCMMComposeRecipientViewController *)self view];
  [v5 bounds];
  v7 = v6;

  [v4 safeAreaInsets];
  v9 = v8;
  [v4 safeAreaInsets];
  [(PXCMMComposeRecipientViewController *)self setMaximumContentWidth:v7 - (v9 + v10)];
  v11 = [(PXCMMComposeRecipientViewController *)self updater];
  [v11 updateIfNeeded];
}

- (void)viewDidLoad
{
  v56.receiver = self;
  v56.super_class = PXCMMComposeRecipientViewController;
  [(PXCMMComposeRecipientViewController *)&v56 viewDidLoad];
  v3 = [(PXCMMComposeRecipientViewController *)self specManager];
  v4 = [v3 spec];

  v5 = [v4 composeRecipientViewBackgroundColor];
  v6 = [(PXCMMComposeRecipientViewController *)self view];
  [v6 setBackgroundColor:v5];

  v7 = [(PXCMMComposeRecipientViewController *)self tableViewModel];
  [v7 performChanges:&__block_literal_global_24765];
  [v7 registerChangeObserver:self context:PXComposeRecipientTableViewModelObservationContext_81277];
  v8 = [[PXComposeRecipientTableViewController alloc] initWithViewModel:v7];
  tableViewController = self->_tableViewController;
  self->_tableViewController = v8;

  [(PXComposeRecipientTableViewController *)self->_tableViewController setDelegate:self];
  v10 = [(PXCMMComposeRecipientViewController *)self view];
  v11 = [(PXComposeRecipientTableViewController *)self->_tableViewController tableView];
  [v10 addSubview:v11];

  v51 = [MEMORY[0x1E69DC730] effectWithBlurRadius:20.0];
  v12 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v51];
  footerVisualEffectView = self->_footerVisualEffectView;
  self->_footerVisualEffectView = v12;

  v14 = [(PXCMMComposeRecipientViewController *)self view];
  [v14 addSubview:self->_footerVisualEffectView];

  v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  privacyMessageLabel = self->_privacyMessageLabel;
  self->_privacyMessageLabel = v15;

  v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_privacyMessageLabel setTextColor:v17];

  [(UILabel *)self->_privacyMessageLabel setNumberOfLines:0];
  [(UILabel *)self->_privacyMessageLabel setTextAlignment:1];
  v18 = [MEMORY[0x1E69DB878] px_preferredFontForTextStyle:*MEMORY[0x1E69DDD28] maxContentSizeCategory:*MEMORY[0x1E69DDC38] withSymbolicTraits:0x8000];
  [(UILabel *)self->_privacyMessageLabel setFont:v18];

  v19 = PXLocalizedStringFromTable(@"PXComposeRecipientPrivacyMessage", @"PhotosUICore");
  [(UILabel *)self->_privacyMessageLabel setText:v19];

  v20 = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
  [v20 addSubview:self->_privacyMessageLabel];

  v21 = [MEMORY[0x1E69DC738] buttonWithType:1];
  sendButton = self->_sendButton;
  self->_sendButton = v21;

  [(UIButton *)self->_sendButton addTarget:self action:sel__handleActionButton_ forControlEvents:64];
  v23 = self->_sendButton;
  v24 = PXLocalizedStringFromTable(@"PXCompleteMyMomentSendingTitle", @"PhotosUICore");
  [(UIButton *)v23 setTitle:v24 forState:0];

  v25 = self->_sendButton;
  v26 = [MEMORY[0x1E69DC888] whiteColor];
  [(UIButton *)v25 setTitleColor:v26 forState:0];

  v27 = self->_sendButton;
  v28 = MEMORY[0x1E69DC738];
  v29 = [(PXCMMComposeRecipientViewController *)self view];
  v30 = [v29 tintColor];
  v31 = [v28 px_buttonBackgroundImageForType:0 color:v30 cornerRadius:0 controlState:6.0];
  [(UIButton *)v27 setBackgroundImage:v31 forState:0];

  v54 = 0.0;
  v55 = 0.0;
  v52 = 0;
  v53 = 0.0;
  v32 = [(PXCMMComposeRecipientViewController *)self view];
  v33 = [v32 tintColor];
  [v33 getRed:&v55 green:&v54 blue:&v53 alpha:&v52];

  v34 = self->_sendButton;
  v35 = MEMORY[0x1E69DC738];
  v36 = [MEMORY[0x1E69DC888] colorWithRed:v55 green:v54 blue:v53 alpha:0.5];
  v37 = [v35 px_buttonBackgroundImageForType:0 color:v36 cornerRadius:2 controlState:6.0];
  [(UIButton *)v34 setBackgroundImage:v37 forState:2];

  v38 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  v39 = [(UIButton *)self->_sendButton titleLabel];
  [v39 setFont:v38];

  [v4 composeCornerRadius];
  v41 = v40;
  v42 = [(UIButton *)self->_sendButton layer];
  [v42 setCornerRadius:v41];

  [v4 composeFooterInsets];
  [(UIButton *)self->_sendButton setContentEdgeInsets:?];
  v43 = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
  [v43 addSubview:self->_sendButton];

  v44 = +[PXRootSettings sharedInstance];
  LODWORD(v39) = [v44 canShowInternalUI];

  if (v39)
  {
    v45 = [MEMORY[0x1E69DC738] buttonWithType:1];
    v46 = +[PXRootSettings sharedInstance];
    -[UIButton setHidden:](v45, "setHidden:", [v46 canShowInternalUI] ^ 1);

    [(UIButton *)v45 setTitle:@"File Radar (Apple Internal)" forState:0];
    [(UIButton *)v45 addTarget:self action:sel__tapToRadarTapped_ forControlEvents:64];
    v47 = [(UIVisualEffectView *)self->_footerVisualEffectView contentView];
    [v47 addSubview:v45];

    tapToRadarButton = self->_tapToRadarButton;
    self->_tapToRadarButton = v45;
  }

  v49 = [(PXCMMComposeRecipientViewController *)self updater];
  [v49 setNeedsUpdateOf:sel__updateFooter];

  v50 = [(PXCMMComposeRecipientViewController *)self updater];
  [v50 setNeedsUpdateOf:sel__updateTableView];
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

- (PXCMMComposeRecipientViewController)initWithSession:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"session"}];
  }

  v32.receiver = self;
  v32.super_class = PXCMMComposeRecipientViewController;
  v7 = [(PXCMMComposeRecipientViewController *)&v32 initWithNibName:0 bundle:0];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_session, a3);
    [(PXCMMComposeRecipientViewController *)v8 px_enableExtendedTraitCollection];
    v9 = [(PXCMMComposeRecipientViewController *)v8 px_extendedTraitCollection];
    v10 = [[PXCMMSpecManager alloc] initWithExtendedTraitCollection:v9 activityType:[(PXCMMSession *)v8->_session activityType]];
    specManager = v8->_specManager;
    v8->_specManager = v10;

    v12 = [[off_1E7721940 alloc] initWithTarget:v8];
    updater = v8->_updater;
    v8->_updater = v12;

    [(PXUpdater *)v8->_updater setNeedsUpdateSelector:sel__setNeedsUpdate];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateFooter];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateTableView];
    [(PXUpdater *)v8->_updater addUpdateSelector:sel__updateUserInteraction];
    v14 = [(PXCMMSession *)v8->_session peopleSuggestionsDataSourceManager];
    v15 = [v14 dataSource];
    v16 = [v15 numberOfItemsInSection:0];

    v17 = +[PXCompleteMyMomentSettings sharedInstance];
    v18 = [v17 graphSuggestionEnabled];

    if (v18 && v16 > 0)
    {
      v19 = 1;
    }

    else
    {
      v20 = [(PXCMMSession *)v8->_session peopleSuggestionsPreviewDataSourceManager];
      v21 = [v20 dataSource];
      v22 = [v21 numberOfItemsInSection:0];

      if (v22 < 1)
      {
        v19 = 0;
        v23 = 0;
      }

      else
      {
        v23 = v20;
        v19 = 2;
      }

      v14 = v23;
    }

    v24 = [[PXComposeRecipientDataSourceManager alloc] initWithPeopleSuggestionsDataSourceManager:v14 sourceType:v19];
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

- (PXCMMComposeRecipientViewController)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:95 description:{@"%s is not available as initializer", "-[PXCMMComposeRecipientViewController initWithCoder:]"}];

  abort();
}

- (PXCMMComposeRecipientViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PXCMMComposeRecipientViewController.m" lineNumber:91 description:{@"%s is not available as initializer", "-[PXCMMComposeRecipientViewController initWithNibName:bundle:]"}];

  abort();
}

@end