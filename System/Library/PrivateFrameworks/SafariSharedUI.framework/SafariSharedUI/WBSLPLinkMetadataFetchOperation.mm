@interface WBSLPLinkMetadataFetchOperation
+ (id)configuredLPMetadataProvider;
- (WBSLPLinkMetadataFetchOperation)initWithRequest:(id)request operationCompletionHandler:(id)handler;
- (id)description;
- (void)cancel;
- (void)start;
@end

@implementation WBSLPLinkMetadataFetchOperation

- (WBSLPLinkMetadataFetchOperation)initWithRequest:(id)request operationCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = WBSLPLinkMetadataFetchOperation;
  v7 = [(WBSSiteMetadataFetchOperation *)&v12 initWithRequest:request];
  if (v7)
  {
    v8 = [handlerCopy copy];
    operationCompletionHandler = v7->_operationCompletionHandler;
    v7->_operationCompletionHandler = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)configuredLPMetadataProvider
{
  v2 = objc_alloc_init(MEMORY[0x1E696ECE0]);
  [v2 _setShouldDownloadMediaSubresources:0];
  [v2 _setFetchIsNotUserInitiated:1];

  return v2;
}

- (void)start
{
  v21 = *MEMORY[0x1E69E9840];
  [(WBSSiteMetadataFetchOperation *)self _setStatus:1];
  if ([(WBSLPLinkMetadataFetchOperation *)self isCancelled])
  {
    [(WBSSiteMetadataFetchOperation *)self _setStatus:2];
    v3 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      *buf = 138543618;
      v18 = objc_opt_class();
      v19 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Aborted fetch operation <%{public}@ %p> due to cancellation", buf, 0x16u);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695AC68];
    request = [(WBSSiteMetadataFetchOperation *)self request];
    v7 = [request url];
    v8 = [v5 safari_nonAppInitiatedRequestWithURL:v7];

    configuredLPMetadataProvider = [objc_opt_class() configuredLPMetadataProvider];
    v10 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      request2 = [(WBSSiteMetadataFetchOperation *)self request];
      v12 = [request2 url];
      absoluteString = [v12 absoluteString];
      *buf = 141558275;
      v18 = 1752392040;
      v19 = 2117;
      selfCopy = absoluteString;
      _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Fetching LP metadata for URL: %{sensitive, mask.hash}@.", buf, 0x16u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__WBSLPLinkMetadataFetchOperation_start__block_invoke;
    v14[3] = &unk_1E82897A0;
    objc_copyWeak(&v15, &location);
    [configuredLPMetadataProvider startFetchingMetadataForRequest:v8 completionHandler:v14];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }
}

void __40__WBSLPLinkMetadataFetchOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v11 = [WeakRetained request];
        v12 = [v11 url];
        v13 = [v12 absoluteString];
        v15 = 141558275;
        v16 = 1752392040;
        v17 = 2117;
        v18 = v13;
        _os_log_impl(&dword_1C6968000, v10, OS_LOG_TYPE_INFO, "Successfully fetched LP metadata for URL: %{sensitive, mask.hash}@.", &v15, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __40__WBSLPLinkMetadataFetchOperation_start__block_invoke_cold_1(v9, WeakRetained, v6);
    }

    if (([WeakRetained isCancelled] & 1) == 0)
    {
      v14 = WeakRetained[33];
      if (v14)
      {
        (*(v14 + 16))(v14, v5);
      }
    }

    [WeakRetained _setStatus:2];
  }
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = WBSLPLinkMetadataFetchOperation;
  [(WBSLPLinkMetadataFetchOperation *)&v3 cancel];
  if (([(WBSLPLinkMetadataFetchOperation *)self isCancelled]& 1) == 0)
  {
    if ([(WBSSiteMetadataFetchOperation *)self isExecuting])
    {
      [(WBSSiteMetadataFetchOperation *)self _setStatus:2];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  request = [(WBSSiteMetadataFetchOperation *)self request];
  v6 = [request url];
  absoluteURL = [v6 absoluteURL];
  v8 = [v3 stringWithFormat:@"<%p %@, Request URL: %@>", self, v4, absoluteURL];

  return v8;
}

void __40__WBSLPLinkMetadataFetchOperation_start__block_invoke_cold_1(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = [a2 request];
  v7 = [v6 url];
  v8 = [v7 absoluteString];
  v9 = [a3 safari_privacyPreservingDescription];
  v10 = 141558531;
  v11 = 1752392040;
  v12 = 2117;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_1C6968000, v5, OS_LOG_TYPE_ERROR, "Failed to fetch LP metadata for URL: %{sensitive, mask.hash}@ with error: %{public}@.", &v10, 0x20u);
}

@end