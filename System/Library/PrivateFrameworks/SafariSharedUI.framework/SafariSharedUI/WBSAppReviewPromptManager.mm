@interface WBSAppReviewPromptManager
- (BOOL)_shouldPromptForReview;
- (WBSAppReviewPromptManager)initWithPresenter:(id)a3 extensionsController:(id)a4;
- (WBSAppReviewPromptPresenting)presenter;
- (void)_presentIfNeeded;
- (void)didDismissReaderWithScrollPercentage:(double)a3 dateReaderOpened:(id)a4;
@end

@implementation WBSAppReviewPromptManager

- (WBSAppReviewPromptManager)initWithPresenter:(id)a3 extensionsController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WBSAppReviewPromptManager;
  v8 = [(WBSAppReviewPromptManager *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_presenter, v6);
    objc_storeStrong(&v9->_webExtensionsController, a4);
    v10 = v9;
  }

  return v9;
}

- (void)didDismissReaderWithScrollPercentage:(double)a3 dateReaderOpened:(id)a4
{
  v6 = a4;
  if (a3 >= 0.25)
  {
    v10 = v6;
    [v6 safari_timeIntervalUntilNow];
    v6 = v10;
    if (v7 >= 30.0)
    {
      v8 = [MEMORY[0x1E695E000] standardUserDefaults];
      v9 = [v8 BOOLForKey:@"DebugDidStayInReaderMinimumTime"];

      v6 = v10;
      if ((v9 & 1) == 0)
      {
        [(WBSAppReviewPromptManager *)self _presentIfNeeded];
        v6 = v10;
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
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v3 BOOLForKey:@"DebugSatisfiedUserPreferenceKey"] & 1) != 0 || (-[WBSExtensionsController enabledExtensions](self->_webExtensionsController, "enabledExtensions"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v5) || objc_msgSend(v3, "integerForKey:", *MEMORY[0x1E69C93C8]) > 1 || (objc_msgSend(v3, "BOOLForKey:", @"DebugDidTapAtLeastTwoReadingListArticles"))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 BOOLForKey:*MEMORY[0x1E69C9660]];
  }

  return v6;
}

- (WBSAppReviewPromptPresenting)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end