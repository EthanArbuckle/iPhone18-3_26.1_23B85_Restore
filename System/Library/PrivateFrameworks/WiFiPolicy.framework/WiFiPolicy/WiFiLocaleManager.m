@interface WiFiLocaleManager
+ (id)getStringOfLocaleSource:(int)a3;
- (BOOL)isDefaultCountryCode:(id)a3;
- (BOOL)shouldDetermineNewLocale;
- (WiFiLocaleManager)init;
- (WiFiLocaleManagerDelegate)delegate;
- (id)applySetCountryCodeExceptions:(id)a3;
- (id)getLocaleFromLocation:(id)a3;
- (id)getLocaleFromMcc;
- (id)getLocaleFromMultiple80211d;
- (id)getLocaleFromPeer;
- (id)getLocaleFromRemoteClient;
- (id)getLocaleFromTimezone;
- (id)getLocaleFromUserDefaults;
- (id)getLocaleUsingBoundingBoxes:(id)a3;
- (id)getLocaleUsingGeoLocationCache:(id)a3;
- (id)getLocaleUsingReverseGeocoder:(id)a3;
- (id)getRestrictedCountryCodeFromRegionInfo;
- (id)getRestrictedCountryCodeFromTimezone;
- (unsigned)getNetworkReachability;
- (void)dealloc;
- (void)determineAndSetLocale:(unsigned __int8)a3;
- (void)didChangeAuthorizationStatus;
- (void)didFailWithError:(id)a3;
- (void)didUpdateLocations:(id)a3;
- (void)setLocaleTestParams:(id)a3;
@end

@implementation WiFiLocaleManager

uint64_t __25__WiFiLocaleManager_init__block_invoke(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale timer fired", v3, 2u);
  }

  return [*(a1 + 32) determineLocale:0];
}

- (BOOL)shouldDetermineNewLocale
{
  v2 = self;
  v3 = [(WiFiLocaleManager *)self localeCountryCode];
  LOBYTE(v2) = [(WiFiLocaleManager *)v2 isDefaultCountryCode:v3];

  return v2;
}

- (WiFiLocaleManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (WiFiLocaleManager)init
{
  v19.receiver = self;
  v19.super_class = WiFiLocaleManager;
  v2 = [(WiFiLocaleManager *)&v19 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiLocaleManager *)v2 setLocaleCheckSuspended:0];
    [(WiFiLocaleManager *)v3 setLocaleCountryCode:0];
    [(WiFiLocaleManager *)v3 setLocaleSource:0];
    [(WiFiLocaleManager *)v3 setLocaleLastUpdatedTime:0.0];
    [(WiFiLocaleManager *)v3 setLocaleTimeout:3600.0];
    [(WiFiLocaleManager *)v3 setAggressiveRetryAttemptsRemaining:5];
    [(WiFiLocaleManager *)v3 setTestMcc:0];
    [(WiFiLocaleManager *)v3 setTestHost11d:0];
    [(WiFiLocaleManager *)v3 setTestPeer:0];
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    [(WiFiLocaleManager *)v3 setDateFormatter:v4];

    v5 = [(WiFiLocaleManager *)v3 dateFormatter];
    [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];

    v6 = dispatch_queue_create("WiFiLocaleManager", 0);
    [(WiFiLocaleManager *)v3 setQueue:v6];

    v7 = [(WiFiLocaleManager *)v3 queue];
    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v7);
    [(WiFiLocaleManager *)v3 setLocaleTimer:v8];

    v9 = [(WiFiLocaleManager *)v3 localeTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __25__WiFiLocaleManager_init__block_invoke;
    handler[3] = &unk_2789C6630;
    v10 = v3;
    v18 = v10;
    dispatch_source_set_event_handler(v9, handler);

    v11 = [(WiFiLocaleManager *)v10 localeTimer];
    v12 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v11, v12, 0x1BF08EB000uLL, 0);

    v13 = [(WiFiLocaleManager *)v10 localeTimer];
    dispatch_activate(v13);

    v14 = +[WiFiLocationManager sharedWiFiLocationManager];
    [(WiFiLocaleManager *)v10 setLocationManager:v14];

    v15 = [(WiFiLocaleManager *)v10 locationManager];
    [v15 setDelegate:v10];

    [(WiFiLocaleManager *)v10 setIsWaitingForLocationUpdate:0];
  }

  return v3;
}

