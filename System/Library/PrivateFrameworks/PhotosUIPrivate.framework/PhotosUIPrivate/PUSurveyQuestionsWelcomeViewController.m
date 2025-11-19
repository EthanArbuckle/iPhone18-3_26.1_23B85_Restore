@interface PUSurveyQuestionsWelcomeViewController
+ (void)presentIfNecessaryFromViewController:(id)a3 presentationHandler:(id)a4 completionHandler:(id)a5;
+ (void)resetLastPresentationInfo;
- (PUSurveyQuestionsWelcomeViewController)initWithCompletionHandler:(id)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
@end

@implementation PUSurveyQuestionsWelcomeViewController

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PUSurveyQuestionsWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke;
  v9[3] = &unk_1E7B80B48;
  v9[4] = self;
  v10 = v6;
  v8.receiver = self;
  v8.super_class = PUSurveyQuestionsWelcomeViewController;
  v7 = v6;
  [(PUSurveyQuestionsWelcomeViewController *)&v8 dismissViewControllerAnimated:v4 completion:v9];
}

void __83__PUSurveyQuestionsWelcomeViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 setInteger:1 forKey:@"LastSurveyQuestionsWelcomeShown"];

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))();
  }

  v4 = [*(a1 + 32) _completionHandler];

  if (v4)
  {
    v5 = [*(a1 + 32) _completionHandler];
    v5[2](v5, 1);

    v6 = *(a1 + 32);

    [v6 _setCompletionHandler:0];
  }
}

- (PUSurveyQuestionsWelcomeViewController)initWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = PXLocalizedString();
  v6 = PXLocalizedString();
  v7 = [MEMORY[0x1E69DCAB8] px_imageNamed:@"Photos_GettingStarted"];
  v15.receiver = self;
  v15.super_class = PUSurveyQuestionsWelcomeViewController;
  v8 = [(PUSurveyQuestionsWelcomeViewController *)&v15 initWithTitle:v5 detailText:v6 icon:v7];
  if (v8)
  {
    v9 = [MEMORY[0x1E69B7D00] boldButton];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = PULocalizedString(@"WHATS_NEW_WELCOME_CONTINUE");
    [v9 setTitle:v10 forState:0];

    [v9 addTarget:v8 action:sel__handleContinueButton_ forControlEvents:0x2000];
    v11 = [(PUSurveyQuestionsWelcomeViewController *)v8 buttonTray];
    [v11 addButton:v9];

    v12 = [MEMORY[0x1E69DCBA0] keyCommandWithInput:@"\r" modifierFlags:0 action:sel__handleContinueButton_];
    [(PUSurveyQuestionsWelcomeViewController *)v8 addKeyCommand:v12];

    [(PUSurveyQuestionsWelcomeViewController *)v8 setModalPresentationStyle:2];
    v13 = [v4 copy];
    [(PUSurveyQuestionsWelcomeViewController *)v8 _setCompletionHandler:v13];
  }

  return v8;
}

+ (void)resetLastPresentationInfo
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"LastSurveyQuestionsWelcomeShown"];
}

+ (void)presentIfNecessaryFromViewController:(id)a3 presentationHandler:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__PUSurveyQuestionsWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke;
  block[3] = &unk_1E7B80A40;
  v15 = v7;
  v16 = v9;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, block);
}

void __117__PUSurveyQuestionsWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke(id *a1)
{
  v2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  [v3 setShouldPrefetchCount:1];
  v4 = [MEMORY[0x1E6978A10] fetchUnansweredQuestionsWithOptions:v3 validQuestionsOnly:0];
  v5 = [v4 count];

  if (v5 && ([MEMORY[0x1E695E000] standardUserDefaults], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "integerForKey:", @"LastSurveyQuestionsWelcomeShown"), v6, v7 <= 0))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __117__PUSurveyQuestionsWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke_2;
    block[3] = &unk_1E7B80A40;
    v10 = a1[5];
    v9 = a1[4];
    v11 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(a1[5] + 2))();
  }
}

void __117__PUSurveyQuestionsWelcomeViewController_presentIfNecessaryFromViewController_presentationHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [[PUSurveyQuestionsWelcomeViewController alloc] initWithCompletionHandler:*(a1 + 40)];
  [*(a1 + 32) presentViewController:v2 animated:1 completion:0];
  (*(*(a1 + 48) + 16))();
}

@end