@interface SCWPreferences
+ (id)sharedPreferences;
+ (void)clearSharedPreferences;
- (NSString)acceptLanguageCode;
- (NSString)requestCountryCode;
- (NSString)requestLanguageCode;
- (SCWPreferences)init;
- (id)_stocksAcceptLanguage;
- (id)_stocksUserAgent;
- (id)signedRequestForURL:(id)l parameters:(id)parameters;
- (id)stocksCountryCode;
- (id)stocksLanguageCode;
- (id)stocksLanguageCodeForLanguage:(id)language;
- (id)stocksYQLBaseURL;
- (void)resetLocale;
- (void)setAcceptLanguageCode:(id)code;
- (void)setRequestCountryCode:(id)code;
- (void)setRequestLanguageCode:(id)code;
@end

@implementation SCWPreferences

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

- (SCWPreferences)init
{
  v15.receiver = self;
  v15.super_class = SCWPreferences;
  v2 = [(SCWPreferences *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.stocks.plist"];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3];
    v5 = +[SCWSharedPreferences sharedPreferences];
    v6 = [v5 objectForKey:@"UUID"];
    UUID = v2->_UUID;
    v2->_UUID = v6;

    if (!v2->_UUID)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v10 = v2->_UUID;
      v2->_UUID = uUIDString;

      v11 = +[SCWSharedPreferences sharedPreferences];
      [v11 setObject:v2->_UUID forKey:@"UUID"];
      date = [MEMORY[0x1E695DF00] date];
      [v11 setObject:date forKey:@"UUIDTimestamp"];

      [v11 synchronize];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_resetLocale name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v2;
}

- (id)stocksLanguageCode
{
  requestLanguageCode = [(SCWPreferences *)self requestLanguageCode];
  v4 = requestLanguageCode;
  if (requestLanguageCode)
  {
    v5 = requestLanguageCode;
  }

  else
  {
    v6 = MEMORY[0x1E695DF58];
    systemLanguages = [MEMORY[0x1E695DF58] systemLanguages];
    v8 = [v6 mostPreferredLanguageOf:systemLanguages forUsage:1 options:0];

    if (![v8 length])
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      languageCode = [currentLocale languageCode];

      v8 = languageCode;
    }

    v5 = [(SCWPreferences *)self stocksLanguageCodeForLanguage:v8];
  }

  return v5;
}

- (NSString)requestLanguageCode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_requestLanguageCode;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)stocksCountryCode
{
  requestCountryCode = [(SCWPreferences *)self requestCountryCode];

  if (!requestCountryCode)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v5 = [currentLocale objectForKey:*MEMORY[0x1E695D978]];

    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = DefaultStocksCountryCode;
    }

    [(SCWPreferences *)self setRequestCountryCode:v6];
  }

  return [(SCWPreferences *)self requestCountryCode];
}

- (NSString)requestCountryCode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_requestCountryCode;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (void)clearSharedPreferences
{
  os_unfair_lock_lock(&_accessLock);
  v2 = _instance;
  _instance = 0;

  os_unfair_lock_unlock(&_accessLock);
}

- (void)setRequestCountryCode:(id)code
{
  codeCopy = code;
  obj = self;
  objc_sync_enter(obj);
  requestCountryCode = obj->_requestCountryCode;
  obj->_requestCountryCode = codeCopy;

  objc_sync_exit(obj);
}

- (void)setRequestLanguageCode:(id)code
{
  codeCopy = code;
  obj = self;
  objc_sync_enter(obj);
  requestLanguageCode = obj->_requestLanguageCode;
  obj->_requestLanguageCode = codeCopy;

  objc_sync_exit(obj);
}

- (NSString)acceptLanguageCode
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_acceptLanguageCode;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAcceptLanguageCode:(id)code
{
  codeCopy = code;
  obj = self;
  objc_sync_enter(obj);
  acceptLanguageCode = obj->_acceptLanguageCode;
  obj->_acceptLanguageCode = codeCopy;

  objc_sync_exit(obj);
}

