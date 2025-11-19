@interface YahooDoppelganger
+ (BOOL)waitForAllDoppelgangersUpToTimeout:(double)a3;
+ (id)newDoppelgangerMatchingRequestPattern:(id)a3;
+ (id)prepDoppelgangerForChartResponseWithSymbol:(id)a3 numberOfDataPoints:(int64_t)a4;
+ (id)prepDoppelgangerForNewsResponseWithSymbol:(id)a3 numberOfNewsItems:(int64_t)a4;
+ (id)prepDoppelgangerForQuotesResponseWithSymbols:(id)a3 includeMetdata:(BOOL)a4;
+ (id)prepDoppelgangerWithRequestPattern:(id)a3 response:(id)a4;
+ (void)_doppelgangerFinished:(id)a3;
+ (void)_spewDoppelgangerArray:(id)a3 named:(id)a4;
+ (void)clearDoppelgangerData;
+ (void)hookIntoYQLRequestIfNeeded;
+ (void)spewDoppelgangerData;
- (BOOL)matchesRequest:(id)a3;
- (NSURLSessionDataDelegate)delegate;
- (YahooDoppelganger)init;
- (void)_relayDataChunk;
- (void)start;
@end

@implementation YahooDoppelganger

+ (void)hookIntoYQLRequestIfNeeded
{
  if ((hookIntoYQLRequestIfNeeded_swizzled & 1) == 0)
  {
    v2 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v2, sel_taskForRequest_delegate_);
    method_setImplementation(InstanceMethod, [(objc_class *)v2 instanceMethodForSelector:sel__yahooDoppelganger_taskForRequest_delegate_]);
    hookIntoYQLRequestIfNeeded_swizzled = 1;
  }
}

+ (id)newDoppelgangerMatchingRequestPattern:(id)a3
{
  v3 = a3;
  if (!preppedDoppelgangers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = preppedDoppelgangers;
    preppedDoppelgangers = v4;
  }

  v6 = objc_opt_new();
  [v6 setExpectedRequestPattern:v3];
  [preppedDoppelgangers addObject:v6];

  return v6;
}

+ (id)prepDoppelgangerWithRequestPattern:(id)a3 response:(id)a4
{
  v6 = a4;
  v7 = a3;
  [a1 hookIntoYQLRequestIfNeeded];
  v8 = [a1 newDoppelgangerMatchingRequestPattern:v7];

  v9 = [v6 dataUsingEncoding:4];

  [v8 setResponse:v9];

  return v8;
}

+ (id)prepDoppelgangerForQuotesResponseWithSymbols:(id)a3 includeMetdata:(BOOL)a4
{
  v29 = a4;
  v47 = *MEMORY[0x277D85DE8];
  v5 = a3;
  srandom(4u);
  [a1 hookIntoYQLRequestIfNeeded];
  v26 = [a1 newDoppelgangerMatchingRequestPattern:@".*getquotes.*"];
  v6 = [MEMORY[0x277CCAB68] stringWithString:@"<?xml version=1.0 encoding=UTF-8?><response><result type=getquotes timestamp=0>"];
  [v6 appendFormat:@"<list count=%lu total=%lu>", objc_msgSend(v5, "count"), objc_msgSend(v5, "count")];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v5;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v28 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v7;
        v8 = *(*(&v40 + 1) + 8 * v7);
        [v6 appendString:@"<quote>"];
        [v6 appendFormat:@"<symbol>%@</symbol>", v8];
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v9 = [&unk_287C81750 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v37;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v37 != v11)
              {
                objc_enumerationMutation(&unk_287C81750);
              }

              v13 = *(*(&v36 + 1) + 8 * i);
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
              [v6 appendFormat:@"<%@>%@</%@>", v13, v14, v13];
            }

            v10 = [&unk_287C81750 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v10);
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
        [v6 appendFormat:@"<marketcap>%@</marketcap>", v15];

        [v6 appendString:@"<status>1</status>"];
        if (v29)
        {
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [&unk_287C81768 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v33;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v33 != v18)
                {
                  objc_enumerationMutation(&unk_287C81768);
                }

                v20 = *(*(&v32 + 1) + 8 * j);
                v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
                [v6 appendFormat:@"<%@>%@</%@>", v20, v21, v20];
              }

              v17 = [&unk_287C81768 countByEnumeratingWithState:&v32 objects:v44 count:16];
            }

            while (v17);
          }

          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
          [v6 appendFormat:@"<yearrange>%@ - %@</yearrange>", v22, v23];
        }

        [v6 appendString:@"</quote>"];
        v7 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v30);
  }

  [v6 appendString:@"</list></result></response>"];
  v24 = [v6 dataUsingEncoding:4];
  [v26 setResponse:v24];

  return v26;
}

