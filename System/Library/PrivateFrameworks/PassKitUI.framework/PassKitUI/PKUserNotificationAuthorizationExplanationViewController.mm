@interface PKUserNotificationAuthorizationExplanationViewController
- (PKUserNotificationAuthorizationExplanationViewController)initWithController:(id)a3 contentType:(unint64_t)a4 context:(int64_t)a5 dataProvider:(id)a6;
- (id)_analyticsPartialEventDictionaryWithButtonTag:(id)a3 pageTag:(id)a4;
- (unint64_t)_preflightStatus;
- (void)_beginReportingIfNecessary;
- (void)_endReportingIfNecessary;
- (void)_loadContentFromMobileAssets;
- (void)_reportContinueButtonTapped;
- (void)_reportNotNowButtonTapped;
- (void)_reportNotificationAuthorizationButtonTapped:(BOOL)a3;
- (void)_reportNotificationPromptDidAppear;
- (void)_reportViewDidAppear;
- (void)_setPreflightStatus:(unint64_t)a3;
- (void)dealloc;
- (void)explanationViewDidSelectContinue:(id)a3;
- (void)explanationViewDidSelectSetupLater:(id)a3;
- (void)loadView;
- (void)preflightWithCompletion:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation PKUserNotificationAuthorizationExplanationViewController

- (PKUserNotificationAuthorizationExplanationViewController)initWithController:(id)a3 contentType:(unint64_t)a4 context:(int64_t)a5 dataProvider:(id)a6
{
  v11 = a3;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PKUserNotificationAuthorizationExplanationViewController;
  v13 = [(PKExplanationViewController *)&v19 initWithContext:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_controller, a3);
    objc_storeStrong(&v14->_dataProvider, a6);
    v14->_contentTypeToDisplay = a4;
    if (a4 > 6)
    {
      v15 = 0;
    }

    else
    {
      v15 = **(&unk_1E801B9A8 + a4);
    }

    productType = v14->_productType;
    v14->_productType = v15;

    v14->_didBeginWalletSettingsSubject = 0;
    v14->_isPresentingNotificationAuthorizationPrompt = 0;
    v14->_contentLock._os_unfair_lock_opaque = 0;
    v14->_statusLock._os_unfair_lock_opaque = 0;
    switch(a5)
    {
      case 0:
        v17 = MEMORY[0x1E69BAB50];
        goto LABEL_11;
      case 4:
        v17 = MEMORY[0x1E69BAB40];
        goto LABEL_11;
      case 3:
        v17 = MEMORY[0x1E69BAB48];
LABEL_11:
        objc_storeStrong(&v14->_referralSource, *v17);
        break;
    }
  }

  return v14;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PKUserNotificationAuthorizationExplanationViewController;
  [(PKUserNotificationAuthorizationExplanationViewController *)&v4 viewDidAppear:a3];
  [(PKUserNotificationAuthorizationExplanationViewController *)self _beginReportingIfNecessary];
  [(PKUserNotificationAuthorizationExplanationViewController *)self _reportViewDidAppear];
}

- (void)loadView
{
  v26 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PKUserNotificationAuthorizationExplanationViewController;
  [(PKExplanationViewController *)&v23 loadView];
  if (![(PKUserNotificationAuthorizationExplanationViewController *)self _preflightStatus])
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[PKUserNotificationAuthorizationExplanationViewController loadView]";
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Warning - %s loading view before preflight is called. Preflighting now, may cause hang if MobileAssets is slow to respond", buf, 0xCu);
    }

    [(PKUserNotificationAuthorizationExplanationViewController *)self _loadContentFromMobileAssets];
  }

  os_unfair_lock_lock(&self->_contentLock);
  title = self->_title;
  body = self->_body;
  continueString = self->_continueString;
  cgExplanationImage = self->_cgExplanationImage;
  v8 = self->_notNowString;
  v9 = continueString;
  v22 = body;
  v10 = title;
  os_unfair_lock_unlock(&self->_contentLock);
  [(PKExplanationViewController *)self setShowCancelButton:0];
  v11 = [(PKExplanationViewController *)self explanationView];
  [v11 setTitleText:v10];
  [v11 setBodyText:v22];
  [v11 setShowPrivacyView:0];
  v12 = PKProvisioningSecondaryBackgroundColor();
  [v11 setTopBackgroundColor:v12];

  [v11 setImageIgnoresTopSafeArea:1];
  [v11 setForceShowSetupLaterButton:1];
  v13 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:cgExplanationImage];
  [v11 setImage:v13];
  v14 = [v11 imageView];
  [v14 setContentMode:1];

  v15 = [(PKUserNotificationAuthorizationExplanationViewController *)self view];
  [v15 bounds];
  v16 = CGRectGetHeight(v27) * 0.5;

  [v11 setMaxImageHeight:v16];
  v17 = [v11 dockView];
  v18 = [v17 primaryButton];
  v19 = v9;
  [v18 setTitle:v9 forState:0];

  v20 = [v17 footerView];
  v21 = [v20 setUpLaterButton];
  [v21 setTitle:v8 forState:0];

  [(PKUserNotificationAuthorizationController *)self->_controller setPresentedNotificationAuthorizationPromptShown];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKUserNotificationAuthorizationExplanationViewController;
  [(PKUserNotificationAuthorizationExplanationViewController *)&v6 viewDidDisappear:a3];
  nextStepHandler = self->_nextStepHandler;
  if (nextStepHandler)
  {
    nextStepHandler[2]();
    v5 = self->_nextStepHandler;
    self->_nextStepHandler = 0;
  }
}

