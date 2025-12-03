@interface PKPaymentPassAMPEnrollmentViewController
+ (void)shouldOfferAMPEnrollmentForPass:(id)pass provisioningController:(id)controller withCompletion:(id)completion;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)_snapshotSize;
- (PKPaymentPassAMPEnrollmentViewController)initWithProvisioningController:(id)controller paymentPass:(id)pass context:(int64_t)context;
- (PKPaymentPassAMPEnrollmentViewControllerFlowDelegate)flowItemDelegate;
- (id)_createBodyImage:(id)image;
- (void)_displayTermsWithCompletion:(id)completion;
- (void)_done;
- (void)_performAMPEnrollmentWithPass:(id)pass asDefault:(BOOL)default completion:(id)completion;
- (void)_performTerms;
- (void)_updateBodyImage;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)explanationViewDidSelectSetupLater:(id)later;
- (void)loadView;
- (void)proceedToNextScreen;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PKPaymentPassAMPEnrollmentViewController

+ (void)shouldOfferAMPEnrollmentForPass:(id)pass provisioningController:(id)controller withCompletion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  mEMORY[0x1E69B8310] = [MEMORY[0x1E69B8310] sharedManager];
  paymentPass = [passCopy paymentPass];
  v10 = [mEMORY[0x1E69B8310] shouldOfferAMPEnrollmentForPaymentPass:paymentPass];

  if (v10)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__PKPaymentPassAMPEnrollmentViewController_shouldOfferAMPEnrollmentForPass_provisioningController_withCompletion___block_invoke;
    aBlock[3] = &unk_1E8013FF8;
    v18 = completionCopy;
    v11 = _Block_copy(aBlock);
    paymentPass2 = [passCopy paymentPass];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__PKPaymentPassAMPEnrollmentViewController_shouldOfferAMPEnrollmentForPass_provisioningController_withCompletion___block_invoke_32;
    v14[3] = &unk_1E801BBA0;
    v15 = passCopy;
    v16 = v11;
    v13 = v11;
    [mEMORY[0x1E69B8310] enrollmentStatusForPaymentPass:paymentPass2 completion:v14 progress:0];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __114__PKPaymentPassAMPEnrollmentViewController_shouldOfferAMPEnrollmentForPass_provisioningController_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    a2 = 0;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "AMP offer should be presented:%d (%@)", v7, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
}

void __114__PKPaymentPassAMPEnrollmentViewController_shouldOfferAMPEnrollmentForPass_provisioningController_withCompletion___block_invoke_32(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 secureElementPass];
  v11 = [v7 devicePrimaryBarcodePaymentApplication];

  v8 = [v11 paymentNetworkIdentifier];
  v10 = a2 == 1 && v8 == 123;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v10, v6);
}

- (PKPaymentPassAMPEnrollmentViewController)initWithProvisioningController:(id)controller paymentPass:(id)pass context:(int64_t)context
{
  controllerCopy = controller;
  passCopy = pass;
  v14.receiver = self;
  v14.super_class = PKPaymentPassAMPEnrollmentViewController;
  v11 = [(PKExplanationViewController *)&v14 initWithContext:context];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_provisioningController, controller);
    objc_storeStrong(&v12->_pass, pass);
  }

  return v12;
}

