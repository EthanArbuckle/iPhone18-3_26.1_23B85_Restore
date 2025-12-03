@interface SCWWatchlistDefaults
+ (SCWWatchlistDefaults)defaultsWithDefaultSymbols:(id)symbols;
+ (id)_iOS10DefaultsForCurrentCountry;
+ (id)_iOS7DefaultsForCurrentCountry;
+ (id)defaultsForCurrentCountry;
+ (id)defaultsHistoryForCurrentCountry;
+ (id)emptyDefaults;
- (SCWWatchlistDefaults)initWithDefaultSymbols:(id)symbols;
- (id)defaultsByAppendingDefaults:(id)defaults;
@end

@implementation SCWWatchlistDefaults

- (SCWWatchlistDefaults)initWithDefaultSymbols:(id)symbols
{
  symbolsCopy = symbols;
  v9.receiver = self;
  v9.super_class = SCWWatchlistDefaults;
  v5 = [(SCWWatchlistDefaults *)&v9 init];
  if (v5)
  {
    v6 = [symbolsCopy copy];
    defaultSymbols = v5->_defaultSymbols;
    v5->_defaultSymbols = v6;
  }

  return v5;
}

+ (id)defaultsForCurrentCountry
{
  v19 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

  if (v4)
  {
    _defaultSymbolsByCountryCode = [self _defaultSymbolsByCountryCode];
    v6 = [_defaultSymbolsByCountryCode objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  if (![v6 count])
  {
    _defaultSymbolsByCountryCode2 = [self _defaultSymbolsByCountryCode];
    v8 = [_defaultSymbolsByCountryCode2 objectForKeyedSubscript:@"US"];

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

+ (SCWWatchlistDefaults)defaultsWithDefaultSymbols:(id)symbols
{
  symbolsCopy = symbols;
  v4 = [objc_alloc(objc_opt_class()) initWithDefaultSymbols:symbolsCopy];

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
  array = [MEMORY[0x1E695DF70] array];
  defaultsForCurrentCountry = [self defaultsForCurrentCountry];
  _iOS10DefaultsForCurrentCountry = [self _iOS10DefaultsForCurrentCountry];
  _iOS7DefaultsForCurrentCountry = [self _iOS7DefaultsForCurrentCountry];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18[0] = defaultsForCurrentCountry;
  v18[1] = _iOS10DefaultsForCurrentCountry;
  v18[2] = _iOS7DefaultsForCurrentCountry;
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

        [array addObject:*(*(&v14 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)defaultsByAppendingDefaults:(id)defaults
{
  v4 = MEMORY[0x1E695DFA0];
  defaultsCopy = defaults;
  orderedSet = [v4 orderedSet];
  defaultSymbols = [(SCWWatchlistDefaults *)self defaultSymbols];
  [orderedSet addObjectsFromArray:defaultSymbols];

  defaultSymbols2 = [defaultsCopy defaultSymbols];

  [orderedSet addObjectsFromArray:defaultSymbols2];
  v9 = objc_alloc(objc_opt_class());
  array = [orderedSet array];
  v11 = [v9 initWithDefaultSymbols:array];

  return v11;
}

+ (id)_iOS10DefaultsForCurrentCountry
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

  if (v5)
  {
    _legacyDefaultSymbolsByCountryCode = [self _legacyDefaultSymbolsByCountryCode];
    v7 = [_legacyDefaultSymbolsByCountryCode objectForKeyedSubscript:v5];

    [orderedSet addObjectsFromArray:v7];
  }

  [orderedSet addObject:@"^DJI"];
  [orderedSet addObject:@"AAPL"];
  [orderedSet addObject:@"SBUX"];
  [orderedSet addObject:@"NKE"];
  [orderedSet addObject:@"YHOO"];
  v8 = objc_alloc(objc_opt_class());
  array = [orderedSet array];
  v10 = [v8 initWithDefaultSymbols:array];

  return v10;
}

+ (id)_iOS7DefaultsForCurrentCountry
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v5 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

  if (v5)
  {
    _legacyDefaultSymbolsByCountryCode = [self _legacyDefaultSymbolsByCountryCode];
    v7 = [_legacyDefaultSymbolsByCountryCode objectForKeyedSubscript:v5];

    if ([v5 isEqualToString:@"US"])
    {

      v7 = &unk_1F56A8FA0;
    }

    [orderedSet addObjectsFromArray:v7];
  }

  [orderedSet addObject:@"AAPL"];
  [orderedSet addObject:@"GOOG"];
  [orderedSet addObject:@"YHOO"];
  [orderedSet addObject:@"^DJI"];
  [orderedSet addObject:@"^FTSE"];
  [orderedSet addObject:@"^GDAXI"];
  [orderedSet addObject:@"^HSI"];
  [orderedSet addObject:@"^N225"];
  v8 = objc_alloc(objc_opt_class());
  array = [orderedSet array];
  v10 = [v8 initWithDefaultSymbols:array];

  return v10;
}

@end