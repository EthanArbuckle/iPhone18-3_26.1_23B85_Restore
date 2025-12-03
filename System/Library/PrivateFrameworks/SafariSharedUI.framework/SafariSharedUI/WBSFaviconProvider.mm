@interface WBSFaviconProvider
+ (CGSize)defaultFaviconSize;
- (BOOL)_isIconDateExpired:(id)expired;
- (BOOL)_shouldRejectIconWithBadData;
- (BOOL)canHandleRequest:(id)request;
- (CGSize)preferredIconSize;
- (WBSFaviconProvider)initWithPersistenceBaseURL:(id)l persistenceName:(id)name preferredIconSize:(CGSize)size atScale:(double)scale allScales:(id)scales isReadOnly:(BOOL)only shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)block;
- (WBSSiteMetadataProviderDelegate)providerDelegate;
- (id)_cachedResponseForRequest:(id)request;
- (id)_createSemaphoreAndAddToWebViewImageOperationSemaphoresIfNecessary:(BOOL *)necessary;
- (id)_hostFromRequest:(id)request;
- (id)_hostFromURL:(id)l;
- (id)_requestsForHost:(id)host;
- (id)_responseCacheKeyForRequest:(id)request;
- (id)_responseDictionaryKeyForRequest:(id)request;
- (id)responseForRequest:(id)request willProvideUpdates:(BOOL *)updates;
- (int64_t)providerState;
- (void)_addCachedResponse:(id)response forRequest:(id)request;
- (void)_atomicallyLinkPageURLs:(id)ls toIconWithInfo:(id)info isPrivate:(BOOL)private;
- (void)_atomicallySaveImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)_confirmImageDataShouldBeSaved:(id)saved size:(CGSize)size pageURL:(id)l iconURL:(id)rL includingPrivateData:(BOOL)data completionHandler:(id)handler;
- (void)_getIconForRequest:(id)request withCompletionHandler:(id)handler;
- (void)_linkPageURL:(id)l toIconWithInfo:(id)info isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)_multiResolutionImageFromImageData:(id)data withPreferredSize:(CGSize)size atScales:(id)scales completionHandler:(id)handler;
- (void)_prepareAndSendResponseForRequests:(id)requests forceDidReceiveNewData:(BOOL)data;
- (void)_registerRequest:(id)request;
- (void)_removeCachedResponsesForRequest:(id)request;
- (void)_removeCachedResponsesForURL:(id)l;
- (void)_saveImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)_sizeOfImageWithData:(id)data closestToPreferredSize:(CGSize)size completionHandler:(id)handler;
- (void)_updateOutstandingRequestsAfterSuccessfulSetup;
- (void)_updateOutstandingRequestsForPageURL:(id)l forceDidReceiveNewData:(BOOL)data;
- (void)dealloc;
- (void)flushPrivateDataFromMemoryWithCompletionHandler:(id)handler;
- (void)linkIconFromPageURL:(id)l toCurrentPageURL:(id)rL isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response;
- (void)releasePrivateData;
- (void)removeAllIconsForURLStringsNotIn:(id)in completionHandler:(id)handler;
- (void)removeIconForURLString:(id)string completionHandler:(id)handler;
- (void)retainPrivateData;
- (void)saveFaviconImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)savePendingChangesBeforeTermination;
- (void)setUpWithCompletionHandler:(id)handler;
- (void)shouldIconDataBeSavedForIconWithPageURL:(id)l originalPageURL:(id)rL iconURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler;
- (void)stopWatchingUpdatesForRequest:(id)request;
- (void)webViewMetadataFetchOperation:(id)operation didFinishUsingWebView:(id)view;
- (void)webViewMetadataFetchOperation:(id)operation getWebViewOfSize:(CGSize)size withConfiguration:(id)configuration completionHandler:(id)handler;
@end

@implementation WBSFaviconProvider

+ (CGSize)defaultFaviconSize
{
  v2 = 16.0;
  v3 = 16.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateOutstandingRequestsAfterSuccessfulSetup
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSFaviconProvider__updateOutstandingRequestsAfterSuccessfulSetup__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __68__WBSFaviconProvider__updateOutstandingRequestsAfterSuccessfulSetup__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(*(a1 + 32) + 8) allValues];
  v2 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v2)
  {
    v3 = *v18;
    do
    {
      v4 = 0;
      do
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v17 + 1) + 8 * v4);
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v6 = v5;
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v7)
        {
          v8 = *v14;
          do
          {
            v9 = 0;
            do
            {
              if (*v14 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(a1 + 32);
              v11 = [*(*(&v13 + 1) + 8 * v9) url];
              [v10 _removeCachedResponsesForURL:v11];

              ++v9;
            }

            while (v7 != v9);
            v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v7);
        }

        [*(a1 + 32) _prepareAndSendResponseForRequests:v6 forceDidReceiveNewData:0];
        ++v4;
      }

      while (v4 != v2);
      v2 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v2);
  }
}

- (WBSFaviconProvider)initWithPersistenceBaseURL:(id)l persistenceName:(id)name preferredIconSize:(CGSize)size atScale:(double)scale allScales:(id)scales isReadOnly:(BOOL)only shouldCheckIntegrityWhenOpeningDatabaseBlock:(id)block
{
  onlyCopy = only;
  height = size.height;
  width = size.width;
  lCopy = l;
  nameCopy = name;
  scalesCopy = scales;
  blockCopy = block;
  v47.receiver = self;
  v47.super_class = WBSFaviconProvider;
  v22 = [(WBSFaviconProvider *)&v47 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_baseURL, l);
    v24 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v25 = dispatch_queue_create("com.apple.Safari.WBSFaviconProvider", v24);
    internalQueue = v23->_internalQueue;
    v23->_internalQueue = v25;

    v27 = dispatch_queue_create("com.apple.Safari.WBSFaviconProviderInternalSaving", v24);
    internalSavingQueue = v23->_internalSavingQueue;
    v23->_internalSavingQueue = v27;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    hostsToRequestsMap = v23->_hostsToRequestsMap;
    v23->_hostsToRequestsMap = dictionary;

    v31 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    responseCache = v23->_responseCache;
    v23->_responseCache = v31;

    v23->_providerState = 0;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendar = v23->_calendar;
    v23->_calendar = currentCalendar;

    v23->_expirationInterval = 604800.0;
    v23->_preferredIconSize.width = width;
    v23->_preferredIconSize.height = height;
    v23->_preferredIconScale = scale;
    v23->_scaledPreferredIconSize.width = width * scale;
    v23->_scaledPreferredIconSize.height = height * scale;
    v35 = [scalesCopy copy];
    allIconScales = v23->_allIconScales;
    v23->_allIconScales = v35;

    v23->_isReadOnly = onlyCopy;
    v37 = _Block_copy(blockCopy);
    shouldCheckIntegrityWhenOpeningDatabaseBlock = v23->_shouldCheckIntegrityWhenOpeningDatabaseBlock;
    v23->_shouldCheckIntegrityWhenOpeningDatabaseBlock = v37;

    v39 = [MEMORY[0x1E696AB50] set];
    requestsPendingResponse = v23->_requestsPendingResponse;
    v23->_requestsPendingResponse = v39;

    v41 = [[WBSFaviconProviderPersistenceController alloc] initWithPersistenceBaseURL:v23->_baseURL databaseName:nameCopy preferredIconSize:onlyCopy isReadOnly:v23->_scaledPreferredIconSize.width, v23->_scaledPreferredIconSize.height];
    persistenceController = v23->_persistenceController;
    v23->_persistenceController = v41;

    array = [MEMORY[0x1E695DF70] array];
    webViewImageOperationSemaphores = v23->_webViewImageOperationSemaphores;
    v23->_webViewImageOperationSemaphores = array;

    v45 = v23;
  }

  return v23;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSFaviconProvider;
  [(WBSFaviconProvider *)&v2 dealloc];
}