- (void)dealloc
{
  [(PKUserNotificationAuthorizationExplanationViewController *)self _endReportingIfNecessary];
  v3.receiver = self;
  v3.super_class = PKUserNotificationAuthorizationExplanationViewController;
  [(PKUserNotificationAuthorizationExplanationViewController *)&v3 dealloc];
}

- (void)preflightWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKUserNotificationAuthorizationExplanationViewController *)self _preflightStatus];
  if (v5)
  {
    if (v4)
    {
      v4[2](v4, v5 == 1);
    }
  }

  else
  {
    [(PKUserNotificationAuthorizationExplanationViewController *)self _setPreflightStatus:2];
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __84__PKUserNotificationAuthorizationExplanationViewController_preflightWithCompletion___block_invoke;
    v7[3] = &unk_1E8010DD0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(v6, v7);
  }
}

void __84__PKUserNotificationAuthorizationExplanationViewController_preflightWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loadContentFromMobileAssets];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __84__PKUserNotificationAuthorizationExplanationViewController_preflightWithCompletion___block_invoke_2;
  v3[3] = &unk_1E8010DD0;
  v2 = *(a1 + 40);
  v3[4] = *(a1 + 32);
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

uint64_t __84__PKUserNotificationAuthorizationExplanationViewController_preflightWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _setPreflightStatus:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_loadContentFromMobileAssets
{
  v28 = +[PKMANotificationAuthorizationAssetManager sharedInstance];
  os_unfair_lock_lock(&self->_contentLock);
  v3 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_CONTINUE"];
  continueString = self->_continueString;
  self->_continueString = v3;

  v5 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_NOT_NOW"];
  notNowString = self->_notNowString;
  self->_notNowString = v5;

  contentTypeToDisplay = self->_contentTypeToDisplay;
  if (contentTypeToDisplay <= 2)
  {
    if (contentTypeToDisplay)
    {
      if (contentTypeToDisplay == 1)
      {
        v24 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_APPLE_CARD"];
        title = self->_title;
        self->_title = v24;

        v15 = @"NOTIFICATIONS_BODY_APPLE_CARD";
      }

      else
      {
        if (contentTypeToDisplay != 2)
        {
          goto LABEL_18;
        }

        v13 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_TRANSIT"];
        v14 = self->_title;
        self->_title = v13;

        v15 = @"NOTIFICATIONS_BODY_TRANSIT";
      }
    }

    else
    {
      v18 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_GENERIC"];
      v19 = self->_title;
      self->_title = v18;

      v15 = @"NOTIFICATIONS_BODY_GENERIC";
    }

    goto LABEL_16;
  }

  if (contentTypeToDisplay > 4)
  {
    if (contentTypeToDisplay == 5)
    {
      v22 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_PAYMENT_PASS"];
      v23 = self->_title;
      self->_title = v22;

      v15 = @"NOTIFICATIONS_BODY_PAYMENT_PASS";
    }

    else
    {
      if (contentTypeToDisplay != 6)
      {
        goto LABEL_18;
      }

      v16 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_BOARDING_PASS"];
      v17 = self->_title;
      self->_title = v16;

      v15 = @"NOTIFICATIONS_BODY_BOARDING_PASS";
    }

    goto LABEL_16;
  }

  if (contentTypeToDisplay == 3)
  {
    v20 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_IDENTITY"];
    v21 = self->_title;
    self->_title = v20;

    v15 = @"NOTIFICATIONS_BODY_IDENTITY";
LABEL_16:
    v26 = [v28 notificationAuthorizationString:v15];
    body = self->_body;
    self->_body = v26;
    goto LABEL_17;
  }

  v8 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_TITLE_IDENTITY"];
  v9 = self->_title;
  self->_title = v8;

  body = [(PKUserNotificationAuthorizationController *)self->_controller relevantPass];
  v11 = [v28 notificationAuthorizationString:@"NOTIFICATIONS_BODY_IDENTITY_CARDNAME" pass:body];
  v12 = self->_body;
  self->_body = v11;

LABEL_17:
LABEL_18:
  v27 = [MEMORY[0x1E695DF58] currentLocale];
  self->_cgExplanationImage = [v28 notificationAuthorizationImageForLocale:v27];

  os_unfair_lock_unlock(&self->_contentLock);
}

