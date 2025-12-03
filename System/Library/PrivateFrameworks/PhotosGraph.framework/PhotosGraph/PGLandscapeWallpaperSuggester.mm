@interface PGLandscapeWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics;
+ (BOOL)isPositiveLandscapeAsset:(id)asset;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)candidatesFromAssets:(id)assets;
+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds;
- (PGLandscapeWallpaperSuggester)initWithSession:(id)session;
- (id)fetchCandidateAssets;
- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (void)logPosterFilteringStatistics:(id *)statistics;
- (void)setupFilteringContexts;
@end

@implementation PGLandscapeWallpaperSuggester

- (void)logPosterFilteringStatistics:(id *)statistics
{
  v39 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var0 = statistics->var0;
    var1 = statistics->var1;
    var2 = statistics->var2;
    var3 = statistics->var3;
    var4 = statistics->var4;
    var5 = statistics->var5;
    var6 = statistics->var6;
    var7 = statistics->var7;
    var8 = statistics->var8;
    var9 = statistics->var9;
    var10 = statistics->var10;
    v18[0] = 67111680;
    v18[1] = var0;
    v19 = 1024;
    v20 = var1;
    v21 = 1024;
    v22 = var2;
    v23 = 1024;
    v24 = var3;
    v25 = 1024;
    v26 = var4;
    v27 = 1024;
    v28 = var5;
    v29 = 1024;
    v30 = var6;
    v31 = 1024;
    v32 = var7;
    v33 = 1024;
    v34 = var8;
    v35 = 1024;
    v36 = var9;
    v37 = 1024;
    v38 = var10;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v18, 0x44u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)fetchUnsortedCandidatesWithProgressReporter:(id)reporter
{
  v93 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 321;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    fetchCandidateAssets = [(PGLandscapeWallpaperSuggester *)self fetchCandidateAssets];
    v52 = loggingConnection;
    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 327;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = loggingConnection;
      v9 = os_signpost_id_generate(v8);
      v10 = v8;
      v11 = v10;
      v51 = v9 - 1;
      if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PGLandscapeWallpaperSuggesterFilterCandidates", "", buf, 2u);
      }

      spid = v9;

      info = 0;
      mach_timebase_info(&info);
      v50 = mach_absolute_time();
      v12 = [fetchCandidateAssets count];
      v56 = v12;
      v13 = v12 + 199;
      v91 = 0u;
      memset(v92, 0, 28);
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      memset(buf, 0, sizeof(buf));
      v75 = 0u;
      memset(v76, 0, 28);
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      curationContext = [session curationContext];
      if (v13 >= 0xC8)
      {
        v26 = 0;
        v53 = v13 / 0xC8;
        v27 = 1.0 / (v13 / 0xC8) * 0.8;
        *&v15 = 134218240;
        v48 = v15;
        oslog = v11;
        v55 = reporterCopy;
        while (1)
        {
          v60 = v26;
          context = objc_autoreleasePoolPush();
          v59 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v48, spid}];
          v28 = [fetchCandidateAssets objectsAtIndexes:?];
          v29 = MEMORY[0x277CD97A8];
          curationContext2 = [session curationContext];
          [v29 prefetchOnAssets:v28 options:14 curationContext:curationContext2];

          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          obj = v28;
          v31 = off_27887B000;
          v64 = [obj countByEnumeratingWithState:&v65 objects:v85 count:16];
          if (v64)
          {
            v63 = *v66;
            do
            {
              for (i = 0; i != v64; ++i)
              {
                if (*v66 != v63)
                {
                  objc_enumerationMutation(obj);
                }

                v33 = *(*(&v65 + 1) + 8 * i);
                v34 = objc_autoreleasePoolPush();
                v35 = [objc_alloc(v31[208]) initWithAsset:v33];
                v36 = objc_opt_class();
                primaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
                LODWORD(v36) = [v36 candidate:v35 passesFilteringWithContext:primaryFilteringContext curationContext:curationContext thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:buf];

                if (v36)
                {
                  secondaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self secondaryFilteringContext];
                  if (!secondaryFilteringContext)
                  {
                    goto LABEL_38;
                  }

                  v39 = secondaryFilteringContext;
                  v40 = objc_opt_class();
                  [(PGLandscapeWallpaperSuggester *)self secondaryFilteringContext];
                  v42 = v41 = v7;
                  LODWORD(v40) = [v40 candidate:v35 passesFilteringWithContext:v42 curationContext:curationContext thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:&v69];

                  v7 = v41;
                  v31 = off_27887B000;

                  if (v40)
                  {
LABEL_38:
                    [v7 addObject:v35];
                  }
                }

                objc_autoreleasePoolPop(v34);
              }

              v64 = [obj countByEnumeratingWithState:&v65 objects:v85 count:16];
            }

            while (v64);
          }

          v11 = oslog;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
          {
            v43 = oslog;
            firstIndex = [v59 firstIndex];
            lastIndex = [v59 lastIndex];
            *v78 = v48;
            *&v78[4] = firstIndex;
            *&v78[12] = 2048;
            *&v78[14] = lastIndex;
            _os_log_debug_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_DEBUG, "[PGLandscapeWallpaperSuggester] processed candidates from %lu to %lu", v78, 0x16u);
          }

          reporterCopy = v55;
          if ([v55 isCancelledWithProgress:v27 * v60 + 0.2])
          {
            break;
          }

          objc_autoreleasePoolPop(context);
          v26 = v60 + 1;
          if (v60 + 1 == v53)
          {
            goto LABEL_13;
          }
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *v78 = 67109378;
          *&v78[4] = 361;
          *&v78[8] = 2080;
          *&v78[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v78, 0x12u);
        }

        objc_autoreleasePoolPop(context);
        v5 = MEMORY[0x277CBEBF8];
      }

      else
      {
LABEL_13:
        v16 = curationContext;
        v17 = v7;
        v18 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v21 = v11;
        v22 = v21;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
        {
          *v78 = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggesterFilterCandidates", "", v78, 2u);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v78 = 136315394;
          *&v78[4] = "PGLandscapeWallpaperSuggesterFilterCandidates";
          *&v78[12] = 2048;
          *&v78[14] = ((((v18 - v50) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v78, 0x16u);
        }

        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *v78 = 67109120;
          *&v78[4] = v56;
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found %d positive landscape assets", v78, 8u);
        }

        v23 = v22;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = [v17 count];
          *v78 = 67109120;
          *&v78[4] = v24;
          _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found %d candidates after postfiltering", v78, 8u);
        }

        v83 = v91;
        v84[0] = v92[0];
        *(v84 + 12) = *(v92 + 12);
        v79 = v87;
        v80 = v88;
        v81 = v89;
        v82 = v90;
        *v78 = *buf;
        *&v78[16] = *&buf[16];
        [(PGLandscapeWallpaperSuggester *)self logPosterFilteringStatistics:v78];
        secondaryFilteringContext2 = [(PGLandscapeWallpaperSuggester *)self secondaryFilteringContext];

        if (secondaryFilteringContext2)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *v78 = 0;
            _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Secondary filtering...", v78, 2u);
          }

          v83 = v75;
          v84[0] = v76[0];
          *(v84 + 12) = *(v76 + 12);
          v79 = v71;
          v80 = v72;
          v81 = v73;
          v82 = v74;
          *v78 = v69;
          *&v78[16] = v70;
          [(PGLandscapeWallpaperSuggester *)self logPosterFilteringStatistics:v78];
        }

        if (*&buf[4] >= 1)
        {
          [MEMORY[0x277D3C798] logInfo:v23 prefix:@"[PGLandscapeWallpaperSuggester]" avoidForKeyAssetStatistics:&v87 + 12];
        }

        v7 = v17;
        v5 = v17;
        curationContext = v16;
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCandidateAssets
{
  v31[1] = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v4 = os_signpost_id_generate(loggingConnection);
  v5 = loggingConnection;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGLandscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v10 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
  [librarySpecificFetchOptions setFetchPropertySets:v10];

  v11 = objc_opt_class();
  forbiddenAssetUUIDs = [session forbiddenAssetUUIDs];
  v13 = [v11 prefilteringInternalPredicateWithForbiddenAssetUUIDs:forbiddenAssetUUIDs];
  [librarySpecificFetchOptions setInternalPredicate:v13];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v31[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [librarySpecificFetchOptions setSortDescriptors:v15];

  v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:librarySpecificFetchOptions];
  v17 = v6;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v28 = v18;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Fetched %lu candidate assets.", buf, 0xCu);
  }

  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v17;
  v23 = v22;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v4, "PGLandscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "PGLandscapeWallpaperSuggesterFetchCandidates";
    v29 = 2048;
    v30 = ((((v19 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v151[8] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  progressCopy = progress;
  v5 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  v143 = 0;
  v144 = &v143;
  v145 = 0x2020000000;
  v146 = 0;
  v6 = [v5 isCancelledWithProgress:0.0];
  *(v144 + 24) = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v149 = 100;
      *&v149[4] = 2080;
      *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_29;
  }

  maximumNumberOfSuggestions = [optionsCopy maximumNumberOfSuggestions];
  session = [(PGAbstractSuggester *)self session];
  [session loggingConnection];
  v10 = v128 = session;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v122 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGLandscapeWallpaperSuggester", "", buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v121 = mach_absolute_time();
  additionalOptions = [optionsCopy additionalOptions];

  if (additionalOptions)
  {
    additionalOptions2 = [optionsCopy additionalOptions];
    v16 = [additionalOptions2 objectForKey:@"filteringContext"];

    if (v16)
    {
      [(PGLandscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext updateFilteringContextWithDictionary:v16];
      [(PGLandscapeWallpaperSuggesterFilteringContext *)self->_secondaryFilteringContext updateFilteringContextWithDictionary:v16];
    }
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v149 = maximumNumberOfSuggestions;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
  }

  v127 = [v5 childProgressReporterFromStart:0.0 toEnd:0.39];
  v129 = [(PGLandscapeWallpaperSuggester *)self fetchUnsortedCandidatesWithProgressReporter:?];
  v17 = [v129 count];
  v18 = *(v144 + 24);
  if (!v17)
  {
    if (v144[3])
    {
      *(v144 + 24) = 1;
    }

    else
    {
      v22 = [v5 isCancelledWithProgress:1.0];
      *(v144 + 24) = v22;
      if ((v22 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Found 0 unsorted candidate.", buf, 2u);
        }

        v36 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v39 = oslog;
        v40 = v39;
        if (v122 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggester", "", buf, 2u);
        }

        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        *buf = 136315394;
        *v149 = "PGLandscapeWallpaperSuggester";
        *&v149[8] = 2048;
        *&v149[10] = ((((v36 - v121) * numer) / denom) / 1000000.0);
        v21 = "[Performance] %s: %f ms";
        v20 = v40;
        v23 = 22;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v149 = 123;
      *&v149[4] = 2080;
      *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      v20 = MEMORY[0x277D86220];
      v21 = "Cancelled at line %d in file %s";
      goto LABEL_25;
    }

LABEL_27:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  if (v144[3])
  {
    *(v144 + 24) = 1;
    goto LABEL_20;
  }

  v19 = [v5 isCancelledWithProgress:0.4];
  *(v144 + 24) = v19;
  if (v19)
  {
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v149 = 130;
      *&v149[4] = 2080;
      *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      v20 = MEMORY[0x277D86220];
      v21 = "Cancelled at line %d in file %s";
LABEL_25:
      v23 = 18;
LABEL_26:
      _os_log_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_INFO, v21, buf, v23);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v26 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v151[0] = v26;
  v126 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScorePenalty" ascending:1];
  v151[1] = v126;
  v123 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"aestheticsScorePenalty" ascending:1];
  v151[2] = v123;
  v27 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cropScorePenalty" ascending:1];
  v151[3] = v27;
  v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
  v151[4] = v28;
  v29 = MEMORY[0x277D3C828];
  primaryFilteringContext = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
  v31 = [v29 cropScoreSortDescriptorForOrientation:{objc_msgSend(primaryFilteringContext, "orientation")}];
  v151[5] = v31;
  v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v151[6] = v32;
  v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
  v151[7] = v33;
  v114 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:8];

  v34 = MEMORY[0x277D3C810];
  primaryFilteringContext2 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
  [primaryFilteringContext2 timeIntervalForCandidateDeduping];
  v111 = [v34 sortedDedupedCandidatesFromCandidates:v129 sortDescriptors:v114 timeIntervalForCandidateDeduping:maximumNumberOfSuggestions targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

  if (v144[3])
  {
    *(v144 + 24) = 1;
LABEL_42:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v149 = 144;
      *&v149[4] = 2080;
      *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_122;
  }

  v41 = [v5 isCancelledWithProgress:0.8];
  *(v144 + 24) = v41;
  if (v41)
  {
    goto LABEL_42;
  }

  suggestionTypes = [objc_opt_class() suggestionTypes];
  firstIndex = [suggestionTypes firstIndex];

  suggestionSubtypes = [objc_opt_class() suggestionSubtypes];
  firstIndex2 = [suggestionSubtypes firstIndex];

  assetGater = self->_assetGater;
  v45 = [PGWallpaperSuggestionAccumulator alloc];
  if (assetGater)
  {
    v46 = 2 * maximumNumberOfSuggestions;
  }

  else
  {
    v46 = 0;
  }

  if (assetGater)
  {
    v47 = 5;
  }

  else
  {
    v47 = 0;
  }

  v110 = [(PGWallpaperSuggestionAccumulator *)v45 initWithTargetNumberOfSuggestions:maximumNumberOfSuggestions targetMinimumNumberOfGatedSuggestions:v47 maximumNumberOfSuggestionsToTryForGating:v46 loggingConnection:oslog];
  date = [MEMORY[0x277CBEAA8] date];
  v109 = [date dateByAddingTimeInterval:120.0];
  v48 = [v111 count];
  log = oslog;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:120.0];
    *buf = 67109890;
    *v149 = v48;
    *&v149[4] = 2112;
    *&v149[6] = date;
    *&v149[14] = 2112;
    *&v149[16] = v49;
    LOWORD(v150[0]) = 2112;
    *(v150 + 2) = v109;
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x26u);
  }

  if (v48 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v48;
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  obj = v111;
  v51 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
  if (!v51)
  {
    v105 = 0;
    v107 = 0;
    v112 = 0;
    v116 = 0;
LABEL_99:

LABEL_100:
    suggestions = [(PGWallpaperSuggestionAccumulator *)v110 suggestions];
    v89 = self->_assetGater;
    v90 = log;
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_INFO);
    if (v89)
    {
      if (!v91)
      {
        goto LABEL_106;
      }

      v92 = [suggestions count];
      numberOfGatedSuggestions = [(PGWallpaperSuggestionAccumulator *)v110 numberOfGatedSuggestions];
      *buf = 67109376;
      *v149 = v92;
      *&v149[4] = 1024;
      *&v149[6] = numberOfGatedSuggestions;
      v94 = "[PGLandscapeWallpaperSuggester] Generated %d suggestions (%d gated)";
      v95 = v90;
      v96 = 14;
    }

    else
    {
      if (!v91)
      {
        goto LABEL_106;
      }

      v97 = [suggestions count];
      *buf = 67109120;
      *v149 = v97;
      v94 = "[PGLandscapeWallpaperSuggester] Generated %d suggestions";
      v95 = v90;
      v96 = 8;
    }

    _os_log_impl(&dword_22F0FC000, v95, OS_LOG_TYPE_INFO, v94, buf, v96);
LABEL_106:

    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v149 = v116;
      *&v149[4] = 1024;
      *&v149[6] = v112;
      *&v149[10] = 1024;
      *&v149[12] = v107;
      *&v149[16] = 1024;
      *&v149[18] = v105;
      *&v149[22] = 1024;
      v150[0] = HIDWORD(v105);
      _os_log_impl(&dword_22F0FC000, v90, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Tried %d assets, %d passed, rejected %d for clock overlap, %d for low resolution, %d for low crop score.", buf, 0x20u);
    }

    if (v144[3])
    {
      *(v144 + 24) = 1;
    }

    else
    {
      v98 = [v5 isCancelledWithProgress:1.0];
      *(v144 + 24) = v98;
      if ((v98 & 1) == 0)
      {
        v99 = mach_absolute_time();
        v100 = info.numer;
        v101 = info.denom;
        v102 = v90;
        v103 = v102;
        if (v122 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v103, OS_SIGNPOST_INTERVAL_END, spid, "PGLandscapeWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v149 = "PGLandscapeWallpaperSuggester";
          *&v149[8] = 2048;
          *&v149[10] = ((((v99 - v121) * v100) / v101) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v103, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v7 = suggestions;
        goto LABEL_120;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v149 = 240;
      *&v149[4] = 2080;
      *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
LABEL_120:

    goto LABEL_121;
  }

  v53 = 0;
  v124 = 0;
  v105 = 0;
  v107 = 0;
  v112 = 0;
  v116 = 0;
  v54 = 0.1 / v50;
  v118 = *v139;
  *&v52 = 138412290;
  v104 = v52;
LABEL_58:
  v117 = v51;
  v55 = 0;
  while (1)
  {
    if (*v139 != v118)
    {
      objc_enumerationMutation(obj);
    }

    v56 = *(*(&v138 + 1) + 8 * v55);
    v57 = objc_autoreleasePoolPush();
    v58 = [PGSingleAssetSuggestion alloc];
    asset = [v56 asset];
    v60 = [(PGSingleAssetSuggestion *)v58 initWithType:firstIndex subtype:firstIndex2 asset:asset];

    if (self->_assetGater)
    {
      asset2 = [v56 asset];
      v62 = [PGSettlingEffectWallpaperSuggesterFilteringContext shouldRunSettlingEffectForAsset:asset2 subtype:604];

      [(PGWallpaperSuggestionAssetGater *)self->_assetGater setEnableSettlingEffect:v62];
      v63 = self->_assetGater;
      asset3 = [v56 asset];
      v134[0] = MEMORY[0x277D85DD0];
      v134[1] = 3221225472;
      v134[2] = __65__PGLandscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
      v134[3] = &unk_27887F968;
      v136 = &v143;
      v135 = v5;
      v137 = v54 * v53;
      v65 = [(PGWallpaperSuggestionAssetGater *)v63 gateAsset:asset3 progressBlock:v134];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v60, "setAvailableFeatures:", [v65 availableFeatures]);
      passesAnyGating = [v65 passesAnyGating];
      LODWORD(asset2) = [v65 didTimeout];

      v124 += asset2;
    }

    else
    {
      passesAnyGating = 1;
    }

    if (v144[3])
    {
      *(v144 + 24) = 1;
LABEL_67:
      v68 = 1;
      v69 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v149 = 184;
        *&v149[4] = 2080;
        *&v149[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGLandscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, v69, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_92;
    }

    v67 = [v5 isCancelledWithProgress:v54 * v53 + 0.9];
    *(v144 + 24) = v67;
    if (v67)
    {
      goto LABEL_67;
    }

    ++v116;
    if (passesAnyGating)
    {
      goto LABEL_74;
    }

    cropResult = [v56 cropResult];
    primaryFilteringContext3 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
    v72 = [cropResult cropForOrientation:{objc_msgSend(primaryFilteringContext3, "orientation")}];

    primaryFilteringContext4 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
    v108 = ([primaryFilteringContext4 ignoreClockOverlap] & 1) != 0 ? 1 : objc_msgSend(v72, "passesClockOverlap");

    [v72 cropZoomRatio];
    v75 = v74;
    primaryFilteringContext5 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
    [primaryFilteringContext5 maximumCropZoomRatio];
    v78 = v77;

    [v72 cropScore];
    v80 = v79;
    primaryFilteringContext6 = [(PGLandscapeWallpaperSuggester *)self primaryFilteringContext];
    [primaryFilteringContext6 minimumCropScore];
    v83 = v80 >= v82;

    if ((v108 & (v75 <= v78) & v83) != 0)
    {
LABEL_74:
      [(PGWallpaperSuggestionAccumulator *)v110 addSuggestion:v60 passingGating:passesAnyGating, v104];
      ++v112;
      if ([(PGWallpaperSuggestionAccumulator *)v110 accumulationIsComplete])
      {
        v68 = 2;
        goto LABEL_92;
      }
    }

    else
    {
      if (v108)
      {
        if (v75 > v78)
        {
          LODWORD(v105) = v105 + 1;
          v84 = @"low resolution";
        }

        else
        {
          ++HIDWORD(v105);
          v84 = @"low cropScore";
        }
      }

      else
      {
        ++v107;
        v84 = @"clock overlap";
      }

      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = v104;
        *v149 = v84;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Rejecting non-gated suggestion because of %@.", buf, 0xCu);
      }
    }

    date2 = [MEMORY[0x277CBEAA8] date];
    [v109 timeIntervalSinceDate:date2];
    v87 = v86;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v149 = v116;
      *&v149[4] = 1024;
      *&v149[6] = v112;
      *&v149[10] = 2048;
      *&v149[12] = v87;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", buf, 0x18u);
    }

    if (v124 > 1 || v87 < 0.0)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v149 = v124;
        *&v149[4] = 1024;
        *&v149[6] = 1;
        *&v149[10] = 2048;
        *&v149[12] = v87;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", buf, 0x18u);
      }

      v68 = 2;
    }

    else
    {
      v68 = 0;
    }

LABEL_92:
    objc_autoreleasePoolPop(v57);
    if (v68)
    {
      break;
    }

    ++v55;
    ++v53;
    if (v117 == v55)
    {
      v51 = [obj countByEnumeratingWithState:&v138 objects:v147 count:16];
      if (v51)
      {
        goto LABEL_58;
      }

      goto LABEL_99;
    }
  }

  if (v68 == 2)
  {
    goto LABEL_100;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_121:

LABEL_122:
LABEL_28:

LABEL_29:
  _Block_object_dispose(&v143, 8);

  v24 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __65__PGLandscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, double a2)
{
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(a1 + 48) * a2 + 0.9];
    v2 = *(*(a1 + 40) + 8);
  }

  *(v2 + 24) = result;
  return result;
}

