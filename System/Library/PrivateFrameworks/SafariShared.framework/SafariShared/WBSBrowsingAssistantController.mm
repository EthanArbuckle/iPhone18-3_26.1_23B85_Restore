@interface WBSBrowsingAssistantController
+ (BOOL)shouldShowConsentCard;
+ (int64_t)userConsentState;
+ (void)setUserConsentState:(int64_t)a3;
+ (void)subscribeToAssistantAssetIfNeeded;
- (BOOL)_checkAssistantAvailabilityForPageLocale:(id)a3;
- (BOOL)_shouldContinueFetchingRemoteContent:(id)a3;
- (BOOL)isSummaryAvailable;
- (WBSBrowsingAssistantController)init;
- (WBSBrowsingAssistantControllerDelegate)delegate;
- (id)_currentResultForURL:(id)a3;
- (void)_foundContentOptions:(unint64_t)a3 fromURL:(id)a4;
- (void)_registerForUserDefaultObserverIfNeeded;
- (void)checkForAssistantContentFromPegasusForURL:(id)a3 locale:(id)a4;
- (void)clearAssistantResult;
- (void)didFindLocalContentWithOptions:(unint64_t)a3 forURL:(id)a4;
- (void)fetchAssistantContentFromPegasusForURL:(id)a3 withCompletionHandler:(id)a4;
- (void)performPrefetchingOfAssistantPegasusContentAfterChangingConsentState;
- (void)updateAssistantContentForURL:(id)a3 completionHandler:(id)a4;
@end

@implementation WBSBrowsingAssistantController

+ (BOOL)shouldShowConsentCard
{
  v3 = [a1 isAvailableInCurrentLocale];
  if (v3)
  {
    LOBYTE(v3) = [a1 userConsentState] == 0;
  }

  return v3;
}

+ (int64_t)userConsentState
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [v2 integerForKey:@"BrowsingAssistantConsentState"];

  return v3;
}

+ (void)setUserConsentState:(int64_t)a3
{
  if ([a1 userConsentState] != a3)
  {
    v4 = [MEMORY[0x1E695E000] safari_browserDefaults];
    [v4 setInteger:a3 forKey:@"BrowsingAssistantConsentState"];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = [MEMORY[0x1E695E000] safari_notificationNameForUserDefaultsKey:@"BrowsingAssistantConsentState"];
    [v5 postNotificationName:v6 object:0];
  }

  if (a3 == 2)
  {

    +[WBSBrowsingAssistantContentProvider unsubscribeFromAssistantAsset];
  }

  else if (a3 == 1)
  {

    [WBSBrowsingAssistantContentProvider subscribeToAssistantAssetAndDownloadNow:1];
  }
}

+ (void)subscribeToAssistantAssetIfNeeded
{
  if ([a1 userConsentState] != 2)
  {

    [WBSBrowsingAssistantContentProvider subscribeToAssistantAssetAndDownloadNow:0];
  }
}

- (WBSBrowsingAssistantController)init
{
  v7.receiver = self;
  v7.super_class = WBSBrowsingAssistantController;
  v2 = [(WBSBrowsingAssistantController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(WBSBrowsingAssistantContentProvider);
    contentProvider = v2->_contentProvider;
    v2->_contentProvider = v3;

    v5 = v2;
  }

  return v2;
}

- (id)_currentResultForURL:(id)a3
{
  v4 = self->_result;
  if (!v4)
  {
    v5 = a3;
    v6 = [[WBSBrowsingAssistantResult alloc] initWithURL:v5 contentOptions:0];

    v7 = self->_result;
    self->_result = v6;

    v4 = self->_result;
  }

  return v4;
}

- (void)_foundContentOptions:(unint64_t)a3 fromURL:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browsingAssistantController:self didUpdateContentOptionsForURL:v6];
  }
}

