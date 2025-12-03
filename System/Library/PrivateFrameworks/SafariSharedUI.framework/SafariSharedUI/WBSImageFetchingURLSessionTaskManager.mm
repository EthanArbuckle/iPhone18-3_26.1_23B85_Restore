@interface WBSImageFetchingURLSessionTaskManager
+ (id)sharedManager;
- (WBSImageFetchingURLSessionTaskManager)init;
- (id)_urlSessionWithOptions:(unint64_t)options;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_downloadFirstValidImageWithURLs:(id)ls inURLSession:(id)session failedURLDownloadsToErrorsDictionary:(id)dictionary options:(unint64_t)options completionHandler:(id)handler;
- (void)_wbsImageFromImageData:(id)data completionHandler:(id)handler;
- (void)downloadFirstValidImageWithURLs:(id)ls options:(unint64_t)options completionHandler:(id)handler;
- (void)downloadImageWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler;
- (void)downloadImageWithURL:(id)l options:(unint64_t)options completionHandlerIncludingErrors:(id)errors;
@end

@implementation WBSImageFetchingURLSessionTaskManager

+ (id)sharedManager
{
  if (+[WBSImageFetchingURLSessionTaskManager sharedManager]::onceToken != -1)
  {
    +[WBSImageFetchingURLSessionTaskManager sharedManager];
  }

  v3 = +[WBSImageFetchingURLSessionTaskManager sharedManager]::sharedManager;

  return v3;
}

void __54__WBSImageFetchingURLSessionTaskManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WBSImageFetchingURLSessionTaskManager);
  v1 = +[WBSImageFetchingURLSessionTaskManager sharedManager]::sharedManager;
  +[WBSImageFetchingURLSessionTaskManager sharedManager]::sharedManager = v0;
}

- (WBSImageFetchingURLSessionTaskManager)init
{
  v9.receiver = self;
  v9.super_class = WBSImageFetchingURLSessionTaskManager;
  v2 = [(WBSImageFetchingURLSessionTaskManager *)&v9 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    urlSessionsByType = v2->_urlSessionsByType;
    v2->_urlSessionsByType = dictionary;

    v5 = objc_alloc_init(WBSWebViewPoolManager);
    webViewPoolManager = v2->_webViewPoolManager;
    v2->_webViewPoolManager = v5;

    v7 = v2;
  }

  return v2;
}

- (void)downloadFirstValidImageWithURLs:(id)ls options:(unint64_t)options completionHandler:(id)handler
{
  lsCopy = ls;
  handlerCopy = handler;
  if ([lsCopy count])
  {
    v17 = [(WBSImageFetchingURLSessionTaskManager *)self _urlSessionWithOptions:options];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = dispatch_group_create();
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__9;
    v37[4] = __Block_byref_object_dispose__9;
    v38 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__9;
    v35[4] = __Block_byref_object_dispose__9;
    v36 = 0;
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x3032000000;
    v33[3] = __Block_byref_object_copy__9;
    v33[4] = __Block_byref_object_dispose__9;
    v34 = 0;
    v31[0] = 0;
    v31[1] = v31;
    v31[2] = 0x3032000000;
    v31[3] = __Block_byref_object_copy__9;
    v31[4] = __Block_byref_object_dispose__9;
    v32 = 0;
    dispatch_group_enter(v11);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __99__WBSImageFetchingURLSessionTaskManager_downloadFirstValidImageWithURLs_options_completionHandler___block_invoke_3;
    v25[3] = &unk_1E82858E0;
    v28 = v35;
    v29 = v33;
    v30 = v31;
    v26 = v11;
    v27 = v37;
    v12 = v11;
    selfCopy = self;
    v14 = v17;
    [(WBSImageFetchingURLSessionTaskManager *)selfCopy _downloadFirstValidImageWithURLs:lsCopy inURLSession:v17 failedURLDownloadsToErrorsDictionary:dictionary options:options completionHandler:v25];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__WBSImageFetchingURLSessionTaskManager_downloadFirstValidImageWithURLs_options_completionHandler___block_invoke_2;
    block[3] = &unk_1E8285908;
    v21 = v37;
    v22 = v35;
    v23 = v33;
    v24 = v31;
    v19 = dictionary;
    v20 = handlerCopy;
    v15 = dictionary;
    v16 = handlerCopy;
    dispatch_group_notify(v12, MEMORY[0x1E69E96A0], block);

    _Block_object_dispose(v31, 8);
    _Block_object_dispose(v33, 8);

    _Block_object_dispose(v35, 8);
    _Block_object_dispose(v37, 8);
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __99__WBSImageFetchingURLSessionTaskManager_downloadFirstValidImageWithURLs_options_completionHandler___block_invoke;
    v39[3] = &unk_1E8283428;
    v40 = handlerCopy;
    v14 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v39);
  }
}

