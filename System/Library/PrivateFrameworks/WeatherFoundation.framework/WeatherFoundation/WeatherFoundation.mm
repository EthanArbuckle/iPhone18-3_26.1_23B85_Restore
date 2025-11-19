id WFWeatherStoreServiceCacheURL(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    if ([v2 count])
    {
      v3 = [MEMORY[0x277CCA8D8] mainBundle];
      v4 = [v3 infoDictionary];
      v5 = [v4 objectForKey:@"CFBundleIdentifier"];

      v6 = [v2 objectAtIndex:0];
      v7 = [v6 stringByAppendingPathComponent:v5];

      v8 = [v7 stringByAppendingPathComponent:v1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id AqiScaleForCountryCode(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (AqiScaleForCountryCode_onceToken != -1)
  {
    AqiScaleForCountryCode_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = AqiScaleForCountryCode_defaultScale;
    goto LABEL_8;
  }

  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = [AqiScaleForCountryCode_AQIScalesForCountries objectForKeyedSubscript:v2];
  v4 = v3;
  v5 = AqiScaleForCountryCode_defaultScale;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

LABEL_8:

  return v6;
}

void __AqiScaleForCountryCode_block_invoke()
{
  v12[7] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = AqiScaleForCountryCode_defaultScale;
  AqiScaleForCountryCode_defaultScale = v0;

  v11[0] = @"CN";
  v2 = objc_opt_new();
  v12[0] = v2;
  v11[1] = @"DE";
  v3 = objc_opt_new();
  v12[1] = v3;
  v11[2] = @"IN";
  v4 = objc_opt_new();
  v12[2] = v4;
  v11[3] = @"MX";
  v5 = objc_opt_new();
  v12[3] = v5;
  v11[4] = @"GB";
  v6 = objc_opt_new();
  v12[4] = v6;
  v11[5] = @"ES";
  v7 = objc_opt_new();
  v12[5] = v7;
  v11[6] = @"FR";
  v8 = objc_opt_new();
  v12[6] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:7];
  v10 = AqiScaleForCountryCode_AQIScalesForCountries;
  AqiScaleForCountryCode_AQIScalesForCountries = v9;
}

id AqiScaleFromIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (AqiScaleFromIdentifier_onceToken == -1)
  {
    if (v1)
    {
LABEL_3:
      v3 = [AqiScaleFromIdentifier_AQIScalesFromIdentifiers objectForKeyedSubscript:v2];
      goto LABEL_6;
    }
  }

  else
  {
    AqiScaleFromIdentifier_cold_1();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
LABEL_6:

  return v3;
}

void __AqiScaleFromIdentifier_block_invoke()
{
  v11[8] = *MEMORY[0x277D85DE8];
  v10[0] = @"HJ6332012";
  v0 = objc_opt_new();
  v11[0] = v0;
  v10[1] = @"UBA";
  v1 = objc_opt_new();
  v11[1] = v1;
  v10[2] = @"NAQI";
  v2 = objc_opt_new();
  v11[2] = v2;
  v10[3] = @"IMECA";
  v3 = objc_opt_new();
  v11[3] = v3;
  v10[4] = @"DAQI";
  v4 = objc_opt_new();
  v11[4] = v4;
  v10[5] = @"CAQI";
  v5 = objc_opt_new();
  v11[5] = v5;
  v10[6] = @"ATMO";
  v6 = objc_opt_new();
  v11[6] = v6;
  v10[7] = @"AQI";
  v7 = objc_opt_new();
  v11[7] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:8];
  v9 = AqiScaleFromIdentifier_AQIScalesFromIdentifiers;
  AqiScaleFromIdentifier_AQIScalesFromIdentifiers = v8;
}

id CurrentAqiScale()
{
  v0 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = [v0 countryCode];

  v2 = AqiScaleForCountryCode(v1);

  return v2;
}

BOOL WFWeatherStoreCacheCheckIfDateIsFreshForStaleness(void *a1, unint64_t a2)
{
  [a1 timeIntervalSinceNow];
  result = 0;
  if (a1 && a2)
  {
    v6 = v4 / 60.0;
    return v6 >= 0.0 || -v6 < a2;
  }

  return result;
}

void sub_272B99F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272B9A608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_272B9B704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_272B9BA70(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = WFLogForCategory(5uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [WFWeatherStoreCache _concurrentQueue_barrier_loadDomain:];
    }

    objc_end_catch();
    JUMPOUT(0x272B9B8B0);
  }

  _Unwind_Resume(exception_object);
}