- (void)didFindLocalContentWithOptions:(unint64_t)a3 forURL:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ((a3 & 0xFFFFFFFFFFFFFF9FLL) != 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSBrowsingAssistantController *)v6 didFindLocalContentWithOptions:a3 forURL:v7];
    }
  }

  v8 = [(WBSBrowsingAssistantController *)self _currentResultForURL:v6];
  [v8 updateForLocalContentWithOptions:a3];

  if (-[WBSBrowsingAssistantResult remoteContentState](self->_result, "remoteContentState") <= 1 && [objc_opt_class() hasUserConsent])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      result = self->_result;
      v11 = v9;
      v12 = 134349312;
      v13 = a3;
      v14 = 2050;
      v15 = [(WBSBrowsingAssistantResult *)result remoteContentState];
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Discarding content options: %{public}ld, due to remote content state: %{public}ld", &v12, 0x16u);
    }
  }

  else
  {
    [(WBSBrowsingAssistantController *)self _foundContentOptions:a3 fromURL:v6];
  }
}

- (void)clearAssistantResult
{
  result = self->_result;
  self->_result = 0;

  cachedReaderArticleTitle = self->_cachedReaderArticleTitle;
  self->_cachedReaderArticleTitle = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browsingAssistantControllerDidReset:self];
  }
}

- (BOOL)isSummaryAvailable
{
  if (([(WBSBrowsingAssistantResult *)self->_result contentOptions]& 1) != 0)
  {
    return 1;
  }

  v3 = [(WBSBrowsingAssistantResult *)self->_result summaryResult];
  v4 = v3 != 0;

  return v4;
}

- (void)_registerForUserDefaultObserverIfNeeded
{
  if (!self->_userDefaultObservation)
  {
    objc_initWeak(&location, self);
    v3 = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__WBSBrowsingAssistantController__registerForUserDefaultObserverIfNeeded__block_invoke;
    v8[3] = &unk_1E7FB7130;
    objc_copyWeak(&v9, &location);
    v6 = [v3 safari_observeValueForKey:@"BrowsingAssistantConsentState" onQueue:v4 notifyForInitialValue:0 handler:v8];
    userDefaultObservation = self->_userDefaultObservation;
    self->_userDefaultObservation = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __73__WBSBrowsingAssistantController__registerForUserDefaultObserverIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 4);
    [v2 browsingAssistantControllerDidUpdateUserConsentState:v4];

    v3 = v4[2];
    v4[2] = 0;

    WeakRetained = v4;
  }
}

- (void)performPrefetchingOfAssistantPegasusContentAfterChangingConsentState
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained browsingAssistantControllerDidUpdateUserConsentState:self];
}

- (BOOL)_checkAssistantAvailabilityForPageLocale:(id)a3
{
  v4 = a3;
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    v5 = [objc_opt_class() userConsentState];
    if (v5)
    {
      if (v5 != 2)
      {
        v8 = [WBSBrowsingAssistantContentProvider assistantEnabledForLocale:v4];
        goto LABEL_10;
      }

      v6 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Don't check URL for assistant content since User has declined.", buf, 2u);
      }
    }

    else
    {
      v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Don't check URL for assistant content since user hasn't given consent yet.", v10, 2u);
      }

      [(WBSBrowsingAssistantController *)self _registerForUserDefaultObserverIfNeeded];
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (void)checkForAssistantContentFromPegasusForURL:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![objc_opt_class() isAvailableInCurrentLocale] || !-[WBSBrowsingAssistantController _checkAssistantAvailabilityForPageLocale:](self, "_checkAssistantAvailabilityForPageLocale:", v7))
  {
    v12 = [(WBSBrowsingAssistantController *)self _currentResultForURL:v6];
    [v12 setRemoteContentState:4];
    [(WBSBrowsingAssistantController *)self _foundContentOptions:0 fromURL:v6];
LABEL_7:

    goto LABEL_8;
  }

  v8 = [(WBSBrowsingAssistantResult *)self->_result pageURL];
  v9 = [v8 isEqual:v6];

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = [(WBSBrowsingAssistantResult *)self->_result remoteContentState];
  result = self->_result;
  if (v10 >= 2)
  {
    [(WBSBrowsingAssistantController *)self _foundContentOptions:[(WBSBrowsingAssistantResult *)result contentOptions] fromURL:v6];
    goto LABEL_8;
  }

  if ([(WBSBrowsingAssistantResult *)result remoteContentState]!= 1)
  {
LABEL_12:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = [WeakRetained browsingAssistantControllerShouldCheckRemoteContent:self];

    if (!v15)
    {
      goto LABEL_8;
    }

    [(WBSBrowsingAssistantResult *)self->_result setRemoteContentState:1];
    if (![(NSString *)self->_previousWebpageIdentifier isEqualToString:self->_webpageIdentifier])
    {
      v16 = +[WBSBiomeDonationManager sharedManager];
      [v16 donateBrowsingAssistantWebPageStartedEventWithWebPageID:self->_webpageIdentifier];

      objc_storeStrong(&self->_previousWebpageIdentifier, self->_webpageIdentifier);
    }

    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];

    v19 = +[WBSBiomeDonationManager sharedManager];
    [v19 donateBrowsingAssistantServerRequestStartedEventWithWebPageID:self->_webpageIdentifier requestIdentifier:v18 requestType:1];

    contentProvider = self->_contentProvider;
    webpageIdentifier = self->_webpageIdentifier;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__WBSBrowsingAssistantController_checkForAssistantContentFromPegasusForURL_locale___block_invoke;
    v22[3] = &unk_1E7FB7180;
    v22[4] = self;
    v23 = v6;
    v24 = v18;
    v12 = v18;
    [(WBSBrowsingAssistantContentProvider *)contentProvider checkContentAvailabilityForURL:v23 locale:v7 webpageIdentifier:webpageIdentifier completion:v22];

    goto LABEL_7;
  }

  v13 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "We already have a URL checking on fly, don't continue.", buf, 2u);
  }

