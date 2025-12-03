@interface SKUIReviewInAppController
- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review;
- (SKUIReviewInAppController)init;
- (SKUIReviewInAppController)initWithConfiguration:(id)configuration;
- (void)_composeReviewViewControllerDidFinish:(id)finish result:(unint64_t)result;
- (void)_finishWithResult:(unint64_t)result error:(id)error;
- (void)_presentAlertForDialog:(id)dialog;
- (void)_presentRatingPrompt;
- (void)_presentReviewComposer;
- (void)_presentWriteReview;
- (void)_promptForStarRatingDuringCompose:(id)compose;
- (void)_submitRating:(int64_t)rating completion:(id)completion;
- (void)fetchURLsForItemID:(id)d success:(id)success failure:(id)failure;
- (void)presentReviewComposerRedesign:(id)redesign appID:(id)d completion:(id)completion;
- (void)start;
@end

@implementation SKUIReviewInAppController

- (SKUIReviewInAppController)init
{
  v3 = objc_alloc_init(SKUIReviewInAppConfiguration);
  v4 = [(SKUIReviewInAppController *)self initWithConfiguration:v3];

  return v4;
}

- (SKUIReviewInAppController)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SKUIReviewInAppController;
  v6 = [(SKUIReviewInAppController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (void)start
{
  objc_initWeak(&location, self);
  itemID = [(SKUIReviewInAppConfiguration *)self->_configuration itemID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__SKUIReviewInAppController_start__block_invoke;
  v6[3] = &unk_2781FE610;
  objc_copyWeak(&v7, &location);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__SKUIReviewInAppController_start__block_invoke_2;
  v4[3] = &unk_2781FE638;
  objc_copyWeak(&v5, &location);
  [(SKUIReviewInAppController *)self fetchURLsForItemID:itemID success:v6 failure:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __34__SKUIReviewInAppController_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SKUIReviewInAppController_start__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __34__SKUIReviewInAppController_start__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 1, a1[4]);
    objc_storeStrong(v3 + 2, a1[5]);
    [v3 _presentRatingPrompt];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __34__SKUIReviewInAppController_start__block_invoke_2_cold_1();
  }
}

void __34__SKUIReviewInAppController_start__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__SKUIReviewInAppController_start__block_invoke_2_3;
  v5[3] = &unk_2781FB310;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __34__SKUIReviewInAppController_start__block_invoke_2_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishWithResult:0 error:*(a1 + 32)];
}

- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review
{
  controllerCopy = controller;
  [review rating];
  v8 = v7;
  if (v7 < 0.00000011921)
  {
    [(SKUIReviewInAppController *)self _promptForStarRatingDuringCompose:controllerCopy];
  }

  return v8 >= 0.00000011921;
}

- (void)_composeReviewViewControllerDidFinish:(id)finish result:(unint64_t)result
{
  finishCopy = finish;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__SKUIReviewInAppController__composeReviewViewControllerDidFinish_result___block_invoke;
  v8[3] = &unk_2781FB180;
  objc_copyWeak(v9, &location);
  v9[1] = result;
  [finishCopy dismissViewControllerAnimated:1 completion:v8];
  composeViewController = self->_composeViewController;
  self->_composeViewController = 0;

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __74__SKUIReviewInAppController__composeReviewViewControllerDidFinish_result___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithResult:*(a1 + 40) error:0];
}

- (void)_finishWithResult:(unint64_t)result error:(id)error
{
  errorCopy = error;
  completion = [(SKUIReviewInAppController *)self completion];

  if (completion)
  {
    completion2 = [(SKUIReviewInAppController *)self completion];
    (completion2)[2](completion2, result, errorCopy);
  }
}

