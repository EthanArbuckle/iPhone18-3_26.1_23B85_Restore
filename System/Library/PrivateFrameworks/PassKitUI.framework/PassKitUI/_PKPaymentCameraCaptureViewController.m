@interface _PKPaymentCameraCaptureViewController
- (PKPaymentCameraCaptureViewControllerDelegate)flowItemDelegate;
- (_PKPaymentCameraCaptureViewController)init;
- (_PKPaymentCameraCaptureViewController)initWithWebService:(id)a3 context:(int64_t)a4;
- (void)_cancelButtonPressed;
- (void)_manualEntryButtonPressed:(id)a3;
- (void)_setupLater:(id)a3;
- (void)_tapToProvisionButtonPressed:(id)a3;
- (void)cameraReader:(id)a3 didFailWithError:(id)a4;
- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4;
- (void)cameraReaderDidEnd:(id)a3;
- (void)configureForModalPresentation;
- (void)loadView;
- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation _PKPaymentCameraCaptureViewController

- (_PKPaymentCameraCaptureViewController)init
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _PKPaymentCameraCaptureViewController;
  v2 = [(CRCameraReader *)&v6 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E6998FF8];
    v7[0] = *MEMORY[0x1E6998FF0];
    v7[1] = v3;
    v7[2] = *MEMORY[0x1E6999000];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
    [(CRCameraReader *)v2 setOutputObjectTypes:v4];

    [(CRCameraReader *)v2 setDelegate:v2];
    [(CRCameraReader *)v2 setHidePlacementText:1];
    v2->_showTypeCardNumberButton = 1;
  }

  return v2;
}

- (_PKPaymentCameraCaptureViewController)initWithWebService:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v8 = [(_PKPaymentCameraCaptureViewController *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_webService, a3);
    v9->_context = a4;
  }

  return v9;
}

- (void)configureForModalPresentation
{
  self->_hideSetupLaterButton = 1;
  self->_showTapToProvisionButton = 0;
  self->_showTypeCardNumberButton = 0;
  v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel__cancelButtonPressed];
  v3 = [(_PKPaymentCameraCaptureViewController *)self navigationItem];
  [v3 setLeftBarButtonItem:v4];
}

