@interface PKEducationViewController
+ (BOOL)shouldPresentForPass:(id)pass inEducationContext:(unint64_t)context reason:(id *)reason;
- (PKEducationViewController)initWithPaymentPass:(id)pass setupContext:(int64_t)context educationContext:(unint64_t)educationContext;
- (id)_heroPadImage;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)continue;
- (void)invalidate;
- (void)loadView;
- (void)performContinue;
- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation PKEducationViewController

+ (BOOL)shouldPresentForPass:(id)pass inEducationContext:(unint64_t)context reason:(id *)reason
{
  passCopy = pass;
  v8 = PKForceCardEducation();
  v9 = 1;
  if (!context && (v8 & 1) == 0)
  {
    if (PKHasSeenApplePayEducation())
    {
      if (reason)
      {
        v9 = 0;
        v10 = @"user has already seen education";
LABEL_20:
        *reason = v10;
        goto LABEL_31;
      }
    }

    else
    {
      v11 = PKIsPhone();
      if (v11 & 1) != 0 || PKIsPad() && (PKPearlIsAvailable())
      {
        if ([passCopy isTransitPass])
        {
          if (reason)
          {
            v9 = 0;
            v10 = @"pass is transit pass";
            goto LABEL_20;
          }
        }

        else if ([passCopy isAccessPass])
        {
          if (reason)
          {
            v9 = 0;
            v10 = @"pass is access pass";
            goto LABEL_20;
          }
        }

        else
        {
          if (![passCopy isAppleBalancePass])
          {
            if (v11)
            {
              devicePrimaryContactlessPaymentApplication = [passCopy devicePrimaryContactlessPaymentApplication];

              if (!devicePrimaryContactlessPaymentApplication)
              {
                if (reason)
                {
                  v9 = 0;
                  v10 = @"pass doesn't support contactless transaction";
                  goto LABEL_20;
                }

                goto LABEL_30;
              }

              issuerCountryCode = [passCopy issuerCountryCode];
              v14 = [issuerCountryCode isEqualToString:@"JP"];

              if (reason && v14)
              {
                *reason = @"pass has Japan issuer";
              }

              if (v14)
              {
                goto LABEL_30;
              }
            }

            v9 = 1;
            goto LABEL_31;
          }

          if (reason)
          {
            v9 = 0;
            v10 = @"pass is apple balance";
            goto LABEL_20;
          }
        }
      }

      else if (reason)
      {
        v9 = 0;
        v10 = @"device does not have expected biometric authentication type";
        goto LABEL_20;
      }
    }

LABEL_30:
    v9 = 0;
  }

LABEL_31:

  return v9;
}

- (PKEducationViewController)initWithPaymentPass:(id)pass setupContext:(int64_t)context educationContext:(unint64_t)educationContext
{
  passCopy = pass;
  v17.receiver = self;
  v17.super_class = PKEducationViewController;
  v10 = [(PKExplanationViewController *)&v17 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_paymentPass, pass);
    v11->_educationContext = educationContext;
    IsAvailable = PKPearlIsAvailable();
    biometricAuthenticationType = v11->_biometricAuthenticationType;
    if (IsAvailable)
    {
      v14 = biometricAuthenticationType | 2;
    }

    else
    {
      if (biometricAuthenticationType)
      {
LABEL_7:
        navigationItem = [(PKEducationViewController *)v11 navigationItem];
        [navigationItem setHidesBackButton:1 animated:0];

        [(PKExplanationViewController *)v11 setShowDoneButton:0];
        [(PKExplanationViewController *)v11 setShowCancelButton:0];
        goto LABEL_8;
      }

      v14 = 1;
    }

    v11->_biometricAuthenticationType = v14;
    goto LABEL_7;
  }

LABEL_8:

  return v11;
}

