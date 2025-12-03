@interface PNLibraryProcessingProgressProvider
+ ($DF4FB41D2F0E3F59E20087ACD782DC9D)faceProcessingProgressForLibrary:(SEL)library;
+ (void)requestHighlightEnrichmentProgressForLibrary:(id)library result:(id)result;
+ (void)requestProcessingProgressForLibrary:(id)library result:(id)result;
+ (void)requestSyndicationProgressForLibrary:(id)library result:(id)result;
@end

@implementation PNLibraryProcessingProgressProvider

+ (void)requestSyndicationProgressForLibrary:(id)library result:(id)result
{
  libraryCopy = library;
  resultCopy = result;
  v7 = _AnalysisProgressQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__PNLibraryProcessingProgressProvider_requestSyndicationProgressForLibrary_result___block_invoke;
  v10[3] = &unk_1E82A26E0;
  v11 = libraryCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = libraryCopy;
  dispatch_async(v7, v10);
}

void __83__PNLibraryProcessingProgressProvider_requestSyndicationProgressForLibrary_result___block_invoke(uint64_t a1)
{
  v52[3] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  v3 = MEMORY[0x1E69E9C10];
  v4 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v5 = v2;
  v32 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v4, "SyndicationReport", "", buf, 2u);
  }

  spid = v4;

  v30 = mach_absolute_time();
  v34 = a1;
  v6 = [*(a1 + 32) librarySpecificFetchOptions];
  v7 = *MEMORY[0x1E6978C90];
  v52[0] = *MEMORY[0x1E6978CF0];
  v52[1] = v7;
  v52[2] = *MEMORY[0x1E6978C20];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
  [v6 setFetchPropertySets:v8];

  v9 = +[PNAssetCurationUtilities internalPredicateToIncludeOnlyReceivedSyndicatedAssets];
  [v6 setInternalPredicate:v9];

  [v6 setIncludeGuestAssets:1];
  [v6 setWantsIncrementalChangeDetails:0];
  v33 = v6;
  v10 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v6];
  v31 = [v10 count];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v38 objects:v51 count:16];
  if (v12)
  {
    v13 = v12;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v11);
        }

        v22 = [*(*(&v38 + 1) + 8 * i) syndicationEligibility];
        if (v22 <= -3)
        {
          if (v22 > -5)
          {
            if (v22 == -4)
            {
              ++v17;
            }

            else
            {
              ++v16;
            }
          }

          else if (v22 == -6)
          {
            ++v19;
          }

          else if (v22 == -5)
          {
            ++v18;
          }
        }

        else if (v22 < 0)
        {
          if (v22 == -2)
          {
            ++v15;
          }

          else if (v22 == -1)
          {
            ++v14;
          }
        }

        else if (v22)
        {
          if (v22 == 1)
          {
            ++v36;
          }

          else if (v22 == 2)
          {
            ++v35;
          }
        }

        else
        {
          ++v37;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v38 objects:v51 count:16];
    }

    while (v13);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  v23 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v26 = MEMORY[0x1E69E9C10];
  if (v32 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, spid, "SyndicationReport", "", buf, 2u);
  }

  v27 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "SyndicationReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v23 - v30) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v28 = *(*(v34 + 40) + 16);
  *buf = v31;
  *&buf[8] = v19;
  *&buf[16] = v18;
  v44 = v17;
  v45 = v16;
  v46 = v15;
  v47 = v14;
  v48 = v37;
  v49 = v36;
  v50 = v35;
  v28();
}

+ (void)requestHighlightEnrichmentProgressForLibrary:(id)library result:(id)result
{
  libraryCopy = library;
  resultCopy = result;
  v7 = _AnalysisProgressQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__PNLibraryProcessingProgressProvider_requestHighlightEnrichmentProgressForLibrary_result___block_invoke;
  v10[3] = &unk_1E82A26E0;
  v11 = libraryCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = libraryCopy;
  dispatch_async(v7, v10);
}

