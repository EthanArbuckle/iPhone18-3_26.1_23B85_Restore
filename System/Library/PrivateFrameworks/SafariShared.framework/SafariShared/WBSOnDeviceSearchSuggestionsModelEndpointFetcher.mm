@interface WBSOnDeviceSearchSuggestionsModelEndpointFetcher
- (WBSOnDeviceSearchSuggestionsModelEndpointFetcher)init;
- (id)_parseEndpointsFromString:(id)string;
- (void)fetchModelEndpointURLsWithCompletionHandler:(id)handler;
@end

@implementation WBSOnDeviceSearchSuggestionsModelEndpointFetcher

- (WBSOnDeviceSearchSuggestionsModelEndpointFetcher)init
{
  v8.receiver = self;
  v8.super_class = WBSOnDeviceSearchSuggestionsModelEndpointFetcher;
  v2 = [(WBSOnDeviceSearchSuggestionsModelEndpointFetcher *)&v8 init];
  if (v2)
  {
    safari_ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] safari_ephemeralSessionConfiguration];
    [safari_ephemeralSessionConfiguration setURLCache:0];
    v4 = [MEMORY[0x1E695AC78] sessionWithConfiguration:safari_ephemeralSessionConfiguration];
    urlSession = v2->_urlSession;
    v2->_urlSession = v4;

    v6 = v2;
  }

  return v2;
}

- (void)fetchModelEndpointURLsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  modelEndpointInfos = self->_modelEndpointInfos;
  if (modelEndpointInfos)
  {
    (*(handlerCopy + 2))(handlerCopy, modelEndpointInfos, 0);
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

- (id)_parseEndpointsFromString:(id)string
{
  v52 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v37 = stringCopy;
  [stringCopy componentsSeparatedByString:@"\n"];
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
        safari_stringByTrimmingWhitespace = [v9 safari_stringByTrimmingWhitespace];
        if ([safari_stringByTrimmingWhitespace length] && objc_msgSend(safari_stringByTrimmingWhitespace, "characterAtIndex:", 0) != 35)
        {
          safari_stringByRemovingWrappingParenthesis = [v9 safari_stringByRemovingWrappingParenthesis];
          v12 = [safari_stringByRemovingWrappingParenthesis safari_indexOfFirstAppearanceOfCharacter:44];
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_22;
          }

          v13 = v12;
          v14 = [safari_stringByRemovingWrappingParenthesis substringToIndex:v12];
          safari_stringByRemovingWrappingSingleQuotes = [v14 safari_stringByRemovingWrappingSingleQuotes];

          v15 = [safari_stringByRemovingWrappingParenthesis substringFromIndex:v13 + 1];
          safari_stringByTrimmingWhitespace2 = [v15 safari_stringByTrimmingWhitespace];

          v43 = safari_stringByTrimmingWhitespace2;
          safari_stringByRemovingWrappingParenthesis2 = [safari_stringByTrimmingWhitespace2 safari_stringByRemovingWrappingParenthesis];
          v18 = [safari_stringByRemovingWrappingParenthesis2 componentsSeparatedByString:{@", "}];
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
            v33 = dictionary;
            goto LABEL_24;
          }

          v42 = safari_stringByRemovingWrappingParenthesis;
          v20 = MEMORY[0x1E695DFF8];
          v21 = [v19 objectAtIndexedSubscript:0];
          safari_stringByRemovingWrappingSingleQuotes2 = [v21 safari_stringByRemovingWrappingSingleQuotes];
          v23 = [v20 URLWithString:safari_stringByRemovingWrappingSingleQuotes2];

          if (v23)
          {
            v24 = [WBSOnDeviceModelEndpointInfo alloc];
            v25 = [v19 objectAtIndexedSubscript:1];
            integerValue = [v25 integerValue];
            v27 = [v19 objectAtIndexedSubscript:2];
            [v27 safari_stringByRemovingWrappingSingleQuotes];
            v41 = safari_stringByRemovingWrappingParenthesis2;
            v29 = v28 = v7;
            v30 = [(WBSOnDeviceModelEndpointInfo *)v24 initWithEndpointURL:v23 sizeInBytes:integerValue checksumString:v29];
            v31 = safari_stringByRemovingWrappingSingleQuotes;
            [dictionary setObject:v30 forKeyedSubscript:safari_stringByRemovingWrappingSingleQuotes];

            v7 = v28;
            safari_stringByRemovingWrappingParenthesis2 = v41;

            v4 = v38;
            v6 = v40;
          }

          else
          {
            v32 = WBS_LOG_CHANNEL_PREFIXOfflineSearchSuggestions();
            v6 = v40;
            v31 = safari_stringByRemovingWrappingSingleQuotes;
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

  v33 = dictionary;
  v34 = [dictionary copy];
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