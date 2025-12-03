@interface WBSPerformImageOperationUsingWebViewFetchOperation
- (WBSPerformImageOperationUsingWebViewFetchOperation)initWithRequest:(id)request completionHandler:(id)handler;
- (void)_fetchOperationFinished;
- (void)_getImageInfoUsingWebView;
- (void)_getMultiResolutionImageDataUsingWebView;
- (void)startOffscreenFetching;
@end

@implementation WBSPerformImageOperationUsingWebViewFetchOperation

- (WBSPerformImageOperationUsingWebViewFetchOperation)initWithRequest:(id)request completionHandler:(id)handler
{
  v11.receiver = self;
  v11.super_class = WBSPerformImageOperationUsingWebViewFetchOperation;
  handlerCopy = handler;
  v6 = [(WBSSiteMetadataFetchOperation *)&v11 initWithRequest:request];
  if (v6)
  {
    v7 = [handlerCopy copy];

    completionHandler = v6->_completionHandler;
    v6->_completionHandler = v7;

    v9 = v6;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  return v6;
}

- (void)_getImageInfoUsingWebView
{
  v3 = _Block_copy(self->_completionHandler);
  objc_initWeak(&location, self);
  webView = [(WBSWebViewMetadataFetchOperation *)self webView];
  request = [(WBSSiteMetadataFetchOperation *)self request];
  imageData = [request imageData];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__WBSPerformImageOperationUsingWebViewFetchOperation__getImageInfoUsingWebView__block_invoke;
  v8[3] = &unk_1E8284C90;
  objc_copyWeak(&v10, &location);
  v7 = v3;
  v9 = v7;
  [webView _getInformationFromImageData:imageData completionHandler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __79__WBSPerformImageOperationUsingWebViewFetchOperation__getImageInfoUsingWebView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __79__WBSPerformImageOperationUsingWebViewFetchOperation__getImageInfoUsingWebView__block_invoke_cold_1(v12, v9);
    }

    v13 = *(a1 + 32);
    v14 = [WBSPerformImageOperationUsingWebViewResponse alloc];
    v15 = &stru_1F4646D10;
    v16 = MEMORY[0x1E695E0F0];
  }

  else
  {
    if (!WeakRetained)
    {
      v18 = *(a1 + 32);
      v19 = [WBSPerformImageOperationUsingWebViewResponse alloc];
      v20 = [(WBSPerformImageOperationUsingWebViewResponse *)v19 initWithImageType:&stru_1F4646D10 availableImageSizes:MEMORY[0x1E695E0F0]];
      (*(v18 + 16))(v18, v20);

      goto LABEL_12;
    }

    if (!v7)
    {
      v7 = &stru_1F4646D10;
    }

    if (!v8)
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    v13 = *(a1 + 32);
    v14 = [WBSPerformImageOperationUsingWebViewResponse alloc];
    v15 = v7;
    v16 = v8;
  }

  v17 = [(WBSPerformImageOperationUsingWebViewResponse *)v14 initWithImageType:v15 availableImageSizes:v16];
  (*(v13 + 16))(v13, v17);

  [v11 _fetchOperationFinished];
LABEL_12:
}