- (void)loadView
{
  v32[3] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PKPaymentPassAMPEnrollmentViewController;
  [(PKExplanationViewController *)&v28 loadView];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  footerView = [dockView footerView];
  organizationName = [(PKSecureElementPass *)self->_pass organizationName];
  v27 = PKLocalizedPaymentString(&cfstr_PaymentAmpEnro.isa, &stru_1F3BD5BF0.isa, organizationName);

  [explanationView setTitleText:v27];
  primaryButton = [dockView primaryButton];
  v7 = PKLocalizedPaymentString(&cfstr_PaymentAmpEnro_0.isa);
  [primaryButton setTitle:v7 forState:0];

  [explanationView setForceShowSetupLaterButton:1];
  organizationName2 = [(PKSecureElementPass *)self->_pass organizationName];
  v26 = PKLocalizedPaymentString(&cfstr_PaymentAmpEnro_1.isa, &stru_1F3BD5BF0.isa, organizationName2);

  [explanationView setBodyText:v26];
  buttonExplanationTextView = [dockView buttonExplanationTextView];
  organizationName3 = [(PKSecureElementPass *)self->_pass organizationName];
  v11 = PKLocalizedPaymentString(&cfstr_PaymentAmpEnro_2.isa, &stru_1F3BD5BF0.isa, organizationName3);

  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v13 = [defaultParagraphStyle mutableCopy];

  [v13 setLineBreakMode:0];
  [v13 setAlignment:1];
  v31[0] = *MEMORY[0x1E69DB648];
  font = [buttonExplanationTextView font];
  v15 = *MEMORY[0x1E69DB688];
  v32[0] = font;
  v32[1] = v13;
  v16 = *MEMORY[0x1E69DB650];
  v31[1] = v15;
  v31[2] = v16;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v32[2] = secondaryLabelColor;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v19 = PKAttributedStringByParsingLinksInString();
  [buttonExplanationTextView setAttributedText:v19];
  [buttonExplanationTextView setDataDetectorTypes:2];
  [buttonExplanationTextView setDelegate:self];
  v29 = v16;
  linkColor = [MEMORY[0x1E69DC888] linkColor];
  v30 = linkColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  [buttonExplanationTextView setLinkTextAttributes:v21];

  setUpLaterButton = [footerView setUpLaterButton];
  v23 = PKLocalizedPaymentString(&cfstr_PaymentAmpEnro_3.isa);
  [setUpLaterButton setTitle:v23 forState:0];

  [explanationView setImage:0];
  [(PKPaymentPassAMPEnrollmentViewController *)self _updateBodyImage];
  [explanationView setShowPrivacyView:0];
  [explanationView setDelegate:self];
  [explanationView showCheckmark:0 animated:0];
  [explanationView setNeedsLayout];
  [(PKExplanationViewController *)self setShowCancelButton:0];
  [(PKExplanationViewController *)self setShowDoneButton:0];
  navigationItem = [(PKPaymentPassAMPEnrollmentViewController *)self navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PKPaymentPassAMPEnrollmentViewController;
  [(PKPaymentPassAMPEnrollmentViewController *)&v4 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportButtonPressed:0];
  paymentPass = [(PKSecureElementPass *)self->_pass paymentPass];
  [(PKPaymentPassAMPEnrollmentViewController *)self _performAMPEnrollmentWithPass:paymentPass asDefault:0 completion:0];
}

- (void)explanationViewDidSelectSetupLater:(id)later
{
  v9[1] = *MEMORY[0x1E69E9840];
  explanationView = [(PKExplanationViewController *)self explanationView];
  dockView = [explanationView dockView];
  [dockView setButtonsEnabled:0];

  reporter = self->_reporter;
  v8 = *MEMORY[0x1E69BB158];
  v9[0] = *MEMORY[0x1E69BB150];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:4 context:v7];

  [(PKPaymentPassAMPEnrollmentViewController *)self proceedToNextScreen];
}

- (void)proceedToNextScreen
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);
  [WeakRetained ampEnrollmentViewControllerDidFinish:self];
}

- (void)_performTerms
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __57__PKPaymentPassAMPEnrollmentViewController__performTerms__block_invoke;
  v2[3] = &unk_1E8010970;
  v2[4] = self;
  [(PKPaymentPassAMPEnrollmentViewController *)self _displayTermsWithCompletion:v2];
}

