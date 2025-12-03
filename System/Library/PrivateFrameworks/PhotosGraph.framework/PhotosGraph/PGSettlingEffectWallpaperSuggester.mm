@interface PGSettlingEffectWallpaperSuggester
+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext statistics:(id *)statistics;
+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason;
+ (id)analyticsPayloadFromFRCFilteringStatistics:(id *)statistics photoLibrary:(id)library;
+ (id)analyticsPayloadFromHighlightStatistics:(id *)statistics;
+ (id)analyticsPayloadFromPostFilteringStatistics:(id)statistics;
+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds;
- (BOOL)hasEnoughSettlingEffectAssets;
- (PGSettlingEffectWallpaperSuggester)initWithSession:(id)session;
- (id)consolidatedCandidatesFromWallpaperCandidates:(id)candidates highlightCandidates:(id)highlightCandidates;
- (id)fetchCandidateSuggestions;
- (id)fetchSortedWallpaperCandidatesWithProgressReporter:(id)reporter;
- (id)suggestionsWithOptions:(id)options progress:(id)progress;
- (unint64_t)totalLivePhotos;
- (void)deleteLegacySettlingEffectSuggestions;
- (void)processFRCFromCandidates:(id)candidates withProgressReporter:(id)reporter;
- (void)sendSettlingEffectStatisticsEvent;
- (void)setAvailableFeaturesForCandidates:(id)candidates pass:(BOOL)pass;
@end

@implementation PGSettlingEffectWallpaperSuggester

- (void)sendSettlingEffectStatisticsEvent
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  session = [(PGAbstractSuggester *)self session];
  v5 = objc_opt_class();
  photoLibrary = [session photoLibrary];
  v7 = *&self->_filteringStatistics.highlightStatistics.numberOfEliminationsThruSettlingEffectScore;
  v27 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruVideoDecision;
  v28 = v7;
  v29 = *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruCrop;
  v30 = *&self->_filteringStatistics.numberOfFRCEligibleWallpaperCandidates;
  v8 = *&self->_filteringStatistics.postfilteringStatistics.numberOfEliminationsThruSettlingEffectScore;
  v23 = *&self->_filteringStatistics.numberOfLivePhotos;
  v24 = v8;
  v9 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStabilization;
  v25 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruResourceAvailability;
  v26 = v9;
  v10 = [v5 analyticsPayloadFromFRCFilteringStatistics:&v23 photoLibrary:photoLibrary];

  [v3 addEntriesFromDictionary:v10];
  v11 = [objc_opt_class() analyticsPayloadFromPostFilteringStatistics:*&self->_filteringStatistics.postfilteringStatistics];
  [v3 addEntriesFromDictionary:v11];
  v12 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruGenericError;
  v23 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruFeatureDisabled;
  v24 = v12;
  v25 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruMetadataIntegrity;
  LODWORD(v26) = self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStillTransition;
  v13 = PFPosterSettlingEffectGatingStatisticsAnalyticsPayload();
  [v3 addEntriesFromDictionary:v13];
  v14 = objc_opt_class();
  v15 = *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfHighlightCandidates;
  v23 = *&self->_filteringStatistics.highlightStatistics.numberOfHighlightCandidatesForFRC;
  v24 = v15;
  LODWORD(v25) = self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruDeviceOwner;
  v16 = [v14 analyticsPayloadFromHighlightStatistics:&v23];
  [v3 addEntriesFromDictionary:v16];
  workingContext = [session workingContext];
  analytics = [workingContext analytics];
  v19 = MEMORY[0x277D3B5A0];
  [analytics sendEvent:*MEMORY[0x277D3B5A0] withPayload:v3];

  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v21 = *v19;
    LODWORD(v23) = 138412290;
    *(&v23 + 4) = v21;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Sent %@ event", &v23, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (unint64_t)totalLivePhotos
{
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];

  v4 = MEMORY[0x277CD97B8];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = [v4 fetchAssetCollectionsWithType:2 subtype:213 options:librarySpecificFetchOptions];
  firstObject = [v6 firstObject];

  librarySpecificFetchOptions2 = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions2 setShouldPrefetchCount:1];
  v9 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:firstObject options:librarySpecificFetchOptions2];
  v10 = [v9 count];

  return v10;
}