- (void)dealloc
{
  [(PKEducationViewController *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v3 dealloc];
}

- (void)loadView
{
  v61[2] = *MEMORY[0x1E69E9840];
  v57.receiver = self;
  v57.super_class = PKEducationViewController;
  [(PKExplanationViewController *)&v57 loadView];
  pkui_userInterfaceIdiomSupportsLargeLayouts = [(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts];
  if (pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
    traitCollection = [(PKEducationViewController *)self traitCollection];
    v5 = [traitCollection userInterfaceIdiom] != 6;
  }

  else
  {
    v5 = 0;
  }

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setDelegate:self];
  [explanationView setShowPrivacyView:0];
  v7 = objc_alloc_init(PKEducationPhone);
  educationBodyView = self->_educationBodyView;
  self->_educationBodyView = v7;

  if (self->_educationContext)
  {
    if (pkui_userInterfaceIdiomSupportsLargeLayouts)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  [explanationView setTopLogoPadding:25.0];
  v9 = PKLocalizedPaymentString(&cfstr_ApplePayEducat.isa);
  [explanationView setTitleText:v9];

  [explanationView setTitleImage:0];
  v54 = *MEMORY[0x1E69DB650];
  v60[0] = *MEMORY[0x1E69DB650];
  v10 = PKOBKBodyTextColor();
  v61[0] = v10;
  v60[1] = *MEMORY[0x1E69DB648];
  v11 = PKOBKBodyFont();
  v61[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];

  v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"APPLE_PAY_EDUCATION"];
  v14 = v13;
  biometricAuthenticationType = self->_biometricAuthenticationType;
  if (biometricAuthenticationType)
  {
    [v13 appendString:@"_TOUCH_ID"];
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if ((biometricAuthenticationType & 2) == 0)
    {
      goto LABEL_13;
    }

    [v13 appendString:@"_FACE_ID"];
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  [v14 appendString:@"_PAD"];
LABEL_13:
  v16 = objc_alloc(MEMORY[0x1E696AD40]);
  v17 = PKLocalizedPaymentString(v14);
  v18 = [v16 initWithString:v17 attributes:v12];

  v19 = [(NSString *)self->_bodyAddition length];
  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = v20;
  if (v19)
  {
    v22 = [v20 initWithString:self->_bodyAddition attributes:v12];
  }

  else
  {
    v23 = PKLocalizedPaymentString(&cfstr_ApplePayEducat_1.isa);
    v22 = [v21 initWithString:v23 attributes:v12];
  }

  v24 = v12;
  [v18 appendAttributedString:v22];

  if (pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
    v25 = objc_alloc_init(MEMORY[0x1E69DD250]);
    largeLayoutHeroBackground = self->_largeLayoutHeroBackground;
    self->_largeLayoutHeroBackground = v25;

    v27 = self->_largeLayoutHeroBackground;
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [(UIView *)v27 setBackgroundColor:secondarySystemBackgroundColor];

    v29 = objc_alloc(MEMORY[0x1E69DCAE0]);
    _heroPadImage = [(PKEducationViewController *)self _heroPadImage];
    v31 = [v29 initWithImage:_heroPadImage];
    largeLayoutHeroImageView = self->_largeLayoutHeroImageView;
    self->_largeLayoutHeroImageView = v31;

    [(UIImageView *)self->_largeLayoutHeroImageView setContentMode:1];
    [(UIView *)self->_largeLayoutHeroBackground addSubview:self->_largeLayoutHeroImageView];
    secondarySystemBackgroundColor2 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [explanationView setTopBackgroundColor:secondarySystemBackgroundColor2];

    [explanationView setTopMargin:44.0];
    [explanationView setHeroView:self->_largeLayoutHeroBackground];
  }

  else
  {
    [explanationView setBodyView:self->_educationBodyView];
    [explanationView setHeroView:0];
    [explanationView setImage:0];
    [explanationView setBodyViewPadding:0.0];
    [(PKExplanationViewController *)self context];
    if ((PKPaymentSetupContextIsSetupAssistant() & 1) == 0)
    {
      v53 = objc_alloc(MEMORY[0x1E696AAB0]);
      v34 = PKLocalizedPaymentString(&cfstr_LearnMoreLink.isa);
      v58[0] = v54;
      linkColor = [MEMORY[0x1E69DC888] linkColor];
      v59[0] = linkColor;
      v58[1] = *MEMORY[0x1E69DB670];
      [MEMORY[0x1E695DFF8] URLWithString:@"https://support.apple.com/HT201239"];
      v36 = v55 = v24;
      v59[1] = v36;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v52 = [v53 initWithString:v34 attributes:v37];

      v24 = v55;
      v38 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v55];
      [v18 appendAttributedString:v38];

      [v18 appendAttributedString:v52];
    }
  }

  v39 = [v18 copy];
  [explanationView setAttributedBodyText:v39];

  if (!pkui_userInterfaceIdiomSupportsLargeLayouts)
  {
LABEL_21:
    paymentPass = self->_paymentPass;
    if (paymentPass)
    {
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __37__PKEducationViewController_loadView__block_invoke;
      v56[3] = &unk_1E8010970;
      v56[4] = self;
      [(PKSecureElementPass *)paymentPass loadContentAsyncWithCompletion:v56];
    }

    else
    {
      defaultImages = [MEMORY[0x1E69B8C10] defaultImages];
      pk_shuffledArray = [defaultImages pk_shuffledArray];
      firstObject = [pk_shuffledArray firstObject];

      v44 = self->_educationBodyView;
      v45 = MEMORY[0x1E69DCAB8];
      v46 = [firstObject imageWithScale:PKUIScreenScale()];
      v47 = [v45 imageWithData:v46];
      [(PKEducationPhone *)v44 setPassImage:v47];
    }
  }

LABEL_24:
  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  v50 = PKLocalizedPaymentString(&cfstr_Continue.isa);
  [primaryButton setTitle:v50 forState:0];

  footerView = [dockView footerView];
  [footerView setSetUpLaterButton:0];
}

uint64_t __37__PKEducationViewController_loadView__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1104);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PKEducationViewController_loadView__block_invoke_2;
  v4[3] = &unk_1E8010970;
  v4[4] = v1;
  return [v2 loadImageSetAsync:0 preheat:1 withCompletion:v4];
}