- (void)loadView
{
  v41.receiver = self;
  v41.super_class = _PKPaymentCameraCaptureViewController;
  [(CRCameraReader *)&v41 loadView];
  v3 = [(_PKPaymentCameraCaptureViewController *)self view];
  cameraView = self->_cameraView;
  self->_cameraView = v3;

  [(UIView *)self->_cameraView pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
  v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v6 = [(_PKPaymentCameraCaptureViewController *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if ((v7 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    IsSetupAssistant = PKPaymentSetupContextIsSetupAssistant();
  }

  else
  {
    IsSetupAssistant = 0;
  }

  v9 = objc_alloc(MEMORY[0x1E69DD250]);
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 8);
  v12 = *(MEMORY[0x1E695F058] + 16);
  v13 = *(MEMORY[0x1E695F058] + 24);
  v14 = [v9 initWithFrame:{*MEMORY[0x1E695F058], v11, v12, v13}];
  [v14 setBackgroundColor:v5];
  [v14 addSubview:self->_cameraView];
  [(_PKPaymentCameraCaptureViewController *)self setView:v14];
  v15 = [[PKTableHeaderView alloc] initWithFrame:v10, v11, v12, v13];
  headerView = self->_headerView;
  self->_headerView = v15;

  [(PKTableHeaderView *)self->_headerView setBackgroundColor:v5];
  v17 = [(PKTableHeaderView *)self->_headerView titleLabel];
  v18 = PKLocalizedPaymentString(&cfstr_AddCard.isa);
  [v17 setText:v18];

  v19 = [(PKPaymentWebService *)self->_webService targetDevice];
  v20 = [v19 deviceRegion];

  if (PKDeviceRegionSupportsDebit())
  {
    v21 = @"POSITION_CARD";
  }

  else
  {
    v21 = @"POSITION_CARD_NO_DEBIT";
  }

  v22 = PKLocalizedPaymentString(&v21->isa);
  v23 = [(PKTableHeaderView *)self->_headerView subtitleLabel];
  [v23 setText:v22];

  v24 = self->_headerView;
  if (IsSetupAssistant)
  {
    [(PKTableHeaderView *)self->_headerView setStyle:1];
    [v14 addSubview:self->_headerView];
    [(PKTableHeaderView *)self->_headerView setTopPadding:20.0];
    v25 = 19.0;
  }

  else
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v26 = 3;
    }

    else
    {
      v26 = 0;
    }

    [(PKTableHeaderView *)v24 setStyle:v26];
    [v14 addSubview:self->_headerView];
    v27 = self->_headerView;
    v28 = _UISolariumFeatureFlagEnabled();
    v29 = 44.0;
    if (!v28)
    {
      v29 = 10.0;
    }

    [(PKTableHeaderView *)v27 setTopPadding:v29];
    v25 = 9.0;
  }

  [(PKTableHeaderView *)self->_headerView setBottomPadding:v25];
  v30 = objc_alloc_init(PKPaymentSetupDockView);
  dockView = self->_dockView;
  self->_dockView = v30;

  [(PKPaymentSetupDockView *)self->_dockView setBackgroundColor:v5];
  v32 = [(PKPaymentSetupDockView *)self->_dockView footerView];
  [v32 setSetUpLaterButton:0];
  [v14 addSubview:self->_dockView];
  if (self->_showTypeCardNumberButton)
  {
    v33 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
    [v33 setEnabled:1];
    [v33 addTarget:self action:sel__manualEntryButtonPressed_ forControlEvents:0x2000];
    v34 = PKLocalizedPaymentString(&cfstr_EnterCardDetai.isa);
    [v33 setTitle:v34 forState:0];
  }

  v35 = MEMORY[0x1E69B9BE0];
  if (!self->_hideSetupLaterButton)
  {
    v36 = [v32 secondaryActionButton];
    v37 = PKLocalizedPaymentString(&cfstr_SetUpLaterButt.isa);
    [v36 setTitle:v37 forState:0];
    [v36 addTarget:self action:sel__setupLater_ forControlEvents:0x2000];
    [v36 setAccessibilityIdentifier:*v35];
  }

  if (self->_showTapToProvisionButton)
  {
    v38 = [v32 secondaryActionButton];
    v39 = PKLocalizedPaymentString(&cfstr_CameraCaptureT.isa);
    [v38 setTitle:v39 forState:0];
    [v38 addTarget:self action:sel__tapToProvisionButtonPressed_ forControlEvents:0x2000];
    [v38 setAccessibilityIdentifier:*v35];
  }

  v40 = [(_PKPaymentCameraCaptureViewController *)self view];
  [v40 setAccessibilityIdentifier:*MEMORY[0x1E69B9A40]];
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = _PKPaymentCameraCaptureViewController;
  [(_PKPaymentCameraCaptureViewController *)&v9 viewDidLoad];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v3 = [(_PKPaymentCameraCaptureViewController *)self navigationItem];
    v4 = objc_alloc(MEMORY[0x1E69DC708]);
    v5 = PKLocalizedString(&cfstr_BackButtonTitl.isa);
    v6 = [v4 initWithTitle:v5 style:0 target:0 action:0];

    [v6 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    [v3 setBackBarButtonItem:v6];
    [v3 pkui_enableManualScrollEdgeAppearanceWithInitialProgress:1.0];
  }

  context = self->_context;
  v8 = [(_PKPaymentCameraCaptureViewController *)self view];
  PKPaymentSetupApplyContextAppearance(context, v8);
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = _PKPaymentCameraCaptureViewController;
  [(CRCameraReader *)&v18 viewDidLayoutSubviews];
  v3 = [(_PKPaymentCameraCaptureViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 safeAreaInsets];
  v13 = v12;
  memset(&slice, 0, sizeof(slice));
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [(PKPaymentSetupDockView *)self->_dockView sizeThatFits:v9, v11];
  v15 = v14;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  CGRectDivide(v19, &slice, &v16, v15, CGRectMaxYEdge);
  [(PKPaymentSetupDockView *)self->_dockView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(PKTableHeaderView *)self->_headerView sizeThatFits:v9, v11];
  v20 = v16;
  CGRectDivide(v16, &slice, &v16, fmin(fmax(v16.size.height - v20.origin.y, 200.0), v13 + 281.0), CGRectMinYEdge);
  [(UIView *)self->_cameraView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  [(UIView *)self->_cameraView setNeedsLayout];
  [(PKTableHeaderView *)self->_headerView setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _PKPaymentCameraCaptureViewController;
  [(CRCameraReader *)&v4 viewWillAppear:a3];
  [(CRCameraReader *)self start];
  self->_cameraCaptureStartTime = mach_absolute_time();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = _PKPaymentCameraCaptureViewController;
  [(_PKPaymentCameraCaptureViewController *)&v4 viewDidAppear:a3];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)cameraReader:(id)a3 didFailWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71___PKPaymentCameraCaptureViewController_cameraReader_didFailWithError___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

- (void)cameraReaderDidEnd:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60___PKPaymentCameraCaptureViewController_cameraReaderDidEnd___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)cameraReader:(id)a3 didRecognizeObjects:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74___PKPaymentCameraCaptureViewController_cameraReader_didRecognizeObjects___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  dispatch_sync(MEMORY[0x1E69E96A0], v7);
}

- (void)showLoadingUI:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(_PKPaymentCameraCaptureViewController *)self view:a3];
  [v6 setUserInteractionEnabled:v4 ^ 1];

  v7 = [(PKPaymentSetupDockView *)self->_dockView primaryButton];
  [v7 setShowSpinner:v4];

  dockView = self->_dockView;

  [(PKPaymentSetupDockView *)dockView setButtonsEnabled:v4 ^ 1];
}

- (void)_manualEntryButtonPressed:(id)a3
{
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained cameraCaptureViewControllerDidSelectManualEntry:self];
}

- (void)_setupLater:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [(_PKPaymentCameraCaptureViewController *)self description];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v11, 0x20u);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:4];
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained cameraCaptureViewControllerDidSelectSetupLater:self];
}

- (void)_tapToProvisionButtonPressed:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [(_PKPaymentCameraCaptureViewController *)self description];
    v11 = 138412802;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "%@ - %@ - %@", &v11, 0x20u);
  }

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:1];
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained cameraCaptureViewControllerDidSelectTapToProvision:self];
}

- (void)_cancelButtonPressed
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained cameraCaptureViewControllerDidSelectSetupLater:self];
}

- (PKPaymentCameraCaptureViewControllerDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end