LABEL_8:
}

void __83__WBSBrowsingAssistantController_checkForAssistantContentFromPegasusForURL_locale___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSBrowsingAssistantController_checkForAssistantContentFromPegasusForURL_locale___block_invoke_2;
  block[3] = &unk_1E7FB7158;
  v6 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v6;
  v10 = a2;
  v9 = *(a1 + 48);
  v11 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __83__WBSBrowsingAssistantController_checkForAssistantContentFromPegasusForURL_locale___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentResultForURL:*(a1 + 40)];
  [v2 updateForRemoteContentWithOptions:*(a1 + 56)];

  if (*(a1 + 56))
  {
    v3 = +[WBSBiomeDonationManager sharedManager];
    [v3 donateBrowsingAssistantServerRequestEndedEventWithWebPageID:*(*(a1 + 32) + 48) requestIdentifier:*(a1 + 48)];

    v4 = +[WBSBiomeDonationManager sharedManager];
    [v4 donateBrowsingAssistantEligibleEventWithWebPageID:*(*(a1 + 32) + 48)];
  }

  else
  {
    [*(*(a1 + 32) + 40) updateWithSearchResults:0];
    v4 = +[WBSBiomeDonationManager sharedManager];
    [v4 donateBrowsingAssistantServerRequestFailedEventWithWebPageID:*(*(a1 + 32) + 48) requestIdentifier:*(a1 + 48)];
  }

  [*(*(a1 + 32) + 40) setTableOfContentsAvailable:*(a1 + 64)];
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  return [v6 _foundContentOptions:v5 fromURL:v7];
}

