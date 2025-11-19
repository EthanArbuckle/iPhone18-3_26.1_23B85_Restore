@interface PGWallpaperSuggestionAssetGater
+ (double)sydneyMD4FaceQualityFromAsset:(id)a3;
+ (id)assetFetchPropertySetsForGating;
+ (unint64_t)_posterClassificationFromAssetGaterType:(unint64_t)a3;
- ($029C8AA35660F62BB82CBF098D3EDE08)currentGatingStatistics;
- ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatistics;
- (BOOL)_hasPetFaceWithWallpaperProperties:(id)a3;
- (BOOL)_passesSegmentationWithWallpaperProperties:(id)a3;
- (BOOL)_passesSettlingEffectWithWallpaperProperties:(id)a3;
- (BOOL)assetIsUsingHeadroom:(id)a3;
- (BOOL)cacheExistsForAsset:(id)a3;
- (BOOL)hasValidAnalysisVersionForAsset:(id)a3;
- (BOOL)persistWallpaperProperties:(id)a3 ofAsset:(id)a4 error:(id *)a5;
- (PGWallpaperSuggestionAssetGater)initWithType:(unint64_t)a3 loggingConnection:(id)a4;
- (id)_gateAsset:(id)a3 wallpaperProperties:(id *)a4 progressBlock:(id)a5;
- (id)_requestAnalysisTypes:(unint64_t)a3 asset:(id)a4 options:(id)a5 progressBlock:(id)a6 error:(id *)a7;
- (id)_requestWallpaperPropertiesForAsset:(id)a3 progressBlock:(id)a4 error:(id *)a5;
- (id)existingSegmentationScoresWithAsset:(id)a3;
- (id)existingWallpaperPropertiesWithAsset:(id)a3;
- (id)gateAsset:(id)a3 hasPetFace:(BOOL *)a4;
- (id)gatingResultWithWallpaperProperties:(id)a3;
- (id)requestAndPersistWallpaperPropertiesForAsset:(id)a3 progressBlock:(id)a4;
- (id)wallpaperPropertiesFromAnalysisResults:(id)a3 andAsset:(id)a4;
- (void)clearCacheOfAsset:(id)a3;
- (void)logCurrentGatingStatisticsWithPrefix:(id)a3;
- (void)logCurrentSettlingEffectGatingStatisticsWithPrefix:(id)a3;
@end

@implementation PGWallpaperSuggestionAssetGater

- ($2753767B6D5E71768FC0A26EE39D5FB2)settlingEffectGatingStatistics
{
  v3 = *&self[1].var12;
  *&retstr->var0 = *&self[1].var8;
  *&retstr->var4 = v3;
  *&retstr->var8 = *&self[2].var3;
  retstr->var12 = self[2].var7;
  return self;
}

- ($029C8AA35660F62BB82CBF098D3EDE08)currentGatingStatistics
{
  v3 = *&self[1].var5;
  *&retstr->var0 = *&self[1].var1;
  *&retstr->var4 = v3;
  *&retstr->var8 = *&self[1].var9;
  return self;
}

- (void)clearCacheOfAsset:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoLibrary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__PGWallpaperSuggestionAssetGater_clearCacheOfAsset___block_invoke;
  v12[3] = &unk_27888A660;
  v6 = v4;
  v13 = v6;
  v11 = 0;
  v7 = [v5 performChangesAndWait:v12 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v8;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Fail deleting segmentation cache for asset %@: %@", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __53__PGWallpaperSuggestionAssetGater_clearCacheOfAsset___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CD97B0] changeRequestForAsset:*(a1 + 32)];
  [v1 deleteAssetResourceWithType:109];
}

- (BOOL)cacheExistsForAsset:(id)a3
{
  v3 = MEMORY[0x277CD9A08];
  v4 = a3;
  v5 = [[v3 alloc] initWithPhotoAsset:v4];

  v6 = [v5 segmentationResourceURL];
  LOBYTE(v4) = v6 != 0;

  return v4;
}

- (BOOL)_hasPetFaceWithWallpaperProperties:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"petsModelVersion"];
  v5 = [v4 unsignedIntegerValue];

  v6 = [v3 objectForKeyedSubscript:@"petsFaceConfidence"];

  [v6 doubleValue];
  v8 = v7;

  return v8 >= 0.5 && v5 == 0;
}

