@interface NetPreferences
+ (id)sharedPreferences;
+ (void)clearSharedPreferences;
- (BOOL)isNetworkReachable;
- (NSString)acceptLanguageCode;
- (NSString)requestCountryCode;
- (NSString)requestLanguageCode;
- (NetPreferences)init;
- (id)_cacheDirectoryPath;
- (id)_stocksAcceptLanguage;
- (id)_stocksUserAgent;
- (id)_urlStringWithHost:(id)a3;
- (id)backsideLogoURL;
- (id)defaultBacksideLogoURL;
- (id)financeRequestAttributes;
- (id)fullQuoteURLOverrideForStock:(id)a3;
- (id)logoBacksideImage;
- (id)logoButtonImage;
- (id)serviceDebuggingPath;
- (id)signedRequestForURL:(id)a3 parameters:(id)a4;
- (id)stocksCountryCode;
- (id)stocksLanguageCode;
- (id)stocksLanguageCodeForLanguage:(id)a3;
- (id)stocksYQLBaseURL;
- (void)addStocksHeadersToPostRequest:(id)a3;
- (void)resetLocale;
- (void)setAcceptLanguageCode:(id)a3;
- (void)setNetworkReachable:(BOOL)a3;
- (void)setRequestCountryCode:(id)a3;
- (void)setRequestLanguageCode:(id)a3;
@end

@implementation NetPreferences

+ (id)sharedPreferences
{
  os_unfair_lock_lock(&_accessLock);
  if (!_instance)
  {
    v2 = objc_alloc_init(objc_opt_class());
    v3 = _instance;
    _instance = v2;
  }

  os_unfair_lock_unlock(&_accessLock);
  v4 = _instance;

  return v4;
}

+ (void)clearSharedPreferences
{
  os_unfair_lock_lock(&_accessLock);
  v2 = _instance;
  _instance = 0;

  os_unfair_lock_unlock(&_accessLock);
}

- (NetPreferences)init
{
  v22.receiver = self;
  v22.super_class = NetPreferences;
  v2 = [(NetPreferences *)&v22 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.stocks.plist"];
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
    if (v4)
    {
      v6 = [v4 objectForKey:@"ServiceDebugging"];

      v5 = v6;
    }

    v2->_serviceDebugging = [v5 BOOLValue];
    v7 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
    v8 = [v7 objectForKey:@"ProductVersion"];
    productVersion = v2->_productVersion;
    v2->_productVersion = v8;

    v10 = [v7 objectForKey:@"ProductBuildVersion"];
    buildVersion = v2->_buildVersion;
    v2->_buildVersion = v10;

    v12 = +[StocksPreferences sharedPreferences];
    v13 = [v12 objectForKey:@"UUID"];
    UUID = v2->_UUID;
    v2->_UUID = v13;

    if (!v2->_UUID)
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v15 UUIDString];
      v17 = v2->_UUID;
      v2->_UUID = v16;

      v18 = +[StocksPreferences sharedPreferences];
      [v18 setObject:v2->_UUID forKey:@"UUID"];
      v19 = [MEMORY[0x277CBEAA8] date];
      [v18 setObject:v19 forKey:@"UUIDTimestamp"];

      [v18 synchronize];
    }

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 addObserver:v2 selector:sel_resetLocale name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (NSString)requestCountryCode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_requestCountryCode;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRequestCountryCode:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  requestCountryCode = obj->_requestCountryCode;
  obj->_requestCountryCode = v4;

  objc_sync_exit(obj);
}

- (NSString)requestLanguageCode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_requestLanguageCode;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRequestLanguageCode:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  requestLanguageCode = obj->_requestLanguageCode;
  obj->_requestLanguageCode = v4;

  objc_sync_exit(obj);
}

- (NSString)acceptLanguageCode
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_acceptLanguageCode;
  objc_sync_exit(v2);

  return v3;
}