- (void)dealloc
{
  [(WiFiLocaleManager *)self setTestHost11d:0];
  [(WiFiLocaleManager *)self setTestPeer:0];
  [(WiFiLocaleManager *)self setLocationManager:0];
  v3 = [(WiFiLocaleManager *)self localeTimer];

  if (v3)
  {
    v4 = [(WiFiLocaleManager *)self localeTimer];
    dispatch_source_cancel(v4);

    [(WiFiLocaleManager *)self setLocaleTimer:0];
  }

  v5 = [(WiFiLocaleManager *)self queue];

  if (v5)
  {
    [(WiFiLocaleManager *)self setQueue:0];
  }

  v6.receiver = self;
  v6.super_class = WiFiLocaleManager;
  [(WiFiLocaleManager *)&v6 dealloc];
}

- (void)determineAndSetLocale:(unsigned __int8)a3
{
  v5 = [(WiFiLocaleManager *)self queue];

  if (v5)
  {
    v6 = [(WiFiLocaleManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__WiFiLocaleManager_determineAndSetLocale___block_invoke;
    v7[3] = &unk_2789C6688;
    v7[4] = self;
    v8 = a3;
    dispatch_async(v6, v7);
  }
}

- (BOOL)isDefaultCountryCode:(id)a3
{
  v3 = a3;
  v4 = v3 == 0;
  if (![v3 caseInsensitiveCompare:&stru_28487EF20] || !objc_msgSend(v3, "caseInsensitiveCompare:", @"X0") || !objc_msgSend(v3, "caseInsensitiveCompare:", @"X2") || !objc_msgSend(v3, "caseInsensitiveCompare:", @"X3") || !objc_msgSend(v3, "caseInsensitiveCompare:", @"XZ"))
  {
    v4 = 1;
  }

  return v4;
}

- (void)setLocaleTestParams:(id)a3
{
  v4 = a3;
  v5 = [(WiFiLocaleManager *)self queue];

  if (v5)
  {
    v6 = [(WiFiLocaleManager *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __41__WiFiLocaleManager_setLocaleTestParams___block_invoke;
    v7[3] = &unk_2789C6608;
    v8 = v4;
    v9 = self;
    dispatch_async(v6, v7);
  }
}

void __41__WiFiLocaleManager_setLocaleTestParams___block_invoke(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"enableTestMode"];
  v3 = [v2 BOOLValue];

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"localeCheckSuspended"];
  v5 = [v4 BOOLValue];

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"mcc"];
  v7 = [v6 intValue];

  v8 = [*(a1 + 32) objectForKeyedSubscript:@"cachedLocaleTimeout"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [*(a1 + 32) objectForKey:@"host11d"];
  v12 = [*(a1 + 32) objectForKey:@"peer"];
  v13 = [*(a1 + 32) objectForKey:@"timeZoneCC"];
  v14 = [*(a1 + 32) objectForKey:@"userDefaults"];
  v15 = [*(a1 + 32) objectForKeyedSubscript:@"forceCheck"];
  v16 = [v15 BOOLValue];

  v17 = *(a1 + 40);
  if (!v3)
  {
    if ([v17 testModeEnabled])
    {
      v22 = v16;
      v23 = v14;
      [*(a1 + 40) setTestModeEnabled:0];
      [*(a1 + 40) setLocaleCheckSuspended:0];
      [*(a1 + 40) setTestMcc:0];
      [*(a1 + 40) setLocaleTimeout:3600.0];
      [*(a1 + 40) setTestHost11d:0];
      [*(a1 + 40) setTestPeer:0];
      [*(a1 + 40) setLocaleCountryCode:0];
      [*(a1 + 40) setLocaleSource:0];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v24 = [*(a1 + 40) localeCheckSuspended];
        v25 = [*(a1 + 40) testMcc];
        v26 = [*(a1 + 40) testHost11d];
        v27 = [*(a1 + 40) testPeer];
        [*(a1 + 40) localeTimeout];
        *buf = 136316674;
        v66 = "[WiFiLocaleManager setLocaleTestParams:]_block_invoke";
        v67 = 1024;
        v68 = v24;
        v69 = 1024;
        v70 = v25;
        v71 = 2112;
        *v72 = v26;
        *&v72[8] = 2112;
        *v73 = v27;
        *&v73[8] = 2048;
        *v74 = v28;
        *&v74[8] = 1024;
        *v75 = v22;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: resetting test params: localeCheckSuspended %d, MCC %d, host11d %@, peer %@, timeout %.2f seconds, forceCheck %d", buf, 0x3Cu);
      }

      v29 = [*(a1 + 40) retryTimer];

      if (v29)
      {
        v30 = [*(a1 + 40) retryTimer];
        dispatch_source_set_timer(v30, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      v31 = [*(a1 + 40) localeTimer];
      [*(a1 + 40) localeTimeout];
      v33 = dispatch_time(0, (v32 * 1000000000.0));
      [*(a1 + 40) localeTimeout];
      dispatch_source_set_timer(v31, v33, (v34 * 1000000000.0), 0);

      v14 = v23;
      if (v22)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

  [v17 setTestModeEnabled:1];
  [*(a1 + 40) setLocaleCheckSuspended:v5];
  if (HIWORD(v7))
  {
    v18 = 0;
  }

  else
  {
    v18 = v7;
  }

  [*(a1 + 40) setTestMcc:v18];
  [*(a1 + 40) setLocaleTimeout:{fmax(v10, 120.0)}];
  v62 = v7;
  if (v11)
  {
    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [v11 uppercaseString];
    v21 = [v19 initWithString:v20];
    [*(a1 + 40) setTestHost11d:v21];
  }

  else
  {
    [*(a1 + 40) setTestHost11d:0];
  }

  v35 = v16;
  if (v12)
  {
    v36 = objc_alloc(MEMORY[0x277CCACA8]);
    v37 = [v12 uppercaseString];
    v38 = [v36 initWithString:v37];
    [*(a1 + 40) setTestPeer:v38];

    if (v13)
    {
LABEL_17:
      v39 = objc_alloc(MEMORY[0x277CCACA8]);
      v40 = [v13 uppercaseString];
      v41 = [v39 initWithString:v40];
      [*(a1 + 40) setTestTimeZoneCC:v41];

      goto LABEL_20;
    }
  }

  else
  {
    [*(a1 + 40) setTestPeer:0];
    if (v13)
    {
      goto LABEL_17;
    }
  }

  [*(a1 + 40) setTestTimeZoneCC:0];
LABEL_20:
  v63 = v13;
  v64 = v12;
  if (v14)
  {
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v43 = [v14 uppercaseString];
    v44 = [v42 initWithString:v43];
    [*(a1 + 40) setTestUserDefaults:v44];
  }

  else
  {
    [*(a1 + 40) setTestUserDefaults:0];
  }

  v45 = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v46 = v16;
    v47 = v14;
    v48 = [*(a1 + 40) localeCheckSuspended];
    v49 = [*(a1 + 40) testMcc];
    v50 = [*(a1 + 40) testHost11d];
    v51 = [*(a1 + 40) testPeer];
    v52 = [*(a1 + 40) testUserDefaults];
    [*(a1 + 40) localeTimeout];
    *buf = 136318466;
    v66 = "[WiFiLocaleManager setLocaleTestParams:]_block_invoke";
    v67 = 1024;
    v68 = v48;
    v14 = v47;
    v35 = v46;
    v69 = 1024;
    v70 = v5;
    v71 = 1024;
    *v72 = v49;
    *&v72[4] = 1024;
    *&v72[6] = v62;
    *v73 = 2112;
    *&v73[2] = v50;
    *v74 = 2112;
    *&v74[2] = v45;
    *v75 = 2112;
    *&v75[2] = v51;
    v76 = 2112;
    v77 = v64;
    v78 = 2112;
    v79 = v52;
    v80 = 2112;
    v81 = v14;
    v82 = 2048;
    v83 = v53;
    v84 = 2048;
    v85 = v10;
    v86 = 1024;
    v87 = v46;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: setting test params: localeCheckSuspended %d (requested %d), MCC %d (requested %d), host11d %@ (requested %@), peer %@ (requested %@), userDefaults %@ (requested %@), timeout %.2f seconds (requested %.2f seconds), forceCheck %d", buf, 0x7Au);
  }

  v54 = v14;
  v55 = [*(a1 + 40) retryTimer];

  if (v55)
  {
    v56 = [*(a1 + 40) retryTimer];
    dispatch_source_set_timer(v56, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  v57 = [*(a1 + 40) localeTimer];
  [*(a1 + 40) localeTimeout];
  v59 = dispatch_time(0, (v58 * 1000000000.0));
  [*(a1 + 40) localeTimeout];
  dispatch_source_set_timer(v57, v59, (v60 * 1000000000.0), 0);

  v11 = v45;
  v13 = v63;
  v12 = v64;
  v14 = v54;
  if (v35)
  {
LABEL_28:
    [*(a1 + 40) determineLocale:1];
  }

LABEL_29:

  v61 = *MEMORY[0x277D85DE8];
}

- (id)getLocaleFromRemoteClient
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiLocaleManager *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(WiFiLocaleManager *)self delegate];
    v6 = [v5 getRemoteClientCountryCode];
  }

  else
  {
    v6 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from authorized client: <%@>", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getLocaleFromMultiple80211d
{
  v34 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v3 = [(WiFiLocaleManager *)self testHost11d];

  if (!v3)
  {
    v9 = [(WiFiLocaleManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [(WiFiLocaleManager *)self testUserDefaults];
      if (!v10)
      {

        goto LABEL_23;
      }

      v11 = v10;
      v12 = [(WiFiLocaleManager *)self testUserDefaults];
      v13 = [v12 caseInsensitiveCompare:@"OFF"];

      if (!v13)
      {
LABEL_23:
        v17 = [(WiFiLocaleManager *)self delegate];
        v8 = [v17 get80211dCountryCodes:&v29];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v18 = [v8 count];
          *buf = 134218240;
          v31 = v18;
          v32 = 2048;
          v33 = v29;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%lu country code(s) currently advertised by %lu networks", buf, 0x16u);
        }

        if (v29 >= 3)
        {
          v19 = [v8 objectEnumerator];
          v7 = [v19 nextObject];
          v21 = 0;
          if (v7)
          {
            v22 = 0;
            v23 = 0;
            v24 = MEMORY[0x277D86220];
            *&v20 = 138412290;
            v28 = v20;
            do
            {
              v25 = v23;
              v23 = [v8 countForObject:{v7, v28}];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v7;
                v32 = 2048;
                v33 = v23;
                _os_log_impl(&dword_2332D7000, v24, OS_LOG_TYPE_DEFAULT, "Country <%@> IE count %lu", buf, 0x16u);
              }

              if (v23 < 2 || v23 < v25)
              {
                v23 = v25;
              }

              else
              {
                v26 = v7;

                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = v28;
                  v31 = v26;
                  _os_log_impl(&dword_2332D7000, v24, OS_LOG_TYPE_DEFAULT, "Currently highest country <%@>", buf, 0xCu);
                }

                v22 = v25;
                v21 = v26;
              }

              v27 = [v19 nextObject];

              v7 = v27;
            }

            while (v27);
            if (v23 == v22)
            {
              v7 = 0;
            }

            else
            {
              v7 = [v21 copy];
            }
          }

          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    v14 = 0;
    goto LABEL_19;
  }

  v4 = [(WiFiLocaleManager *)self testHost11d];
  v5 = [v4 caseInsensitiveCompare:@"OFF"];

  if (v5)
  {
    v6 = [(WiFiLocaleManager *)self testHost11d];
    v7 = [v6 copy];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v7;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using testHost11d [%@]", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from 80211d info is disabled", buf, 2u);
  }

  v8 = 0;
LABEL_13:
  v7 = 0;
LABEL_14:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from multiple 80211d info: <%@>", buf, 0xCu);
  }

  v14 = v7;

LABEL_19:
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)getLocaleFromPeer
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiLocaleManager *)self testPeer];

  if (!v3)
  {
    v8 = [(WiFiLocaleManager *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(WiFiLocaleManager *)self delegate];
      v7 = [v10 getPeerCountryCode];

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = [(WiFiLocaleManager *)self testPeer];
  v5 = [v4 caseInsensitiveCompare:@"OFF"];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from peer is disabled", &v13, 2u);
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [(WiFiLocaleManager *)self testPeer];
  v7 = [v6 copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using testPeer [%@]", &v13, 0xCu);
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from peer: <%@>", &v13, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getLocaleFromTimezone
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiLocaleManager *)self getRestrictedCountryCodeFromTimezone];
  v4 = [(WiFiLocaleManager *)self getRestrictedCountryCodeFromRegionInfo];
  testTimeZoneCC = self->_testTimeZoneCC;
  if (testTimeZoneCC)
  {
    v6 = testTimeZoneCC;

    v7 = self->_testTimeZoneCC;
    v4 = v7;
    v3 = v6;
  }

  v8 = 0;
  if (v3 && v4)
  {
    if ([v3 compare:v4 options:1])
    {
      v8 = @"XZ";
    }

    else
    {
      v8 = v3;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from timezone: <%@>", &v12, 0xCu);
  }

  v9 = v8;

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)getLocaleFromUserDefaults
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(WiFiLocaleManager *)self testUserDefaults];

  if (!v3)
  {
    v8 = [(WiFiLocaleManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v9 = [(WiFiLocaleManager *)self testHost11d];
      if (!v9)
      {

LABEL_19:
        v15 = [(WiFiLocaleManager *)self delegate];
        v7 = [v15 getCountryCodeFromUserDefaults];

        goto LABEL_13;
      }

      v10 = v9;
      v11 = [(WiFiLocaleManager *)self testHost11d];
      v12 = [v11 caseInsensitiveCompare:@"OFF"];

      if (!v12)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v4 = [(WiFiLocaleManager *)self testUserDefaults];
  v5 = [v4 caseInsensitiveCompare:@"OFF"];

  if (!v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from user defaults is disabled", &v16, 2u);
    }

    goto LABEL_12;
  }

  v6 = [(WiFiLocaleManager *)self testUserDefaults];
  v7 = [v6 copy];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Using user defaults [%@]", &v16, 0xCu);
  }

LABEL_13:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from user defaults <%@>", &v16, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)applySetCountryCodeExceptions:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (![(__CFString *)v3 caseInsensitiveCompare:@"EU"])
  {

    v4 = @"DE";
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = @"DE";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Switching locale %@ => %@", &v7, 0x16u);
    }
  }

  if (![(__CFString *)v3 caseInsensitiveCompare:@"IR"]|| ![(__CFString *)v3 caseInsensitiveCompare:@"KP"])
  {

    v4 = &stru_28487EF20;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = &stru_28487EF20;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Switching locale %@ => %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __43__WiFiLocaleManager_setCountryCode_source___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Set locale retry timer fired. Retrying for country code : %@", &v5, 0xCu);
  }

  result = [*(a1 + 40) retrySetCountryCode:*(a1 + 32) source:*(a1 + 48)];
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didChangeAuthorizationStatus
{
  v3 = [(WiFiLocaleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WiFiLocaleManager_didChangeAuthorizationStatus__block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)didUpdateLocations:(id)a3
{
  v4 = a3;
  v5 = [(WiFiLocaleManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__WiFiLocaleManager_didUpdateLocations___block_invoke;
  v7[3] = &unk_2789C6608;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __40__WiFiLocaleManager_didUpdateLocations___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (![*(a1 + 32) isWaitingForLocationUpdate])
  {
    __40__WiFiLocaleManager_didUpdateLocations___block_invoke_cold_1();
    goto LABEL_23;
  }

  [*(a1 + 32) setIsWaitingForLocationUpdate:0];
  v2 = *(a1 + 40);
  [*(a1 + 32) localeTimeout];
  v3 = [WiFiLocationManager isLocationValid:v2 uptoSeconds:0 isHighAccuracy:?];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = v3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to get locale from updated location (isValid %d)", v10, 8u);
  }

  v4 = [*(a1 + 32) getLocaleFromRemoteClient];
  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 8;
    goto LABEL_19;
  }

  if (v3)
  {
    v5 = [*(a1 + 32) getLocaleFromLocation:*(a1 + 40)];

    if (![*(a1 + 32) isDefaultCountryCode:v5])
    {
      v6 = 3;
LABEL_18:
      v4 = v5;
      goto LABEL_19;
    }

    v4 = v5;
  }

  if (![*(a1 + 32) shouldDetermineNewLocale])
  {
    v6 = 0;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) getLocaleFromMultiple80211d];

  if (![*(a1 + 32) isDefaultCountryCode:v5])
  {
    v6 = 4;
    goto LABEL_18;
  }

  v4 = [*(a1 + 32) getLocaleFromPeer];

  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 5;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) getLocaleFromTimezone];

  if (![*(a1 + 32) isDefaultCountryCode:v5])
  {
    v6 = 6;
    goto LABEL_18;
  }

  v4 = [*(a1 + 32) getLocaleFromUserDefaults];

  if (![*(a1 + 32) isDefaultCountryCode:v4])
  {
    v6 = 7;
LABEL_19:
    if (!v4)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  v6 = 0;
  v4 = &stru_28487EF20;
LABEL_20:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setLocaleLastUpdatedTime:?];
  [*(a1 + 32) setAggressiveRetryAttemptsRemaining:5];
  v7 = [*(a1 + 32) retryTimer];

  if (v7)
  {
    v8 = [*(a1 + 32) retryTimer];
    dispatch_source_cancel(v8);

    [*(a1 + 32) setRetryTimer:0];
  }

  [*(a1 + 32) setCountryCode:v4 source:v6];

LABEL_23:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)didFailWithError:(id)a3
{
  v4 = [(WiFiLocaleManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WiFiLocaleManager_didFailWithError___block_invoke;
  block[3] = &unk_2789C6630;
  block[4] = self;
  dispatch_async(v4, block);
}

void __38__WiFiLocaleManager_didFailWithError___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) shouldDetermineNewLocale])
  {
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Trying to determine locale when location services failed", v7, 2u);
  }

  v2 = [*(a1 + 32) getLocaleFromRemoteClient];
  if (![*(a1 + 32) isDefaultCountryCode:v2])
  {
    v4 = 8;
    if (!v2)
    {
      return;
    }

    goto LABEL_16;
  }

  v3 = [*(a1 + 32) getLocaleFromMultiple80211d];

  if (![*(a1 + 32) isDefaultCountryCode:v3])
  {
    v4 = 4;
    goto LABEL_13;
  }

  v2 = [*(a1 + 32) getLocaleFromPeer];

  if (![*(a1 + 32) isDefaultCountryCode:v2])
  {
    v4 = 5;
    if (!v2)
    {
      return;
    }

    goto LABEL_16;
  }

  v3 = [*(a1 + 32) getLocaleFromTimezone];

  if (![*(a1 + 32) isDefaultCountryCode:v3])
  {
    v4 = 6;
LABEL_13:
    v2 = v3;
    if (!v3)
    {
      return;
    }

    goto LABEL_16;
  }

  v2 = [*(a1 + 32) getLocaleFromUserDefaults];

  if ([*(a1 + 32) isDefaultCountryCode:v2])
  {

    v4 = 0;
    v2 = &stru_28487EF20;
  }

  else
  {
    v4 = 7;
    if (!v2)
    {
      return;
    }
  }

