@interface WBSAppReviewPromptManager
- (BOOL)_shouldPromptForReview;
- (WBSAppReviewPromptManager)initWithPresenter:(id)presenter extensionsController:(id)controller;
- (WBSAppReviewPromptPresenting)presenter;
- (void)_presentIfNeeded;
- (void)didDismissReaderWithScrollPercentage:(double)percentage dateReaderOpened:(id)opened;
@end

@implementation WBSAppReviewPromptManager

- (WBSAppReviewPromptManager)initWithPresenter:(id)presenter extensionsController:(id)controller
{
  presenterCopy = presenter;
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = WBSAppReviewPromptManager;
  v8 = [(WBSAppReviewPromptManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presenter, presenterCopy);
    objc_storeStrong(&v9->_webExtensionsController, controller);
    v10 = v9;
  }

  return v9;
}

- (void)didDismissReaderWithScrollPercentage:(double)percentage dateReaderOpened:(id)opened
{
  openedCopy = opened;
  if (percentage >= 0.25)
  {
    v10 = openedCopy;
    [openedCopy safari_timeIntervalUntilNow];
    openedCopy = v10;
    if (v7 >= 30.0)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [standardUserDefaults BOOLForKey:@"DebugDidStayInReaderMinimumTime"];

      openedCopy = v10;
      if ((v9 & 1) == 0)
      {
        [(WBSAppReviewPromptManager *)self _presentIfNeeded];
        openedCopy = v10;
      }
    }
  }
}

- (void)_presentIfNeeded
{
  if ([(WBSAppReviewPromptManager *)self _shouldPromptForReview])
  {
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [WeakRetained presentPromptForAppReviewPromptManager:self];
  }
}

- (BOOL)_shouldPromptForReview
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([standardUserDefaults BOOLForKey:@"DebugSatisfiedUserPreferenceKey"] & 1) != 0 || (-[WBSExtensionsController enabledExtensions](self->_webExtensionsController, "enabledExtensions"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5) || objc_msgSend(standardUserDefaults, "integerForKey:", *MEMORY[0x1E69C93C8]) > 1 || (objc_msgSend(standardUserDefaults, "BOOLForKey:", @"DebugDidTapAtLeastTwoReadingListArticles"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [standardUserDefaults BOOLForKey:*MEMORY[0x1E69C9660]];
  }

  return v6;
}

- (WBSAppReviewPromptPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end