- (void)setAcceptLanguageCode:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  acceptLanguageCode = obj->_acceptLanguageCode;
  obj->_acceptLanguageCode = v4;

  objc_sync_exit(obj);
}

- (void)resetLocale
{
  [(NetPreferences *)self setRequestCountryCode:0];
  [(NetPreferences *)self setRequestLanguageCode:0];

  [(NetPreferences *)self setAcceptLanguageCode:0];
}

- (BOOL)isNetworkReachable
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = StocksLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isNetworkReachable)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
    if ([v5 isNetworkReachable])
    {
      v6 = "YES";
    }

    else
    {
      v6 = "NO";
    }

    v10 = 136315394;
    v11 = v4;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&dword_26BAAD000, v3, OS_LOG_TYPE_DEFAULT, "#NetPreferences isNetworkReachable (host reachable: %s) (any reachable: %s)", &v10, 0x16u);
  }

  if (self->_isNetworkReachable)
  {
    return 1;
  }

  v8 = [MEMORY[0x277CEC5B8] sharedNetworkObserver];
  v7 = [v8 isNetworkReachable];

  return v7;
}

- (void)setNetworkReachable:(BOOL)a3
{
  v3 = a3;
  v8 = *MEMORY[0x277D85DE8];
  self->_isNetworkReachable = a3;
  v4 = StocksLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "NO";
    if (v3)
    {
      v5 = "YES";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_26BAAD000, v4, OS_LOG_TYPE_DEFAULT, "#NetPreferences setNetworkReachable: %s", &v6, 0xCu);
  }
}

- (id)_stocksUserAgent
{
  if (_stocksUserAgent_onceToken != -1)
  {
    [NetPreferences _stocksUserAgent];
  }

  v3 = _stocksUserAgent_stocksUserAgent;

  return v3;
}

void __34__NetPreferences__stocksUserAgent__block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v6 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v4 = [v0 stringWithFormat:@"AppleStocks/%@ Version/%@", v1, v3];
  v5 = _stocksUserAgent_stocksUserAgent;
  _stocksUserAgent_stocksUserAgent = v4;
}

- (id)stocksCountryCode
{
  v3 = [(NetPreferences *)self requestCountryCode];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = DefaultStocksCountryCode;
    }

    [(NetPreferences *)self setRequestCountryCode:v6];
  }

  return [(NetPreferences *)self requestCountryCode];
}

- (id)stocksLanguageCode
{
  v3 = [(NetPreferences *)self requestLanguageCode];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = MEMORY[0x277CBEAF8];
    v7 = [MEMORY[0x277CBEAF8] systemLanguages];
    v8 = [v6 mostPreferredLanguageOf:v7 forUsage:1 options:0];

    if (![v8 length])
    {
      v9 = [MEMORY[0x277CBEAF8] currentLocale];
      v10 = [v9 languageCode];

      v8 = v10;
    }

    v5 = [(NetPreferences *)self stocksLanguageCodeForLanguage:v8];
  }

  return v5;
}

- (id)stocksLanguageCodeForLanguage:(id)a3
{
  v4 = a3;
  v5 = [(NetPreferences *)self requestLanguageCode];

  if (!v5)
  {
    [(NetPreferences *)self setRequestLanguageCode:v4];
  }

  v6 = [(NetPreferences *)self requestLanguageCode];

  return v6;
}

- (id)_stocksAcceptLanguage
{
  v3 = [(NetPreferences *)self acceptLanguageCode];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v5 = [v4 objectAtIndex:0];
    if ([v5 length])
    {
      v6 = [v5 stringByAppendingString:{@", *"}];
      [(NetPreferences *)self setAcceptLanguageCode:v6];
    }

    else
    {
      [(NetPreferences *)self setAcceptLanguageCode:@"en, *"];
    }
  }

  return [(NetPreferences *)self acceptLanguageCode];
}