- (void)_displayTermsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x1E698C7D8] bagForProfile:*MEMORY[0x1E69B9378] profileVersion:*MEMORY[0x1E69B9380]];
  v6 = [v5 URLForKey:@"alipay-terms-url"];
  v48[0] = 0;
  v7 = [v6 valueWithError:v48];
  v8 = v48[0];

  if (v7)
  {
    v36 = v8;
    v9 = objc_alloc_init(MEMORY[0x1E69C7048]);
    termsController = self->_termsController;
    self->_termsController = v9;

    [(PKExplanationViewController *)self context];
    if (PKPaymentSetupContextIsBridge())
    {
      v11 = self->_termsController;
      v12 = objc_alloc_init(MEMORY[0x1E698F570]);
      [(RemoteUIController *)v11 setStyle:v12];
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke;
    aBlock[3] = &unk_1E80111D0;
    objc_copyWeak(&v46, &location);
    v45 = completionCopy;
    v13 = _Block_copy(aBlock);
    v14 = objc_alloc_init(MEMORY[0x1E69DD258]);
    v15 = [[PKExplanationView alloc] initWithContext:[(PKExplanationViewController *)self context] delegate:self];
    dockView = [(PKExplanationView *)v15 dockView];
    [dockView setPrimaryButton:0];

    v17 = PKProvisioningBackgroundColor();
    [(PKExplanationView *)v15 setBackgroundColor:v17];

    v18 = PKLocalizedAquamanString(&cfstr_TermsAndCondit_0.isa);
    [(PKExplanationView *)v15 setTitleText:v18];

    [(PKExplanationView *)v15 setTitleTextNumberOfLines:1];
    [v14 setView:v15];
    [v14 setModalInPresentation:1];
    v19 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__done];
    [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9708]];
    navigationItem = [v14 navigationItem];
    [navigationItem setRightBarButtonItem:v19];

    navigationItem2 = [v14 navigationItem];
    [navigationItem2 setHidesBackButton:1];
    v34 = completionCopy;
    v35 = v13;
    v33 = v5;

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v23 = [defaultParagraphStyle mutableCopy];

    [v23 setLineBreakMode:0];
    [v23 setAlignment:1];
    v24 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    [v24 configureWithOpaqueBackground];
    navigationItem3 = [v14 navigationItem];
    [navigationItem3 setStandardAppearance:v24];

    loader = [(RemoteUIController *)self->_termsController loader];
    webService = [(PKPaymentProvisioningController *)self->_provisioningController webService];
    context = [webService context];
    [loader setAllowNonSecureHTTP:{objc_msgSend(context, "devSigned")}];

    v29 = self->_termsController;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke_2;
    v37[3] = &unk_1E80179B0;
    objc_copyWeak(&v43, &location);
    v38 = v7;
    v30 = v15;
    v39 = v30;
    selfCopy = self;
    v31 = v14;
    v41 = v31;
    v32 = v35;
    v42 = v32;
    [(RemoteUIController *)v29 loadURL:v38 postBody:0 completion:v37];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&v46);
    objc_destroyWeak(&location);
    v5 = v33;
    completionCopy = v34;
    v8 = v36;
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 137);
    *(WeakRetained + 137) = 0;
    v6 = WeakRetained;

    v3 = v6;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, v6);
      v3 = v6;
    }
  }
}

void __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke_2(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke_3;
  block[3] = &unk_1E801BBC8;
  objc_copyWeak(&v13, (a1 + 72));
  v14 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v6 = *(&v8 + 1);
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v11 = v8;
  v10 = v7;
  v12 = *(a1 + 64);
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v13);
}

void __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke_3(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    if (*(a1 + 80) == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfURL:*(a1 + 32) encoding:4 error:0];
      v4 = objc_alloc(MEMORY[0x1E696AAB0]);
      v5 = [v3 dataUsingEncoding:10];
      v16 = *MEMORY[0x1E69DB628];
      v17[0] = *MEMORY[0x1E69DB658];
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v7 = [v4 initWithData:v5 options:v6 documentAttributes:0 error:0];

      [*(a1 + 40) setAttributedBodyText:v7];
      [*(a1 + 40) setBodyTextAlignment:0];
      v8 = [*(a1 + 48) navigationController];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __72__PKPaymentPassAMPEnrollmentViewController__displayTermsWithCompletion___block_invoke_4;
      v12[3] = &unk_1E8010AD8;
      v9 = *(a1 + 56);
      v13 = *(a1 + 64);
      [v8 pk_presentPaymentSetupViewController:v9 animated:1 completion:v12];
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v15 = v11;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Error loading terms UI at %@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)_done
{
  navigationController = [(PKPaymentPassAMPEnrollmentViewController *)self navigationController];
  [navigationController _pk_popToViewController:self animated:1];
}

- (CGSize)_snapshotSize
{
  v2 = 220.0;
  v3 = 134.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_createBodyImage:(id)image
{
  v23 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  v4 = [imageCopy count];
  if (v4)
  {
    v5 = (v4 - 1) * 25.0 + v4 * 48.0;
    v6 = PKUIScreenScale();
    v25.width = v5;
    v25.height = 48.0;
    UIGraphicsBeginImageContextWithOptions(v25, 0, v6);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = imageCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      x = 0.0;
      width = 48.0;
      y = 0.0;
      height = 48.0;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v18 + 1) + 8 * i) drawInRect:{x, y, width, height, v18}];
          v26.origin.x = x;
          v26.origin.y = y;
          v26.size.width = width;
          v26.size.height = height;
          v27 = CGRectOffset(v26, 73.0, 0.0);
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v16 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_updateBodyImage
{
  v3 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PKPaymentPassAMPEnrollmentViewController__updateBodyImage__block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_async(v3, block);
}

