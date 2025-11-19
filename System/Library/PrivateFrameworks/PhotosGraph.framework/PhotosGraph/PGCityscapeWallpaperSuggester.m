@interface PGCityscapeWallpaperSuggester
+ (BOOL)candidate:(id)a3 passesFilteringWithContext:(id)a4 curationContext:(id)a5 thresholdHelper:(id)a6 statistics:(id *)a7;
+ (BOOL)isPositiveWithUrbanSceneLabelsForAsset:(id)a3;
+ (BOOL)passesFilteringWithAsset:(id)a3 curationContext:(id)a4 orientation:(int64_t)a5 reason:(id *)a6;
+ (CLSSceneTaxonomyHierarchy)sceneTaxonomy;
+ (id)candidatesFromAssets:(id)a3;
+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)a3;
- (PGCityscapeWallpaperSuggester)initWithSession:(id)a3;
- (id)fetchCandidateAssets;
- (id)fetchUnsortedCandidatesWithProgressReporter:(id)a3;
- (id)suggestionsWithOptions:(id)a3 progress:(id)a4;
- (void)logPosterFilteringStatistics:(id *)a3;
- (void)setupFilteringContexts;
@end

@implementation PGCityscapeWallpaperSuggester

- (void)logPosterFilteringStatistics:(id *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [(PGAbstractSuggester *)self session];
  v5 = [v4 loggingConnection];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    var0 = a3->var0;
    var1 = a3->var1;
    var2 = a3->var2;
    var3 = a3->var3;
    var4 = a3->var4;
    var5 = a3->var5;
    var6 = a3->var6;
    var7 = a3->var7;
    var8 = a3->var8;
    var9 = a3->var9;
    var10 = a3->var10;
    var11 = a3->var11;
    v19[0] = 67111936;
    v19[1] = var0;
    v20 = 1024;
    v21 = var1;
    v22 = 1024;
    v23 = var2;
    v24 = 1024;
    v25 = var3;
    v26 = 1024;
    v27 = var9;
    v28 = 1024;
    v29 = var4;
    v30 = 1024;
    v31 = var5;
    v32 = 1024;
    v33 = var6;
    v34 = 1024;
    v35 = var7;
    v36 = 1024;
    v37 = var8;
    v38 = 1024;
    v39 = var10;
    v40 = 1024;
    v41 = var11;
    _os_log_impl(&dword_22F0FC000, v5, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Filtered out %d for isUtility, %d for avoidForKeyAsset, %d for aesthetics, %d for wallpaper score, %d for aesthetics+wallpaper, %d for clock overlap, %d for low resolution, %d for crop score, %d for not safe for display, %d for positive people scene, %d for low light, %d for sensitive location", v19, 0x4Au);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)fetchUnsortedCandidatesWithProgressReporter:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 333;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v45 = [(PGAbstractSuggester *)self session];
    v6 = [v45 loggingConnection];
    v44 = [(PGCityscapeWallpaperSuggester *)self fetchCandidateAssets];
    if ([v4 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 339;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v7 = v6;
      v8 = os_signpost_id_generate(v7);
      v9 = v7;
      v10 = v9;
      v39 = v8 - 1;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PGCityscapeWallpaperSuggesterFilterCandidates", "", buf, 2u);
      }

      spid = v8;
      v40 = v6;

      info = 0;
      mach_timebase_info(&info);
      v38 = mach_absolute_time();
      v41 = [v44 count] / 0xC8uLL;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v75 = 0u;
      memset(buf, 0, sizeof(buf));
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      v50 = [v45 curationContext];
      v11 = 0;
      v12 = 0;
      oslog = v10;
      v43 = v4;
      while (1)
      {
        v47 = v12;
        context = objc_autoreleasePoolPush();
        v46 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:?];
        v13 = [v44 objectsAtIndexes:?];
        v14 = MEMORY[0x277CD97A8];
        v15 = [v45 curationContext];
        [v14 prefetchOnAssets:v13 options:14 curationContext:v15];

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v16 = v13;
        v17 = [v16 countByEnumeratingWithState:&v51 objects:v73 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v52;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v52 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v51 + 1) + 8 * i);
              v22 = objc_autoreleasePoolPush();
              if ([objc_opt_class() isPositiveWithUrbanSceneLabelsForAsset:v21])
              {
                v23 = [[PGCityscapeWallpaperSuggestionCandidate alloc] initWithAsset:v21];
                if ([objc_opt_class() candidate:v23 passesFilteringWithContext:self->_primaryFilteringContext curationContext:v50 thresholdHelper:self->_peopleSceneConfidenceThresholdHelper statistics:buf] && (!self->_secondaryFilteringContext || objc_msgSend(objc_opt_class(), "candidate:passesFilteringWithContext:curationContext:thresholdHelper:statistics:", v23, self->_secondaryFilteringContext, v50, self->_peopleSceneConfidenceThresholdHelper, &v55)))
                {
                  [v49 addObject:v23];
                }

                ++v11;
              }

              objc_autoreleasePoolPop(v22);
            }

            v18 = [v16 countByEnumeratingWithState:&v51 objects:v73 count:16];
          }

          while (v18);
        }

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          v24 = oslog;
          v25 = [v46 firstIndex];
          v26 = [v46 lastIndex];
          *v65 = 134218240;
          *&v65[4] = v25;
          *&v65[12] = 2048;
          *&v65[14] = v26;
          _os_log_debug_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEBUG, "[PGCityscapeWallpaperSuggester] processed candidates from %lu to %lu", v65, 0x16u);
        }

        v4 = v43;
        if ([v43 isCancelledWithProgress:1.0 / (v41 + 1) * 0.8 * v47 + 0.2])
        {
          break;
        }

        objc_autoreleasePoolPop(context);
        v12 = v47 + 1;
        if (v47 == v41)
        {
          v28 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v31 = oslog;
          v32 = v31;
          if (v39 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
          {
            *v65 = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v32, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggesterFilterCandidates", "", v65, 2u);
          }

          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *v65 = 136315394;
            *&v65[4] = "PGCityscapeWallpaperSuggesterFilterCandidates";
            *&v65[12] = 2048;
            *&v65[14] = ((((v28 - v38) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v65, 0x16u);
          }

          v27 = v49;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *v65 = 67109120;
            *&v65[4] = v11;
            _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found %d positive cityscape assets", v65, 8u);
          }

          v33 = v32;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v34 = [v49 count];
            *v65 = 67109120;
            *&v65[4] = v34;
            _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found %d candidates after postfiltering", v65, 8u);
          }

          v70 = v79;
          v71 = v80;
          v72 = v81;
          v66 = v75;
          v67 = v76;
          v68 = v77;
          v69 = v78;
          *v65 = *buf;
          *&v65[16] = *&buf[16];
          [(PGCityscapeWallpaperSuggester *)self logPosterFilteringStatistics:v65];
          if (self->_secondaryFilteringContext)
          {
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *v65 = 0;
              _os_log_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Secondary filtering...", v65, 2u);
            }

            v70 = v61;
            v71 = v62;
            v72 = v63;
            v66 = v57;
            v67 = v58;
            v68 = v59;
            v69 = v60;
            *v65 = v55;
            *&v65[16] = v56;
            [(PGCityscapeWallpaperSuggester *)self logPosterFilteringStatistics:v65];
          }

          if (*&buf[4] >= 1)
          {
            [MEMORY[0x277D3C798] logInfo:v33 prefix:@"[PGCityscapeWallpaperSuggester]" avoidForKeyAssetStatistics:&v76];
          }

          v5 = v49;
          v6 = v40;
          goto LABEL_50;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v65 = 67109378;
        *&v65[4] = 379;
        *&v65[8] = 2080;
        *&v65[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v65, 0x12u);
      }

      objc_autoreleasePoolPop(context);
      v5 = MEMORY[0x277CBEBF8];
      v6 = v40;
      v27 = v49;
