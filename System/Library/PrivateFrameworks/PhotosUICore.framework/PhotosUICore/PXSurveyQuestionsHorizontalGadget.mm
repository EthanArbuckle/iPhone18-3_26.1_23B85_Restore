@interface PXSurveyQuestionsHorizontalGadget
- (id)alertControllerForHideAction;
- (id)alertControllerForInfoAction;
- (void)_checkCanNavigate:(BOOL *)navigate toDestination:(id)destination iterator:(id)iterator;
- (void)_hideSurveyQuestionsUntilDate:(id)date;
- (void)_sendRequestConsentFormMail;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)viewDidLayoutSubviews;
@end

@implementation PXSurveyQuestionsHorizontalGadget

- (void)_checkCanNavigate:(BOOL *)navigate toDestination:(id)destination iterator:(id)iterator
{
  iteratorCopy = iterator;
  px_isVisible = [(PXSurveyQuestionsHorizontalGadget *)self px_isVisible];
  *navigate = px_isVisible;
  if (px_isVisible)
  {
    [iteratorCopy stop];
  }

  else
  {
    v9 = [[PXExpectation alloc] initWithLabelFormat:@"%@'s next view layout", self];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PXSurveyQuestionsHorizontalGadget__checkCanNavigate_toDestination_iterator___block_invoke;
    v10[3] = &unk_1E774C5C0;
    v11 = iteratorCopy;
    [(PXExpectation *)v9 performWhenFulfilled:v10 timeout:3.0];
    [(PXSurveyQuestionsHorizontalGadget *)self setNextViewLayoutExpectation:v9];
  }
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  horizontalGadgetDelegate = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  v10 = [horizontalGadgetDelegate radarConfigurationForHorizontalCollectionGadget:self];

  v11 = [[PXSurveyRadarReporterViewController alloc] initWithConfiguration:v10 completionHandler:0];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  objc_initWeak(&location, self);
  v12[1] = MEMORY[0x1E69E9820];
  v12[2] = 3221225472;
  v12[3] = __85__PXSurveyQuestionsHorizontalGadget_navigateToDestination_options_completionHandler___block_invoke;
  v12[4] = &unk_1E77411A0;
  objc_copyWeak(&v13, &location);
  v12[6] = v15;
  v12[5] = destinationCopy;
  handlerCopy;
  objc_copyWeak(v12, &location);
  v11;
  PXIterateAsynchronously();
}

void __85__PXSurveyQuestionsHorizontalGadget_navigateToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _checkCanNavigate:*(*(a1 + 40) + 8) + 24 toDestination:*(a1 + 32) iterator:v3];
}