LABEL_16:
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [*(a1 + 32) setLocaleLastUpdatedTime:?];
  [*(a1 + 32) setAggressiveRetryAttemptsRemaining:5];
  v5 = [*(a1 + 32) retryTimer];

  if (v5)
  {
    v6 = [*(a1 + 32) retryTimer];
    dispatch_source_cancel(v6);

    [*(a1 + 32) setRetryTimer:0];
  }

  [*(a1 + 32) setCountryCode:v2 source:v4];
}

- (unsigned)getNetworkReachability
{
  v8 = *MEMORY[0x277D85DE8];
  address = xmmword_2333AB0B0;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  flags = 0;
  if (v2)
  {
    v3 = v2;
    SCNetworkReachabilityGetFlags(v2, &flags);
    CFRelease(v3);
    LOBYTE(v2) = (flags & 0x40002) == 2;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)getLocaleUsingGeoLocationCache:(id)a3
{
  v3 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    [v3 coordinate];
    v6 = v5;
    [v3 coordinate];
    v8 = [objc_alloc(MEMORY[0x277D0EB78]) initWithGEOCoordinate:{v6, v7}];
    if (v8)
    {
      [v3 altitude];
      [v8 setAltitude:v9];
      [v3 horizontalAccuracy];
      [v8 setHorizontalAccuracy:?];
      [v3 verticalAccuracy];
      [v8 setVerticalAccuracy:?];
      v10 = [v3 referenceFrame];
      if (v10 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v10 == 2);
      }

      [v8 setReferenceFrame:v11];
    }

    v12 = MEMORY[0x277D0EB30];
    v13 = MEMORY[0x277D85CD0];
    v14 = MEMORY[0x277D85CD0];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke;
    v18[3] = &unk_2789C66D8;
    v20 = &v21;
    v15 = v4;
    v19 = v15;
    [v12 fetchPossibleTerritoriesForLocation:v8 responseQueue:v13 responseBlock:v18];

    dispatch_semaphore_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
    v16 = v22[5];
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);

  return v16;
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_1();
    if (v6)
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_2();
      }

      goto LABEL_44;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  if (v5)
  {
    v28 = v6;
    v29 = a1;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = 0;
      v12 = *v34;
      v13 = MEMORY[0x277D86220];
      do
      {
        v14 = 0;
        do
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v33 + 1) + 8 * v14);
          if (v15)
          {
            if ([*(*(&v33 + 1) + 8 * v14) isDisputed])
            {
              if (!v10)
              {
                v10 = [v15 disputedTerritoryName];
                if (v10)
                {
                  v16 = [v15 disputedTerritoryName];
                  v17 = [v16 length];

                  if (v17)
                  {
                    v10 = [v15 disputedTerritoryName];
                    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v38 = v10;
                      _os_log_impl(&dword_2332D7000, v13, OS_LOG_TYPE_DEFAULT, "disputed region appointed: %@", buf, 0xCu);
                    }
                  }

                  else
                  {
                    v10 = 0;
                  }
                }
              }
            }

            else if (!v11)
            {
              v11 = [v15 iso3166CountryCode2];
              if (v11)
              {
                v18 = [v15 iso3166CountryCode2];
                v19 = [v18 length];

                if (v19)
                {
                  v11 = [v15 iso3166CountryCode2];
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    v20 = [v15 iso3166CountryCode2];
                    *buf = 138412290;
                    v38 = v20;
                    _os_log_impl(&dword_2332D7000, v13, OS_LOG_TYPE_DEFAULT, "iso appointed: %@", buf, 0xCu);
                  }
                }

                else
                {
                  v11 = 0;
                }
              }
            }
          }

          else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_3(&v31, v32);
          }

          ++v14;
        }

        while (v9 != v14);
        v21 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
        v9 = v21;
      }

      while (v21);
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (v10)
      {
        v22 = v10;
      }

      else
      {
        v22 = v11;
      }

      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "iso returned: %@", buf, 0xCu);
    }

    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = v11;
    }

    a1 = v29;
    objc_storeStrong((*(*(v29 + 40) + 8) + 40), v23);
    v24 = [*(*(*(v29 + 40) + 8) + 40) copy];
    v25 = *(*(v29 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    v5 = v30;
    v6 = v28;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_4();
  }

LABEL_44:
  dispatch_semaphore_signal(*(a1 + 32));

  v27 = *MEMORY[0x277D85DE8];
}