LABEL_50:
    }
  }

  v35 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCandidateAssets
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = [(PGAbstractSuggester *)self session];
  v3 = [v2 loggingConnection];
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PGCityscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v7 = mach_absolute_time();
  v8 = [v2 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];
  [v9 setCacheSizeForFetch:200];
  [v9 setChunkSizeForFetch:200];
  v10 = +[PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:](PGWallpaperSuggestionUtilities, "assetFetchPropertySetsIncludingGating:", [objc_opt_class() filtersForTopSuggestions]);
  [v9 setFetchPropertySets:v10];

  v11 = objc_opt_class();
  v12 = [v2 forbiddenAssetUUIDs];
  v13 = [v11 prefilteringInternalPredicateWithForbiddenAssetUUIDs:v12];
  [v9 setInternalPredicate:v13];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:0];
  v31[0] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  [v9 setSortDescriptors:v15];

  v16 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v9];
  v17 = v6;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v16 count];
    *buf = 134217984;
    v28 = v18;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Fetched %lu candidate assets.", buf, 0xCu);
  }

  v19 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v22 = v17;
  v23 = v22;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, OS_SIGNPOST_INTERVAL_END, v4, "PGCityscapeWallpaperSuggesterFetchCandidates", "", buf, 2u);
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v28 = "PGCityscapeWallpaperSuggesterFetchCandidates";
    v29 = 2048;
    v30 = ((((v19 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)suggestionsWithOptions:(id)a3 progress:(id)a4
{
  v145[6] = *MEMORY[0x277D85DE8];
  v127 = a3;
  v124 = a4;
  v5 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:?];
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = 0;
  v6 = [v5 isCancelledWithProgress:0.0];
  *(v138 + 24) = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 131;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_29;
  }

  v8 = [v127 maximumNumberOfSuggestions];
  v9 = [(PGAbstractSuggester *)self session];
  [v9 loggingConnection];
  v10 = v122 = v9;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v118 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGCityscapeWallpaperSuggester", "", buf, 2u);
  }

  oslog = v13;

  info = 0;
  mach_timebase_info(&info);
  v117 = mach_absolute_time();
  v14 = [v127 additionalOptions];

  if (v14)
  {
    v15 = [v127 additionalOptions];
    v16 = [v15 objectForKey:@"filteringContext"];

    if (v16)
    {
      [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext updateFilteringContextWithDictionary:v16];
      [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_secondaryFilteringContext updateFilteringContextWithDictionary:v16];
    }
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *v143 = v8;
    _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Starting to generate %d suggestions.", buf, 8u);
  }

  v17 = [v5 childProgressReporterFromStart:0.0 toEnd:0.39];
  v18 = [(PGCityscapeWallpaperSuggester *)self fetchUnsortedCandidatesWithProgressReporter:v17];
  v19 = [v18 count];
  v20 = *(v138 + 24);
  v121 = v17;
  v123 = v18;
  if (!v19)
  {
    if (v138[3])
    {
      *(v138 + 24) = 1;
    }

    else
    {
      v24 = [v5 isCancelledWithProgress:1.0];
      *(v138 + 24) = v24;
      if ((v24 & 1) == 0)
      {
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Found 0 unsorted candidate.", buf, 2u);
        }

        v36 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v39 = oslog;
        v40 = v39;
        if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggester", "", buf, 2u);
        }

        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        *buf = 136315394;
        *v143 = "PGCityscapeWallpaperSuggester";
        *&v143[8] = 2048;
        *&v143[10] = ((((v36 - v117) * numer) / denom) / 1000000.0);
        v23 = "[Performance] %s: %f ms";
        v22 = v40;
        v25 = 22;
        goto LABEL_26;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 154;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      v22 = MEMORY[0x277D86220];
      v23 = "Cancelled at line %d in file %s";
      goto LABEL_25;
    }

LABEL_27:
    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_28;
  }

  if (v138[3])
  {
    *(v138 + 24) = 1;
    goto LABEL_20;
  }

  v21 = [v5 isCancelledWithProgress:0.4];
  *(v138 + 24) = v21;
  if (v21)
  {
LABEL_20:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 161;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      v22 = MEMORY[0x277D86220];
      v23 = "Cancelled at line %d in file %s";
LABEL_25:
      v25 = 18;
LABEL_26:
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v23, buf, v25);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v28 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v145[0] = v28;
  v29 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cropScorePenalty" ascending:1];
  v145[1] = v29;
  v30 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"wallpaperScore" ascending:0];
  v145[2] = v30;
  v31 = [MEMORY[0x277D3C828] cropScoreSortDescriptorForOrientation:{-[PGCityscapeWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")}];
  v145[3] = v31;
  v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v145[4] = v32;
  v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"assetUUID" ascending:1];
  v145[5] = v33;
  v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:6];

  v34 = MEMORY[0x277D3C810];
  v35 = [(PGCityscapeWallpaperSuggester *)self primaryFilteringContext];
  [v35 timeIntervalForCandidateDeduping];
  v107 = [v34 sortedDedupedCandidatesFromCandidates:v123 sortDescriptors:v110 timeIntervalForCandidateDeduping:v8 targetNumberOfSuggestions:4 maximumTimeIntervalReductionFactor:?];

  if (v138[3])
  {
    *(v138 + 24) = 1;
LABEL_42:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 173;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
    goto LABEL_128;
  }

  v41 = [v5 isCancelledWithProgress:0.8];
  *(v138 + 24) = v41;
  if (v41)
  {
    goto LABEL_42;
  }

  v42 = [objc_opt_class() suggestionTypes];
  v116 = [v42 firstIndex];

  v43 = [objc_opt_class() suggestionSubtypes];
  v115 = [v43 firstIndex];

  assetGater = self->_assetGater;
  v45 = [PGWallpaperSuggestionAccumulator alloc];
  if (assetGater)
  {
    v46 = 2 * v8;
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

  v106 = [(PGWallpaperSuggestionAccumulator *)v45 initWithTargetNumberOfSuggestions:v8 targetMinimumNumberOfGatedSuggestions:v47 maximumNumberOfSuggestionsToTryForGating:v46 loggingConnection:oslog];
  v103 = [MEMORY[0x277CBEAA8] date];
  v105 = [v103 dateByAddingTimeInterval:120.0];
  v48 = [v107 count];
  log = oslog;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:120.0];
    *buf = 67109890;
    *v143 = v48;
    *&v143[4] = 2112;
    *&v143[6] = v103;
    *&v143[14] = 2112;
    *&v143[16] = v49;
    LOWORD(v144[0]) = 2112;
    *(v144 + 2) = v105;
    _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Start processing %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x26u);
  }

  if (v48 <= 1)
  {
    v50 = 1;
  }

  else
  {
    v50 = v48;
  }

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  obj = v107;
  v51 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
  if (!v51)
  {
    v102 = 0;
    v104 = 0;
    v108 = 0;
    v112 = 0;
LABEL_105:

LABEL_106:
    v85 = [(PGWallpaperSuggestionAccumulator *)v106 suggestions];
    v86 = self->_assetGater;
    v87 = log;
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_INFO);
    if (v86)
    {
      if (!v88)
      {
        goto LABEL_112;
      }

      v89 = [v85 count];
      v90 = [(PGWallpaperSuggestionAccumulator *)v106 numberOfGatedSuggestions];
      *buf = 67109376;
      *v143 = v89;
      *&v143[4] = 1024;
      *&v143[6] = v90;
      v91 = "[PGCityscapeWallpaperSuggester] Generated %d suggestions (%d gated)";
      v92 = v87;
      v93 = 14;
    }

    else
    {
      if (!v88)
      {
        goto LABEL_112;
      }

      v94 = [v85 count];
      *buf = 67109120;
      *v143 = v94;
      v91 = "[PGCityscapeWallpaperSuggester] Generated %d suggestions";
      v92 = v87;
      v93 = 8;
    }

    _os_log_impl(&dword_22F0FC000, v92, OS_LOG_TYPE_INFO, v91, buf, v93);
