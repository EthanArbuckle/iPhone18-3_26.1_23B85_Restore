id StocksAttributionString()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [MEMORY[0x277D755B8] imageNamed:@"yahooAttributionLogo" inBundle:v0];
  v2 = [v1 imageWithRenderingMode:2];

  v3 = [v0 localizedStringForKey:@"STOCKS_ATTRIBUTION" value:0 table:0];
  v4 = [v0 localizedStringForKey:@"STOCK" value:0 table:0];
  v5 = [v3 rangeOfString:v4 options:1];
  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v3];
  if (v7)
  {
    if (MKBDeviceUnlockedSinceBoot() || MKBGetDeviceLockState() == 3)
    {
      v9 = +[NetPreferences sharedPreferences];
      v10 = [v9 backsideLogoURL];

      if (!v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          StocksAttributionString_cold_2();
        }

        goto LABEL_11;
      }

      v11 = *MEMORY[0x277D740E8];
      v12 = +[NetPreferences sharedPreferences];
      v13 = [v12 backsideLogoURL];
    }

    else
    {
      v20 = +[NetPreferences sharedPreferences];
      v21 = [v20 defaultBacksideLogoURL];

      if (!v21)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          StocksAttributionString_cold_1();
        }

        goto LABEL_11;
      }

      v11 = *MEMORY[0x277D740E8];
      v12 = +[NetPreferences sharedPreferences];
      v13 = [v12 defaultBacksideLogoURL];
    }

    v14 = v13;
    [v8 addAttribute:v11 value:v13 range:{v5, v7}];

LABEL_11:
    [v8 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC38] range:{v5, v7}];
    goto LABEL_12;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    StocksAttributionString_cold_3(v4, v3);
  }

LABEL_12:
  v15 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  v16 = objc_opt_new();
  [v16 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  [v16 setImage:v2];
  v17 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v16];
  v18 = [v17 mutableCopy];

  [v18 addAttribute:*MEMORY[0x277D74078] value:&unk_287C80E50 range:{0, objc_msgSend(v18, "length")}];
  [v8 appendAttributedString:v15];
  [v8 appendAttributedString:v18];

  return v8;
}

void sub_26BAB5DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BAB6008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26BAB65AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id randomStringOfLength(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAB68] string];
  if (a1)
  {
    v5 = MEMORY[0x277D86220];
    do
    {
      if (a2)
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", (random() % 26 + 97)];
      }

      else
      {
        v8 = random() % 0x7FFF;
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v8 length:4 encoding:2617245952];
        if (!v6 && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v10 = v8;
          _os_log_impl(&dword_26BAAD000, v5, OS_LOG_TYPE_DEFAULT, "Got a bad character %#llX", buf, 0xCu);
        }
      }

      [v4 appendString:v6];

      --a1;
    }

    while (a1);
  }

  return v4;
}

void sub_26BABA288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *StocksLogForCategory(uint64_t a1)
{
  if (StocksLogForCategory_onceToken != -1)
  {
    StocksLogForCategory_cold_1();
  }

  v2 = StocksLogForCategory_loggingTypes;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  v7 = v6;

  return v6;
}

void __StocksLogForCategory_block_invoke()
{
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
  v0 = os_log_create("com.apple.stocks", "serviceLogging");
  [v7 na_safeSetObject:v0 forKey:&unk_287C80EC8];

  v1 = os_log_create("com.apple.stocks", "syncLogging");
  [v7 na_safeSetObject:v1 forKey:&unk_287C80EE0];

  v2 = os_log_create("com.apple.stocks", "duetLogging");
  [v7 na_safeSetObject:v2 forKey:&unk_287C80EF8];

  v3 = os_log_create("com.apple.stocks", "widgetLogging");
  [v7 na_safeSetObject:v3 forKey:&unk_287C80F10];

  v4 = os_log_create("com.apple.stocks", "watchlistLogging");
  [v7 na_safeSetObject:v4 forKey:&unk_287C80F28];

  v5 = [v7 copy];
  v6 = StocksLogForCategory_loggingTypes;
  StocksLogForCategory_loggingTypes = v5;
}