- (unint64_t)_preflightStatus
{
  os_unfair_lock_lock(&self->_statusLock);
  preflightStatus = self->_preflightStatus;
  os_unfair_lock_unlock(&self->_statusLock);
  return preflightStatus;
}

- (void)_setPreflightStatus:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_statusLock);
  self->_preflightStatus = a3;

  os_unfair_lock_unlock(&self->_statusLock);
}

- (void)explanationViewDidSelectContinue:(id)a3
{
  [(PKUserNotificationAuthorizationExplanationViewController *)self _reportContinueButtonTapped];
  [(PKUserNotificationAuthorizationExplanationViewController *)self _reportNotificationPromptDidAppear];
  self->_isPresentingNotificationAuthorizationPrompt = 1;
  controller = self->_controller;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke;
  v5[3] = &unk_1E8013D38;
  v5[4] = self;
  [(PKUserNotificationAuthorizationController *)controller requestNotificationAuthorizationWithCompletion:v5];
}

void __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke_2;
  v2[3] = &unk_1E8013F80;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v2);
}

uint64_t __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke_3;
  v3[3] = &unk_1E8013F80;
  v3[4] = v1;
  v4 = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __93__PKUserNotificationAuthorizationExplanationViewController_explanationViewDidSelectContinue___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _reportNotificationAuthorizationButtonTapped:*(a1 + 40)];
  *(*(a1 + 32) + 1184) = 0;
  return result;
}

- (void)explanationViewDidSelectSetupLater:(id)a3
{
  [(PKUserNotificationAuthorizationExplanationViewController *)self _reportNotNowButtonTapped];

  [(PKUserNotificationAuthorizationExplanationViewController *)self dismissViewControllerAnimated:1 completion:0];
}

- (void)_beginReportingIfNecessary
{
  if (!self->_didBeginWalletSettingsSubject && self->_referralSource == *MEMORY[0x1E69BAB40])
  {
    self->_didBeginWalletSettingsSubject = 1;
    [MEMORY[0x1E69B8540] beginSubjectReporting:*MEMORY[0x1E69BB718]];
  }
}

- (void)_endReportingIfNecessary
{
  if (self->_referralSource == *MEMORY[0x1E69BAB40])
  {
    [MEMORY[0x1E69B8540] endSubjectReporting:*MEMORY[0x1E69BB718]];
  }
}

- (void)_reportViewDidAppear
{
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 setObject:*MEMORY[0x1E69BA818] forKey:*MEMORY[0x1E69BA680]];
  [v6 setObject:*MEMORY[0x1E69BAB58] forKey:*MEMORY[0x1E69BABE8]];
  [v6 safelySetObject:self->_productType forKey:*MEMORY[0x1E69BAC90]];
  [v6 safelySetObject:self->_referralSource forKey:*MEMORY[0x1E69BB0E0]];
  v3 = MEMORY[0x1E69B8540];
  v4 = *MEMORY[0x1E69BB718];
  v5 = [v6 copy];
  [v3 subject:v4 sendEvent:v5];
}

- (void)_reportNotificationPromptDidAppear
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69B8540];
  v3 = *MEMORY[0x1E69BB718];
  v4 = *MEMORY[0x1E69BABE8];
  v7[0] = *MEMORY[0x1E69BA680];
  v7[1] = v4;
  v5 = *MEMORY[0x1E69BAB30];
  v8[0] = *MEMORY[0x1E69BA818];
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 subject:v3 sendEvent:v6];
}

- (void)_reportContinueButtonTapped
{
  v2 = [(PKUserNotificationAuthorizationExplanationViewController *)self _analyticsPartialEventDictionaryWithButtonTag:*MEMORY[0x1E69BA500] pageTag:*MEMORY[0x1E69BAB58]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB718] sendEvent:v2];
}

- (void)_reportNotNowButtonTapped
{
  v2 = [(PKUserNotificationAuthorizationExplanationViewController *)self _analyticsPartialEventDictionaryWithButtonTag:*MEMORY[0x1E69BAB28] pageTag:*MEMORY[0x1E69BAB58]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB718] sendEvent:v2];
}

- (void)_reportNotificationAuthorizationButtonTapped:(BOOL)a3
{
  v3 = MEMORY[0x1E69BA2E8];
  if (!a3)
  {
    v3 = MEMORY[0x1E69BA618];
  }

  v4 = [(PKUserNotificationAuthorizationExplanationViewController *)self _analyticsPartialEventDictionaryWithButtonTag:*v3 pageTag:*MEMORY[0x1E69BAB30]];
  [MEMORY[0x1E69B8540] subject:*MEMORY[0x1E69BB718] sendEvent:v4];
}

- (id)_analyticsPartialEventDictionaryWithButtonTag:(id)a3 pageTag:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setObject:*MEMORY[0x1E69BA6F0] forKeyedSubscript:*MEMORY[0x1E69BA680]];
  [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69BA440]];

  [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69BABE8]];
  v9 = [v8 copy];

  return v9;
}

@end