- (void)_presentRatingPrompt
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = MEMORY[0x277CCACA8];
  v5 = [v3 localizedStringForKey:@"IN_APP_REVIEW_RATE_TITLE" value:&stru_2827FFAC8 table:0];
  configuration = [(SKUIReviewInAppController *)self configuration];
  title = [configuration title];
  v28 = [v4 stringWithFormat:v5, title];

  v26 = v3;
  v8 = [v3 localizedStringForKey:@"IN_APP_REVIEW_RATE_MESSAGE" value:&stru_2827FFAC8 table:0];
  configuration2 = [(SKUIReviewInAppController *)self configuration];
  customDescription = [configuration2 customDescription];
  v25 = v8;
  if (customDescription)
  {
    v11 = MEMORY[0x277CCACA8];
    configuration3 = [(SKUIReviewInAppController *)self configuration];
    customDescription2 = [configuration3 customDescription];
    v27 = [v11 stringWithFormat:@"%@\n%@", customDescription2, v8, v8];
  }

  else
  {
    v27 = v8;
  }

  configuration4 = [(SKUIReviewInAppController *)self configuration];
  icon = [configuration4 icon];

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__SKUIReviewInAppController__presentRatingPrompt__block_invoke;
  aBlock[3] = &unk_2781FE660;
  objc_copyWeak(&v32, location);
  v16 = _Block_copy(aBlock);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __49__SKUIReviewInAppController__presentRatingPrompt__block_invoke_2;
  v29[3] = &unk_2781FE688;
  objc_copyWeak(&v30, location);
  v17 = _Block_copy(v29);
  configuration5 = [(SKUIReviewInAppController *)self configuration];
  isSandboxed = [configuration5 isSandboxed];
  configuration6 = [(SKUIReviewInAppController *)self configuration];
  v21 = +[ReviewInAppRatingViewController makeRatingControllerWithTitle:message:icon:disableSubmit:isNativeVision:ratingHandler:completion:](ReviewInAppRatingViewController, "makeRatingControllerWithTitle:message:icon:disableSubmit:isNativeVision:ratingHandler:completion:", v28, v27, icon, isSandboxed, [configuration6 isNativeVisionApp], v16, v17);
  [(SKUIReviewInAppController *)self setRatingViewController:v21];

  configuration7 = [(SKUIReviewInAppController *)self configuration];
  viewController = [configuration7 viewController];
  ratingViewController = [(SKUIReviewInAppController *)self ratingViewController];
  [viewController presentViewController:ratingViewController animated:1 completion:0];

  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(location);
}

void __49__SKUIReviewInAppController__presentRatingPrompt__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _submitRating:a2 completion:v5];
}

void __49__SKUIReviewInAppController__presentRatingPrompt__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      [WeakRetained _presentReviewComposer];
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v5 = 1;
LABEL_10:
      [WeakRetained _finishWithResult:v5 error:0];
    }
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"An error occurred while submitting an in app rating.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v6 errorWithDomain:0x282811F08 code:0 userInfo:v7];

    [v4 _finishWithResult:0 error:v8];
  }
}