LABEL_112:

    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 67110144;
      *v143 = v112;
      *&v143[4] = 1024;
      *&v143[6] = v108;
      *&v143[10] = 1024;
      *&v143[12] = v104;
      *&v143[16] = 1024;
      *&v143[18] = v102;
      *&v143[22] = 1024;
      v144[0] = HIDWORD(v102);
      _os_log_impl(&dword_22F0FC000, v87, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Tried %d assets, %d passed, rejected %d for clock overlap, %d for low resolution, %d for low crop score.", buf, 0x20u);
    }

    if (v138[3])
    {
      *(v138 + 24) = 1;
    }

    else
    {
      v95 = [v5 isCancelledWithProgress:1.0];
      *(v138 + 24) = v95;
      if ((v95 & 1) == 0)
      {
        v96 = mach_absolute_time();
        v97 = info.numer;
        v98 = info.denom;
        v99 = v87;
        v100 = v99;
        if (v118 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v100, OS_SIGNPOST_INTERVAL_END, spid, "PGCityscapeWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v143 = "PGCityscapeWallpaperSuggester";
          *&v143[8] = 2048;
          *&v143[10] = ((((v96 - v117) * v97) / v98) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v100, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v7 = v85;
        goto LABEL_126;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v143 = 266;
      *&v143[4] = 2080;
      *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v7 = MEMORY[0x277CBEBF8];
LABEL_126:

    goto LABEL_127;
  }

  v53 = 0;
  v119 = 0;
  v102 = 0;
  v104 = 0;
  v108 = 0;
  v112 = 0;
  v54 = 0.1 / v50;
  v114 = *v133;
  *&v52 = 138412290;
  v101 = v52;
LABEL_58:
  v113 = v51;
  v55 = 0;
  while (1)
  {
    if (*v133 != v114)
    {
      objc_enumerationMutation(obj);
    }

    v56 = *(*(&v132 + 1) + 8 * v55);
    v57 = objc_autoreleasePoolPush();
    v58 = [PGSingleAssetSuggestion alloc];
    v59 = [v56 asset];
    v60 = [(PGSingleAssetSuggestion *)v58 initWithType:v116 subtype:v115 asset:v59];

    v61 = self->_assetGater;
    if (v61)
    {
      v62 = [v56 asset];
      v128[0] = MEMORY[0x277D85DD0];
      v128[1] = 3221225472;
      v128[2] = __65__PGCityscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke;
      v128[3] = &unk_27887F968;
      v130 = &v137;
      v129 = v5;
      v131 = v54 * v53;
      v63 = [(PGWallpaperSuggestionAssetGater *)v61 gateAsset:v62 progressBlock:v128];

      -[PGSingleAssetSuggestion setAvailableFeatures:](v60, "setAvailableFeatures:", [v63 availableFeatures]);
      v64 = [v63 passesAnyGating];
      v65 = [v63 didTimeout];

      v119 += v65;
    }

    else
    {
      v64 = 1;
    }

    if (v138[3])
    {
      *(v138 + 24) = 1;
LABEL_67:
      v67 = 1;
      v68 = MEMORY[0x277D86220];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v143 = 210;
        *&v143[4] = 2080;
        *&v143[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/PGCityscapeWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, v68, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_98;
    }

    v66 = [v5 isCancelledWithProgress:v54 * v53 + 0.9];
    *(v138 + 24) = v66;
    if (v66)
    {
      goto LABEL_67;
    }

    ++v112;
    if (v64)
    {
      goto LABEL_80;
    }

    v69 = [v56 cropResult];
    v70 = [v69 cropForOrientation:{-[PGCityscapeWallpaperSuggesterFilteringContext orientation](self->_primaryFilteringContext, "orientation")}];

    v71 = -[PGCityscapeWallpaperSuggesterFilteringContext ignoreClockOverlap](self->_primaryFilteringContext, "ignoreClockOverlap") ? 1 : [v70 passesClockOverlap];
    [v70 cropZoomRatio];
    v73 = v72;
    [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext maximumCropZoomRatio];
    v75 = v74;
    [v70 cropScore];
    v77 = v76;
    [(PGCityscapeWallpaperSuggesterFilteringContext *)self->_primaryFilteringContext minimumCropScore];
    v79 = v73 <= v75 ? v71 : 0;
    v80 = v77 >= v78 ? v79 : 0;

    if (v80)
    {
LABEL_80:
      [(PGWallpaperSuggestionAccumulator *)v106 addSuggestion:v60 passingGating:v64, v101];
      ++v108;
      if ([(PGWallpaperSuggestionAccumulator *)v106 accumulationIsComplete])
      {
        v67 = 2;
        goto LABEL_98;
      }
    }

    else
    {
      if (v71)
      {
        if (v73 > v75)
        {
          LODWORD(v102) = v102 + 1;
          v81 = @"low resolution";
        }

        else
        {
          ++HIDWORD(v102);
          v81 = @"low cropScore";
        }
      }

      else
      {
        ++v104;
        v81 = @"clock overlap";
      }

      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = v101;
        *v143 = v81;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Rejecting non-gated suggestion because of %@.", buf, 0xCu);
      }
    }

    v82 = [MEMORY[0x277CBEAA8] date];
    [v105 timeIntervalSinceDate:v82];
    v84 = v83;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 67109632;
      *v143 = v112;
      *&v143[4] = 1024;
      *&v143[6] = v108;
      *&v143[10] = 2048;
      *&v143[12] = v84;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Tried %d candidates. %d passed. %.3fs processing time left.", buf, 0x18u);
    }

    if (v119 > 1 || v84 < 0.0)
    {
      if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
      {
        *buf = 67109632;
        *v143 = v119;
        *&v143[4] = 1024;
        *&v143[6] = 1;
        *&v143[10] = 2048;
        *&v143[12] = v84;
        _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Reached (%d/%d) timeouts allowed. %.3fs processing time left.", buf, 0x18u);
      }

      v67 = 2;
    }

    else
    {
      v67 = 0;
    }

LABEL_98:
    objc_autoreleasePoolPop(v57);
    if (v67)
    {
      break;
    }

    ++v55;
    ++v53;
    if (v113 == v55)
    {
      v51 = [obj countByEnumeratingWithState:&v132 objects:v141 count:16];
      if (v51)
      {
        goto LABEL_58;
      }

      goto LABEL_105;
    }
  }

  if (v67 == 2)
  {
    goto LABEL_106;
  }

  v7 = MEMORY[0x277CBEBF8];
LABEL_127:

LABEL_128:
LABEL_28:

LABEL_29:
  _Block_object_dispose(&v137, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __65__PGCityscapeWallpaperSuggester_suggestionsWithOptions_progress___block_invoke(uint64_t a1, double a2)
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
  v2 = self;
  v3 = objc_opt_class();
  if (!v2)
  {
    NSStringFromClass(v3);
    objc_claimAutoreleasedReturnValue();
LABEL_11:
    v14 = _PFAssertFailHandler();
    [(PGCityscapeWallpaperSuggester *)v14 initWithSession:v15, v16];
    return;
  }

  if (([(PGCityscapeWallpaperSuggester *)v2 isMemberOfClass:v3]& 1) == 0)
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
  v5 = [PGCityscapeWallpaperSuggesterFilteringContext alloc];
  if (IsIPad)
  {
    v6 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForCityscapesInOrientation:2];
    primaryFilteringContext = v2->_primaryFilteringContext;
    v2->_primaryFilteringContext = v6;

    v8 = [[PGCityscapeWallpaperSuggesterFilteringContext alloc] initForCityscapesInOrientation:1];
  }

  else
  {
    v9 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v5 initForCityscapesInOrientation:1];
    v10 = v2->_primaryFilteringContext;
    v2->_primaryFilteringContext = v9;

    v8 = 0;
  }

  secondaryFilteringContext = v2->_secondaryFilteringContext;
  v2->_secondaryFilteringContext = v8;
}

