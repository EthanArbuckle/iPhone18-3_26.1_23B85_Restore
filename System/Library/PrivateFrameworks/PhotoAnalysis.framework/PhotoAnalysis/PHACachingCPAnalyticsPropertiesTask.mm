@interface PHACachingCPAnalyticsPropertiesTask
+ (BOOL)_hasAppleMusicSubscriptionWithLoggingConnection:(id)connection;
+ (id)_ageRangeDescriptionFromBirthday:(id)birthday;
+ (id)_fetchDemographicsSummaryWithLoggingConnection:(id)connection;
+ (id)_fetchLibrarySummaryForPhotoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter;
+ (id)_genderDescriptionFromGivenName:(id)name;
+ (id)_meContactWithLoggingConnection:(id)connection;
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)runWithPhotoLibrary:(id)library analytics:(id)analytics progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (BOOL)shouldRunWithPhotoLibrary:(id)library;
- (id)_buildPropertyCacheForPhotoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHACachingCPAnalyticsPropertiesTask

+ (BOOL)_hasAppleMusicSubscriptionWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v5 = MEMORY[0x277D3BAB0];
  ignoreProgress = [MEMORY[0x277D22C80] ignoreProgress];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __87__PHACachingCPAnalyticsPropertiesTask__hasAppleMusicSubscriptionWithLoggingConnection___block_invoke;
  v13[3] = &unk_2788B2060;
  v16 = &v17;
  v7 = connectionCopy;
  v14 = v7;
  v8 = v4;
  v15 = v8;
  [v5 checkMusicCatalogEligibilityWithProgressReporter:ignoreProgress completionHandler:v13];

  v9 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v8, v9) && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "[PHACachingCPAnalyticsPropertiesTask] Checking Apple Music Catalog Timeout", v12, 2u);
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v10;
}

void __87__PHACachingCPAnalyticsPropertiesTask__hasAppleMusicSubscriptionWithLoggingConnection___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2 & a3;
  if ((a2 & 1) == 0)
  {
    v8 = *(a1 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22FA28000, v8, OS_LOG_TYPE_DEFAULT, "[PHACachingCPAnalyticsPropertiesTask] Error checking Apple Music Catalog eligibility (%@)", &v9, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (id)_ageRangeDescriptionFromBirthday:(id)birthday
{
  birthdayCopy = birthday;
  v4 = birthdayCopy;
  if (!birthdayCopy || [birthdayCopy year] < 1900 || objc_msgSend(v4, "day") == 1 && objc_msgSend(v4, "month") == 1)
  {
    v5 = @"Unknown";
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    [v4 setCalendar:currentCalendar];
    date = [v4 date];
    date2 = [MEMORY[0x277CBEAA8] date];
    v9 = [currentCalendar components:4 fromDate:date toDate:date2 options:0];
    year = [v9 year];
    v11 = @"<18";
    v12 = @"18-25";
    v13 = @"26-35";
    v14 = @"36-45";
    v15 = @"46-55";
    v16 = @">65";
    if (year < 0x42)
    {
      v16 = @"56-65";
    }

    if (year >= 0x38)
    {
      v15 = v16;
    }

    if (year >= 0x2E)
    {
      v14 = v15;
    }

    if (year >= 0x24)
    {
      v13 = v14;
    }

    if (year >= 0x1A)
    {
      v12 = v13;
    }

    if (year >= 0x12)
    {
      v11 = v12;
    }

    if (year >= 1)
    {
      v5 = v11;
    }

    else
    {
      v5 = @"Unknown";
    }
  }

  return v5;
}

+ (id)_genderDescriptionFromGivenName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = @"Unknown";
    if ([nameCopy UTF8String])
    {
      v5 = objc_alloc_init(MEMORY[0x277D003E8]);
      v6 = [v5 genderMajorityForGivenName:nameCopy];
      v7 = @"Male";
      if (v6 != 2)
      {
        v7 = @"Unknown";
      }

      if (v6 == 1)
      {
        v4 = @"Female";
      }

      else
      {
        v4 = v7;
      }
    }
  }

  else
  {
    v4 = @"Unknown";
  }

  return v4;
}

