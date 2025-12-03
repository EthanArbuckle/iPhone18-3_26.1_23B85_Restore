@interface WBSBrowsingAssistantController
+ (BOOL)shouldShowConsentCard;
+ (int64_t)userConsentState;
+ (void)setUserConsentState:(int64_t)state;
+ (void)subscribeToAssistantAssetIfNeeded;
- (BOOL)_checkAssistantAvailabilityForPageLocale:(id)locale;
- (BOOL)_shouldContinueFetchingRemoteContent:(id)content;
- (BOOL)isSummaryAvailable;
- (WBSBrowsingAssistantController)init;
- (WBSBrowsingAssistantControllerDelegate)delegate;
- (id)_currentResultForURL:(id)l;
- (void)_foundContentOptions:(unint64_t)options fromURL:(id)l;
- (void)_registerForUserDefaultObserverIfNeeded;
- (void)checkForAssistantContentFromPegasusForURL:(id)l locale:(id)locale;
- (void)clearAssistantResult;
- (void)didFindLocalContentWithOptions:(unint64_t)options forURL:(id)l;
- (void)fetchAssistantContentFromPegasusForURL:(id)l withCompletionHandler:(id)handler;
- (void)performPrefetchingOfAssistantPegasusContentAfterChangingConsentState;
- (void)updateAssistantContentForURL:(id)l completionHandler:(id)handler;
@end

@implementation WBSBrowsingAssistantController

+ (BOOL)shouldShowConsentCard
{
  isAvailableInCurrentLocale = [self isAvailableInCurrentLocale];
  if (isAvailableInCurrentLocale)
  {
    LOBYTE(isAvailableInCurrentLocale) = [self userConsentState] == 0;
  }

  return isAvailableInCurrentLocale;
}

+ (int64_t)userConsentState
{
  safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
  v3 = [safari_browserDefaults integerForKey:@"BrowsingAssistantConsentState"];

  return v3;
}

+ (void)setUserConsentState:(int64_t)state
{
  if ([self userConsentState] != state)
  {
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    [safari_browserDefaults setInteger:state forKey:@"BrowsingAssistantConsentState"];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = [MEMORY[0x1E695E000] safari_notificationNameForUserDefaultsKey:@"BrowsingAssistantConsentState"];
    [defaultCenter postNotificationName:v6 object:0];
  }

  if (state == 2)
  {

    +[WBSBrowsingAssistantContentProvider unsubscribeFromAssistantAsset];
  }

  else if (state == 1)
  {

    [WBSBrowsingAssistantContentProvider subscribeToAssistantAssetAndDownloadNow:1];
  }
}

+ (void)subscribeToAssistantAssetIfNeeded
{
  if ([self userConsentState] != 2)
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

- (id)_currentResultForURL:(id)l
{
  v4 = self->_result;
  if (!v4)
  {
    lCopy = l;
    v6 = [[WBSBrowsingAssistantResult alloc] initWithURL:lCopy contentOptions:0];

    v7 = self->_result;
    self->_result = v6;

    v4 = self->_result;
  }

  return v4;
}

- (void)_foundContentOptions:(unint64_t)options fromURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained browsingAssistantController:self didUpdateContentOptionsForURL:lCopy];
  }
}

- (void)didFindLocalContentWithOptions:(unint64_t)options forURL:(id)l
{
  v16 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ((options & 0xFFFFFFFFFFFFFF9FLL) != 0)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSBrowsingAssistantController *)lCopy didFindLocalContentWithOptions:options forURL:v7];
    }
  }

  v8 = [(WBSBrowsingAssistantController *)self _currentResultForURL:lCopy];
  [v8 updateForLocalContentWithOptions:options];

  if (-[WBSBrowsingAssistantResult remoteContentState](self->_result, "remoteContentState") <= 1 && [objc_opt_class() hasUserConsent])
  {
    v9 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      result = self->_result;
      v11 = v9;
      v12 = 134349312;
      optionsCopy = options;
      v14 = 2050;
      remoteContentState = [(WBSBrowsingAssistantResult *)result remoteContentState];
      _os_log_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_INFO, "Discarding content options: %{public}ld, due to remote content state: %{public}ld", &v12, 0x16u);
    }
  }

  else
  {
    [(WBSBrowsingAssistantController *)self _foundContentOptions:options fromURL:lCopy];
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

  summaryResult = [(WBSBrowsingAssistantResult *)self->_result summaryResult];
  v4 = summaryResult != 0;

  return v4;
}