- (BOOL)_passesSettlingEffectWithWallpaperProperties:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:@"segmentationScores"];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] segmentation scores: %@", buf, 0xCu);
  }

  if (self->_enableSettlingEffect)
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    [MEMORY[0x277D3A950] settlingEffectGatingStatisticsFromScores:v4];
    v6 = (*buf | *&buf[4] | *&buf[8] | *&buf[12] | v14 | DWORD1(v14) | DWORD2(v14) | HIDWORD(v14) | v15 | DWORD1(v15) | DWORD2(v15) | HIDWORD(v15) | v16) == 0;
    if (*buf)
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruFeatureDisabled;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed feature enabled check";
LABEL_48:
        _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, v8, v12, 2u);
      }
    }

    else if (*&buf[4])
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruHardwareUnsupported;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed hardware support check";
        goto LABEL_48;
      }
    }

    else if (*&buf[8])
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruResourceAvailability;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed asset resource availability";
        goto LABEL_48;
      }
    }

    else if (*&buf[12])
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruUnsupportedAdjustments;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed valid adjustments check";
        goto LABEL_48;
      }
    }

    else if (v14)
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruGenericError;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed due to generic error";
        goto LABEL_48;
      }
    }

    else if (DWORD1(v14))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruMetadataCheck;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed metadata check";
        goto LABEL_48;
      }
    }

    else if (DWORD2(v14))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruStabilization;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed stabilization";
        goto LABEL_48;
      }
    }

    else if (HIDWORD(v14))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruVideoQuality;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed video quality";
        goto LABEL_48;
      }
    }

    else if (v15)
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruMetadataIntegrity;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed metadata integrity";
        goto LABEL_48;
      }
    }

    else if (DWORD1(v15))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruFRC;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed FRC";
        goto LABEL_48;
      }
    }

    else if (DWORD2(v15))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruVideoDecision;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed video decision";
        goto LABEL_48;
      }
    }

    else if (HIDWORD(v15))
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruLayoutDecision;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed layout decision";
        goto LABEL_48;
      }
    }

    else if (v16)
    {
      ++self->_settlingEffectGatingStatistics.numberOfEliminationsThruStillTransition;
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties failed still transition";
        goto LABEL_48;
      }
    }

    else
    {
      v7 = self->_loggingConnection;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        v8 = "[PGWallpaperSuggestionAssetGater] wallpaperProperties pass settling effect gating";
        goto LABEL_48;
      }
    }
  }

  else
  {
    v9 = self->_loggingConnection;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] settling effect disabled. Fail settling effect gating.", buf, 2u);
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_passesSegmentationWithWallpaperProperties:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"segmentationScores"];
  if ([MEMORY[0x277D3A950] curatedSegmentationGatingDecisionForSegmentationScores:v3])
  {
    v4 = [MEMORY[0x277D3A950] layoutGatingDecisionForSegmentationScores:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)gatingResultWithWallpaperProperties:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PGWallpaperAssetGaterResult);
  if (self->_type != 5)
  {
    [(PGWallpaperAssetGaterResult *)v5 setPassesSegmentation:[(PGWallpaperSuggestionAssetGater *)self _passesSegmentationWithWallpaperProperties:v4]];
  }

  [(PGWallpaperAssetGaterResult *)v5 setPassesSettlingEffect:[(PGWallpaperSuggestionAssetGater *)self _passesSettlingEffectWithWallpaperProperties:v4]];

  return v5;
}

- (id)wallpaperPropertiesFromAnalysisResults:(id)a3 andAsset:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  v10 = MEMORY[0x277CCABB0];
  v11 = [v8 sceneAnalysisProperties];
  v12 = [v10 numberWithShort:{objc_msgSend(v11, "sceneAnalysisVersion")}];
  [v9 setObject:v12 forKeyedSubscript:@"sceneAnalysisVersion"];

  v13 = MEMORY[0x277CCABB0];
  v14 = [v8 faceAnalysisVersion];

  v15 = [v13 numberWithShort:v14];
  [v9 setObject:v15 forKeyedSubscript:@"faceAnalysisVersion"];

  v16 = [v6 objectForKeyedSubscript:*MEMORY[0x277D26778]];
  [v9 setObject:v16 forKeyedSubscript:@"segmentationScores"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D3A950], "currentVersion")}];
  [v9 setObject:v17 forKeyedSubscript:@"segmentationModelVersion"];

  if (self->_type == 2)
  {
    v18 = *MEMORY[0x277D26788];
    v19 = [v6 objectForKeyedSubscript:*MEMORY[0x277D26788]];
    v20 = *MEMORY[0x277D267A8];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277D267A8]];
    [v9 setObject:v21 forKeyedSubscript:@"petsBounds"];

    v22 = [v6 objectForKeyedSubscript:v18];
    v23 = *MEMORY[0x277D267B0];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277D267B0]];
    [v9 setObject:v24 forKeyedSubscript:@"petsConfidence"];

    v25 = *MEMORY[0x277D26780];
    v26 = [v6 objectForKeyedSubscript:*MEMORY[0x277D26780]];
    v27 = [v26 objectForKeyedSubscript:v20];
    [v9 setObject:v27 forKeyedSubscript:@"petsFaceBounds"];

    v28 = [v6 objectForKeyedSubscript:v25];
    v29 = [v28 objectForKeyedSubscript:v23];
    [v9 setObject:v29 forKeyedSubscript:@"petsFaceConfidence"];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:VCPMAGetRevisionForMediaAnalysisType()];
    [v9 setObject:v30 forKeyedSubscript:@"petsModelVersion"];
  }

  v31 = [(PFWallpaperCompoundDeviceConfiguration *)self->_deviceWallpaperLayoutConfiguration dictionaryRepresentation];
  [v9 setObject:v31 forKeyedSubscript:@"wallpaperLayoutConfiguration"];

  [v9 setObject:&unk_284483798 forKeyedSubscript:@"wallpaperSpecificationVersion"];

  return v9;
}