+ (id)prepDoppelgangerForNewsResponseWithSymbol:(id)a3 numberOfNewsItems:(int64_t)a4
{
  v6 = a3;
  srandom(4u);
  [a1 hookIntoYQLRequestIfNeeded];
  v7 = [a1 newDoppelgangerMatchingRequestPattern:@".*getnews.*"];
  v8 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
  if (!prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response)
  {
    v19 = v7;
    v9 = [MEMORY[0x277CCAB68] stringWithString:@"<?xml version=1.0 encoding=UTF-8?><response><result type=getnews timestamp=0><list count=1 total=1>"];
    v10 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
    prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response = v9;

    [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendFormat:@"<feed><symbol>%@</symbol><timestamp>0</timestamp><expires></expires><list count=%lu>", v6, a4];
    if (a4 >= 1)
    {
      do
      {
        [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendString:@"<item>"];
        v11 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
        v12 = randomStringOfLength(20, 1);
        [v11 appendFormat:@"<id>%@</id>", v12];

        [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendString:@"<timestamp>0</timestamp>"];
        [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendString:@"<link>http://apple.com</link>"];
        v13 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
        v14 = randomStringOfLength(40, 1);
        [v13 appendFormat:@"<title>%@</title>", v14];

        v15 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
        v16 = randomStringOfLength(200, 1);
        [v15 appendFormat:@"<summary>%@</summary>", v16];

        [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendString:@"</item>"];
        --a4;
      }

      while (a4);
    }

    [prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response appendString:@"</list></feed></list></result></response>"];
    v8 = prepDoppelgangerForNewsResponseWithSymbol_numberOfNewsItems__response;
    v7 = v19;
  }

  v17 = [v8 dataUsingEncoding:4];
  [v7 setResponse:v17];

  return v7;
}

+ (id)prepDoppelgangerForChartResponseWithSymbol:(id)a3 numberOfDataPoints:(int64_t)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  srandom(4u);
  [a1 hookIntoYQLRequestIfNeeded];
  v7 = [a1 newDoppelgangerMatchingRequestPattern:@".*getchart.*"];
  v8 = prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response;
  if (!prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response)
  {
    v21 = v7;
    v9 = [MEMORY[0x277CCAB68] stringWithString:@"<?xml version=1.0 encoding=UTF-8?><response><result type=getchart timestamp=0>"];
    v10 = prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response;
    prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response = v9;

    [prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response appendFormat:@"<list count=%li total=%li>", a4, a4];
    v22 = v6;
    [prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response appendFormat:@"<meta><symbol>%@</symbol><marketopen>0</marketopen><marketclose>0</marketclose><gmtoffset>0</gmtoffset></meta>", v6];
    if (a4 >= 1)
    {
      v11 = 0;
      v23 = a4;
      do
      {
        v24 = v11;
        [prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response appendString:@"<point"];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = [&unk_287C81780 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(&unk_287C81780);
              }

              v16 = *(*(&v25 + 1) + 8 * i);
              v17 = prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response;
              v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f", ((random() / 214750000.0) + 0.0)];
              [v17 appendFormat:@" %@=%@", v16, v18];
            }

            v13 = [&unk_287C81780 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        [prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response appendFormat:@" timestamp=%li></point>", 86400 * v24];
        v11 = v24 + 1;
      }

      while (v24 + 1 != v23);
    }

    [prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response appendString:@"</list></result></response>"];
    v8 = prepDoppelgangerForChartResponseWithSymbol_numberOfDataPoints__response;
    v7 = v21;
    v6 = v22;
  }

  v19 = [v8 dataUsingEncoding:4];
  [v7 setResponse:v19];

  return v7;
}

