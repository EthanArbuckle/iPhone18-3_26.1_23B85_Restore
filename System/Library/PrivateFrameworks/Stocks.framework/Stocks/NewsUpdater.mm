@interface NewsUpdater
+ (id)_newsItemCollectionCache;
+ (id)sharedNewsUpdater;
- (BOOL)shouldReloadOnResume;
- (NewsUpdater)init;
- (NewsUpdaterDelegate)delegate;
- (void)clearNewsCacheOnDisk;
- (void)didParseData;
- (void)failWithError:(id)error;
- (void)fetchNewsForStock:(id)stock withCompletion:(id)completion;
- (void)loadNewsCacheFromDiskForSymbol:(id)symbol;
- (void)parseData:(id)data;
- (void)resetLocale;
- (void)saveLastResponse;
@end

@implementation NewsUpdater

+ (id)sharedNewsUpdater
{
  v2 = sharedNewsUpdater_sharedNewsUpdater;
  if (!sharedNewsUpdater_sharedNewsUpdater)
  {
    v3 = objc_alloc_init(NewsUpdater);
    v4 = sharedNewsUpdater_sharedNewsUpdater;
    sharedNewsUpdater_sharedNewsUpdater = v3;

    v2 = sharedNewsUpdater_sharedNewsUpdater;
  }

  return v2;
}

+ (id)_newsItemCollectionCache
{
  v2 = _cache;
  if (!_cache)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:20];
    v4 = _cache;
    _cache = v3;

    v2 = _cache;
  }

  return v2;
}

- (NewsUpdater)init
{
  v3.receiver = self;
  v3.super_class = NewsUpdater;
  result = [(YQLRequest *)&v3 init];
  if (result)
  {
    result->_firstLoad = 1;
  }

  return result;
}

- (BOOL)shouldReloadOnResume
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"nidtk"];
  v4 = CFAbsoluteTimeGetCurrent() - v3 > 1800.0;

  return v4;
}

- (void)clearNewsCacheOnDisk
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"nidtk"];
  [standardUserDefaults removeObjectForKey:@"nidak"];
}

- (void)loadNewsCacheFromDiskForSymbol:(id)symbol
{
  symbolCopy = symbol;
  if ([symbolCopy length])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"nidtk"];
    v6 = v5;
    if (CFAbsoluteTimeGetCurrent() - v5 <= 345600.0)
    {
      v7 = [standardUserDefaults arrayForKey:@"nidak"];
      if (v7)
      {
        v8 = [[StockNewsItemCollection alloc] initWithArchiveArray:v7];
        newsItems = [(StockNewsItemCollection *)v8 newsItems];
        v10 = [newsItems count];

        if (v10)
        {
          [(StockNewsItemCollection *)v8 setExpirationTime:v6 + 60.0];
          v11 = +[NewsUpdater _newsItemCollectionCache];
          [v11 setObject:v8 forKey:symbolCopy];
        }
      }
    }

    else
    {
      [(NewsUpdater *)self clearNewsCacheOnDisk];
    }
  }
}