void __99__WBSImageFetchingURLSessionTaskManager_downloadFirstValidImageWithURLs_options_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v9;
  v24 = v9;

  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v10;
  v17 = v10;

  v18 = *(*(a1 + 56) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v11;
  v20 = v11;

  v21 = *(*(a1 + 64) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v12;
  v23 = v12;

  dispatch_group_leave(*(a1 + 32));
}

- (void)downloadImageWithURL:(id)l options:(unint64_t)options completionHandler:(id)handler
{
  v14[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  handlerCopy = handler;
  v14[0] = lCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__WBSImageFetchingURLSessionTaskManager_downloadImageWithURL_options_completionHandler___block_invoke;
  v12[3] = &unk_1E8285930;
  v11 = handlerCopy;
  v13 = v11;
  [(WBSImageFetchingURLSessionTaskManager *)self downloadFirstValidImageWithURLs:v10 options:options completionHandler:v12];
}

- (void)downloadImageWithURL:(id)l options:(unint64_t)options completionHandlerIncludingErrors:(id)errors
{
  v14[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  errorsCopy = errors;
  v14[0] = lCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__WBSImageFetchingURLSessionTaskManager_downloadImageWithURL_options_completionHandlerIncludingErrors___block_invoke;
  v12[3] = &unk_1E8285930;
  v11 = errorsCopy;
  v13 = v11;
  [(WBSImageFetchingURLSessionTaskManager *)self downloadFirstValidImageWithURLs:v10 options:options completionHandler:v12];
}

- (void)_downloadFirstValidImageWithURLs:(id)ls inURLSession:(id)session failedURLDownloadsToErrorsDictionary:(id)dictionary options:(unint64_t)options completionHandler:(id)handler
{
  lsCopy = ls;
  sessionCopy = session;
  dictionaryCopy = dictionary;
  handlerCopy = handler;
  v15 = [lsCopy copy];

  v16 = [v15 count];
  firstObject = [v15 firstObject];
  v18 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:firstObject];
  v19 = [v18 mutableCopy];

  WKStringCreateWithUTF8CString();
  WKPageCopyStandardUserAgentWithApplicationName();
  v20 = WKStringCopyCFString();
  [v19 setHTTPUserAgent:v20];

  if ((options & 4) != 0)
  {
    [v19 _setPrivacyProxyFailClosed:1];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke;
  v28[3] = &unk_1E82859A8;
  v21 = dictionaryCopy;
  v29 = v21;
  v22 = firstObject;
  v30 = v22;
  selfCopy = self;
  v35 = v16;
  v23 = handlerCopy;
  v34 = v23;
  v24 = v15;
  v32 = v24;
  v25 = sessionCopy;
  v33 = v25;
  optionsCopy = options;
  v26 = [v25 dataTaskWithRequest:v19 completionHandler:v28];
  [v26 resume];
}

void __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    [*(a1 + 32) setObject:v9 forKeyedSubscript:*(a1 + 40)];
  }

  v10 = *(a1 + 48);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke_2;
  v18[3] = &unk_1E8285980;
  v11 = *(a1 + 72);
  v27 = *(a1 + 80);
  v26 = v11;
  v12 = v7;
  v19 = v12;
  v20 = *(a1 + 40);
  v13 = v8;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = *(a1 + 64);
  v16 = *(a1 + 32);
  v17 = *(a1 + 88);
  v25 = v16;
  v28 = v17;
  [v10 _wbsImageFromImageData:v12 completionHandler:v18];
}

void __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 88) + 16))();
  }

  else
  {
    v4 = *(a1 + 96);
    if (v4 > 1)
    {
      v5 = *(a1 + 56);
      v6 = [*(a1 + 64) subarrayWithRange:{1, v4 - 1}];
      [v5 _downloadFirstValidImageWithURLs:v6 inURLSession:*(a1 + 72) failedURLDownloadsToErrorsDictionary:*(a1 + 80) options:*(a1 + 104) completionHandler:*(a1 + 88)];
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke_3;
      block[3] = &unk_1E8285958;
      v12 = *(a1 + 88);
      v8 = 0;
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (id)_urlSessionWithOptions:(unint64_t)options
{
  urlSessionsByType = self->_urlSessionsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)urlSessionsByType objectForKeyedSubscript:v6];

  if (!v7)
  {
    safari_ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    [safari_ephemeralSessionConfiguration setAllowsCellularAccess:options & 1];
    if ((options & 2) != 0)
    {
      [safari_ephemeralSessionConfiguration setHTTPCookieStorage:0];
    }

    if ((options & 4) != 0)
    {
      [safari_ephemeralSessionConfiguration set_sourceApplicationSecondaryIdentifier:@"com.apple.Passwords.PRIconFetching"];
    }

    v7 = [MEMORY[0x1E695AC78] sessionWithConfiguration:safari_ephemeralSessionConfiguration delegate:self delegateQueue:0];
    v9 = self->_urlSessionsByType;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    [(NSMutableDictionary *)v9 setObject:v7 forKeyedSubscript:v10];
  }

  return v7;
}

- (void)_wbsImageFromImageData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  if ([dataCopy length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke;
    block[3] = &unk_1E8283450;
    block[4] = self;
    v9 = dataCopy;
    v10 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69853A8]);
  v3 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v3 _setShouldAllowUserInstalledFonts:0];
  [v2 setPreferences:v3];
  v4 = *(*(a1 + 32) + 16);
  v5 = *MEMORY[0x1E695F060];
  v6 = *(MEMORY[0x1E695F060] + 8);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke_2;
  v9[3] = &unk_1E82859F8;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v10 = v7;
  v11 = v8;
  v12 = *(a1 + 48);
  [v4 getWebViewOfSize:v2 withConfiguration:v9 completionHandler:{v5, v6}];
}

void __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke_3;
  v7[3] = &unk_1E82859D0;
  v4 = a1[4];
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v6 _decodeImageData:v4 preferredSize:0 completionHandler:v7];
}

void __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  [*(a1[4] + 16) didFinishUsingWebView:a1[5]];
  (*(a1[6] + 16))();
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  if ([challengeCopy previousFailureCount] < 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  handlerCopy[2](handlerCopy, v8, 0);
}

@end