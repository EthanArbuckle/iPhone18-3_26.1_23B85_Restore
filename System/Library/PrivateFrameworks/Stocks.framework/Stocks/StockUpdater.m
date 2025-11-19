@interface StockUpdater
- (BOOL)_updateStocks:(id)a3 comprehensive:(BOOL)a4 forceUpdate:(BOOL)a5;
- (StockUpdaterDelegate)delegate;
- (void)_parseExchangeDictionaries:(id)a3;
- (void)_parseQuoteDictionaries:(id)a3 withDataSourceDictionaries:(id)a4;
- (void)didParseData;
- (void)failWithError:(id)a3;
- (void)parseData:(id)a3;
@end

@implementation StockUpdater

- (BOOL)_updateStocks:(id)a3 comprehensive:(BOOL)a4 forceUpdate:(BOOL)a5
{
  v6 = a4;
  v62 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [objc_opt_class() shouldGenerateOfflineData];
  self->_isComprehensive = v6;
  self->_forceUpdate = a5;
  lastError = self->_lastError;
  self->_lastError = 0;

  if (!self->_forceUpdate && (v9 & 1) == 0)
  {
    v11 = [MEMORY[0x277CBEB18] array];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = v13;
    v15 = *v52;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v51 + 1) + 8 * i);
        if (!v6)
        {
          if (![v17 isQuoteStale])
          {
            continue;
          }

LABEL_12:
          [v11 addObject:v17];
          continue;
        }

        if ([v17 isMetadataStale])
        {
          goto LABEL_12;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v51 objects:v61 count:16];
      if (!v14)
      {
LABEL_15:

        goto LABEL_17;
      }
    }
  }

  v11 = v8;
LABEL_17:
  v18 = [v11 count];
  if (v18)
  {
    if ([v11 count] >= 0x65)
    {
      v19 = [v11 subarrayWithRange:{100, objc_msgSend(v11, "count") - 100}];
      [(StockUpdater *)self setPendingStocks:v19];

      v20 = [v11 subarrayWithRange:{0, 100}];

      v21 = StocksLogForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(NSArray *)self->_pendingStocks count];
        *buf = 134217984;
        v58 = v22;
        _os_log_impl(&dword_26BAAD000, v21, OS_LOG_TYPE_DEFAULT, "#StockUpdater Splitting stocks update into multiple requests, %lu pending", buf, 0xCu);
      }

      v11 = v20;
    }

    v23 = StocksLogForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_isComprehensive)
      {
        v24 = "comprehensive";
      }

      else
      {
        v24 = "basic";
      }

      *buf = 136315394;
      v58 = v24;
      v59 = 2112;
      v60 = v11;
      _os_log_impl(&dword_26BAAD000, v23, OS_LOG_TYPE_DEFAULT, "#StockUpdater Performing %s update for stocks: %@", buf, 0x16u);
    }

    [(StockUpdater *)self setRequestStocks:v11];
    v25 = [(NSArray *)self->_requestStocks valueForKey:@"symbol"];
    v26 = [v25 componentsJoinedByString:{@", "}];

    v27 = +[NetPreferences sharedPreferences];
    v28 = [(YQLRequest *)self YQLLanguageCode];
    v29 = [(YQLRequest *)self YQLCountryCode];
    v55[0] = @"format";
    v55[1] = @"crossProduct";
    v56[0] = @"json";
    v56[1] = @"optimized";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v31 = [v30 mutableCopy];

    [v31 na_safeSetObject:v26 forKey:@"tickers"];
    [v31 na_safeSetObject:v28 forKey:@"lang"];
    v50 = v29;
    [v31 na_safeSetObject:v29 forKey:@"region"];
    v32 = [v27 stocksYQLBaseURL];
    v33 = v32;
    v34 = YQLMetadataPath;
    if (!v6)
    {
      v34 = YQLBasicDataPath;
    }

    v35 = [v32 URLByAppendingPathComponent:*v34];

    v36 = [v27 signedRequestForURL:v35 parameters:v31];
    if ([v27 serviceDebugging])
    {
      [v36 URL];
      v37 = v49 = v26;
      [v37 absoluteString];
      v38 = v35;
      v39 = v27;
      v40 = v28;
      v42 = v41 = v18;
      [YQLRequest appendDebugString:v42];

      v18 = v41;
      v28 = v40;
      v27 = v39;
      v35 = v38;

      v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v31];
      [YQLRequest appendDebugString:v43];

      v26 = v49;
    }

    [(YQLRequest *)self loadRequest:v36];
    v44 = [MEMORY[0x277CCAB98] defaultCenter];
    [v44 postNotificationName:@"StocksUpdateLoadingStatusNotification" object:0];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained stockUpdater:self didRequestUpdateForStocks:v11 isComprehensive:self->_isComprehensive];
  }

  else
  {
    v46 = StocksLogForCategory(0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v58) = v6;
      _os_log_impl(&dword_26BAAD000, v46, OS_LOG_TYPE_DEFAULT, "#StockUpdater hit cache, comprehensive: %d", buf, 8u);
    }

    updateCompletionHandler = self->_updateCompletionHandler;
    if (updateCompletionHandler)
    {
      updateCompletionHandler[2](updateCompletionHandler, 1, 0);
      [(StockUpdater *)self setUpdateCompletionHandler:0];
    }
  }

  return v18 != 0;
}

- (void)parseData:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__StockUpdater_parseData___block_invoke;
  v6[3] = &unk_279D15DB8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [YahooResponseParser parseData:v5 resultsHandler:v6];
}