- (BOOL)hasEnoughSettlingEffectAssets
{
  v19[1] = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  [librarySpecificFetchOptions setFetchLimit:100];
  v19[0] = *MEMORY[0x277CD9AA8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v5];

  settlingEffectAssetInternalSortDescriptors = [MEMORY[0x277D3C810] settlingEffectAssetInternalSortDescriptors];
  [librarySpecificFetchOptions setInternalSortDescriptors:settlingEffectAssetInternalSortDescriptors];

  v7 = [MEMORY[0x277D3C810] fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:librarySpecificFetchOptions excludeExistingWallpapers:0];
  v8 = [v7 count];
  v9 = @"Not enough content";
  if (v8 > 0x63)
  {
    v9 = @"Has enough content";
  }

  v10 = v9;
  loggingConnection = [session loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v14[0] = 67109634;
    v14[1] = [v7 count];
    v15 = 1024;
    v16 = 100;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Found %d (target:%d) FRC eligible highlight assets. %@", v14, 0x18u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8 > 0x63;
}

- (void)processFRCFromCandidates:(id)candidates withProgressReporter:(id)reporter
{
  v91 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  reporterCopy = reporter;
  v6 = [reporterCopy isCancelledWithProgress:0.0];
  *(v87 + 24) = v6;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 497;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    goto LABEL_75;
  }

  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v65 = [candidatesCopy count];
  date = [MEMORY[0x277CBEAA8] date];
  v64 = [date dateByAddingTimeInterval:300.0];
  v8 = loggingConnection;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:300.0];
    *buf = 67109890;
    *&buf[4] = v65;
    *&buf[8] = 2112;
    *&buf[10] = date;
    *&buf[18] = 2112;
    *&buf[20] = v9;
    *&buf[28] = 2112;
    *&buf[30] = v64;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Running L1 & FRC Gating for %d candidates. StartingDate: %@, MaxProcessingTime: %@s, MaxProcessingDate: %@", buf, 0x26u);
  }

  v10 = v8;
  v11 = os_signpost_id_generate(v10);
  v12 = v10;
  v13 = v12;
  spid = v11;
  v58 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "PGSettlingEffectWallpaperSuggesterFRCGating", "", buf, 2u);
  }

  v71 = v13;

  info = 0;
  mach_timebase_info(&info);
  v56 = mach_absolute_time();
  v14 = [PGSettlingEffectConfig alloc];
  photoLibrary = [session photoLibrary];
  v62 = [(PGSettlingEffectConfig *)v14 initWithPhotoLibrary:photoLibrary loggingConnection:v71];

  maxL1FailuresAllowed = [(PGSettlingEffectConfig *)v62 maxL1FailuresAllowed];
  maxFRCRequestsAllowed = [(PGSettlingEffectConfig *)v62 maxFRCRequestsAllowed];
  if ([(PGSettlingEffectWallpaperSuggester *)self hasEnoughSettlingEffectAssets])
  {
    maxL1FailuresAllowed = [(PGSettlingEffectConfig *)v62 defaultL1FailuresAllowed];
    maxFRCRequestsAllowed = [(PGSettlingEffectConfig *)v62 defaultFRCRequestsAllowed];
  }

  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v65)
  {
    v61 = 0;
    v44 = 0;
    HIDWORD(v78) = 0;
    v45 = 0;
    goto LABEL_64;
  }

  v75 = 0;
  v76 = 0;
  v74 = 0;
  v61 = 0;
  v67 = 0;
  v78 = 0;
  v16 = 0;
  v70 = 0;
  v17 = v65 + 1;
  v18 = 1.0 / v65;
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v19 = [candidatesCopy objectAtIndexedSubscript:v16];
    asset = [v19 asset];
    suggestion = [v19 suggestion];
    v79 = suggestion == 0;

    if (suggestion)
    {
      v21 = @"suggestion";
    }

    else
    {
      v21 = @"highlight";
    }

    v22 = v71;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      uuid = [asset uuid];
      *buf = 67109890;
      *&buf[4] = v16 + 1;
      *&buf[8] = 1024;
      *&buf[10] = v65;
      *&buf[14] = 2112;
      *&buf[16] = v21;
      *&buf[24] = 2112;
      *&buf[26] = uuid;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Check FRC eligibility (%d/%d) for %@ asset: %@", buf, 0x22u);
    }

    selfCopy = self;
    assetGater = self->_assetGater;
    if (assetGater)
    {
      [(PGWallpaperSuggestionAssetGater *)assetGater settlingEffectGatingStatistics];
    }

    else
    {
      memset(buf, 0, 52);
    }

    v26 = [PGWallpaperSuggestionAssetGater numberOfFailuresAfterStabilizationFromStatistics:buf];
    v27 = selfCopy->_assetGater;
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __84__PGSettlingEffectWallpaperSuggester_processFRCFromCandidates_withProgressReporter___block_invoke;
    v81[3] = &unk_27887F968;
    v83 = &v86;
    v28 = reporterCopy;
    v82 = v28;
    v84 = v18 * v16;
    v29 = [(PGWallpaperSuggestionAssetGater *)v27 gateAsset:asset progressBlock:v81];
    v30 = v29;
    if (suggestion)
    {
      if ([v29 passesSettlingEffect])
      {
        v31 = v69;
      }

      else
      {
        v31 = v68;
      }

      [v31 addObject:v19];
    }

    else
    {
      v67 += [v29 passesSettlingEffect];
    }

    if ([(PGWallpaperSuggestionAssetGater *)selfCopy->_assetGater isLastGatingCallingMediaAnalysis])
    {
      v32 = selfCopy->_assetGater;
      if (v32)
      {
        [(PGWallpaperSuggestionAssetGater *)v32 settlingEffectGatingStatistics];
      }

      else
      {
        memset(buf, 0, 52);
      }

      v33 = [PGWallpaperSuggestionAssetGater numberOfFailuresAfterStabilizationFromStatistics:buf];
      if (v33 > v26)
      {
        v34 = v75;
      }

      else
      {
        v34 = v75 + 1;
      }

      v35 = v76;
      if (v33 > v26)
      {
        v35 = v76 + 1;
      }

      v75 = v34;
      v76 = v35;
      passesSettlingEffect = [v30 passesSettlingEffect];
      didTimeout = [v30 didTimeout];
      date2 = [MEMORY[0x277CBEAA8] date];
      [v64 timeIntervalSinceDate:date2];
      v40 = v39;
      v70 += passesSettlingEffect;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 67110144;
        *&buf[4] = v76 + v75;
        *&buf[8] = 1024;
        *&buf[10] = v76;
        *&buf[14] = 1024;
        *&buf[16] = v75 - v70;
        *&buf[20] = 1024;
        *&buf[22] = v70;
        *&buf[26] = 2048;
        *&buf[28] = v40;
        _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Attempted FRC for %d items, %d failed L1, %d failed FRC, %d passed. %.3fs processing time left.", buf, 0x24u);
      }

      v74 += didTimeout;
      if (v76 >= maxL1FailuresAllowed || v75 >= maxFRCRequestsAllowed || v74 > 1 || v40 < 0.0)
      {
        self = selfCopy;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 67110912;
          *&buf[4] = v76;
          *&buf[8] = 1024;
          *&buf[10] = maxL1FailuresAllowed;
          *&buf[14] = 1024;
          *&buf[16] = v75;
          *&buf[20] = 1024;
          *&buf[22] = maxFRCRequestsAllowed;
          *&buf[26] = 1024;
          *&buf[28] = v74;
          *&buf[32] = 1024;
          *&buf[34] = 1;
          *&buf[38] = 1024;
          *&buf[40] = v17;
          *&buf[44] = 2048;
          *&buf[46] = v40;
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Reached (%d/%d) MAD L1 failures OR (%d/%d) FRC requests OR (%d/%d) timeouts allowed. %d untried. %.3fs processing time left.", buf, 0x36u);
        }

        if (selfCopy->_noLimit)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] no limit mode is enabled, continue generation", buf, 2u);
          }

          v42 = 4;
        }

        else
        {
          v42 = 2;
        }

        v61 = v17;
        goto LABEL_57;
      }
    }

    self = selfCopy;
    if (v87[3])
    {
      *(v87 + 24) = 1;
    }

    else
    {
      v41 = [v28 isCancelledWithProgress:v18 * v16];
      *(v87 + 24) = v41;
      self = selfCopy;
      if ((v41 & 1) == 0)
      {
        v42 = 0;
        goto LABEL_57;
      }
    }

    v42 = 1;
    v43 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *&buf[4] = 606;
      *&buf[8] = 2080;
      *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, v43, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

