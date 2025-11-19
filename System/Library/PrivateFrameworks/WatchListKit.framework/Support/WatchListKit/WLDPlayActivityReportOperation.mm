@interface WLDPlayActivityReportOperation
- (NSNumber)nextExpectedReportMillis;
- (WLDPlayActivityReportOperation)init;
- (WLDPlayActivityReportOperation)initWithLivePlayEvents:(id)a3;
- (WLDPlayActivityReportOperation)initWithPlayEvents:(id)a3;
- (id)_protoForURLRequest:(id)a3;
- (id)_userAgentHeaderForRequest:(id)a3;
- (void)prepareURLRequest:(id)a3;
@end

@implementation WLDPlayActivityReportOperation

- (WLDPlayActivityReportOperation)init
{
  [(WLDPlayActivityReportOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (WLDPlayActivityReportOperation)initWithLivePlayEvents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WLDPlayActivityReportOperation;
  v5 = [(WLDPlayActivityReportOperation *)&v9 initWithURLRequest:0 options:4];
  if (v5)
  {
    v6 = [v4 copy];
    livePlayEvents = v5->_livePlayEvents;
    v5->_livePlayEvents = v6;
  }

  return v5;
}

- (WLDPlayActivityReportOperation)initWithPlayEvents:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WLDPlayActivityReportOperation;
  v5 = [(WLDPlayActivityReportOperation *)&v9 initWithURLRequest:0 options:4];
  if (v5)
  {
    v6 = [v4 copy];
    playEvents = v5->_playEvents;
    v5->_playEvents = v6;
  }

  return v5;
}

- (void)prepareURLRequest:(id)a3
{
  v4 = a3;
  v5 = WLKNetworkSignpostLogObject();
  v6 = [(WLDPlayActivityReportOperation *)self signpostIdentifier];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NetworkRequest.Config", &unk_100037037, buf, 2u);
    }
  }

  v8 = +[WLKConfigurationManager sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __52__WLDPlayActivityReportOperation_prepareURLRequest___block_invoke;
  v10[3] = &unk_1000450D0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 fetchConfigurationWithCompletionHandler:v10];
}

void __52__WLDPlayActivityReportOperation_prepareURLRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = WLKNetworkSignpostLogObject();
  v8 = [*(a1 + 32) signpostIdentifier];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "NetworkRequest.Config", &unk_100037037, buf, 2u);
    }
  }

  if (v5)
  {
    v10 = [v5 serverRouteNamed:@"activityPlay"];
    v11 = [v10 URL];

    if (v11)
    {
      v12 = [NSMutableURLRequest requestWithURL:v11 cachePolicy:0 timeoutInterval:WLKDefaultNetworkRequestTimeout];
      [v12 setHTTPMethod:@"POST"];
      [v12 setValue:@"application/x-protobuf" forHTTPHeaderField:@"Content-Type"];
      v13 = +[WLKUserEnvironment currentEnvironment];
      v14 = [v13 platform];
      [v12 setValue:v14 forHTTPHeaderField:@"pfm"];

      v15 = [NSString stringWithFormat:@"%d", WLKCurrentProtocolVersion()];
      [v12 setValue:v15 forHTTPHeaderField:@"ClientVersion"];

      v16 = [*(a1 + 32) _protoForURLRequest:v12];
      [*(a1 + 32) setEnvelope:v16];
      v17 = [v16 data];
      [v12 setHTTPBody:v17];

      v18 = [v12 copy];
    }

    else
    {
      WLKError();
      v18 = 0;
      v6 = v12 = v6;
    }
  }

  else
  {
    v18 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

- (NSNumber)nextExpectedReportMillis
{
  v2 = [(WLDPlayActivityReportOperation *)self httpResponse];
  v3 = [v2 allHeaderFields];
  v4 = [v3 wlk_caseInsensitiveValueForKey:@"X-Apple-Next-Report-Expected-In-Milliseconds"];

  return v4;
}

- (id)_protoForURLRequest:(id)a3
{
  v4 = a3;
  v5 = [(WLDPlayActivityReportOperation *)self encoder];
  v6 = [v5 account];

  v38 = [v6 ams_DSID];
  v7 = [v38 stringValue];
  v8 = objc_alloc_init(UWLMessageHeaders);
  v9 = [v6 ams_storefront];
  [(UWLMessageHeaders *)v8 setXAppleStorefront:v9];

  v35 = self;
  v10 = [(WLDPlayActivityReportOperation *)self _userAgentHeaderForRequest:v4];
  [(UWLMessageHeaders *)v8 setUserAgent:v10];

  v37 = v7;
  [(UWLMessageHeaders *)v8 setXDsid:v7];
  v11 = +[WLKUserEnvironment currentEnvironment];
  v12 = [v11 platform];
  [(UWLMessageHeaders *)v8 setPfm:v12];

  [(UWLMessageHeaders *)v8 setClientVersion:WLKCurrentProtocolVersion()];
  v13 = objc_alloc_init(NSMutableArray);
  v40 = v4;
  [v4 URL];
  v36 = v39 = v6;
  v14 = [v6 ams_cookiesForURL:?];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v50;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v50 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v49 + 1) + 8 * i);
        v20 = objc_alloc_init(MapEntry);
        v21 = [v19 name];
        [(MapEntry *)v20 setKey:v21];

        v22 = [v19 value];
        [(MapEntry *)v20 setValue:v22];

        [v13 addObject:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v16);
  }

  if ([v13 count])
  {
    [(UWLMessageHeaders *)v8 setCookies:v13];
  }

  v23 = objc_alloc_init(UWLMessageWireEnvelope);
  [(UWLMessageWireEnvelope *)v23 setVersion:1];
  [(UWLMessageWireEnvelope *)v23 setHeaders:v8];
  v24 = [(WLDPlayActivityReportOperation *)v35 playEvents];

  if (v24)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v25 = [(WLDPlayActivityReportOperation *)v35 playEvents];
    v26 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v46;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v46 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [(UWLMessageWireEnvelope *)v23 addPlayEvents:*(*(&v45 + 1) + 8 * j)];
        }

        v27 = [v25 countByEnumeratingWithState:&v45 objects:v54 count:16];
      }

      while (v27);
    }
  }

  else
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v25 = [(WLDPlayActivityReportOperation *)v35 livePlayEvents];
    v30 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (k = 0; k != v31; k = k + 1)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v25);
          }

          [(UWLMessageWireEnvelope *)v23 addLiveActivityEvents:*(*(&v41 + 1) + 8 * k)];
        }

        v31 = [v25 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v31);
    }
  }

  return v23;
}

- (id)_userAgentHeaderForRequest:(id)a3
{
  v4 = a3;
  v5 = [(WLDPlayActivityReportOperation *)self encoder];
  v6 = [v5 requestByEncodingRequest:v4 parameters:0];

  v7 = [v6 resultWithError:0];
  v8 = [v7 valueForHTTPHeaderField:AMSHTTPHeaderUserAgent];

  return v8;
}

@end