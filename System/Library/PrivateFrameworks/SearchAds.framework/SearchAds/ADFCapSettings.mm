@interface ADFCapSettings
- (ADFCapSettings)initWithType:(int64_t)a3 location:(double)a4 clickExpiration:(double)a5 fCapExpiration:(double)a6 maxFCapElements:(unint64_t)a7 maxClickCapElements:(unint64_t)a8;
- (id)_capTypeToString:(int64_t)a3;
- (void)overrideClickExpiration:(double)a3;
- (void)overrideFrequencyCapExpiration:(double)a3;
- (void)overrideMaxClickElements:(unint64_t)a3;
- (void)overrideMaxFrequencyCapElements:(unint64_t)a3;
- (void)overrideRevGeoThreshold:(double)a3;
@end

@implementation ADFCapSettings

- (ADFCapSettings)initWithType:(int64_t)a3 location:(double)a4 clickExpiration:(double)a5 fCapExpiration:(double)a6 maxFCapElements:(unint64_t)a7 maxClickCapElements:(unint64_t)a8
{
  v15.receiver = self;
  v15.super_class = ADFCapSettings;
  result = [(ADFCapSettings *)&v15 init];
  if (result)
  {
    result->_pageType = a3;
    result->_reverseGeolocationRefreshThresholdInMeters = a4;
    result->_clickExpirationThresholdInSeconds = a5;
    result->_frequencyCapExpirationInSeconds = a6;
    result->_maxFrequencyCapElements = a7;
    result->_maxClickCapElements = a8;
  }

  return result;
}

- (void)overrideFrequencyCapExpiration:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v20 = 138412546;
    v21 = v14;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Frequency Cap Expiration Overridden: %f seconds.", &v20, 0x16u);
  }

  objc_msgSend_setFrequencyCapExpirationInSeconds_(self, v15, v16, v17, v18, a3);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)overrideMaxFrequencyCapElements:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v19 = 138412546;
    v20 = v14;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Max Frequency Cap Elements Overridden: %lu elements.", &v19, 0x16u);
  }

  objc_msgSend_setMaxFrequencyCapElements_(self, v15, a3, v16, v17);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)overrideClickExpiration:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v20 = 138412546;
    v21 = v14;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Toro Click Expiration Overridden: %f seconds.", &v20, 0x16u);
  }

  objc_msgSend_setClickExpirationThresholdInSeconds_(self, v15, v16, v17, v18, a3);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)overrideMaxClickElements:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v19 = 138412546;
    v20 = v14;
    v21 = 2048;
    v22 = a3;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Max Toro Click Elements Overridden: %lu elements.", &v19, 0x16u);
  }

  objc_msgSend_setMaxClickCapElements_(self, v15, a3, v16, v17);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)overrideRevGeoThreshold:(double)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_msgSend_pageType(self, v6, v7, v8, v9);
    v14 = objc_msgSend__capTypeToString_(self, v11, v10, v12, v13);
    v20 = 138412546;
    v21 = v14;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_264E42000, v5, OS_LOG_TYPE_DEFAULT, "%@ Reverse Geolocation Update Threshold Overridden: %f meters.", &v20, 0x16u);
  }

  objc_msgSend_setReverseGeolocationRefreshThresholdInMeters_(self, v15, v16, v17, v18, a3);
  v19 = *MEMORY[0x277D85DE8];
}

- (id)_capTypeToString:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B88898[a3];
  }
}

@end