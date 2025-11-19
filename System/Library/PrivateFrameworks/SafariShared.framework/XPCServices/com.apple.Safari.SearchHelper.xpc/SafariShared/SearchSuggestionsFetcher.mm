@interface SearchSuggestionsFetcher
- (SearchSuggestionsFetcher)initWithSuggestionsURLTemplate:(id)a3;
- (void)_handleErrorWithType:(int64_t)a3;
- (void)_requestDidFailWithError:(id)a3;
- (void)_requestDidFinishWithResponse:(id)a3 data:(id)a4;
- (void)_resetFetchRequest;
- (void)_stopLoading;
- (void)cancelExistingSuggestionsRequest;
- (void)updateSuggestionsRequestWithSearchTerms:(id)a3 userAgentString:(id)a4 completionHandler:(id)a5;
@end

@implementation SearchSuggestionsFetcher

- (SearchSuggestionsFetcher)initWithSuggestionsURLTemplate:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SearchSuggestionsFetcher;
  v6 = [(SearchSuggestionsFetcher *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestionsURLTemplate, a3);
    v8 = +[NSURLSessionConfiguration safari_ephemeralSessionConfiguration];
    [v8 setURLCache:0];
    [v8 set_timingDataOptions:2];
    v9 = [NSURLSession sessionWithConfiguration:v8];
    session = v7->_session;
    v7->_session = v9;

    v11 = v7;
  }

  return v7;
}