- (void)setupFilteringContexts
{
  selfCopy = self;
  v3 = objc_opt_class();
  if (!selfCopy)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_11:
    v14 = _PFAssertFailHandler();
    [(PGLandscapeWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGLandscapeWallpaperSuggester *)selfCopy isMemberOfClass:v3]& 1) == 0)
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    objc_claimAutoreleasedReturnValue();
    v13 = objc_opt_class();
    NSStringFromClass(v13);
    objc_claimAutoreleasedReturnValue();
    goto LABEL_11;
  }

  IsIPad = PLPhysicalDeviceIsIPad();
  v5 = [PGLandscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForLandscapesInOrientation:2];
    primaryFilteringContext = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v6;

    v8 = [[PGLandscapeWallpaperSuggesterFilteringContext alloc] initForLandscapesInOrientation:1];
  }

  else
  {
    v9 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v5 initForLandscapesInOrientation:1];
    v10 = selfCopy->_primaryFilteringContext;
    selfCopy->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = selfCopy->_secondaryFilteringContext;
  selfCopy->_secondaryFilteringContext = v8;
}

- (PGLandscapeWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = PGLandscapeWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:sessionCopy];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      loggingConnection = [sessionCopy loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:3 loggingConnection:loggingConnection];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGLandscapeWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v39[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  if ([self isPositiveLandscapeAsset:assetCopy])
  {
    photoLibrary = [assetCopy photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v13 = [self prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
    [librarySpecificFetchOptions setInternalPredicate:v13];

    v14 = MEMORY[0x277CD97A8];
    localIdentifier = [assetCopy localIdentifier];
    v39[0] = localIdentifier;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:librarySpecificFetchOptions];
    firstObject = [v17 firstObject];

    if (!firstObject)
    {
      v23 = 0;
      if (reason)
      {
        *reason = @"Fails Predicate";
      }

      goto LABEL_29;
    }

    filtersForTopSuggestions = [objc_opt_class() filtersForTopSuggestions];
    v20 = [[PGLandscapeWallpaperSuggestionCandidate alloc] initWithAsset:assetCopy];
    v21 = [PGLandscapeWallpaperSuggesterFilteringContext alloc];
    if (filtersForTopSuggestions)
    {
      v22 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v21 initForTopLandscapesInOrientation:orientation];
    }

    else
    {
      v22 = [(PGLandscapeWallpaperSuggesterFilteringContext *)v21 initForLandscapesInOrientation:orientation];
    }

    v24 = v22;
    v36 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v37 = v20;
    if ([self candidate:v20 passesFilteringWithContext:v24 curationContext:contextCopy thresholdHelper:? statistics:?])
    {
      if (filtersForTopSuggestions)
      {
        v25 = [PGWallpaperSuggestionAssetGater alloc];
        v26 = [(PGWallpaperSuggestionAssetGater *)v25 initWithType:3 loggingConnection:MEMORY[0x277D86220]];
        v23 = 1;
        [(PGWallpaperSuggestionAssetGater *)v26 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v26 setIsUserInitiated:1];
        v35 = [(PGWallpaperSuggestionAssetGater *)v26 gateAsset:assetCopy progressBlock:&__block_literal_global_233];
        if ([v35 passesAnyGating])
        {
          v27 = @"Pass Segmented";
        }

        else
        {
          cropResult = [(PGLandscapeWallpaperSuggestionCandidate *)v20 cropResult];
          v29 = [cropResult cropForOrientation:orientation];

          if (([v24 ignoreClockOverlap] & 1) != 0 || objc_msgSend(v29, "passesClockOverlap"))
          {
            [v29 cropScore];
            v31 = v30;
            [v24 minimumCropScore];
            v23 = v31 >= v32;
            if (v31 < v32)
            {
              v27 = @"Low Crop Score";
            }

            else
            {
              v27 = @"Pass Unsegmented";
            }
          }

          else
          {
            v23 = 0;
            v27 = @"Clock Overlap";
          }
        }

        if (!reason)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = @"Pass";
        v23 = 1;
        if (!reason)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!reason)
      {
        v23 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v23 = 0;
      v27 = @"Unknown Reason";
    }

    *reason = v27;
    goto LABEL_28;
  }

  v23 = 0;
  if (reason)
  {
    *reason = @"Not Landscape";
  }

LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext thresholdHelper:(id)helper statistics:(id *)statistics
{
  candidateCopy = candidate;
  contextCopy = context;
  curationContextCopy = curationContext;
  helperCopy = helper;
  asset = [candidateCopy asset];
  curationModel = [asset curationModel];
  [contextCopy minimumWallpaperScore];
  v18 = v17;
  if (v17 < 0.0)
  {
    wallpaperScoreModel = [curationModel wallpaperScoreModel];
    landscapeNode = [wallpaperScoreModel landscapeNode];
    [landscapeNode highRecallOperatingPoint];
    v18 = v21;
  }

  [candidateCopy wallpaperScore];
  if (v18 > v22)
  {
    v23 = 0;
    ++statistics->var3;
    goto LABEL_35;
  }

  [contextCopy wallpaperScorePenaltyCutOff];
  v25 = v24;
  if (v24 < 0.0)
  {
    wallpaperScoreModel2 = [curationModel wallpaperScoreModel];
    landscapeNode2 = [wallpaperScoreModel2 landscapeNode];
    [landscapeNode2 highPrecisionOperatingPoint];
    v25 = v28;
  }

  [candidateCopy wallpaperScore];
  [candidateCopy setWallpaperScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v29, v18, v25)}];
  userFeedbackCalculator = [curationContextCopy userFeedbackCalculator];
  v31 = [curationModel isUtilityForMemoriesWithAsset:asset userFeedbackCalculator:userFeedbackCalculator blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];

  if (v31)
  {
    v23 = 0;
    ++statistics->var0;
    goto LABEL_35;
  }

  if ([curationModel avoidIfPossibleForKeyAssetWithAsset:asset statistics:&statistics->var11])
  {
    v23 = 0;
    ++statistics->var1;
    goto LABEL_35;
  }

  [contextCopy minimumAestheticsScore];
  v33 = v32;
  if (v32 < 0.0)
  {
    aestheticsModel = [curationModel aestheticsModel];
    overallAestheticScoreNode = [aestheticsModel overallAestheticScoreNode];
    [overallAestheticScoreNode highPrecisionOperatingPoint];
    v33 = v36;
  }

  [asset overallAestheticScore];
  v38 = v37;
  if (v33 > v37)
  {
    v23 = 0;
    ++statistics->var2;
    goto LABEL_35;
  }

  [contextCopy aestheticsScorePenaltyCutOff];
  v40 = v39;
  if (v39 < 0.0)
  {
    aestheticsModel2 = [curationModel aestheticsModel];
    [aestheticsModel2 aestheticScoreThresholdToBeAestheticallyPrettyGood];
    v40 = v42;
  }

  [candidateCopy setAestheticsScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v38, v33, v40)}];
  if (([contextCopy bypassCropScoreCheck] & 1) == 0)
  {
    cropResult = [candidateCopy cropResult];
    v44 = [cropResult cropForOrientation:{objc_msgSend(contextCopy, "orientation")}];

    if (([contextCopy ignoreClockOverlap] & 1) != 0 || objc_msgSend(v44, "passesClockOverlap"))
    {
      [v44 cropZoomRatio];
      v46 = v45;
      [contextCopy maximumCropZoomRatio];
      if (v46 <= v47)
      {
        [v44 cropScore];
        v50 = v49;
        [contextCopy minimumCropScore];
        if (v50 >= v51)
        {
          v62 = v51;
          [contextCopy cropScorePenaltyCutOff];
          [candidateCopy setCropScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v50, v62, v63)}];

          goto LABEL_18;
        }

        ++statistics->var6;
LABEL_34:

        v23 = 0;
        goto LABEL_35;
      }

      v48 = 20;
    }

    else
    {
      v48 = 16;
    }

    ++*(&statistics->var0 + v48);
    goto LABEL_34;
  }