void __parseEntryIntoStruct_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 32) objectAtIndexedSubscript:a3];
    if ([v9 isEqualToString:@"close"])
    {
      [v7 doubleValue];
      *(*(a1 + 48) + 8) = v8;
    }

    else if ([v9 isEqualToString:@"volume"])
    {
      *(*(a1 + 48) + 16) = [v7 longLongValue];
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

__CFString *OAuthURLEncodedString(CFStringRef originalString)
{
  v1 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], originalString, 0, @":/?#[]@!$&’()*+,;='", 0x8000100u);

  return v1;
}

id ParameterString(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [v1 allKeys];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = MEMORY[0x277CCACA8];
        v9 = [v1 objectForKeyedSubscript:v7];
        v10 = OAuthURLEncodedString(v9);
        v11 = [v8 stringWithFormat:@"%@=%@", v7, v10];
        [v2 addObject:v11];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = [v2 sortedArrayUsingSelector:sel_compare_];
  v13 = [v12 componentsJoinedByString:@"&"];

  return v13;
}

id ProductVersion()
{
  if (ProductVersion_onceToken != -1)
  {
    ProductVersion_cold_1();
  }

  v1 = ProductVersion_ProductVersion;

  return v1;
}

void __ProductVersion_block_invoke()
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:@"/System/Library/CoreServices/SystemVersion.plist"];
  v0 = [v3 objectForKey:@"ProductVersion"];
  v1 = [v0 copy];
  v2 = ProductVersion_ProductVersion;
  ProductVersion_ProductVersion = v1;
}

id ClientInfo()
{
  if (ClientInfo_onceToken != -1)
  {
    ClientInfo_cold_1();
  }

  v1 = ClientInfo_ClientInfo;

  return v1;
}

void __ClientInfo_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = ProductVersion();
  v1 = [v0 stringWithFormat:@"vendor=Apple model=Stocks; version=1.0.0.%@", v3];;
  v2 = ClientInfo_ClientInfo;
  ClientInfo_ClientInfo = v1;
}

id DeviceInfo()
{
  if (DeviceInfo_onceToken != -1)
  {
    DeviceInfo_cold_1();
  }

  v1 = DeviceInfo_DeviceInfo;

  return v1;
}

void __DeviceInfo_block_invoke()
{
  v0 = MEMORY[0x277CCACA8];
  v3 = ProductVersion();
  v1 = [v0 stringWithFormat:@"make=Apple model=iPhone; os=iPhone; osver=%@", v3];;
  v2 = DeviceInfo_DeviceInfo;
  DeviceInfo_DeviceInfo = v1;
}

id _ConsumerSecret()
{
  if (_ConsumerSecret_onceToken != -1)
  {
    _ConsumerSecret_cold_1();
  }

  v1 = _ConsumerSecret_ConsumerSecretString;

  return v1;
}

id CreateCredential()
{
  v0 = objc_alloc_init(MEMORY[0x277D36A30]);
  [v0 setConsumerKey:@"dj0yJmk9cU51ZlhUZ2ZneDBJJmQ9WVdrOU1rOVVlWE5vTkhNbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD1hNw--"];
  v1 = _ConsumerSecret();
  [v0 setConsumerSecret:v1];

  return v0;
}