- (void)updateSuggestionsRequestWithSearchTerms:(id)a3 userAgentString:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  [(SearchSuggestionsFetcher *)self _stopLoading];
  [(SearchSuggestionsFetcher *)self _handleErrorWithType:0];
  v11 = [v8 copy];
  searchTerms = self->_searchTerms;
  self->_searchTerms = v11;

  v13 = [v10 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v13;

  v15 = [(WBSOpenSearchURLTemplate *)self->_suggestionsURLTemplate URLWithSearchTerms:self->_searchTerms];
  v16 = [[NSMutableURLRequest alloc] initWithURL:v15 cachePolicy:1 timeoutInterval:2.0];
  [v16 setAttribution:1];
  if ([v9 length])
  {
    [v16 setValue:v9 forHTTPHeaderField:@"User-Agent"];
  }

  [v16 setNetworkServiceType:6];
  if (objc_opt_respondsToSelector())
  {
    [v16 _setWebSearchContent:1];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x3042000000;
  v25 = sub_100002DB8;
  v26 = sub_100002DC4;
  v27 = 0;
  session = self->_session;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100002DCC;
  v20[3] = &unk_100008550;
  objc_copyWeak(&v21, &location);
  v20[4] = &v22;
  v18 = [(NSURLSession *)session dataTaskWithRequest:v16 completionHandler:v20];
  dataTask = self->_dataTask;
  self->_dataTask = v18;

  objc_storeWeak(v23 + 5, self->_dataTask);
  [(NSURLSessionDataTask *)self->_dataTask resume];
  objc_destroyWeak(&v21);
  _Block_object_dispose(&v22, 8);
  objc_destroyWeak(&v27);

  objc_destroyWeak(&location);
}

- (void)cancelExistingSuggestionsRequest
{
  [(SearchSuggestionsFetcher *)self _stopLoading];

  [(SearchSuggestionsFetcher *)self _handleErrorWithType:0];
}

- (void)_requestDidFinishWithResponse:(id)a3 data:(id)a4
{
  v40 = a3;
  v41 = a4;
  v42 = self;
  if ([(NSString *)self->_searchTerms length]&& self->_completionHandler)
  {
    v37 = [(NSURLSessionDataTask *)self->_dataTask _timingData];
    v36 = [(NSURLSessionDataTask *)self->_dataTask countOfBytesReceived];
    dataTask = self->_dataTask;
    self->_dataTask = 0;

    v38 = [NSJSONSerialization JSONObjectWithData:v41 options:0 error:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v38;
    }

    else
    {
      v7 = 0;
    }

    v39 = v7;
    if ([v39 count] <= 1)
    {
      v8 = sub_100003A74();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100003CDC(buf, [v39 count], v8);
      }

      (*(v42->_completionHandler + 2))();
      [(SearchSuggestionsFetcher *)v42 _resetFetchRequest];
      goto LABEL_44;
    }

    searchTerms = self->_searchTerms;
    v10 = [v39 safari_stringAtIndex:0];
    LOBYTE(searchTerms) = [(NSString *)searchTerms isEqualToString:v10];

    if ((searchTerms & 1) == 0)
    {
      v11 = sub_100003A74();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v42->_searchTerms;
        v13 = [v39 safari_stringAtIndex:0];
        sub_100003C58(v12, v13, buf, v11);
      }
    }

    if ([v39 count] < 4)
    {
      v35 = 0;
    }

    else
    {
      v14 = [v39 safari_dictionaryAtIndex:3];
      v15 = v14;
      if (v14)
      {
        v35 = [v14 safari_numberForKey:@"google:navintent"];
      }

      else
      {
        v35 = 0;
      }
    }

    v34 = [v39 safari_arrayAtIndex:1];
    v45 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v34 count]);
    v43 = +[NSMutableArray array];
    v44 = +[NSMutableDictionary dictionary];
    if ([v39 count] < 4)
    {
      v47 = 0;
    }

    else
    {
      v16 = [v39 safari_dictionaryAtIndex:3];
      v47 = [v16 safari_arrayForKey:@"google:suggestdetail"];
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = v34;
    v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (!v17)
    {
LABEL_43:

      v31 = +[NSMutableArray array];
      [v31 addObjectsFromArray:v43];
      [v31 addObjectsFromArray:v45];
      v32 = [v31 mutableCopy];

      v33 = [[WBSSearchSuggestionsFetcherResponse alloc] initWithSuggestions:v32 postFixSuggestions:v44 prefixNavigationalIntent:v35 sizeInBytes:v36 statusCode:objc_msgSend(v40 timingData:{"statusCode"), v37}];
      (*(v42->_completionHandler + 2))();
      [(SearchSuggestionsFetcher *)v42 _resetFetchRequest];

LABEL_44:
      goto LABEL_45;
    }

    v18 = 0;
    v19 = *v49;
LABEL_25:
    v20 = 0;
    while (1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v48 + 1) + 8 * v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        v23 = [v47 objectAtIndexedSubscript:v18];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_39;
        }

        v25 = [v47 objectAtIndexedSubscript:v18];
        v26 = [v25 objectForKeyedSubscript:@"t"];
        v27 = v26 == 0;

        if (v27)
        {
          goto LABEL_38;
        }

        v28 = [v25 objectForKeyedSubscript:@"t"];
        if (![v22 hasSuffix:v28])
        {

LABEL_38:
LABEL_39:
          if (v22)
          {
            [v45 addObject:v22];
          }

          goto LABEL_41;
        }

        v29 = [v25 objectForKeyedSubscript:@"mp"];
        v30 = [v29 stringByAppendingString:v28];
        [v44 setObject:v30 forKeyedSubscript:v22];

        [v43 addObject:v22];
        ++v18;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 count])
        {
          v22 = [v21 safari_stringAtIndex:0];
          goto LABEL_39;
        }

        v22 = 0;
      }

LABEL_41:

      if (v17 == ++v20)
      {
        v17 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (!v17)
        {
          goto LABEL_43;
        }

        goto LABEL_25;
      }
    }
  }

LABEL_45:
}

- (void)_requestDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = sub_100003A74();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v4 safari_privacyPreservingDescription];
    sub_100003D24(v6, v7, v5);
  }

  [(SearchSuggestionsFetcher *)self _stopLoading];
  [(SearchSuggestionsFetcher *)self _handleErrorWithType:1];
}

- (void)_resetFetchRequest
{
  searchTerms = self->_searchTerms;
  self->_searchTerms = 0;

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;
}

- (void)_stopLoading
{
  [(NSURLSessionDataTask *)self->_dataTask cancel];
  dataTask = self->_dataTask;
  self->_dataTask = 0;
}

- (void)_handleErrorWithType:(int64_t)a3
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v5 = [NSError errorWithDomain:WBSSearchSuggestionsFetcherErrorDomain code:a3 userInfo:0];
    completionHandler[2](completionHandler, 0, v5);

    [(SearchSuggestionsFetcher *)self _resetFetchRequest];
  }
}

@end