uint64_t __85__PXSurveyQuestionsHorizontalGadget_navigateToDestination_options_completionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 40) + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:0];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)_sendRequestConsentFormMail
{
  if ([getMFMailComposeViewControllerClass_179932() canSendMail])
  {
    v5 = objc_alloc_init(getMFMailComposeViewControllerClass_179932());
    [v5 setMailComposeDelegate:self];
    [v5 setSubject:@"Photos Challenge Informed Consent Agreement Request"];
    [v5 setToRecipients:&unk_1F1911260];
    [v5 setMessageBody:@"Photos Challenge Informed Consent Agreement Request" isHTML:0];
    [(PXSurveyQuestionsHorizontalGadget *)self presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Unable to create email" message:@"You need to set up an account in Mail in order submit your request to obtain your agreed to informed consent form." preferredStyle:1];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__PXSurveyQuestionsHorizontalGadget__sendRequestConsentFormMail__block_invoke;
    v6[3] = &unk_1E7749600;
    v6[4] = self;
    v4 = [MEMORY[0x1E69DC648] actionWithTitle:@"OK" style:1 handler:v6];
    [v3 addAction:v4];
    [(PXSurveyQuestionsHorizontalGadget *)self presentViewController:v3 animated:1 completion:0];
  }
}

- (void)_hideSurveyQuestionsUntilDate:(id)date
{
  dateCopy = date;
  horizontalGadgetDelegate = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  [horizontalGadgetDelegate horizontalCollectionGadget:self hideUntilDate:dateCopy];
}

- (id)alertControllerForInfoAction
{
  IsAppleInternal = PXSurveyQuestionIsAppleInternal();
  horizontalGadgetDelegate = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  v5 = [horizontalGadgetDelegate infoAlertTitleForHorizontalCollectionGadget:self];

  if (IsAppleInternal)
  {
    horizontalGadgetDelegate2 = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
    v7 = [horizontalGadgetDelegate2 infoAlertMessageForHorizontalCollectionGadget:self];

    v8 = @"PXInternalPhotosChallengeInfoDonateDataButton";
  }

  else
  {
    v7 = PXLocalizedStringFromTable(@"SURVEY_QUESTIONS_PHOTOS_WELCOME_BODY_PROFILE", @"PhotosUICore");
    v8 = @"PXInternalPhotosChallengeInfoRequestConsentFormButton";
  }

  v9 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v5 message:v7 preferredStyle:0];
  v10 = MEMORY[0x1E69DC648];
  v11 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeInfoCloseButton", @"PhotosUICore");
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForInfoAction__block_invoke;
  v25[3] = &unk_1E7749600;
  v12 = v9;
  v26 = v12;
  v13 = [v10 actionWithTitle:v11 style:1 handler:v25];

  [v12 addAction:v13];
  v14 = PXLocalizedStringFromTable(v8, @"PhotosUICore");
  v15 = MEMORY[0x1E69DC648];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForInfoAction__block_invoke_2;
  v21[3] = &unk_1E7740950;
  v16 = v12;
  v24 = IsAppleInternal;
  v22 = v16;
  selfCopy = self;
  v17 = [v15 actionWithTitle:v14 style:0 handler:v21];
  [v16 addAction:v17];
  horizontalGadgetDelegate3 = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
  [horizontalGadgetDelegate3 horizontalCollectionGadget:self configureCustomInfoAlertActionsForAlertController:v16];

  v19 = v16;
  return v16;
}

uint64_t __65__PXSurveyQuestionsHorizontalGadget_alertControllerForInfoAction__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForInfoAction__block_invoke_3;
  v3[3] = &unk_1E7749428;
  v4 = *(a1 + 48);
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForInfoAction__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    v4 = [v3 horizontalGadgetDelegate];
    v6 = [v4 radarConfigurationForHorizontalCollectionGadget:*(a1 + 32)];

    v5 = [[PXSurveyRadarReporterViewController alloc] initWithConfiguration:v6 completionHandler:0];
    [*(a1 + 32) presentViewController:v5 animated:1 completion:0];
  }

  else
  {

    [v3 _sendRequestConsentFormMail];
  }
}

- (id)alertControllerForHideAction
{
  v3 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v4 = MEMORY[0x1E69DC648];
  v5 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideCancel", @"PhotosUICore");
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke;
  v40[3] = &unk_1E7749600;
  v6 = v3;
  v41 = v6;
  v7 = [v4 actionWithTitle:v5 style:1 handler:v40];

  v8 = MEMORY[0x1E69DC648];
  v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForToday", @"PhotosUICore");
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_2;
  v37[3] = &unk_1E774A2C8;
  v10 = v6;
  v38 = v10;
  selfCopy = self;
  v11 = [v8 actionWithTitle:v9 style:0 handler:v37];

  v12 = MEMORY[0x1E69DC648];
  v13 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForAWeek", @"PhotosUICore");
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_4;
  v34[3] = &unk_1E774A2C8;
  v14 = v10;
  v35 = v14;
  selfCopy2 = self;
  v15 = [v12 actionWithTitle:v13 style:0 handler:v34];

  IsAppleInternal = PXSurveyQuestionIsAppleInternal();
  if (IsAppleInternal)
  {
    horizontalGadgetDelegate = [(PXHorizontalCollectionGadget *)self horizontalGadgetDelegate];
    v18 = [horizontalGadgetDelegate hideForeverAlertMessageForHorizontalCollectionGadget:self];
  }

  else
  {
    v18 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForeverActionMessageProfile", @"PhotosUICore");
  }

  v19 = MEMORY[0x1E69DC648];
  v20 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForever", @"PhotosUICore");
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_6;
  v29 = &unk_1E7740928;
  v21 = v14;
  v30 = v21;
  v31 = v18;
  v33 = IsAppleInternal;
  selfCopy3 = self;
  v22 = v18;
  v23 = [v19 actionWithTitle:v20 style:2 handler:&v26];

  [v21 addAction:{v7, v26, v27, v28, v29}];
  [v21 addAction:v11];
  [v21 addAction:v15];
  [v21 addAction:v23];
  v24 = v21;

  return v21;
}