LABEL_57:

    objc_autoreleasePoolPop(context);
    LODWORD(v78) = v78 + v79;
    HIDWORD(v78) += !v79;
    if (v42)
    {
      if (v42 != 4)
      {
        break;
      }
    }

    ++v16;
    if (--v17 == 1)
    {
      goto LABEL_63;
    }
  }

  if (v42 != 2)
  {
    goto LABEL_74;
  }

LABEL_63:
  v44 = v67;
  v45 = v78;
LABEL_64:
  v46 = self->_assetGater;
  if (v46)
  {
    [(PGWallpaperSuggestionAssetGater *)v46 settlingEffectGatingStatistics];
  }

  else
  {
    memset(buf, 0, 52);
  }

  v47 = *&buf[16];
  *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruFeatureDisabled = *buf;
  *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruGenericError = v47;
  *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruMetadataIntegrity = *&buf[32];
  self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStillTransition = *&buf[48];
  [(PGWallpaperSuggestionAssetGater *)self->_assetGater logCurrentSettlingEffectGatingStatisticsWithPrefix:self->_loggingPrefix];
  [(PGWallpaperSuggestionAssetGater *)self->_assetGater logCurrentGatingStatisticsWithPrefix:self->_loggingPrefix];
  [(PGSettlingEffectWallpaperSuggester *)self setAvailableFeaturesForCandidates:v69 pass:1];
  [(PGSettlingEffectWallpaperSuggester *)self setAvailableFeaturesForCandidates:v68 pass:0];
  self->_filteringStatistics.numberOfFRCEligibleWallpaperCandidates = [v69 count];
  self->_filteringStatistics.numberOfFRCEligibleAssetCandidates = v44;
  v48 = v71;
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = [v69 count];
    *buf = 67110144;
    *&buf[4] = v49;
    *&buf[8] = 1024;
    *&buf[10] = HIDWORD(v78);
    *&buf[14] = 1024;
    *&buf[16] = v44;
    *&buf[20] = 1024;
    *&buf[22] = v45;
    *&buf[26] = 1024;
    *&buf[28] = v61;
    _os_log_impl(&dword_22F0FC000, v48, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Found %d FRC eligible wallpapers from %d wallpaper candidates, %d FRC eligible highlight assets from %d candidates, %d untried", buf, 0x20u);
  }

  v50 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v53 = v48;
  v54 = v53;
  if (v58 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v54, OS_SIGNPOST_INTERVAL_END, spid, "PGSettlingEffectWallpaperSuggesterFRCGating", "", buf, 2u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "PGSettlingEffectWallpaperSuggesterFRCGating";
    *&buf[12] = 2048;
    *&buf[14] = ((((v50 - v56) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

LABEL_74:

LABEL_75:
  _Block_object_dispose(&v86, 8);

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __84__PGSettlingEffectWallpaperSuggester_processFRCFromCandidates_withProgressReporter___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (*(v1 + 24))
  {
    result = 1;
  }

  else
  {
    result = [*(a1 + 32) isCancelledWithProgress:*(a1 + 48)];
    v1 = *(*(a1 + 40) + 8);
  }

  *(v1 + 24) = result;
  return result;
}

- (id)consolidatedCandidatesFromWallpaperCandidates:(id)candidates highlightCandidates:(id)highlightCandidates
{
  v47 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  highlightCandidatesCopy = highlightCandidates;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v10 = MEMORY[0x277D3C810];
  photoLibrary = [session photoLibrary];
  v12 = [v10 fetchSettlingEffectSuggestionsInPhotoLibrary:photoLibrary];

  v13 = [v12 count];
  v14 = MEMORY[0x277D3C810];
  photoLibrary2 = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];
  v17 = [v14 fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:librarySpecificFetchOptions excludeExistingWallpapers:1];

  v18 = [v17 count];
  v40 = loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v19 = loggingConnection;
    *buf = 67109632;
    v42 = [v12 count];
    v43 = 1024;
    v44 = [v17 count];
    v45 = 1024;
    v46 = v13 - v18;
    _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Found %d settling effect suggestions and %d settling effect highlight assets. Priority count: %d", buf, 0x14u);
  }

  objc_autoreleasePoolPop(context);
  v20 = [highlightCandidatesCopy copy];
  v21 = v20;
  if (v13 == v18)
  {
    v22 = session;
  }

  else
  {
    v23 = [v20 count];
    if (v13 - v18 >= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v13 - v18;
    }

    v25 = [v21 subarrayWithRange:{0, v24}];
    [v9 addObjectsFromArray:v25];
    v26 = [v21 arrayByExcludingObjectsInArray:v25];

    v27 = v40;
    v22 = session;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = [v25 count];
      *buf = 67109120;
      v42 = v28;
      _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Prioritize %d highlight candidates for processing.", buf, 8u);
    }

    v21 = v26;
  }

  v29 = [candidatesCopy count];
  v30 = [v21 count];
  if (v29 <= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  if (v31)
  {
    v32 = v30;
    for (i = 0; i != v31; ++i)
    {
      if (i < v29)
      {
        v34 = [candidatesCopy objectAtIndex:i];
        [v9 addObject:v34];
      }

      if (i < v32)
      {
        v35 = [v21 objectAtIndex:i];
        [v9 addObject:v35];
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchSortedWallpaperCandidatesWithProgressReporter:(id)reporter
{
  v78 = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  if ([reporterCopy isCancelledWithProgress:0.0])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v77 = 261;
      *&v77[4] = 2080;
      *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_39;
  }

  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  fetchCandidateSuggestions = [(PGSettlingEffectWallpaperSuggester *)self fetchCandidateSuggestions];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  [librarySpecificFetchOptions setCacheSizeForFetch:200];
  [librarySpecificFetchOptions setChunkSizeForFetch:200];
  v11 = [PGWallpaperSuggestionUtilities assetFetchPropertySetsIncludingGating:1];
  [librarySpecificFetchOptions setFetchPropertySets:v11];

  v12 = objc_opt_class();
  forbiddenAssetUUIDs = [session forbiddenAssetUUIDs];
  v14 = [v12 prefilteringInternalPredicateWithForbiddenAssetUUIDs:forbiddenAssetUUIDs];
  [librarySpecificFetchOptions setInternalPredicate:v14];

  v73 = [MEMORY[0x277CD97A8] fetchKeyAssetBySuggestionUUIDForSuggestions:fetchCandidateSuggestions options:librarySpecificFetchOptions];
  p_filteringStatistics = &self->_filteringStatistics;
  self->_filteringStatistics.numberOfLivePhotoWallpaperSuggestions = [v73 count];
  if ([reporterCopy isCancelledWithProgress:0.2])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v77 = 279;
      *&v77[4] = 2080;
      *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v5 = MEMORY[0x277CBEBF8];
    goto LABEL_38;
  }

  selfCopy = self;
  v55 = librarySpecificFetchOptions;
  v56 = photoLibrary;
  v70 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v57 = loggingConnection;
  v15 = loggingConnection;
  v16 = os_signpost_id_generate(v15);
  v17 = v15;
  v18 = v17;
  v54 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "PGSettlingEffectWallpaperSuggesterFilterCandidates", "", buf, 2u);
  }

  spid = v16;

  info = 0;
  mach_timebase_info(&info);
  v53 = mach_absolute_time();
  p_filteringStatistics->postfilteringStatistics = 0;
  p_postfilteringStatistics = &p_filteringStatistics->postfilteringStatistics;
  v58 = session;
  curationContext = [session curationContext];
  v69 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = [fetchCandidateSuggestions count];
  v66 = 0;
  v20 = 0;
  v59 = v19 / 0xC8;
  v21 = 1.0 / v19 * 0.8;
  v61 = fetchCandidateSuggestions;
  v62 = v19;
  v22 = v19;
  v60 = v18;
  while (1)
  {
    v63 = v22 - 200;
    v64 = v20;
    if (v22 >= 0xC8)
    {
      v22 = 200;
    }

    v23 = v22 <= 1 ? 1 : v22;
    v24 = 200 * v20;
    v25 = v62 - 200 * v20 >= 0xC8 ? 200 : v62 - 200 * v20;
    v65 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{200 * v20, v25}];
    v74 = [fetchCandidateSuggestions objectsAtIndexes:?];
    if (v62 != v24)
    {
      break;
    }

LABEL_30:
    v37 = v60;
    v38 = v60;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      firstIndex = [v65 firstIndex];
      lastIndex = [v65 lastIndex];
      *buf = 134218240;
      *v77 = firstIndex;
      *&v77[8] = 2048;
      *&v77[10] = lastIndex;
      _os_log_debug_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_DEBUG, "[PGSettlingEffectWallpaperSuggester] processed candidates from %lu to %lu", buf, 0x16u);
    }

    v66 += 200;
    v22 = v63;
    v20 = v64 + 1;
    fetchCandidateSuggestions = v61;
    if (v64 == v59)
    {
      [(PGSettlingEffectWallpaperSuggester *)selfCopy setAvailableFeaturesForCandidates:v69 pass:0];
      v43 = +[PGSettlingEffectWallpaperSuggestionCandidate sortDescriptorsForProcessing];
      v5 = [v70 sortedArrayUsingDescriptors:v43];

      v44 = v38;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v46 = [v5 count];
        *buf = 134217984;
        *v77 = v46;
        _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Fetched %lu sorted wallpaper candidates.", buf, 0xCu);
      }

      v47 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v50 = v44;
      v51 = v50;
      loggingConnection = v57;
      session = v58;
      librarySpecificFetchOptions = v55;
      photoLibrary = v56;
      if (v54 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v51, OS_SIGNPOST_INTERVAL_END, spid, "PGSettlingEffectWallpaperSuggesterFilterCandidates", "", buf, 2u);
      }

      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v77 = "PGSettlingEffectWallpaperSuggesterFilterCandidates";
        *&v77[8] = 2048;
        *&v77[10] = ((((v47 - v53) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      goto LABEL_37;
    }
  }

  v26 = 0;
  v27 = v66;
  while (1)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = [v74 objectAtIndexedSubscript:v26];
    uuid = [v29 uuid];
    v31 = [v73 objectForKeyedSubscript:uuid];

    if (v31)
    {
      break;
    }

LABEL_29:

    objc_autoreleasePoolPop(v28);
    ++v26;
    ++v27;
    if (!--v23)
    {
      goto LABEL_30;
    }
  }

  v32 = [[PGSettlingEffectWallpaperSuggestionCandidate alloc] initWithAsset:v31 suggestion:v29];
  v33 = objc_opt_class();
  [(PGSettlingEffectWallpaperSuggester *)selfCopy filteringContext];
  v35 = v34 = reporterCopy;
  LODWORD(v33) = [v33 candidate:v32 passesFilteringWithContext:v35 curationContext:curationContext statistics:p_postfilteringStatistics];

  reporterCopy = v34;
  if (v33)
  {
    v36 = v70;
  }

  else
  {
    v36 = v69;
  }

  [v36 addObject:v32];
  if (![v34 isCancelledWithProgress:v21 * v27 + 0.2])
  {

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v77 = 316;
    *&v77[4] = 2080;
    *&v77[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v28);
  v5 = MEMORY[0x277CBEBF8];
  loggingConnection = v57;
  session = v58;
  v37 = v60;
  fetchCandidateSuggestions = v61;
  librarySpecificFetchOptions = v55;
  photoLibrary = v56;
LABEL_37:

LABEL_38:
LABEL_39:

  v41 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)fetchCandidateSuggestions
{
  v33[2] = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  v5 = os_signpost_id_generate(loggingConnection);
  v6 = loggingConnection;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PGSettlingEffectWallpaperSuggesterFetchCandidateSuggestions", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v27 = mach_absolute_time();
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v10 = MEMORY[0x277CCA920];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", @"state", 4];
  v33[0] = v11;
  predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper = [MEMORY[0x277CD99E0] predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
  v33[1] = predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [librarySpecificFetchOptions setPredicate:v14];

  v15 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  p_filteringStatistics = &self->_filteringStatistics;
  self->_filteringStatistics.numberOfWallpaperSuggestions = [v15 count];
  v17 = v7;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [v15 count];
    *buf = 134217984;
    v30 = v18;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Fetched %lu existing wallpaper suggestions.", buf, 0xCu);
  }

  v19 = [MEMORY[0x277D3C810] filterSuggestions:v15 excludingSingleFeature:1];
  p_filteringStatistics->numberOfWallpaperSuggestionsWithoutSettlingEffect = [v19 count];

  v20 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v23 = v17;
  v24 = v23;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, OS_SIGNPOST_INTERVAL_END, v5, "PGSettlingEffectWallpaperSuggesterFetchCandidateSuggestions", "", buf, 2u);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v30 = "PGSettlingEffectWallpaperSuggesterFetchCandidateSuggestions";
    v31 = 2048;
    v32 = ((((v20 - v27) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)setAvailableFeaturesForCandidates:(id)candidates pass:(BOOL)pass
{
  passCopy = pass;
  v27 = *MEMORY[0x277D85DE8];
  candidatesCopy = candidates;
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  photoLibrary = [session photoLibrary];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__PGSettlingEffectWallpaperSuggester_setAvailableFeaturesForCandidates_pass___block_invoke;
  v19[3] = &unk_278881280;
  v10 = candidatesCopy;
  v20 = v10;
  v11 = loggingConnection;
  v21 = v11;
  v22 = passCopy;
  v18 = 0;
  v12 = [photoLibrary performChangesAndWait:v19 error:&v18];
  v13 = v18;

  if (v12)
  {
    v14 = v11;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      if (passCopy)
      {
        v15 = @"Set";
      }

      else
      {
        v15 = @"Cleared";
      }

      v16 = [v10 count];
      *buf = 138412546;
      v24 = v15;
      v25 = 1024;
      v26 = v16;
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] %@ settling effect for %d suggestions", buf, 0x12u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = v13;
    _os_log_error_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_ERROR, "[PGSettlingEffectWallpaperSuggester] Error updating availableFeatures: %@", buf, 0xCu);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __77__PGSettlingEffectWallpaperSuggester_setAvailableFeaturesForCandidates_pass___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412290;
    v16 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [v8 suggestion];
        if (v9)
        {
          v10 = [MEMORY[0x277CD99E8] changeRequestForSuggestion:v9];
          [v10 setAvailableFeatures:{objc_msgSend(v9, "availableFeatures") & 0xFFFFFFFFFFFFFFFELL | *(a1 + 48)}];
LABEL_8:

          goto LABEL_10;
        }

        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = v11;
          v10 = [v8 asset];
          v13 = [v10 uuid];
          *buf = v16;
          v22 = v13;
          _os_log_error_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_ERROR, "[PGSettlingEffectWallpaperSuggester] Missing PHSuggestion for asset: %@, skip updating availableFeatures", buf, 0xCu);

          goto LABEL_8;
        }