- (id)getLocaleUsingReverseGeocoder:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  if (v4)
  {
    if ([(WiFiLocaleManager *)self getNetworkReachability])
    {
      v5 = objc_alloc_init(MEMORY[0x277CBFBE0]);
      if (v5)
      {
        v6 = dispatch_semaphore_create(0);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __51__WiFiLocaleManager_getLocaleUsingReverseGeocoder___block_invoke;
        v10[3] = &unk_2789C6700;
        v12 = &v13;
        v7 = v6;
        v11 = v7;
        [v5 reverseGeocodeLocation:v4 completionHandler:v10];
        dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
        v8 = v14[5];

        goto LABEL_9;
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiLocaleManager getLocaleUsingReverseGeocoder:];
    }

    v8 = v14[5];
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __51__WiFiLocaleManager_getLocaleUsingReverseGeocoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (!a3)
  {
    if ([v11 count])
    {
      v5 = [v11 objectAtIndex:0];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 ISOcountryCode];
        v8 = [v7 copy];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)getRestrictedCountryCodeFromRegionInfo
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = xmmword_2789C6740;
  v14 = *&off_2789C6750;
  v15 = xmmword_2789C6760;
  v11 = xmmword_2789C6720;
  v12 = *&off_2789C6730;
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = &v12;
    v5 = @"PA";
    while ([v3 compare:v5 options:{1, v11, v12, v13, v14, v15}])
    {
      v6 = *v4;
      v4 += 2;
      v5 = v6;
      if (!v6)
      {
        v2 = 0;
        goto LABEL_7;
      }
    }

    v2 = [(__CFString *)*(v4 - 1) copy];
  }

