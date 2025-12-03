@interface WBSWebViewMetadataFetchOperation
- (CGSize)webViewSize;
- (NSString)description;
- (WBSWebViewMetadataFetchOperationDelegate)delegate;
- (WKWebViewConfiguration)webViewConfiguration;
- (void)_setUpWebViewAndStartOffscreenFetching;
- (void)_webViewWebProcessDidCrash:(id)crash;
- (void)cancel;
- (void)clearWebView;
- (void)dealloc;
- (void)start;
@end

@implementation WBSWebViewMetadataFetchOperation

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSWebViewMetadataFetchOperation;
  [(WBSWebViewMetadataFetchOperation *)&v2 dealloc];
}

- (WKWebViewConfiguration)webViewConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x1E69853A8]);
  preferences = [v2 preferences];
  [preferences _setOfflineApplicationCacheIsEnabled:0];

  [v2 _setAllowsJavaScriptMarkup:0];
  [v2 _setNeedsStorageAccessFromFileURLsQuirk:0];
  v4 = objc_alloc_init(MEMORY[0x1E6985338]);
  [v4 _setShouldAllowUserInstalledFonts:0];
  [v2 setPreferences:v4];

  return v2;
}

- (CGSize)webViewSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_setUpWebViewAndStartOffscreenFetching
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  objc_initWeak(&location, self);
  [(WBSWebViewMetadataFetchOperation *)self webViewSize];
  v5 = v4;
  v7 = v6;
  webViewConfiguration = [(WBSWebViewMetadataFetchOperation *)self webViewConfiguration];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__WBSWebViewMetadataFetchOperation__setUpWebViewAndStartOffscreenFetching__block_invoke;
  v10[3] = &unk_1E82897F8;
  objc_copyWeak(&v12, &location);
  v9 = WeakRetained;
  v11 = v9;
  [v9 webViewMetadataFetchOperation:self getWebViewOfSize:webViewConfiguration withConfiguration:v10 completionHandler:{v5, v7}];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __74__WBSWebViewMetadataFetchOperation__setUpWebViewAndStartOffscreenFetching__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isCancelled])
    {
      [*(a1 + 32) webViewMetadataFetchOperation:v5 didFinishUsingWebView:v6];
      [v5 _setStatus:2];
    }

    else
    {
      objc_storeStrong(v5 + 34, a2);
      [v5[34] setNavigationDelegate:v5];
      [v5 didCreateWebView];
      [v5 startOffscreenFetching];
    }
  }
}

- (void)clearWebView
{
  if (self->_webView)
  {
    [(WBSWebViewMetadataFetchOperation *)self willClearWebView];
    [(WKWebView *)self->_webView setNavigationDelegate:0];
    [(WKWebView *)self->_webView stopLoading];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained webViewMetadataFetchOperation:self didFinishUsingWebView:self->_webView];

    webView = self->_webView;
    self->_webView = 0;
  }
}

- (void)start
{
  v10 = *MEMORY[0x1E69E9840];
  [(WBSSiteMetadataFetchOperation *)self _setStatus:1];
  if ([(WBSWebViewMetadataFetchOperation *)self isCancelled])
  {
    [(WBSSiteMetadataFetchOperation *)self _setStatus:2];
    v3 = WBS_LOG_CHANNEL_PREFIXSiteMetadata();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      *buf = 138543618;
      v7 = objc_opt_class();
      v8 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C6968000, v4, OS_LOG_TYPE_INFO, "Aborted fetch operation <%{public}@ %p> due to cancellation", buf, 0x16u);
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__WBSWebViewMetadataFetchOperation_start__block_invoke;
    block[3] = &unk_1E8283080;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = WBSWebViewMetadataFetchOperation;
  [(WBSWebViewMetadataFetchOperation *)&v4 cancel];
  if (([(WBSWebViewMetadataFetchOperation *)self isCancelled]& 1) == 0)
  {
    if ([(WBSSiteMetadataFetchOperation *)self isExecuting])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__WBSWebViewMetadataFetchOperation_cancel__block_invoke;
      block[3] = &unk_1E8283080;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __42__WBSWebViewMetadataFetchOperation_cancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) clearWebView];
  v2 = *(a1 + 32);

  return [v2 _setStatus:2];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  request = [(WBSSiteMetadataFetchOperation *)self request];
  v6 = [request url];
  absoluteURL = [v6 absoluteURL];
  v8 = [v3 stringWithFormat:@"<%p %@, Request URL: %@>", self, v4, absoluteURL];

  return v8;
}

- (void)_webViewWebProcessDidCrash:(id)crash
{
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.SafariSharedUI.WBSWebViewMetadataFetchOperation" code:0 userInfo:0];
  [(WBSWebViewMetadataFetchOperation *)self didFailFetchWithError:v4];
}

- (WBSWebViewMetadataFetchOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end