- (int64_t)providerState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__WBSFaviconProvider_providerState__block_invoke;
  v5[3] = &unk_1E8282E78;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUpWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E82840C0;
  v7[4] = self;
  objc_copyWeak(&v9, &location);
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = (*(*(*(a1 + 32) + 104) + 16))();
  v3 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_cold_1();
  }

  dispatch_suspend(*(*(a1 + 32) + 32));
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_10;
  aBlock[3] = &unk_1E8284020;
  objc_copyWeak(&v13, (a1 + 48));
  v12 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = *(*(a1 + 32) + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_11;
  v7[3] = &unk_1E8284098;
  objc_copyWeak(&v9, (a1 + 48));
  v8 = v4;
  v10 = v2;
  v6 = v4;
  [v5 openAndCheckIntegrity:v2 createIfNeeded:0 fallBackToMemoryStoreIfError:0 completionHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v13);
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_10_cold_1();
    }

    dispatch_resume(WeakRetained[4]);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))();
  }
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_11(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2 <= 1)
    {
      if (!a2)
      {
        v9 = *(WeakRetained + 6);
        v7 = v17;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_2;
        v17[3] = &unk_1E8284020;
        objc_copyWeak(&v19, (a1 + 40));
        v18 = *(a1 + 32);
        [v9 removeIconFilesNotReferencedInDatabaseWithCompletionHandler:v17];
        v8 = v18;
        goto LABEL_11;
      }

      if (a2 != 1)
      {
        goto LABEL_13;
      }

LABEL_9:
      *(WeakRetained + 9) = 1;
      v6 = *(WeakRetained + 6);
      v7 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_4;
      v12[3] = &unk_1E8284070;
      objc_copyWeak(&v14, (a1 + 40));
      v13 = *(a1 + 32);
      [v6 openAndCheckIntegrity:1 createIfNeeded:1 fallBackToMemoryStoreIfError:1 completionHandler:v12];
      v8 = v13;
LABEL_11:

      objc_destroyWeak(v7 + 5);
      goto LABEL_13;
    }

    if (a2 == 2)
    {
      v10 = *(WeakRetained + 6);
      v11 = *(a1 + 48);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_3;
      v15[3] = &unk_1E8284048;
      v15[4] = WeakRetained;
      v16 = *(a1 + 32);
      [v10 openAndCheckIntegrity:v11 createIfNeeded:0 fallBackToMemoryStoreIfError:1 completionHandler:v15];

      goto LABEL_13;
    }

    if (a2 == 3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

LABEL_13:
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[9] = 2;
    [WeakRetained _updateOutstandingRequestsAfterSuccessfulSetup];
  }

  (*(*(a1 + 32) + 16))();
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_5;
    v5[3] = &unk_1E8284020;
    objc_copyWeak(&v7, (a1 + 40));
    v6 = *(a1 + 32);
    [v4 removeIconFilesNotReferencedInDatabaseWithCompletionHandler:v5];

    objc_destroyWeak(&v7);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __49__WBSFaviconProvider_setUpWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    WeakRetained[9] = 2;
    [WeakRetained _updateOutstandingRequestsAfterSuccessfulSetup];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shouldIconDataBeSavedForIconWithPageURL:(id)l originalPageURL:(id)rL iconURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke;
  v24[3] = &unk_1E8284160;
  v27 = uRLCopy;
  v28 = handlerCopy;
  v24[4] = self;
  v25 = lCopy;
  v26 = rLCopy;
  privateCopy = private;
  v29 = width;
  v30 = height;
  v20 = uRLCopy;
  v21 = rLCopy;
  v22 = lCopy;
  v23 = handlerCopy;
  dispatch_async(internalQueue, v24);
}

void __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  if (v2 == 1)
  {
    v3 = *(*(a1 + 64) + 16);
    goto LABEL_5;
  }

  if (!v2)
  {
    v3 = *(*(a1 + 64) + 16);
LABEL_5:

    v3();
    return;
  }

  if (!*(a1 + 40) || (v4 = *(a1 + 48)) == 0)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_cold_3();
    }

    v14 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_cold_4();
    }

    goto LABEL_18;
  }

  if (!*(a1 + 56))
  {
    v15 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_cold_1();
    }

    v16 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_cold_2((a1 + 56), v16);
    }

LABEL_18:
    (*(*(a1 + 64) + 16))();
    return;
  }

  v5 = [v4 safari_shouldBeAssociatedWithFaviconFromRedirectedURL:?];
  v6 = 40;
  if (v5)
  {
    v6 = 48;
  }

  v7 = *(a1 + v6);
  v8 = *(*(a1 + 32) + 48);
  v9 = [*(a1 + 40) absoluteString];
  v10 = [*(a1 + 56) absoluteString];
  v11 = *(a1 + 88);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_13;
  v17[3] = &unk_1E8284138;
  v17[4] = *(a1 + 32);
  v21 = *(a1 + 64);
  v18 = *(a1 + 40);
  v23 = *(a1 + 88);
  v19 = *(a1 + 56);
  v22 = *(a1 + 72);
  v12 = v7;
  v20 = v12;
  [v8 rejectedResourceInfosForPageURLString:v9 iconURLString:v10 includingPrivateData:v11 completionHandler:v17];
}

void __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = *v26;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        if ([v7 isRejectedResource])
        {
          v8 = *(a1 + 32);
          v9 = [v7 dateAdded];
          LOBYTE(v8) = [v8 _isIconDateExpired:v9];

          if ((v8 & 1) == 0)
          {
            (*(*(a1 + 64) + 16))();

            goto LABEL_12;
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = *(*(a1 + 32) + 48);
  v11 = [*(a1 + 40) absoluteString];
  v12 = *(a1 + 88);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_2;
  v19[3] = &unk_1E8284110;
  v18 = *(a1 + 32);
  v13 = *(a1 + 48);
  v24 = *(a1 + 88);
  v23 = *(a1 + 72);
  v22 = *(a1 + 64);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v18;
  *(&v17 + 1) = v13;
  v20 = v17;
  v21 = v16;
  [v10 iconInfoForPageURLString:v11 includingPrivateData:v12 completionHandler:v19];

LABEL_12:
}

void __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v5 = [*(a1 + 40) absoluteString];
  v6 = *(a1 + 88);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_3;
  v10[3] = &unk_1E82840E8;
  v7 = v3;
  v11 = v7;
  v16 = *(a1 + 72);
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v15 = v8;
  v12 = v9;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v17 = *(a1 + 88);
  [v4 iconInfoForIconURLString:v5 includingPrivateData:v6 completionHandler:v10];
}