- (void)fetchNewsForStock:(id)stock withCompletion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  stockCopy = stock;
  completionCopy = completion;
  v10 = StocksLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    symbol = [(Stock *)stockCopy symbol];
    v12 = +[NetPreferences sharedPreferences];
    isNetworkReachable = [v12 isNetworkReachable];
    v14 = "NO";
    if (isNetworkReachable)
    {
      v14 = "YES";
    }

    *buf = 138412546;
    v62 = symbol;
    v63 = 2080;
    v64 = v14;
    _os_log_impl(&dword_26BAAD000, v10, OS_LOG_TYPE_DEFAULT, "#NewsUpdater fetchNewsForStock: %@ (reachable: %s)", buf, 0x16u);
  }

  if (!stockCopy)
  {
    [NewsUpdater fetchNewsForStock:a2 withCompletion:self];
  }

  shouldGenerateOfflineData = [objc_opt_class() shouldGenerateOfflineData];
  v16 = +[NetPreferences sharedPreferences];
  isNetworkReachable2 = [v16 isNetworkReachable];

  if (isNetworkReachable2)
  {
    if (stockCopy)
    {
      v53 = completionCopy;
      if (self->_stock != stockCopy)
      {
        v18 = [completionCopy copy];
        updateCompletionHandler = self->_updateCompletionHandler;
        self->_updateCompletionHandler = v18;

        [(YQLRequest *)self cancel];
        if (!(shouldGenerateOfflineData & 1 | !self->_firstLoad))
        {
          self->_firstLoad = 0;
          stock = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [stock doubleForKey:@"nidtk"];
          v22 = v21;
          [stock removeObjectForKey:@"nidtk"];
          if (CFAbsoluteTimeGetCurrent() - v22 <= 1800.0)
          {
            v23 = [stock objectForKey:@"nidak"];
            [stock removeObjectForKey:@"nidak"];
            [stock synchronize];
            if ([v23 count])
            {
              self->_lastResponseTimestamp = v22;
              v24 = [[StockNewsItemCollection alloc] initWithArchiveArray:v23];
              lastNewsItemCollection = self->_lastNewsItemCollection;
              self->_lastNewsItemCollection = v24;

              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __48__NewsUpdater_fetchNewsForStock_withCompletion___block_invoke_2;
              block[3] = &unk_279D15BF0;
              block[4] = self;
              dispatch_async(MEMORY[0x277D85CD0], block);

LABEL_35:
              completionCopy = v53;
              goto LABEL_36;
            }
          }
        }

        v33 = +[NewsUpdater _newsItemCollectionCache];
        symbol2 = [(Stock *)stockCopy symbol];
        stock = [v33 objectForKey:symbol2];

        if (stock)
        {
          v35 = shouldGenerateOfflineData;
        }

        else
        {
          v35 = 1;
        }

        if ((v35 & 1) != 0 || (Current = CFAbsoluteTimeGetCurrent(), [stock expirationTime], Current >= v37) || (objc_msgSend(stock, "newsItems"), v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "count"), v38, !v39))
        {
          objc_storeStrong(&self->_stock, stock);
          v40 = +[NetPreferences sharedPreferences];
          yQLLanguageCode = [(YQLRequest *)self YQLLanguageCode];
          yQLCountryCode = [(YQLRequest *)self YQLCountryCode];
          v60[0] = @"json";
          v59[0] = @"format";
          v59[1] = @"tickers";
          symbol3 = [(Stock *)stockCopy symbol];
          v60[1] = symbol3;
          v60[2] = yQLLanguageCode;
          v59[2] = @"lang";
          v59[3] = @"region";
          v60[3] = yQLCountryCode;
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:4];

          stocksYQLBaseURL = [v40 stocksYQLBaseURL];
          v46 = [stocksYQLBaseURL URLByAppendingPathComponent:@"applewf/news"];

          v47 = [v40 signedRequestForURL:v46 parameters:v44];
          if ([v40 serviceDebugging])
          {
            v51 = yQLCountryCode;
            v48 = [v47 URL];
            [v48 absoluteString];
            v49 = v52 = yQLLanguageCode;
            [YQLRequest appendDebugString:v49];

            v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v44];
            yQLLanguageCode = v52;
            [YQLRequest appendDebugString:v50];

            yQLCountryCode = v51;
          }

          [(YQLRequest *)self loadRequest:v47];
        }

        else
        {
          objc_storeStrong(&self->_lastNewsItemCollection, stock);
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __48__NewsUpdater_fetchNewsForStock_withCompletion___block_invoke_3;
          v54[3] = &unk_279D15BF0;
          v54[4] = self;
          dispatch_async(MEMORY[0x277D85CD0], v54);
        }

        goto LABEL_35;
      }

      v26 = StocksLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        symbol4 = [(Stock *)self->_stock symbol];
        *buf = 138412290;
        v62 = symbol4;
        _os_log_impl(&dword_26BAAD000, v26, OS_LOG_TYPE_DEFAULT, "#NewsUpdater Skipping duplicate news update request for %@", buf, 0xCu);
      }

      v28 = self->_updateCompletionHandler;
      if (v28)
      {
        v29 = [v28 copy];
        v56[0] = MEMORY[0x277D85DD0];
        v56[1] = 3221225472;
        v56[2] = __48__NewsUpdater_fetchNewsForStock_withCompletion___block_invoke;
        v56[3] = &unk_279D15D48;
        v57 = v29;
        v58 = completionCopy;
        stock = v29;
        v30 = MEMORY[0x26D68CA60](v56);
        v31 = self->_updateCompletionHandler;
        self->_updateCompletionHandler = v30;
      }

      else
      {
        v32 = [completionCopy copy];
        stock = self->_updateCompletionHandler;
        self->_updateCompletionHandler = v32;
      }
    }

    else
    {
      [(YQLRequest *)self cancel];
      stock = self->_stock;
      self->_stock = 0;
    }
  }

  else
  {
    if (!self->_stock)
    {
      objc_storeStrong(&self->_stock, stock);
    }

    stock = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.stocks" code:3 userInfo:0];
    [(NewsUpdater *)self failWithError:stock];
  }

