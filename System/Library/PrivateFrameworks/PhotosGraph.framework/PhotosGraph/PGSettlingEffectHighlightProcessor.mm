@interface PGSettlingEffectHighlightProcessor
+ (BOOL)candidate:(id)candidate passesFilteringWithStatistics:(id *)statistics;
- ($C310A9A4ADCE7DE5CA50D45CD0B5CDBE)statistics;
- (PGSettlingEffectHighlightProcessor)initWithPhotoLibrary:(id)library;
- (id)fetchHighlightCandidatesWithProgressReporter:(id)reporter;
- (void)logStatistics:(id *)statistics;
@end

@implementation PGSettlingEffectHighlightProcessor

- ($C310A9A4ADCE7DE5CA50D45CD0B5CDBE)statistics
{
  v3 = *&self[1].var1;
  *&retstr->var0 = *&self->var3.var3;
  *&retstr->var3.var1 = v3;
  retstr->var3.var5 = self[1].var3.var2;
  return self;
}

- (void)logStatistics:(id *)statistics
{
  v11 = *MEMORY[0x277D85DE8];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var2 = statistics->var2;
    v9 = 67109120;
    v10 = var2;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] %d on-demand settling effect score requested", &v9, 8u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    var1 = statistics->var1;
    v9 = 67109120;
    v10 = var1;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Filtered out %d for settlingEffectScore", &v9, 8u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)fetchHighlightCandidatesWithProgressReporter:(id)reporter
{
  v68 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 44;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v67 = 0;
    memset(buf, 0, sizeof(buf));
    v6 = self->_loggingConnection;
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v63 = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchHighlightCandidates", "", v63, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v10 = mach_absolute_time();
    librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
    v12 = [PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:1];
    [librarySpecificFetchOptions setFetchPropertySets:v12];

    settlingEffectAssetInternalSortDescriptors = [MEMORY[0x277D3C810] settlingEffectAssetInternalSortDescriptors];
    [librarySpecificFetchOptions setInternalSortDescriptors:settlingEffectAssetInternalSortDescriptors];

    v14 = [MEMORY[0x277D3C810] fetchLivePhotoTabHighlightCandidateAssetsWithOptions:librarySpecificFetchOptions excludeExistingWallpapers:1 statistics:buf | 0xC];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v16 = loggingConnection;
      v17 = [v14 count];
      *v63 = 67109120;
      *&v63[4] = v17;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Found %d highlight candidate assets", v63, 8u);
    }

    if ([reporterCopy isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *v63 = 67109378;
        *&v63[4] = 56;
        *&v63[8] = 2080;
        *&v63[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v63, 0x12u);
      }

      v5 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v50 = v7 - 1;
      spid = v7;
      v52 = librarySpecificFetchOptions;
      v53 = v9;
      v57 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v18 = [v14 count];
      v19 = 0;
      v20 = 0;
      v51 = v18 / 0xC8;
      v21 = (1.0 / v18 + 1.0) * 0.8;
      v22 = 0x277CCA000uLL;
      v55 = v14;
      do
      {
        v54 = v20;
        v56 = [*(v22 + 2680) indexSetWithIndexesInRange:?];
        v23 = [v14 objectsAtIndexes:?];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v58 objects:v65 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v59;
          while (2)
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v59 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v58 + 1) + 8 * i);
              v30 = objc_autoreleasePoolPush();
              v31 = [[PGSettlingEffectWallpaperSuggestionCandidate alloc] initWithAsset:v29 suggestion:0];
              if ([objc_opt_class() candidate:v31 passesFilteringWithStatistics:buf])
              {
                [v57 addObject:v31];
              }

              if ([reporterCopy isCancelledWithProgress:v21 * v19 + 0.2])
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                {
                  *v63 = 67109378;
                  *&v63[4] = 78;
                  *&v63[8] = 2080;
                  *&v63[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectHighlightProcessor.m";
                  _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", v63, 0x12u);
                }

                objc_autoreleasePoolPop(v30);
                v5 = MEMORY[0x277CBEBF8];
                librarySpecificFetchOptions = v52;
                v9 = v53;
                v14 = v55;
                goto LABEL_32;
              }

              ++v19;

              objc_autoreleasePoolPop(v30);
            }

            v26 = [v24 countByEnumeratingWithState:&v58 objects:v65 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v32 = self->_loggingConnection;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v33 = v32;
          firstIndex = [v56 firstIndex];
          lastIndex = [v56 lastIndex];
          *v63 = 134218240;
          *&v63[4] = firstIndex;
          *&v63[12] = 2048;
          *&v63[14] = lastIndex;
          _os_log_debug_impl(&dword_22F0FC000, v33, OS_LOG_TYPE_DEBUG, "[PGSettlingEffectHighlightProcessor] processed candidates from %lu to %lu", v63, 0x16u);
        }

        v14 = v55;
        v20 = v54 + 1;
        v22 = 0x277CCA000;
      }

      while (v54 != v51);
      v38 = +[PGSettlingEffectWallpaperSuggestionCandidate sortDescriptorsForProcessing];
      v5 = [v57 sortedArrayUsingDescriptors:v38];

      *buf = [v5 count];
      v39 = self->_loggingConnection;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v41 = v39;
        v42 = [v57 count];
        *v63 = 67109120;
        *&v63[4] = v42;
        _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, "[PGSettlingEffectHighlightProcessor] Found %d candidates", v63, 8u);
      }

      v43 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v9 = v53;
      v46 = v53;
      v47 = v46;
      librarySpecificFetchOptions = v52;
      if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
      {
        *v63 = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v47, OS_SIGNPOST_INTERVAL_END, spid, "FetchHighlightCandidates", "", v63, 2u);
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *v63 = 136315394;
        *&v63[4] = "FetchHighlightCandidates";
        *&v63[12] = 2048;
        *&v63[14] = ((((v43 - v10) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v47, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v63, 0x16u);
      }

      *v63 = *buf;
      *&v63[16] = *&buf[16];
      v64 = v67;
      [(PGSettlingEffectHighlightProcessor *)self logStatistics:v63];
      v48 = *&buf[16];
      *&self->_statistics.numberOfHighlightCandidatesForFRC = *buf;
      *&self->_statistics.highlightStatistics.numberOfHighlightCandidates = v48;
      self->_statistics.highlightStatistics.numberOfEliminationsThruDeviceOwner = v67;
LABEL_32:
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v5;
}

- (PGSettlingEffectHighlightProcessor)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v11.receiver = self;
  v11.super_class = PGSettlingEffectHighlightProcessor;
  v6 = [(PGSettlingEffectHighlightProcessor *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = os_log_create("com.apple.PhotosGraph", "suggestions");
    loggingConnection = v7->_loggingConnection;
    v7->_loggingConnection = v8;
  }

  return v7;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithStatistics:(id *)statistics
{
  asset = [candidate asset];
  v12 = 0;
  [PGSettlingEffectScoreHelper analyzedSettlingEffectScoreForAsset:asset requestedOnDemand:&v12];
  v7 = v6;
  if (v12 == 1)
  {
    ++statistics->var2;
  }

  mediaAnalysisProperties = [asset mediaAnalysisProperties];
  +[PGSettlingEffectWallpaperSuggesterFilteringContext minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:](PGSettlingEffectWallpaperSuggesterFilteringContext, "minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:", 0, [mediaAnalysisProperties mediaAnalysisVersion]);
  v10 = v9;

  if (v10 > v7)
  {
    ++statistics->var1;
  }

  return v10 <= v7;
}

@end