- (BOOL)persistWallpaperProperties:(id)a3 ofAsset:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__32084;
  v24 = __Block_byref_object_dispose__32085;
  v25 = 0;
  v9 = [v8 photoLibrary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __76__PGWallpaperSuggestionAssetGater_persistWallpaperProperties_ofAsset_error___block_invoke;
  v15[3] = &unk_278882FE0;
  v10 = v7;
  v16 = v10;
  v11 = v8;
  v17 = v11;
  v18 = &v26;
  v19 = &v20;
  v12 = [v9 performChangesAndWait:v15 error:a5];

  if (!v12)
  {
    goto LABEL_6;
  }

  if ((v27[3] & 1) == 0)
  {
    if (a5)
    {
      v13 = 0;
      *a5 = v21[5];
      goto LABEL_7;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v13 = 1;
LABEL_7:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  return v13;
}

void __76__PGWallpaperSuggestionAssetGater_persistWallpaperProperties_ofAsset_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:v2 format:200 options:0 error:&v11];
  v4 = v11;
  v5 = v4;
  if (v3)
  {
    v6 = [MEMORY[0x277CD97B0] changeRequestForAsset:*(a1 + 40)];
    [v6 setWallpaperPropertiesData:v3];
    v7 = [*(a1 + 40) adjustmentTimestamp];
    if (v7)
    {
      [v6 setWallpaperPropertiesTimestamp:v7];
    }

    else
    {
      v10 = [*(a1 + 40) creationDate];
      [v6 setWallpaperPropertiesTimestamp:v10];
    }

    [v6 setWallpaperPropertiesVersion:10];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    v8 = *(*(a1 + 56) + 8);
    v9 = v4;
    v6 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

- (id)_requestAnalysisTypes:(unint64_t)a3 asset:(id)a4 options:(id)a5 progressBlock:(id)a6 error:(id *)a7
{
  v82[1] = *MEMORY[0x277D85DE8];
  v11 = a4;
  v46 = a5;
  v12 = a6;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = __Block_byref_object_copy__32084;
  v74 = __Block_byref_object_dispose__32085;
  v75 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__32084;
  v68 = __Block_byref_object_dispose__32085;
  v69 = 0;
  [MEMORY[0x277CBEAA8] date];
  v42 = v44 = v12;
  v43 = [v42 dateByAddingTimeInterval:120.0];
  v13 = dispatch_semaphore_create(0);
  v14 = dispatch_get_global_queue(33, 0);
  v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14);

  v16 = self->_loggingConnection;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v11 uuid];
    *buf = 138412546;
    *&buf[4] = v17;
    *&buf[12] = 2048;
    *&buf[14] = 0x405E000000000000;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] Start requesting analysis for asset: %@. Timeout: %.3f seconds", buf, 0x16u);
  }

  v18 = self->_loggingConnection;
  v19 = os_signpost_id_generate(v18);
  v20 = v18;
  v21 = v20;
  v22 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ImagingAnalysisRequest", "", buf, 2u);
  }

  spid = v19;

  info = 0;
  mach_timebase_info(&info);
  v41 = mach_absolute_time();
  mediaAnalysisService = self->_mediaAnalysisService;
  v82[0] = v11;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:1];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __91__PGWallpaperSuggestionAssetGater__requestAnalysisTypes_asset_options_progressBlock_error___block_invoke_2;
  v56[3] = &unk_278882F90;
  v25 = v15;
  v57 = v25;
  v60 = &v70;
  v26 = v11;
  v58 = v26;
  v61 = &v64;
  v62 = a3;
  v27 = v13;
  v59 = v27;
  v28 = [(VCPMediaAnalysisService *)mediaAnalysisService requestAnalysisTypes:a3 forAssets:v24 withOptions:v46 progressHandler:&__block_literal_global_328 andCompletionHandler:v56];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v81 = 0;
  dispatch_source_set_timer(v25, 0, 0x5F5E100uLL, 0x4C4B40uLL);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __91__PGWallpaperSuggestionAssetGater__requestAnalysisTypes_asset_options_progressBlock_error___block_invoke_3;
  handler[3] = &unk_278882FB8;
  v29 = v44;
  v53 = buf;
  v54 = 0x4092C00000000000;
  v52 = v29;
  v30 = v43;
  v48 = v30;
  v49 = v25;
  v50 = self;
  v55 = v28;
  v31 = v26;
  v51 = v31;
  v32 = v25;
  dispatch_source_set_event_handler(v32, handler);
  dispatch_resume(v32);

  dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
  v33 = mach_absolute_time();
  v34 = info;
  v35 = v21;
  v36 = v35;
  if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
  {
    *v76 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v36, OS_SIGNPOST_INTERVAL_END, spid, "ImagingAnalysisRequest", "", v76, 2u);
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *v76 = 136315394;
    v77 = "ImagingAnalysisRequest";
    v78 = 2048;
    v79 = ((((v33 - v41) * v34.numer) / v34.denom) / 1000000.0);
    _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", v76, 0x16u);
  }

  if (a7)
  {
    *a7 = v65[5];
  }

  v37 = v71[5];

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v64, 8);

  _Block_object_dispose(&v70, 8);
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

