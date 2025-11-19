@interface PKVehicleInitiatedPairingViewController
+ (void)vehicleInitiatedPairingViewControllerForConfiguration:(id)a3 paymentService:(id)a4 completion:(id)a5;
- (PKVehicleInitiatedPairingViewController)initWithSupportedTerminal:(id)a3 launchURL:(id)a4 referralSource:(unint64_t)a5 didDismiss:(id)a6;
- (void)_configureLinkedApplicationForTerminal:(id)a3;
- (void)_handleEnterCode;
- (void)_handleOpenApp;
- (void)_updateViewState;
- (void)linkedApplicationDidChangeState:(id)a3;
- (void)loadView;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKVehicleInitiatedPairingViewController

+ (void)vehicleInitiatedPairingViewControllerForConfiguration:(id)a3 paymentService:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 ownerKeyPairingAvailable] & 1) == 0)
  {
    v9[2](v9, 0);
  }

  v10 = [MEMORY[0x1E69B8A58] sharedInstance];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke;
  v14[3] = &unk_1E801F620;
  v16 = v8;
  v17 = v9;
  v15 = v7;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  [v10 canAddCarKeyPassWithConfiguration:v12 completion:v14];
}

void __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke(id *a1, char a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      v10 = "PKVehicleInitiatedPairingViewController: CarKey support check failed: %@";
LABEL_8:
      _os_log_impl(&dword_1BD026000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    v9 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = a1[4];
      *buf = 138412290;
      v25 = v14;
      v10 = "PKVehicleInitiatedPairingViewController: CarKey not supported for configuration: %@";
      goto LABEL_8;
    }

LABEL_9:

    (*(a1[6] + 2))();
    goto LABEL_10;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke_31;
  aBlock[3] = &unk_1E8010A10;
  v22 = a1[5];
  v23 = a1[4];
  v11 = _Block_copy(aBlock);
  [a1[4] setReferralSource:3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke_2;
  block[3] = &unk_1E801F5F8;
  v16 = v7;
  v12 = a1[4];
  v20 = 3;
  v17 = v12;
  v18 = v11;
  v19 = a1[6];
  v13 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_10:
}

void __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke_31(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [MEMORY[0x1E69B8DB8] paymentService];
  }

  v5 = v3;
  v4 = [objc_alloc(MEMORY[0x1E69B9030]) initWithCarKeyConfiguration:*(a1 + 40)];
  [v5 addPendingProvisioning:v4];
}

void __123__PKVehicleInitiatedPairingViewController_vehicleInitiatedPairingViewControllerForConfiguration_paymentService_completion___block_invoke_2(uint64_t a1)
{
  v2 = [PKVehicleInitiatedPairingViewController alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) vehicleInitiatedPairingLaunchURL];
  v5 = [(PKVehicleInitiatedPairingViewController *)v2 initWithSupportedTerminal:v3 launchURL:v4 referralSource:*(a1 + 64) didDismiss:*(a1 + 48)];

  (*(*(a1 + 56) + 16))();
}