LABEL_36:
}

uint64_t __48__NewsUpdater_fetchNewsForStock_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v9 = v5;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v9);
  }

  return MEMORY[0x2821F9730]();
}

- (void)saveLastResponse
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setDouble:@"nidtk" forKey:self->_lastResponseTimestamp];
  archiveArray = [(StockNewsItemCollection *)self->_lastNewsItemCollection archiveArray];
  [standardUserDefaults setObject:archiveArray forKey:@"nidak"];
}

- (void)parseData:(id)data
{
  v91 = *MEMORY[0x277D85DE8];
  v82 = 0;
  dataCopy = data;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:? options:? error:?];
  v65 = 0;
  v66 = v3;
  v68 = [YahooResponseParser arrayWithDictionaryKeyPath:&unk_287C81810 inJSONObject:v3 wrapResultIfDictionary:1];
  if (!v68)
  {
    [(YQLRequest *)self failToParseWithData:dataCopy];
    goto LABEL_53;
  }

  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v68;
  v73 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
  if (v73)
  {
    v72 = *v79;
    do
    {
      for (i = 0; i != v73; ++i)
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v78 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v6 = [v5 objectForKeyedSubscript:@"headline"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v7 = objc_alloc_init(StockNewsItem);
            v8 = objc_opt_class();
            v89 = @"title";
            v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1];
            v10 = [YahooResponseParser objectOfClass:v8 withDictionaryKeyPath:v9 inJSONObject:v6];
            [(StockNewsItem *)v7 setHeadline:v10];

            headline = [(StockNewsItem *)v7 headline];
            LOBYTE(v10) = [headline length] == 0;

            if ((v10 & 1) == 0)
            {
              v12 = objc_opt_class();
              v88 = @"shortSummary";
              v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
              v14 = [YahooResponseParser objectOfClass:v12 withDictionaryKeyPath:v13 inJSONObject:v6];
              [(StockNewsItem *)v7 setSummary:v14];

              v15 = StocksLogForCategory(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                headline2 = [(StockNewsItem *)v7 headline];
                *buf = 138412290;
                v87 = headline2;
                _os_log_impl(&dword_26BAAD000, v15, OS_LOG_TYPE_INFO, "#NewsUpdater headline: %@", buf, 0xCu);
              }

              v17 = StocksLogForCategory(0);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                summary = [(StockNewsItem *)v7 summary];
                *buf = 138412290;
                v87 = summary;
                _os_log_impl(&dword_26BAAD000, v17, OS_LOG_TYPE_INFO, "#NewsUpdater summary: %@", buf, 0xCu);
              }

              v19 = objc_opt_class();
              v85 = @"url";
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v85 count:1];
              v21 = [YahooResponseParser objectOfClass:v19 withDictionaryKeyPath:v20 inJSONObject:v6];

              v22 = [MEMORY[0x277CBEBC0] stocks_sanitizedURLFromString:v21];
              if (v22)
              {
                [(StockNewsItem *)v7 setLink:v22];
                v23 = StocksLogForCategory(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  link = [(StockNewsItem *)v7 link];
                  *buf = 138412290;
                  v87 = link;
                  _os_log_impl(&dword_26BAAD000, v23, OS_LOG_TYPE_INFO, "#NewsUpdater URL: %@", buf, 0xCu);
                }

                v25 = [v5 objectForKeyedSubscript:@"meta"];
                v26 = objc_opt_class();
                v84[0] = @"provider";
                v84[1] = @"name";
                v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:2];
                v28 = [YahooResponseParser objectOfClass:v26 withDictionaryKeyPath:v27 inJSONObject:v25];
                [(StockNewsItem *)v7 setSource:v28];

                v29 = [v25 objectForKeyedSubscript:@"publishTime"];
                if (v29)
                {
                  v30 = parseData__formatter;
                  if (!parseData__formatter)
                  {
                    v31 = objc_alloc_init(MEMORY[0x277CCA968]);
                    v32 = parseData__formatter;
                    parseData__formatter = v31;

                    [parseData__formatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss.SSS'Z"];
                    v33 = parseData__formatter;
                    v34 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
                    [v33 setTimeZone:v34];

                    v35 = parseData__formatter;
                    v36 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
                    [v35 setLocale:v36];

                    v30 = parseData__formatter;
                  }

                  v37 = [v30 dateFromString:v29];
                  [(StockNewsItem *)v7 setDate:v37];

                  date = [(StockNewsItem *)v7 date];
                  LOBYTE(v37) = date == 0;

                  if ((v37 & 1) == 0)
                  {
                    v39 = StocksLogForCategory(0);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
                    {
                      date2 = [(StockNewsItem *)v7 date];
                      *buf = 138412290;
                      v87 = date2;
                      _os_log_impl(&dword_26BAAD000, v39, OS_LOG_TYPE_INFO, "#NewsUpdater date: %@", buf, 0xCu);
                    }

                    [v70 addObject:v7];
                  }
                }
              }

              else
              {
                v25 = StocksLogForCategory(0);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v87 = v21;
                  _os_log_impl(&dword_26BAAD000, v25, OS_LOG_TYPE_DEFAULT, "#NewsUpdater Skipping news item with unparsable URL %@", buf, 0xCu);
                }
              }
            }
          }
        }
      }

      v73 = [obj countByEnumeratingWithState:&v78 objects:v90 count:16];
    }

    while (v73);
  }

  [v70 sortUsingSelector:sel_chronologicalComparisonWithNewsItem_];
  v41 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v70, "count")}];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v42 = v70;
  v43 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v43)
  {
    v44 = 0;
    v45 = 0;
    v46 = *v75;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v75 != v46)
        {
          objc_enumerationMutation(v42);
        }

        v48 = *(*(&v74 + 1) + 8 * j);
        headline3 = [v48 headline];

        v44 = headline3;
        if ([v41 containsObject:headline3])
        {
          if (v45)
          {
            [v45 addObject:v48];
          }

          else
          {
            v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v48, 0}];
          }
        }

        else
        {
          [v41 addObject:headline3];
        }
      }

      v43 = [v42 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v43);

    if (v45)
    {
      [v42 removeObjectsInArray:v45];
    }
  }

  else
  {

    v45 = 0;
    v44 = 0;
  }

  symbol = [(Stock *)self->_stock symbol];
  v51 = +[NewsUpdater _newsItemCollectionCache];
  v52 = [v51 objectForKey:symbol];

  Current = CFAbsoluteTimeGetCurrent();
  if (![v42 count])
  {
    newsItems = [v52 newsItems];
    if ([newsItems count])
    {
      [v52 expirationTime];
      v60 = v59 + -60.0 > Current + -345600.0;

      if (v60)
      {
        v61 = MEMORY[0x277CBEA60];
        newsItems2 = [v52 newsItems];
        v63 = [v61 arrayWithArray:newsItems2];
        [v52 setNewsItems:v63];

        objc_storeStrong(&self->_lastNewsItemCollection, v52);
        [(StockNewsItemCollection *)self->_lastNewsItemCollection expirationTime];
        self->_lastResponseTimestamp = v64 + -60.0;
        goto LABEL_50;
      }
    }

    else
    {
    }
  }

  self->_lastResponseTimestamp = Current;
  v54 = objc_alloc_init(StockNewsItemCollection);
  lastNewsItemCollection = self->_lastNewsItemCollection;
  self->_lastNewsItemCollection = v54;

  [(StockNewsItemCollection *)self->_lastNewsItemCollection setNewsItems:v42];
  [(StockNewsItemCollection *)self->_lastNewsItemCollection setExpirationTime:self->_lastResponseTimestamp + 60.0];