LABEL_10:

        ++v7;
      }

      while (v5 != v7);
      v14 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
      v5 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)deleteLegacySettlingEffectSuggestions
{
  v19 = *MEMORY[0x277D85DE8];
  session = [(PGAbstractSuggester *)self session];
  loggingConnection = [session loggingConnection];
  photoLibrary = [session photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %d", @"subtype", 680];
  [librarySpecificFetchOptions setPredicate:v6];

  v7 = [MEMORY[0x277CD99E0] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  if ([v7 count])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __75__PGSettlingEffectWallpaperSuggester_deleteLegacySettlingEffectSuggestions__block_invoke;
    v15[3] = &unk_27888A660;
    v8 = v7;
    v16 = v8;
    v14 = 0;
    v9 = [photoLibrary performChangesAndWait:v15 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = loggingConnection;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [v8 count];
        *buf = 67109120;
        LODWORD(v18) = v12;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Deleted %d legacy settling effect suggestions", buf, 8u);
      }
    }

    else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v10;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGSettlingEffectWallpaperSuggester] Error deleting legacy settling effect suggestions: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] No legacy settling effect suggestions to delete.", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)suggestionsWithOptions:(id)options progress:(id)progress
{
  v82 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:progress];
  if (![v7 isCancelledWithProgress:0.0])
  {
    session = [(PGAbstractSuggester *)self session];
    loggingConnection = [session loggingConnection];
    p_filteringStatistics = &self->_filteringStatistics;
    *&self->_filteringStatistics.numberOfLivePhotos = 0u;
    *&self->_filteringStatistics.postfilteringStatistics.numberOfEliminationsThruSettlingEffectScore = 0u;
    *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruResourceAvailability = 0u;
    *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStabilization = 0u;
    *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruVideoDecision = 0u;
    *&self->_filteringStatistics.highlightStatistics.numberOfEliminationsThruSettlingEffectScore = 0u;
    *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruCrop = 0u;
    *&self->_filteringStatistics.numberOfFRCEligibleWallpaperCandidates = 0;
    self->_filteringStatistics.numberOfLivePhotos = [(PGSettlingEffectWallpaperSuggester *)self totalLivePhotos];
    if ([v7 isCancelledWithProgress:0.05])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 91;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v11 = MEMORY[0x277D86220];
        v12 = "Cancelled at line %d in file %s";
LABEL_7:
        v13 = OS_LOG_TYPE_INFO;
        v14 = 18;
LABEL_17:
        _os_log_impl(&dword_22F0FC000, v11, v13, v12, buf, v14);
        goto LABEL_70;
      }

      goto LABEL_70;
    }

    if (([MEMORY[0x277D3A950] currentDeviceSupportsSettlingEffect] & 1) == 0)
    {
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "[PGSettlingEffectWallpaperSuggester] The current device doesn't support SettlingEffect, returning 0 suggestions";
        v11 = loggingConnection;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 2;
        goto LABEL_17;
      }

      goto LABEL_70;
    }

    noLimitPerFeature = [optionsCopy noLimitPerFeature];
    self->_noLimit = noLimitPerFeature;
    if (noLimitPerFeature && os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] no limit mode: ON", buf, 2u);
    }

    [(PGSettlingEffectWallpaperSuggester *)self deleteLegacySettlingEffectSuggestions];
    if ([v7 isCancelledWithProgress:0.1])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 108;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v11 = MEMORY[0x277D86220];
        v12 = "Cancelled at line %d in file %s";
        goto LABEL_7;
      }