void __26__StockUpdater_parseData___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v9)
  {
    [v8 _parseExchangeDictionaries:a2];
    [*(a1 + 32) _parseQuoteDictionaries:v9 withDataSourceDictionaries:v7];
  }

  else
  {
    [v8 failToParseWithData:*(a1 + 40)];
  }

  [*(a1 + 32) didParseData];
}

- (void)_parseQuoteDictionaries:(id)a3 withDataSourceDictionaries:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = v7;
  v9 = [YahooResponseParser parseDataSourceMapFromDataSourceDictionaries:v7];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __67__StockUpdater__parseQuoteDictionaries_withDataSourceDictionaries___block_invoke;
  v29[3] = &unk_279D15DE0;
  v10 = v8;
  v30 = v10;
  v24 = v6;
  v22 = v9;
  [YahooResponseParser parseStockQuoteDictionaries:v6 withDataSources:v9 parsedStockResult:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_requestStocks;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v16 symbol];
        v18 = [v10 objectForKeyedSubscript:v17];

        if (v18)
        {
          isComprehensive = self->_isComprehensive;
          v20 = [v10 objectForKeyedSubscript:v17];
          Current = CFAbsoluteTimeGetCurrent();
          if (isComprehensive)
          {
            [v16 updateMetadataWithDictionary:v20 forTime:Current];
          }

          else
          {
            [v16 updateQuoteWithDictionary:v20 forTime:Current];
          }
        }
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v13);
  }
}

- (void)_parseExchangeDictionaries:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(StockUpdater *)self requestStocks];
  v6 = [v5 count];
  v7 = +[StockManager sharedManager];
  v8 = [v7 stocksList];
  if (v6 == [v8 count])
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [(StockUpdater *)self requestStocks];
    v11 = [v9 setWithArray:v10];
    v12 = MEMORY[0x277CBEB98];
    v13 = +[StockManager sharedManager];
    v14 = [v13 stocksList];
    v15 = [v12 setWithArray:v14];
    v16 = [v11 isEqualToSet:v15];

    if (v16)
    {
      v17 = [MEMORY[0x277CBEB58] set];
      v18 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v17 = 0;
  v18 = 0;
LABEL_6:
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __43__StockUpdater__parseExchangeDictionaries___block_invoke;
  v36[3] = &unk_279D15DE0;
  v19 = v17;
  v37 = v19;
  [YahooResponseParser parseExchangeDictionaries:v4 parsedExchangeResult:v36];
  if (v18)
  {
    v20 = +[ExchangeManager sharedManager];
    v21 = [v20 exchangeList];
    v22 = [v21 copy];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = v22;
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v32 + 1) + 8 * i);
          v29 = [v28 name];
          v30 = [v19 containsObject:v29];

          if ((v30 & 1) == 0)
          {
            v31 = +[ExchangeManager sharedManager];
            [v31 removeExchange:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v25);
    }
  }
}

void __43__StockUpdater__parseExchangeDictionaries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[ExchangeManager sharedManager];
  v8 = [v7 exchangeWithName:v5];

  if (v8)
  {
    v9 = StocksLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __43__StockUpdater__parseExchangeDictionaries___block_invoke_cold_1(v8, v6, v9);
    }

    [(Exchange *)v8 updateWithDictionary:v6];
  }

  else
  {
    v8 = [[Exchange alloc] initWithDictionary:v6];
    v10 = +[ExchangeManager sharedManager];
    [v10 addExchange:v8];
  }

  [*(a1 + 32) addObject:v5];
}

- (void)didParseData
{
  v3 = +[StockManager sharedManager];
  [v3 saveDataChanges];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained stockUpdater:self didUpdateStocks:self->_requestStocks isComprehensive:self->_isComprehensive];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"StocksUpdateLoadingStatusNotification" object:0];

  requestStocks = self->_requestStocks;
  self->_requestStocks = 0;

  if ([(NSArray *)self->_pendingStocks count])
  {
    pendingStocks = self->_pendingStocks;
    self->_pendingStocks = 0;
    v9 = pendingStocks;

    [(StockUpdater *)self _updateStocks:v9 comprehensive:self->_isComprehensive forceUpdate:self->_forceUpdate];
  }

  else
  {
    updateCompletionHandler = self->_updateCompletionHandler;
    if (updateCompletionHandler)
    {
      updateCompletionHandler[2](updateCompletionHandler, 1, 0);

      [(StockUpdater *)self setUpdateCompletionHandler:0];
    }
  }
}

- (void)failWithError:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = StockUpdater;
  [(YQLRequest *)&v10 failWithError:v5];
  objc_storeStrong(&self->_lastError, a3);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained stockUpdater:self didFailWithError:v5 whileUpdatingStocks:self->_requestStocks comprehensive:self->_isComprehensive];

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"StocksUpdateLoadingStatusNotification" object:0];

  requestStocks = self->_requestStocks;
  self->_requestStocks = 0;

  updateCompletionHandler = self->_updateCompletionHandler;
  if (updateCompletionHandler)
  {
    updateCompletionHandler[2](updateCompletionHandler, 0, v5);
    [(StockUpdater *)self setUpdateCompletionHandler:0];
  }
}

- (StockUpdaterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__StockUpdater__parseExchangeDictionaries___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 name];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_26BAAD000, a3, OS_LOG_TYPE_DEBUG, "#StockUpdater Updating #exchange %@ with dictionary %@", &v6, 0x16u);
}

@end