void __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v35 = v3;
  if (v4)
  {
    v5 = MEMORY[0x1E695F060];
    v6 = *MEMORY[0x1E695F060];
    v7 = *(MEMORY[0x1E695F060] + 8);
    if (*(a1 + 72) == *MEMORY[0x1E695F060] && *(a1 + 80) == v7)
    {
      [v4 size];
      v6 = *v5;
      v7 = v5[1];
      if (v10 == *v5 && v9 == v7)
      {
        goto LABEL_31;
      }
    }

    if (v35)
    {
      v12 = *(a1 + 40);
      v13 = [v35 dateAdded];
      LOBYTE(v12) = [v12 _isIconDateExpired:v13];

      if ((v12 & 1) == 0)
      {
        [v35 size];
        v15 = v14;
        v17 = v16;
        [*(a1 + 32) size];
        if (+[WBSFaviconProviderUtilities isFaviconSize:morePreferrableThanFaviconSize:givenDesiredSize:](WBSFaviconProviderUtilities, "isFaviconSize:morePreferrableThanFaviconSize:givenDesiredSize:", v15, v17, v18, v19, *(*(a1 + 40) + 88), *(*(a1 + 40) + 96)) || [*(a1 + 32) hasGeneratedResolutions] && (objc_msgSend(v35, "hasGeneratedResolutions") & 1) == 0)
        {
          v20 = *(a1 + 40);
          v21 = [MEMORY[0x1E695DFD8] setWithObjects:{*(a1 + 48), *(a1 + 56), 0}];
          [v20 _atomicallyLinkPageURLs:v21 toIconWithInfo:v35 isPrivate:*(a1 + 88)];
        }
      }

      goto LABEL_31;
    }

    v27 = *(a1 + 72);
    v28 = *(a1 + 80);
    v29 = *(a1 + 32);
    if (v27 != v6 || v28 != v7)
    {
      goto LABEL_24;
    }

    if (([v29 hasGeneratedResolutions] & 1) == 0)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      v29 = *(a1 + 32);
LABEL_24:
      [v29 size];
      if (+[WBSFaviconProviderUtilities isFaviconSize:morePreferrableThanFaviconSize:givenDesiredSize:](WBSFaviconProviderUtilities, "isFaviconSize:morePreferrableThanFaviconSize:givenDesiredSize:", v27, v28, v31, v32, *(*(a1 + 40) + 88), *(*(a1 + 40) + 96)) && ([*(a1 + 32) hasGeneratedResolutions] & 1) != 0)
      {
        goto LABEL_31;
      }

      v33 = *(a1 + 64);
      v34 = *(a1 + 40);
      v26 = [*(a1 + 32) dateAdded];
      (*(v33 + 16))(v33, [v34 _isIconDateExpired:v26]);
LABEL_28:

      goto LABEL_32;
    }
  }

  else if (v3)
  {
    v22 = *(a1 + 40);
    v23 = [MEMORY[0x1E695DFD8] setWithObjects:{*(a1 + 48), *(a1 + 56), 0}];
    [v22 _atomicallyLinkPageURLs:v23 toIconWithInfo:v35 isPrivate:*(a1 + 88)];

    v24 = *(a1 + 64);
    v25 = *(a1 + 40);
    v26 = [v35 dateAdded];
    (*(v24 + 16))(v24, [v25 _isIconDateExpired:v26]);
    goto LABEL_28;
  }

LABEL_31:
  (*(*(a1 + 64) + 16))();
LABEL_32:
}

- (void)linkIconFromPageURL:(id)l toCurrentPageURL:(id)rL isPrivate:(BOOL)private completionHandler:(id)handler
{
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke;
  block[3] = &unk_1E82841B0;
  block[4] = self;
  v18 = lCopy;
  v19 = rLCopy;
  v20 = handlerCopy;
  privateCopy = private;
  v14 = rLCopy;
  v15 = lCopy;
  v16 = handlerCopy;
  dispatch_async(internalQueue, block);
}

void __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 72) > 1uLL)
  {
    v5 = *(a1 + 40);
    if (v5 && *(a1 + 48))
    {
      v6 = *(v2 + 48);
      v7 = [v5 absoluteString];
      v8 = *(a1 + 64);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke_18;
      v14[3] = &unk_1E8284188;
      v9 = *(a1 + 56);
      v10 = *(a1 + 32);
      v16 = v9;
      v14[4] = v10;
      v15 = *(a1 + 48);
      v17 = *(a1 + 64);
      [v6 iconInfoForPageURLString:v7 includingPrivateData:v8 completionHandler:v14];
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke_cold_1();
      }

      v12 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke_cold_2();
      }

      v13 = *(a1 + 56);
      if (v13)
      {
        (*(v13 + 16))(v13, 0);
      }
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }
}

void __87__WBSFaviconProvider_linkIconFromPageURL_toCurrentPageURL_isPrivate_completionHandler___block_invoke_18(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v3 _atomicallyLinkPageURLs:v4 toIconWithInfo:v6 isPrivate:*(a1 + 56)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6 != 0);
  }
}

- (BOOL)_isIconDateExpired:(id)expired
{
  expiredCopy = expired;
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceReferenceDate];
  v7 = v6;

  [expiredCopy timeIntervalSinceReferenceDate];
  v9 = v7 - v8 > self->_expirationInterval || v8 > v7;

  return v9;
}

- (void)saveFaviconImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  if (!lCopy || !rLCopy || !uRLCopy)
  {
    v26 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [WBSFaviconProvider saveFaviconImageData:iconURL:pageURL:originalPageURL:size:isPrivate:completionHandler:];
    }

    v27 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478339;
      v38 = rLCopy;
      v39 = 2113;
      v40 = uRLCopy;
      v41 = 2113;
      v42 = lCopy;
      _os_log_debug_impl(&dword_1C6968000, v27, OS_LOG_TYPE_DEBUG, "Cannot save icon, invalid page URL %{private}@, original page URL %{private}@, or icon URL %{private}@", buf, 0x20u);
      if (!handlerCopy)
      {
        goto LABEL_13;
      }
    }

    else if (!handlerCopy)
    {
      goto LABEL_13;
    }

    handlerCopy[2](handlerCopy);
    goto LABEL_13;
  }

  if ([uRLCopy safari_shouldBeAssociatedWithFaviconFromRedirectedURL:rLCopy])
  {
    v22 = uRLCopy;
  }

  else
  {
    v22 = rLCopy;
  }

  v23 = v22;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__WBSFaviconProvider_saveFaviconImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke;
  block[3] = &unk_1E82841D8;
  block[4] = self;
  v33 = handlerCopy;
  v29 = rLCopy;
  v30 = v23;
  v31 = dataCopy;
  v32 = lCopy;
  v34 = width;
  v35 = height;
  privateCopy = private;
  v25 = v23;
  dispatch_async(internalQueue, block);

LABEL_13:
}

void *__108__WBSFaviconProvider_saveFaviconImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  v3 = result[9];
  if (v3 == 2)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 80);
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    v12 = *(a1 + 72);

    return [result _atomicallySaveImageData:v5 iconURL:v6 pageURL:v7 originalPageURL:v8 size:v11 isPrivate:v12 completionHandler:{v9, v10}];
  }

  else
  {
    if (v3 == 1)
    {
      [result _updateOutstandingRequestsForPageURL:*(a1 + 40) forceDidReceiveNewData:0];
      if (([*(a1 + 40) isEqual:*(a1 + 48)] & 1) == 0)
      {
        [*(a1 + 32) _updateOutstandingRequestsForPageURL:*(a1 + 48) forceDidReceiveNewData:0];
      }
    }

    else if (v3)
    {
      return result;
    }

    result = *(a1 + 72);
    if (result)
    {
      v4 = result[2];

      return v4();
    }
  }

  return result;
}