- (PKVehicleInitiatedPairingViewController)initWithSupportedTerminal:(id)a3 launchURL:(id)a4 referralSource:(unint64_t)a5 didDismiss:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v42.receiver = self;
  v42.super_class = PKVehicleInitiatedPairingViewController;
  v13 = [(PKVehicleInitiatedPairingViewController *)&v42 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_launchURL, a4);
    v14->_referralSource = a5;
    v15 = _Block_copy(v12);
    didDismiss = v14->_didDismiss;
    v14->_didDismiss = v15;

    v17 = [v10 partnerIdentifier];
    partnerIdentifier = v14->_partnerIdentifier;
    v14->_partnerIdentifier = v17;

    v19 = PKLocalizedCredentialString(&cfstr_VehicleInitiat.isa);
    [(PKVehicleInitiatedPairingViewController *)v14 setTitle:v19];

    v20 = objc_alloc_init(MEMORY[0x1E69C66E0]);
    subtitleLabel = v14->_subtitleLabel;
    v14->_subtitleLabel = v20;

    [(PRXLabel *)v14->_subtitleLabel setNumberOfLines:0];
    v22 = v14->_subtitleLabel;
    v23 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
    [(PRXLabel *)v22 setFont:v23];

    [(PRXLabel *)v14->_subtitleLabel setTextAlignment:1];
    v24 = v14->_subtitleLabel;
    v25 = PKLocalizedCredentialString(&cfstr_VehicleInitiat_0.isa);
    [(PRXLabel *)v24 setText:v25];

    v26 = [(PKVehicleInitiatedPairingViewController *)v14 contentView];
    [v26 setSubtitleLabel:v14->_subtitleLabel];

    [(PKVehicleInitiatedPairingViewController *)v14 setDismissalType:3];
    objc_initWeak(&location, v14);
    v27 = MEMORY[0x1E69C66C8];
    v28 = PKLocalizedCredentialString(&cfstr_CarKeyEnterCod.isa);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __105__PKVehicleInitiatedPairingViewController_initWithSupportedTerminal_launchURL_referralSource_didDismiss___block_invoke;
    v39[3] = &unk_1E801F648;
    objc_copyWeak(&v40, &location);
    v29 = [v27 actionWithTitle:v28 style:0 handler:v39];
    v30 = [(PKVehicleInitiatedPairingViewController *)v14 addAction:v29];

    v31 = MEMORY[0x1E69C66C8];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __105__PKVehicleInitiatedPairingViewController_initWithSupportedTerminal_launchURL_referralSource_didDismiss___block_invoke_2;
    v37[3] = &unk_1E801F648;
    objc_copyWeak(&v38, &location);
    v32 = [v31 actionWithTitle:&stru_1F3BD7330 style:0 handler:v37];
    [(PKVehicleInitiatedPairingViewController *)v14 setDismissButtonAction:v32];

    v33 = [MEMORY[0x1E69C66C8] actionWithTitle:&stru_1F3BD7330 style:1 handler:&__block_literal_global_186];
    placeholderAction = v14->_placeholderAction;
    v14->_placeholderAction = v33;

    v35 = [(PKVehicleInitiatedPairingViewController *)v14 addAction:v14->_placeholderAction];
    [(PKVehicleInitiatedPairingViewController *)v14 _configureLinkedApplicationForTerminal:v10];
    objc_destroyWeak(&v38);
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __105__PKVehicleInitiatedPairingViewController_initWithSupportedTerminal_launchURL_referralSource_didDismiss___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEnterCode];
}