uint64_t ShouldSwapColorsForLocale(void *a1)
{
  v1 = a1;
  if (ShouldSwapColorsForLocale_onceToken != -1)
  {
    ShouldSwapColorsForLocale_cold_1();
  }

  v2 = [v1 countryCode];
  if (v2)
  {
    v3 = [ShouldSwapColorsForLocale_countryCodesToSwap containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __ShouldSwapColorsForLocale_block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_287C81828];
  v1 = ShouldSwapColorsForLocale_countryCodesToSwap;
  ShouldSwapColorsForLocale_countryCodesToSwap = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_26BACE064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_26BACFD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26BAD00EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_26BAD3CC4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void GizmoSettingsChanged(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[StocksPreferences sharedPreferences];
  [v3 synchronize];

  v4 = +[StocksPreferences sharedPreferences];
  v6 = [v4 objectForKey:@"stocks"];

  [v2 setLocalStockListFromSyncableStockList:v6];
  [v2 saveListChanges];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:StockListDidChangeNotification object:0];
}

void StockWasModified(int a1, int a2, CFStringRef theString2)
{
  if (CFStringCompare(StockWasAddedDarwinNotification, theString2, 0))
  {
    if (CFStringCompare(StockWasMovedDarwinNotification, theString2, 0))
    {
      if (CFStringCompare(StockWasDeletedDarwinNotification, theString2, 0))
      {
        return;
      }

      v4 = +[StockManager sharedManager];
      [v4 _checkForDeletedStocks];
    }

    else
    {
      v4 = +[StockManager sharedManager];
      [v4 _checkForMovedStocks];
    }
  }

  else
  {
    v4 = +[StockManager sharedManager];
    [v4 _checkForAddedStocks];
  }
}

void sub_26BAE4350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double RoundToPixel(double a1)
{
  v2 = *&gScale;
  if (*&gScale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    gScale = v4;

    v2 = *&gScale;
  }

  return round(v2 * a1) / v2;
}

double RoundRectToPixel(double a1)
{
  v2 = *&gScale;
  if (*&gScale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    gScale = v4;

    v2 = *&gScale;
  }

  v5 = v2;
  if (v2 == -1.0)
  {
    v6 = [MEMORY[0x277D759A0] mainScreen];
    [v6 scale];
    gScale = v7;

    v5 = *&gScale;
  }

  v8 = v5;
  if (v5 == -1.0)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 scale];
    gScale = v10;

    v8 = *&gScale;
  }

  if (v8 == -1.0)
  {
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    gScale = v12;
  }

  return round(a1 * v2) / v2;
}

double FloorToPixel(double a1)
{
  v2 = *&gScale;
  if (*&gScale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    gScale = v4;

    v2 = *&gScale;
  }

  return floor(v2 * a1) / v2;
}

double CeilToPixel(double a1)
{
  v2 = *&gScale;
  if (*&gScale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    gScale = v4;

    v2 = *&gScale;
  }

  return ceil(v2 * a1) / v2;
}

double RoundToPixelWatch(double a1)
{
  v2 = *&gScaleWatch;
  if (*&gScaleWatch == -1.0)
  {
    v3 = _WKInterfaceDevice;
    if (_WKInterfaceDevice)
    {
      goto LABEL_5;
    }

    if (!dlopen("/System/Library/Frameworks/WatchKit.framework/WatchKit", 2))
    {
      v3 = _WKInterfaceDevice;
      if (!_WKInterfaceDevice)
      {
        return round(*&gScaleWatch * a1) / *&gScaleWatch;
      }

      goto LABEL_5;
    }

    v3 = NSClassFromString(&cfstr_Wkinterfacedev.isa);
    _WKInterfaceDevice = v3;
    if (v3)
    {
LABEL_5:
      v4 = [(objc_class *)v3 performSelector:sel_currentDevice, v2];
      [v4 screenScale];
      gScaleWatch = v5;
    }
  }

  return round(*&gScaleWatch * a1) / *&gScaleWatch;
}

void sub_26BAE7848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SCKDatabaseLog()
{
  if (SCKDatabaseLog_onceToken != -1)
  {
    SCKDatabaseLog_cold_1();
  }

  v1 = SCKDatabaseLog_databaseLog;

  return v1;
}

uint64_t __SCKDatabaseLog_block_invoke()
{
  v0 = os_log_create("com.apple.stocks", "SCKDatabase");
  v1 = SCKDatabaseLog_databaseLog;
  SCKDatabaseLog_databaseLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26BAF1290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 208), 8);
  _Block_object_dispose((v39 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_26BAF2070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void StocksAttributionString_cold_3(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v5 = [v4 objectAtIndex:0];
  v6 = 138412802;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  v10 = 2112;
  v11 = v5;
  _os_log_error_impl(&dword_26BAAD000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "#Attribution Warning! Missing (%@) from string (%@)! (Lang: %@)", &v6, 0x20u);
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}