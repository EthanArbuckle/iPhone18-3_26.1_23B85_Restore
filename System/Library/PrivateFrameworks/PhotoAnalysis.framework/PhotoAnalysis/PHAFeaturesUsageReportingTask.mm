@interface PHAFeaturesUsageReportingTask
+ (BOOL)shouldReportSettingsWithLoggingConnection:(id)a3;
+ (id)_dateFormatter;
+ (unsigned)_valueForSetting:(__CFString *)a3 withDefaultValue:(unsigned __int8)a4;
+ (void)_reportAlchemistSettings:(id)a3;
+ (void)_reportCameraSharingSettingsWithPhotoLibrary:(id)a3 andAnalytics:(id)a4;
+ (void)_reportSettings:(id)a3;
+ (void)updateLastReportSettings;
- (BOOL)recordFeatureUsageFromCounts:(id)a3 forPhotoLibrary:(id)a4 loggingConnection:(id)a5 error:(id *)a6;
- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)runWithPhotoLibrary:(id)a3 analytics:(id)a4 progressReporter:(id)a5 error:(id *)a6;
- (BOOL)shouldRunWithGraphManager:(id)a3;
- (id)_libraryScopedWorkerFeaturesUsageForLibrary:(id)a3 loggingConnection:(id)a4 error:(id *)a5;
- (id)_libraryScopedWorkerFeaturesUsageURLForPhotoLibrary:(id)a3;
- (void)timeoutFatal:(BOOL)a3;
@end

@implementation PHAFeaturesUsageReportingTask

+ (unsigned)_valueForSetting:(__CFString *)a3 withDefaultValue:(unsigned __int8)a4
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(a3, @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return a4;
  }

  return result;
}

+ (void)_reportSettings:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v7 = objc_alloc_init(v4);
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(a1, "_valueForSetting:withDefaultValue:", @"shouldModulateImages", 1)}];
  [v7 setObject:v6 forKeyedSubscript:@"view_full_hdr"];

  [v5 sendEvent:@"com.apple.photos.settings" withPayload:v7];
}

+ (void)_reportCameraSharingSettingsWithPhotoLibrary:(id)a3 andAnalytics:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 librarySpecificFetchOptions];
  v8 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:v7];
  v9 = [v8 firstObject];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"CameraSharingEnabled", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat) || !keyExistsAndHasValidFormat)
    {
      if (CFPreferencesGetAppBooleanValue(@"CameraAutoShareEnabled", @"com.apple.mobileslideshow", 0))
      {
        v11 = @"auto";
      }

      else
      {
        v11 = @"manual";
      }

      [v10 setObject:v11 forKeyedSubscript:@"mode"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:{CFPreferencesGetAppBooleanValue(@"CameraShareFromHomeEnabled", @"com.apple.mobileslideshow", 0) != 0}];
      [v10 setObject:v12 forKeyedSubscript:@"home"];
    }

    else
    {
      [v10 setObject:@"disabled" forKeyedSubscript:@"mode"];
    }

    v13 = [v5 librarySpecificFetchOptions];
    [v13 setShouldPrefetchCount:1];
    v14 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v9 options:v13];
    v15 = [v14 count];

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v10 setObject:v16 forKeyedSubscript:@"participantsCount"];

    [v6 sendEvent:@"com.apple.photos.cpa.camera_sharing" withPayload:v10];
  }
}

+ (void)_reportAlchemistSettings:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.mobileslideshow");
  keyExistsAndHasValidFormat = 0;
  if (!CFPreferencesGetAppBooleanValue(@"EnableAlchemizeButton", @"com.apple.mobileslideshow", &keyExistsAndHasValidFormat))
  {
    [v3 sendEvent:@"com.apple.photos.alchemist.disabled" withPayload:MEMORY[0x277CBEC10]];
  }
}

+ (void)updateLastReportSettings
{
  v2 = MEMORY[0x277D27690];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 components:8 fromDate:v3];
  v5 = [v4 month];

  v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v6 setInteger:v5 forKey:@"PHALastSettingsReportMonth"];
  [v6 synchronize];
}

