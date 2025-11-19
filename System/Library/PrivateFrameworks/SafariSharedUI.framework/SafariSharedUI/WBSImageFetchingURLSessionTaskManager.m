@interface WBSImageFetchingURLSessionTaskManager
+ (id)sharedManager;
- (WBSImageFetchingURLSessionTaskManager)init;
- (id)_urlSessionWithOptions:(unint64_t)a3;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)_downloadFirstValidImageWithURLs:(id)a3 inURLSession:(id)a4 failedURLDownloadsToErrorsDictionary:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)_wbsImageFromImageData:(id)a3 completionHandler:(id)a4;
- (void)downloadFirstValidImageWithURLs:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)downloadImageWithURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)downloadImageWithURL:(id)a3 options:(unint64_t)a4 completionHandlerIncludingErrors:(id)a5;
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
    v3 = [MEMORY[0x1E695DF90] dictionary];
    urlSessionsByType = v2->_urlSessionsByType;
    v2->_urlSessionsByType = v3;

    v5 = objc_alloc_init(WBSWebViewPoolManager);
    webViewPoolManager = v2->_webViewPoolManager;
    v2->_webViewPoolManager = v5;

    v7 = v2;
  }

  return v2;
}

- (void)downloadFirstValidImageWithURLs:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v17 = [(WBSImageFetchingURLSessionTaskManager *)self _urlSessionWithOptions:a4];
    v10 = [MEMORY[0x1E695DF90] dictionary];
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
    v13 = self;
    v14 = v17;
    [(WBSImageFetchingURLSessionTaskManager *)v13 _downloadFirstValidImageWithURLs:v8 inURLSession:v17 failedURLDownloadsToErrorsDictionary:v10 options:a4 completionHandler:v25];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__WBSImageFetchingURLSessionTaskManager_downloadFirstValidImageWithURLs_options_completionHandler___block_invoke_2;
    block[3] = &unk_1E8285908;
    v21 = v37;
    v22 = v35;
    v23 = v33;
    v24 = v31;
    v19 = v10;
    v20 = v9;
    v15 = v10;
    v16 = v9;
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
    v40 = v9;
    v14 = v9;
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

- (void)downloadImageWithURL:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__WBSImageFetchingURLSessionTaskManager_downloadImageWithURL_options_completionHandler___block_invoke;
  v12[3] = &unk_1E8285930;
  v11 = v9;
  v13 = v11;
  [(WBSImageFetchingURLSessionTaskManager *)self downloadFirstValidImageWithURLs:v10 options:a4 completionHandler:v12];
}

- (void)downloadImageWithURL:(id)a3 options:(unint64_t)a4 completionHandlerIncludingErrors:(id)a5
{
  v14[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v14[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __103__WBSImageFetchingURLSessionTaskManager_downloadImageWithURL_options_completionHandlerIncludingErrors___block_invoke;
  v12[3] = &unk_1E8285930;
  v11 = v9;
  v13 = v11;
  [(WBSImageFetchingURLSessionTaskManager *)self downloadFirstValidImageWithURLs:v10 options:a4 completionHandler:v12];
}

- (void)_downloadFirstValidImageWithURLs:(id)a3 inURLSession:(id)a4 failedURLDownloadsToErrorsDictionary:(id)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v27 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [v12 copy];

  v16 = [v15 count];
  v17 = [v15 firstObject];
  v18 = [MEMORY[0x1E695AC68] safari_nonAppInitiatedRequestWithURL:v17];
  v19 = [v18 mutableCopy];

  WKStringCreateWithUTF8CString();
  WKPageCopyStandardUserAgentWithApplicationName();
  v20 = WKStringCopyCFString();
  [v19 setHTTPUserAgent:v20];

  if ((a6 & 4) != 0)
  {
    [v19 _setPrivacyProxyFailClosed:1];
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __150__WBSImageFetchingURLSessionTaskManager__downloadFirstValidImageWithURLs_inURLSession_failedURLDownloadsToErrorsDictionary_options_completionHandler___block_invoke;
  v28[3] = &unk_1E82859A8;
  v21 = v13;
  v29 = v21;
  v22 = v17;
  v30 = v22;
  v31 = self;
  v35 = v16;
  v23 = v14;
  v34 = v23;
  v24 = v15;
  v32 = v24;
  v25 = v27;
  v33 = v25;
  v36 = a6;
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

- (id)_urlSessionWithOptions:(unint64_t)a3
{
  urlSessionsByType = self->_urlSessionsByType;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v7 = [(NSMutableDictionary *)urlSessionsByType objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    [v8 setAllowsCellularAccess:a3 & 1];
    if ((a3 & 2) != 0)
    {
      [v8 setHTTPCookieStorage:0];
    }

    if ((a3 & 4) != 0)
    {
      [v8 set_sourceApplicationSecondaryIdentifier:@"com.apple.Passwords.PRIconFetching"];
    }

    v7 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v8 delegate:self delegateQueue:0];
    v9 = self->_urlSessionsByType;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)v9 setObject:v7 forKeyedSubscript:v10];
  }

  return v7;
}

- (void)_wbsImageFromImageData:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__WBSImageFetchingURLSessionTaskManager__wbsImageFromImageData_completionHandler___block_invoke;
    block[3] = &unk_1E8283450;
    block[4] = self;
    v9 = v6;
    v10 = v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
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

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v9 = a5;
  v7 = a6;
  if ([v9 previousFailureCount] < 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v7[2](v7, v8, 0);
}

@end