- (void)_registerForUserDefaultObserverIfNeeded
{
  if (!self->_userDefaultObservation)
  {
    objc_initWeak(&location, self);
    safari_browserDefaults = [MEMORY[0x1E695E000] safari_browserDefaults];
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __73__WBSBrowsingAssistantController__registerForUserDefaultObserverIfNeeded__block_invoke;
    v8[3] = &unk_1E7FB7130;
    objc_copyWeak(&v9, &location);
    v6 = [safari_browserDefaults safari_observeValueForKey:@"BrowsingAssistantConsentState" onQueue:v4 notifyForInitialValue:0 handler:v8];
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

- (BOOL)_checkAssistantAvailabilityForPageLocale:(id)locale
{
  localeCopy = locale;
  if ([MEMORY[0x1E69C8880] isBrowsingAssistantEnabled])
  {
    userConsentState = [objc_opt_class() userConsentState];
    if (userConsentState)
    {
      if (userConsentState != 2)
      {
        v8 = [WBSBrowsingAssistantContentProvider assistantEnabledForLocale:localeCopy];
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

- (void)checkForAssistantContentFromPegasusForURL:(id)l locale:(id)locale
{
  lCopy = l;
  localeCopy = locale;
  if (![objc_opt_class() isAvailableInCurrentLocale] || !-[WBSBrowsingAssistantController _checkAssistantAvailabilityForPageLocale:](self, "_checkAssistantAvailabilityForPageLocale:", localeCopy))
  {
    v12 = [(WBSBrowsingAssistantController *)self _currentResultForURL:lCopy];
    [v12 setRemoteContentState:4];
    [(WBSBrowsingAssistantController *)self _foundContentOptions:0 fromURL:lCopy];
LABEL_7:

    goto LABEL_8;
  }

  pageURL = [(WBSBrowsingAssistantResult *)self->_result pageURL];
  v9 = [pageURL isEqual:lCopy];

  if (!v9)
  {
    goto LABEL_12;
  }

  remoteContentState = [(WBSBrowsingAssistantResult *)self->_result remoteContentState];
  result = self->_result;
  if (remoteContentState >= 2)
  {
    [(WBSBrowsingAssistantController *)self _foundContentOptions:[(WBSBrowsingAssistantResult *)result contentOptions] fromURL:lCopy];
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

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v19 = +[WBSBiomeDonationManager sharedManager];
    [v19 donateBrowsingAssistantServerRequestStartedEventWithWebPageID:self->_webpageIdentifier requestIdentifier:uUIDString requestType:1];

    contentProvider = self->_contentProvider;
    webpageIdentifier = self->_webpageIdentifier;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __83__WBSBrowsingAssistantController_checkForAssistantContentFromPegasusForURL_locale___block_invoke;
    v22[3] = &unk_1E7FB7180;
    v22[4] = self;
    v23 = lCopy;
    v24 = uUIDString;
    v12 = uUIDString;
    [(WBSBrowsingAssistantContentProvider *)contentProvider checkContentAvailabilityForURL:v23 locale:localeCopy webpageIdentifier:webpageIdentifier completion:v22];

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

- (void)fetchAssistantContentFromPegasusForURL:(id)l withCompletionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(WBSBrowsingAssistantController *)self _shouldContinueFetchingRemoteContent:lCopy])
  {
    remoteContentState = [(WBSBrowsingAssistantResult *)self->_result remoteContentState];
    result = [(WBSBrowsingAssistantController *)self result];
    if ([result tableOfContentsAvailable])
    {
      tableOfContentsTitles = [(WBSBrowsingAssistantController *)self tableOfContentsTitles];
      v11 = [tableOfContentsTitles count];

      if (remoteContentState == 4 && v11)
      {
        allResults = [(WBSBrowsingAssistantResult *)self->_result allResults];
        handlerCopy[2](handlerCopy, allResults);
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
    }

    [(WBSBrowsingAssistantResult *)self->_result setRemoteContentState:3];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v15 = +[WBSBiomeDonationManager sharedManager];
    [v15 donateBrowsingAssistantWebpageURLSentWithWebPageID:self->_webpageIdentifier urlSent:lCopy];

    v16 = +[WBSBiomeDonationManager sharedManager];
    [v16 donateBrowsingAssistantServerRequestStartedEventWithWebPageID:self->_webpageIdentifier requestIdentifier:uUIDString requestType:2];

    objc_initWeak(&location, self);
    contentProvider = self->_contentProvider;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __95__WBSBrowsingAssistantController_fetchAssistantContentFromPegasusForURL_withCompletionHandler___block_invoke;
    v18[3] = &unk_1E7FB71D0;
    objc_copyWeak(&v22, &location);
    v19 = lCopy;
    allResults = uUIDString;
    v20 = allResults;
    v21 = handlerCopy;
    [(WBSBrowsingAssistantContentProvider *)contentProvider fetchContentForURL:v19 completion:v18];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    goto LABEL_9;
  }

  handlerCopy[2](handlerCopy, 0);
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

- (BOOL)_shouldContinueFetchingRemoteContent:(id)content
{
  v16 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  if ([objc_opt_class() userConsentState] == 1)
  {
    pageURL = [(WBSBrowsingAssistantResult *)self->_result pageURL];
    v6 = [pageURL isEqual:contentCopy];

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
          [(WBSBrowsingAssistantController *)contentCopy _shouldContinueFetchingRemoteContent:v9];
        }
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = 138739971;
          v15 = contentCopy;
          _os_log_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_INFO, "Don't fetch assistant content since first hop check says there is no remote content for %{sensitive}@.", &v14, 0xCu);
        }
      }
    }

    else
    {
      v10 = WBS_LOG_CHANNEL_PREFIXBrowsingAssistant();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(WBSBrowsingAssistantController *)contentCopy _shouldContinueFetchingRemoteContent:v10];
      }
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)updateAssistantContentForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WBSBrowsingAssistantController_updateAssistantContentForURL_completionHandler___block_invoke;
  v8[3] = &unk_1E7FB71F8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSBrowsingAssistantController *)self fetchAssistantContentFromPegasusForURL:l withCompletionHandler:v8];
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