- (void)addStocksHeadersToPostRequest:(id)a3
{
  v7 = a3;
  [v7 setHTTPMethod:@"POST"];
  [v7 setValue:@"text/xml" forHTTPHeaderField:@"Content-Type"];
  v4 = [(NetPreferences *)self _stocksUserAgent];
  [v7 setValue:v4 forHTTPHeaderField:@"User-Agent"];

  v5 = [(NetPreferences *)self stocksCountryCode];
  [v7 setValue:v5 forHTTPHeaderField:@"X-Country-Code"];

  v6 = [(NetPreferences *)self _stocksAcceptLanguage];
  [v7 setValue:v6 forHTTPHeaderField:@"Accept-Language"];

  [v7 setHTTPShouldHandleCookies:0];
}

- (id)financeRequestAttributes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NetPreferences_financeRequestAttributes__block_invoke;
  block[3] = &unk_279D15BF0;
  block[4] = self;
  if (financeRequestAttributes_onceToken != -1)
  {
    dispatch_once(&financeRequestAttributes_onceToken, block);
  }

  return financeRequestAttributes_RequestAttr;
}

void __42__NetPreferences_financeRequestAttributes__block_invoke(uint64_t a1)
{
  v4 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "length") + 2 * objc_msgSend(*(*(a1 + 32) + 16), "length") + 155}];
  [v4 appendString:@"devtype=Apple iPhone v"];
  [v4 appendString:*(*(a1 + 32) + 16)];
  [v4 appendString:@" deployver=Apple iPhone v"];
  [v4 appendString:*(*(a1 + 32) + 16)];
  [v4 appendString:@" app=YGoiPhoneClient appver=1.0.1."];
  [v4 appendString:*(*(a1 + 32) + 8)];
  [v4 appendString:@" api=finance apiver=1.0.1 acknotification=0000"];
  v2 = [v4 copy];
  v3 = financeRequestAttributes_RequestAttr;
  financeRequestAttributes_RequestAttr = v2;
}

- (id)_urlStringWithHost:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
  v6 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [(NetPreferences *)self UUID];
  v11 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:v11];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [(NetPreferences *)self UUID];
  }

  v15 = v14;

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"http://%@/dgw?imei=%@&apptype=finance", v9, v15];

  return v16;
}

- (id)fullQuoteURLOverrideForStock:(id)a3
{
  v3 = a3;
  v4 = +[StocksPreferences sharedPreferences];
  v5 = [v4 objectForKey:@"FullQuoteURLOverridePrefix"];

  v6 = +[StocksPreferences sharedPreferences];
  v7 = [v6 objectForKey:@"FullQuoteURLOverrideSuffix"];

  if ([v5 length])
  {
    v8 = [v3 symbol];
    v9 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(v8, "length") + objc_msgSend(v5, "length") + objc_msgSend(v7, "length")}];
    [v9 setString:v5];
    [v9 appendString:v8];
    if ([v7 length])
    {
      [v9 appendString:v7];
    }

    v10 = [MEMORY[0x277CBEBC0] stocks_sanitizedURLFromString:v9];
    if (!v10)
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)defaultBacksideLogoURL
{
  v2 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE6C0]];
  v4 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

  v6 = [@"http://m.yahoo.com/apple/finance?pintl=" stringByAppendingString:v5];
  v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];

  return v7;
}

- (id)backsideLogoURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = +[StocksPreferences sharedPreferences];
  v4 = [v3 objectForKey:@"LogoURL"];
  v5 = [v2 stocks_sanitizedURLFromString:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEAF8] currentLocale];
    v7 = [v6 objectForKey:*MEMORY[0x277CBE6C0]];
    v8 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
    v9 = [v7 stringByAddingPercentEncodingWithAllowedCharacters:v8];

    v10 = MEMORY[0x277CBEBC0];
    v11 = [@"http://m.yahoo.com/apple/finance?pintl=" stringByAppendingString:v9];
    v5 = [v10 URLWithString:v11];
  }

  return v5;
}