void __91__PGWallpaperSuggestionAssetGater__requestAnalysisTypes_asset_options_progressBlock_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = a2;
  v5 = a3;
  dispatch_source_cancel(*(a1 + 32));
  if (v29)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(a1 + 40) localIdentifier];
    v10 = [v29 objectForKeyedSubscript:v9];
    v11 = *MEMORY[0x277D26778];
    v12 = [v10 objectForKey:*MEMORY[0x277D26778]];
    v13 = [v12 firstObject];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v13 forKeyedSubscript:v11];

    if ((*(a1 + 74) & 2) == 0)
    {
      goto LABEL_6;
    }

    v14 = [*(a1 + 40) localIdentifier];
    v15 = [v29 objectForKeyedSubscript:v14];
    v16 = *MEMORY[0x277D26788];
    v17 = [v15 objectForKey:*MEMORY[0x277D26788]];
    v18 = [v17 firstObject];
    v19 = *MEMORY[0x277D26798];
    v20 = [v18 objectForKey:*MEMORY[0x277D26798]];

    v21 = [*(a1 + 40) localIdentifier];
    v22 = [v29 objectForKeyedSubscript:v21];
    v23 = *MEMORY[0x277D26780];
    v24 = [v22 objectForKey:*MEMORY[0x277D26780]];
    v25 = [v24 firstObject];
    v26 = [v25 objectForKey:v19];

    [*(*(*(a1 + 56) + 8) + 40) setObject:v20 forKeyedSubscript:v16];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v26 forKeyedSubscript:v23];
  }

  else
  {
    v27 = *(*(a1 + 64) + 8);
    v28 = v5;
    v20 = *(v27 + 40);
    *(v27 + 40) = v28;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 48));
}

