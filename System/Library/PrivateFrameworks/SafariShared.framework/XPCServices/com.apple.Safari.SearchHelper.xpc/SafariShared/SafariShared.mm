void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_100000EFC();
  WBSSetEnvironmentFromContainerPath();

  v2 = objc_alloc_init(SafariSearchHelperDelegate);
  v3 = +[NSXPCListener serviceListener];
  [v3 setDelegate:v2];
  v4 = dispatch_get_global_queue(25, 0);
  WBSSetSignalHandler();

  objc_autoreleasePoolPop(v0);
  [v3 resume];
  exit(1);
}

id sub_100000EFC()
{
  container_query_create();
  container_query_set_class();
  objects = xpc_string_create("com.apple.Safari.SearchHelper");
  v0 = xpc_array_create(&objects, 1uLL);
  container_query_set_identifiers();
  container_query_operation_set_flags();
  container_query_set_persona_unique_string();
  container_query_get_single_result();
  v1 = [NSString stringWithUTF8String:container_get_path()];
  v2 = container_copy_sandbox_token();
  sandbox_extension_consume();
  free(v2);
  container_query_free();

  return v1;
}

void sub_1000012CC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  [*(a1 + 32) finishTasksAndInvalidate];
  v8 = *(a1 + 40);
  if (v7)
  {
    [v8 _handleNetworkError:v7];
  }

  else
  {
    v9 = v8[6];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000139C;
    v12[3] = &unk_1000083C0;
    v10 = v6;
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = v11;
    dispatch_async(v9, v12);
  }
}

void sub_10000139C(uint64_t a1)
{
  v2 = [[NSXMLParser alloc] initWithData:*(a1 + 32)];
  [v2 setDelegate:*(a1 + 40)];
  [v2 setShouldProcessNamespaces:1];
  if (([v2 parse] & 1) == 0)
  {
    v3 = [v2 parserError];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10000147C;
    v5[3] = &unk_1000083C0;
    v5[4] = *(a1 + 40);
    v6 = v3;
    v4 = v3;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_10000168C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v8 = NSUnderlyingErrorKey;
    v9 = v2;
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [NSError errorWithDomain:@"OpenSearchDescriptionParserErrorDomain" code:2 userInfo:v4];
  (*(v3 + 16))(v3, 0, v5);

  if (v2)
  {
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  *(v6 + 16) = 0;
}

void sub_100001C08(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:WBSOpenSearchDescriptionSearchURLTemplateKey];

  v3 = *(a1 + 32);
  if (v2)
  {
    (*(v3[2] + 16))(v3[2], v3[3], 0);
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  else
  {

    [v3 _handleParsingError:0];
  }
}

void sub_10000205C(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetcherForSuggestionsURLTemplate:*(a1 + 40)];
  [v2 updateSuggestionsRequestWithSearchTerms:*(a1 + 48) userAgentString:*(a1 + 56) completionHandler:*(a1 + 64)];
}

void sub_100002150(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  [v1 cancelExistingSuggestionsRequest];
}

id sub_100002324(uint64_t a1)
{
  if (!*(*(a1 + 32) + 16))
  {
    v2 = objc_alloc_init(WBSOnDeviceSearchSuggestionsProvider);
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = v2;

    [*(*(a1 + 32) + 16) setDelegate:?];
  }

  v5 = [*(a1 + 48) copy];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = v5;

  v8 = [*(a1 + 40) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  v11 = *(a1 + 32);
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);

  return [v12 setQueryString:v13];
}

void sub_1000025F0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (!v2)
  {
    v3 = objc_alloc_init(WBSOnDeviceSearchSuggestionsModelDownloader);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = *(*(a1 + 32) + 40);
  }

  v6 = +[NSLocale currentLocale];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000026D0;
  v7[3] = &unk_1000084B0;
  v8 = *(a1 + 40);
  [v2 downloadOnDeviceSearchSuggestionsModelForLocale:v6 withCompletionHandler:v7];
}

void sub_1000026D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000277C;
  v6[3] = &unk_100008488;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

uint64_t sub_100002824(uint64_t a1)
{
  v2 = +[WBSOnDeviceSearchSuggestionsModelManager sharedManager];
  [v2 clearModels];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_100002D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 + 40));

  objc_destroyWeak((v15 - 88));
  _Unwind_Resume(a1);
}

void sub_100002DCC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002ED4;
  block[3] = &unk_100008528;
  objc_copyWeak(&v19, (a1 + 40));
  v10 = *(a1 + 32);
  v15 = v9;
  v16 = v8;
  v17 = v7;
  v18 = v10;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v19);
}

void sub_100002ED4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    if (v2)
    {
      v3 = objc_loadWeakRetained((*(*(a1 + 56) + 8) + 40));

      if (v2 == v3 && ([*(a1 + 32) safari_matchesErrorDomain:NSURLErrorDomain andCode:-999] & 1) == 0)
      {
        if (*(a1 + 32))
        {
          [WeakRetained _requestDidFailWithError:?];
        }

        else
        {
          [WeakRetained _requestDidFinishWithResponse:*(a1 + 40) data:*(a1 + 48)];
        }
      }
    }
  }
}

uint64_t sub_1000039F8()
{
  if (qword_10000D048 != -1)
  {
    sub_100003D7C();
  }

  return qword_10000D040;
}

void sub_100003A30(id a1)
{
  qword_10000D040 = os_log_create("com.apple.SafariShared", "OpenSearch");

  _objc_release_x1();
}

uint64_t sub_100003A74()
{
  if (qword_10000D058 != -1)
  {
    sub_100003D90();
  }

  return qword_10000D050;
}

void sub_100003AAC(id a1)
{
  qword_10000D050 = os_log_create("com.apple.SafariShared", "SafariSuggestions");

  _objc_release_x1();
}

void sub_100003AF0(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Error parsing the OpenSearch description: %{public}@", &v5, 0xCu);
}

void sub_100003B98(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138740227;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Network error downloading OpenSearch description at %{sensitive}@: %{public}@", &v7, 0x16u);
}

void sub_100003C58(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 141558787;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  *(buf + 11) = 2160;
  *(buf + 3) = 1752392040;
  *(buf + 16) = 2117;
  *(buf + 34) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "User-typed string was %{sensitive, mask.hash}@ but the suggestions server response included %{sensitive, mask.hash}@", buf, 0x2Au);
}

void sub_100003CDC(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Response array had %llu items, at least two expected.", buf, 0xCu);
}

void sub_100003D24(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "SearchSuggestionsFetcher received an error: %{public}@", buf, 0xCu);
}