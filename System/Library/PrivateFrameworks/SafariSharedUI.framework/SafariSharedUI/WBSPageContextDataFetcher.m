@interface WBSPageContextDataFetcher
- (WBSPageContextDataFetcherDelegate)delegate;
- (WKWebView)webView;
- (void)clearExtractedSchemaData;
- (void)fetchSchemaDataForWebView:(id)a3;
@end

@implementation WBSPageContextDataFetcher

- (void)clearExtractedSchemaData
{
  filteredSchemaData = self->_filteredSchemaData;
  if (filteredSchemaData)
  {
    self->_filteredSchemaData = 0;
  }
}

- (void)fetchSchemaDataForWebView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__WBSPageContextDataFetcher_fetchSchemaDataForWebView___block_invoke;
  v6[3] = &unk_1E82864E0;
  objc_copyWeak(&v8, &location);
  v5 = v4;
  v7 = v5;
  [WBSSchemaDataExtractor fetchDataFromWebView:v5 completionHandler:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __55__WBSPageContextDataFetcher_fetchSchemaDataForWebView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(WeakRetained + 3);
    if (v5)
    {
      v10 = [v5 objectAtIndexedSubscript:0];
      v11 = v8[4];
      v8[4] = v10;

      v12 = [*(a1 + 32) URL];
      [v9 pageContextDataFetcherDidFinishFetching:v8 forURL:v12 withError:v6];
    }

    else
    {
      v13 = [*(a1 + 32) URL];
      [v9 pageContextDataFetcherDidFinishFetching:v8 forURL:v13 withError:v6];

      v14 = WBS_LOG_CHANNEL_PREFIXSchemaDataLoading();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __55__WBSPageContextDataFetcher_fetchSchemaDataForWebView___block_invoke_cold_1(v14, v6);
      }
    }
  }
}

- (WKWebView)webView
{
  WeakRetained = objc_loadWeakRetained(&self->_webView);

  return WeakRetained;
}

- (WBSPageContextDataFetcherDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __55__WBSPageContextDataFetcher_fetchSchemaDataForWebView___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1C6968000, v3, OS_LOG_TYPE_ERROR, "Failed to extract Microdata from webpage: %{public}@", &v5, 0xCu);
}

@end