void sub_272B9BDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272B9BFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_272B9C1DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void sub_272B9FB60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_272BA6058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272BA61F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279E6EA88;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_272BAD300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272BAD680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 48));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 72));
  _Unwind_Resume(a1);
}

void sub_272BADD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id WeatherFoundationInternalUserDefaults()
{
  if (WeatherFoundationInternalUserDefaults_onceToken != -1)
  {
    WeatherFoundationInternalUserDefaults_cold_1();
  }

  v1 = WeatherFoundationInternalUserDefaults_result;

  return v1;
}

void __WeatherFoundationInternalUserDefaults_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.weather.internal"];
  v1 = WeatherFoundationInternalUserDefaults_result;
  WeatherFoundationInternalUserDefaults_result = v0;

  if (!WeatherFoundationInternalUserDefaults_result)
  {
    WeatherFoundationInternalUserDefaults_result = [MEMORY[0x277CBEBD0] standardUserDefaults];

    MEMORY[0x2821F96F8]();
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t WFForecastTypeIsSingleType(uint64_t a1)
{
  v2 = WFForecastTypes();
  v3 = [v2 containsIndex:a1];

  return v3;
}

id WFForecastTypes()
{
  if (WFForecastTypes_onceToken != -1)
  {
    WFForecastTypes_cold_1();
  }

  v1 = WFForecastTypes_Types;

  return v1;
}

void __WFForecastTypes_block_invoke()
{
  v3 = [MEMORY[0x277CCAB58] indexSet];
  for (i = 0; i != 12; ++i)
  {
    [v3 addIndex:(1 << i)];
  }

  v1 = [v3 copy];
  v2 = WFForecastTypes_Types;
  WFForecastTypes_Types = v1;
}

uint64_t WFForecastTypesUnknownTypes(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = a1;
  v1 = WFForecastTypes();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __WFForecastTypesUnknownTypes_block_invoke;
  v4[3] = &unk_279E6ED58;
  v4[4] = &v5;
  [v1 enumerateIndexesUsingBlock:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_272BB0B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WFConditionCodeFromLegacyWeatherConditionCode(unint64_t a1)
{
  if (a1 > 0x2F)
  {
    return 0;
  }

  else
  {
    return qword_272BE4B38[a1];
  }
}

__CFString *NSStringFromWFTemperatureUnit(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return off_279E6ED78[a1 - 1];
  }
}

uint64_t WFTemperatureUnitForLocale(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [a1 objectForKey:*MEMORY[0x277CBE718]];
  if ([v1 BOOLValue])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

uint64_t NSStringToWFTemperatureUnit(void *a1)
{
  v1 = a1;
  if (NSStringToWFTemperatureUnit_onceToken != -1)
  {
    NSStringToWFTemperatureUnit_cold_1();
  }

  v2 = [v1 hash];
  if (v2 == NSStringToWFTemperatureUnit_fahrenheitHash)
  {
    v3 = 1;
  }

  else if (v2 == NSStringToWFTemperatureUnit_kelvinHash)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2 * (v2 == NSStringToWFTemperatureUnit_celsiusHash);
  }

  return v3;
}

uint64_t __NSStringToWFTemperatureUnit_block_invoke()
{
  NSStringToWFTemperatureUnit_fahrenheitHash = [@"WFTemperatureUnitFahrenheit" hash];
  NSStringToWFTemperatureUnit_kelvinHash = [@"WFTemperatureUnitKelvin" hash];
  result = [@"WFTemperatureUnitCelsius" hash];
  NSStringToWFTemperatureUnit_celsiusHash = result;
  return result;
}

uint64_t WFChangeForecastDirectionFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"inc"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"dec"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *NSStringFromWFChangeForecastDirection(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 2)
  {
    v1 = @"dec";
  }

  if (a1 == 1)
  {
    return @"inc";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void sub_272BB3D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WFLogForCategory(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    WFLogForCategory_cold_2();
  }

  if (WFLogForCategory_onceToken != -1)
  {
    WFLogForCategory_cold_1();
  }

  v2 = WFLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __WFLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.weatherservice", "WeatherFoundation");
  v1 = WFLogForCategory_logObjects[0];
  WFLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.weatherservice", "WF_Favorites");
  v3 = qword_28159C788;
  qword_28159C788 = v2;

  v4 = os_log_create("com.apple.weatherservice", "WF_Forecasts");
  v5 = qword_28159C790;
  qword_28159C790 = v4;

  v6 = os_log_create("com.apple.weatherservice", "WF_Location");
  v7 = qword_28159C798;
  qword_28159C798 = v6;

  v8 = os_log_create("com.apple.weatherservice", "WF_Service");
  v9 = qword_28159C7A0;
  qword_28159C7A0 = v8;

  v10 = os_log_create("com.apple.weatherservice", "WF_ResponseCache");
  v11 = qword_28159C7A8;
  qword_28159C7A8 = v10;

  v12 = os_log_create("com.apple.weatherservice", "WF_GeocodeCache");
  v13 = qword_28159C7B0;
  qword_28159C7B0 = v12;

  v14 = os_log_create("com.apple.weatherservice", "WF_Parser");
  v15 = qword_28159C7B8;
  qword_28159C7B8 = v14;

  v16 = os_log_create("com.apple.weatherservice", "WF_Reachability");
  v17 = qword_28159C7C0;
  qword_28159C7C0 = v16;

  v18 = os_log_create("com.apple.weatherservice", "WF_RemoteConfig");
  v19 = qword_28159C7C8;
  qword_28159C7C8 = v18;

  qword_28159C7D0 = os_log_create("com.apple.weatherservice", "WF_AppSettings");

  return MEMORY[0x2821F96F8]();
}

id WFCacheKeyForForecastType(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[WFWeatherConditions calendar];
  v8 = [v7 components:+[WFWeatherConditions dateComponentCalendarUnits](WFWeatherConditions fromDate:{"dateComponentCalendarUnits"), v6}];

  v9 = 0;
  if (a1 <= 31)
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v25, v26);
        [v24 stringWithFormat:@"air_quality_%@_%02ld%02ld%04ld%02ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), objc_msgSend(v8, "hour")];
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_27;
        }

        v21 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v22, v23);
        [v21 stringWithFormat:@"current_%@_%02ld%02ld%04ld%02ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), objc_msgSend(v8, "hour")];
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          v36 = MEMORY[0x277CCACA8];
          v11 = [v5 geoLocation];
          [v11 coordinate];
          v14 = NSStringFromCLLocationCoordinate2D(v37, v38);
          [v36 stringWithFormat:@"hourly_1d_%@_%02ld%02ld%04ld%02ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), objc_msgSend(v8, "hour")];
          break;
        case 8:
          v27 = MEMORY[0x277CCACA8];
          v11 = [v5 geoLocation];
          [v11 coordinate];
          v14 = NSStringFromCLLocationCoordinate2D(v28, v29);
          [v27 stringWithFormat:@"daily_10d_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
          break;
        case 16:
          v15 = MEMORY[0x277CCACA8];
          v11 = [v5 geoLocation];
          [v11 coordinate];
          v14 = NSStringFromCLLocationCoordinate2D(v16, v17);
          [v15 stringWithFormat:@"daily_pollen_10d_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
          break;
        default:
          goto LABEL_27;
      }
    }
  }

  else if (a1 > 511)
  {
    switch(a1)
    {
      case 512:
        v42 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v43, v44);
        [v42 stringWithFormat:@"change_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      case 1024:
        v33 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v34, v35);
        [v33 stringWithFormat:@"severe_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      case 2048:
        v18 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v19, v20);
        [v18 stringWithFormat:@"next_hour_precip_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      default:
        goto LABEL_27;
    }
  }

  else
  {
    switch(a1)
    {
      case 32:
        v39 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v40, v41);
        [v39 stringWithFormat:@"historical_last24h_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      case 64:
        v30 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v31, v32);
        [v30 stringWithFormat:@"historical_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      case 128:
        v10 = MEMORY[0x277CCACA8];
        v11 = [v5 geoLocation];
        [v11 coordinate];
        v14 = NSStringFromCLLocationCoordinate2D(v12, v13);
        [v10 stringWithFormat:@"almanac_%@_%02ld%02ld%04ld", v14, objc_msgSend(v8, "month"), objc_msgSend(v8, "day"), objc_msgSend(v8, "year"), v46];
        break;
      default:
        goto LABEL_27;
    }
  }
  v9 = ;

LABEL_27:

  return v9;
}

uint64_t WFForecastTypeForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:60 fromDate:v2];
  v5 = [MEMORY[0x277CBEAB8] wf_nowDateComponents];
  v6 = [v3 dateFromComponents:v5];
  v7 = [v3 components:16 fromDate:v6 toDate:v2 options:0];

  v8 = [v7 day];
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = 64;
  }

  else if (v8)
  {
    if (v8 >= 0xA)
    {
      v9 = 128;
    }

    else
    {
      v9 = 8;
    }
  }

  else
  {
    v10 = [v4 hour];
    if (v10 == [v5 hour])
    {
      v9 = 258;
    }

    else
    {
      v11 = [v4 hour];
      v9 = 4 * (v11 > [v5 hour]);
    }
  }

  return v9;
}