- (void)resetLocale
{
  [(SCWPreferences *)self setRequestCountryCode:0];
  [(SCWPreferences *)self setRequestLanguageCode:0];

  [(SCWPreferences *)self setAcceptLanguageCode:0];
}

- (id)stocksLanguageCodeForLanguage:(id)language
{
  languageCopy = language;
  requestLanguageCode = [(SCWPreferences *)self requestLanguageCode];

  if (!requestLanguageCode)
  {
    [(SCWPreferences *)self setRequestLanguageCode:languageCopy];
  }

  requestLanguageCode2 = [(SCWPreferences *)self requestLanguageCode];

  return requestLanguageCode2;
}

- (id)_stocksAcceptLanguage
{
  acceptLanguageCode = [(SCWPreferences *)self acceptLanguageCode];

  if (!acceptLanguageCode)
  {
    preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
    v5 = [preferredLanguages objectAtIndex:0];
    if ([v5 length])
    {
      v6 = [v5 stringByAppendingString:{@", *"}];
      [(SCWPreferences *)self setAcceptLanguageCode:v6];
    }

    else
    {
      [(SCWPreferences *)self setAcceptLanguageCode:@"en, *"];
    }
  }

  return [(SCWPreferences *)self acceptLanguageCode];
}

- (id)_stocksUserAgent
{
  if (_stocksUserAgent_onceToken != -1)
  {
    [SCWPreferences _stocksUserAgent];
  }

  v3 = _stocksUserAgent_stocksUserAgent;

  return v3;
}

void __34__SCWPreferences__stocksUserAgent__block_invoke()
{
  v0 = MEMORY[0x1E696AEC0];
  v6 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v6 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  v4 = [v0 stringWithFormat:@"AppleStocks/%@ Version/%@", v1, v3];
  v5 = _stocksUserAgent_stocksUserAgent;
  _stocksUserAgent_stocksUserAgent = v4;
}

- (id)stocksYQLBaseURL
{
  v2 = MGGetBoolAnswer();
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.stocks.plist"];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v3];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:0];
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

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

- (id)signedRequestForURL:(id)l parameters:(id)parameters
{
  lCopy = l;
  parametersCopy = parameters;
  v8 = MEMORY[0x1E696AEC0];
  absoluteString = [lCopy absoluteString];
  v10 = ParameterString(parametersCopy);
  v11 = [v8 stringWithFormat:@"%@?%@", absoluteString, v10];

  v12 = MEMORY[0x1E696AD68];
  v13 = [MEMORY[0x1E695DFF8] URLWithString:v11];
  v14 = [v12 requestWithURL:v13];

  [v14 setHTTPMethod:@"GET"];
  [v14 setHTTPShouldHandleCookies:0];
  uUID = [(SCWPreferences *)self UUID];
  [v14 setValue:uUID forHTTPHeaderField:@"X-Client-UUID"];

  v16 = ClientInfo();
  v17 = DeviceInfo();
  if (![v16 length] || !objc_msgSend(v17, "length"))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [SCWPreferences signedRequestForURL:parameters:];
    }

    __assert_rtn("[SCWPreferences signedRequestForURL:parameters:]", "SCWPreferences.m", 328, "0");
  }

  [v14 setValue:v16 forHTTPHeaderField:@"X-Client-Info"];
  [v14 setValue:v17 forHTTPHeaderField:@"X-Device-Info"];
  _stocksUserAgent = [(SCWPreferences *)self _stocksUserAgent];
  [v14 setValue:_stocksUserAgent forHTTPHeaderField:@"User-Agent"];

  v19 = CreateCredential();
  v20 = [objc_alloc(MEMORY[0x1E69B7B68]) initWithCredential:v19];
  v21 = [v20 signedURLRequestWithRequest:v14];

  return v21;
}

@end