+ (BOOL)shouldReportSettingsWithLoggingConnection:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277D27690];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 components:24 fromDate:v5];

  v7 = [v6 day];
  if (v7 < 15)
  {
    v12 = [v6 month];
    v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [v13 integerForKey:@"PHALastSettingsReportMonth"];

    if (v12 != v14)
    {
      v15 = 1;
      goto LABEL_10;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109120;
      v18 = v12;
      v9 = "[PHAFeaturesUsageReportingTask] skip settings - already sent this month: %d";
      v10 = v3;
      v11 = 8;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v7;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 67109376;
      v18 = v8;
      v19 = 1024;
      v20 = 14;
      v9 = "[PHAFeaturesUsageReportingTask] skip settings - day of the month %d > %d";
      v10 = v3;
      v11 = 14;
LABEL_7:
      _os_log_impl(&dword_22FA28000, v10, OS_LOG_TYPE_DEFAULT, v9, &v17, v11);
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setTimeStyle:0];
  [v2 setDateStyle:0];
  [v2 setDateFormat:@"yyyy-MM-dd"];
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:@"en_US_POSIX"];
  [v2 setCalendar:v4];

  return v2;
}

- (id)_libraryScopedWorkerFeaturesUsageURLForPhotoLibrary:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9 = 0;
  v4 = [v3 urlForApplicationDataFolderIdentifier:1 error:&v9];
  v5 = v9;
  if (v4)
  {
    v6 = [v4 URLByAppendingPathComponent:@"PhotoAnalysisServiceFeaturesAnalytics.plist"];
  }

  else
  {
    if (__PXLog_genericOnceToken != -1)
    {
      dispatch_once(&__PXLog_genericOnceToken, &__block_literal_global_1489);
    }

    v7 = __PXLog_genericOSLog;
    if (os_log_type_enabled(__PXLog_genericOSLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v3;
      v12 = 2112;
      v13 = v5;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "Error: no persistentStorageDirectoryURL photoLibrary = %@. Error: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t __85__PHAFeaturesUsageReportingTask__libraryScopedWorkerFeaturesUsageURLForPhotoLibrary___block_invoke()
{
  __PXLog_genericOSLog = os_log_create("com.apple.photoanalysisd", "generic");

  return MEMORY[0x2821F96F8]();
}

- (id)_libraryScopedWorkerFeaturesUsageForLibrary:(id)a3 loggingConnection:(id)a4 error:(id *)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(PHAFeaturesUsageReportingTask *)self _libraryScopedWorkerFeaturesUsageURLForPhotoLibrary:a3];
  if (v9)
  {
    v15 = 0;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v9 error:&v15];
    v11 = v15;
    if ([v11 code] == 260)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_DEFAULT, "[PHAFeaturesUsageReportingTask] Cannot find feature usage file at path %@, error: %@", buf, 0x16u);
      }

      v12 = MEMORY[0x277CBEC10];
    }

    else
    {
      if (a5)
      {
        v13 = v11;
        *a5 = v11;
      }

      v12 = v10;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)recordFeatureUsageFromCounts:(id)a3 forPhotoLibrary:(id)a4 loggingConnection:(id)a5 error:(id *)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  oslog = a5;
  if ([v10 count])
  {
    v12 = [(PHAFeaturesUsageReportingTask *)self _libraryScopedWorkerFeaturesUsageURLForPhotoLibrary:v11];
    if (v12)
    {
      v13 = [objc_opt_class() _dateFormatter];
      v14 = [MEMORY[0x277CBEAA8] date];
      v15 = [v13 stringFromDate:v14];

      v50 = v15;
      v48 = [v13 dateFromString:v15];
      if (v48)
      {
        v16 = [(PHAFeaturesUsageReportingTask *)self _libraryScopedWorkerFeaturesUsageForLibrary:v11 loggingConnection:oslog error:0];
        v17 = [v16 objectForKeyedSubscript:@"firstSeenDates_V2"];
        v18 = [v16 objectForKeyedSubscript:@"lastSeenDates_v2"];
        if (v17)
        {
          v19 = [v17 mutableCopy];
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v16, "count")}];
        }

        v21 = v19;
        if (v18)
        {
          v22 = [v18 mutableCopy];
        }

        else
        {
          v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v16, "count")}];
        }

        v49 = v22;
        if (v21 && v22)
        {
          v42 = v18;
          v43 = v17;
          v44 = v16;
          v45 = v12;
          v41 = a6;
          v46 = v11;
          v47 = v10;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v23 = v10;
          v24 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v53;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v53 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v52 + 1) + 8 * i);
                v29 = [v21 objectForKeyedSubscript:v28];
                v30 = [v13 dateFromString:v29];

                if (!v30 || ([v30 timeIntervalSinceDate:v48], v31 > 0.0))
                {
                  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v59 = v28;
                    _os_log_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_INFO, "Feature [%@] - set first seen", buf, 0xCu);
                  }

                  [v21 setObject:v50 forKeyedSubscript:v28];
                }

                v32 = [v23 objectForKeyedSubscript:v28];
                v33 = [v32 integerValue];

                if (v33 >= 1)
                {
                  v34 = [v49 objectForKeyedSubscript:v28];
                  v35 = [v13 dateFromString:v34];

                  if (!v35 || ([v35 timeIntervalSinceDate:v48], v36 != 0.0))
                  {
                    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v59 = v28;
                      _os_log_debug_impl(&dword_22FA28000, oslog, OS_LOG_TYPE_DEBUG, "Feature [%@] - set last seen", buf, 0xCu);
                    }

                    [v49 setObject:v50 forKeyedSubscript:v28];
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v25);
          }

          v17 = v43;
          v18 = v42;
          if ([v43 isEqualToDictionary:v21] && (objc_msgSend(v42, "isEqualToDictionary:", v49) & 1) != 0)
          {
            v20 = 1;
            v11 = v46;
            v10 = v47;
            v12 = v45;
          }

          else
          {
            v56[0] = @"firstSeenDates_V2";
            v56[1] = @"lastSeenDates_v2";
            v57[0] = v21;
            v57[1] = v49;
            v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
            v38 = [MEMORY[0x277CCAC58] dataWithPropertyList:v37 format:100 options:0 error:v41];
            v39 = v38;
            v12 = v45;
            v11 = v46;
            if (v38)
            {
              v20 = [v38 writeToURL:v45 options:1073741825 error:v41];
            }

            else
            {
              v20 = 0;
            }

            v10 = v47;
          }

          v16 = v44;
        }

        else if (a6)
        {
          [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Update feature usage - first or last seen dates are nil"];
          *a6 = v20 = 0;
        }

        else
        {
          v20 = 0;
        }
      }

      else if (a6)
      {
        [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:1 localizedDescription:@"Update feature usage - today's day is nil"];
        *a6 = v20 = 0;
      }

      else
      {
        v20 = 0;
      }
    }

    else if (a6)
    {
      [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9 localizedDescription:@"Update feature usage - featuresURL is nil"];
      *a6 = v20 = 0;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)timeoutFatal:(BOOL)a3
{
  if (a3)
  {
    __assert_rtn("[PHAFeaturesUsageReportingTask timeoutFatal:]", "PHAFeaturesUsageReportingTask.m", 268, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHAFeaturesUsageReportingTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithPhotoLibrary:(id)a3 analytics:(id)a4 progressReporter:(id)a5 error:(id *)a6
{
  v106[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = os_log_create("com.apple.PhotosGraph", "metrics");
  if ([v10 isSystemPhotoLibrary] && objc_msgSend(objc_opt_class(), "shouldReportSettingsWithLoggingConnection:", v13))
  {
    v105 = @"featured_content_allowed";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:PLIsFeaturedContentAllowed()];
    v106[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:&v105 count:1];
    [v11 sendEvent:@"com.apple.photos.cpa.featured_content" withPayload:v15];

    [objc_opt_class() _reportCameraSharingSettingsWithPhotoLibrary:v10 andAnalytics:v11];
    [objc_opt_class() _reportSettings:v11];
    [objc_opt_class() updateLastReportSettings];
  }

  v16 = [(PHAFeaturesUsageReportingTask *)self _libraryScopedWorkerFeaturesUsageForLibrary:v10 loggingConnection:v13 error:a6];
  v17 = v16;
  if (!v16)
  {
    v60 = 0;
    goto LABEL_68;
  }

  if (![v16 count])
  {
    v60 = 1;
    goto LABEL_68;
  }

  v18 = [objc_opt_class() _dateFormatter];
  v19 = [MEMORY[0x277CBEAA8] date];
  v20 = [v18 stringFromDate:v19];

  v77 = v18;
  v69 = v20;
  v79 = [v18 dateFromString:v20];
  v21 = [v17 objectForKeyedSubscript:@"firstSeenDates_V2"];
  v80 = [v17 objectForKeyedSubscript:@"lastSeenDates_v2"];
  v22 = objc_alloc(MEMORY[0x277CBEB18]);
  v78 = v21;
  v23 = [v21 allKeys];
  v24 = [v22 initWithArray:v23];

  v68 = v24;
  if (![v24 count])
  {
    v60 = 1;
    v28 = v77;
    v61 = v20;
    goto LABEL_67;
  }

  v64 = a6;
  v65 = v17;
  v66 = v10;
  [v24 pha_shuffle];
  v25 = v24;
  v26 = [v24 count];
  v74 = v11;
  v27 = [v11 systemProperties];
  v67 = *MEMORY[0x277CF6E10];
  v70 = [v27 propertyForKey:? forEventName:? payloadForSystemPropertyExtraction:?];

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v25;
  v28 = v77;
  v29 = v78;
  v30 = v80;
  v84 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
  if (!v84)
  {
    goto LABEL_53;
  }

  v75 = 0;
  v32 = 1.0 / v26;
  v83 = *v87;
  v33 = 0.0;
  *&v31 = 138412546;
  v63 = v31;
  v71 = v13;
  v72 = v12;
  while (2)
  {
    for (i = 0; i != v84; ++i)
    {
      if (*v87 != v83)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v86 + 1) + 8 * i);
      if ([v12 isCancelledWithProgress:{v33, v63}])
      {

        goto LABEL_58;
      }

      v36 = [v29 objectForKeyedSubscript:v35];
      v37 = [v30 objectForKeyedSubscript:v35];
      if (v36)
      {
        v85 = [v28 dateFromString:v36];
        if (!v85)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v91 = v35;
            _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - skip reporting, first seen date format is invalid", buf, 0xCu);
          }

          goto LABEL_50;
        }

        if (v37)
        {
          v38 = [v28 dateFromString:v37];
          if (!v38)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v91 = v35;
              _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - skip reporting, last seen date format is invalid", buf, 0xCu);
            }

            v39 = 0;
            goto LABEL_49;
          }
        }

        else
        {
          v38 = [MEMORY[0x277CBEAA8] distantPast];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *v91 = v35;
            _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - no last seen date, using distant past", buf, 0xCu);
          }
        }

        [v79 timeIntervalSinceDate:v85];
        v41 = v40 / 86400.0;
        v81 = v38;
        [v79 timeIntervalSinceDate:v38];
        v43 = v42;
        v44 = [v35 hasPrefix:@"com.apple.photos.cpa.active_user_feature."];
        if (v44)
        {
          goto LABEL_27;
        }

        if (PFOSVariantHasInternalDiagnostics())
        {
          v59 = 7.0;
        }

        else
        {
          v59 = 30.0;
        }

        if (v41 <= v59)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v63;
            *v91 = v35;
            *&v91[8] = 2048;
            *&v91[10] = v59;
            _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature: [%@] - skip generic active_user_feature event, not seen for %f days", buf, 0x16u);
          }
        }

        else if (v75 <= 9)
        {
LABEL_27:
          v76 = v44;
          v45 = v43 / 86400.0;
          v46 = [MEMORY[0x277CCABB0] numberWithDouble:v41 / 7.0];
          v47 = [v46 integerValue];

          v48 = [MEMORY[0x277CCABB0] numberWithDouble:v41 / 30.0];
          v49 = [v48 integerValue];

          v50 = objc_alloc(MEMORY[0x277CBEB38]);
          v103[0] = v35;
          v102[0] = @"cpa_feature_name";
          v102[1] = @"cpa_feature_daily";
          v51 = [MEMORY[0x277CCABB0] numberWithBool:v45 <= 1.0];
          v103[1] = v51;
          v102[2] = @"cpa_feature_total_weeks";
          v52 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
          v103[2] = v52;
          v102[3] = @"cpa_feature_total_months";
          v73 = v49;
          v53 = [MEMORY[0x277CCABB0] numberWithInteger:v49];
          v103[3] = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:4];
          v55 = [v50 initWithDictionary:v54];

          if (v41 >= 7.0)
          {
            v56 = [MEMORY[0x277CCABB0] numberWithBool:v45 <= 7.0];
            [v55 setObject:v56 forKeyedSubscript:@"cpa_feature_weekly"];
          }

          v13 = v71;
          v30 = v80;
          if (v41 >= 30.0)
          {
            v57 = [MEMORY[0x277CCABB0] numberWithBool:v45 <= 30.0];
            [v55 setObject:v57 forKeyedSubscript:@"cpa_feature_monthly"];
          }

          v29 = v78;
          if (v76)
          {
            v58 = [v35 substringFromIndex:{objc_msgSend(@"com.apple.photos.cpa.active_user_feature.", "length")}];
            [v55 setObject:v58 forKeyedSubscript:@"cpa_feature_name"];

            [v55 setObject:v70 forKeyedSubscript:v67];
            [v74 sendEvent:v35 withPayload:v55];
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *v91 = v35;
              _os_log_impl(&dword_22FA28000, v71, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - report dedicated active_user_feature event", buf, 0xCu);
            }

            v28 = v77;
          }

          else
          {
            [v74 sendEvent:@"com.apple.photos.cpa.active_user_feature" withPayload:v55];
            v28 = v77;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              *buf = 138413826;
              *v91 = v35;
              *&v91[8] = 2048;
              *&v91[10] = v41;
              v92 = 2048;
              v93 = v45;
              v94 = 1024;
              v95 = v45 <= 1.0;
              v96 = 1024;
              v97 = v45 <= 7.0;
              v98 = 1024;
              v99 = v45 <= 30.0;
              v100 = 2048;
              v101 = v73;
              _os_log_impl(&dword_22FA28000, v71, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - f[%f], l[%f], reporting: d[%d], w[%d], m[%d], tm[%ld]", buf, 0x3Cu);
            }

            ++v75;
          }

          v12 = v72;
          goto LABEL_48;
        }

        v30 = v80;