- (PGCityscapeWallpaperSuggester)initWithSession:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PGCityscapeWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v13 initWithSession:v4];
  if (v5)
  {
    if ([objc_opt_class() filtersForTopSuggestions])
    {
      v6 = [PGWallpaperSuggestionAssetGater alloc];
      v7 = [v4 loggingConnection];
      v8 = [(PGWallpaperSuggestionAssetGater *)v6 initWithType:4 loggingConnection:v7];
      assetGater = v5->_assetGater;
      v5->_assetGater = v8;

      [(PGWallpaperSuggestionAssetGater *)v5->_assetGater setEnableSettlingEffect:0];
    }

    v10 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    peopleSceneConfidenceThresholdHelper = v5->_peopleSceneConfidenceThresholdHelper;
    v5->_peopleSceneConfidenceThresholdHelper = v10;

    [(PGCityscapeWallpaperSuggester *)v5 setupFilteringContexts];
  }

  return v5;
}

+ (BOOL)passesFilteringWithAsset:(id)a3 curationContext:(id)a4 orientation:(int64_t)a5 reason:(id *)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([a1 isPositiveWithUrbanSceneLabelsForAsset:v10])
  {
    v38 = [v10 photoLibrary];
    v12 = [v38 librarySpecificFetchOptions];
    v13 = [a1 prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
    [v12 setInternalPredicate:v13];

    v14 = MEMORY[0x277CD97A8];
    v15 = [v10 localIdentifier];
    v39[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:v12];
    v18 = [v17 firstObject];

    if (!v18)
    {
      v23 = 0;
      if (a6)
      {
        *a6 = @"Fails Predicate";
      }

      goto LABEL_29;
    }

    v19 = [objc_opt_class() filtersForTopSuggestions];
    v20 = [[PGCityscapeWallpaperSuggestionCandidate alloc] initWithAsset:v10];
    v21 = [PGCityscapeWallpaperSuggesterFilteringContext alloc];
    if (v19)
    {
      v22 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v21 initForTopCityscapesInOrientation:a5];
    }

    else
    {
      v22 = [(PGCityscapeWallpaperSuggesterFilteringContext *)v21 initForCityscapesInOrientation:a5];
    }

    v24 = v22;
    v36 = +[PGWallpaperSuggestionUtilities peopleSceneConfidenceThresholdHelper];
    v37 = v20;
    if ([a1 candidate:v20 passesFilteringWithContext:v24 curationContext:v11 thresholdHelper:? statistics:?])
    {
      if (v19)
      {
        v25 = [PGWallpaperSuggestionAssetGater alloc];
        v26 = [(PGWallpaperSuggestionAssetGater *)v25 initWithType:4 loggingConnection:MEMORY[0x277D86220]];
        v23 = 1;
        [(PGWallpaperSuggestionAssetGater *)v26 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v26 setIsUserInitiated:1];
        v35 = [(PGWallpaperSuggestionAssetGater *)v26 gateAsset:v10 progressBlock:&__block_literal_global_504];
        if ([v35 passesAnyGating])
        {
          v27 = @"Pass Segmented";
        }

        else
        {
          v28 = [(PGCityscapeWallpaperSuggestionCandidate *)v20 cropResult];
          v29 = [v28 cropForOrientation:a5];

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

        if (!a6)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = @"Pass";
        v23 = 1;
        if (!a6)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      if (!a6)
      {
        v23 = 0;
LABEL_28:

LABEL_29:
        goto LABEL_30;
      }

      v23 = 0;
      v27 = @"Unknown Reason";
    }

    *a6 = v27;
    goto LABEL_28;
  }

  v23 = 0;
  if (a6)
  {
    *a6 = @"No Urban Scene";
  }

LABEL_30:

  v33 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (BOOL)candidate:(id)a3 passesFilteringWithContext:(id)a4 curationContext:(id)a5 thresholdHelper:(id)a6 statistics:(id *)a7
{
  v71 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a5;
  v15 = [v11 asset];
  v16 = [v15 curationModel];
  v17 = [v14 userFeedbackCalculator];

  LODWORD(v14) = [v16 isUtilityForMemoriesWithAsset:v15 userFeedbackCalculator:v17 blockSocialMediaImportedAssets:PGWallpaperSuggestionBlockSocialMediaImportedAssets];
  if (v14)
  {
    v18 = 0;
    ++a7->var0;
    goto LABEL_44;
  }

  if ([v16 avoidIfPossibleForKeyAssetWithAsset:v15 statistics:&a7->var12])
  {
    v18 = 0;
    ++a7->var1;
    goto LABEL_44;
  }

  v19 = [v16 aestheticsModel];
  v20 = [v19 overallAestheticScoreNode];
  [v20 highPrecisionOperatingPoint];
  v22 = v21;

  [v15 overallAestheticScore];
  if (v22 > v23)
  {
    v18 = 0;
    ++a7->var2;
    goto LABEL_44;
  }

  [v12 absoluteMinimumWallpaperScore];
  v25 = v24;
  if (v24 < 0.0)
  {
    v26 = [v16 wallpaperScoreModel];
    v27 = [v26 minimumWallpaperScoreNode];
    [v27 operatingPoint];
    v25 = v28;
  }

  [v11 wallpaperScore];
  if (v25 > v29)
  {
    v18 = 0;
    ++a7->var3;
    goto LABEL_44;
  }

  v30 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v30 doubleForKey:@"PGCityscapeWallpaperSuggesterAestheticScore"];
  v32 = v31;

  if (v32 <= 0.0)
  {
    v34 = [v16 isAestheticallyPrettyGoodWithAsset:v15];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v69 = 134217984;
      v70 = v32;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Using custom aesthetics score %.2f ", &v69, 0xCu);
    }

    [v15 overallAestheticScore];
    v34 = v32 <= v33;
  }

  [v12 minimumWallpaperScore];
  v36 = v35;
  if (v35 < 0.0)
  {
    v37 = [v16 wallpaperScoreModel];
    v38 = [v37 cityscapeNode];
    [v38 highRecallOperatingPoint];
    v36 = v39;
  }

  v40 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v40 doubleForKey:@"PGCityscapeWallpaperSuggesterWallpaperScore"];
  v42 = v41;

  if (v42 > 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v69 = 134217984;
      v70 = v42;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGCityscapeWallpaperSuggester] Using custom wallpaper score %.2f ", &v69, 0xCu);
    }

    v36 = v42;
  }

  [v11 wallpaperScore];
  if (v36 <= v43)
  {
    v44 = 1;
  }

  else
  {
    v44 = v34;
  }

  if ((v44 & 1) == 0)
  {
    v18 = 0;
    ++a7->var9;
    goto LABEL_44;
  }

  if (([v12 bypassCropScoreCheck] & 1) == 0)
  {
    v45 = [v11 cropResult];
    v46 = [v45 cropForOrientation:{objc_msgSend(v12, "orientation")}];

    if (([v12 ignoreClockOverlap] & 1) != 0 || objc_msgSend(v46, "passesClockOverlap"))
    {
      [v46 cropZoomRatio];
      v48 = v47;
      [v12 maximumCropZoomRatio];
      if (v48 <= v49)
      {
        [v46 cropScore];
        v52 = v51;
        [v12 minimumCropScore];
        if (v52 >= v53)
        {
          v65 = v53;
          [v12 cropScorePenaltyCutOff];
          [v11 setCropScorePenalty:{+[PGWallpaperSuggestionUtilities computeQuantizedPenalty:minScore:cutOff:](PGWallpaperSuggestionUtilities, "computeQuantizedPenalty:minScore:cutOff:", v52, v65, v66)}];

          goto LABEL_27;
        }

        v50 = 24;
      }

      else
      {
        v50 = 20;
      }
    }

    else
    {
      v50 = 16;
    }

    ++*(&a7->var0 + v50);

    v18 = 0;
    goto LABEL_44;
  }