LABEL_70:

      goto LABEL_71;
    }

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Starting to generate Settling Effect on existing wallpaper suggestions", buf, 2u);
    }

    v16 = loggingConnection;
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    v66 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "PGSettlingEffectWallpaperSuggester", "", buf, 2u);
    }

    spid = v17;

    info = 0;
    mach_timebase_info(&info);
    v65 = mach_absolute_time();
    v20 = [v7 childProgressReporterFromStart:0.11 toEnd:0.19];
    v21 = [(PGSettlingEffectWallpaperSuggester *)self fetchSortedWallpaperCandidatesWithProgressReporter:v20];
    v22 = [v21 count];
    if ([v7 isCancelledWithProgress:0.2])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 120;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_69;
    }

    v60 = v21;
    oslog = v19;
    v63 = v20;
    v23 = [v7 childProgressReporterFromStart:0.21 toEnd:0.29];
    v24 = [PGSettlingEffectHighlightProcessor alloc];
    photoLibrary = [session photoLibrary];
    v26 = [(PGSettlingEffectHighlightProcessor *)v24 initWithPhotoLibrary:photoLibrary];

    v27 = v26;
    v61 = v23;
    v67 = [(PGSettlingEffectHighlightProcessor *)v26 fetchHighlightCandidatesWithProgressReporter:v23];
    v28 = [v67 count];
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    if (v27)
    {
      [(PGSettlingEffectHighlightProcessor *)v27 statistics];
    }

    v29 = v72;
    *&self->_filteringStatistics.highlightStatistics.numberOfHighlightCandidatesForFRC = v71;
    *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfHighlightCandidates = v29;
    self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruDeviceOwner = v73;
    v59 = v27;
    if ([v7 isCancelledWithProgress:0.3])
    {
      v19 = oslog;
      v20 = v63;
      v21 = v60;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 130;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v30 = MEMORY[0x277D86220];
LABEL_31:
        _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        goto LABEL_68;
      }

      goto LABEL_68;
    }

    v21 = v60;
    if (!(v22 + v28))
    {
      v19 = oslog;
      if (![v7 isCancelledWithProgress:1.0])
      {
        v20 = v63;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22F0FC000, oslog, OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] Found 0 candidates", buf, 2u);
        }

        v57 = mach_absolute_time();
        numer = info.numer;
        denom = info.denom;
        v34 = oslog;
        v35 = v34;
        if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v35, OS_SIGNPOST_INTERVAL_END, spid, "PGSettlingEffectWallpaperSuggester", "", buf, 2u);
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *&buf[4] = "PGSettlingEffectWallpaperSuggester";
          *&buf[12] = 2048;
          *&buf[14] = ((((v57 - v65) * numer) / denom) / 1000000.0);
          _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        logger = self->_logger;
        assetGater = self->_assetGater;
        if (assetGater)
        {
          [(PGWallpaperSuggestionAssetGater *)assetGater currentGatingStatistics];
        }

        else
        {
          v70 = 0;
          v68 = 0u;
          v69 = 0u;
        }

        v40 = *&self->_filteringStatistics.highlightStatistics.numberOfEliminationsThruSettlingEffectScore;
        v78 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruVideoDecision;
        v79 = v40;
        v80 = *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruCrop;
        v81 = *&self->_filteringStatistics.numberOfFRCEligibleWallpaperCandidates;
        v41 = *&self->_filteringStatistics.postfilteringStatistics.numberOfEliminationsThruSettlingEffectScore;
        *buf = *&p_filteringStatistics->numberOfLivePhotos;
        *&buf[16] = v41;
        v42 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStabilization;
        v76 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruResourceAvailability;
        v77 = v42;
        [(PGSettlingEffectWallpaperSuggesterLogger *)logger logFilteringStatistics:buf assetGaterStatistics:&v68];
        goto LABEL_68;
      }

      v20 = v63;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 133;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v30 = MEMORY[0x277D86220];
        goto LABEL_31;
      }