LABEL_7:
  v7 = v2;

  for (i = 72; i != -8; i -= 8)
  {
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)getRestrictedCountryCodeFromTimezone
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v3 = v2;
  if (v2)
  {
    v4 = &v12 + 8;
    while (1)
    {
      v5 = [v3 name];
      v6 = [v5 compare:*(v4 - 1) options:1];

      if (!v6)
      {
        break;
      }

      v7 = *(v4 + 1);
      v4 += 16;
      if (!v7)
      {
        v2 = 0;
        goto LABEL_7;
      }
    }

    v2 = [*v4 copy];
  }

LABEL_7:
  v8 = v2;

  for (i = 72; i != -8; i -= 8)
  {
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)getStringOfLocaleSource:(int)a3
{
  if (a3 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_2789C67C0[a3];
  }
}

- (id)getLocaleFromMcc
{
  v19 = *MEMORY[0x277D85DE8];
  cf = 0;
  if ([(WiFiLocaleManager *)self testMcc]== 0xFFFF)
  {
    cf = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from MCC is disabled", buf, 2u);
    }

    goto LABEL_25;
  }

  if ([(WiFiLocaleManager *)self testMcc])
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%d", [(WiFiLocaleManager *)self testMcc]);
    cf = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v4, "Using testMcc [%@]", buf);
    }

    if (v3)
    {
      if (!MEMORY[0x282209FB0] || (ctServerConnectionRef = self->_ctServerConnectionRef, v9 = _CTServerConnectionCopyISOForMCC(), !v9))
      {
        v10 = [0 uppercaseString];
        goto LABEL_26;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
        *&buf[12] = 1024;
        *&buf[14] = v9;
        *&buf[18] = 1024;
        *&buf[20] = HIDWORD(v9);
        v11 = MEMORY[0x277D86220];
        v12 = "%s: Error _CTServerConnectionCopyISOForMCC: %d %d";
LABEL_23:
        v13 = 24;
        goto LABEL_24;
      }
    }
  }

  else if (MEMORY[0x282209FB8])
  {
    if (self->_ctServerConnectionRef || (v18 = 0, memset(buf, 0, sizeof(buf)), v5 = *MEMORY[0x277CBECE8], v6 = _CTServerConnectionCreateWithIdentifier(), (self->_ctServerConnectionRef = v6) != 0))
    {
      v7 = _CTServerConnectionCopyMobileCountryCode();
      if (!v7 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 136315650;
      *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 1024;
      *&buf[20] = HIDWORD(v7);
      v11 = MEMORY[0x277D86220];
      v12 = "%s: Error _CTServerConnectionCopyMobileCountryCode: %d %d";
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "[WiFiLocaleManager getLocaleFromMcc]";
      v11 = MEMORY[0x277D86220];
      v12 = "%s: Error: couldn't get CTServer connection";
      v13 = 12;
LABEL_24:
      _os_log_error_impl(&dword_2332D7000, v11, OS_LOG_TYPE_ERROR, v12, buf, v13);
    }
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = cf;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Locale from MCC [%@]: <%@>", buf, 0x16u);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)getLocaleFromLocation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = getenv("__OSINSTALL_ENVIRONMENT");
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      goto LABEL_3;
    }

    v6 = [OUTLINED_FUNCTION_3() getLocaleUsingGeoLocationCache:?];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v9, "Locale from location services using geolocation cache: <%@>", &v12);
    }

    if (!v6)
    {
LABEL_3:
      v6 = [OUTLINED_FUNCTION_3() getLocaleUsingBoundingBoxes:?];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v7, "Locale from location services using bounding boxes: <%@>", &v12);
      }

      if (!(v5 | v6))
      {
        v6 = [OUTLINED_FUNCTION_3() getLocaleUsingReverseGeocoder:?];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138412290;
          v13 = v6;
          OUTLINED_FUNCTION_2(&dword_2332D7000, MEMORY[0x277D86220], v8, "Locale from location services using reverse geocoder: <%@>", &v12);
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)getLocaleUsingBoundingBoxes:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 coordinate];
    v6 = v5;
    [v4 coordinate];
    v8 = &qword_27DE0B210;
    v9 = 100;
    while (v7 < *(v8 - 2) || v7 > *v8 || v6 > *(v8 - 1) || v6 < *(v8 + 1))
    {
      v8 += 5;
      if (!--v9)
      {
        goto LABEL_8;
      }
    }

    v10 = v8[2];
  }

  else
  {
LABEL_8:
    v10 = 0;
  }

  return v10;
}

- (void)determineLocale:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  [a2 localeCheckSuspended];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xEu);
  v7 = *MEMORY[0x277D85DE8];
}

void __40__WiFiLocaleManager_didUpdateLocations___block_invoke_cold_1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
  }
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__WiFiLocaleManager_getLocaleUsingGeoLocationCache___block_invoke_cold_3(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "empty territory element!", buf, 2u);
}

@end