- (void)_atomicallySaveImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  internalSavingQueue = self->_internalSavingQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __112__WBSFaviconProvider__atomicallySaveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke;
  v28[3] = &unk_1E8284200;
  objc_copyWeak(v34, &location);
  v32 = uRLCopy;
  v33 = handlerCopy;
  v29 = dataCopy;
  v30 = lCopy;
  v31 = rLCopy;
  v34[1] = *&width;
  v34[2] = *&height;
  privateCopy = private;
  v23 = uRLCopy;
  v24 = rLCopy;
  v25 = lCopy;
  v26 = dataCopy;
  v27 = handlerCopy;
  dispatch_async(internalSavingQueue, v28);

  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __112__WBSFaviconProvider__atomicallySaveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_suspend(WeakRetained[5]);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 80);
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__WBSFaviconProvider__atomicallySaveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_2;
    v11[3] = &unk_1E8283758;
    v11[4] = v3;
    v12 = *(a1 + 64);
    [(dispatch_object_t *)v3 _saveImageData:v4 iconURL:v5 pageURL:v6 originalPageURL:v7 size:v10 isPrivate:v11 completionHandler:v8, v9];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __112__WBSFaviconProvider__atomicallySaveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_2(uint64_t a1)
{
  dispatch_resume(*(*(a1 + 32) + 40));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_createSemaphoreAndAddToWebViewImageOperationSemaphoresIfNecessary:(BOOL *)necessary
{
  v5 = dispatch_semaphore_create(0);
  v6 = self->_webViewImageOperationSemaphores;
  objc_sync_enter(v6);
  isSavingPendingChangesBeforeTermination = self->_isSavingPendingChangesBeforeTermination;
  if (!isSavingPendingChangesBeforeTermination)
  {
    [(NSMutableArray *)self->_webViewImageOperationSemaphores addObject:v5];
  }

  objc_sync_exit(v6);

  *necessary = isSavingPendingChangesBeforeTermination;

  return v5;
}

- (void)_sizeOfImageWithData:(id)data closestToPreferredSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  handlerCopy = handler;
  if ([dataCopy length])
  {
    WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
    isSavingPendingChangesBeforeTermination = 0;
    v12 = [(WBSFaviconProvider *)self _createSemaphoreAndAddToWebViewImageOperationSemaphoresIfNecessary:&isSavingPendingChangesBeforeTermination];
    if (isSavingPendingChangesBeforeTermination)
    {
      handlerCopy[2](handlerCopy, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    }

    else
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x4012000000;
      v36 = __Block_byref_object_copy__2;
      v13 = MEMORY[0x1E695F060];
      v37 = __Block_byref_object_dispose__2;
      v38 = &unk_1C6ABACDE;
      v39 = *MEMORY[0x1E695F060];
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 0;
      v14 = [[WBSPerformImageOperationUsingWebViewRequest alloc] initForGettingImageInfoWithImageData:dataCopy];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __84__WBSFaviconProvider__sizeOfImageWithData_closestToPreferredSize_completionHandler___block_invoke;
      v23 = &unk_1E8284228;
      v27 = width;
      v28 = height;
      v25 = &v33;
      v26 = &v29;
      v15 = v12;
      v24 = v15;
      v16 = [WeakRetained siteMetadataProvider:self registerOneTimeRequest:v14 priority:2 responseHandler:&v20];
      dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
      v17 = self->_webViewImageOperationSemaphores;
      objc_sync_enter(v17);
      isSavingPendingChangesBeforeTermination = self->_isSavingPendingChangesBeforeTermination;
      [(NSMutableArray *)self->_webViewImageOperationSemaphores removeObject:v15, v20, v21, v22, v23];
      objc_sync_exit(v17);

      if (isSavingPendingChangesBeforeTermination)
      {
        v18 = 0;
        v19 = v13 + 1;
      }

      else
      {
        v13 = (v34 + 6);
        v19 = (v34 + 7);
        v18 = *(v30 + 24);
      }

      handlerCopy[2](handlerCopy, v18 & 1, *v13, *v19);

      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }
}

void __84__WBSFaviconProvider__sizeOfImageWithData_closestToPreferredSize_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 availableImageSizes];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    v7 = MEMORY[0x1E695F060];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v21 + 1) + 8 * i) CGSizeValue];
        v11 = v9;
        v12 = v10;
        v13 = *(*(a1 + 40) + 8);
        v14 = (v13 + 56);
        if (*(v13 + 48) == *v7 && *(v13 + 56) == v7[1])
        {
          *(v13 + 48) = v9;
        }

        else
        {
          if (![WBSFaviconProviderUtilities isFaviconSize:v9 morePreferrableThanFaviconSize:v10 givenDesiredSize:?])
          {
            continue;
          }

          v16 = *(*(a1 + 40) + 8);
          *(v16 + 48) = v11;
          v14 = (v16 + 56);
        }

        *v14 = v12;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v17 = [v3 imageType];
  v18 = [v17 isEqualToString:@"public.svg-image"];

  if (v18)
  {
    *(*(*(a1 + 40) + 8) + 48) = *(a1 + 56);
  }

  v19 = [v3 availableImageSizes];
  if ([v19 count] > 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v20 = [v3 imageType];
    *(*(*(a1 + 48) + 8) + 24) = [v20 isEqualToString:@"public.svg-image"];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_multiResolutionImageFromImageData:(id)data withPreferredSize:(CGSize)size atScales:(id)scales completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  scalesCopy = scales;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
  isSavingPendingChangesBeforeTermination = 0;
  v15 = [(WBSFaviconProvider *)self _createSemaphoreAndAddToWebViewImageOperationSemaphoresIfNecessary:&isSavingPendingChangesBeforeTermination];
  if (isSavingPendingChangesBeforeTermination)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__23;
    v37 = __Block_byref_object_dispose__24;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    height = [[WBSPerformImageOperationUsingWebViewRequest alloc] initForGettingMultiResolutionImageDataWithImageData:dataCopy withPreferredSize:scalesCopy atScales:width, height];
    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __102__WBSFaviconProvider__multiResolutionImageFromImageData_withPreferredSize_atScales_completionHandler___block_invoke;
    v25 = &unk_1E8284250;
    v27 = &v33;
    v28 = &v29;
    v17 = v15;
    v26 = v17;
    v18 = [WeakRetained siteMetadataProvider:self registerOneTimeRequest:height priority:2 responseHandler:&v22];
    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v19 = self->_webViewImageOperationSemaphores;
    objc_sync_enter(v19);
    isSavingPendingChangesBeforeTermination = self->_isSavingPendingChangesBeforeTermination;
    [(NSMutableArray *)self->_webViewImageOperationSemaphores removeObject:v17, v22, v23, v24, v25];
    objc_sync_exit(v19);

    if (isSavingPendingChangesBeforeTermination)
    {
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = v34[5];
      v21 = *(v30 + 24);
    }

    (*(handlerCopy + 2))(handlerCopy, v20, v21 & 1);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }
}

void __102__WBSFaviconProvider__multiResolutionImageFromImageData_withPreferredSize_atScales_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 multiResolutionImageData];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 48) + 8) + 24) = [v6 didGenerateResolutions];
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldRejectIconWithBadData
{
  selfCopy = self;
  v3 = self->_webViewImageOperationSemaphores;
  objc_sync_enter(v3);
  LOBYTE(selfCopy) = selfCopy->_isSavingPendingChangesBeforeTermination;
  objc_sync_exit(v3);

  return (selfCopy & 1) == 0;
}

- (void)_confirmImageDataShouldBeSaved:(id)saved size:(CGSize)size pageURL:(id)l iconURL:(id)rL includingPrivateData:(BOOL)data completionHandler:(id)handler
{
  dataCopy = data;
  height = size.height;
  width = size.width;
  savedCopy = saved;
  lCopy = l;
  rLCopy = rL;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  persistenceController = self->_persistenceController;
  absoluteString = [lCopy absoluteString];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke;
  v25[3] = &unk_1E82842C8;
  objc_copyWeak(v30, &location);
  v20 = handlerCopy;
  v29 = v20;
  v21 = savedCopy;
  v26 = v21;
  v22 = lCopy;
  v27 = v22;
  v23 = rLCopy;
  v28 = v23;
  v31 = dataCopy;
  v30[1] = *&width;
  v30[2] = *&height;
  [(WBSFaviconProviderPersistenceController *)persistenceController iconInfoForPageURLString:absoluteString includingPrivateData:dataCopy completionHandler:v25];

  objc_destroyWeak(v30);
  objc_destroyWeak(&location);
}

