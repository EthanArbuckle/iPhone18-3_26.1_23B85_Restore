@interface SCWWatchlistDefaults
+ (SCWWatchlistDefaults)defaultsWithDefaultSymbols:(id)a3;
+ (id)_iOS10DefaultsForCurrentCountry;
+ (id)_iOS7DefaultsForCurrentCountry;
+ (id)defaultsForCurrentCountry;
+ (id)defaultsHistoryForCurrentCountry;
+ (id)emptyDefaults;
- (SCWWatchlistDefaults)initWithDefaultSymbols:(id)a3;
- (id)defaultsByAppendingDefaults:(id)a3;
@end

@implementation SCWWatchlistDefaults

- (SCWWatchlistDefaults)initWithDefaultSymbols:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SCWWatchlistDefaults;
  v5 = [(SCWWatchlistDefaults *)&v9 init];
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
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x1E695D978]];

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
    v15 = 138543618;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_1DAA3F000, v9, OS_LOG_TYPE_DEFAULT, "for country code=%{public}@, found default symbols: %{public}@", &v15, 0x16u);
  }

  v10 = objc_alloc(objc_opt_class());
  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F0];
  }

  v12 = [v10 initWithDefaultSymbols:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (SCWWatchlistDefaults)defaultsWithDefaultSymbols:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDefaultSymbols:v3];

  return v4;
}

+ (id)emptyDefaults
{
  v2 = [objc_alloc(objc_opt_class()) initWithDefaultSymbols:MEMORY[0x1E695E0F0]];

  return v2;
}

+ (id)defaultsHistoryForCurrentCountry
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [a1 defaultsForCurrentCountry];
  v5 = [a1 _iOS10DefaultsForCurrentCountry];
  v6 = [a1 _iOS7DefaultsForCurrentCountry];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18[0] = v4;
  v18[1] = v5;
  v18[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{3, 0}];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v3 addObject:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)defaultsByAppendingDefaults:(id)a3
{
  v4 = MEMORY[0x1E695DFA0];
  v5 = a3;
  v6 = [v4 orderedSet];
  v7 = [(SCWWatchlistDefaults *)self defaultSymbols];
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
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x1E695D978]];

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
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [v4 objectForKey:*MEMORY[0x1E695D978]];

  if (v5)
  {
    v6 = [a1 _legacyDefaultSymbolsByCountryCode];
    v7 = [v6 objectForKeyedSubscript:v5];

    if ([v5 isEqualToString:@"US"])
    {

      v7 = &unk_1F56A8FA0;
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

@end