- (id)_cacheDirectoryPath
{
  if (_cacheDirectoryPath_onceToken != -1)
  {
    [NetPreferences _cacheDirectoryPath];
  }

  v3 = _cacheDirectoryPath_CacheDirectoryPath;

  return v3;
}

void __37__NetPreferences__cacheDirectoryPath__block_invoke()
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v0 = [v3 userLibraryDirectory];
  v1 = [v0 stringByAppendingPathComponent:@"Caches/Stocks"];
  v2 = _cacheDirectoryPath_CacheDirectoryPath;
  _cacheDirectoryPath_CacheDirectoryPath = v1;
}

- (id)logoButtonImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [StocksBundles getBundle:1];
  v4 = [v2 imageNamed:@"yahooAttributionLogo" inBundle:v3];

  return v4;
}

- (id)logoBacksideImage
{
  v2 = MEMORY[0x277D755B8];
  v3 = [StocksBundles getBundle:1];
  v4 = [v2 imageNamed:@"YahooLogo" inBundle:v3];

  return v4;
}

- (id)serviceDebuggingPath
{
  if (serviceDebuggingPath_onceToken != -1)
  {
    [NetPreferences serviceDebuggingPath];
  }

  v3 = serviceDebuggingPath_DebuggingPath;

  return v3;
}

void __38__NetPreferences_serviceDebuggingPath__block_invoke()
{
  v0 = [*MEMORY[0x277D76620] userLibraryDirectory];
  v6 = [v0 stringByAppendingPathComponent:@"Stocks"];

  v1 = [MEMORY[0x277CCAA00] defaultManager];
  [v1 _web_createDirectoryAtPathWithIntermediateDirectories:v6 attributes:0];

  v2 = [v6 stringByAppendingPathComponent:@"ServiceDebugging"];
  v3 = [v2 stringByResolvingSymlinksInPath];
  v4 = [v3 copy];
  v5 = serviceDebuggingPath_DebuggingPath;
  serviceDebuggingPath_DebuggingPath = v4;
}

- (id)stocksYQLBaseURL
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.stocks.plist"];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:0];
  if (v4)
  {
    v6 = [v4 objectForKey:@"staging"];

    v5 = v6;
  }

  if (v2 && ([v5 BOOLValue] & 1) != 0)
  {
    v7 = @"https://staging-apple-finance.query.yahoo.com/v1/yql";
  }

  else
  {
    v7 = @"https://apple-finance.query.yahoo.com/v1/yql";
  }

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v8;
}

- (id)signedRequestForURL:(id)a3 parameters:(id)a4
{
  v6 = MEMORY[0x277CCACA8];
  v7 = a4;
  v8 = [a3 absoluteString];
  v9 = ParameterString(v7);

  v10 = [v6 stringWithFormat:@"%@?%@", v8, v9];

  v11 = MEMORY[0x277CBAB50];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:v10];
  v13 = [v11 requestWithURL:v12];

  [v13 setHTTPMethod:@"GET"];
  [v13 setHTTPShouldHandleCookies:0];
  v14 = [(NetPreferences *)self UUID];
  [v13 setValue:v14 forHTTPHeaderField:@"X-Client-UUID"];

  v15 = ClientInfo();
  v16 = DeviceInfo();
  if ((![v15 length] || !objc_msgSend(v16, "length")) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NetPreferences signedRequestForURL:parameters:];
  }

  [v13 setValue:v15 forHTTPHeaderField:@"X-Client-Info"];
  [v13 setValue:v16 forHTTPHeaderField:@"X-Device-Info"];
  v17 = [(NetPreferences *)self _stocksUserAgent];
  [v13 setValue:v17 forHTTPHeaderField:@"User-Agent"];

  v18 = CreateCredential();
  v19 = [objc_alloc(MEMORY[0x277D36A38]) initWithCredential:v18];
  v20 = [v19 signedURLRequestWithRequest:v13];

  return v20;
}

@end