void __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 32);
    v7 = WeakRetained[11];
    v8 = WeakRetained[12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2;
    v9[3] = &unk_1E82842A0;
    objc_copyWeak(&v15, (a1 + 64));
    v14 = *(a1 + 56);
    v10 = *(a1 + 40);
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v17 = *(a1 + 88);
    v13 = v3;
    v16 = *(a1 + 72);
    [v5 _sizeOfImageWithData:v6 closestToPreferredSize:v9 completionHandler:{v7, v8}];

    objc_destroyWeak(&v15);
  }

  else
  {
    (*(*(a1 + 56) + 16))(*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }
}

void __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2(uint64_t a1, int a2, double a3, double a4)
{
  v51 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v9 = WeakRetained;
  v10 = MEMORY[0x1E695F060];
  if (!WeakRetained)
  {
    goto LABEL_19;
  }

  if (a3 == *MEMORY[0x1E695F060] && a4 == *(MEMORY[0x1E695F060] + 8))
  {
    if ([WeakRetained _shouldRejectIconWithBadData])
    {
      v14 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2_cold_1(*(a1 + 32), buf, [*(a1 + 40) length]);
      }

      v15 = *(v9 + 6);
      v16 = [*(a1 + 32) absoluteString];
      v17 = [*(a1 + 48) absoluteString];
      v18 = *(a1 + 96);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_25;
      v45[3] = &unk_1E8283428;
      v46 = *(a1 + 64);
      [v15 setIconIsRejectedResource:1 forPageURLString:v16 iconURLString:v17 isPrivate:v18 completionHandler:v45];

      goto LABEL_32;
    }

    v19 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 141558275;
      v48 = 1752392040;
      v49 = 2117;
      v50 = v20;
      _os_log_impl(&dword_1C6968000, v19, OS_LOG_TYPE_DEFAULT, "Not saving image for %{sensitive, mask.hash}@ because we're about to terminate.", buf, 0x16u);
    }

LABEL_19:
    (*(*(a1 + 64) + 16))(*v10, v10[1]);
    goto LABEL_32;
  }

  if (*(a1 + 56))
  {
    v12 = [WBSFaviconProviderUtilities computeRelativeSize:a3 referenceSize:a4, WeakRetained[11], WeakRetained[12]]!= 6 || a2 == 0;
    if (v12 || ([*(a1 + 56) hasGeneratedResolutions] & 1) == 0)
    {
      [*(a1 + 56) size];
      v13 = [WBSFaviconProviderUtilities isFaviconSize:a3 morePreferrableThanFaviconSize:a4 givenDesiredSize:v21, v22, v9[11], v9[12]];
    }

    else
    {
      v13 = 1;
    }

    if (!(v13 | (([*(a1 + 56) hasGeneratedResolutions] & 1) == 0)))
    {
      if ((a2 & 1) != 0 || (*(a1 + 80) == *v10 ? (v28 = *(a1 + 88) == v10[1]) : (v28 = 0), v28))
      {
        v29 = *(v9 + 6);
        v30 = [*(a1 + 32) absoluteString];
        v31 = [*(a1 + 48) absoluteString];
        v32 = *(a1 + 96);
        v43[0] = MEMORY[0x1E69E9820];
        v43[1] = 3221225472;
        v43[2] = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_26;
        v43[3] = &unk_1E8283428;
        v44 = *(a1 + 64);
        [v29 setIconIsRejectedResource:1 forPageURLString:v30 iconURLString:v31 isPrivate:v32 completionHandler:v43];

        goto LABEL_32;
      }
    }

    v23 = [*(a1 + 56) dateAdded];
    v24 = [v9 _isIconDateExpired:v23];

    if (((v24 | v13) & 1) == 0)
    {
      (*(*(a1 + 64) + 16))(*v10, v10[1]);
      goto LABEL_32;
    }
  }

  v33 = MEMORY[0x1E69E9820];
  v34 = 3221225472;
  v35 = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2_27;
  v36 = &unk_1E8284278;
  objc_copyWeak(v41, (a1 + 72));
  v40 = *(a1 + 64);
  v37 = *(a1 + 32);
  v26 = *(a1 + 40);
  v25 = a1 + 40;
  v38 = v26;
  v39 = *(v25 + 8);
  v42 = *(v25 + 56);
  v41[1] = *&a3;
  v41[2] = *&a4;
  v27 = _Block_copy(&v33);
  [v9 _multiResolutionImageFromImageData:*v25 withPreferredSize:*(v9 + 20) atScales:v27 completionHandler:{v9[21], v9[22], v33, v34, v35, v36}];

  objc_destroyWeak(v41);
LABEL_32:
}

void __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2_27(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
LABEL_10:
    (*(*(a1 + 56) + 16))(*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
    goto LABEL_11;
  }

  if (v3)
  {
    (*(*(a1 + 56) + 16))(*(a1 + 72), *(a1 + 80));
    goto LABEL_11;
  }

  if (![WeakRetained _shouldRejectIconWithBadData])
  {
    v11 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      *buf = 141558275;
      v16 = 1752392040;
      v17 = 2117;
      v18 = v12;
      _os_log_impl(&dword_1C6968000, v11, OS_LOG_TYPE_DEFAULT, "Not saving image for %{sensitive, mask.hash}@ because we're about to terminate.", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_2_27_cold_1(*(a1 + 32), buf, [*(a1 + 40) length]);
  }

  v7 = v5[6];
  v8 = [*(a1 + 32) absoluteString];
  v9 = [*(a1 + 48) absoluteString];
  v10 = *(a1 + 88);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __113__WBSFaviconProvider__confirmImageDataShouldBeSaved_size_pageURL_iconURL_includingPrivateData_completionHandler___block_invoke_28;
  v13[3] = &unk_1E8283428;
  v14 = *(a1 + 56);
  [v7 setIconIsRejectedResource:1 forPageURLString:v8 iconURLString:v9 isPrivate:v10 completionHandler:v13];

LABEL_11:
}

- (void)_saveImageData:(id)data iconURL:(id)l pageURL:(id)rL originalPageURL:(id)uRL size:(CGSize)size isPrivate:(BOOL)private completionHandler:(id)handler
{
  privateCopy = private;
  height = size.height;
  width = size.width;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  handlerCopy = handler;
  dataCopy = data;
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke;
  v26[3] = &unk_1E8284368;
  objc_copyWeak(&v31, &location);
  v27 = rLCopy;
  v28 = lCopy;
  v32 = privateCopy;
  v29 = uRLCopy;
  v30 = handlerCopy;
  v22 = uRLCopy;
  v23 = lCopy;
  v24 = rLCopy;
  v25 = handlerCopy;
  [(WBSFaviconProvider *)self _confirmImageDataShouldBeSaved:dataCopy size:v24 pageURL:v23 iconURL:privateCopy includingPrivateData:v26 completionHandler:width, height];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke(uint64_t a1, char a2, void *a3, uint64_t a4, double a5, double a6)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v13 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    v14 = *(WeakRetained + 6);
    v23 = [*(a1 + 32) absoluteString];
    v15 = [*(a1 + 40) absoluteString];
    v16 = *(a1 + 72);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_2;
    v24[3] = &unk_1E8284340;
    objc_copyWeak(&v27, (a1 + 64));
    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    *&v20 = *(a1 + 40);
    *(&v20 + 1) = v17;
    *&v21 = v18;
    *(&v21 + 1) = v19;
    v25 = v21;
    v26 = v20;
    v28 = *(a1 + 72);
    [v14 setIconData:v11 forPageURLString:v23 iconURLString:v15 iconSize:a4 hasGeneratedResolutions:v16 isPrivate:v24 completionHandler:{a5, a6}];

    objc_destroyWeak(&v27);
  }

  else
  {
    v22 = *(a1 + 56);
    if (v22)
    {
      (*(v22 + 16))();
    }
  }
}