LABEL_18:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:asset])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:asset withConfidenceThresholdHelper:helperCopy])
    {
      v23 = 0;
      ++statistics->var8;
    }

    else
    {
      [contextCopy maximumLowLightScore];
      v53 = v52;
      if (v52 < 0.0)
      {
        curationModel2 = [asset curationModel];
        aestheticsModel3 = [curationModel2 aestheticsModel];
        lowLightNode = [aestheticsModel3 lowLightNode];
        [lowLightNode operatingPoint];
        v53 = v57;
      }

      aestheticProperties = [asset aestheticProperties];
      [aestheticProperties lowLight];
      v60 = v59;

      if (v53 >= v60)
      {
        asset2 = [candidateCopy asset];
        v65 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:asset2];

        if (v65)
        {
          v23 = 0;
          ++statistics->var10;
        }

        else
        {
          v23 = 1;
        }
      }

      else
      {
        v23 = 0;
        ++statistics->var9;
      }
    }
  }

  else
  {
    v23 = 0;
    ++statistics->var7;
  }

LABEL_35:

  return v23;
}

+ (BOOL)isPositiveLandscapeAsset:(id)asset
{
  v26 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  [assetCopy clsSceneClassifications];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v24 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 extendedSceneIdentifier] == 2147481597)
        {
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          [standardUserDefaults doubleForKey:@"PGLandscapeWallpaperSuggesterNatureSceneThreshold"];
          v13 = v12;

          if (v13 <= 0.0)
          {
            curationModel = [assetCopy curationModel];
            cityNatureModel = [curationModel cityNatureModel];

            natureNode = [cityNatureModel natureNode];
            [natureNode operatingPoint];
            v13 = v17;
          }

          [v9 confidence];
          v10 = v18 >= v13;
          goto LABEL_13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)candidatesFromAssets:(id)assets
{
  v20 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = assetsCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PGLandscapeWallpaperSuggestionCandidate alloc];
        v12 = [(PGLandscapeWallpaperSuggestionCandidate *)v11 initWithAsset:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v4 addObject:v5];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
  [v4 addObject:v6];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d", @"additionalAttributes", @"faceAnalysisVersion", 0];
  [v4 addObject:v7];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == %d", @"detectedFaces", 0];
  [v4 addObject:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"playbackStyle", &unk_284485418];
  [v4 addObject:v9];
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", dsCopy];
    [v4 addObject:dsCopy];
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 32000;
  v12 = MEMORY[0x277D3CAB8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__PGLandscapeWallpaperSuggester_prefilteringInternalPredicateWithForbiddenAssetUUIDs___block_invoke;
  v17[3] = &unk_27887EC40;
  v19 = v20;
  v13 = v11;
  v18 = v13;
  [v12 enumerateModelsAscending:0 usingBlock:v17];
  v14 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v13];
  [v4 addObject:v14];
  v15 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];

  _Block_object_dispose(v20, 8);

  return v15;
}

void __86__PGLandscapeWallpaperSuggester_prefilteringInternalPredicateWithForbiddenAssetUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v4 doubleForKey:@"PGLandscapeWallpaperSuggesterNatureSceneThreshold"];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = [v3 natureNode];
    [v7 operatingPoint];
    v6 = v8;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGLandscapeWallpaperSuggester] Using custom natureNodeOperatingPoint %.3f ", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SUBQUERY(additionalAttributes, $a, $a.sceneAnalysisVersion >= %d AND $a.sceneAnalysisVersion < %d AND SUBQUERY($a.sceneClassifications, $s, $s.sceneIdentifier = %d AND $s.confidence >= %f).@count != 0).@count != 0", objc_msgSend(v3, "version"), *(*(*(a1 + 40) + 8) + 24), 2147481597, *&v6];
  [*(a1 + 32) addObject:v9];
  *(*(*(a1 + 40) + 8) + 24) = [v3 version];

  v10 = *MEMORY[0x277D85DE8];
}

@end