LABEL_27:
  if ([MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:v15])
  {
    if ([PGWallpaperSuggestionUtilities foundDominantPeopleSceneInAsset:v15 withConfidenceThresholdHelper:v13])
    {
      v18 = 0;
      ++a7->var8;
    }

    else
    {
      [v12 maximumLowLightScore];
      v55 = v54;
      if (v54 < 0.0)
      {
        v56 = [v15 curationModel];
        v57 = [v56 aestheticsModel];
        v58 = [v57 lowLightNode];
        [v58 operatingPoint];
        v55 = v59;
      }

      v60 = [v15 aestheticProperties];
      [v60 lowLight];
      v62 = v61;

      if (v55 >= v62)
      {
        v67 = [v11 asset];
        v68 = [PGSensitiveLocationBlocklistConfiguration isAssetAtSensitiveLocationAndDate:v67];

        if (v68)
        {
          v18 = 0;
          ++a7->var11;
        }

        else
        {
          v18 = 1;
        }
      }

      else
      {
        v18 = 0;
        ++a7->var10;
      }
    }
  }

  else
  {
    v18 = 0;
    ++a7->var7;
  }

LABEL_44:

  v63 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (BOOL)isPositiveWithUrbanSceneLabelsForAsset:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v12 = @"cityscape";
  v13 = @"skyscraper";
  v14 = @"Q702492";
  v15 = @"Q200250";
  v16 = @"Q174782";
  v17 = @"Q18142";
  v18 = @"Q2997369";
  v19 = @"Q1050303";
  v20 = @"Q515";
  v21 = @"Q2651004";
  v22 = @"Q2319498";
  v23 = @"Q1349760";
  v24 = @"Q223750";
  v25 = @"Q4198718";
  v26 = @"Q957904";
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v12 count:15];
  v7 = [PGSceneAssetFilter alloc];
  v8 = [a1 sceneTaxonomy];
  v9 = [(PGSceneAssetFilter *)v7 initForEntityNetWithSceneNames:v6 positiveSceneCustomSignalModelBlock:&__block_literal_global_6546 secondaryPositiveScenes:MEMORY[0x277CBEBF8] positiveDominantScenes:MEMORY[0x277CBEBF8] positiveDominantSceneCustomSignalModelBlock:0 positiveSemDevScenes:MEMORY[0x277CBEBF8] negativeScenes:MEMORY[0x277CBEBF8] sceneTaxonomy:v8, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27];

  LOBYTE(v8) = [v9 passesWithAsset:v5];
  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)candidatesFromAssets:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [PGCityscapeWallpaperSuggestionCandidate alloc];
        v12 = [(PGCityscapeWallpaperSuggestionCandidate *)v11 initWithAsset:v10, v15];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v4 addObject:v5];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
  [v4 addObject:v6];
  v7 = [MEMORY[0x277D3ACE0] predicateToIncludeOnlyAllowedForAnalysisAndProcessedAssetsToSceneVersion:&unk_2844823B8];
  [v4 addObject:v7];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.%K > %d", @"additionalAttributes", @"faceAnalysisVersion", 0];
  [v4 addObject:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.@count == %d", @"detectedFaces", 0];
  [v4 addObject:v9];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"playbackStyle", &unk_2844854F0];
  [v4 addObject:v10];
  if ([v3 count])
  {
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", v3];
    [v4 addObject:v11];
  }

  v12 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];

  return v12;
}

+ (CLSSceneTaxonomyHierarchy)sceneTaxonomy
{
  v2 = sceneTaxonomy_sceneTaxonomy;
  if (!sceneTaxonomy_sceneTaxonomy)
  {
    v3 = [objc_alloc(MEMORY[0x277D3C7B8]) initForSceneNetOnly:0];
    v4 = sceneTaxonomy_sceneTaxonomy;
    sceneTaxonomy_sceneTaxonomy = v3;

    v2 = sceneTaxonomy_sceneTaxonomy;
  }

  return v2;
}

@end