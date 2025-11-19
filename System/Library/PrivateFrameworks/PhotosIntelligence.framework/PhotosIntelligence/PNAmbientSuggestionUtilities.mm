@interface PNAmbientSuggestionUtilities
+ (CGSize)_deviceScreenSize;
+ (double)_cropScoreWithAsset:(id)a3;
+ (id)fetchHighlightAssetsInPhotoLibrary:(id)a3 limit:(unint64_t)a4 randomSeed:(unint64_t)a5;
+ (id)fetchMemoryKeyAssetsInPhotoLibrary:(id)a3 limit:(unint64_t)a4 randomSeed:(unint64_t)a5;
+ (int64_t)assetIsEligibleForDisplay:(id)a3 modelSet:(id)a4;
+ (int64_t)suggestionIsEligibleForDisplay:(id)a3 asset:(id)a4 modelSet:(id)a5;
@end

@implementation PNAmbientSuggestionUtilities

+ (double)_cropScoreWithAsset:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 _deviceScreenSize];
  if (v5 <= v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v5 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [v4 faceAreaMinX];
  v10 = v9;
  [v4 faceAreaMinY];
  v12 = v11;
  [v4 faceAreaMaxX];
  v14 = v13;
  [v4 faceAreaMaxY];
  v15 = v14 - v10;
  v17 = v16 - v12;
  if (v8 != 0.0 && v7 != 0.0 && (v8 != *MEMORY[0x1E69BDDB0] || v7 != *(MEMORY[0x1E69BDDB0] + 8)))
  {
    v19 = fabs(v8 / v7);
LABEL_15:
    v40 = v19;
    goto LABEL_16;
  }

  v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
  v19 = 1.0;
  if (!v20)
  {
    goto LABEL_15;
  }

  v40 = 1.0;
  *buf = 134218496;
  v42 = v8;
  v43 = 2048;
  v44 = v7;
  v45 = 2048;
  v46 = 0x3FF0000000000000;
  _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
LABEL_16:
  v21 = [v4 pixelWidth];
  v22 = [v4 pixelHeight];
  [v4 acceptableCropRect];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v4 preferredCropRect];
  v35 = [PNCropUtilitiesWrapper cropVariantsFromSignalsWithCropTypes:&unk_1F46E5588 aspectRatio:v21 sourcePixelWidth:v22 sourcePixelHeight:MEMORY[0x1E695E0F0] acceptableCropRect:1 preferredCropRect:v40 faceAreaRect:v24 objectSaliencyRects:v26 gazeAreaRect:v28 isDenormalized:v30, v31, v32, v33, v34, *&v10, *&v12, *&v15, *&v17, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  if ([v35 count])
  {
    v36 = [v35 firstObject];
    [v36 cropScore];
    v38 = v37;
  }

  else
  {
    v38 = 0.0;
  }

  return v38;
}