- (void)_presentReviewComposer
{
  objc_initWeak(&location, self);
  viewController = [(SKUIReviewInAppConfiguration *)self->_configuration viewController];
  itemID = [(SKUIReviewInAppConfiguration *)self->_configuration itemID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SKUIReviewInAppController__presentReviewComposer__block_invoke;
  v5[3] = &unk_2781FE6B0;
  objc_copyWeak(&v6, &location);
  [(SKUIReviewInAppController *)self presentReviewComposerRedesign:viewController appID:itemID completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __51__SKUIReviewInAppController__presentReviewComposer__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _finishWithResult:a2 error:v5];
}

- (void)_submitRating:(int64_t)rating completion:(id)completion
{
  v48[2] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  starRatingQueue = [(SKUIReviewInAppController *)self starRatingQueue];

  if (!starRatingQueue)
  {
    if (self->_rateURL)
    {
      configuration = [(SKUIReviewInAppController *)self configuration];
      storeExternalVersionID = [configuration storeExternalVersionID];

      if (storeExternalVersionID)
      {
        v16 = [SKUIReviewConfiguration alloc];
        v47[0] = @"inlineRatingUrl";
        absoluteString = [(NSURL *)self->_rateURL absoluteString];
        v47[1] = @"storeExternalVersionID";
        v48[0] = absoluteString;
        configuration2 = [(SKUIReviewInAppController *)self configuration];
        storeExternalVersionID2 = [configuration2 storeExternalVersionID];
        v48[1] = storeExternalVersionID2;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
        v21 = [(SKUIReviewConfiguration *)v16 initWithConfigurationDictionary:v20];

        v22 = [[SKUIStarRatingQueue alloc] initWithReviewConfiguration:v21];
        [(SKUIReviewInAppController *)self setStarRatingQueue:v22];

        configuration3 = [(SKUIReviewInAppController *)self configuration];
        viewController = [configuration3 viewController];
        view = [viewController view];
        window = [view window];
        starRatingQueue2 = [(SKUIReviewInAppController *)self starRatingQueue];
        [starRatingQueue2 setWindow:window];
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [(SKUIReviewInAppController *)self _submitRating:v36 completion:v37, v38, v39, v40, v41, v42];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(SKUIReviewInAppController *)self _submitRating:v29 completion:v30, v31, v32, v33, v34, v35];
    }
  }

  starRatingQueue3 = [(SKUIReviewInAppController *)self starRatingQueue];

  if (starRatingQueue3)
  {
    starRatingQueue4 = [(SKUIReviewInAppController *)self starRatingQueue];
    configuration4 = [(SKUIReviewInAppController *)self configuration];
    itemID = [configuration4 itemID];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __54__SKUIReviewInAppController__submitRating_completion___block_invoke;
    v45[3] = &unk_2781FE6D8;
    v12 = &v46;
    v46 = completionCopy;
    v13 = completionCopy;
    [starRatingQueue4 setRating:rating forItemID:itemID completionBlock:v45];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SKUIReviewInAppController__submitRating_completion___block_invoke_2;
    block[3] = &unk_2781F9990;
    v12 = &v44;
    v44 = completionCopy;
    v28 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __54__SKUIReviewInAppController__submitRating_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __54__SKUIReviewInAppController__submitRating_completion___block_invoke_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SKUIReviewInAppController__submitRating_completion___block_invoke_34;
  v13[3] = &unk_2781FB5B0;
  v14 = *(a1 + 32);
  v15 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v13);
}

uint64_t __54__SKUIReviewInAppController__submitRating_completion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t __54__SKUIReviewInAppController__submitRating_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (void)_presentWriteReview
{
  p_composeViewController = &self->_composeViewController;
  if (!self->_composeViewController)
  {
    v4 = objc_alloc_init(SKUIComposeReviewViewController);
    [(SKUIComposeReviewViewController *)v4 setDelegate:self];
    objc_storeStrong(p_composeViewController, v4);
    objc_initWeak(&location, self);
    writeReviewURL = self->_writeReviewURL;
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __48__SKUIReviewInAppController__presentWriteReview__block_invoke;
    v11 = &unk_2781FA340;
    objc_copyWeak(&v12, &location);
    [(SKUIComposeReviewViewController *)v4 loadReviewWithURL:writeReviewURL completionBlock:&v8];
    v6 = [(SKUIReviewInAppController *)self configuration:v8];
    viewController = [v6 viewController];
    [viewController presentViewController:v4 animated:1 completion:0];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __48__SKUIReviewInAppController__presentWriteReview__block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if ((a2 & 1) == 0)
  {
    [WeakRetained _finishWithResult:0 error:v7];
  }
}

- (void)_presentAlertForDialog:(id)dialog
{
  dialogCopy = dialog;
  if (dialogCopy)
  {
    v10 = dialogCopy;
    dialogController = self->_dialogController;
    if (!dialogController)
    {
      v6 = objc_alloc_init(SKUIStoreDialogController);
      v7 = self->_dialogController;
      self->_dialogController = v6;

      dialogController = self->_dialogController;
    }

    configuration = [(SKUIReviewInAppController *)self configuration];
    viewController = [configuration viewController];
    [(SKUIStoreDialogController *)dialogController presentDialog:v10 fromViewController:viewController];

    dialogCopy = v10;
  }
}

- (void)_promptForStarRatingDuringCompose:(id)compose
{
  composeCopy = compose;
  objc_initWeak(&location, composeCopy);
  starRatingAlertController = [MEMORY[0x277CDD390] starRatingAlertController];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __63__SKUIReviewInAppController__promptForStarRatingDuringCompose___block_invoke;
  v8 = &unk_2781FE700;
  objc_copyWeak(&v9, &location);
  [starRatingAlertController setCompletion:&v5];
  [composeCopy presentViewController:starRatingAlertController animated:1 completion:{0, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __63__SKUIReviewInAppController__promptForStarRatingDuringCompose___block_invoke(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *&v4 = a3;
    [WeakRetained setRating:v4];
    [WeakRetained submitReview];
  }
}

- (void)presentReviewComposerRedesign:(id)redesign appID:(id)d completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (d)
  {
    v9 = sub_215F09818();
    d = v10;
  }

  else
  {
    v9 = 0;
  }

  _Block_copy(v8);
  redesignCopy = redesign;
  selfCopy = self;
  sub_215EBBE5C(redesign, v9, d, selfCopy, v8);
  _Block_release(v8);
}

- (void)fetchURLsForItemID:(id)d success:(id)success failure:(id)failure
{
  v8 = _Block_copy(success);
  v9 = _Block_copy(failure);
  if (d)
  {
    v10 = sub_215F09818();
    d = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  selfCopy = self;
  sub_215EBD45C(v10, d, sub_215EBE6D0, v12, sub_215EBE730, v13);
}

@end