void __105__PKVehicleInitiatedPairingViewController_initWithSupportedTerminal_launchURL_referralSource_didDismiss___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)loadView
{
  v17.receiver = self;
  v17.super_class = PKVehicleInitiatedPairingViewController;
  [(PKVehicleInitiatedPairingViewController *)&v17 loadView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  bodyLabel = self->_bodyLabel;
  self->_bodyLabel = v3;

  [(UILabel *)self->_bodyLabel setNumberOfLines:0];
  v5 = self->_bodyLabel;
  v6 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
  [(UILabel *)v5 setFont:v6];

  v7 = PKLocalizedCredentialString(&cfstr_VehicleInitiat_1.isa);
  if (self->_referralSource != 2)
  {
    v8 = PKLocalizedCredentialString(&cfstr_VehicleInitiat_2.isa);
    v9 = [v7 stringByAppendingFormat:@" %@", v8];

    v7 = v9;
  }

  [(UILabel *)self->_bodyLabel setText:v7];
  [(UILabel *)self->_bodyLabel setTextAlignment:1];
  [(UILabel *)self->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = MEMORY[0x1E69DCAB8];
  v11 = PKPassKitUIBundle();
  v12 = [v10 imageNamed:@"CarKeyVehicleInitiated" inBundle:v11];

  v13 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v12];
  artworkView = self->_artworkView;
  self->_artworkView = v13;

  [(UIImageView *)self->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [(PKVehicleInitiatedPairingViewController *)self contentView];
  [v15 addSubview:self->_bodyLabel];

  v16 = [(PKVehicleInitiatedPairingViewController *)self contentView];
  [v16 addSubview:self->_artworkView];

  [(PKVehicleInitiatedPairingViewController *)self _updateViewState];
}

- (void)updateViewConstraints
{
  v56[11] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = PKVehicleInitiatedPairingViewController;
  [(PKVehicleInitiatedPairingViewController *)&v55 updateViewConstraints];
  if (!self->_layoutConstraints)
  {
    v3 = [(UIImageView *)self->_artworkView image];
    [v3 size];
    v5 = v4;
    v7 = v6;

    v8 = [(PKVehicleInitiatedPairingViewController *)self contentView];
    v9 = [v8 mainContentGuide];

    v10 = [(PRXLabel *)self->_subtitleLabel widthAnchor];
    v11 = [v9 widthAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 multiplier:0.85];

    v53 = v12;
    LODWORD(v13) = 1148829696;
    [v12 setPriority:v13];
    v14 = [(UILabel *)self->_bodyLabel widthAnchor];
    v15 = [v9 widthAnchor];
    v16 = [v14 constraintEqualToAnchor:v15 multiplier:0.85];

    v51 = v16;
    LODWORD(v17) = 1148829696;
    [v16 setPriority:v17];
    v18 = [(UIImageView *)self->_artworkView widthAnchor];
    v19 = [v9 widthAnchor];
    v54 = [v18 constraintEqualToAnchor:v19 multiplier:0.37];

    LODWORD(v20) = 1148829696;
    [v54 setPriority:v20];
    v21 = [(UIImageView *)self->_artworkView bottomAnchor];
    v22 = [v9 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-20.0];

    LODWORD(v24) = 1148813312;
    v45 = v23;
    [v23 setPriority:v24];
    v25 = [(UIImageView *)self->_artworkView bottomAnchor];
    v26 = [v9 bottomAnchor];
    v27 = [v25 constraintLessThanOrEqualToAnchor:v26 constant:-20.0];

    v28 = v27;
    v44 = v27;
    LODWORD(v29) = 1148829696;
    [v27 setPriority:v29];
    v56[0] = v12;
    v52 = [(PRXLabel *)self->_subtitleLabel centerXAnchor];
    v50 = [v9 centerXAnchor];
    v49 = [v52 constraintEqualToAnchor:v50];
    v56[1] = v49;
    v48 = [(UILabel *)self->_bodyLabel topAnchor];
    v47 = [v9 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:0.0];
    v56[2] = v46;
    v56[3] = v16;
    v43 = [(UILabel *)self->_bodyLabel centerXAnchor];
    v42 = [v9 centerXAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v56[4] = v41;
    v40 = [(UIImageView *)self->_artworkView topAnchor];
    v30 = [(UILabel *)self->_bodyLabel bottomAnchor];
    v31 = [v40 constraintEqualToAnchor:v30 constant:30.0];
    v56[5] = v31;
    v56[6] = v23;
    v56[7] = v28;
    v56[8] = v54;
    v32 = [(UIImageView *)self->_artworkView heightAnchor];
    v33 = [(UIImageView *)self->_artworkView widthAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 multiplier:v7 / v5];
    v56[9] = v34;
    v35 = [(UIImageView *)self->_artworkView centerXAnchor];
    v36 = [v9 centerXAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v56[10] = v37;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:11];
    layoutConstraints = self->_layoutConstraints;
    self->_layoutConstraints = v38;

    [MEMORY[0x1E696ACD8] activateConstraints:self->_layoutConstraints];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v12.receiver = self;
  v12.super_class = PKVehicleInitiatedPairingViewController;
  [(PKVehicleInitiatedPairingViewController *)&v12 viewDidAppear:a3];
  v4 = MEMORY[0x1E69B90D0];
  v5 = PKSubcredentialPairingReferralSourceToString();
  v6 = [v4 startAnalyticsSessionForEnvironment:@"first_party.wallet" intent:@"provision" referralSource:v5];
  analyticsSession = self->_analyticsSession;
  self->_analyticsSession = v6;

  [(PKProvisioningAnalyticsSession *)self->_analyticsSession setProductType:*MEMORY[0x1E69BB1C8] subtype:@"cars"];
  v8 = objc_alloc_init(MEMORY[0x1E69B8E48]);
  v9 = objc_alloc_init(MEMORY[0x1E69B8E58]);
  [v9 setType:11];
  [v9 setPartnerIdentifier:self->_partnerIdentifier];
  [v9 setProductIdentifier:*MEMORY[0x1E69BC2B8]];
  [v8 setConfiguration:v9];
  [(PKProvisioningAnalyticsSession *)self->_analyticsSession setSetupProduct:v8];
  v10 = [(PKProvisioningAnalyticsSession *)self->_analyticsSession createViewReporterForPage:*MEMORY[0x1E69BB4D8]];
  reporter = self->_reporter;
  self->_reporter = v10;

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)_configureLinkedApplicationForTerminal:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 associatedApplicationIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v14 + 1) + 8 * v10), "integerValue")}];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [[PKLinkedApplication alloc] initWithStoreIDs:v5 defaultLaunchURL:0];
  linkedApplication = self->_linkedApplication;
  self->_linkedApplication = v12;

  [(PKLinkedApplication *)self->_linkedApplication addObserver:self];
  [(PKLinkedApplication *)self->_linkedApplication reloadApplicationStateIfNecessary];
  [(PKVehicleInitiatedPairingViewController *)self showActivityIndicatorWithStatus:&stru_1F3BD7330];
}