void __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[4];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_3;
    v11[3] = &unk_1E8284318;
    v11[4] = WeakRetained;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 56);
    *&v8 = *(a1 + 48);
    *(&v8 + 1) = v7;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v12 = v9;
    v13 = v8;
    v14 = *(a1 + 72);
    dispatch_async(v4, v11);
  }

  else
  {
    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))();
    }
  }
}

void __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _updateOutstandingRequestsForPageURL:*(a1 + 40) forceDidReceiveNewData:0];
  if ([*(a1 + 48) isEqual:*(a1 + 40)])
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = [*(a1 + 48) absoluteString];
    v6 = [*(a1 + 56) absoluteString];
    v7 = *(a1 + 72);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_4;
    v8[3] = &unk_1E82842F0;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    [v4 linkPageURLString:v5 toIconURLString:v6 isPrivate:v7 completionHandler:v8];
  }
}

void __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_5;
  block[3] = &unk_1E8283450;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

uint64_t __102__WBSFaviconProvider__saveImageData_iconURL_pageURL_originalPageURL_size_isPrivate_completionHandler___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _updateOutstandingRequestsForPageURL:*(a1 + 40) forceDidReceiveNewData:0];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeAllIconsForURLStringsNotIn:(id)in completionHandler:(id)handler
{
  inCopy = in;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSFaviconProvider_removeAllIconsForURLStringsNotIn_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = inCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = inCopy;
  dispatch_async(internalQueue, block);
}

- (void)removeIconForURLString:(id)string completionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSFaviconProvider_removeIconForURLString_completionHandler___block_invoke;
  block[3] = &unk_1E8283450;
  block[4] = self;
  v12 = stringCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = stringCopy;
  dispatch_async(internalQueue, block);
}

- (void)flushPrivateDataFromMemoryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E8283758;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(internalQueue, v7);
}

void __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E8284390;
  v4[4] = v2;
  v5 = v1;
  [v3 flushPrivateDataFromMemoryWithCompletionHandler:v4];
}

void __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E8283450;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t __70__WBSFaviconProvider_flushPrivateDataFromMemoryWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(a1 + 40);
        v7 = [MEMORY[0x1E695DFF8] URLWithString:{*(*(&v9 + 1) + 8 * v5), v9}];
        [v6 _updateOutstandingRequestsForPageURL:v7 forceDidReceiveNewData:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)retainPrivateData
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__WBSFaviconProvider_retainPrivateData__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)releasePrivateData
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__WBSFaviconProvider_releasePrivateData__block_invoke;
  block[3] = &unk_1E8282FD8;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void *__40__WBSFaviconProvider_releasePrivateData__block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 80);
  if (v2)
  {
    *(v1 + 80) = v2 - 1;
    result = result[4];
    if (!result[10])
    {
      return [result flushPrivateDataFromMemoryWithCompletionHandler:0];
    }
  }

  return result;
}

- (BOOL)canHandleRequest:(id)request
{
  requestCopy = request;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)prepareResponseForRequest:(id)request allowDelayedResponse:(BOOL)response
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__WBSFaviconProvider_prepareResponseForRequest_allowDelayedResponse___block_invoke;
  block[3] = &unk_1E8282EF0;
  block[4] = self;
  v9 = requestCopy;
  v10 = requestCopy;
  v7 = requestCopy;
  dispatch_async(internalQueue, block);
}

void __69__WBSFaviconProvider_prepareResponseForRequest_allowDelayedResponse___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _registerRequest:*(a1 + 40)];
  v2 = [*(a1 + 32) _cachedResponseForRequest:*(a1 + 40)];
  if (!v2)
  {
    if ([*(*(a1 + 32) + 24) containsObject:*(a1 + 48)])
    {
      return;
    }

    v3 = *(a1 + 32);
    v4 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    [v3 _prepareAndSendResponseForRequests:? forceDidReceiveNewData:?];
    v2 = v4;
  }
}

- (id)responseForRequest:(id)request willProvideUpdates:(BOOL *)updates
{
  *updates = 1;
  v4 = [(WBSFaviconProvider *)self _cachedResponseForRequest:request];

  return v4;
}

- (void)stopWatchingUpdatesForRequest:(id)request
{
  requestCopy = request;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__WBSFaviconProvider_stopWatchingUpdatesForRequest___block_invoke;
  v7[3] = &unk_1E8282EA0;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(internalQueue, v7);
}

void __52__WBSFaviconProvider_stopWatchingUpdatesForRequest___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v2 = [*(a1 + 40) _hostFromRequest:*(a1 + 32)];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:v2];
    [v3 removeObject:v4];
    if (![v3 count])
    {
      [*(*(a1 + 40) + 8) removeObjectForKey:v2];
    }
  }
}

- (void)savePendingChangesBeforeTermination
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = self->_webViewImageOperationSemaphores;
  objc_sync_enter(v3);
  self->_isSavingPendingChangesBeforeTermination = 1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_webViewImageOperationSemaphores;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        dispatch_semaphore_signal(*(*(&v9 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
  dispatch_sync(self->_internalSavingQueue, &__block_literal_global_36_0);
  [(WBSFaviconProviderPersistenceController *)self->_persistenceController savePendingChangesBeforeTermination];
  v8 = self->_webViewImageOperationSemaphores;
  objc_sync_enter(v8);
  self->_isSavingPendingChangesBeforeTermination = 0;
  objc_sync_exit(v8);
}

- (id)_cachedResponseForRequest:(id)request
{
  requestCopy = request;
  v5 = self->_responseCache;
  objc_sync_enter(v5);
  responseCache = self->_responseCache;
  v7 = [(WBSFaviconProvider *)self _responseCacheKeyForRequest:requestCopy];
  v8 = [(NSCache *)responseCache objectForKey:v7];

  v9 = [(WBSFaviconProvider *)self _responseDictionaryKeyForRequest:requestCopy];
  v10 = [v8 objectForKeyedSubscript:v9];

  objc_sync_exit(v5);

  return v10;
}

- (void)_addCachedResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  v7 = self->_responseCache;
  objc_sync_enter(v7);
  responseCache = self->_responseCache;
  v9 = [(WBSFaviconProvider *)self _responseCacheKeyForRequest:requestCopy];
  v10 = [(NSCache *)responseCache objectForKey:v9];

  if (!v10)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = self->_responseCache;
    v13 = [(WBSFaviconProvider *)self _responseCacheKeyForRequest:requestCopy];
    [(NSCache *)v12 setObject:dictionary forKey:v13];

    v10 = dictionary;
  }

  v14 = [(WBSFaviconProvider *)self _responseDictionaryKeyForRequest:requestCopy];
  [v10 setObject:responseCopy forKeyedSubscript:v14];

  objc_sync_exit(v7);
}

- (void)_removeCachedResponsesForURL:(id)l
{
  obj = self->_responseCache;
  lCopy = l;
  objc_sync_enter(obj);
  [(NSCache *)self->_responseCache removeObjectForKey:lCopy];

  objc_sync_exit(obj);
}

- (void)_removeCachedResponsesForRequest:(id)request
{
  requestCopy = request;
  v4 = self->_responseCache;
  objc_sync_enter(v4);
  responseCache = self->_responseCache;
  v6 = [(WBSFaviconProvider *)self _responseCacheKeyForRequest:requestCopy];
  v7 = [(NSCache *)responseCache objectForKey:v6];

  if (v7)
  {
    v8 = [(WBSFaviconProvider *)self _responseDictionaryKeyForRequest:requestCopy];
    [v7 removeObjectForKey:v8];
  }

  objc_sync_exit(v4);
}