LABEL_68:

LABEL_69:
      goto LABEL_70;
    }

    v31 = [(PGSettlingEffectWallpaperSuggester *)self consolidatedCandidatesFromWallpaperCandidates:v60 highlightCandidates:v67];
    v19 = oslog;
    if ([v7 isCancelledWithProgress:0.4])
    {
      v20 = v63;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 144;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      goto LABEL_67;
    }

    v56 = [v7 childProgressReporterFromStart:0.41 toEnd:0.89];
    v58 = v31;
    [(PGSettlingEffectWallpaperSuggester *)self processFRCFromCandidates:v31 withProgressReporter:?];
    v38 = self->_logger;
    v39 = self->_assetGater;
    v20 = v63;
    if (v39)
    {
      [(PGWallpaperSuggestionAssetGater *)v39 currentGatingStatistics];
    }

    else
    {
      v70 = 0;
      v68 = 0u;
      v69 = 0u;
    }

    v43 = *&self->_filteringStatistics.highlightStatistics.numberOfEliminationsThruSettlingEffectScore;
    v78 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruVideoDecision;
    v79 = v43;
    v80 = *&self->_filteringStatistics.highlightStatistics.highlightStatistics.numberOfEliminationsThruCrop;
    v81 = *&self->_filteringStatistics.numberOfFRCEligibleWallpaperCandidates;
    v44 = *&self->_filteringStatistics.postfilteringStatistics.numberOfEliminationsThruSettlingEffectScore;
    *buf = *&p_filteringStatistics->numberOfLivePhotos;
    *&buf[16] = v44;
    v45 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruStabilization;
    v76 = *&self->_filteringStatistics.frcGatingStatistics.numberOfEliminationsThruResourceAvailability;
    v77 = v45;
    [(PGSettlingEffectWallpaperSuggesterLogger *)v38 logFilteringStatistics:buf assetGaterStatistics:&v68];
    if ([v7 isCancelledWithProgress:0.9])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 151;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v46 = MEMORY[0x277D86220];
        v47 = "Cancelled at line %d in file %s";
LABEL_59:
        v48 = 18;