uint64_t WFCacheDetailsForForecastType(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  if (result <= 15)
  {
    if (result <= 3)
    {
      if (result != 1)
      {
        if (result != 2)
        {
          return result;
        }

        if (!a2)
        {
          goto LABEL_29;
        }

        v4 = &WFDefaultAllowedCurrentForecastStaleness;
        goto LABEL_28;
      }

      if (a2)
      {
        *a2 = 60;
      }

      if (a3)
      {
        v6 = WFWeatherStoreAirQualityCacheDomain;
        goto LABEL_36;
      }

      return result;
    }

    if (result == 4)
    {
      if (a2)
      {
        v4 = &WFDefaultAllowedHourlyForecastStaleness;
        goto LABEL_28;
      }

LABEL_29:
      if (!a3)
      {
        return result;
      }

      v6 = WFWeatherStoreForecastCacheDomain;
      goto LABEL_36;
    }

    if (result != 8)
    {
      return result;
    }

LABEL_14:
    if (a2)
    {
      v4 = &WFDefaultAllowedDailyForecastStaleness;
LABEL_28:
      *a2 = *v4;
      goto LABEL_29;
    }

    goto LABEL_29;
  }

  if (result <= 63)
  {
    if (result == 16)
    {
      goto LABEL_14;
    }

    if (result != 32)
    {
      return result;
    }

    if (a2)
    {
      v5 = &WFDefaultAllowedHourlyForecastStaleness;
LABEL_33:
      *a2 = *v5;
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  if (result == 64)
  {
    if (a2)
    {
      v5 = &WFDefaultAllowedHistoricalStaleness;
      goto LABEL_33;
    }

LABEL_34:
    if (!a3)
    {
      return result;
    }

    v6 = WFWeatherStoreHistoricalCacheDomain;
    goto LABEL_36;
  }

  if (result == 128)
  {
    if (a2)
    {
      *a2 = 2628000;
    }

    if (a3)
    {
      v6 = WFWeatherStoreAlmanacCacheDomain;
LABEL_36:
      result = *v6;
      *a3 = result;
    }
  }

  return result;
}

void sub_272BBAF9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose((v57 - 256), 8);
  _Block_object_dispose((v57 - 208), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272BBCC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272BBD648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_272BC07D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 168), 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
}

id NSStringFromCLLocationCoordinate2D(double a1, double a2)
{
  if (CLLocationCoordinate2DIsValid(*&a1))
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.02f, %.02f", *&a1, *&a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double CLLocationCoordinate2DFromString(void *a1)
{
  v1 = *MEMORY[0x277CE4278];
  if (a1)
  {
    v2 = [a1 componentsSeparatedByString:{@", "}];
    if ([v2 count] == 2)
    {
      v3 = [v2 objectAtIndexedSubscript:0];
      [v3 doubleValue];
      v5 = v4;

      v6 = [v2 objectAtIndexedSubscript:1];
      [v6 doubleValue];

      v1 = v5;
    }
  }

  return v1;
}

void sub_272BCB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_272BCBCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272BCBF50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E6F6F0;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (UIKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t WFNetworkEventTypeFromAPIVersion(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"wds_v1"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"twc_v2"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"twc_v3"])
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

id CLPlacemarkClosestToReferenceLocation(void *a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if ([v4 count] == 1)
  {
    v5 = [v4 firstObject];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v5 = 0;
      v9 = *v19;
      v10 = -1.0;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [v12 location];
          [v3 distanceFromLocation:v13];
          v15 = v14;

          if (v10 < 0.0 || v10 > v15)
          {
            v16 = v12;

            v5 = v16;
            v10 = v15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id WFLocationNameForPlacemark(void *a1)
{
  v1 = a1;
  v2 = [v1 locality];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [v1 locality];
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [v1 name];
  v6 = [v5 length];

  if (v6)
  {
    v4 = [v1 name];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:
  v8 = [v7 copy];

  return v8;
}

id WFAggregateCommonRequestSupportedForecastTypes()
{
  if (WFAggregateCommonRequestSupportedForecastTypes_onceToken != -1)
  {
    WFAggregateCommonRequestSupportedForecastTypes_cold_1();
  }

  v1 = WFAggregateCommonRequestSupportedForecastTypes_AggregateCommonRequestSupportedTypes;

  return v1;
}

void __WFAggregateCommonRequestSupportedForecastTypes_block_invoke()
{
  v0 = WFForecastTypes();
  v3 = [v0 mutableCopy];

  [v3 removeIndex:64];
  [v3 removeIndex:128];
  v1 = [v3 copy];
  v2 = WFAggregateCommonRequestSupportedForecastTypes_AggregateCommonRequestSupportedTypes;
  WFAggregateCommonRequestSupportedForecastTypes_AggregateCommonRequestSupportedTypes = v1;
}

void sub_272BD384C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_272BD4C78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_272BD590C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getUIApplicationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIApplicationClass_softClass;
  v7 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIApplicationClass_block_invoke;
    v3[3] = &unk_279E6EA68;
    v3[4] = &v4;
    __getUIApplicationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_272BD5D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUIImageClass_block_invoke_0(uint64_t a1)
{
  UIKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UIImage");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUIImageClass_block_invoke_cold_1();
    UIKitLibrary();
  }
}

void UIKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __UIKitLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_279E6FA00;
    v3 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __UIKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIApplicationClass_block_invoke_cold_1();
    return +[(WFServiceConnection *)v3];
  }

  return result;
}

id NSLocaleTemperatureUnitFromWFTemperatureUnit(int a1)
{
  if (a1 == 1)
  {
    v2 = MEMORY[0x277CBE710];
LABEL_5:
    v3 = *v2;

    return v3;
  }

  if (a1 == 2)
  {
    v2 = MEMORY[0x277CBE708];
    goto LABEL_5;
  }

  v3 = 0;

  return v3;
}

uint64_t NSLocaleTemperatureUnitToWFTemperatureUnit(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277CBE710]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277CBE708]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_272BD6CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t UAMeasureUnitFromWFTemperatureUnit(int a1)
{
  if (a1 == 1)
  {
    v1 = 2561;
  }

  else
  {
    v1 = 2560;
  }

  if (a1 == 3)
  {
    return 2562;
  }

  else
  {
    return v1;
  }
}

double WFConvertTemperature(int a1, int a2, double result)
{
  if (a1 != a2)
  {
    if (a1 == 1)
    {
      result = (result + -32.0) * 0.555555582;
    }

    else if (a1 != 2)
    {
      if (a1 != 3)
      {
        return NAN;
      }

      result = result + -273.149994;
    }

    if (a2 == 3)
    {
      return result + 273.149994;
    }

    if (a2 != 2)
    {
      if (a2 == 1)
      {
        return result * 1.79999995 + 32.0;
      }

      return NAN;
    }
  }

  return result;
}

void sub_272BD8030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272BD906C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 224), 8);
  _Block_object_dispose((v33 - 176), 8);
  _Unwind_Resume(a1);
}