LABEL_48:
        v39 = v81;
LABEL_49:

LABEL_50:
        goto LABEL_51;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v91 = v35;
        _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_INFO, "[PHAFeaturesUsageReportingTask] Feature [%@] - skip reporting, missing first seen date", buf, 0xCu);
      }

LABEL_51:
      v33 = v32 + v33;
    }

    v84 = [obj countByEnumeratingWithState:&v86 objects:v104 count:16];
    if (v84)
    {
      continue;
    }

    break;
  }

LABEL_53:

  if ([v12 isCancelledWithProgress:1.0])
  {
LABEL_58:
    v10 = v66;
    v61 = v69;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v91 = 262;
      *&v91[4] = 2080;
      *&v91[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHAFeaturesUsageReportingTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v11 = v74;
    v17 = v65;
    if (v64 && !*v64)
    {
      [MEMORY[0x277D22C28] errorForCode:-4];
      *v64 = v60 = 0;
    }

    else
    {
      v60 = 0;
    }

    v28 = v77;
  }

  else
  {
    v60 = 1;
    v17 = v65;
    v10 = v66;
    v11 = v74;
    v61 = v69;
  }

LABEL_67:
LABEL_68:

  return v60;
}

- (BOOL)runWithGraphManager:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [v9 workingContext];
  v11 = [v10 photoLibrary];
  v12 = [v9 analytics];

  LOBYTE(a5) = [(PHAFeaturesUsageReportingTask *)self runWithPhotoLibrary:v11 analytics:v12 progressReporter:v8 error:a5];
  return a5;
}

- (BOOL)shouldRunWithGraphManager:(id)a3
{
  v4 = [a3 photoLibrary];
  LOBYTE(self) = [(PHAFeaturesUsageReportingTask *)self shouldRunWithPhotoLibrary:v4];

  return self;
}

@end