LABEL_65:
        _os_log_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_INFO, v47, buf, v48);
      }
    }

    else
    {
      [(PGSettlingEffectWallpaperSuggester *)self sendSettlingEffectStatisticsEvent];
      if (![v7 isCancelledWithProgress:1.0])
      {
        v49 = mach_absolute_time();
        v51 = info.numer;
        v50 = info.denom;
        v52 = oslog;
        v53 = v52;
        if (v66 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v53, OS_SIGNPOST_INTERVAL_END, spid, "PGSettlingEffectWallpaperSuggester", "", buf, 2u);
        }

        if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          goto LABEL_66;
        }

        *buf = 136315394;
        *&buf[4] = "PGSettlingEffectWallpaperSuggester";
        *&buf[12] = 2048;
        *&buf[14] = ((((v49 - v65) * v51) / v50) / 1000000.0);
        v47 = "[Performance] %s: %f ms";
        v46 = v53;
        v48 = 22;
        goto LABEL_65;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *&buf[4] = 156;
        *&buf[8] = 2080;
        *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
        v46 = MEMORY[0x277D86220];
        v47 = "Cancelled at line %d in file %s";
        goto LABEL_59;
      }
    }

LABEL_66:

    v31 = v58;
LABEL_67:

    goto LABEL_68;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = 84;
    *&buf[8] = 2080;
    *&buf[10] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Suggestions/Suggesters/Autobahn/SettlingEffect/PGSettlingEffectWallpaperSuggester.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

LABEL_71:

  v54 = *MEMORY[0x277D85DE8];
  return MEMORY[0x277CBEBF8];
}

- (PGSettlingEffectWallpaperSuggester)initWithSession:(id)session
{
  sessionCopy = session;
  v18.receiver = self;
  v18.super_class = PGSettlingEffectWallpaperSuggester;
  v5 = [(PGAbstractSuggester *)&v18 initWithSession:sessionCopy];
  if (v5)
  {
    v6 = -[PGSettlingEffectWallpaperSuggesterFilteringContext initInOrientation:]([PGSettlingEffectWallpaperSuggesterFilteringContext alloc], "initInOrientation:", [MEMORY[0x277D3C810] primaryOrientation]);
    filteringContext = v5->_filteringContext;
    v5->_filteringContext = v6;

    v8 = [PGWallpaperSuggestionAssetGater alloc];
    loggingConnection = [sessionCopy loggingConnection];
    v10 = [(PGWallpaperSuggestionAssetGater *)v8 initWithType:5 loggingConnection:loggingConnection];
    assetGater = v5->_assetGater;
    v5->_assetGater = v10;

    loggingPrefix = v5->_loggingPrefix;
    v5->_loggingPrefix = @"[PGSettlingEffectWallpaperSuggester]";

    v13 = [PGSettlingEffectWallpaperSuggesterLogger alloc];
    loggingConnection2 = [sessionCopy loggingConnection];
    v15 = [(PGSettlingEffectWallpaperSuggesterLogger *)v13 initWithLoggingConnection:loggingConnection2];
    logger = v5->_logger;
    v5->_logger = v15;
  }

  return v5;
}

+ (id)analyticsPayloadFromHighlightStatistics:(id *)statistics
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var0];
  [v4 setObject:v5 forKeyedSubscript:@"HighlightCandidatesForFRC"];

  v6 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var1];
  [v4 setObject:v6 forKeyedSubscript:@"HighlightFailedSettlingEffectScore"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var2];
  [v4 setObject:v7 forKeyedSubscript:@"HighlightSettlingEffectScoreRequested"];

  var0 = statistics->var3.var0;
  var1 = statistics->var3.var1;
  var2 = statistics->var3.var2;
  var3 = statistics->var3.var3;
  var4 = statistics->var3.var4;
  var5 = statistics->var3.var5;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:var0];
  [v4 setObject:v14 forKeyedSubscript:@"HighlightAssets"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:var1];
  [v4 setObject:v15 forKeyedSubscript:@"HighlightCandidates"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:var2];
  [v4 setObject:v16 forKeyedSubscript:@"HighlightFailedCrop"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:var3];
  [v4 setObject:v17 forKeyedSubscript:@"HighlightFailedNSFW"];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:var4];
  [v4 setObject:v18 forKeyedSubscript:@"HighlightKnownFRCFailures"];

  v19 = [MEMORY[0x277CCABB0] numberWithInt:var5];
  [v4 setObject:v19 forKeyedSubscript:@"HighlightFailedDeviceOwner"];

  return v4;
}

+ (id)analyticsPayloadFromPostFilteringStatistics:(id)statistics
{
  var1 = statistics.var1;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CCABB0] numberWithInt:statistics];
  [v5 setObject:v6 forKeyedSubscript:@"WallpaperFailedSettlingEffectScore"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:var1];
  [v5 setObject:v7 forKeyedSubscript:@"WallpaperSettlingEffectScoreRequested"];

  return v5;
}

+ (id)analyticsPayloadFromFRCFilteringStatistics:(id *)statistics photoLibrary:(id)library
{
  v5 = MEMORY[0x277CBEB38];
  libraryCopy = library;
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var0];
  [v7 setObject:v8 forKeyedSubscript:@"LivePhotos"];

  v9 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var3];
  [v7 setObject:v9 forKeyedSubscript:@"LivePhotoWallpaper"];

  v10 = [MEMORY[0x277D3C810] fetchSettlingEffectSuggestionsInPhotoLibrary:libraryCopy];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
  [v7 setObject:v11 forKeyedSubscript:@"CurrentWallpaperPassFRC"];

  v12 = MEMORY[0x277CD97A8];
  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v14 = [v12 fetchKeyAssetForEachSuggestion:v10 options:librarySpecificFetchOptions];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
  [v7 setObject:v15 forKeyedSubscript:@"CurrentWallpaperAssetPassFRC"];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var7];
  [v7 setObject:v16 forKeyedSubscript:@"ProcessedWallpaperFRCEligibleCandidates"];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:statistics->var8];
  [v7 setObject:v17 forKeyedSubscript:@"ProcessedHighlightFRCEligibleCandidates"];

  return v7;
}

