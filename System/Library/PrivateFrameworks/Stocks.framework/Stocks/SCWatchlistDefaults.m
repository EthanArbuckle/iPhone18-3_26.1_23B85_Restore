@interface SCWatchlistDefaults
+ (id)_iOS10DefaultsForCurrentCountry;
+ (id)_iOS7DefaultsForCurrentCountry;
+ (id)defaultsForCurrentCountry;
+ (id)defaultsFromCarrierBundle;
+ (id)defaultsHistoryForCurrentCountry;
+ (id)defaultsWithDefaultSymbols:(id)a3;
+ (id)emptyDefaults;
+ (void)defaultsFromCarrierBundle;
- (SCWatchlistDefaults)initWithDefaultSymbols:(id)a3;
- (id)defaultsByAppendingDefaults:(id)a3;
@end

@implementation SCWatchlistDefaults

- (SCWatchlistDefaults)initWithDefaultSymbols:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWatchlistDefaults;
  v5 = [(SCWatchlistDefaults *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    defaultSymbols = v5->_defaultSymbols;
    v5->_defaultSymbols = v6;
  }

  return v5;
}

+ (id)defaultsForCurrentCountry
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE690]];

  if (v4)
  {
    v5 = [a1 _defaultSymbolsByCountryCode];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 count])
  {
    v7 = [a1 _defaultSymbolsByCountryCode];
    v8 = [v7 objectForKeyedSubscript:@"US"];

    v6 = v8;
  }

  v9 = StocksLogForCategory(4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543618;
    v15 = v4;
    v16 = 2114;
    v17 = v6;
    _os_log_impl(&dword_26BAAD000, v9, OS_LOG_TYPE_DEFAULT, "for country code=%{public}@, found default symbols: %{public}@", &v14, 0x16u);
  }

  v10 = objc_alloc(objc_opt_class());
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [v10 initWithDefaultSymbols:v11];

  return v12;
}

+ (id)defaultsFromCarrierBundle
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB40] orderedSet];
  v3 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v41 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
  v53 = 0;
  v4 = [v3 getSubscriptionInfoWithError:&v53];
  v5 = v53;
  if (v5)
  {
    v6 = StocksLogForCategory(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[(SCWatchlistDefaults *)v5];
    }
  }

  v35 = v4;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v4 subscriptions];
  v42 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v42)
  {
    v7 = *v50;
    v8 = @"StockSymboli";
    v36 = *v50;
    v37 = v3;
    do
    {
      v9 = 0;
      do
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v49 + 1) + 8 * v9);
        v48 = 0;
        v11 = [v3 copyCarrierBundleValue:v10 key:v8 bundleType:v41 error:&v48];
        v43 = v48;
        if (v43)
        {
          v12 = StocksLogForCategory(4);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v56 = v43;
            _os_log_error_impl(&dword_26BAAD000, v12, OS_LOG_TYPE_ERROR, "failed to get carrier stocks with error: %{public}@", buf, 0xCu);
          }
        }

        v13 = StocksLogForCategory(4);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v9;
          v14 = v8;
          v15 = v7;
          v16 = v3;
          v17 = v11;
          v18 = [v10 slotID];
          v19 = [v10 uuid];
          *buf = 134218498;
          v56 = v18;
          v11 = v17;
          v3 = v16;
          v7 = v15;
          v8 = v14;
          v9 = v39;
          v57 = 2114;
          v58 = v19;
          v59 = 2114;
          v60 = v11;
          _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "for SIM slot=%ld, id=%{public}@, found stock symbols: %{public}@", buf, 0x20u);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v40 = v11;
          v20 = v11;
          v21 = [v20 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v45;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v45 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v44 + 1) + 8 * i);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = [v25 objectForKey:@"symbol"];
                  if ([v26 length])
                  {
                    v27 = [v26 uppercaseString];
                    [v2 addObject:v27];
                  }
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v22);
          }

          v7 = v36;
          v3 = v37;
          v8 = @"StockSymboli";
          v11 = v40;
        }

        ++v9;
      }

      while (v9 != v42);
      v42 = [obj countByEnumeratingWithState:&v49 objects:v61 count:16];
    }

    while (v42);
  }

  v28 = StocksLogForCategory(4);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [v2 count];
    v30 = [v2 array];
    *buf = 134218242;
    v56 = v29;
    v57 = 2114;
    v58 = v30;
    _os_log_impl(&dword_26BAAD000, v28, OS_LOG_TYPE_DEFAULT, "found %lu carrier symbols: %{public}@", buf, 0x16u);
  }

  v31 = objc_alloc(objc_opt_class());
  v32 = [v2 array];
  v33 = [v31 initWithDefaultSymbols:v32];

  return v33;
}