+ (id)_meContactWithLoggingConnection:(id)connection
{
  v14[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] Start fetching Me contact card", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  if (([MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] - 1) > 1)
  {
    v6 = *MEMORY[0x277CBCF90];
    v14[0] = *MEMORY[0x277CBD000];
    v14[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
    v11 = 0;
    v8 = [v4 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v11];
    v9 = v11;

    if (v9)
    {
      if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v9;
        _os_log_error_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_ERROR, "[PHACachingCPAnalyticsPropertiesTask] Error fetching the me Contact Card (%@)", buf, 0xCu);
      }

      v5 = 0;
    }

    else
    {
      v5 = v8;
    }
  }

  else
  {
    if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] Not authorized to get meContact", buf, 2u);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_fetchDemographicsSummaryWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] Start caching CPAnalytics demographics summary", v13, 2u);
  }

  v5 = [self _meContactWithLoggingConnection:connectionCopy];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = v6;
  if (v5)
  {
    birthday = [v5 birthday];
    v9 = [self _ageRangeDescriptionFromBirthday:birthday];
    [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277CF6DF8]];

    givenName = [v5 givenName];
    v11 = [self _genderDescriptionFromGivenName:givenName];
    [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277CF6E00]];
  }

  else
  {
    [v6 setObject:@"Unknown" forKeyedSubscript:*MEMORY[0x277CF6DF8]];
    [v7 setObject:@"Unknown" forKeyedSubscript:*MEMORY[0x277CF6E00]];
  }

  return v7;
}

+ (id)_fetchLibrarySummaryForPhotoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter
{
  v61 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  reporterCopy = reporter;
  if (os_log_type_enabled(connectionCopy, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22FA28000, connectionCopy, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] Start caching CPAnalytics library summary", buf, 2u);
  }

  if (!libraryCopy)
  {
    v14 = MEMORY[0x277CBEC10];
    goto LABEL_33;
  }

  v10 = reporterCopy;
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
  [librarySpecificFetchOptions setShouldPrefetchCount:1];
  [librarySpecificFetchOptions setIsExclusivePredicate:1];
  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithMediaType:1 options:librarySpecificFetchOptions];
  v13 = [v12 count];
  if ([v10 isCancelledWithProgress:0.1])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v58 = 198;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v14 = MEMORY[0x277CBEC10];
    goto LABEL_32;
  }

  v15 = [MEMORY[0x277CD97A8] fetchAssetsWithMediaType:2 options:librarySpecificFetchOptions];
  v16 = [v15 count];
  if ([v10 isCancelledWithProgress:0.2])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v58 = 202;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v14 = MEMORY[0x277CBEC10];
    goto LABEL_31;
  }

  v54 = [MEMORY[0x277CD98F8] fetchMomentsWithOptions:librarySpecificFetchOptions];
  librarySpecificFetchOptions2 = [libraryCopy librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setShouldPrefetchCount:1];
  [librarySpecificFetchOptions2 setPersonContext:1];
  v53 = librarySpecificFetchOptions2;
  v18 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:librarySpecificFetchOptions2];
  if ([v10 isCancelledWithProgress:0.3])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v58 = 212;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      v19 = MEMORY[0x277D86220];