LABEL_50:
  if ([symbol length])
  {
    v56 = +[NewsUpdater _newsItemCollectionCache];
    [v56 setObject:self->_lastNewsItemCollection forKey:symbol];
  }

  stock = self->_stock;
  self->_stock = 0;

  [(NewsUpdater *)self didParseData];
LABEL_53:
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = NewsUpdater;
  [(YQLRequest *)&v21 failWithError:errorCopy];
  updateCompletionHandler = self->_updateCompletionHandler;
  if (updateCompletionHandler)
  {
    updateCompletionHandler[2](updateCompletionHandler, 0, errorCopy);
    v6 = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;
  }

  symbol = [(Stock *)self->_stock symbol];
  v8 = +[NewsUpdater _newsItemCollectionCache];
  v9 = [v8 objectForKey:symbol];

  newsItems = [v9 newsItems];
  if (![newsItems count])
  {

    goto LABEL_7;
  }

  [v9 expirationTime];
  v12 = v11 + -60.0;
  v13 = CFAbsoluteTimeGetCurrent() + -345600.0;

  if (v12 <= v13)
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained newsUpdater:self didFailWithError:errorCopy];
    goto LABEL_8;
  }

  v14 = MEMORY[0x277CBEA60];
  newsItems2 = [v9 newsItems];
  v16 = [v14 arrayWithArray:newsItems2];
  [v9 setNewsItems:v16];

  objc_storeStrong(&self->_lastNewsItemCollection, v9);
  [(StockNewsItemCollection *)self->_lastNewsItemCollection expirationTime];
  self->_lastResponseTimestamp = v17 + -60.0;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  newsItems3 = [(StockNewsItemCollection *)self->_lastNewsItemCollection newsItems];
  [WeakRetained newsUpdater:self didReceiveNewsItems:newsItems3];

LABEL_8:
  stock = self->_stock;
  self->_stock = 0;
}

- (void)didParseData
{
  updateCompletionHandler = self->_updateCompletionHandler;
  if (updateCompletionHandler)
  {
    updateCompletionHandler[2](updateCompletionHandler, 1, 0);
    v4 = self->_updateCompletionHandler;
    self->_updateCompletionHandler = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  newsItems = [(StockNewsItemCollection *)self->_lastNewsItemCollection newsItems];
  [WeakRetained newsUpdater:self didReceiveNewsItems:newsItems];
}

- (void)resetLocale
{
  v14 = *MEMORY[0x277D85DE8];
  if (_cache)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    allValues = [_cache allValues];
    v3 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          [v7 setExpirationTime:0.0];
          newsItems = [v7 newsItems];
          [newsItems makeObjectsPerformSelector:sel_resetLocale];
        }

        v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }
}

- (NewsUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchNewsForStock:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NewsUpdater.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"stock != nil"}];
}

- (void)parseData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[NewsUpdater parseData:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "#NewsUpdater *** [%s] Caught exception: %@", &v2, 0x16u);
}

@end