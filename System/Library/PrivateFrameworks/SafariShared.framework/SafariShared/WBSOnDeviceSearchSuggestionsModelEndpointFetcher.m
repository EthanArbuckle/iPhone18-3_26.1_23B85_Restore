@interface WBSOnDeviceSearchSuggestionsModelEndpointFetcher
- (WBSOnDeviceSearchSuggestionsModelEndpointFetcher)init;
- (id)_parseEndpointsFromString:(id)a3;
- (void)fetchModelEndpointURLsWithCompletionHandler:(id)a3;
@end

@implementation WBSOnDeviceSearchSuggestionsModelEndpointFetcher

- (WBSOnDeviceSearchSuggestionsModelEndpointFetcher)init
{
  v8.receiver = self;
  v8.super_class = WBSOnDeviceSearchSuggestionsModelEndpointFetcher;
  v2 = [(WBSOnDeviceSearchSuggestionsModelEndpointFetcher *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    [v3 setURLCache:0];
    v4 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v3];
    urlSession = v2->_urlSession;
    v2->_urlSession = v4;

    v6 = v2;
  }

  return v2;
}

- (void)fetchModelEndpointURLsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  modelEndpointInfos = self->_modelEndpointInfos;
  if (modelEndpointInfos)
  {
    (*(v4 + 2))(v4, modelEndpointInfos, 0);
  }

  else
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:@"https://ssl.gstatic.com/suggest-dev/external/head-suggest/model_config.txt"];
    v8 = [MEMORY[0x1E695AC18] requestWithURL:v7 cachePolicy:1 timeoutInterval:2.0];
    objc_initWeak(&location, self);
    urlSession = self->_urlSession;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__WBSOnDeviceSearchSuggestionsModelEndpointFetcher_fetchModelEndpointURLsWithCompletionHandler___block_invoke;
    v12[3] = &unk_1E7FC8940;
    objc_copyWeak(&v14, &location);
    v13 = v5;
    v10 = [(NSURLSession *)urlSession dataTaskWithRequest:v8 completionHandler:v12];
    dataTask = self->_dataTask;
    self->_dataTask = v10;

    [(NSURLSessionDataTask *)self->_dataTask resume];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __96__WBSOnDeviceSearchSuggestionsModelEndpointFetcher_fetchModelEndpointURLsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v17 = a2;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6 || !WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v17 encoding:4];
    v10 = [v8 _parseEndpointsFromString:v9];
    v11 = [v10 count];
    v12 = *(a1 + 32);
    if (v11)
    {
      (*(v12 + 16))(v12, v10, 0);
    }

    else
    {
      v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"WBSOnDeviceSearchSuggestionsModelEndpointFetcherErrorDomain" code:0 userInfo:0];
      (*(v12 + 16))(v12, 0, v13);
    }

    v14 = v8[2];
    v8[2] = v10;
    v15 = v10;

    v16 = v8[1];
    v8[1] = 0;
  }
}

- (id)_parseEndpointsFromString:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v39 = [MEMORY[0x1E695DF90] dictionary];
  v37 = v3;
  [v3 componentsSeparatedByString:@"\n"];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v4 = v50 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    v38 = v4;
    while (2)
    {
      v8 = 0;
      v40 = v6;
      do
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v47 + 1) + 8 * v8);
        v10 = [v9 safari_stringByTrimmingWhitespace];
        if ([v10 length] && objc_msgSend(v10, "characterAtIndex:", 0) != 35)
        {
          v11 = [v9 safari_stringByRemovingWrappingParenthesis];
          v12 = [v11 safari_indexOfFirstAppearanceOfCharacter:44];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_22;
          }

          v13 = v12;
          v14 = [v11 substringToIndex:v12];
          v44 = [v14 safari_stringByRemovingWrappingSingleQuotes];

          v15 = [v11 substringFromIndex:v13 + 1];
          v16 = [v15 safari_stringByTrimmingWhitespace];

          v43 = v16;
          v17 = [v16 safari_stringByRemovingWrappingParenthesis];
          v18 = [v17 componentsSeparatedByString:{@", "}];
          v19 = [v18 safari_mapObjectsUsingBlock:&__block_literal_global_80];

          if ([v19 count] != 3)
          {
            v35 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              [(WBSOnDeviceSearchSuggestionsModelEndpointFetcher *)v9 _parseEndpointsFromString:v35];
            }

LABEL_22:
LABEL_23:

            v34 = 0;
            v33 = v39;
            goto LABEL_24;
          }

          v42 = v11;
          v20 = MEMORY[0x1E695DFF8];
          v21 = [v19 objectAtIndexedSubscript:0];
          v22 = [v21 safari_stringByRemovingWrappingSingleQuotes];
          v23 = [v20 URLWithString:v22];

          if (v23)
          {
            v24 = [WBSOnDeviceModelEndpointInfo alloc];
            v25 = [v19 objectAtIndexedSubscript:1];
            v26 = [v25 integerValue];
            v27 = [v19 objectAtIndexedSubscript:2];
            [v27 safari_stringByRemovingWrappingSingleQuotes];
            v41 = v17;
            v29 = v28 = v7;
            v30 = [(WBSOnDeviceModelEndpointInfo *)v24 initWithEndpointURL:v23 sizeInBytes:v26 checksumString:v29];
            v31 = v44;
            [v39 setObject:v30 forKeyedSubscript:v44];

            v7 = v28;
            v17 = v41;

            v4 = v38;
            v6 = v40;
          }

          else
          {
            v32 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
            v6 = v40;
            v31 = v44;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [(WBSOnDeviceSearchSuggestionsModelEndpointFetcher *)&buf _parseEndpointsFromString:v46, v32];
            }
          }

          if (!v23)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v33 = v39;
  v34 = [v39 copy];
LABEL_24:

  return v34;
}

id __78__WBSOnDeviceSearchSuggestionsModelEndpointFetcher__parseEndpointsFromString___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 safari_stringByTrimmingWhitespace];
  v3 = [v2 safari_stringByRemovingWrappingSingleQuotes];

  return v3;
}

- (void)_parseEndpointsFromString:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Unexpected model endpoint configuration file format: %{public}@", &v2, 0xCu);
}

- (void)_parseEndpointsFromString:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Failed to parse a valid endpoint URL.", buf, 2u);
}

@end