- (void)_getMultiResolutionImageDataUsingWebView
{
  v3 = _Block_copy(self->_completionHandler);
  request = [(WBSSiteMetadataFetchOperation *)self request];
  imageData = [request imageData];

  objc_initWeak(&location, self);
  webView = [(WBSWebViewMetadataFetchOperation *)self webView];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke;
  v9[3] = &unk_1E8284D20;
  objc_copyWeak(&v12, &location);
  v7 = v3;
  v11 = v7;
  v8 = imageData;
  v10 = v8;
  [webView _getInformationFromImageData:v8 completionHandler:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v11 = WeakRetained;
  if (v9)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_cold_1(v12, v9);
    }

    goto LABEL_4;
  }

  if (!WeakRetained)
  {
    v17 = *(a1 + 40);
    v16 = [[WBSPerformImageOperationUsingWebViewResponse alloc] initWithMultiResolutionImageData:0 didGenerateResolutions:0];
    (*(v17 + 16))(v17, v16);
LABEL_16:

    goto LABEL_17;
  }

  v15 = [v8 count];
  if (v15 == 1)
  {
    goto LABEL_9;
  }

  if (v15)
  {
    v16 = [v8 safari_mapObjectsUsingBlock:&__block_literal_global_12];
    v18 = 0;
LABEL_15:
    v24 = [v11 webView];
    v25 = *(a1 + 32);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_2;
    v26[3] = &unk_1E8284CF8;
    objc_copyWeak(&v28, (a1 + 48));
    v27 = *(a1 + 40);
    v29 = v18;
    [v24 _createIconDataFromImageData:v25 withLengths:v16 completionHandler:v26];

    objc_destroyWeak(&v28);
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"public.svg-image"])
  {
LABEL_9:
    if ([v7 isEqualToString:@"public.svg-image"])
    {
      v16 = 0;
    }

    else
    {
      v19 = [v11 request];
      [v19 preferredSize];
      v21 = v20;

      v22 = [v11 request];
      v23 = [v22 scales];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_8;
      v30[3] = &__block_descriptor_40_e28___NSNumber_16__0__NSNumber_8l;
      v30[4] = v21;
      v16 = [v23 safari_mapObjectsUsingBlock:v30];
    }

    v18 = 1;
    goto LABEL_15;
  }

LABEL_4:
  v13 = *(a1 + 40);
  v14 = [[WBSPerformImageOperationUsingWebViewResponse alloc] initWithMultiResolutionImageData:0 didGenerateResolutions:0];
  (*(v13 + 16))(v13, v14);

  [v11 _fetchOperationFinished];
LABEL_17:
}

id __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_5(uint64_t a1, void *a2)
{
  [a2 CGSizeValue];
  v3 = v2;
  v5 = v4;
  if (v2 != v4)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1C6968000, v6, OS_LOG_TYPE_INFO, "Creating an image from a non-square multiresolution image", v9, 2u);
    }
  }

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(v3, v5)}];

  return v7;
}

uint64_t __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  [a2 floatValue];
  v5 = *(a1 + 32) * v4;

  return [v3 numberWithDouble:v5];
}

void __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXFaviconProvider();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_2_cold_1(v8, v6);
    }

    v9 = *(a1 + 32);
    v10 = [[WBSPerformImageOperationUsingWebViewResponse alloc] initWithMultiResolutionImageData:0 didGenerateResolutions:0];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [[WBSPerformImageOperationUsingWebViewResponse alloc] initWithMultiResolutionImageData:v5 didGenerateResolutions:*(a1 + 48)];
    (*(v11 + 16))(v11, v12);
  }

  [WeakRetained _fetchOperationFinished];
}

- (void)_fetchOperationFinished
{
  [(WBSWebViewMetadataFetchOperation *)self clearWebView];

  [(WBSSiteMetadataFetchOperation *)self _setStatus:2];
}

- (void)startOffscreenFetching
{
  request = [(WBSSiteMetadataFetchOperation *)self request];
  requestType = [request requestType];

  if (requestType == 1)
  {

    [(WBSPerformImageOperationUsingWebViewFetchOperation *)self _getMultiResolutionImageDataUsingWebView];
  }

  else if (!requestType)
  {

    [(WBSPerformImageOperationUsingWebViewFetchOperation *)self _getImageInfoUsingWebView];
  }
}

void __79__WBSPerformImageOperationUsingWebViewFetchOperation__getImageInfoUsingWebView__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to get image information from icon data with error: %{public}@", v7, v8, v9, v10, 2u);
}

void __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to get image information from icon data with error: %{public}@", v7, v8, v9, v10, 2u);
}

void __94__WBSPerformImageOperationUsingWebViewFetchOperation__getMultiResolutionImageDataUsingWebView__block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_1C6968000, v5, v6, "Failed to create multiresolution image from icon data with error: %{public}@", v7, v8, v9, v10, 2u);
}

@end