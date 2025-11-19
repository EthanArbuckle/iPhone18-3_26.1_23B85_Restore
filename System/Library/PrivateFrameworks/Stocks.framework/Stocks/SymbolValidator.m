@interface SymbolValidator
- (SymbolValidator)initWithDelegate:(id)a3;
- (id)delegate;
- (void)didParseData;
- (void)failWithError:(id)a3;
- (void)parseData:(id)a3;
- (void)validateSymbol:(id)a3 withMaxResults:(int)a4;
@end

@implementation SymbolValidator

- (SymbolValidator)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SymbolValidator;
  v5 = [(YQLRequest *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)validateSymbol:(id)a3 withMaxResults:(int)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[NetPreferences sharedPreferences];
  v7 = [v6 isNetworkReachable];

  if (v7)
  {
    if (!v5)
    {
      return;
    }

    v8 = [(__CFString *)v5 mutableCopy];

    CFStringTransform(v8, 0, *MEMORY[0x277CBF108], 0);
    v9 = +[NetPreferences sharedPreferences];
    v10 = [(YQLRequest *)self YQLLanguageCode];
    v11 = [(YQLRequest *)self YQLCountryCode];
    v22[0] = @"format";
    v22[1] = @"ticker";
    v23[0] = @"json";
    v23[1] = v8;
    v22[2] = @"lang";
    v22[3] = @"region";
    v23[2] = v10;
    v23[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
    v13 = [v9 stocksYQLBaseURL];
    v14 = [v13 URLByAppendingPathComponent:@"/applewf/autocomplete"];

    v15 = [v9 signedRequestForURL:v14 parameters:v12];
    if ([v9 serviceDebugging])
    {
      v16 = [v15 URL];
      [v16 absoluteString];
      v21 = v11;
      v18 = v17 = v10;
      [YQLRequest appendDebugString:v18];

      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v12];
      v10 = v17;
      v11 = v21;
      [YQLRequest appendDebugString:v19];
    }

    [(YQLRequest *)self loadRequest:v15];

    v5 = v8;
  }

  else
  {
    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.stocks" code:3 userInfo:0];
    [(SymbolValidator *)self failWithError:v20];
  }
}

- (void)parseData:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  symbols = self->_symbols;
  v21 = self;
  self->_symbols = 0;

  v30 = 0;
  v23 = v4;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v30];
  v7 = v30;
  v22 = v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8 || (objc_opt_respondsToSelector() & 1) == 0)
  {
    [(YQLRequest *)v21 failToParseWithData:v23];
  }

  else
  {
    v20 = [YahooResponseParser arrayWithDictionaryKeyPath:&unk_287C81798 inJSONObject:v6 wrapResultIfDictionary:1];
    if (v20)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = v20;
      v9 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v9)
      {
        v10 = *v27;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v26 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 yql_objectForKey:@"name" ofClass:objc_opt_class()];
              v14 = [v12 yql_objectForKey:@"symbol" ofClass:objc_opt_class()];
              v15 = v14;
              if (v13 && v14)
              {
                v33[0] = @"companyName";
                v33[1] = @"symbol";
                v34[0] = v13;
                v34[1] = v14;
                v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
                v17 = [v16 mutableCopy];

                v18 = [v12 yql_objectForKey:@"exchange" ofClass:objc_opt_class()];
                if (v18)
                {
                  [v17 setObject:v18 forKeyedSubscript:@"exchange"];
                }

                [(NSArray *)v24 addObject:v17, v20];
              }
            }

            else
            {
              v13 = StocksLogForCategory(0);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v32 = v12;
                _os_log_impl(&dword_26BAAD000, v13, OS_LOG_TYPE_DEFAULT, "#SymbolValidator Skipping validator result %@", buf, 0xCu);
              }
            }
          }

          v9 = [obj countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v9);
      }

      v19 = v21->_symbols;
      v21->_symbols = v24;

      [(SymbolValidator *)v21 didParseData];
    }

    else
    {
      [(YQLRequest *)v21 failToParseWithData:v23, 0];
    }
  }
}

- (void)didParseData
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained symbolValidator:self didValidateSymbols:self->_symbols];
}

- (void)failWithError:(id)a3
{
  v6.receiver = self;
  v6.super_class = SymbolValidator;
  v4 = a3;
  [(YQLRequest *)&v6 failWithError:v4];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained symbolValidator:self didFailWithError:{v4, v6.receiver, v6.super_class}];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)parseData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[SymbolValidator parseData:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_26BAAD000, a2, OS_LOG_TYPE_ERROR, "*** [%s] Caught exception: %@", &v2, 0x16u);
}

@end