+ (void)_doppelgangerFinished:(id)a3
{
  v3 = a3;
  v6 = v3;
  if (!finishedDoppelgangers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = finishedDoppelgangers;
    finishedDoppelgangers = v4;

    v3 = v6;
  }

  [activeDoppelgangers removeObject:v3];
  [finishedDoppelgangers addObject:v6];
}

+ (void)_spewDoppelgangerArray:(id)a3 named:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "  %@", buf, 0xCu);
    }

    v18 = v6;
    v19 = v5;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      v11 = MEMORY[0x277D86220];
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
          }

          v14 = [v13 response];

          if (v14 && os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_alloc(MEMORY[0x277CCACA8]);
            v16 = [v13 response];
            v17 = [v15 initWithData:v16 encoding:4];
            *buf = 138412290;
            v26 = v17;
            _os_log_impl(&dword_26BAAD000, v11, OS_LOG_TYPE_DEFAULT, "      Response: %@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v6 = v18;
    v5 = v19;
  }
}

+ (void)spewDoppelgangerData
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "** Beginning YahooDoppelganger dump **", buf, 2u);
  }

  [a1 _spewDoppelgangerArray:preppedDoppelgangers named:@"Doppelgangers that have not received a request"];
  [a1 _spewDoppelgangerArray:activeDoppelgangers named:@"Doppelgangers actively sending data"];
  [a1 _spewDoppelgangerArray:finishedDoppelgangers named:@"Doppelgangers finished sending data"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "** YahooDoppelganger dump complete **", v3, 2u);
  }
}

+ (void)clearDoppelgangerData
{
  v2 = preppedDoppelgangers;
  preppedDoppelgangers = 0;

  v3 = activeDoppelgangers;
  activeDoppelgangers = 0;

  v4 = finishedDoppelgangers;
  finishedDoppelgangers = 0;
}

- (BOOL)matchesRequest:(id)a3
{
  v4 = [a3 URL];
  v5 = [v4 absoluteString];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self matches %@", self->_expectedRequestPattern];
  LOBYTE(v4) = [v6 evaluateWithObject:v5];

  return v4;
}

- (YahooDoppelganger)init
{
  v3.receiver = self;
  v3.super_class = YahooDoppelganger;
  result = [(YahooDoppelganger *)&v3 init];
  if (result)
  {
    result->_responseChunkSize = -1;
  }

  return result;
}

+ (BOOL)waitForAllDoppelgangersUpToTimeout:(double)a3
{
  v4 = 0.0;
  do
  {
    v5 = [activeDoppelgangers count];
    if (!v5)
    {
      break;
    }

    v6 = [MEMORY[0x277CBEB88] currentRunLoop];
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.100000001];
    [v6 runUntilDate:v7];

    v4 = v4 + 0.1;
  }

  while (v4 < a3);
  return v5 == 0;
}

- (void)_relayDataChunk
{
  if (!self->_cancelled)
  {
    responseChunkSize = self->_responseChunkSize;
    v4 = [(NSData *)self->_response length];
    responseOffset = self->_responseOffset;
    if (responseChunkSize >= v4 - responseOffset)
    {
      v6 = v4 - responseOffset;
    }

    else
    {
      v6 = responseChunkSize;
    }

    v7 = [(NSData *)self->_response subdataWithRange:?];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      [v10 URLSession:self->_session dataTask:self->_dataTask didReceiveData:v7];
    }

    v11 = self->_responseOffset + v6;
    self->_responseOffset = v11;
    if (v11 == [(NSData *)self->_response length])
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      v13 = objc_opt_respondsToSelector();

      if (v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        [v14 URLSession:self->_session task:self->_dataTask didCompleteWithError:0];
      }

      [objc_opt_class() _doppelgangerFinished:self];
    }

    else
    {
      v15 = dispatch_time(0, 1000000 * self->_responseChunkDelay);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__YahooDoppelganger__relayDataChunk__block_invoke;
      block[3] = &unk_279D15BF0;
      block[4] = self;
      dispatch_after(v15, MEMORY[0x277D85CD0], block);
    }
  }
}

- (void)start
{
  v3 = dispatch_time(0, 1000000 * self->_responseChunkInitialDelay);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__YahooDoppelganger_start__block_invoke;
  block[3] = &unk_279D15BF0;
  block[4] = self;
  dispatch_after(v3, MEMORY[0x277D85CD0], block);
}

- (NSURLSessionDataDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end