void __91__PGWallpaperSuggestionAssetGater__requestAnalysisTypes_asset_options_progressBlock_error___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 64) + 16))(*(a1 + 80) * *(*(*(a1 + 72) + 8) + 24));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:v3];
  v5 = v4;

  if (v5 < 0.0)
  {
    dispatch_source_cancel(*(a1 + 40));
    [*(*(a1 + 48) + 16) cancelRequest:*(a1 + 88)];
    v6 = *(a1 + 48);
    v7 = *(v6 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 56);
      v10 = v7;
      v11 = [v9 uuid];
      *buf = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Timeout requesting analysis for asset: %@", buf, 0xCu);

      v6 = *(a1 + 48);
    }

    ++*(v6 + 80);
  }

  ++*(*(*(a1 + 72) + 8) + 24);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)_requestWallpaperPropertiesForAsset:(id)a3 progressBlock:(id)a4 error:(id *)a5
{
  v29[7] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [objc_opt_class() _posterClassificationFromAssetGaterType:self->_type];
  v11 = [MEMORY[0x277D3C810] mediaAnalysisTypeForPosterClassification:v10];
  v12 = [(PFWallpaperCompoundDeviceConfiguration *)self->_deviceWallpaperLayoutConfiguration dictionaryRepresentation];
  if ([(PGWallpaperSuggestionAssetGater *)self isUserInitiated])
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v14 = *MEMORY[0x277D26828];
  v29[0] = MEMORY[0x277CBEC38];
  v15 = *MEMORY[0x277D3AAC8];
  v28[0] = v14;
  v28[1] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  v17 = *MEMORY[0x277D3AAD8];
  v29[1] = v16;
  v29[2] = v12;
  v18 = *MEMORY[0x277D3AAF0];
  v28[2] = v17;
  v28[3] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
  v29[3] = v19;
  v28[4] = *MEMORY[0x277D3AAD0];
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{-[PGWallpaperSuggestionAssetGater enableSettlingEffect](self, "enableSettlingEffect")}];
  v21 = *MEMORY[0x277D3AAE8];
  v29[4] = v20;
  v29[5] = MEMORY[0x277CBEC28];
  v22 = *MEMORY[0x277D3AB00];
  v28[5] = v21;
  v28[6] = v22;
  v29[6] = &unk_284483780;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:7];

  v24 = [(PGWallpaperSuggestionAssetGater *)self _requestAnalysisTypes:v11 | 0x800000000 asset:v8 options:v23 progressBlock:v9 error:a5];

  ++self->_currentGatingStatistics.numberOfMediaAnalysisRequest;
  if (v24)
  {
    v25 = [(PGWallpaperSuggestionAssetGater *)self wallpaperPropertiesFromAnalysisResults:v24 andAsset:v8];
  }

  else
  {
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)requestAndPersistWallpaperPropertiesForAsset:(id)a3 progressBlock:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(PGWallpaperSuggestionAssetGater *)self hasValidAnalysisVersionForAsset:v6])
  {
    v8 = 0;
    ++self->_currentGatingStatistics.numberOfInvalidAnalysisVersion;
    goto LABEL_12;
  }

  v22 = 0;
  v8 = [(PGWallpaperSuggestionAssetGater *)self _requestWallpaperPropertiesForAsset:v6 progressBlock:v7 error:&v22];
  v9 = v22;
  v10 = v9;
  if (v8)
  {
    if (!self->_coversTracks)
    {
      v21 = v9;
      v11 = [(PGWallpaperSuggestionAssetGater *)self persistWallpaperProperties:v8 ofAsset:v6 error:&v21];
      v12 = v21;

      if (!v11)
      {
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
        {
          v14 = loggingConnection;
          v15 = [v6 localIdentifier];
          *buf = 138412546;
          v24 = v15;
          v25 = 2112;
          v26 = v12;
          _os_log_error_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Failed persisting wallpaper properties on asset %@: %@", buf, 0x16u);
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    ++self->_currentGatingStatistics.numberOfFailuresFromNilResult;
    v16 = self->_loggingConnection;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = v16;
      v20 = [v6 localIdentifier];
      *buf = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v10;
      _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Failed getting wallpaper properties on asset %@: %@", buf, 0x16u);
    }
  }

  v12 = v10;
LABEL_11:

LABEL_12:
  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)hasValidAnalysisVersionForAsset:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 adjustmentTimestamp];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [v4 creationDate];
  }

  v8 = v7;

  v9 = *MEMORY[0x277D26848];
  LODWORD(v10) = *MEMORY[0x277D26840];
  v11 = [v4 sceneAnalysisProperties];
  v12 = [v11 sceneAnalysisVersion];

  v13 = [v4 faceAnalysisVersion];
  if (v9 <= v12)
  {
    v14 = [v4 sceneAnalysisProperties];
    v15 = [v14 sceneAnalysisTimestamp];
    if ([v15 isEqualToDate:v8] && v13 >= v10)
    {
      [v4 faceAdjustmentVersion];
      v33 = v10;
      v34 = v10 = v8;
      loga = [v34 isEqualToDate:v10];

      v8 = v10;
      LOWORD(v10) = v33;

      if (loga)
      {
        v17 = 1;
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  if (self->_type == 5 && v12 >= 1 && v13 >= 1 && (v9 > v12 || v13 < v10))
  {
    loggingConnection = self->_loggingConnection;
    v17 = 1;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      v18 = loggingConnection;
      v19 = [v4 uuid];
      *buf = 138412802;
      v38 = v19;
      v39 = 1024;
      v40 = v12;
      v41 = 1024;
      LODWORD(v42) = v13;
      _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] Asset %@ analysis in not up-to-date, performing SettlingEffect, detecting an upgrade scenario with analysis versions (%d, %d), allowing.", buf, 0x18u);
    }
  }

  else
  {
    v20 = self->_loggingConnection;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      log = v20;
      v21 = [v4 uuid];
      v22 = [v4 sceneAnalysisProperties];
      v23 = v8;
      v24 = [v22 sceneAnalysisVersion];
      v25 = [v4 sceneAnalysisProperties];
      v26 = [v25 sceneAnalysisTimestamp];
      v27 = [v4 faceAnalysisVersion];
      v28 = [v4 faceAdjustmentVersion];
      v29 = v10;
      v30 = v28;
      *buf = 138414082;
      v38 = v21;
      v39 = 1024;
      v40 = v24;
      v8 = v23;
      v41 = 2112;
      v42 = v26;
      v43 = 1024;
      v44 = v27;
      v45 = 2112;
      v46 = v28;
      v47 = 1024;
      v48 = v9;
      v49 = 1024;
      v50 = v29;
      v51 = 2112;
      v52 = v23;
      _os_log_impl(&dword_22F0FC000, log, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] Asset %@ analysis in not uptodate ((%d, %@, %d, %@) vs (%d, %d, %@))", buf, 0x42u);
    }

    v17 = 0;
  }

LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)existingWallpaperPropertiesWithAsset:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 photoAnalysisWallpaperProperties];
  if ([v5 wallpaperPropertiesVersion] != 10)
  {
    goto LABEL_13;
  }

  v6 = [v5 wallpaperPropertiesTimestamp];
  v7 = [v4 adjustmentTimestamp];
  if (v7)
  {
    v8 = [v6 isEqualToDate:v7];

    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_32;
  }

  v24 = [v4 creationDate];
  v25 = [v6 isEqualToDate:v24];

  if (!v25)
  {
    goto LABEL_13;
  }