- (void)_updateViewState
{
  if ([(PKVehicleInitiatedPairingViewController *)self isViewLoaded])
  {
    v3 = self->_linkedApplication;
    v4 = [(PKLinkedApplication *)v3 state];
    if (v4)
    {
      v5 = v4;
      v6 = [(PKLinkedApplication *)v3 displayName];
      v7 = v6;
      v8 = @"partner";
      if (v6)
      {
        v8 = v6;
      }

      v9 = PKLocalizedCredentialString(&cfstr_VehicleInitiat_3.isa, &stru_1F3BD5BF0.isa, v8);
      if (self->_referralSource != 2)
      {
        v10 = PKLocalizedCredentialString(&cfstr_VehicleInitiat_2.isa);
        v11 = [v9 stringByAppendingFormat:@" %@", v10];

        v9 = v11;
      }

      [(UILabel *)self->_bodyLabel setText:v9];
      if (self->_placeholderAction)
      {
        [(PKVehicleInitiatedPairingViewController *)self removeAction:?];
        placeholderAction = self->_placeholderAction;
        self->_placeholderAction = 0;

        if (v5 == 1)
        {
          objc_initWeak(&location, self);
          v13 = [(PKLinkedApplication *)v3 isInstalled];
          v14 = @"CAR_KEY_GET_PARTNER_APP_ACTION";
          if (v13)
          {
            v14 = @"CAR_KEY_OPEN_PARTNER_APP_ACTION";
          }

          v15 = v14;
          v16 = v15;
          v17 = @"Partner";
          if (v7)
          {
            v17 = v7;
          }

          v18 = PKLocalizedCredentialString(v15, &stru_1F3BD5BF0.isa, v17);
          v19 = MEMORY[0x1E69C66C8];
          v22[0] = MEMORY[0x1E69E9820];
          v22[1] = 3221225472;
          v22[2] = __59__PKVehicleInitiatedPairingViewController__updateViewState__block_invoke;
          v22[3] = &unk_1E801F648;
          objc_copyWeak(&v23, &location);
          v20 = [v19 actionWithTitle:v18 style:1 handler:v22];
          v21 = [(PKVehicleInitiatedPairingViewController *)self addAction:v20];

          objc_destroyWeak(&v23);
          objc_destroyWeak(&location);
        }

        [(PKVehicleInitiatedPairingViewController *)self hideActivityIndicator];
      }
    }
  }
}