LABEL_19:
      _os_log_impl(&dword_22FA28000, v19, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }
  }

  else
  {
    [libraryCopy ratioOfAssetsWithScenesProcessed];
    v21 = v20;
    [libraryCopy ratioOfAssetsWithFacesProcessed];
    v23 = v22;
    [libraryCopy ratioOfAssetsWithMediaAnalysisVideoProcessed];
    v25 = v24;
    [libraryCopy ratioOfAssetsWithMediaAnalysisImageProcessed];
    v27 = v26;
    if (![v10 isCancelledWithProgress:0.5])
    {
      v52 = v18;
      isCloudPhotoLibraryEnabled = [libraryCopy isCloudPhotoLibraryEnabled];
      v50 = v15;
      if (isCloudPhotoLibraryEnabled)
      {
        librarySpecificFetchOptions3 = [libraryCopy librarySpecificFetchOptions];
        [librarySpecificFetchOptions3 setShouldPrefetchCount:1];
        v29 = [MEMORY[0x277CD98A8] fetchActiveLibraryScopeWithOptions:librarySpecificFetchOptions3];
        v46 = [v29 count] != 0;
      }

      else
      {
        v46 = 0;
      }

      cplStatus = [libraryCopy cplStatus];
      v55[0] = *MEMORY[0x277CF6E78];
      v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
      v56[0] = v49;
      v55[1] = *MEMORY[0x277CF6E88];
      v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      v56[1] = v48;
      v55[2] = *MEMORY[0x277CF6E40];
      v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16 + v13];
      v56[2] = v47;
      v55[3] = *MEMORY[0x277CF6E68];
      v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v54, "count")}];
      v56[3] = v45;
      v55[4] = *MEMORY[0x277CF6E70];
      v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v52, "count")}];
      v56[4] = v44;
      v55[5] = *MEMORY[0x277CF6E80];
      v43 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
      v56[5] = v43;
      v55[6] = *MEMORY[0x277CF6E48];
      v40 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      v56[6] = v40;
      v55[7] = *MEMORY[0x277CF6E60];
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v56[7] = v39;
      v55[8] = *MEMORY[0x277CF6E58];
      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
      v56[8] = v38;
      v55[9] = *MEMORY[0x277CF6E98];
      v42 = [MEMORY[0x277CCABB0] numberWithBool:isCloudPhotoLibraryEnabled];
      v56[9] = v42;
      v55[10] = *MEMORY[0x277CF6EA0];
      v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cplStatus, "isExceedingQuota")}];
      v56[10] = v37;
      v55[11] = *MEMORY[0x277CF6EB0];
      v36 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cplStatus, "lowDiskSpace")}];
      v56[11] = v36;
      v55[12] = *MEMORY[0x277CF6EB8];
      v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cplStatus, "veryLowDiskSpace")}];
      v56[12] = v30;
      v55[13] = *MEMORY[0x277CF6EA8];
      v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(cplStatus, "hasChangesToProcess")}];
      v56[13] = v31;
      v55[14] = *MEMORY[0x277CF6E90];
      v32 = [MEMORY[0x277CCABB0] numberWithBool:v46];
      v56[14] = v32;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:15];

      if ([v10 isCancelledWithProgress:1.0])
      {
        v34 = v33;
        v15 = v50;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v58 = 252;
          v59 = 2080;
          v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
          _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v14 = MEMORY[0x277CBEC10];
      }

      else
      {
        v34 = v33;
        v14 = v33;
        v15 = v50;
      }

      v18 = v52;

      goto LABEL_30;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v58 = 218;
      v59 = 2080;
      v60 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      v19 = MEMORY[0x277D86220];
      goto LABEL_19;
    }
  }

  v14 = MEMORY[0x277CBEC10];
LABEL_30:

LABEL_31:
LABEL_32:

LABEL_33:

  return v14;
}

- (id)_buildPropertyCacheForPhotoLibrary:(id)library loggingConnection:(id)connection progressReporter:(id)reporter
{
  v23 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  reporterCopy = reporter;
  libraryCopy = library;
  v10 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.3];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [objc_opt_class() _fetchLibrarySummaryForPhotoLibrary:libraryCopy loggingConnection:connectionCopy progressReporter:v10];

  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277CF6DF0]];
  v13 = [objc_opt_class() _fetchDemographicsSummaryWithLoggingConnection:connectionCopy];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x277CF6DE0]];

  if ([reporterCopy isCancelledWithProgress:0.6])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = 67109378;
      v20 = 175;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      v14 = MEMORY[0x277D86220];