LABEL_4:
  v9 = MEMORY[0x277CCAC58];
  v10 = [v5 wallpaperPropertiesData];
  v41 = 0;
  v11 = [v9 propertyListWithData:v10 options:0 format:0 error:&v41];
  v12 = v41;

  if (!v11)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v27 = loggingConnection;
      v28 = [v4 localIdentifier];
      *buf = 138412546;
      v43 = v28;
      v44 = 2112;
      v45 = v12;
      _os_log_error_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Failed deserializing wallpaper properties on asset %@: %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v13 = [v11 objectForKeyedSubscript:@"sceneAnalysisVersion"];
  v14 = [v13 integerValue];
  v15 = [v4 sceneAnalysisProperties];
  v16 = v14 == [v15 sceneAnalysisVersion];

  if (v16)
  {
    v17 = [v11 objectForKeyedSubscript:@"faceAnalysisVersion"];
    v18 = [v17 integerValue];
    v16 = v18 == [v4 faceAnalysisVersion];

    if (v16)
    {
      v19 = [v11 objectForKeyedSubscript:@"segmentationModelVersion"];
      v20 = [v19 unsignedIntegerValue];
      v16 = v20 == [MEMORY[0x277D3A950] currentVersion];
    }
  }

  if (self->_type == 2)
  {
    v21 = VCPMAGetRevisionForMediaAnalysisType();
    if (!v16)
    {
      goto LABEL_29;
    }

    v22 = v21;
    v23 = [v11 objectForKeyedSubscript:@"petsModelVersion"];
    LOBYTE(v22) = [v23 unsignedIntegerValue] == v22;

    if ((v22 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (!v16)
  {
LABEL_29:

LABEL_30:
    v11 = 0;
    goto LABEL_31;
  }

  v29 = [v11 objectForKeyedSubscript:@"wallpaperSpecificationVersion"];
  v30 = [v29 unsignedIntegerValue] == 3;

  if (!v30)
  {
    goto LABEL_29;
  }

  v31 = [v11 objectForKeyedSubscript:@"wallpaperLayoutConfiguration"];
  if (!v31)
  {
    v34 = self->_loggingConnection;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Persisted wallpaper layout configuration is unexpectedly nil, invalidating", buf, 2u);
    }

    goto LABEL_29;
  }

  v40 = 0;
  v32 = [MEMORY[0x277D3B530] compoundDeviceConfigurationFromDictionary:v31 error:&v40];
  v33 = v40;
  if (!v32)
  {
    v35 = self->_loggingConnection;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v43 = v31;
      v44 = 2112;
      v45 = v33;
      _os_log_error_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Failed to deserialize persisted layout configuration %@: %@", buf, 0x16u);
    }

    goto LABEL_28;
  }

  if (([v32 isEqualToLayoutConfiguration:self->_deviceWallpaperLayoutConfiguration] & 1) == 0)
  {
    v36 = self->_loggingConnection;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      deviceWallpaperLayoutConfiguration = self->_deviceWallpaperLayoutConfiguration;
      *buf = 138412546;
      v43 = v32;
      v44 = 2112;
      v45 = deviceWallpaperLayoutConfiguration;
      _os_log_impl(&dword_22F0FC000, v36, OS_LOG_TYPE_DEFAULT, "[PGWallpaperSuggestionAssetGater] Layout configuration no longer valid, %@ vs device %@, invalidating", buf, 0x16u);
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_31:
LABEL_32:

  v38 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)assetIsUsingHeadroom:(id)a3
{
  v3 = [(PGWallpaperSuggestionAssetGater *)self existingSegmentationScoresWithAsset:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277D3A950] settlingEffectLayoutContainsHeadroomForSegmentationScores:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)existingSegmentationScoresWithAsset:(id)a3
{
  v3 = [(PGWallpaperSuggestionAssetGater *)self existingWallpaperPropertiesWithAsset:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"segmentationScores"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)logCurrentSettlingEffectGatingStatisticsWithPrefix:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v4;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ Settling Effect Gating Statistics:", buf, 0xCu);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v6 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v32;
    _os_log_impl(&dword_22F0FC000, v6, OS_LOG_TYPE_INFO, "%@ %d failed feature enablement", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v7 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v31;
    _os_log_impl(&dword_22F0FC000, v7, OS_LOG_TYPE_INFO, "%@ %d failed hardware support", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v8 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v30;
    _os_log_impl(&dword_22F0FC000, v8, OS_LOG_TYPE_INFO, "%@ %d failed to download resources", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v9 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v29;
    _os_log_impl(&dword_22F0FC000, v9, OS_LOG_TYPE_INFO, "%@ %d failed adjustments supported", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v10 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v28;
    _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "%@ %d failed with generic error", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v11 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v27;
    _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_INFO, "%@ %d failed metadata check", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v12 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v26;
    _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, "%@ %d failed stabilization", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v13 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v25;
    _os_log_impl(&dword_22F0FC000, v13, OS_LOG_TYPE_INFO, "%@ %d failed video quality", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v14 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v24;
    _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_INFO, "%@ %d failed metadata integrity", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v15 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v23;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "%@ %d failed FRC", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v16 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v22;
    _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "%@ %d failed video decision", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v17 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v21;
    _os_log_impl(&dword_22F0FC000, v17, OS_LOG_TYPE_INFO, "%@ %d failed layout decision", buf, 0x12u);

    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v18 = loggingConnection;
    [(PGWallpaperSuggestionAssetGater *)self settlingEffectGatingStatistics];
    *buf = 138412546;
    v34 = v4;
    v35 = 1024;
    v36 = v20;
    _os_log_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_INFO, "%@ %d failed still transition", buf, 0x12u);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)logCurrentGatingStatisticsWithPrefix:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ AssetGater Statistics:", &v17, 0xCu);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfAssetsGated = self->_currentGatingStatistics.numberOfAssetsGated;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfAssetsGated;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfAssetsGated: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfMediaAnalysisRequest = self->_currentGatingStatistics.numberOfMediaAnalysisRequest;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfMediaAnalysisRequest;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfMediaAnalysisRequest: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfValidWallpaperPropertiesRequested = self->_currentGatingStatistics.numberOfValidWallpaperPropertiesRequested;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfValidWallpaperPropertiesRequested;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfValidWallpaperPropertiesRequested: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfInvalidAnalysisVersion = self->_currentGatingStatistics.numberOfInvalidAnalysisVersion;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfInvalidAnalysisVersion;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfInvalidAnalysisVersion: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfFailuresFromNilResult = self->_currentGatingStatistics.numberOfFailuresFromNilResult;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfFailuresFromNilResult;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfFailuresFromNilResult: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfSuccessFromCache = self->_currentGatingStatistics.numberOfSuccessFromCache;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfSuccessFromCache;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfSuccessFromCache: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfFailuresFromCache = self->_currentGatingStatistics.numberOfFailuresFromCache;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfFailuresFromCache;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfFailuresFromCache: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfSuccessFromMediaAnalysisRequests = self->_currentGatingStatistics.numberOfSuccessFromMediaAnalysisRequests;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfSuccessFromMediaAnalysisRequests;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfSuccessFromMediaAnalysisRequests: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfFailuresFromMediaAnalysisRequests = self->_currentGatingStatistics.numberOfFailuresFromMediaAnalysisRequests;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfFailuresFromMediaAnalysisRequests;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfFailuresFromMediaAnalysisRequests: %d", &v17, 0x12u);
    loggingConnection = self->_loggingConnection;
  }

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    numberOfTimeoutsFromMediaAnalysisRequests = self->_currentGatingStatistics.numberOfTimeoutsFromMediaAnalysisRequests;
    v17 = 138412546;
    v18 = v4;
    v19 = 1024;
    v20 = numberOfTimeoutsFromMediaAnalysisRequests;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_INFO, "%@ numberOfTimeoutsFromMediaAnalysisRequests: %d", &v17, 0x12u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)gateAsset:(id)a3 hasPetFace:(BOOL *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23 = 0;
  v7 = [(PGWallpaperSuggestionAssetGater *)self _gateAsset:v6 wallpaperProperties:&v23 progressBlock:&__block_literal_global_32141];
  v8 = v23;
  v9 = v8;
  if (a4)
  {
    if (v8)
    {
LABEL_3:
      *a4 = [(PGWallpaperSuggestionAssetGater *)self _hasPetFaceWithWallpaperProperties:v9];
      goto LABEL_13;
    }

    v10 = [v6 photoAnalysisWallpaperProperties];
    v11 = [v10 wallpaperPropertiesData];

    if (v11)
    {
      v22 = 0;
      v9 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v22];
      v12 = v22;
      v13 = v12;
      if (v9)
      {

        goto LABEL_3;
      }

      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
      {
        v20 = loggingConnection;
        v21 = [v6 localIdentifier];
        *buf = 138412546;
        v25 = v21;
        v26 = 2112;
        v27 = v13;
        _os_log_error_impl(&dword_22F0FC000, v20, OS_LOG_TYPE_ERROR, "[PGWallpaperSuggestionAssetGater] Failed deserializing wallpaper properties on asset %@: %@", buf, 0x16u);
      }
    }

    *a4 = 0;
    v15 = self->_loggingConnection;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v15;
      v17 = [v6 uuid];
      *buf = 138412290;
      v25 = v17;
      _os_log_impl(&dword_22F0FC000, v16, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAssetGater] No wallpaper properties available for asset %@, pet face check is going to fail.", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_13:

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_gateAsset:(id)a3 wallpaperProperties:(id *)a4 progressBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_alloc_init(PGWallpaperAssetGaterResult);
  ++self->_currentGatingStatistics.numberOfAssetsGated;
  self->_isLastGatingCallingMediaAnalysis = 0;
  v11 = [(PGWallpaperSuggestionAssetGater *)self existingWallpaperPropertiesWithAsset:v8];
  if (v11)
  {
    v12 = v11;
    v13 = [(PGWallpaperSuggestionAssetGater *)self gatingResultWithWallpaperProperties:v11];

    if (![v13 passesAnyGating] || -[PGWallpaperSuggestionAssetGater cacheExistsForAsset:](self, "cacheExistsForAsset:", v8))
    {
      ++self->_currentGatingStatistics.numberOfValidWallpaperPropertiesRequested;
      if ([v13 passesAnyGating])
      {
        ++self->_currentGatingStatistics.numberOfSuccessFromCache;
      }

      else
      {
        ++self->_currentGatingStatistics.numberOfFailuresFromCache;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v13 = v10;
  }

  numberOfInvalidAnalysisVersion = self->_currentGatingStatistics.numberOfInvalidAnalysisVersion;
  numberOfFailuresFromNilResult = self->_currentGatingStatistics.numberOfFailuresFromNilResult;
  numberOfTimeoutsFromMediaAnalysisRequests = self->_currentGatingStatistics.numberOfTimeoutsFromMediaAnalysisRequests;
  v26 = v9;
  v17 = [(PGWallpaperSuggestionAssetGater *)self requestAndPersistWallpaperPropertiesForAsset:v8 progressBlock:v9];
  v12 = v17;
  v18 = self->_currentGatingStatistics.numberOfInvalidAnalysisVersion;
  v19 = self->_currentGatingStatistics.numberOfTimeoutsFromMediaAnalysisRequests;
  if (!v17 && v18 == numberOfInvalidAnalysisVersion && self->_currentGatingStatistics.numberOfFailuresFromNilResult == numberOfFailuresFromNilResult)
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Error in requestAndPersistWallpaperPropertiesForAsset, unknown failure", buf, 2u);
    }
  }

  else if (v17)
  {
    v21 = [(PGWallpaperSuggestionAssetGater *)self gatingResultWithWallpaperProperties:v17];

    v13 = v21;
  }

  if (![v13 passesAnyGating] || self->_coversTracks)
  {
    [(PGWallpaperSuggestionAssetGater *)self clearCacheOfAsset:v8];
  }

  v22 = [v13 passesAnyGating];
  v23 = 76;
  if (v22)
  {
    v23 = 72;
  }

  ++*(&self->super.isa + v23);
  if (v18 == numberOfInvalidAnalysisVersion)
  {
    self->_isLastGatingCallingMediaAnalysis = 1;
  }

  if (v19 != numberOfTimeoutsFromMediaAnalysisRequests)
  {
    [v13 setDidTimeout:1];
  }

  v9 = v26;
LABEL_26:
  if (a4)
  {
    v24 = v12;
    *a4 = v12;
  }

  return v13;
}

- (PGWallpaperSuggestionAssetGater)initWithType:(unint64_t)a3 loggingConnection:(id)a4
{
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PGWallpaperSuggestionAssetGater;
  v8 = [(PGWallpaperSuggestionAssetGater *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    v8->_enableSettlingEffect = 1;
    v10 = [MEMORY[0x277D267E8] analysisService];
    mediaAnalysisService = v9->_mediaAnalysisService;
    v9->_mediaAnalysisService = v10;

    v12 = [MEMORY[0x277D3B530] deviceConfiguration];
    deviceWallpaperLayoutConfiguration = v9->_deviceWallpaperLayoutConfiguration;
    v9->_deviceWallpaperLayoutConfiguration = v12;

    objc_storeStrong(&v9->_loggingConnection, a4);
    *&v9->_settlingEffectGatingStatistics.numberOfEliminationsThruFRC = 0u;
    *&v9->_settlingEffectGatingStatistics.numberOfEliminationsThruStabilization = 0u;
    *&v9->_settlingEffectGatingStatistics.numberOfEliminationsThruResourceAvailability = 0u;
    *&v9->_currentGatingStatistics.numberOfFailuresFromMediaAnalysisRequests = 0u;
    *&v9->_currentGatingStatistics.numberOfFailuresFromNilResult = 0u;
    *&v9->_currentGatingStatistics.numberOfAssetsGated = 0u;
  }

  return v9;
}

+ (double)sydneyMD4FaceQualityFromAsset:(id)a3
{
  v3 = [a3 photoAnalysisWallpaperProperties];
  v4 = [v3 wallpaperPropertiesData];

  if (v4)
  {
    v5 = [MEMORY[0x277CCAC58] propertyListWithData:v4 options:0 format:0 error:0];
    v6 = v5;
    v7 = 0.0;
    if (v5)
    {
      v8 = [v5 objectForKeyedSubscript:@"faceQualityModelVersion"];
      v9 = [v8 unsignedIntegerValue];

      if (v9 == 3737841667)
      {
        v10 = [v6 objectForKeyedSubscript:@"faceQualityScore"];
        [v10 doubleValue];
        v7 = v11;
      }
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

+ (unint64_t)_posterClassificationFromAssetGaterType:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (id)assetFetchPropertySetsForGating
{
  v6[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD9A90];
  v6[0] = *MEMORY[0x277CD9B10];
  v6[1] = v2;
  v6[2] = *MEMORY[0x277CD9AE0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:3];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end