uint64_t __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_3;
  v3[3] = &unk_1E774C648;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

uint64_t __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_4(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_5;
  v3[3] = &unk_1E774C648;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_6(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_7;
  v5[3] = &unk_1E774B368;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v8 = *(a1 + 56);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 dismissViewControllerAnimated:1 completion:v5];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x1E69DC650];
  v3 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForeverActionTitle", @"PhotosUICore");
  v4 = [v2 alertControllerWithTitle:v3 message:*(a1 + 32) preferredStyle:0];

  v5 = MEMORY[0x1E69DC648];
  v6 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideCancel", @"PhotosUICore");
  v7 = [v5 actionWithTitle:v6 style:1 handler:0];
  [v4 addAction:v7];

  if (*(a1 + 48) == 1)
  {
    v8 = MEMORY[0x1E69DC648];
    v9 = PXLocalizedStringFromTable(@"PXInternalPhotosChallengeHideForever", @"PhotosUICore");
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_8;
    v11[3] = &unk_1E7749600;
    v11[4] = *(a1 + 40);
    v10 = [v8 actionWithTitle:v9 style:0 handler:v11];
    [v4 addAction:v10];
  }

  [*(a1 + 40) presentViewController:v4 animated:1 completion:0];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  [v1 _hideSurveyQuestionsUntilDate:v2];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_5(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v5 dateByAddingUnit:0x2000 value:1 toDate:v2 options:0];

  v4 = [v5 startOfDayForDate:v3];
  [*(a1 + 32) _hideSurveyQuestionsUntilDate:v4];
}

void __65__PXSurveyQuestionsHorizontalGadget_alertControllerForHideAction__block_invoke_3(uint64_t a1)
{
  v5 = [MEMORY[0x1E695DEE8] currentCalendar];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = [v5 dateByAddingUnit:16 value:1 toDate:v2 options:0];

  v4 = [v5 startOfDayForDate:v3];
  [*(a1 + 32) _hideSurveyQuestionsUntilDate:v4];
}

- (void)presentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  parentViewController = [(PXSurveyQuestionsHorizontalGadget *)self parentViewController];

  if (parentViewController)
  {
    v14.receiver = self;
    v14.super_class = PXSurveyQuestionsHorizontalGadget;
    [(PXSurveyQuestionsHorizontalGadget *)&v14 presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
    rootViewController = [px_firstKeyWindow rootViewController];

    [rootViewController presentViewController:controllerCopy animated:animatedCopy completion:completionCopy];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = PXSurveyQuestionsHorizontalGadget;
  [(PXGadgetUIViewController *)&v4 viewDidLayoutSubviews];
  nextViewLayoutExpectation = [(PXSurveyQuestionsHorizontalGadget *)self nextViewLayoutExpectation];
  [nextViewLayoutExpectation fulfill];

  [(PXSurveyQuestionsHorizontalGadget *)self setNextViewLayoutExpectation:0];
}

@end