void __91__PNLibraryProcessingProgressProvider_requestHighlightEnrichmentProgressForLibrary_result___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  v3 = MEMORY[0x1E69E9C10];
  v4 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v5 = v2;
  v6 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v4, "HighlightEnrichmentReport", "", buf, 2u);
  }

  spid = v4;

  v34 = mach_absolute_time();
  v7 = [*(a1 + 32) librarySpecificFetchOptions];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"category", 1];
  [v7 setPredicate:v8];

  [v7 setWantsIncrementalChangeDetails:0];
  v35 = v7;
  v9 = [MEMORY[0x1E6978650] fetchAssetCollectionsWithType:6 subtype:1000000301 options:v7];
  v10 = [v9 count];
  if (v10)
  {
    v33 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    for (i = 0; i != v10; ++i)
    {
      v17 = [v9 objectAtIndexedSubscript:i];
      v18 = [v17 enrichmentState];
      if (v18 == 4)
      {
        v19 = v11 + 1;
      }

      else
      {
        v19 = v11;
      }

      if (v18 == 3)
      {
        v20 = v12 + 1;
      }

      else
      {
        v20 = v12;
      }

      if (v18 == 3)
      {
        v19 = v11;
      }

      if (v18 == 2)
      {
        v21 = v13 + 1;
      }

      else
      {
        v21 = v13;
      }

      if (v18 == 2)
      {
        v20 = v12;
        v19 = v11;
      }

      if (v18 == 1)
      {
        v22 = v14 + 1;
      }

      else
      {
        v22 = v14;
      }

      if (v18)
      {
        v23 = v15;
      }

      else
      {
        v23 = v15 + 1;
      }

      if (!v18)
      {
        v22 = v14;
      }

      if (v18 > 1)
      {
        v13 = v21;
        v12 = v20;
        v11 = v19;
      }

      else
      {
        v15 = v23;
        v14 = v22;
      }
    }

    v24 = v11 * 100.0 / v10;
    v25 = (v13 + v14 + v12 + v11) * 100.0 / v10;
    a1 = v33;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v24 = 0.0;
    v25 = 0.0;
  }

  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = MEMORY[0x1E69E9C10];
  if (v6 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, spid, "HighlightEnrichmentReport", "", buf, 2u);
  }

  v30 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "HighlightEnrichmentReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v26 - v34) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v31 = *(*(a1 + 40) + 16);
  *buf = v10;
  *&buf[8] = v11;
  *&buf[16] = v12;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v24;
  v42 = v25;
  v31();
}