void __60__PKPaymentPassAMPEnrollmentViewController__updateBodyImage__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = objc_alloc(MEMORY[0x1E69635F8]);
  v4 = [v3 initWithBundleIdentifier:*MEMORY[0x1E69BBB30] allowPlaceholder:1 error:0];
  v5 = PKUIGetAppIconForApplicationRecord(v4);
  [v2 safelyAddObject:v5];

  v6 = objc_alloc(MEMORY[0x1E69635F8]);
  v7 = [v6 initWithBundleIdentifier:*MEMORY[0x1E69BB738] allowPlaceholder:1 error:0];
  v8 = PKUIGetAppIconForApplicationRecord(v7);
  [v2 safelyAddObject:v8];

  v9 = PKUIImageNamed(@"iCloud");
  [v2 safelyAddObject:v9];

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__PKPaymentPassAMPEnrollmentViewController__updateBodyImage__block_invoke_2;
  v11[3] = &unk_1E8010A10;
  v11[4] = *(a1 + 32);
  v12 = v2;
  v10 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v11);
}

void __60__PKPaymentPassAMPEnrollmentViewController__updateBodyImage__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) explanationView];
  v2 = [*(a1 + 32) _createBodyImage:*(a1 + 40)];
  [v3 setBodyImage:v2];
}

- (void)_performAMPEnrollmentWithPass:(id)pass asDefault:(BOOL)default completion:(id)completion
{
  passCopy = pass;
  completionCopy = completion;
  mEMORY[0x1E69B8310] = [MEMORY[0x1E69B8310] sharedManager];
  v11 = AMPEnrollmentDismissedKeyForPass();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke;
  aBlock[3] = &unk_1E8013D88;
  aBlock[4] = self;
  v25 = v11;
  v12 = v11;
  v13 = _Block_copy(aBlock);
  [(PKExplanationViewController *)self showSpinner:1];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke_2;
  v18[3] = &unk_1E801BBF0;
  v19 = mEMORY[0x1E69B8310];
  v20 = passCopy;
  defaultCopy = default;
  v21 = v13;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = v13;
  v16 = passCopy;
  v17 = mEMORY[0x1E69B8310];
  [v17 enrollmentStatusForPaymentPass:v16 completion:v18 progress:v15];
}

void __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v9 = a2;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "AMP enrollment completed:%d (%@)", buf, 0x12u);
  }

  [*(*(a1 + 32) + 1112) reportPageCompleted:a2 context:0];
  PKSharedCacheSetBoolForKey();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke_83;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke_83(uint64_t a1)
{
  [*(a1 + 32) showSpinner:0];
  v2 = *(a1 + 32);

  return [v2 proceedToNextScreen];
}

void __95__PKPaymentPassAMPEnrollmentViewController__performAMPEnrollmentWithPass_asDefault_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      [*(a1 + 32) enrollPaymentPass:*(a1 + 40) isDefault:*(a1 + 64) completion:*(a1 + 48)];
      v5 = *(a1 + 56);
      if (!v5)
      {
        goto LABEL_9;
      }

      v6 = *(v5 + 16);
      goto LABEL_8;
    }

    (*(*(a1 + 48) + 16))();
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    goto LABEL_9;
  }

  v6 = *(v7 + 16);
LABEL_8:
  v6();
LABEL_9:
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  absoluteString = [l absoluteString];
  if ([absoluteString isEqualToString:@"OPEN_TERMS_AND_CONDITIONS"])
  {
    [(PKExplanationViewController *)self showSpinner:1];
    [(PKPaymentPassAMPEnrollmentViewController *)self _performTerms];
  }

  return 0;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKPaymentPassAMPEnrollmentViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

- (PKPaymentPassAMPEnrollmentViewControllerFlowDelegate)flowItemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_flowItemDelegate);

  return WeakRetained;
}

@end