+ (CGSize)_deviceScreenSize
{
  if (_deviceScreenSize_onceToken != -1)
  {
    dispatch_once(&_deviceScreenSize_onceToken, &__block_literal_global_1365);
  }

  v2 = *&_deviceScreenSize_deviceSize_0;
  v3 = *&_deviceScreenSize_deviceSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

uint64_t __49__PNAmbientSuggestionUtilities__deviceScreenSize__block_invoke()
{
  result = PFDeviceScreenSize();
  _deviceScreenSize_deviceSize_0 = v1;
  _deviceScreenSize_deviceSize_1 = v2;
  return result;
}

+ (id)fetchMemoryKeyAssetsInPhotoLibrary:(id)a3 limit:(unint64_t)a4 randomSeed:(unint64_t)a5
{
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLAmbientPhotoFrameGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v80 = a4;
    _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] fetchMemoryKeyAssets with limit %lu", buf, 0xCu);
  }

  v70 = a4;
  v8 = v7;
  v9 = os_signpost_id_generate(v8);
  info = 0;
  mach_timebase_info(&info);
  v10 = v8;
  v11 = v10;
  v72 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FetchMemoryKeyAssets", "", buf, 2u);
  }

  spid = v9;

  v71 = mach_absolute_time();
  v12 = [MEMORY[0x1E695DF00] date];
  v13 = [v12 dateByAddingTimeInterval:-63115200.0];

  v74 = v6;
  v14 = [v6 librarySpecificFetchOptions];
  v15 = *MEMORY[0x1E6978CF0];
  v84[0] = *MEMORY[0x1E6978CF0];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  [v14 setFetchPropertySets:v16];

  v17 = MEMORY[0x1E696AB28];
  v73 = v13;
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", @"creationDate", v13];
  v83[0] = v18;
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO", @"rejected"];
  v83[1] = v19;
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO", @"userCreated"];
  v83[2] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
  v22 = [v17 andPredicateWithSubpredicates:v21];
  [v14 setPredicate:v22];

  v23 = v11;
  v24 = os_signpost_id_generate(v23);
  v77 = 0;
  mach_timebase_info(&v77);
  v25 = v23;
  v26 = v25;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "FetchAmbientMemories", "", buf, 2u);
  }

  v27 = mach_absolute_time();
  v75 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:4 subtype:0x7FFFFFFFFFFFFFFFLL options:v14];
  v28 = mach_absolute_time();
  numer = v77.numer;
  denom = v77.denom;
  v31 = v26;
  v32 = v31;
  if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v32, OS_SIGNPOST_INTERVAL_END, v24, "FetchAmbientMemories", "", buf, 2u);
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v80 = "FetchAmbientMemories";
    v81 = 2048;
    v82 = ((((v28 - v27) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v32, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v33 = v32;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = [v75 count];
    *buf = 67109120;
    LODWORD(v80) = v34;
    _os_log_impl(&dword_1C6F5C000, v33, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] Found %d memories", buf, 8u);
  }

  v35 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6978C68], v15, 0}];
  v36 = [v74 librarySpecificFetchOptions];
  [v36 setIncludeGuestAssets:1];
  v37 = [v35 allObjects];
  [v36 setFetchPropertySets:v37];

  v38 = v33;
  v39 = os_signpost_id_generate(v38);
  v76 = 0;
  mach_timebase_info(&v76);
  v40 = v38;
  v41 = v40;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v41, OS_SIGNPOST_INTERVAL_BEGIN, v39, "FetchAmbientMemoryKeyAssets", "", buf, 2u);
  }

  v42 = mach_absolute_time();
  v43 = [MEMORY[0x1E6978630] fetchKeyAssetByMemoryUUIDForMemories:v75 options:v36];
  v44 = v41;
  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    v45 = [v43 count];
    *buf = 67109120;
    LODWORD(v80) = v45;
    _os_log_impl(&dword_1C6F5C000, v44, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] Found %d memory key assets", buf, 8u);
  }

  v46 = mach_absolute_time();
  v48 = v76.numer;
  v47 = v76.denom;
  v49 = v44;
  v50 = v49;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v49))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v50, OS_SIGNPOST_INTERVAL_END, v39, "FetchAmbientMemoryKeyAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v80 = "FetchAmbientMemoryKeyAssets";
    v81 = 2048;
    v82 = ((((v46 - v42) * v48) / v47) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v50, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v51 = [v43 allValues];
  if ([v51 count] >= 2)
  {
    v52 = [MEMORY[0x1E695DFD8] setWithArray:v51];
    v53 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:a5];
    v54 = [v52 allObjects];
    v55 = PFShuffledArrayWithRandomNumberGenerator();

    v56 = [v55 count];
    if (v56 >= v70)
    {
      v57 = v70;
    }

    else
    {
      v57 = v56;
    }

    v51 = [v55 subarrayWithRange:{0, v57}];
  }

  v58 = objc_alloc(MEMORY[0x1E69788E0]);
  v59 = [v58 initWithObjects:v51 photoLibrary:v74 fetchType:*MEMORY[0x1E6978D98] fetchPropertySets:v35 identifier:0 registerIfNeeded:0];
  v60 = v50;
  if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
  {
    v61 = [v59 count];
    *buf = 67109120;
    LODWORD(v80) = v61;
    _os_log_impl(&dword_1C6F5C000, v60, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] Return %d unique memory key assets", buf, 8u);
  }

  v62 = mach_absolute_time();
  v64 = info.numer;
  v63 = info.denom;
  v65 = v60;
  v66 = v65;
  if (v72 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v66, OS_SIGNPOST_INTERVAL_END, spid, "FetchMemoryKeyAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v80 = "FetchMemoryKeyAssets";
    v81 = 2048;
    v82 = ((((v62 - v71) * v64) / v63) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v66, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v59;
}

+ (id)fetchHighlightAssetsInPhotoLibrary:(id)a3 limit:(unint64_t)a4 randomSeed:(unint64_t)a5
{
  v67[2] = *MEMORY[0x1E69E9840];
  v60 = a3;
  v6 = PLAmbientPhotoFrameGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v63 = a4;
    _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] fetchHighlightAssets with limit %lu", buf, 0xCu);
  }

  v7 = v6;
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  v55 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "FetchHighlightAssets", "", buf, 2u);
  }

  spid = v8;

  v47 = mach_absolute_time();
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v59 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"highlightBeingSummaryAssets.kind", 0];
  [v11 addObject:?];
  v58 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"highlightBeingSummaryAssets.enrichmentState", 4];
  [v11 addObject:?];
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K = %d", @"highlightBeingSummaryAssets.type", 0, @"highlightBeingSummaryAssets.visibilityState", 3];
  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"highlightBeingSummaryAssets.type", 5];
  v14 = MEMORY[0x1E696AB28];
  v56 = v13;
  v57 = v12;
  v67[0] = v12;
  v67[1] = v13;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
  v16 = [v14 orPredicateWithSubpredicates:v15];

  v54 = v16;
  [v11 addObject:v16];
  v53 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %f", @"highlightBeingSummaryAssets.promotionScore", 0x3FD0000000000000];
  [v11 addObject:?];
  v52 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v11 addObject:?];
  v17 = [MEMORY[0x1E69C1AA8] latestVersion];
  v50 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K >= %lu", @"additionalAttributes", @"sceneAnalysisVersion", v17];
  [v11 addObject:?];
  v49 = [objc_alloc(MEMORY[0x1E69C1AA8]) initWithSceneAnalysisVersion:v17];
  v18 = [v49 minimumWallpaperScoreNode];
  [v18 operatingPoint];
  v20 = v19;

  v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K > %f", @"mediaAnalysisAttributes", @"wallpaperScore", v20];
  [v11 addObject:?];
  v21 = [v60 librarySpecificFetchOptions];
  v22 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v11];
  [v21 setInternalPredicate:v22];

  v66 = *MEMORY[0x1E6978CF0];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
  [v21 setFetchPropertySets:v23];

  [v21 setSuppressSlowFetchReports:1];
  v24 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v21];
  v25 = v10;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [v24 count];
    *buf = 67109120;
    LODWORD(v63) = v26;
    _os_log_impl(&dword_1C6F5C000, v25, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] Found %d highlight summary assets", buf, 8u);
  }

  v27 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:a5];
  v28 = objc_alloc(MEMORY[0x1E695DF70]);
  v29 = [v24 fetchedObjectIDs];
  v30 = [v28 initWithArray:v29];

  PFMutableArrayShuffleWithRandomNumberGenerator();
  v31 = [v30 count];
  if (v31 >= a4)
  {
    v32 = a4;
  }

  else
  {
    v32 = v31;
  }

  v33 = [v30 subarrayWithRange:{0, v32}];
  v34 = objc_alloc(MEMORY[0x1E69788E0]);
  v35 = *MEMORY[0x1E6978D98];
  v36 = [v24 fetchPropertySets];
  v37 = [v34 initWithOids:v33 photoLibrary:v60 fetchType:v35 fetchPropertySets:v36 identifier:0 registerIfNeeded:0];

  v38 = v25;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = [v37 count];
    *buf = 67109120;
    LODWORD(v63) = v39;
    _os_log_impl(&dword_1C6F5C000, v38, OS_LOG_TYPE_INFO, "[PNAmbientSuggestionUtilities] Return %d assets", buf, 8u);
  }

  v40 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v43 = v38;
  v44 = v43;
  if (v55 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v44, OS_SIGNPOST_INTERVAL_END, spid, "FetchHighlightAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v63 = "FetchHighlightAssets";
    v64 = 2048;
    v65 = ((((v40 - v47) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v44, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v37;
}

+ (int64_t)assetIsEligibleForDisplay:(id)a3 modelSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v8 = [v6 sceneAnalysisProperties];
    v9 = [v8 sceneAnalysisVersion];

    v7 = [[PNAssetSafeForDisplayModelSet alloc] initWithSceneAnalysisVersion:v9];
  }

  if ([PNAssetCurationUtilities assetIsSafeForDisplay:v6 modelSet:v7])
  {
    if ([a1 _hasAcceptableCropScoreWithAsset:v6])
    {
      v10 = 0;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (int64_t)suggestionIsEligibleForDisplay:(id)a3 asset:(id)a4 modelSet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [MEMORY[0x1E6978AE8] allFeaturedStateEnabledSuggestionTypesForWidget];
  [v11 addObjectsFromArray:v12];

  [v11 addObject:&unk_1F46E5348];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(v8, "type")}];
  v14 = [v11 containsObject:v13];

  if (v14)
  {
    if ([v8 subtype] == 502 || objc_msgSend(v8, "type") == 8)
    {
      goto LABEL_15;
    }

    if (!v10)
    {
      v15 = [v9 sceneAnalysisProperties];
      v16 = [v15 sceneAnalysisVersion];

      v10 = [[PNAssetSafeForDisplayModelSet alloc] initWithSceneAnalysisVersion:v16];
    }

    if ([PNAssetCurationUtilities assetIsSafeForDisplay:v9 modelSet:v10])
    {
LABEL_15:
      if ([a1 _hasAcceptableCropScoreWithAsset:v9])
      {
        v17 = 0;
      }

      else
      {
        v17 = 2;
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end