+ ($DF4FB41D2F0E3F59E20087ACD782DC9D)faceProcessingProgressForLibrary:(SEL)library
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a4;
  *&retstr->var1 = 0u;
  *&retstr->var3 = 0u;
  v6 = MEMORY[0x1E69E9C10];
  v7 = MEMORY[0x1E69E9C10];
  v8 = os_signpost_id_generate(v6);
  info = 0;
  mach_timebase_info(&info);
  v9 = v6;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v8, "AllowedForAnalysisReport", "", buf, 2u);
  }

  v10 = MEMORY[0x1E69E9C10];

  v11 = mach_absolute_time();
  fetchCountOfAssetsWithAllowedForAnalysis = [v5 fetchCountOfAssetsWithAllowedForAnalysis];
  retstr->var0 = fetchCountOfAssetsWithAllowedForAnalysis;
  v13 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v16 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v8, "AllowedForAnalysisReport", "", buf, 2u);
  }

  v17 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "AllowedForAnalysisReport";
    v36 = 2048;
    v37 = ((((v13 - v11) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v18 = MEMORY[0x1E69E9C10];
  v19 = MEMORY[0x1E69E9C10];
  v20 = os_signpost_id_generate(v18);
  v32 = 0;
  mach_timebase_info(&v32);
  v21 = v18;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v20, "FaceAnalysisReport", "", buf, 2u);
  }

  v22 = mach_absolute_time();
  fetchCountOfAssetsWithFacesProcessedToLatestVersion = [v5 fetchCountOfAssetsWithFacesProcessedToLatestVersion];
  retstr->var1 = fetchCountOfAssetsWithFacesProcessedToLatestVersion;
  if (fetchCountOfAssetsWithAllowedForAnalysis)
  {
    retstr->var3 = fetchCountOfAssetsWithFacesProcessedToLatestVersion * 100.0 / fetchCountOfAssetsWithAllowedForAnalysis;
    fetchCountOfAssetsWithFacesProcessedToAnyVersion = [v5 fetchCountOfAssetsWithFacesProcessedToAnyVersion];
    v25 = fetchCountOfAssetsWithFacesProcessedToAnyVersion * 100.0 / fetchCountOfAssetsWithAllowedForAnalysis;
  }

  else
  {
    retstr->var3 = 0.0;
    fetchCountOfAssetsWithFacesProcessedToAnyVersion = [v5 fetchCountOfAssetsWithFacesProcessedToAnyVersion];
    v25 = 0.0;
  }

  retstr->var2 = fetchCountOfAssetsWithFacesProcessedToAnyVersion;
  retstr->var4 = v25;
  v26 = mach_absolute_time();
  v27 = v32;
  v28 = MEMORY[0x1E69E9C10];
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v20, "FaceAnalysisReport", "", buf, 2u);
  }

  v29 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v35 = "FaceAnalysisReport";
    v36 = 2048;
    v37 = ((((v26 - v22) * v27.numer) / v27.denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v30 = MEMORY[0x1E69E9C10];

  return result;
}

+ (void)requestProcessingProgressForLibrary:(id)library result:(id)result
{
  libraryCopy = library;
  resultCopy = result;
  v7 = _AnalysisProgressQueue();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __82__PNLibraryProcessingProgressProvider_requestProcessingProgressForLibrary_result___block_invoke;
  v10[3] = &unk_1E82A26E0;
  v11 = libraryCopy;
  v12 = resultCopy;
  v8 = resultCopy;
  v9 = libraryCopy;
  dispatch_async(v7, v10);
}

void __82__PNLibraryProcessingProgressProvider_requestProcessingProgressForLibrary_result___block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  v3 = MEMORY[0x1E69E9C10];
  v4 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v5 = v2;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v4, "AllowedForAnalysisReport", "", buf, 2u);
  }

  v6 = MEMORY[0x1E69E9C10];

  v7 = mach_absolute_time();
  v8 = [*(a1 + 32) fetchCountOfAssetsWithAllowedForAnalysis];
  v9 = [*(a1 + 32) fetchCountOfVideosWithAllowedForAnalysis];
  v10 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v13 = v6;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v4, "AllowedForAnalysisReport", "", buf, 2u);
  }

  v14 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "AllowedForAnalysisReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v10 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v15 = v14;
  v16 = os_signpost_id_generate(v14);
  v68 = 0;
  mach_timebase_info(&v68);
  v17 = v14;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v16, "SceneAnalysisReport", "", buf, 2u);
  }

  v18 = mach_absolute_time();
  v19 = [*(a1 + 32) fetchCountOfAssetsWithScenesProcessed];
  v64 = v19;
  if (v8)
  {
    v20 = v19 * 100.0 / v8;
  }

  else
  {
    v20 = 0.0;
  }

  v21 = mach_absolute_time();
  v23 = v68.numer;
  v22 = v68.denom;
  v24 = MEMORY[0x1E69E9C10];
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v16, "SceneAnalysisReport", "", buf, 2u);
  }

  v25 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "SceneAnalysisReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v21 - v18) * v23) / v22) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v26 = v25;
  v27 = os_signpost_id_generate(v25);
  v67 = 0;
  mach_timebase_info(&v67);
  v28 = v25;
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v27, "FaceAnalysisReport", "", buf, 2u);
  }

  v29 = mach_absolute_time();
  v30 = [*(a1 + 32) fetchCountOfAssetsWithFacesProcessedToLatestVersion];
  v31 = v30;
  if (v8)
  {
    v32 = v30 * 100.0 / v8;
  }

  else
  {
    v32 = 0.0;
  }

  v33 = mach_absolute_time();
  v35 = v67.numer;
  v34 = v67.denom;
  v36 = MEMORY[0x1E69E9C10];
  if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v27, "FaceAnalysisReport", "", buf, 2u);
  }

  v37 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "FaceAnalysisReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v33 - v29) * v35) / v34) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v38 = v37;
  v39 = os_signpost_id_generate(v37);
  v66 = 0;
  mach_timebase_info(&v66);
  v40 = v37;
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v39, "MediaAnalysisImageReport", "", buf, 2u);
  }

  v41 = mach_absolute_time();
  v42 = [*(a1 + 32) fetchCountOfAssetsWithMediaAnalysisImageProcessed];
  v43 = v42;
  if (v8)
  {
    v44 = v42 * 100.0 / v8;
  }

  else
  {
    v44 = 0.0;
  }

  v45 = mach_absolute_time();
  v47 = v66.numer;
  v46 = v66.denom;
  v48 = MEMORY[0x1E69E9C10];
  if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v39, "MediaAnalysisImageReport", "", buf, 2u);
  }

  v49 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "MediaAnalysisImageReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v45 - v41) * v47) / v46) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v50 = v49;
  v51 = os_signpost_id_generate(v49);
  v65 = 0;
  mach_timebase_info(&v65);
  v52 = v49;
  if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_BEGIN, v51, "MediaAnalysisVideoReport", "", buf, 2u);
  }

  v53 = mach_absolute_time();
  v54 = [*(a1 + 32) fetchCountOfAssetsWithMediaAnalysisVideoProcessed];
  v55 = v54;
  if (v9)
  {
    v56 = v54 * 100.0 / v9;
  }

  else
  {
    v56 = 0.0;
  }

  v57 = mach_absolute_time();
  v59 = v65.numer;
  v58 = v65.denom;
  v60 = MEMORY[0x1E69E9C10];
  if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(MEMORY[0x1E69E9C10]))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_SIGNPOST_INTERVAL_END, v51, "MediaAnalysisVideoReport", "", buf, 2u);
  }

  v61 = MEMORY[0x1E69E9C10];

  if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "MediaAnalysisVideoReport";
    *&buf[12] = 2048;
    *&buf[14] = ((((v57 - v53) * v59) / v58) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v62 = *(*(a1 + 40) + 16);
  *buf = v8;
  *&buf[8] = v9;
  *&buf[16] = v64;
  v71 = v31;
  v72 = v43;
  v73 = v55;
  v74 = v20;
  v75 = v32;
  v76 = v44;
  v77 = v56;
  v62();
  v63 = MEMORY[0x1E69E9C10];
}

@end