- (void)fetchAssistantContentFromPegasusForURL:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(WBSBrowsingAssistantController *)self _shouldContinueFetchingRemoteContent:v6])
  {
    v8 = [(WBSBrowsingAssistantResult *)self->_result remoteContentState];
    v9 = [(WBSBrowsingAssistantController *)self result];
    if ([v9 tableOfContentsAvailable])
    {
      v10 = [(WBSBrowsingAssistantController *)self tableOfContentsTitles];
      v11 = [v10 count];

      if (v8 == 4 && v11)
      {
        v12 = [(WBSBrowsingAssistantResult *)self->_result allResults];
        v7[2](v7, v12);
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    [(WBSBrowsingAssistantResult *)self->_result setRemoteContentState:3];
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v15 = +[WBSBiomeDonationManager sharedManager];
    [v15 donateBrowsingAssistantWebpageURLSentWithWebPageID:self->_webpageIdentifier urlSent:v6];

    v16 = +[WBSBiomeDonationManager sharedManager];
    [v16 donateBrowsingAssistantServerRequestStartedEventWithWebPageID:self->_webpageIdentifier requestIdentifier:v14 requestType:2];

    objc_initWeak(&location, self);
    contentProvider = self->_contentProvider;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__WBSBrowsingAssistantController_fetchAssistantContentFromPegasusForURL_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E7FB71D0;
    objc_copyWeak(&v22, &location);
    v19 = v6;
    v12 = v14;
    v20 = v12;
    v21 = v7;
    [(WBSBrowsingAssistantContentProvider *)contentProvider fetchContentForURL:v19 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  v7[2](v7, 0);
LABEL_10:
}

void __95__WBSBrowsingAssistantController_fetchAssistantContentFromPegasusForURL_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSBrowsingAssistantController_fetchAssistantContentFromPegasusForURL_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7FB71A8;
  block[4] = WeakRetained;
  v7 = a1[4];
  v8 = v3;
  v9 = a1[5];
  v10 = a1[6];
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __95__WBSBrowsingAssistantController_fetchAssistantContentFromPegasusForURL_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _currentResultForURL:*(a1 + 40)];
  [v2 updateWithSearchResults:*(a1 + 48)];

  v3 = *(a1 + 48);
  v4 = +[WBSBiomeDonationManager sharedManager];
  v5 = v4;
  v6 = *(*(a1 + 32) + 48);
  v7 = *(a1 + 56);
  if (v3)
  {
    [v4 donateBrowsingAssistantServerRequestEndedEventWithWebPageID:v6 requestIdentifier:v7];
  }

  else
  {
    [v4 donateBrowsingAssistantServerRequestFailedEventWithWebPageID:v6 requestIdentifier:v7];
  }

  v8 = *(*(a1 + 64) + 16);

  return v8();
}

- (BOOL)_shouldContinueFetchingRemoteContent:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([objc_opt_class() userConsentState] == 1)
  {
    v5 = [(WBSBrowsingAssistantResult *)self->_result pageURL];
    v6 = [v5 isEqual:v4];

    if (v6)
    {
      if (-[WBSBrowsingAssistantResult remoteContentAvailableForFetching](self->_result, "remoteContentAvailableForFetching") || (-[WBSBrowsingAssistantController result](self, "result"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 tableOfContentsAvailable], v7, (v8 & 1) != 0))
      {
        if ([(WBSBrowsingAssistantResult *)self->_result remoteContentState]!= 3)
        {
          v11 = 1;
          goto LABEL_11;
        }

        v9 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [(WBSBrowsingAssistantController *)v4 _shouldContinueFetchingRemoteContent:v9];
        }
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = 138739971;
          v15 = v4;
          _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Don't fetch assistant content since first hop check says there is no remote content for %{sensitive}@.", &v14, 0xCu);
        }
      }
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WBSBrowsingAssistantController *)v4 _shouldContinueFetchingRemoteContent:v10];
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)updateAssistantContentForURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WBSBrowsingAssistantController_updateAssistantContentForURL_completionHandler___block_invoke;
  v8[3] = &unk_1E7FB71F8;
  v9 = v6;
  v7 = v6;
  [(WBSBrowsingAssistantController *)self fetchAssistantContentFromPegasusForURL:a3 withCompletionHandler:v8];
}

uint64_t __81__WBSBrowsingAssistantController_updateAssistantContentForURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 count] != 0;
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (WBSBrowsingAssistantControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didFindLocalContentWithOptions:(os_log_t)log forURL:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138740227;
  v4 = a1;
  v5 = 2050;
  v6 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Received invalid local content for URL %{sensitive}@, content: %{public}ld", &v3, 0x16u);
}

- (void)_shouldContinueFetchingRemoteContent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "We don't have first hop check result for %{sensitive}@, bail out.", &v2, 0xCu);
}

- (void)_shouldContinueFetchingRemoteContent:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138739971;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "We already have a Pegasus request on fly for %{sensitive}@, bail out.", &v2, 0xCu);
}

@end