+ (BOOL)passesFilteringWithAsset:(id)asset curationContext:(id)context orientation:(int64_t)orientation reason:(id *)reason
{
  v52[1] = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  contextCopy = context;
  photoLibrary = [assetCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v13 = [self prefilteringInternalPredicateWithForbiddenAssetUUIDs:0];
  [librarySpecificFetchOptions setInternalPredicate:v13];

  v14 = MEMORY[0x277CD97A8];
  localIdentifier = [assetCopy localIdentifier];
  v52[0] = localIdentifier;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v17 = [v14 fetchAssetsWithLocalIdentifiers:v16 options:librarySpecificFetchOptions];
  firstObject = [v17 firstObject];

  if (firstObject)
  {
    v19 = [[PGSettlingEffectWallpaperSuggestionCandidate alloc] initWithAsset:assetCopy suggestion:0];
    v20 = [[PGSettlingEffectWallpaperSuggesterFilteringContext alloc] initInOrientation:orientation];
    v51 = 0;
    v21 = contextCopy;
    if ([self candidate:v19 passesFilteringWithContext:v20 curationContext:contextCopy statistics:&v51])
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v23 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D3CA10]];

      if (v23)
      {
        v24 = [PGWallpaperSuggestionAssetGater alloc];
        v25 = [(PGWallpaperSuggestionAssetGater *)v24 initWithType:5 loggingConnection:MEMORY[0x277D86220]];
        [(PGWallpaperSuggestionAssetGater *)v25 setCoversTracks:1];
        [(PGWallpaperSuggestionAssetGater *)v25 setIsUserInitiated:1];
        v26 = [(PGWallpaperSuggestionAssetGater *)v25 gateAsset:assetCopy progressBlock:&__block_literal_global_5982];
        passesSettlingEffect = [v26 passesSettlingEffect];
        if (reason && (passesSettlingEffect & 1) == 0)
        {
          v28 = v26;
          if (v25)
          {
            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            v21 = contextCopy;
            if (v50 > 0)
            {
              v29 = @"Failed feature enablement check";
LABEL_53:
              reasonCopy3 = reason;
              goto LABEL_54;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v49 > 0)
            {
              v29 = @"Failed hardware support check";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v48 > 0)
            {
              v29 = @"Failed to download resources";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v47 > 0)
            {
              v29 = @"Failed supported adjustment check";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v46 > 0)
            {
              v29 = @"Failed with generic failure";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v45 > 0)
            {
              v29 = @"Failed metadata check";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v44 > 0)
            {
              v29 = @"Failed stabilization";
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v43 > 0)
            {
              v29 = @"Failed video quality";
LABEL_52:
              v21 = contextCopy;
              goto LABEL_53;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v42 > 0)
            {
              v29 = @"Failed metadata integrity";
              goto LABEL_52;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v41 > 0)
            {
              v29 = @"Failed FRC";
              goto LABEL_52;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v40 > 0)
            {
              v29 = @"Failed video decision";
              goto LABEL_52;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            if (v39 > 0)
            {
              v29 = @"Failed layout decision";
              goto LABEL_52;
            }

            [(PGWallpaperSuggestionAssetGater *)v25 settlingEffectGatingStatistics];
            v21 = contextCopy;
            reasonCopy3 = reason;
            if (v38 > 0)
            {
              v29 = @"Failed still transition";
              goto LABEL_54;
            }
          }

          else
          {
            reasonCopy3 = reason;
            v21 = contextCopy;
          }

          v29 = @"Unknown Reason";
LABEL_54:
          v31 = photoLibrary;
          *reasonCopy3 = v29;

          v30 = 0;
          goto LABEL_26;
        }
      }

      if (reason)
      {
        if (v23)
        {
          v33 = @"Pass";
        }

        else
        {
          v33 = @"Pass w/o FRC";
        }

        *reason = v33;
      }

      v30 = 1;
      v21 = contextCopy;
    }

    else if (reason)
    {
      v30 = 0;
      if (v51 < 1)
      {
        v32 = @"Unknown Reason";
      }

      else
      {
        v32 = @"Low Settling Effect Score";
      }

      *reason = v32;
    }

    else
    {
      v30 = 0;
    }

    v31 = photoLibrary;
LABEL_26:

    goto LABEL_27;
  }

  v30 = 0;
  if (reason)
  {
    *reason = @"Fails Predicate";
  }

  v21 = contextCopy;
  v31 = photoLibrary;
LABEL_27:

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (BOOL)candidate:(id)candidate passesFilteringWithContext:(id)context curationContext:(id)curationContext statistics:(id *)statistics
{
  v26 = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  asset = [candidateCopy asset];
  suggestion = [candidateCopy suggestion];

  if (suggestion)
  {
    subtype = [suggestion subtype];
    v11 = subtype != 655 && subtype != 605;
    if (subtype == 605)
    {
      goto LABEL_17;
    }

    v12 = subtype;
    if (subtype == 655)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
  }

  v21 = 0;
  [PGSettlingEffectScoreHelper analyzedSettlingEffectScoreForAsset:asset requestedOnDemand:&v21];
  v14 = v13;
  if (v21 == 1)
  {
    ++statistics->var1;
  }

  mediaAnalysisProperties = [asset mediaAnalysisProperties];
  +[PGSettlingEffectWallpaperSuggesterFilteringContext minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:](PGSettlingEffectWallpaperSuggesterFilteringContext, "minimumSettlingEffectScoreForSuggestionSubtype:mediaAnalysisVersion:", v12, [mediaAnalysisProperties mediaAnalysisVersion]);
  v17 = v16;

  v18 = v14;
  if (v17 <= v18)
  {
    v11 = 1;
  }

  else if (+[PGUserDefaults wallpaperSkipSettlingEffectScoreGating])
  {
    v11 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v23 = v18;
      v24 = 2048;
      v25 = v17;
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[PGSettlingEffectWallpaperSuggester] PGWallpaperSkipSettlingEffectScoreGating is ON. Skip gating settlingEffectScore (%.3f < %.3f)", buf, 0x16u);
    }
  }

  else
  {
    v11 = 0;
    ++statistics->var0;
  }

LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)prefilteringInternalPredicateWithForbiddenAssetUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  settlingEffectLivePhotoPredicate = [MEMORY[0x277D3C810] settlingEffectLivePhotoPredicate];
  [v4 addObject:settlingEffectLivePhotoPredicate];
  if ([dsCopy count])
  {
    dsCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (%K IN %@)", @"uuid", dsCopy];
    [v4 addObject:dsCopy];
  }

  v7 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v4];

  return v7;
}

@end