+ (id)defaultsWithDefaultSymbols:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDefaultSymbols:v3];

  return v4;
}

+ (id)emptyDefaults
{
  v2 = [objc_alloc(objc_opt_class()) initWithDefaultSymbols:MEMORY[0x277CBEBF8]];

  return v2;
}

+ (id)defaultsHistoryForCurrentCountry
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [a1 defaultsForCurrentCountry];
  v5 = [a1 _iOS10DefaultsForCurrentCountry];
  v6 = [a1 _iOS7DefaultsForCurrentCountry];
  v7 = [a1 defaultsFromCarrierBundle];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20[0] = v4;
  v20[1] = v5;
  v20[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:{3, 0}];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [v3 addObject:v13];
        v14 = [v13 defaultsByAppendingDefaults:v7];
        [v3 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)defaultsByAppendingDefaults:(id)a3
{
  v4 = MEMORY[0x277CBEB40];
  v5 = a3;
  v6 = [v4 orderedSet];
  v7 = [(SCWatchlistDefaults *)self defaultSymbols];
  [v6 addObjectsFromArray:v7];

  v8 = [v5 defaultSymbols];

  [v6 addObjectsFromArray:v8];
  v9 = objc_alloc(objc_opt_class());
  v10 = [v6 array];
  v11 = [v9 initWithDefaultSymbols:v10];

  return v11;
}

+ (id)_iOS10DefaultsForCurrentCountry
{
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];

  if (v5)
  {
    v6 = [a1 _legacyDefaultSymbolsByCountryCode];
    v7 = [v6 objectForKeyedSubscript:v5];

    [v3 addObjectsFromArray:v7];
  }

  [v3 addObject:@"^DJI"];
  [v3 addObject:@"AAPL"];
  [v3 addObject:@"SBUX"];
  [v3 addObject:@"NKE"];
  [v3 addObject:@"YHOO"];
  v8 = objc_alloc(objc_opt_class());
  v9 = [v3 array];
  v10 = [v8 initWithDefaultSymbols:v9];

  return v10;
}

+ (id)_iOS7DefaultsForCurrentCountry
{
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v4 = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];

  if (v5)
  {
    v6 = [a1 _legacyDefaultSymbolsByCountryCode];
    v7 = [v6 objectForKeyedSubscript:v5];

    if ([v5 isEqualToString:@"US"])
    {

      v7 = &unk_287C81438;
    }

    [v3 addObjectsFromArray:v7];
  }

  [v3 addObject:@"AAPL"];
  [v3 addObject:@"GOOG"];
  [v3 addObject:@"YHOO"];
  [v3 addObject:@"^DJI"];
  [v3 addObject:@"^FTSE"];
  [v3 addObject:@"^GDAXI"];
  [v3 addObject:@"^HSI"];
  [v3 addObject:@"^N225"];
  v8 = objc_alloc(objc_opt_class());
  v9 = [v3 array];
  v10 = [v8 initWithDefaultSymbols:v9];

  return v10;
}

+ (void)defaultsFromCarrierBundle
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "failed to get subscription info for carrier stocks with error: %{public}@", &v2, 0xCu);
}

@end