void __37__PKEducationViewController_loadView__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__PKEducationViewController_loadView__block_invoke_3;
  block[3] = &unk_1E8010970;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __37__PKEducationViewController_loadView__block_invoke_3(uint64_t a1)
{
  v3 = [[PKPassView alloc] initWithPass:*(*(a1 + 32) + 1104) content:5 suppressedContent:887];
  v2 = [(PKPassView *)v3 snapshotOfFrontFaceWithRequestedSize:220.0, 134.0];
  if (v2)
  {
    [*(*(a1 + 32) + 1120) setPassImage:v2];
  }
}

- (void)viewWillLayoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKEducationViewController;
  [(PKExplanationViewController *)&v9 viewWillLayoutSubviews];
  if (self->_largeLayoutHeroBackground && self->_largeLayoutHeroImageView)
  {
    traitCollection = [(PKEducationViewController *)self traitCollection];
    if ([traitCollection userInterfaceIdiom] != 6)
    {
      traitCollection2 = [(PKEducationViewController *)self traitCollection];
      [traitCollection2 verticalSizeClass];
    }

    view = [(PKEducationViewController *)self view];
    [view bounds];
    Width = CGRectGetWidth(v10);

    [(UIImageView *)self->_largeLayoutHeroImageView frame];
    PKSizeAspectFit();
    [(UIView *)self->_largeLayoutHeroBackground setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), Width, v7];
    PKContentAlignmentMake();
    largeLayoutHeroImageView = self->_largeLayoutHeroImageView;
    [(UIView *)self->_largeLayoutHeroBackground bounds];
    PKSizeAlignedInRect();
    [(UIImageView *)largeLayoutHeroImageView setFrame:?];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v6 viewDidAppear:appear];
  [(PKProvisioningAnalyticsSessionUIReporter *)self->_reporter reportViewAppeared];
  v4 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__PKEducationViewController_viewDidAppear___block_invoke;
  block[3] = &unk_1E8010970;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v10 viewWillAppear:appear];
  navigationController = [(PKEducationViewController *)self navigationController];
  navigationItem = [(PKEducationViewController *)self navigationItem];
  v6 = 0.0;
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    leftBarButtonItem = [navigationItem leftBarButtonItem];
    if (leftBarButtonItem)
    {
    }

    else
    {
      rightBarButtonItem = [navigationItem rightBarButtonItem];

      if (!rightBarButtonItem)
      {
        self->_wasNavigationBarHidden = [navigationController isNavigationBarHidden];
        [navigationController setNavigationBarHidden:1];
        v6 = 20.0;
      }
    }
  }

  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setTopMargin:v6];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = PKEducationViewController;
  [(PKEducationViewController *)&v5 viewWillDisappear:disappear];
  if (![(UIViewController *)self pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    navigationController = [(PKEducationViewController *)self navigationController];
    [navigationController setNavigationBarHidden:self->_wasNavigationBarHidden];
  }
}

- (void)explanationViewDidSelectContinue:(id)continue
{
  v7[1] = *MEMORY[0x1E69E9840];
  reporter = self->_reporter;
  v6 = *MEMORY[0x1E69BB158];
  v7[0] = *MEMORY[0x1E69BB160];
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [(PKProvisioningAnalyticsSessionUIReporter *)reporter reportButtonPressed:0 context:v5];

  [(PKEducationViewController *)self performContinue];
}

- (void)performContinue
{
  v3 = _Block_copy(self->_continueHandler);
  continueHandler = self->_continueHandler;
  self->_continueHandler = 0;

  if (v3)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__PKEducationViewController_performContinue__block_invoke;
    v5[3] = &unk_1E8010998;
    objc_copyWeak(&v6, &location);
    v3[2](v3, v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PKEducationViewController *)self invalidate];
  }
}

void __44__PKEducationViewController_performContinue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    WeakRetained = v2;
  }
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_invalidated)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134349056;
      selfCopy = self;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "PKFieldDetectEducationViewController (%{public}p): invalidated.", &v4, 0xCu);
    }

    self->_invalidated = 1;
  }
}

- (id)_heroPadImage
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"EducationPad"];
  v4 = v3;
  if ((self->_biometricAuthenticationType & 2) != 0)
  {
    [v3 appendString:@"-FaceID"];
  }

  v5 = [v4 stringByAppendingString:@"-Dark"];
  v6 = PKUIDynamicImageNamed(v4, v5);

  return v6;
}

- (void)showLoadingUI:(BOOL)i animated:(BOOL)animated
{
  iCopy = i;
  v6 = [(PKEducationViewController *)self view:i];
  [v6 setUserInteractionEnabled:iCopy ^ 1];

  [(PKExplanationViewController *)self showSpinner:iCopy];
}

@end