- (id)_responseDictionaryKeyForRequest:(id)request
{
  requestCopy = request;
  v4 = MEMORY[0x1E696AEC0];
  [requestCopy iconSize];
  v6 = v5;
  [requestCopy iconSize];
  v8 = [v4 stringWithFormat:@"{%lf, %lf}-%lu", v6, v7, objc_msgSend(requestCopy, "fallbackType")];

  return v8;
}

- (id)_responseCacheKeyForRequest:(id)request
{
  v3 = [request url];

  return v3;
}

- (id)_hostFromRequest:(id)request
{
  v4 = [request url];
  v5 = [(WBSFaviconProvider *)self _hostFromURL:v4];

  return v5;
}

- (id)_hostFromURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    absoluteString = [lCopy absoluteString];
  }

  else
  {
    host = [lCopy host];
    absoluteString = [host safari_stringByRemovingWwwDotPrefix];
  }

  return absoluteString;
}

- (void)_registerRequest:(id)request
{
  requestCopy = request;
  v4 = [(WBSFaviconProvider *)self _hostFromRequest:?];
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_hostsToRequestsMap objectForKeyedSubscript:v4];
    if (!v5)
    {
      v5 = [MEMORY[0x1E695DFA8] set];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    [v5 addObject:requestCopy];
  }
}

- (id)_requestsForHost:(id)host
{
  v3 = [(NSMutableDictionary *)self->_hostsToRequestsMap objectForKeyedSubscript:host];

  return v3;
}

- (void)_updateOutstandingRequestsForPageURL:(id)l forceDidReceiveNewData:(BOOL)data
{
  dataCopy = data;
  lCopy = l;
  [(WBSFaviconProvider *)self _removeCachedResponsesForURL:?];
  v6 = [(WBSFaviconProvider *)self _hostFromURL:lCopy];
  v7 = [(WBSFaviconProvider *)self _requestsForHost:v6];

  if ([v7 count])
  {
    [(WBSFaviconProvider *)self _prepareAndSendResponseForRequests:v7 forceDidReceiveNewData:dataCopy];
  }
}

- (void)_prepareAndSendResponseForRequests:(id)requests forceDidReceiveNewData:(BOOL)data
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke;
  v4[3] = &unk_1E8284430;
  v4[4] = self;
  dataCopy = data;
  [requests enumerateObjectsUsingBlock:v4];
}

void __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(a1 + 32) + 24) addObject:v3];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_2;
  v6[3] = &unk_1E8284408;
  v6[4] = v4;
  v5 = v3;
  v7 = v5;
  v8 = *(a1 + 40);
  [v4 _getIconForRequest:v5 withCompletionHandler:v6];
}

void __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_3;
  v8[3] = &unk_1E82843E0;
  v8[4] = v5;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [*(a1 + 32) _addCachedResponse:*(a1 + 40) forRequest:*(a1 + 48)];
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 48)];
  v3 = *(a1 + 56);
  if (v3 != 1)
  {
    v4 = [*(a1 + 40) favicon];
    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v5 = [*(a1 + 40) favicon];
      if (v5)
      {
        v3 = 0;
      }

      else
      {
        v3 = [*(a1 + 48) fallbackType] == 0;
      }
    }
  }

  if ([*(a1 + 48) isIconDownloadingEnabled] && !objc_msgSend(*(a1 + 40), "faviconType"))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 48) url];
    v8 = [*(a1 + 48) url];
    v9 = [*(a1 + 48) url];
    [*(a1 + 48) iconSize];
    v11 = v10;
    v13 = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_4;
    v17[3] = &unk_1E82843B8;
    v14 = WeakRetained;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = *(a1 + 48);
    v22 = v3;
    [v6 shouldIconDataBeSavedForIconWithPageURL:v7 originalPageURL:v8 iconURL:v9 size:0 isPrivate:v17 completionHandler:{v11, v13}];
  }

  else
  {
    [WeakRetained siteMetadataProvider:*(a1 + 32) didReceiveResponse:*(a1 + 40) ofType:0 didReceiveNewData:v3 forRequest:*(a1 + 48)];
  }
}

void __80__WBSFaviconProvider__prepareAndSendResponseForRequests_forceDidReceiveNewData___block_invoke_4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (a2)
  {
    v5 = *(a1 + 56);
    v9 = [*(a1 + 40) _blockOperationForRequest:v5];
    [v2 siteMetadataProvider:v3 didReceiveResponse:v4 forRequest:v5 beginOperationUsingBlock:?];
  }

  else
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 56);
    v8 = *(a1 + 32);

    [v8 siteMetadataProvider:v3 didReceiveResponse:v4 ofType:0 didReceiveNewData:v6 forRequest:v7];
  }
}

WBSTouchIconFetchOperation *__48__WBSFaviconProvider__blockOperationForRequest___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [WBSTouchIconFetchOperation alloc];
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__WBSFaviconProvider__blockOperationForRequest___block_invoke_2;
  v6[3] = &unk_1E8284458;
  objc_copyWeak(&v8, &location);
  v7 = *(a1 + 40);
  v4 = [(WBSTouchIconFetchOperation *)v2 initWithRequest:v3 completionHandler:v6];
  [(WBSWebViewMetadataFetchOperation *)v4 setDelegate:*(a1 + 32)];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v4;
}

void __48__WBSFaviconProvider__blockOperationForRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__WBSFaviconProvider__blockOperationForRequest___block_invoke_3;
    block[3] = &unk_1E8282EF0;
    v8 = v3;
    v9 = v5;
    v10 = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

void __48__WBSFaviconProvider__blockOperationForRequest___block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) pageRequestDidSucceed] && !objc_msgSend(*(a1 + 32), "higherPriorityIconDownloadFailedDueToNetworkError"))
  {
    v5 = *(a1 + 40);
    v12 = [*(a1 + 32) iconData];
    v6 = [*(a1 + 32) iconURL];
    v7 = [*(a1 + 48) url];
    v8 = [*(a1 + 48) url];
    [*(a1 + 48) iconSize];
    [v5 _atomicallySaveImageData:v12 iconURL:v6 pageURL:v7 originalPageURL:v8 size:0 isPrivate:0 completionHandler:?];
  }

  else
  {
    v2 = [*(a1 + 32) iconURL];

    if (!v2)
    {
      return;
    }

    v10 = [*(a1 + 32) response];
    v3 = [v10 statusCode];

    v11 = [*(a1 + 32) response];
    v4 = [v11 safari_statusCodeGroup];

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 4 && (v3 & 0xFFFFFFFFFFFFFFFELL) != 0xCC)
    {
      return;
    }

    v9 = *(*(a1 + 40) + 48);
    v12 = [*(a1 + 48) url];
    v6 = [v12 absoluteString];
    v7 = [*(a1 + 32) iconURL];
    v8 = [v7 absoluteString];
    [v9 setIconIsRejectedResource:1 forPageURLString:v6 iconURLString:v8 isPrivate:0 completionHandler:&__block_literal_global_46];
  }
}

- (void)webViewMetadataFetchOperation:(id)operation didFinishUsingWebView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
  [WeakRetained siteMetadataProvider:self didFinishUsingWebView:viewCopy];
}

- (void)webViewMetadataFetchOperation:(id)operation getWebViewOfSize:(CGSize)size withConfiguration:(id)configuration completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  configurationCopy = configuration;
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);
  [WeakRetained siteMetadataProvider:self getWebViewOfSize:configurationCopy withConfiguration:handlerCopy completionHandler:{width, height}];
}