LABEL_7:
      _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", &v19, 0x12u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(objc_opt_class(), "_hasAppleMusicSubscriptionWithLoggingConnection:", connectionCopy)}];
  [v11 setObject:v15 forKeyedSubscript:*MEMORY[0x277CF6E10]];

  if ([reporterCopy isCancelledWithProgress:1.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = 67109378;
      v20 = 178;
      v21 = 2080;
      v22 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
      v14 = MEMORY[0x277D86220];
      goto LABEL_7;
    }

LABEL_8:
    v16 = MEMORY[0x277CBEC10];
    goto LABEL_10;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [v11 setObject:date forKeyedSubscript:*MEMORY[0x277CF6DE8]];

  v16 = v11;
LABEL_10:

  return v16;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHACachingCPAnalyticsPropertiesTask timeoutFatal:]", "PHACachingCPAnalyticsPropertiesTask.m", 159, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHACachingCPAnalyticsPropertiesTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithPhotoLibrary:(id)library analytics:(id)analytics progressReporter:(id)reporter error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  reporterCopy = reporter;
  if (![reporterCopy isCancelledWithProgress:0.0])
  {
    v12 = os_log_create("com.apple.PhotosGraph", "metrics");
    v13 = os_signpost_id_generate(v12);
    info = 0;
    mach_timebase_info(&info);
    v14 = v12;
    v15 = v14;
    v16 = v13 - 1;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CacheCPAnalyticsProperties", "", buf, 2u);
    }

    v50 = mach_absolute_time();
    v52 = [reporterCopy childProgressReporterFromStart:0.0 toEnd:0.5];
    v53 = [(PHACachingCPAnalyticsPropertiesTask *)self _buildPropertyCacheForPhotoLibrary:libraryCopy loggingConnection:v15 progressReporter:?];
    v57 = 0;
    v17 = [libraryCopy urlForApplicationDataFolderIdentifier:9 error:&v57];
    v18 = v57;
    if (!v17 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v60 = v18;
      _os_log_error_impl(&dword_22FA28000, v15, OS_LOG_TYPE_ERROR, "[PHACachingCPAnalyticsPropertiesTask] Failed to access the analytics URL. Error: %@", buf, 0xCu);
    }

    v51 = v18;
    v19 = *MEMORY[0x277CF6E38];
    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"temp-%@", *MEMORY[0x277CF6E38]];
    v21 = [v17 URLByAppendingPathComponent:v20];

    v54 = v21;
    if (!v21)
    {
      v23 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v26 = v15;
      v27 = v26;
      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v27, OS_SIGNPOST_INTERVAL_END, v13, "CacheCPAnalyticsProperties", "", buf, 2u);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v60 = "CacheCPAnalyticsProperties";
        *&v60[8] = 2048;
        *&v60[10] = ((((v23 - v50) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22FA28000, v27, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22FA28000, v27, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] CPAnalytics TemporaryCacheFile URL is nil", buf, 2u);
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:9];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      v22 = v51;
      goto LABEL_79;
    }

    if ([reporterCopy isCancelledWithProgress:0.6])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v60 = 123;
        *&v60[4] = 2080;
        *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
        _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v22 = v51;
      if (error && !*error)
      {
        [MEMORY[0x277D22C28] errorForCode:-4];
        *error = v11 = 0;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_79;
    }

    v56 = 0;
    v28 = [v53 writeToURL:v21 error:&v56];
    v29 = v56;
    if (v28)
    {
      if ([reporterCopy isCancelledWithProgress:0.7])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v60 = 136;
          *&v60[4] = 2080;
          *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
          _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v22 = v51;
        v30 = v29;
        if (error && !*error)
        {
          [MEMORY[0x277D22C28] errorForCode:-4];
          *error = v11 = 0;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_78;
      }

      v37 = [v17 URLByAppendingPathComponent:v19];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v55 = v29;
      v49 = v37;
      LOBYTE(v37) = [defaultManager replaceItemAtURL:v37 withItemAtURL:v54 backupItemName:0 options:1 resultingItemURL:0 error:&v55];
      v39 = v55;
      v40 = v29;
      v41 = v39;

      v42 = (((mach_absolute_time() - v50) * info.numer) / info.denom) / 1000000.0;
      v43 = v15;
      v44 = v43;
      if (v37)
      {
        if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22FA28000, v44, OS_SIGNPOST_INTERVAL_END, v13, "CacheCPAnalyticsProperties", "", buf, 2u);
        }

        v45 = v49;
        v30 = v41;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v60 = "CacheCPAnalyticsProperties";
          *&v60[8] = 2048;
          *&v60[10] = v42;
          _os_log_impl(&dword_22FA28000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22FA28000, v44, OS_LOG_TYPE_INFO, "[PHACachingCPAnalyticsPropertiesTask] Successfully cached CPAnalytics system properties", buf, 2u);
        }

        v46 = [reporterCopy isCancelledWithProgress:1.0];
        if (v46)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v60 = 153;
            *&v60[4] = 2080;
            *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
            _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          if (error && !*error)
          {
            *error = [MEMORY[0x277D22C28] errorForCode:-4];
          }
        }

        v11 = v46 ^ 1;
        goto LABEL_77;
      }

      if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22FA28000, v44, OS_SIGNPOST_INTERVAL_END, v13, "CacheCPAnalyticsProperties", "", buf, 2u);
      }

      v45 = v49;
      v30 = v41;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v60 = "CacheCPAnalyticsProperties";
        *&v60[8] = 2048;
        *&v60[10] = v42;
        _os_log_impl(&dword_22FA28000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *v60 = v54;
        *&v60[8] = 2112;
        *&v60[10] = v49;
        v61 = 2112;
        v62 = v41;
        _os_log_error_impl(&dword_22FA28000, v44, OS_LOG_TYPE_ERROR, "[PHACachingCPAnalyticsPropertiesTask] Failed replacing %@ to %@, error: %@", buf, 0x20u);
        if (error)
        {
          goto LABEL_70;
        }
      }

      else if (error)
      {
LABEL_70:
        v47 = v41;
        v11 = 0;
        *error = v30;
LABEL_77:
        v22 = v51;

        goto LABEL_78;
      }

      v11 = 0;
      goto LABEL_77;
    }

    v31 = mach_absolute_time();
    v33 = info.numer;
    v32 = info.denom;
    v34 = v15;
    v35 = v34;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22FA28000, v35, OS_SIGNPOST_INTERVAL_END, v13, "CacheCPAnalyticsProperties", "", buf, 2u);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v60 = "CacheCPAnalyticsProperties";
      *&v60[8] = 2048;
      *&v60[10] = ((((v31 - v50) * v33) / v32) / 1000000.0);
      _os_log_impl(&dword_22FA28000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v60 = v29;
      _os_log_error_impl(&dword_22FA28000, v35, OS_LOG_TYPE_ERROR, "[PHACachingCPAnalyticsPropertiesTask] Failed writing cached CPAnalytics properties, error: %@", buf, 0xCu);
      if (error)
      {
        goto LABEL_44;
      }
    }

    else if (error)
    {
LABEL_44:
      v36 = v29;
      v30 = v29;
      v11 = 0;
      *error = v30;
LABEL_74:
      v22 = v51;
LABEL_78:

LABEL_79:
      goto LABEL_80;
    }

    v30 = v29;
    v11 = 0;
    goto LABEL_74;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v60 = 98;
    *&v60[4] = 2080;
    *&v60[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotoAnalysis/Framework/Storytelling/Tasks/AnalyticsTasks/PHACachingCPAnalyticsPropertiesTask.m";
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  if (error && !*error)
  {
    [MEMORY[0x277D22C28] errorForCode:-4];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_80:

  return v11;
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  managerCopy = manager;
  workingContext = [managerCopy workingContext];
  photoLibrary = [workingContext photoLibrary];
  analytics = [managerCopy analytics];

  LOBYTE(error) = [(PHACachingCPAnalyticsPropertiesTask *)self runWithPhotoLibrary:photoLibrary analytics:analytics progressReporter:reporterCopy error:error];
  return error;
}

- (BOOL)shouldRunWithPhotoLibrary:(id)library
{
  v13 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  isSystemPhotoLibrary = [libraryCopy isSystemPhotoLibrary];
  if ((isSystemPhotoLibrary & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    name = [(PHACachingCPAnalyticsPropertiesTask *)self name];
    v7 = [libraryCopy debugDescription];
    v9 = 138412546;
    v10 = name;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%@ is running on a non system photo library. Library: %@", &v9, 0x16u);
  }

  return isSystemPhotoLibrary;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  photoLibrary = [manager photoLibrary];
  LOBYTE(self) = [(PHACachingCPAnalyticsPropertiesTask *)self shouldRunWithPhotoLibrary:photoLibrary];

  return self;
}

@end