void __59__PKVehicleInitiatedPairingViewController__updateViewState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleOpenApp];
}

- (void)linkedApplicationDidChangeState:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    v7 = [v4 state];
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKVehicleInitiatedPairingViewController: linkedApplicationDidChangeState: %ld", &v6, 0xCu);
  }

  if ([v4 state])
  {
    [(PKVehicleInitiatedPairingViewController *)self _updateViewState];
  }

  else
  {
    [v4 reloadApplicationStateIfNecessary];
  }
}

- (void)_handleEnterCode
{
  self->_exitedWithOtherDestination = 1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__PKVehicleInitiatedPairingViewController__handleEnterCode__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKVehicleInitiatedPairingViewController *)self dismissViewControllerAnimated:1 completion:v2];
}

void __59__PKVehicleInitiatedPairingViewController__handleEnterCode__block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E699F970];
  v21[0] = *MEMORY[0x1E699F990];
  v21[1] = v2;
  v22[0] = MEMORY[0x1E695E118];
  v22[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v4 = [MEMORY[0x1E6963608] defaultWorkspace];
  v5 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:*(*(a1 + 32) + 1104) resolvingAgainstBaseURL:0];
  v6 = [*(*(a1 + 32) + 1176) archivedParentToken];
  v7 = [v6 base64EncodedStringWithOptions:0];

  if (v7)
  {
    v8 = [v5 queryItems];
    v9 = [v8 mutableCopy];

    v10 = objc_alloc(MEMORY[0x1E696AF60]);
    v11 = [v10 initWithName:*MEMORY[0x1E69BC640] value:v7];
    [v9 addObject:v11];

    [v5 setQueryItems:v9];
  }

  v12 = [v5 URL];
  v16 = 0;
  [v4 openURL:v12 withOptions:v3 error:&v16];
  v13 = v16;
  v14 = *(*(a1 + 32) + 1184);
  if (v13)
  {
    [v14 reportOtherError:*MEMORY[0x1E69BA510] context:0];
  }

  else
  {
    [v14 reportOtherButtonPressed:*MEMORY[0x1E69BA508]];
    [*(*(a1 + 32) + 1176) stop];
  }

  v15 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_1BD026000, v15, OS_LOG_TYPE_DEFAULT, "PKVehicleInitiatedPairingViewController: Launched Wallet app with URL %@, error: %@", buf, 0x16u);
  }
}

- (void)_handleOpenApp
{
  v3 = self->_linkedApplication;
  v4 = v3;
  if (v3)
  {
    self->_exitedWithOtherDestination = 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__PKVehicleInitiatedPairingViewController__handleOpenApp__block_invoke;
    v6[3] = &unk_1E8010A10;
    v6[4] = self;
    v7 = v3;
    [(PKVehicleInitiatedPairingViewController *)self dismissViewControllerAnimated:1 completion:v6];
  }

  else
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportOtherError:*MEMORY[0x1E69BAB98] context:0];
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKVehicleInitiatedPairingViewController: Failed to open, linkedApplication was nil.", buf, 2u);
    }
  }
}

uint64_t __57__PKVehicleInitiatedPairingViewController__handleOpenApp__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1184) reportOtherButtonPressed:*MEMORY[0x1E69BAB90]];
  [*(*(a1 + 32) + 1176) stop];
  v2 = *(a1 + 40);

  return [v2 openApplication:0 withLaunchOptions:1];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKVehicleInitiatedPairingViewController;
  [(PKVehicleInitiatedPairingViewController *)&v5 viewDidDisappear:a3];
  didDismiss = self->_didDismiss;
  if (didDismiss)
  {
    didDismiss[2]();
  }

  if (!self->_exitedWithOtherDestination)
  {
    [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:3];
    [(PKProvisioningAnalyticsSession *)self->_analyticsSession stop];
  }
}

@end