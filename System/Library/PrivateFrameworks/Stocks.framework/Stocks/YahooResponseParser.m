@interface YahooResponseParser
+ (id)arrayWithDictionaryKeyPath:(id)a3 inJSONObject:(id)a4 wrapResultIfDictionary:(BOOL)a5;
+ (id)dictionaryWithDictionaryKeyPath:(id)a3 inJSONObject:(id)a4;
+ (id)objectOfClass:(Class)a3 withDictionaryKeyPath:(id)a4 inJSONObject:(id)a5;
+ (id)parseDataSourceMapFromDataSourceDictionaries:(id)a3;
+ (void)parseData:(id)a3 resultsHandler:(id)a4;
+ (void)parseExchangeDictionaries:(id)a3 parsedExchangeResult:(id)a4;
+ (void)parseStockQuoteDictionaries:(id)a3 withDataSources:(id)a4 parsedStockResult:(id)a5;
@end

@implementation YahooResponseParser

+ (id)dictionaryWithDictionaryKeyPath:(id)a3 inJSONObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 objectOfClass:objc_opt_class() withDictionaryKeyPath:v7 inJSONObject:v6];

  return v8;
}

+ (id)arrayWithDictionaryKeyPath:(id)a3 inJSONObject:(id)a4 wrapResultIfDictionary:(BOOL)a5
{
  v5 = a5;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [a1 objectWithDictionaryKeyPath:v8 inJSONObject:a4];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18[0] = v9;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
LABEL_6:
      v11 = v10;
      goto LABEL_10;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    goto LABEL_6;
  }

  v12 = StocksLogForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v9;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_26BAAD000, v12, OS_LOG_TYPE_DEFAULT, "#YQLRequest Unexpected object %@ in key path %@; expected array or dictionary", &v14, 0x16u);
  }

  v11 = 0;
LABEL_10:

  return v11;
}

+ (id)objectOfClass:(Class)a3 withDictionaryKeyPath:(id)a4 inJSONObject:(id)a5
{
  v7 = a4;
  v8 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__0;
    v16[4] = __Block_byref_object_dispose__0;
    v17 = v8;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__YahooResponseParser_objectOfClass_withDictionaryKeyPath_inJSONObject___block_invoke;
    v11[3] = &unk_279D16890;
    v13 = v16;
    v12 = v7;
    v14 = &v18;
    v15 = a3;
    [v12 enumerateObjectsUsingBlock:v11];

    _Block_object_dispose(v16, 8);
  }

  v9 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v9;
}

void __72__YahooResponseParser_objectOfClass_withDictionaryKeyPath_inJSONObject___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:a2];
  if ([*(a1 + 32) count] - 1 <= a3)
  {
    if (!*(a1 + 56) || (objc_opt_isKindOfClass() & 1) != 0)
    {
      v8 = *(a1 + 48);
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = *(a1 + 40);
LABEL_7:
      objc_storeStrong((*(v8 + 8) + 40), v7);
      goto LABEL_13;
    }

    if (v7)
    {
      v9 = StocksLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) subarrayWithRange:{0, a3 + 1}];
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v10;
        _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "#YQLRequest Unexpected object %@ in key path %@; expected dictionary", &v11, 0x16u);
      }
    }

    *a4 = 1;
  }

LABEL_13:
}

+ (void)parseData:(id)a3 resultsHandler:(id)a4
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v18];
  v9 = v18;
  v22[0] = @"query";
  v22[1] = @"results";
  v22[2] = @"item";
  v22[3] = @"response";
  v22[4] = @"finance";
  v22[5] = @"quote_service";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];
  v11 = [a1 dictionaryWithDictionaryKeyPath:v10 inJSONObject:v8];

  if (!v11)
  {
    v17 = 0;
    v13 = 0;
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v21[0] = @"quotes";
  v21[1] = @"quote";
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v13 = [a1 arrayWithDictionaryKeyPath:v12 inJSONObject:v11 wrapResultIfDictionary:1];

  if (!v13)
  {
    v17 = 0;
    goto LABEL_6;
  }

  v20[0] = @"exchanges";
  v20[1] = @"exchange";
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v15 = [a1 arrayWithDictionaryKeyPath:v14 inJSONObject:v11 wrapResultIfDictionary:1];

  v19[0] = @"data_sources";
  v19[1] = @"data_source";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v17 = [a1 arrayWithDictionaryKeyPath:v16 inJSONObject:v11 wrapResultIfDictionary:1];

LABEL_7:
  v7[2](v7, v15, v13, v17);
}

+ (id)parseDataSourceMapFromDataSourceDictionaries:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = [v3 dictionary];
  v6 = +[YQLConstants YQLDataSourceToStocksKeyMap];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__YahooResponseParser_parseDataSourceMapFromDataSourceDictionaries___block_invoke;
  v12[3] = &unk_279D168E0;
  v13 = v6;
  v7 = v5;
  v14 = v7;
  v8 = v6;
  [v4 enumerateObjectsUsingBlock:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

void __68__YahooResponseParser_parseDataSourceMapFromDataSourceDictionaries___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __68__YahooResponseParser_parseDataSourceMapFromDataSourceDictionaries___block_invoke_18;
    v13 = &unk_279D168B8;
    v14 = v3;
    v6 = v4;
    v15 = v6;
    [v5 enumerateKeysAndObjectsUsingBlock:&v10];
    v7 = [v6 objectForKeyedSubscript:@"id", v10, v11, v12, v13];
    v8 = v7;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "integerValue")}];
      [*(a1 + 40) setObject:v6 forKeyedSubscript:v9];
    }
  }

  else
  {
    v6 = StocksLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v3;
      _os_log_impl(&dword_26BAAD000, v6, OS_LOG_TYPE_DEFAULT, "#StockUpdater Invalid data source dictionary %@", buf, 0xCu);
    }
  }
}