- (void)_getIconForRequest:(id)request withCompletionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E82844D0;
  aBlock[4] = self;
  v8 = requestCopy;
  v30 = v8;
  v9 = handlerCopy;
  v31 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (self->_providerState)
  {
    v12 = [(WBSFaviconProvider *)self builtInIconForRequest:v8];
    if (v12)
    {
      (v11)[2](v11, v12, 1);
LABEL_14:

      goto LABEL_15;
    }

    if (self->_providerState == 1)
    {
      absoluteString = [(WBSFaviconProvider *)self fallbackIconForRequest:v8];
      v14 = [WBSFaviconResponse alloc];
      v15 = [v8 url];
      v16 = [(WBSFaviconResponse *)v14 initWithURL:v15 favicon:absoluteString faviconType:0];
      (*(v9 + 2))(v9, v16);
    }

    else
    {
      type = [v8 type];
      if (type)
      {
        if (type != 1)
        {
          goto LABEL_14;
        }

        v18 = [(WBSFaviconProvider *)self _hostFromRequest:v8];
        persistenceController = self->_persistenceController;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_3;
        v26[3] = &unk_1E8284568;
        v27 = v18;
        v28 = v11;
        v26[4] = self;
        absoluteString = v18;
        [(WBSFaviconProviderPersistenceController *)persistenceController firstIconForVariantsOfDomainString:absoluteString includingPrivateData:1 completionHandler:v26];

        v15 = v28;
      }

      else
      {
        v20 = [v8 url];
        absoluteString = [v20 absoluteString];

        if ([v8 isURLTypedByUser])
        {
          safari_bestURLForUserTypedString = [absoluteString safari_bestURLForUserTypedString];
          absoluteString2 = [safari_bestURLForUserTypedString absoluteString];

          absoluteString = absoluteString2;
        }

        v23 = self->_persistenceController;
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_7;
        v24[3] = &unk_1E8284590;
        v25 = v11;
        [(WBSFaviconProviderPersistenceController *)v23 firstIconForVariantsOfPageURLString:absoluteString includingPrivateData:1 completionHandler:v24];
        v15 = v25;
      }
    }

    goto LABEL_14;
  }

  (*(v10 + 2))(v10, 0, 0);
LABEL_15:
}

void __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *(v7 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E82844A8;
  v15 = a3;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v14 = *(a1 + 48);
  v9 = v5;
  dispatch_async(v8, block);
}

void __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v7 = *(a1 + 32);
  if (!v7)
  {
    [*(a1 + 40) fallbackIconForRequest:*(a1 + 48)];
    v7 = v2 = 0;
  }

  v3 = *(a1 + 56);
  v4 = [WBSFaviconResponse alloc];
  v5 = [*(a1 + 48) url];
  v6 = [(WBSFaviconResponse *)v4 initWithURL:v5 favicon:v7 faviconType:v2];
  (*(v3 + 16))(v3, v6);
}

void __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 48);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_4;
    v7[3] = &unk_1E8284540;
    v6 = *(a1 + 48);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 pageURLStringsPrefixedWithVariantsOfDomainString:v4 includingPrivateData:1 completionHandler:v7];
  }
}

void __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 safari_minimumUsingComparator:&__block_literal_global_53];
  if (v3)
  {
    v4 = *(*(a1 + 32) + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_6;
    v5[3] = &unk_1E8284518;
    v6 = *(a1 + 40);
    [v4 iconForPageURLString:v3 includingPrivateData:1 completionHandler:v5];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __63__WBSFaviconProvider__getIconForRequest_withCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 pathComponents];
  v7 = [v6 count];
  v8 = [v5 pathComponents];
  v9 = [v8 count];

  if (v7 >= v9)
  {
    v11 = [v4 pathComponents];
    v12 = [v11 count];
    v13 = [v5 pathComponents];
    v10 = v12 > [v13 count];
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (void)_atomicallyLinkPageURLs:(id)ls toIconWithInfo:(id)info isPrivate:(BOOL)private
{
  lsCopy = ls;
  infoCopy = info;
  objc_initWeak(&location, self);
  internalSavingQueue = self->_internalSavingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__WBSFaviconProvider__atomicallyLinkPageURLs_toIconWithInfo_isPrivate___block_invoke;
  block[3] = &unk_1E82845B8;
  objc_copyWeak(&v16, &location);
  v14 = lsCopy;
  v15 = infoCopy;
  privateCopy = private;
  v11 = infoCopy;
  v12 = lsCopy;
  dispatch_async(internalSavingQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __71__WBSFaviconProvider__atomicallyLinkPageURLs_toIconWithInfo_isPrivate___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        v6 = 0;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v11 + 1) + 8 * v6);
          dispatch_suspend(WeakRetained[5]);
          v8 = *(a1 + 40);
          v9 = *(a1 + 56);
          v10[0] = MEMORY[0x1E69E9820];
          v10[1] = 3221225472;
          v10[2] = __71__WBSFaviconProvider__atomicallyLinkPageURLs_toIconWithInfo_isPrivate___block_invoke_2;
          v10[3] = &unk_1E8282FD8;
          v10[4] = WeakRetained;
          [(dispatch_object_t *)WeakRetained _linkPageURL:v7 toIconWithInfo:v8 isPrivate:v9 completionHandler:v10];
          ++v6;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v4);
    }
  }
}

- (void)_linkPageURL:(id)l toIconWithInfo:(id)info isPrivate:(BOOL)private completionHandler:(id)handler
{
  privateCopy = private;
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  persistenceController = self->_persistenceController;
  absoluteString = [lCopy absoluteString];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke;
  v18[3] = &unk_1E8284608;
  objc_copyWeak(&v22, &location);
  v15 = handlerCopy;
  v21 = v15;
  v16 = infoCopy;
  v19 = v16;
  v17 = lCopy;
  v20 = v17;
  v23 = privateCopy;
  [(WBSFaviconProviderPersistenceController *)persistenceController iconInfoForPageURLString:absoluteString includingPrivateData:privateCopy completionHandler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained || v3 && ([v3 UUIDString], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "UUIDString"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v8 = WeakRetained[6];
    v9 = [*(a1 + 40) absoluteString];
    v10 = [*(a1 + 32) iconURLString];
    v11 = *(a1 + 64);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_2;
    v12[3] = &unk_1E82845E0;
    objc_copyWeak(&v16, (a1 + 56));
    v15 = *(a1 + 48);
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    [v8 linkPageURLString:v9 toIconURLString:v10 isPrivate:v11 completionHandler:v12];

    objc_destroyWeak(&v16);
  }
}

void __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_2(uint64_t a1, char a2)
{
  v17 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if ((a2 & 1) == 0)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_2_cold_1();
      }

      v6 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v8 = [*(a1 + 40) iconURLString];
        __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_2_cold_2(v7, v8, buf, v6);
      }
    }

    v9 = WeakRetained[4];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_56;
    v14[3] = &unk_1E8282EA0;
    v14[4] = WeakRetained;
    v15 = *(a1 + 32);
    dispatch_async(v9, v14);
    (*(*(a1 + 48) + 16))(*(a1 + 48), v10, v11, v12, v13);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (WBSSiteMetadataProviderDelegate)providerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerDelegate);

  return WeakRetained;
}

- (CGSize)preferredIconSize
{
  width = self->_preferredIconSize.width;
  height = self->_preferredIconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __119__WBSFaviconProvider_shouldIconDataBeSavedForIconWithPageURL_originalPageURL_iconURL_size_isPrivate_completionHandler___block_invoke_cold_2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&dword_1C6968000, a2, OS_LOG_TYPE_DEBUG, "Cannot determine if icon should be saved, invalid icon URL %{private}@", &v3, 0xCu);
}

void __78__WBSFaviconProvider__linkPageURL_toIconWithInfo_isPrivate_completionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2113;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "Failed to link page URL %{private}@ to icon URL %{private}@", buf, 0x16u);
}

@end