void __68__YahooResponseParser_parseDataSourceMapFromDataSourceDictionaries___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

+ (void)parseExchangeDictionaries:(id)a3 parsedExchangeResult:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[YQLConstants YQLExchangeToStocksKeyMap];
  if (parseExchangeDictionaries_parsedExchangeResult__onceToken != -1)
  {
    +[YahooResponseParser parseExchangeDictionaries:parsedExchangeResult:];
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2;
  v10[3] = &unk_279D16908;
  v11 = v7;
  v12 = v5;
  v8 = v5;
  v9 = v7;
  [v6 enumerateObjectsUsingBlock:v10];
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"name";
  v3[0] = @"name";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = parseExchangeDictionaries_parsedExchangeResult__exchangeKeyMap;
  parseExchangeDictionaries_parsedExchangeResult__exchangeKeyMap = v0;
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = parseExchangeDictionaries_parsedExchangeResult__exchangeKeyMap;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_23;
    v23 = &unk_279D168B8;
    v6 = v3;
    v24 = v6;
    v7 = v4;
    v25 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:&v20];
    v8 = [v7 yql_objectForKey:@"name" ofClass:objc_opt_class(), v20, v21, v22, v23];
    if (v8)
    {
      if (YQLRegionKey_block_invoke_onceToken != -1)
      {
        __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2_cold_1();
      }

      v9 = [v6 yql_objectForKey:@"next_open" ofClass:objc_opt_class()];
      v10 = [YQLRegionKey_block_invoke_dateFormatter dateFromString:v9];
      if (v10)
      {
        [v7 setObject:v10 forKeyedSubscript:@"nextOpenDate"];
      }

      v11 = [v6 yql_objectForKey:@"status" ofClass:objc_opt_class()];
      if (!v11 || ([*(a1 + 32) objectForKeyedSubscript:v11], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v13 = StocksLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2_cold_2(v11, v6, v13);
        }

        v12 = &unk_287C81030;
      }

      v14 = a1;
      [v7 setObject:v12 forKeyedSubscript:@"status"];
      v15 = [v6 yql_objectForKey:@"stream_interval" ofClass:objc_opt_class()];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 integerValue];
        v18 = v17;
        if (!v17)
        {
          v18 = *MEMORY[0x277CBECC8];
        }

        v19 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
        [v7 setObject:v19 forKeyedSubscript:@"streamInterval"];
      }

      (*(*(v14 + 40) + 16))();
    }

    else
    {
      v9 = StocksLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2_cold_3(v6, v9);
      }
    }
  }

  else
  {
    v7 = StocksLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v3;
      _os_log_impl(&dword_26BAAD000, v7, OS_LOG_TYPE_DEFAULT, "#StockUpdater Invalid exchange dictionary %@", buf, 0xCu);
    }
  }
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_23(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v5 forKeyedSubscript:v6];
  }
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_25()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = YQLRegionKey_block_invoke_dateFormatter;
  YQLRegionKey_block_invoke_dateFormatter = v0;

  [YQLRegionKey_block_invoke_dateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v2 = YQLRegionKey_block_invoke_dateFormatter;
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  v4 = YQLRegionKey_block_invoke_dateFormatter;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];
}

+ (void)parseStockQuoteDictionaries:(id)a3 withDataSources:(id)a4 parsedStockResult:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v33 = a4;
  v34 = a5;
  v8 = +[YQLConstants YQLQuoteToStocksKeyMap];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v44;
    v32 = @"dataSource";
    v35 = *v44;
    do
    {
      v12 = 0;
      v36 = v10;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v43 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [MEMORY[0x277CBEB38] dictionary];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v15 = v13;
          v16 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          v17 = v15;
          if (!v16)
          {
            goto LABEL_23;
          }

          v18 = v16;
          v38 = v12;
          v19 = *v40;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v40 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v39 + 1) + 8 * i);
              v23 = [v8 objectForKeyedSubscript:{v22, v32}];

              if (v23)
              {
                v24 = [v15 objectForKeyedSubscript:v22];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if ([v22 isEqualToString:@"price"])
                  {
                    v25 = [v24 objectForKey:@"data_source"];
                    v20 = [v25 integerValue];
                  }

                  v26 = [v24 objectForKey:@"raw"];

                  v24 = v26;
                }

                v27 = [v8 objectForKeyedSubscript:v22];
                [v14 setObject:v24 forKey:v27];
              }
            }

            v18 = [v15 countByEnumeratingWithState:&v39 objects:v47 count:16];
          }

          while (v18);

          v11 = v35;
          v10 = v36;
          v12 = v38;
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [MEMORY[0x277CCABB0] numberWithInteger:v20];
            v17 = [v33 objectForKeyedSubscript:v28];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v14 setObject:v17 forKey:v32];
            }

LABEL_23:
          }

          v29 = [v15 objectForKeyedSubscript:{@"id_symbol", v32}];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v31 = [v15 objectForKeyedSubscript:@"id_symbol"];
            v34[2](v34, v31, v14);
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v10);
  }
}

+ (void)parseData:(uint64_t)a1 resultsHandler:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[YahooResponseParser parseData:resultsHandler:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "*** [%s] Caught exception: %@", &v2, 0x16u);
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_26BAAD000, log, OS_LOG_TYPE_ERROR, "#StockUpdater Unknown or missing market status %@ for #exchange %@", &v3, 0x16u);
}

void __70__YahooResponseParser_parseExchangeDictionaries_parsedExchangeResult___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "#StockUpdater Received exchange with missing ID! This is bad. Exchange dictionary: %@", &v2, 0xCu);
}

@end