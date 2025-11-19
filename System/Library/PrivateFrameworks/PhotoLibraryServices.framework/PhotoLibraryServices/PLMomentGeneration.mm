@interface PLMomentGeneration
+ (id)dateIntervalsAroundSortedDates:(id)a3 minimumIntervalDuration:(double)a4;
- (BOOL)_hasWorkWorkRemainingWithCompletionBlocks:(id *)a3;
- (BOOL)_isAsset:(id)a3 identicalToAssetForMoments:(id)a4;
- (BOOL)_writeDetails:(id)a3 toFilepath:(id)a4 withDefaultFilename:(id)a5;
- (BOOL)regenerateMonthHighlightTitlesWithManager:(id)a3 error:(id *)a4;
- (PLMomentGeneration)initWithMomentGenerationDataManager:(id)a3 bundle:(id)a4 locale:(id)a5;
- (PLMomentGenerationDataManagement)momentGenerationDataManager;
- (id)_detailsForAsset:(id)a3 simpleOnly:(BOOL)a4;
- (id)_detailsForMoment:(id)a3;
- (id)_highlightGenerator;
- (id)_logEntryForAssets:(id)a3 isBatchUpdate:(BOOL)a4;
- (id)_newPublicGlobalUUIDsToAssetsMappingWithAssets:(id)a3;
- (id)allAssetMetadataWriteToFile:(id)a3;
- (id)allMomentsMetadataWriteToFile:(id)a3;
- (id)momentGenerationStatus;
- (id)newFrequentLocationManager;
- (id)newLocalCreationDateCreator;
- (void)_appendAssetsToReplayLog:(id)a3 forBatchUpdate:(BOOL)a4;
- (void)_clearReplayLog;
- (void)_runIncrementalGenerationPassWithCompletionHandler:(id)a3;
- (void)_runIncrementalMomentGenerationIfItemsArePendingWithCompletion:(id)a3;
- (void)_runMomentAndHighlightGenerationForAssets:(id)a3 hiddenAssets:(id)a4 updatedAssetIDsForHighlights:(id)a5 updatedMomentIDsForHighlights:(id)a6 affectedMoments:(id)a7 highlightsWithDeletedMoments:(id)a8 sharedAssetContainerIncrementalChanges:(id)a9 insertedOrUpdatedMoments:(id *)a10;
- (void)cleanupEmptyHighlightsWithCompletionBlock:(id)a3;
- (void)generateWithAssetInsertsAndUpdates:(id)a3 assetDeletes:(id)a4 assetUpdatesForHighlights:(id)a5 momentUpdatesForHighlights:(id)a6 completionHandler:(id)a7;
- (void)generateWithIncrementalDataCompletionHandler:(id)a3;
- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:(BOOL)a3 completionBlock:(id)a4;
- (void)locationOfInterestUpdateWithCompletionBlock:(id)a3;
- (void)processRecentHighlightsWithCompletionBlock:(id)a3;
- (void)processUnprocessedMomentLocationsWithCompletionBlock:(id)a3;
- (void)rebuildAllHighlightsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)rebuildAllMomentsWithOptions:(id)a3 completionHandler:(id)a4;
- (void)releaseMemoryIntensiveObjects;
- (void)saveChangesForAssetInsertsAndUpdates:(id)a3 assetDeletes:(id)a4 assetUpdatesForHighlights:(id)a5 momentUpdatesForHighlights:(id)a6 sharedAssetContainerIncrementalChangesByAssetID:(id)a7;
- (void)updateHighlightTitlesWithCompletionBlock:(id)a3;
- (void)validateLibraryWithCompletionBlock:(id)a3;
@end

@implementation PLMomentGeneration

- (PLMomentGenerationDataManagement)momentGenerationDataManager
{
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);

  return WeakRetained;
}

- (BOOL)regenerateMonthHighlightTitlesWithManager:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__108963;
  v23 = __Block_byref_object_dispose__108964;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PLMomentGeneration_regenerateMonthHighlightTitlesWithManager_error___block_invoke;
  v10[3] = &unk_1E7578898;
  v7 = v6;
  v13 = &v15;
  v14 = &v19;
  v11 = v7;
  v12 = self;
  [v7 performDataTransaction:v10 synchronously:1 completionHandler:0];
  if (a4)
  {
    *a4 = v20[5];
  }

  v8 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v8;
}

void __70__PLMomentGeneration_regenerateMonthHighlightTitlesWithManager_error___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Re-generating month highlight titles.", buf, 2u);
  }

  v3 = a1[4];
  v8 = 0;
  v4 = [v3 allPhotosHighlightsOfKind:1 error:&v8];
  v5 = v8;
  v6 = v8;
  if (v4)
  {
    [PLPhotosHighlightGenerator updateTitleForHighlights:v4 forKind:1 forceUpdateLocale:0 dateRangeTitleGenerator:*(a1[5] + 104)];
  }

  else
  {
    v7 = PLMomentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Fetching Months failed: %@", buf, 0xCu);
    }

    *(*(a1[6] + 8) + 24) = 0;
    objc_storeStrong((*(a1[7] + 8) + 40), v5);
  }
}

- (void)validateLibraryWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(PLMomentGeneration *)self isGenerationPassInProgress])
  {
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v5 = [(PLMomentGeneration *)self momentGenerationDataManager];
    if (([v5 shouldPerformLightweightValidation] & 1) != 0 && (v6 = +[PLModelMigrator currentModelVersion](PLModelMigrator, "currentModelVersion"), v7 = objc_msgSend(v5, "previousValidatedModelVersion"), v8 = objc_msgSend(v5, "previousValidationSucceeded"), v7 < v6))
    {
      v9 = v8;
      v10 = PLMomentGenerationGetLog();
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v36 = 1;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x3032000000;
      v33[3] = __Block_byref_object_copy__108963;
      v33[4] = __Block_byref_object_dispose__108964;
      v34 = [MEMORY[0x1E695DF70] array];
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x3032000000;
      v31[3] = __Block_byref_object_copy__108963;
      v31[4] = __Block_byref_object_dispose__108964;
      v32 = [MEMORY[0x1E695DF70] array];
      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = __Block_byref_object_copy__108963;
      v29[4] = __Block_byref_object_dispose__108964;
      v30 = [MEMORY[0x1E695DF70] array];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke;
      v21[3] = &unk_1E7576B18;
      v11 = v10;
      v22 = v11;
      v25 = v35;
      v26 = v33;
      v23 = v5;
      v24 = self;
      v27 = v31;
      v28 = v29;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke_272;
      v12[3] = &unk_1E7576B40;
      v20 = v9;
      v15 = v35;
      v16 = v33;
      v17 = v31;
      v18 = v29;
      v13 = v23;
      v19 = v6;
      v14 = v4;
      [v13 performDataTransaction:v21 synchronously:0 completionHandler:v12];

      _Block_object_dispose(v29, 8);
      _Block_object_dispose(v31, 8);

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(v35, 8);
    }

    else if (v4)
    {
      v4[2](v4);
    }
  }
}

void __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke(uint64_t a1)
{
  v126 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v4 = v2;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "ValidateAssetsPerBatch", "", buf, 2u);
  }

  v7 = mach_absolute_time();
  v8 = *(a1 + 40);
  v117 = 0;
  v9 = [v8 allInvalidAssetsWithError:&v117];
  v10 = v117;
  if (!v9)
  {
    v13 = PLBackendGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    v122 = v10;
    v20 = "[MomentsGeneration.Validation] Could not fetch invalid assets with error:%@";
    v21 = v13;
    v22 = OS_LOG_TYPE_ERROR;
    v23 = 12;
LABEL_23:
    _os_log_impl(&dword_19BF1F000, v21, v22, v20, buf, v23);
    goto LABEL_24;
  }

  if (![v9 count])
  {
    v13 = PLMomentsGetLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v20 = "[MomentsGeneration.Validation] All assets valid";
    v21 = v13;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 2;
    goto LABEL_23;
  }

  v98 = v3 - 1;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = [v9 count];
    *buf = 134217984;
    v122 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid assets", buf, 0xCu);
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v13 = v9;
  v14 = [v13 countByEnumeratingWithState:&v113 objects:v125 count:16];
  if (v14)
  {
    v15 = v14;
    v89 = v7;
    v92 = v3;
    v95 = v10;
    v16 = *v114;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v114 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v113 + 1) + 8 * i) uuid];
        [*(*(*(a1 + 64) + 8) + 40) addObject:v18];
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v122 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid asset with identifier:%@", buf, 0xCu);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v113 objects:v125 count:16];
    }

    while (v15);
    v7 = v89;
    v3 = v92;
    v10 = v95;
  }

  v6 = v98;
LABEL_24:

  v24 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v27 = v5;
  v28 = v27;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v28, OS_SIGNPOST_INTERVAL_END, v3, "ValidateAssetsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateAssetsPerBatch";
    v123 = 2048;
    v124 = ((((v24 - v7) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v29 = *(a1 + 32);
  v30 = os_signpost_id_generate(v29);
  v112 = 0;
  mach_timebase_info(&v112);
  v31 = v29;
  v32 = v31;
  v99 = v30 - 1;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "ValidateMomentsPerBatch", "", buf, 2u);
  }

  v33 = mach_absolute_time();
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 112));
  v111 = v10;
  v35 = [WeakRetained allInvalidMomentsWithError:&v111];
  v36 = v111;

  v96 = v33;
  if (!v35)
  {
    v39 = PLBackendGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    *buf = 138412290;
    v122 = v36;
    v46 = "[MomentsGeneration.Validation] Could not fetch invalid moments with error:%@";
    v47 = v39;
    v48 = OS_LOG_TYPE_ERROR;
    v49 = 12;
LABEL_50:
    _os_log_impl(&dword_19BF1F000, v47, v48, v46, buf, v49);
    goto LABEL_51;
  }

  if (![v35 count])
  {
    v39 = PLMomentsGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v46 = "[MomentsGeneration.Validation] All moments valid";
    v47 = v39;
    v48 = OS_LOG_TYPE_DEFAULT;
    v49 = 2;
    goto LABEL_50;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v37 = PLBackendGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = [v35 count];
    *buf = 134217984;
    v122 = v38;
    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid moments", buf, 0xCu);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v85 = v35;
  v39 = v35;
  v40 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
  if (v40)
  {
    v41 = v40;
    v90 = v30;
    v93 = v36;
    v87 = v9;
    v42 = *v108;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v108 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = [*(*(&v107 + 1) + 8 * j) uuid];
        [*(*(*(a1 + 72) + 8) + 40) addObject:v44];
        v45 = PLBackendGetLog();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v122 = v44;
          _os_log_impl(&dword_19BF1F000, v45, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid moment with identifier:%@", buf, 0xCu);
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v107 objects:v120 count:16];
    }

    while (v41);
    v35 = v85;
    v9 = v87;
    v30 = v90;
    v36 = v93;
  }

LABEL_51:

  v50 = mach_absolute_time();
  v52 = v112.numer;
  v51 = v112.denom;
  v53 = v32;
  v54 = v53;
  if (v99 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v54, OS_SIGNPOST_INTERVAL_END, v30, "ValidateMomentsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateMomentsPerBatch";
    v123 = 2048;
    v124 = ((((v50 - v96) * v52) / v51) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v55 = *(a1 + 32);
  v56 = os_signpost_id_generate(v55);
  v106 = 0;
  mach_timebase_info(&v106);
  v57 = v55;
  v58 = v57;
  v97 = v56 - 1;
  if (v56 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v58, OS_SIGNPOST_INTERVAL_BEGIN, v56, "ValidateHighlightsPerBatch", "", buf, 2u);
  }

  v94 = v58;

  v91 = mach_absolute_time();
  v59 = objc_loadWeakRetained((*(a1 + 48) + 112));
  v105 = v36;
  v60 = [v59 allInvalidPhotosHighlightsOfAllKindsWithError:&v105];
  v61 = v105;

  v100 = v60;
  if (!v60)
  {
    v64 = PLBackendGetLog();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_79;
    }

    *buf = 138412290;
    v122 = v61;
    v73 = "[MomentsGeneration.Validation] Could not fetch invalid highlights with error:%@";
    v74 = v64;
    v75 = OS_LOG_TYPE_ERROR;
    v76 = 12;
LABEL_78:
    _os_log_impl(&dword_19BF1F000, v74, v75, v73, buf, v76);
    goto LABEL_79;
  }

  if (![v60 count])
  {
    v64 = PLMomentsGetLog();
    if (!os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_79;
    }

    *buf = 0;
    v73 = "[MomentsGeneration.Validation] All highlights valid";
    v74 = v64;
    v75 = OS_LOG_TYPE_DEFAULT;
    v76 = 2;
    goto LABEL_78;
  }

  v84 = v61;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  v62 = PLBackendGetLog();
  if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
  {
    v63 = [v60 count];
    *buf = 134217984;
    v122 = v63;
    _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Detected %lu invalid highlights", buf, 0xCu);
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v64 = v60;
  v65 = [v64 countByEnumeratingWithState:&v101 objects:v119 count:16];
  if (v65)
  {
    v66 = v65;
    v82 = v56;
    v83 = v54;
    v86 = v35;
    v88 = v9;
    v67 = *v102;
    do
    {
      for (k = 0; k != v66; ++k)
      {
        if (*v102 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = *(*(&v101 + 1) + 8 * k);
        [v69 uuid];
        v70 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*(*(*(a1 + 80) + 8) + 40) addObject:*&v70];
        v71 = +[PLPhotosHighlight stringFromHighlightKind:](PLPhotosHighlight, "stringFromHighlightKind:", [v69 kind]);
        v72 = PLBackendGetLog();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v122 = v71;
          v123 = 2112;
          v124 = v70;
          _os_log_impl(&dword_19BF1F000, v72, OS_LOG_TYPE_ERROR, "[MomentsGeneration.Validation] Invalid %@ highlight with identifier:%@", buf, 0x16u);
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v101 objects:v119 count:16];
    }

    while (v66);
    v35 = v86;
    v9 = v88;
    v56 = v82;
    v54 = v83;
  }

  v61 = v84;
LABEL_79:

  v77 = mach_absolute_time();
  v79 = v106.numer;
  v78 = v106.denom;
  v80 = v94;
  v81 = v80;
  if (v97 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v80))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v81, OS_SIGNPOST_INTERVAL_END, v56, "ValidateHighlightsPerBatch", "", buf, 2u);
  }

  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v122 = "ValidateHighlightsPerBatch";
    v123 = 2048;
    v124 = ((((v77 - v91) * v79) / v78) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v81, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }
}

uint64_t __57__PLMomentGeneration_validateLibraryWithCompletionBlock___block_invoke_272(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && *(a1 + 88) == 1)
  {
    v2 = [*(*(*(a1 + 56) + 8) + 40) count];
    v3 = [*(*(*(a1 + 64) + 8) + 40) count];
    v4 = [*(*(*(a1 + 72) + 8) + 40) count];
    v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@\n\n", @"Photos has detected some inconsistencies in the curation."];
    if ([*(*(*(a1 + 56) + 8) + 40) count])
    {
      [v5 appendFormat:@"%lu asset identifiers:\n", v2];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v6 = *(*(*(a1 + 56) + 8) + 40);
      v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v33;
        do
        {
          v10 = 0;
          do
          {
            if (*v33 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v5 appendFormat:@"%@\n", *(*(&v32 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v8);
      }

      [v5 appendString:@"\n"];
    }

    if ([*(*(*(a1 + 64) + 8) + 40) count])
    {
      [v5 appendFormat:@"%lu moment identifiers:\n", v3];
      [v5 appendString:@"Moment identifiers:\n"];
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v11 = *(*(*(a1 + 64) + 8) + 40);
      v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v29;
        do
        {
          v15 = 0;
          do
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [v5 appendFormat:@"%@\n", *(*(&v28 + 1) + 8 * v15++)];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v13);
      }

      [v5 appendString:@"\n"];
    }

    if ([*(*(*(a1 + 72) + 8) + 40) count])
    {
      [v5 appendFormat:@"%lu highlight identifiers:\n", v4];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v16 = *(*(*(a1 + 72) + 8) + 40);
      v17 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v25;
        do
        {
          v20 = 0;
          do
          {
            if (*v25 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [v5 appendFormat:@"%@\n", *(*(&v24 + 1) + 8 * v20++)];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v24 objects:v36 count:16];
        }

        while (v18);
      }

      [v5 appendString:@"\n"];
    }

    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Please file a radar to help diagnose the problem.", @"Photos has detected some inconsistencies in the curation."];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Photos Clustering Error (%lu, %lu, %lu)", v2, v3, v4];
    [PLDiagnostics fileRadarUserNotificationWithHeader:@"Photos Curation Inconsistencies" message:v21 radarTitle:v22 radarDescription:v5];
  }

  [*(a1 + 32) setPreviousValidatedModelVersion:*(a1 + 80)];
  [*(a1 + 32) setPreviousValidationSucceeded:*(*(*(a1 + 48) + 8) + 24)];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)allMomentsMetadataWriteToFile:(id)a3
{
  v4 = a3;
  v5 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__108963;
  v21[4] = __Block_byref_object_dispose__108964;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__108963;
  v19 = __Block_byref_object_dispose__108964;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PLMomentGeneration_allMomentsMetadataWriteToFile___block_invoke;
  v10[3] = &unk_1E7578898;
  v13 = v21;
  v6 = v5;
  v14 = &v15;
  v11 = v6;
  v12 = self;
  [v6 performBlock:v10 synchronously:1 completionHandler:0];
  if (v4)
  {
    if (![(PLMomentGeneration *)self _writeDetails:v16[5] toFilepath:v4 withDefaultFilename:@"momentsMetadataDump.plist"])
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, v4);
    }

    v7 = v16[5];
    v16[5] = 0;
  }

  v8 = v16[5];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(v21, 8);

  return v8;
}

void __52__PLMomentGeneration_allMomentsMetadataWriteToFile___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allMomentsWithError:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(*(*(a1 + 48) + 8) + 40);
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        v16 = [*(a1 + 40) _detailsForMoment:{v14, v17}];
        [v8 addObject:v16];

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  [*(*(*(a1 + 56) + 8) + 40) setValue:v8 forKey:@"AllMoments"];
}

- (id)_detailsForMoment:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 approximateLocation];

    if (v6)
    {
      v7 = [v5 approximateLocation];
      [v7 coordinate];
      v9 = v8;
      v11 = v10;

      v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
      v32[0] = @"MomentApproximateLocationLatitude";
      v32[1] = @"MomentApproximateLocationLongitude";
      v33[0] = v12;
      v33[1] = v13;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    }

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = [v5 startDate];
    [v14 setValue:v15 forKey:@"MomentStartDate"];

    v16 = [v5 endDate];
    [v14 setValue:v16 forKey:@"MomentEndDate"];

    v17 = [v5 representativeDate];
    [v14 setValue:v17 forKey:@"MomentRepresentativeDate"];

    [v14 setValue:v6 forKey:@"MomentApproximateLocation"];
    v18 = [v5 assets];
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [(PLMomentGeneration *)self _detailsForAsset:*(*(&v27 + 1) + 8 * i) simpleOnly:0, v27];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v22);
    }

    [v14 setValue:v19 forKey:@"MomentAssets"];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)allAssetMetadataWriteToFile:(id)a3
{
  v4 = a3;
  v5 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__108963;
  v21 = __Block_byref_object_dispose__108964;
  v22 = 0;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__PLMomentGeneration_allAssetMetadataWriteToFile___block_invoke;
  v13 = &unk_1E7578820;
  v6 = v5;
  v15 = self;
  v16 = &v17;
  v14 = v6;
  [v6 performBlock:&v10 synchronously:1 completionHandler:0];
  if (v4)
  {
    if (![(PLMomentGeneration *)self _writeDetails:v18[5] toFilepath:v4 withDefaultFilename:@"metadataDump.plist"])
    {
      NSLog(&cfstr_ThereWasAnErro_0.isa, v4, v10, v11, v12, v13);
    }

    v7 = v18[5];
    v18[5] = 0;
  }

  v8 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v8;
}

void __50__PLMomentGeneration_allAssetMetadataWriteToFile___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) allAssetsToBeIncludedInMomentsWithError:0];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [MEMORY[0x1E695DEC8] array];
  [v6 setObject:v7 forKey:@"AllMoments"];

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [MEMORY[0x1E695DEC8] array];
  [v8 setObject:v9 forKey:@"AllMomentLists"];

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v11);
        }

        ++v14;
        v17 = [*(a1 + 40) _detailsForAsset:*(*(&v21 + 1) + 8 * i) simpleOnly:{0, v21}];
        v18 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        [v17 setValue:v18 forKey:@"AssetID"];

        [v10 addObject:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [*(*(*(a1 + 48) + 8) + 40) setValue:v10 forKey:@"AllAssets"];
  v19 = *(*(*(a1 + 48) + 8) + 40);
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  [v19 setObject:v20 forKey:@"CurrentMaxID"];
}

- (id)_logEntryForAssets:(id)a3 isBatchUpdate:(BOOL)a4
{
  v4 = a4;
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [v7 setObject:v8 forKey:@"EntryIsBatchUpdate"];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(PLMomentGeneration *)self _detailsForAsset:*(*(&v17 + 1) + 8 * i) simpleOnly:1, v17];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  [v7 setObject:v9 forKey:@"AllAssets"];

  return v7;
}

- (void)_appendAssetsToReplayLog:(id)a3 forBatchUpdate:(BOOL)a4
{
  v4 = a4;
  v47 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v8 = [v7 replayLogPath];

  v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8];
  if (v9)
  {
    v42 = 0;
    v10 = [MEMORY[0x1E696AE40] propertyListWithData:v9 options:0 format:0 error:&v42];
    v11 = v42;
    if (v11)
    {
      v12 = PLMomentsGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v11 localizedDescription];
        *buf = 138412290;
        v44 = v13;
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error reading replay log: %@", buf, 0xCu);
      }
    }

    if (v10)
    {
      v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = [MEMORY[0x1E695DF90] dictionary];
  [v14 setObject:&unk_1F0FBEC80 forKey:@"ReplayLogAssetCount"];
LABEL_10:
  v15 = [v14 objectForKey:@"ReplayLogAssetCount"];
  v16 = [v15 integerValue];

  if (([v6 count] + v16) < 0x2711)
  {
    v38 = v8;
    v18 = [v6 count];
    v17 = [v14 objectForKey:@"ReplayStream"];
    v19 = [MEMORY[0x1E695DF70] arrayWithArray:v17];
    if ([v6 count])
    {
      v20 = [(PLMomentGeneration *)self _logEntryForAssets:v6 isBatchUpdate:v4];
      [v19 addObject:v20];
    }

    [v14 setObject:v19 forKey:@"ReplayStream"];
    v21 = [MEMORY[0x1E696AD98] numberWithInteger:v18 + v16];
    [v14 setObject:v21 forKey:@"ReplayLogAssetCount"];

    v41 = 0;
    v22 = [MEMORY[0x1E696AE40] dataWithPropertyList:v14 format:200 options:0 error:&v41];
    v23 = v41;

    if (v23)
    {
      v24 = PLMomentsGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v23 localizedDescription];
        *buf = 138412290;
        v44 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Error reading moments replay log plist: %@", buf, 0xCu);
      }

      goto LABEL_30;
    }

    v24 = [MEMORY[0x1E696AC08] defaultManager];
    v26 = [v38 stringByDeletingLastPathComponent];
    v37 = v26;
    if (([v24 fileExistsAtPath:v26]& 1) != 0 || (v40 = 0, v27 = [v24 createDirectoryAtPath:v26 withIntermediateDirectories:0 attributes:0 error:&v40], v28 = v40, v29 = v28, v27) && !v28)
    {
      v39 = 0;
      v30 = [v22 writeToFile:v38 options:0 error:{&v39, v26}];
      v31 = v39;
      v29 = v31;
      if (v30)
      {
        v23 = 0;
        if (!v31)
        {
          goto LABEL_29;
        }
      }

      v32 = PLMomentsGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v29 localizedDescription];
        *buf = 138412290;
        v44 = v33;
        v34 = "Error writing moments replay log data: %@";
        v35 = v32;
        v36 = 12;
LABEL_27:
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, v34, buf, v36);
      }
    }

    else
    {
      v32 = PLMomentsGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = [v29 localizedDescription];
        *buf = 138412546;
        v44 = v37;
        v45 = 2112;
        v46 = v33;
        v34 = "Unable to create directory at %@ for moments replay log: %@";
        v35 = v32;
        v36 = 22;
        goto LABEL_27;
      }
    }

    v23 = v29;
LABEL_29:

LABEL_30:
    v11 = v23;
    v8 = v38;
    goto LABEL_31;
  }

  v17 = PLMomentsGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Moment generation has exceeded the maximum replay log size. Not logging", buf, 2u);
  }

LABEL_31:
}

- (void)_clearReplayLog
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v3 = [v2 replayLogPath];

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v11];
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [v7 localizedDescription];
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error deleting replay log file: %@", buf, 0xCu);
    }
  }
}

- (id)_detailsForAsset:(id)a3 simpleOnly:(BOOL)a4
{
  v30[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = [v5 location];

    if (v7)
    {
      v8 = [v5 location];
      [v8 coordinate];
      v10 = v9;
      v12 = v11;

      v13 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
      v29[0] = @"AssetLocationLatitude";
      v29[1] = @"AssetLocationLongitude";
      v30[0] = v13;
      v30[1] = v14;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
    }

    [v6 setValue:v7 forKey:@"AssetLocation"];
    v15 = [v5 dateCreated];
    [v6 setValue:v15 forKey:@"AssetDateCreated"];

    if (!a4)
    {
      v16 = [v5 cloudAssetGUID];
      v17 = [v5 uuid];
      v18 = v17;
      if (v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v17;
      }

      [v6 setValue:v19 forKey:@"AssetCloudOrLocalID"];
      v20 = [v5 modificationDate];
      [v6 setValue:v20 forKey:@"AssetModificationDate"];

      v21 = MEMORY[0x1E696AD98];
      [v5 duration];
      v22 = [v21 numberWithDouble:?];
      [v6 setValue:v22 forKey:@"AssetDuration"];

      v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "favorite")}];
      [v6 setValue:v23 forKey:@"AssetIsFavorite"];

      v24 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "kind")}];
      [v6 setValue:v24 forKey:@"AssetKind"];

      v25 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "kindSubtype")}];
      [v6 setValue:v25 forKey:@"AssetKindSubtype"];

      v26 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "height")}];
      [v6 setValue:v26 forKey:@"AssetHeight"];

      v27 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v5, "width")}];
      [v6 setValue:v27 forKey:@"AssetWidth"];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_writeDetails:(id)a3 toFilepath:(id)a4 withDefaultFilename:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 pathExtension];
  if (![v10 isEqual:&stru_1F0F06D80])
  {
    goto LABEL_7;
  }

  v18 = 0;
  v11 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [v11 fileExistsAtPath:v8 isDirectory:&v18];

  if (v12)
  {
    if (v18 != 1)
    {
      goto LABEL_7;
    }

    v13 = [v8 stringByAppendingPathComponent:v9];
  }

  else
  {
    v13 = [v8 stringByAppendingPathExtension:@"plist"];
  }

  v14 = v13;

  v8 = v14;
LABEL_7:
  if (v7)
  {
    v15 = [MEMORY[0x1E696AE40] dataWithPropertyList:v7 format:100 options:0 error:0];
    v16 = [v15 writeToFile:v8 options:1073741825 error:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)momentGenerationStatus
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6 = MEMORY[0x1E69E9820];
  pl_dispatch_sync();
  if (*(v21 + 24))
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"In Progress: %@\n", v2, v6, 3221225472, __44__PLMomentGeneration_momentGenerationStatus__block_invoke, &unk_1E7576AF0, self, &v20, &v16, &v12, &v8];
  v4 = v3;
  if (*(v21 + 24) == 1)
  {
    [v3 appendFormat:@"\tIn progress count: %lu\n", v17[3]];
  }

  [v4 appendFormat:@"Pending Update Count: %lu\n", v13[3]];
  [v4 appendFormat:@"Pending Delete Count: %lu\n", v9[3]];
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v4;
}

uint64_t __44__PLMomentGeneration_momentGenerationStatus__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = [*(a1[4] + 88) isIdle] ^ 1;
  *(*(a1[6] + 8) + 24) = *(a1[4] + 8);
  *(*(a1[7] + 8) + 24) = [*(a1[4] + 16) count];
  result = [*(a1[4] + 24) count];
  *(*(a1[8] + 8) + 24) = result;
  return result;
}

- (void)invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale:(BOOL)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke;
  v12[3] = &unk_1E7576AC8;
  v15 = a3;
  v13 = v7;
  v14 = self;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke_145;
  v10[3] = &unk_1E7576AA0;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [v9 performDataTransaction:v12 synchronously:1 completionHandler:v10];
}

void __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = @"yes";
    }

    else
    {
      v3 = @"no";
    }

    *buf = 138412290;
    v68 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Invalidating highlight subtitles and re-generating highlight titles, forceUpdateLocale: %@.", buf, 0xCu);
  }

  v4 = PLMomentGenerationGetLog();
  v5 = os_signpost_id_generate(v4);
  info = 0;
  mach_timebase_info(&info);
  v6 = v4;
  v7 = v6;
  v57 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "RegenerateTitle", "", buf, 2u);
  }

  v8 = mach_absolute_time();
  [*(a1 + 32) invalidateAllHighlightSubtitles];
  v9 = *(*(a1 + 40) + 104);
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v64 = 0;
  v12 = [v11 allPhotosHighlightsOfKind:1 error:&v64];
  v13 = v64;
  v14 = PLMomentsGetLog();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Fetching Months failed: %@", buf, 0xCu);
    }

    v16 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v19 = v7;
    v20 = v19;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v12 count];
    *buf = 134217984;
    v68 = v21;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu month highlights.", buf, 0xCu);
  }

  [PLPhotosHighlightGenerator updateTitleForHighlights:v12 forKind:1 forceUpdateLocale:*(a1 + 48) dateRangeTitleGenerator:v9];
  objc_autoreleasePoolPop(v10);
  v10 = objc_autoreleasePoolPush();
  v22 = *(a1 + 32);
  v63 = 0;
  v12 = [v22 allPhotosHighlightsOfKind:2 error:&v63];
  v13 = v63;
  v23 = PLMomentsGetLog();
  v24 = v23;
  if (v13)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v13;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Fetching Years failed: %@", buf, 0xCu);
    }

    v16 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v25 = v7;
    v20 = v25;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v20, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

LABEL_26:
    *buf = 136315394;
    v68 = "RegenerateTitle";
    v69 = 2048;
    v70 = ((((v16 - v8) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
LABEL_27:

    objc_autoreleasePoolPop(v10);
    goto LABEL_28;
  }

  v56 = v8;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v12 count];
    *buf = 134217984;
    v68 = v26;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu year highlights.", buf, 0xCu);
  }

  [PLPhotosHighlightGenerator updateTitleForHighlights:v12 forKind:2 forceUpdateLocale:*(a1 + 48) dateRangeTitleGenerator:v9];
  objc_autoreleasePoolPop(v10);
  v27 = objc_autoreleasePoolPush();
  v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %ld OR %K = %ld", @"kind", 0, @"kind", 3];
  v29 = *(a1 + 32);
  v62 = 0;
  v30 = [v29 allPhotosHighlightsWithPredicate:v28 error:&v62];
  v31 = v62;
  v32 = PLMomentsGetLog();
  v33 = v32;
  if (v31)
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v68 = v31;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_ERROR, "Fetching Days and DayGroups failed: %@", buf, 0xCu);
    }

    v34 = mach_absolute_time();
    v36 = info.numer;
    v35 = info.denom;
    v37 = v7;
    v38 = v37;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v38, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v68 = "RegenerateTitle";
      v69 = 2048;
      v70 = ((((v34 - v56) * v36) / v35) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
  }

  else
  {
    v53 = v28;
    context = v27;
    v55 = v9;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v30 count];
      *buf = 134217984;
      v68 = v39;
      _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Generating highlight titles/subtitles for %zu day/dayGroup highlights.", buf, 0xCu);
    }

    v40 = *(a1 + 48);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v30;
    v42 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v59;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v59 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v58 + 1) + 8 * i);
          v47 = objc_autoreleasePoolPush();
          [PLPhotosHighlightGenerator updateTitlesForHighlight:v46 dateRangeTitleGenerator:*(*(a1 + 40) + 104) options:v40];
          objc_autoreleasePoolPop(v47);
        }

        v43 = [v41 countByEnumeratingWithState:&v58 objects:v66 count:16];
      }

      while (v43);
    }

    objc_autoreleasePoolPop(context);
    v48 = mach_absolute_time();
    v50 = info.numer;
    v49 = info.denom;
    v51 = v7;
    v52 = v51;
    if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v52, OS_SIGNPOST_INTERVAL_END, v5, "RegenerateTitle", "", buf, 2u);
    }

    v9 = v55;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v68 = "RegenerateTitle";
      v69 = 2048;
      v70 = ((((v48 - v56) * v50) / v49) / 1000000.0);
      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }
  }

LABEL_28:
}

uint64_t __116__PLMomentGeneration_invalidateHighlightSubtitlesAndRegenerateHighlightTitlesWithForceUpdateLocale_completionBlock___block_invoke_145(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)locationOfInterestUpdateWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v6 = [WeakRetained isolationQueue];
  v7 = v4;
  pl_dispatch_async();
}

void __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) momentGenerationDataManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E75781E8;
  v5[4] = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_3;
  v3[3] = &unk_1E7576AA0;
  v4 = *(a1 + 40);
  [v2 performDataTransaction:v5 synchronously:1 completionHandler:v3];
}

void __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processCachedLocationOfInterest];
}

uint64_t __66__PLMomentGeneration_locationOfInterestUpdateWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)cleanupEmptyHighlightsWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v6 = [WeakRetained isolationQueue];
  v7 = v4;
  pl_dispatch_async();
}

void __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CleanupEmptyHighlights", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_130;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_130(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 cleanupEmptyHighlights];
}

uint64_t __64__PLMomentGeneration_cleanupEmptyHighlightsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CleanupEmptyHighlights", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Cleanup Empty Highlights finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateHighlightTitlesWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v6 = [WeakRetained isolationQueue];
  v7 = v4;
  pl_dispatch_async();
}

void __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "UpdateHighlightTitles", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_129;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_129(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 updateHighlightTitles];
}

uint64_t __63__PLMomentGeneration_updateHighlightTitlesWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "UpdateHighlightTitles", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Update Highlight Titles finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processUnprocessedMomentLocationsWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v6 = [WeakRetained isolationQueue];
  v7 = v4;
  pl_dispatch_async();
}

void __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) momentGenerationDataManager];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E75781E8;
  v5[4] = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_3;
  v3[3] = &unk_1E7576AA0;
  v4 = *(a1 + 40);
  [v2 performDataTransaction:v5 synchronously:1 completionHandler:v3];
}

void __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processUnprocessedMomentLocations];
}

uint64_t __75__PLMomentGeneration_processUnprocessedMomentLocationsWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)processRecentHighlightsWithCompletionBlock:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v6 = [WeakRetained isolationQueue];
  v7 = v4;
  pl_dispatch_async();
}

void __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLMomentGenerationGetLog();
  v4 = os_signpost_id_generate(v3);
  v5 = v3;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "ProcessRecentHighlights", "", buf, 2u);
  }

  v7 = [*(a1 + 32) momentGenerationDataManager];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_128;
  v14[3] = &unk_1E75781E8;
  v14[4] = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7576A28;
  v10 = v6;
  v12 = v4;
  v13 = Current;
  v11 = *(a1 + 40);
  v8 = v6;
  [v7 performDataTransaction:v14 synchronously:1 completionHandler:v9];
}

void __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_128(uint64_t a1)
{
  v1 = [*(a1 + 32) _highlightGenerator];
  [v1 processRecentHighlights];
}

uint64_t __65__PLMomentGeneration_processRecentHighlightsWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "ProcessRecentHighlights", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Process Recent Highlights finished in %.2f", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)rebuildAllHighlightsWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PLPlatformMomentsSupported())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild starting", buf, 2u);
    }

    v10 = PLMomentGenerationGetLog();
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FullRebuild", "", buf, 2u);
    }

    v14 = [v6 objectForKey:PLMomentGenerationShouldDeleteAllHighlightsKey];
    v15 = [v14 BOOLValue];

    v16 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v45 = 0;
    *buf = 0;
    v39 = buf;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__108963;
    v42 = __Block_byref_object_dispose__108964;
    v43 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke;
    v33[3] = &unk_1E7576A50;
    v37 = v15;
    v35 = v44;
    v17 = v16;
    v34 = v17;
    v36 = buf;
    [v17 performDataTransaction:v33 synchronously:1 completionHandler:0];
    if ([v17 wantsMomentReplayLogging])
    {
      [(PLMomentGeneration *)self _clearReplayLog];
    }

    v18 = dispatch_group_create();
    dispatch_group_enter(v18);
    v19 = [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle singleThreaded];
    [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle setSingleThreaded:1];
    v20 = *(v39 + 5);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke_127;
    v27[3] = &unk_1E7576A78;
    v21 = v13;
    v28 = v21;
    v31 = v11;
    v32 = Current;
    v30 = v7;
    v22 = v18;
    v29 = v22;
    [(PLMomentGeneration *)self generateWithAssetInsertsAndUpdates:MEMORY[0x1E695E0F0] assetDeletes:0 assetUpdatesForHighlights:0 momentUpdatesForHighlights:v20 completionHandler:v27];
    v23 = PLMomentsGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 0;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild, waiting for completion...", &v26, 2u);
    }

    dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
    [(PLMomentGenerationThrottle *)self->_incrementalMomentGenThrottle setSingleThreaded:v19];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v44, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v25 = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLMomentsGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Deleting existing highlights...", buf, 2u);
    }

    v3 = *(a1 + 32);
    v14 = 0;
    v4 = [v3 deleteAllHighlightsWithError:&v14];
    v5 = v14;
    *(*(*(a1 + 40) + 8) + 24) = v4;
  }

  else
  {
    v5 = 0;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v6 = PLMomentsGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Error deleting existing highlights %@", buf, 0xCu);
    }
  }

  v7 = *(a1 + 32);
  v13 = v5;
  v8 = [v7 allMomentIDsWithError:&v13];
  v9 = v13;

  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  if (v9)
  {
    v12 = PLMomentsGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Error fetching moments %@", buf, 0xCu);
    }
  }
}

void __72__PLMomentGeneration_rebuildAllHighlightsWithOptions_completionHandler___block_invoke_127(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FullRebuild", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 64);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild finished in %f", &v8, 0xCu);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))();
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)rebuildAllMomentsWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (PLPlatformMomentsSupported())
  {
    Current = CFAbsoluteTimeGetCurrent();
    v9 = PLMomentsGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild starting", buf, 2u);
    }

    v10 = PLMomentGenerationGetLog();
    v11 = os_signpost_id_generate(v10);
    v12 = v10;
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FullRebuild", "", buf, 2u);
    }

    v14 = [v6 objectForKey:PLMomentGenerationShouldDeleteAllMomentsKey];
    v15 = [v14 BOOLValue];

    v16 = [(PLMomentGeneration *)self momentGenerationDataManager];
    *buf = 0;
    v33 = buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__108963;
    v36 = __Block_byref_object_dispose__108964;
    v37 = 0;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke;
    v27[3] = &unk_1E7577898;
    v31 = v15;
    v17 = v16;
    v28 = v17;
    v30 = buf;
    v29 = v6;
    [v17 performDataTransaction:v27 synchronously:1 completionHandler:0];
    if ([v17 wantsMomentReplayLogging])
    {
      [(PLMomentGeneration *)self _clearReplayLog];
    }

    v18 = *(v33 + 5);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke_126;
    v22[3] = &unk_1E7576A28;
    v19 = v13;
    v23 = v19;
    v25 = v11;
    v26 = Current;
    v24 = v7;
    [(PLMomentGeneration *)self generateWithAssetInsertsAndUpdates:v18 assetDeletes:0 assetUpdatesForHighlights:0 momentUpdatesForHighlights:0 completionHandler:v22];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v21 = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v2 = PLMomentsGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Deleting existing moments and highlights", buf, 2u);
    }

    v3 = *(a1 + 32);
    v25 = 0;
    v4 = [v3 deleteAllHighlightsWithError:&v25];
    v5 = v25;
    if ((v4 & 1) == 0)
    {
      v6 = PLMomentsGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Failed to delete highlights: %@", buf, 0xCu);
      }
    }

    v7 = *(a1 + 32);
    v24 = v5;
    v8 = [v7 deleteAllMomentsWithError:&v24];
    v9 = v24;

    if ((v8 & 1) == 0)
    {
      v10 = PLMomentsGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Failed to delete moments: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:PLMomentGenerationTargetedAssetOIDsKey];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v14)
  {
    v15 = v14;
    v16 = PLMomentsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Rebuilding moments with %tu targeted assets", buf, 0xCu);
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v23 = v9;
    v18 = [v17 allAssetIDsToBeIncludedInMomentsWithError:&v23];
    v19 = v23;

    v20 = *(*(a1 + 48) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v18;

    v16 = PLMomentsGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [*(*(*(a1 + 48) + 8) + 40) count];
      *buf = 134217984;
      v27 = v22;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Rebuilding for all moments with %tu assests", buf, 0xCu);
    }

    v9 = v19;
  }
}

uint64_t __69__PLMomentGeneration_rebuildAllMomentsWithOptions_completionHandler___block_invoke_126(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2;
  v4 = *(a1 + 48);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v8) = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "FullRebuild", "", &v8, 2u);
  }

  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
    v8 = 134217984;
    v9 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment incremental rebuild finished in %.2f s", &v8, 0xCu);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_runMomentAndHighlightGenerationForAssets:(id)a3 hiddenAssets:(id)a4 updatedAssetIDsForHighlights:(id)a5 updatedMomentIDsForHighlights:(id)a6 affectedMoments:(id)a7 highlightsWithDeletedMoments:(id)a8 sharedAssetContainerIncrementalChanges:(id)a9 insertedOrUpdatedMoments:(id *)a10
{
  v107 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v82 = a5;
  v81 = a6;
  v18 = a7;
  v79 = a8;
  v19 = a9;
  v20 = [(PLMomentGeneration *)self localCreationDateCreator];
  v21 = [(PLMomentGeneration *)self frequentLocationManager];
  v22 = objc_autoreleasePoolPush();
  v23 = [PLAssetCollectionGenerator alloc];
  v24 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v77 = v21;
  v78 = v20;
  v25 = [(PLAssetCollectionGenerator *)v23 initWithDataManager:v24 frequentLocationManager:v21 localCreationDateCreator:v20];

  v26 = v16;
  v80 = v18;
  v27 = [(PLAssetCollectionGenerator *)v25 processMomentsWithAssets:v16 affectedMoments:v18];

  objc_autoreleasePoolPop(v22);
  *a10 = [v27 insertedOrUpdatedMoments];
  v28 = [(PLMomentGeneration *)self _highlightGenerator];
  if (v28)
  {
    context = objc_autoreleasePoolPush();
    v29 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v75 = v17;
    v76 = v16;
    [v28 beginGenerationWithAssets:v16 hiddenAssets:v17];
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke;
    v99[3] = &unk_1E7576A00;
    v30 = v29;
    v100 = v30;
    v71 = v28;
    v101 = v71;
    [v19 enumerateKeysAndObjectsUsingBlock:v99];
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke_2;
    v97[3] = &unk_1E7578478;
    v72 = v30;
    v98 = v72;
    v74 = v19;
    [v19 enumerateKeysAndObjectsUsingBlock:v97];
    v31 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v96 = 0;
    v32 = [v31 momentsForAssetsWithUniqueIDs:v82 error:&v96];
    v33 = v96;
    v34 = MEMORY[0x1E695E0F0];
    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = MEMORY[0x1E695E0F0];
    }

    v36 = v35;

    v37 = [(PLMomentGeneration *)self momentGenerationDataManager];
    v95 = v33;
    v38 = [v37 momentsWithUniqueIDs:v81 error:&v95];
    v70 = v95;

    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = v34;
    }

    v69 = v39;

    v40 = [MEMORY[0x1E695DFA8] set];
    v41 = [MEMORY[0x1E695DFA8] set];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v42 = [v27 insertedOrUpdatedMoments];
    v43 = [v42 countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v92;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v92 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v91 + 1) + 8 * i);
          if ([v47 isDeleted])
          {
            v48 = v41;
          }

          else
          {
            v48 = v40;
          }

          [v48 addObject:v47];
        }

        v44 = [v42 countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v44);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v49 = v36;
    v50 = [v49 countByEnumeratingWithState:&v87 objects:v103 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v88;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v49);
          }

          v54 = *(*(&v87 + 1) + 8 * j);
          if ([v54 isDeleted])
          {
            v55 = v41;
          }

          else
          {
            v55 = v40;
          }

          [v55 addObject:v54];
        }

        v51 = [v49 countByEnumeratingWithState:&v87 objects:v103 count:16];
      }

      while (v51);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v56 = v69;
    v57 = [v56 countByEnumeratingWithState:&v83 objects:v102 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v84;
      do
      {
        for (k = 0; k != v58; ++k)
        {
          if (*v84 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v61 = *(*(&v83 + 1) + 8 * k);
          if ([v61 isDeleted])
          {
            v62 = v41;
          }

          else
          {
            v62 = v40;
          }

          [v62 addObject:v61];
        }

        v58 = [v56 countByEnumeratingWithState:&v83 objects:v102 count:16];
      }

      while (v58);
    }

    v21 = v77;
    if ([v40 count] || objc_msgSend(v41, "count"))
    {
      [v77 invalidateCurrentFrequentLocations];
    }

    v63 = v79;
    [v71 registerHighlightsWithDeletedMoments:{v79, v69}];
    [v71 generateHighlightsForUpsertedMoments:v40 frequentLocationsDidChange:{objc_msgSend(v27, "frequentLocationsDidChange")}];
    [v71 finishGeneration];

    objc_autoreleasePoolPop(context);
    v17 = v75;
    v26 = v76;
    v64 = v27;
    v66 = v81;
    v65 = v82;
    v19 = v74;
  }

  else
  {
    v64 = v27;
    v66 = v81;
    v65 = v82;
    v67 = PLMomentsGetLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      libraryBundle = self->_libraryBundle;
      *buf = 138412290;
      v106 = libraryBundle;
      _os_log_impl(&dword_19BF1F000, v67, OS_LOG_TYPE_DEFAULT, "Skipping highlight generation on photoLibrary: %@", buf, 0xCu);
    }

    v63 = v79;
  }
}

uint64_t __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 hasSharingChanges];
  if (v5)
  {
    v6 = [*(a1 + 32) assetWithUniqueID:v8 error:0];
    if (v6)
    {
      [*(a1 + 40) markHighlightNeedingNewKeyAssetsWithAsset:v6];
    }
  }

  return MEMORY[0x1EEE66BE0](v5);
}

void __245__PLMomentGeneration__runMomentAndHighlightGenerationForAssets_hiddenAssets_updatedAssetIDsForHighlights_updatedMomentIDsForHighlights_affectedMoments_highlightsWithDeletedMoments_sharedAssetContainerIncrementalChanges_insertedOrUpdatedMoments___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v45 = a1;
  v6 = [*(a1 + 32) assetWithUniqueID:a2 error:0];
  if (![v5 hasSharingOrSuggestionChanges] || objc_msgSend(v5, "collectionChangeType") || (objc_msgSend(v5, "highlightContainerChanges"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v42 = v6;
    v9 = [MEMORY[0x1E695DFA8] set];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [v5 highlightContainerChanges];
    v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    if (v46)
    {
      v44 = *v48;
      while (2)
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v48 != v44)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          v12 = [v11 relationshipKey];
          v13 = [v12 isEqualToString:@"highlightBeingAssets"];

          v14 = @"assetsCount";
          if ((v13 & 1) == 0)
          {
            v15 = [v11 relationshipKey];
            v16 = [v15 isEqualToString:@"highlightBeingExtendedAssets"];

            v14 = @"extendedCount";
            if ((v16 & 1) == 0)
            {
              v17 = [v11 relationshipKey];
              v18 = [v17 isEqualToString:@"highlightBeingSummaryAssets"];

              v14 = @"summaryCount";
              if ((v18 & 1) == 0)
              {
                v19 = [v11 relationshipKey];
                v20 = [v19 isEqualToString:@"dayGroupHighlightBeingAssets"];

                v14 = @"dayGroupAssetsCount";
                if ((v20 & 1) == 0)
                {
                  v21 = [v11 relationshipKey];
                  v22 = [v21 isEqualToString:@"dayGroupHighlightBeingExtendedAssets"];

                  v14 = @"dayGroupExtendedAssetsCount";
                  if ((v22 & 1) == 0)
                  {
                    v23 = [v11 relationshipKey];
                    v24 = [v23 isEqualToString:@"dayGroupHighlightBeingSummaryAssets"];

                    v14 = @"dayGroupSummaryAssetsCount";
                    if ((v24 & 1) == 0)
                    {
                      v40 = PLMomentsGetLog();
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                      {
                        v41 = [v11 relationshipKey];
                        *buf = 138543362;
                        v52 = v41;
                        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_ERROR, "Unexpected relationship name: %{public}@", buf, 0xCu);
                      }

                      goto LABEL_39;
                    }
                  }
                }
              }
            }
          }

          v25 = [*(v45 + 32) managedObjectContext];
          v26 = [v25 persistentStoreCoordinator];
          v27 = [v11 sourceHighlightURI];
          v28 = [v26 managedObjectIDForURIRepresentation:v27];

          v29 = [v25 persistentStoreCoordinator];
          v30 = [v11 destinationHighlightURI];
          v31 = [v29 managedObjectIDForURIRepresentation:v30];

          v32 = [v5 sharingChange];
          v33 = [v5 suggestionStateChange];
          v34 = objc_alloc_init(PLSharedAssetsContainerIncrementalChange);
          v35 = v34;
          if (v32 == 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = 2;
          }

          [(PLSharedAssetsContainerIncrementalChange *)v34 setSharingChange:v36];
          if (v33 == 1)
          {
            v37 = 1;
          }

          else
          {
            v37 = 2;
          }

          [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:v37];
          -[PLSharedAssetsContainerIncrementalChange setMediaType:](v35, "setMediaType:", [v5 mediaType]);
          if (v31)
          {
            v38 = [v25 existingObjectWithID:v31 error:0];
            if (v38)
            {
              [(PLSharedAssetsContainerIncrementalChange *)v35 setCollectionChangeType:1];
              if ([v9 containsObject:v38])
              {
                [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:0];
              }

              [v38 reportSharedAssetContainerIncrementalChange:v35 forAllAssetsCountKey:v14];
              [v9 addObject:v38];
            }
          }

          if (v28)
          {
            v39 = [v25 existingObjectWithID:v28 error:0];
            if (v39)
            {
              [(PLSharedAssetsContainerIncrementalChange *)v35 setCollectionChangeType:2];
              if ([v9 containsObject:v39])
              {
                [(PLSharedAssetsContainerIncrementalChange *)v35 setSuggestionStateChange:0];
              }

              [v39 reportSharedAssetContainerIncrementalChange:v35 forAllAssetsCountKey:v14];
              [v9 addObject:v39];
            }
          }
        }

        v46 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        if (v46)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:

    v6 = v42;
  }

  else
  {
    [v6 reportSharedAssetIncrementalChange:v5];
  }
}

- (id)_highlightGenerator
{
  v3 = MEMORY[0x1E69BF2A0];
  v4 = [(PLPhotoLibraryBundle *)self->_libraryBundle libraryServicesManager];
  LODWORD(v3) = [v3 shouldProcessHighlightsForWellKnownPhotoLibraryIdentifier:{objc_msgSend(v4, "wellKnownPhotoLibraryIdentifier")}];

  if (v3)
  {
    v5 = [(PLMomentGeneration *)self localCreationDateCreator];
    v6 = [(PLMomentGeneration *)self frequentLocationManager];
    v7 = [PLPhotosHighlightGenerator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v9 = [(PLPhotosHighlightGenerator *)v7 initWithDataManager:WeakRetained frequentLocationManager:v6 localCreationDateCreator:v5 dateRangeTitleGenerator:self->_dateRangeTitleGenerator];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newFrequentLocationManager
{
  v3 = [PLFrequentLocationManager alloc];
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v5 = [(PLFrequentLocationManager *)v3 initWithMomentGenerationDataManager:WeakRetained];

  v6 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v7 = [v6 cameraIsActive];

  if (v7)
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v10 = [v8 dateByAddingTimeInterval:-15724800.0];
    v11 = [v9 momentsBetweenDate:v10 andDate:v8 sorted:1 excludeExternal:1];
  }

  else
  {
    v12 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v17 = 0;
    v11 = [v12 allMomentsWithError:&v17];
    v13 = v17;
  }

  v14 = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v15 = [objc_opt_class() processingMomentsFromMoments:v11];

  [(PLFrequentLocationManager *)v5 frequentLocationsDidChangeFromUpdateWithMoments:v15];
  return v5;
}

- (id)newLocalCreationDateCreator
{
  v3 = [PLLocalCreationDateCreator alloc];
  v4 = [(PLPhotoLibraryBundle *)self->_libraryBundle timeZoneLookup];
  v5 = [(PLLocalCreationDateCreator *)v3 initWithTimeZoneLookup:v4];

  return v5;
}

- (void)_runIncrementalGenerationPassWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(PLMomentGeneration *)self momentGenerationDataManager];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__108963;
  v49[4] = __Block_byref_object_dispose__108964;
  v50 = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = [v6 hardGenerationBatchSizeLimit];
  v7 = PLMomentGenerationGetLog();
  v8 = os_signpost_id_generate(v7);
  info = 0;
  mach_timebase_info(&info);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "IncrementalMomentGeneration", "", buf, 2u);
  }

  v11 = mach_absolute_time();
  *buf = 0;
  v42 = buf;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__108963;
  v45 = __Block_byref_object_dispose__108964;
  v12 = v10;
  v46 = v12;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = os_signpost_id_generate(v12);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2810000000;
  v39[3] = &unk_19C721442;
  v39[4] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke;
  v27[3] = &unk_1E75769B0;
  v28 = v12;
  v29 = self;
  v31 = v48;
  v13 = v6;
  v36 = v38;
  v37 = a2;
  v30 = v13;
  v32 = v49;
  v33 = v39;
  v34 = buf;
  v35 = v40;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_77;
  v16[3] = &unk_1E75769D8;
  v19 = v49;
  v20 = v38;
  v21 = v39;
  v22 = buf;
  v23 = v40;
  v24 = v11;
  v26 = info;
  v14 = v28;
  v17 = v14;
  v25 = v8;
  v15 = v5;
  v18 = v15;
  [v13 performDataTransaction:v27 synchronously:0 completionHandler:v16];

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke(uint64_t a1)
{
  v256 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = os_signpost_id_generate(v2);
  info = 0;
  mach_timebase_info(&info);
  v4 = v2;
  v5 = v4;
  v152 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "CollectAffectedAssetsAndMoments", "", buf, 2u);
  }

  spid = v3;
  v156 = v5;

  v150 = mach_absolute_time();
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  v11 = *(a1 + 40);
  v234[1] = MEMORY[0x1E69E9820];
  v234[2] = 3221225472;
  v234[3] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_49;
  v234[4] = &unk_1E7576968;
  v234[5] = v11;
  v160 = v7;
  v235 = v160;
  v12 = v8;
  v13 = *(a1 + 56);
  v159 = v12;
  v236 = v12;
  v240 = v13;
  v14 = v6;
  v237 = v14;
  v157 = v9;
  v238 = v157;
  v158 = v10;
  v239 = v158;
  pl_dispatch_sync();
  if ([*(a1 + 48) hasChanges])
  {
    v15 = *(a1 + 48);
    v234[0] = 0;
    v16 = [v15 save:v234];
    v17 = v234[0];
    if ((v16 & 1) == 0)
    {
      v18 = PLMomentsGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v17 userInfo];
        *buf = 138412546;
        v251 = v17;
        v252 = 2112;
        *v253 = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "[MomentsGeneration] Error saving changes, error: %@, userInfo: %@", buf, 0x16u);
      }
    }
  }

  v20 = [MEMORY[0x1E695DF70] array];
  v21 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 48) assetsWithUniqueIDs:v14 error:0];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v22 = v233 = 0u;
  v23 = [v22 countByEnumeratingWithState:&v230 objects:v255 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v231;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v231 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v230 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        if (v27 && ([v27 isDeleted] & 1) == 0)
        {
          if ([v27 visibilityStateIsEqualToState:0])
          {
            v29 = v20;
          }

          else
          {
            v29 = v21;
          }

          [v29 addObject:v27];
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [v22 countByEnumeratingWithState:&v230 objects:v255 count:16];
    }

    while (v24);
  }

  v153 = v22;
  v154 = v14;

  if ([*(a1 + 48) wantsMomentReplayLogging])
  {
    [*(a1 + 40) _appendAssetsToReplayLog:v20 forBatchUpdate:1];
  }

  v162 = v20;
  v179 = a1;
  v30 = [MEMORY[0x1E695DFA8] set];
  v31 = [MEMORY[0x1E695DFA8] set];
  v171 = [MEMORY[0x1E695DFA8] set];
  v166 = [MEMORY[0x1E695DFA8] set];
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v32 = v21;
  v33 = [v32 countByEnumeratingWithState:&v226 objects:v254 count:16];
  v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
  v164 = v32;
  if (!v33)
  {
    v165 = 0;
    v161 = 0;
    v60 = v32;
    goto LABEL_57;
  }

  v35 = v33;
  v165 = 0;
  v161 = 0;
  v163 = 0;
  v36 = *v227;
  v186 = *v227;
  do
  {
    for (j = 0; j != v35; ++j)
    {
      if (*v227 != v36)
      {
        objc_enumerationMutation(v32);
      }

      v38 = *(*(&v226 + 1) + 8 * j);
      v39 = objc_autoreleasePoolPush();
      v40 = [v38 moment];
      v41 = v40;
      if (v40 && ([v40 isDeleted] & 1) == 0)
      {
        if ([v38 visibilityStateIsEqualToState:2])
        {
          v42 = [v38 globalUUID];
          if (v42)
          {
            v43 = v42;
            v44 = v165;
            if (!v165)
            {
              v44 = [*(v179 + 40) _newPublicGlobalUUIDsToAssetsMappingWithAssets:v162];
            }

            v165 = v44;
            context = [v44 objectForKey:v43];
            if (context)
            {
              v45 = [v41 assets];
              v46 = [v45 containsObject:v38];

              v36 = v186;
              if (v46)
              {
                if ([*(v179 + 40) _isAsset:v38 identicalToAssetForMoments:context])
                {
                  v47 = PLMomentsGetLog();
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    v182 = [v38 uniqueObjectID];
                    objb = [context uniqueObjectID];
                    v48 = [v41 uniqueObjectID];
                    *buf = 138412802;
                    v251 = v182;
                    v252 = 2112;
                    *v253 = objb;
                    *&v253[8] = 2112;
                    *&v253[10] = v48;
                    v49 = v48;
                    v173 = v48;
                    _os_log_impl(&dword_19BF1F000, v47, OS_LOG_TYPE_DEBUG, "Asset %@ was replaced by %@ in moment %@", buf, 0x20u);
                  }

                  v183 = [v38 reverseLocationDataIsValid];
                  v50 = [v38 reverseLocationData];
                  [context setReverseLocationDataIsValid:v183];
                  v184 = v50;
                  [context setReverseLocationData:v50];
                  [v41 removeAssetData:v38];
                  [v41 insertAssetData:context];
                  [context setMoment:v41];
                  [v165 removeObjectForKey:v43];
                  v51 = v163;
                  if (!v163)
                  {
                    v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  }

                  v163 = v51;
                  v52 = v161;
                  if (!v161)
                  {
                    v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  }

                  v53 = [v38 uniqueObjectID];
                  v161 = v52;
                  [v52 addObject:v53];

                  [v163 addObject:context];
                  v32 = v164;
                  v36 = v186;
LABEL_49:

                  [v38 setMoment:0];
                  goto LABEL_50;
                }
              }
            }

            v32 = v164;
          }
        }

        [v30 addObject:v41];
        [v166 addObject:v41];
        [v41 removeAssetData:v38];
        v43 = [v41 assets];
        if (![v43 count])
        {
          [v31 addObject:v41];
        }

        goto LABEL_49;
      }

LABEL_50:

      objc_autoreleasePoolPop(v39);
    }

    v35 = [v32 countByEnumeratingWithState:&v226 objects:v254 count:16];
  }

  while (v35);

  if (!v163)
  {
    if (!v161)
    {
      v161 = 0;
      v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
      goto LABEL_60;
    }

    v60 = [MEMORY[0x1E696AAA8] currentHandler];
    [v60 handleFailureInMethod:*(v179 + 104) object:*(v179 + 40) file:@"PLMomentGeneration.m" lineNumber:587 description:@"Should not have switched deleted assets without switching some inserted asset"];
    v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
LABEL_57:

LABEL_60:
    v56 = v162;
    v59 = v157;
    v163 = 0;
    goto LABEL_61;
  }

  v54 = [v161 count];
  if (v54 != [v163 count])
  {
    v148 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = v164;
    [v148 handleFailureInMethod:*(v179 + 104) object:*(v179 + 40) file:@"PLMomentGeneration.m" lineNumber:574 description:{@"Number of switched deleted assets (%lu) does not match the number of switched inserted assets (%lu)", objc_msgSend(v161, "count"), objc_msgSend(v163, "count"), spid}];
  }

  v55 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v162];
  [v55 minusSet:v163];
  v56 = [v55 allObjects];
  v57 = [v157 mutableCopy];
  [v57 removeObjectsForKeys:v161];
  v58 = v57;

  v59 = v58;
  v34 = "PLBackgroundJobAssetResourceUploadJobWorkerError";
LABEL_61:
  if (![v59 count] && !objc_msgSend(v56, "count") && !objc_msgSend(v31, "count") && !objc_msgSend(v30, "count") && !objc_msgSend(v160, "count") && !objc_msgSend(v159, "count") && !objc_msgSend(v158, "count"))
  {
    goto LABEL_167;
  }

  v155 = v59;
  v61 = [MEMORY[0x1E695DFA8] set];
  v172 = [MEMORY[0x1E695DF70] array];
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v151 = v56;
  obj = v56;
  v62 = [obj countByEnumeratingWithState:&v222 objects:v249 count:16];
  if (!v62)
  {
    goto LABEL_97;
  }

  v63 = v62;
  v64 = *v223;
  v169 = *(v34 + 84);
  v174 = *v223;
  while (2)
  {
    v65 = 0;
    while (2)
    {
      if (*v223 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v66 = *(*(&v222 + 1) + 8 * v65);
      v67 = objc_autoreleasePoolPush();
      v68 = [v66 dateCreated];
      if ([v66 isDeleted])
      {
        if (v68)
        {
          v187 = v67;
          v69 = [v66 moment];
          if (v69)
          {
            [v30 addObject:v69];
            [v166 addObject:v69];
            [v69 removeAssetData:v66];
            [v66 setMoment:0];
          }

LABEL_79:
          contexta = v68;
          [v172 addObject:v68];
          v70 = [v66 highlightBeingAssets];
          v71 = v70;
          if (v70)
          {
            v72 = [v70 startDate];
            v73 = [v71 endDate];
            if (v72)
            {
              [v172 addObject:v72];
            }

            if (v73)
            {
              [v172 addObject:v73];
            }
          }

          goto LABEL_85;
        }
      }

      else
      {
        v187 = v67;
        if (v68)
        {
          goto LABEL_79;
        }

        contexta = 0;
        v71 = PLMomentsGetLog();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v81 = [v66 isDeleted];
          v82 = *(v179 + 48);
          *buf = v169;
          v251 = v66;
          v252 = 1024;
          *v253 = v81;
          *&v253[4] = 2048;
          *&v253[6] = v82;
          _os_log_impl(&dword_19BF1F000, v71, OS_LOG_TYPE_ERROR, "Missing dateCreated?! %@ isDeleted %d manager %p", buf, 0x1Cu);
        }

LABEL_85:

        v74 = [v66 moment];
        v75 = [v66 highlightBeingAssets];
        v76 = v75;
        if (v74 && v75)
        {
          v77 = [v74 startDate];
          v180 = [contexta compare:v77];

          [v74 endDate];
          v79 = v78 = v63;
          v80 = [contexta compare:v79];

          v63 = v78;
          v64 = v174;
          if (v180 == -1 || v80 == 1)
          {
            [v61 addObject:v66];
            [v30 addObject:v74];
            [v74 removeAssetData:v66];
            [v66 setMoment:0];
          }
        }

        else
        {
          [v61 addObject:v66];
        }

        v67 = v187;
        v68 = contexta;
      }

      objc_autoreleasePoolPop(v67);
      if (v63 != ++v65)
      {
        continue;
      }

      break;
    }

    v83 = [obj countByEnumeratingWithState:&v222 objects:v249 count:16];
    v63 = v83;
    if (v83)
    {
      continue;
    }

    break;
  }

LABEL_97:

  v220 = 0u;
  v221 = 0u;
  v218 = 0u;
  v219 = 0u;
  v84 = v155;
  v85 = [v84 countByEnumeratingWithState:&v218 objects:v248 count:16];
  if (v85)
  {
    v86 = v85;
    v87 = *v219;
    do
    {
      for (k = 0; k != v86; ++k)
      {
        if (*v219 != v87)
        {
          objc_enumerationMutation(v84);
        }

        v89 = [v84 objectForKeyedSubscript:*(*(&v218 + 1) + 8 * k)];
        v90 = [v89 objectForKeyedSubscript:@"dateCreated"];
        if (v90)
        {
          [v172 addObject:v90];
        }
      }

      v86 = [v84 countByEnumeratingWithState:&v218 objects:v248 count:16];
    }

    while (v86);
  }

  [v172 sortUsingSelector:sel_compare_];
  [objc_opt_class() dateIntervalsAroundSortedDates:v172 minimumIntervalDuration:115200.0];
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v167 = v217 = 0u;
  v170 = [v167 countByEnumeratingWithState:&v214 objects:v247 count:16];
  if (v170)
  {
    v168 = *v215;
    do
    {
      v91 = 0;
      do
      {
        if (*v215 != v168)
        {
          objc_enumerationMutation(v167);
        }

        v175 = *(*(&v214 + 1) + 8 * v91);
        obja = v91;
        v92 = [*(v179 + 48) highlightsIntersectingDateInterval:? ofKind:?];
        v210 = 0u;
        v211 = 0u;
        v212 = 0u;
        v213 = 0u;
        v181 = v92;
        v188 = [v181 countByEnumeratingWithState:&v210 objects:v246 count:16];
        if (v188)
        {
          v185 = *v211;
          do
          {
            for (m = 0; m != v188; ++m)
            {
              if (*v211 != v185)
              {
                objc_enumerationMutation(v181);
              }

              v94 = *(*(&v210 + 1) + 8 * m);
              contextb = objc_autoreleasePoolPush();
              v95 = [v94 moments];
              v206 = 0u;
              v207 = 0u;
              v208 = 0u;
              v209 = 0u;
              v96 = v95;
              v97 = [v96 countByEnumeratingWithState:&v206 objects:v245 count:16];
              if (v97)
              {
                v98 = v97;
                v99 = *v207;
                do
                {
                  for (n = 0; n != v98; ++n)
                  {
                    if (*v207 != v99)
                    {
                      objc_enumerationMutation(v96);
                    }

                    v101 = *(*(&v206 + 1) + 8 * n);
                    [v30 addObject:v101];
                    v102 = [v101 assets];
                    if ([v102 count])
                    {
                      [v61 unionSet:v102];
                    }

                    else
                    {
                      [v31 addObject:v101];
                    }
                  }

                  v98 = [v96 countByEnumeratingWithState:&v206 objects:v245 count:16];
                }

                while (v98);
              }

              objc_autoreleasePoolPop(contextb);
            }

            v188 = [v181 countByEnumeratingWithState:&v210 objects:v246 count:16];
          }

          while (v188);
        }

        v103 = [*(v179 + 48) momentsIntersectingDateInterval:v175];
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v205 = 0u;
        v104 = v103;
        v105 = [v104 countByEnumeratingWithState:&v202 objects:v244 count:16];
        if (v105)
        {
          v106 = v105;
          v107 = *v203;
          do
          {
            for (ii = 0; ii != v106; ++ii)
            {
              if (*v203 != v107)
              {
                objc_enumerationMutation(v104);
              }

              v109 = *(*(&v202 + 1) + 8 * ii);
              v110 = objc_autoreleasePoolPush();
              [v30 addObject:v109];
              v111 = [v109 assets];
              if ([v111 count])
              {
                [v61 unionSet:v111];
              }

              else
              {
                [v31 addObject:v109];
              }

              objc_autoreleasePoolPop(v110);
            }

            v106 = [v104 countByEnumeratingWithState:&v202 objects:v244 count:16];
          }

          while (v106);
        }

        v91 = obja + 1;
      }

      while (obja + 1 != v170);
      v170 = [v167 countByEnumeratingWithState:&v214 objects:v247 count:16];
    }

    while (v170);
  }

  v200 = 0u;
  v201 = 0u;
  v198 = 0u;
  v199 = 0u;
  v112 = v31;
  v113 = [v112 countByEnumeratingWithState:&v198 objects:v243 count:16];
  if (v113)
  {
    v114 = v113;
    v115 = *v199;
    do
    {
      for (jj = 0; jj != v114; ++jj)
      {
        if (*v199 != v115)
        {
          objc_enumerationMutation(v112);
        }

        v117 = *(*(&v198 + 1) + 8 * jj);
        v118 = [v117 highlight];
        v119 = [v118 parentDayGroupPhotosHighlight];
        if (v118)
        {
          [v171 addObject:v118];
        }

        if (v119)
        {
          [v171 addObject:v119];
        }

        [v117 delete];
      }

      v114 = [v112 countByEnumeratingWithState:&v198 objects:v243 count:16];
    }

    while (v114);
  }

  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v120 = v166;
  v121 = [v120 countByEnumeratingWithState:&v194 objects:v242 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = *v195;
    do
    {
      for (kk = 0; kk != v122; ++kk)
      {
        if (*v195 != v123)
        {
          objc_enumerationMutation(v120);
        }

        v125 = [*(*(&v194 + 1) + 8 * kk) assets];
        [v61 unionSet:v125];
      }

      v122 = [v120 countByEnumeratingWithState:&v194 objects:v242 count:16];
    }

    while (v122);
  }

  v126 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v129 = v156;
  v130 = v129;
  if (v152 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v129))
  {
    v131 = [v61 count];
    v132 = [v30 count];
    *buf = 134218240;
    v251 = v131;
    v252 = 2048;
    *v253 = v132;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v130, OS_SIGNPOST_INTERVAL_END, spid, "CollectAffectedAssetsAndMoments", "affectedAssets: %lu, affectedMoments %lu", buf, 0x16u);
  }

  v133 = v130;
  if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
  {
    v134 = (((v126 - v150) * numer) / denom) / 1000000.0;
    v135 = [MEMORY[0x1E696AEC0] stringWithFormat:@"affectedAssets: %lu, affectedMoments %lu", objc_msgSend(v61, "count"), objc_msgSend(v30, "count")];
    *buf = 136315650;
    v251 = "CollectAffectedAssetsAndMoments";
    v252 = 2112;
    *v253 = v135;
    *&v253[8] = 2048;
    *&v253[10] = v134;
    _os_log_impl(&dword_19BF1F000, v133, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v136 = [v61 _pl_map:&__block_literal_global_109315];
  v137 = *(v179 + 48);
  v138 = [v136 allObjects];
  v193 = 0;
  v139 = [v137 prefetchedAssetsWithUniqueIDs:v138 error:&v193];
  v140 = v193;

  v141 = *(v179 + 40);
  v142 = [MEMORY[0x1E695DFD8] setWithArray:v139];
  v192 = 0;
  [v141 _runMomentAndHighlightGenerationForAssets:v142 hiddenAssets:v164 updatedAssetIDsForHighlights:v160 updatedMomentIDsForHighlights:v159 affectedMoments:v30 highlightsWithDeletedMoments:v171 sharedAssetContainerIncrementalChanges:v158 insertedOrUpdatedMoments:&v192];
  v143 = v192;
  v144 = v192;

  objc_storeStrong((*(*(v179 + 64) + 8) + 40), v143);
  mach_timebase_info((*(*(v179 + 72) + 8) + 32));
  v145 = *(*(*(v179 + 80) + 8) + 40);
  v146 = v145;
  v147 = *(*(*(v179 + 88) + 8) + 24);
  if (v147 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v145))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v146, OS_SIGNPOST_INTERVAL_BEGIN, v147, "ExecuteLibraryBatchTransaction", "", buf, 2u);
  }

  *(*(*(v179 + 96) + 8) + 24) = mach_absolute_time();
  v32 = v164;
  v56 = v151;
  v59 = v155;
LABEL_167:
}

uint64_t __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_77(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 48) + 8) + 40) count];
  v3 = mach_absolute_time();
  v4 = *(*(*(a1 + 56) + 8) + 24);
  v5 = *(*(a1 + 64) + 8);
  v7 = *(v5 + 32);
  v6 = *(v5 + 36);
  v8 = *(*(*(a1 + 72) + 8) + 40);
  v9 = v8;
  v10 = *(*(*(a1 + 80) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v10, "ExecuteLibraryBatchTransaction", "", buf, 2u);
  }

  v11 = *(*(*(a1 + 72) + 8) + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "ExecuteLibraryBatchTransaction";
    v27 = 2048;
    v28 = ((((v3 - v4) * v7) / v6) / 1000000.0);
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v12 = mach_absolute_time();
  v13 = *(a1 + 88);
  v15 = *(a1 + 104);
  v14 = *(a1 + 108);
  v16 = *(a1 + 32);
  v17 = v16;
  v18 = *(a1 + 96);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 134217984;
    v26 = v2;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "IncrementalMomentGeneration", "updatedMoments: %lu", buf, 0xCu);
  }

  v19 = *(a1 + 32);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = (((v12 - v13) * v15) / v14) / 1000000.0;
    v21 = MEMORY[0x1E696AEC0];
    v22 = v19;
    v23 = [v21 stringWithFormat:@"updatedMoments: %lu", v2];
    *buf = 136315650;
    v26 = "IncrementalMomentGeneration";
    v27 = 2112;
    v28 = *&v23;
    v29 = 2048;
    v30 = v20;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_49(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 32) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(v3 + 16) set];
    v7 = [v5 setWithSet:v6];
    [v4 minusSet:v7];

    v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(*(*(a1 + 32) + 24), "count")}];
    v9 = *(*(a1 + 32) + 24);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_2;
    v58[3] = &unk_1E75768F0;
    v59 = v8;
    v10 = v8;
    [v9 enumerateKeysAndObjectsUsingBlock:v58];
    [*(*(a1 + 32) + 32) minusSet:v10];

    objc_autoreleasePoolPop(v2);
  }

  v11 = *(a1 + 40);
  v12 = [*(*(a1 + 32) + 32) array];
  [v11 addObjectsFromArray:v12];

  [*(*(a1 + 32) + 32) removeAllObjects];
  v13 = *(a1 + 48);
  v14 = [*(*(a1 + 32) + 40) array];
  [v13 addObjectsFromArray:v14];

  [*(*(a1 + 32) + 40) removeAllObjects];
  if (*(*(*(a1 + 80) + 8) + 24) && [*(*(a1 + 32) + 16) count] > *(*(*(a1 + 80) + 8) + 24))
  {
    v15 = [*(*(a1 + 32) + 16) count];
    v16 = *(*(*(a1 + 80) + 8) + 24);
    v17 = v15 - v16;
    v18 = [MEMORY[0x1E695DFB8] orderedSetWithOrderedSet:*(*(a1 + 32) + 16) range:v15 - v16 copyItems:{v16, 0}];
    [*(*(a1 + 32) + 16) removeObjectsInRange:{v17, v16}];
    v19 = *(a1 + 56);
    v20 = [v18 array];
    [v19 addObjectsFromArray:v20];
  }

  else
  {
    v21 = *(a1 + 56);
    v22 = [*(*(a1 + 32) + 16) array];
    [v21 addObjectsFromArray:v22];

    [*(*(a1 + 32) + 16) removeAllObjects];
  }

  if (*(*(*(a1 + 80) + 8) + 24) && [*(*(a1 + 32) + 24) count] > *(*(*(a1 + 80) + 8) + 24))
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v62 = 0;
    v23 = [MEMORY[0x1E695DF70] arrayWithCapacity:?];
    v24 = *(*(a1 + 32) + 24);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_3;
    v53[3] = &unk_1E7576918;
    v54 = *(a1 + 64);
    v25 = v23;
    v55 = v25;
    v56 = buf;
    v57 = *(a1 + 80);
    [v24 enumerateKeysAndObjectsUsingBlock:v53];
    [*(*(a1 + 32) + 24) removeObjectsForKeys:v25];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [*(a1 + 64) setDictionary:*(*(a1 + 32) + 24)];
    [*(*(a1 + 32) + 24) removeAllObjects];
  }

  v26 = [*(a1 + 56) count];
  *(*(a1 + 32) + 8) = [*(a1 + 64) count] + v26;
  v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v28 = *(a1 + 56);
  v29 = [v28 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v29)
  {
    v30 = *v50;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v50 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v49 + 1) + 8 * i);
        v33 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:v32];
        v34 = v33;
        if (v33)
        {
          if (([v33 hasChangesAffectingSharingComposition] & 1) == 0 && objc_msgSend(v34, "hasNoOtherAssetChangesRequiringMomentGeneration"))
          {
            [v27 addObject:v32];
          }

          [*(a1 + 72) setObject:v34 forKeyedSubscript:v32];
          [*(*(a1 + 32) + 48) removeObjectForKey:v32];
        }
      }

      v29 = [v28 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v29);
  }

  [*(a1 + 56) removeObjectsInArray:v27];
  if (![*(a1 + 72) count] && objc_msgSend(*(*(a1 + 32) + 48), "count"))
  {
    v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = *(*(a1 + 32) + 48);
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_4;
    v45[3] = &unk_1E7576940;
    v46 = *(a1 + 72);
    v47 = v35;
    v48 = *(a1 + 80);
    v37 = v35;
    [v36 enumerateKeysAndObjectsUsingBlock:v45];
    [*(*(a1 + 32) + 48) removeObjectsForKeys:v37];
  }

  if ([*(*(a1 + 32) + 48) count] || objc_msgSend(*(a1 + 72), "count"))
  {
    v38 = PLMomentsGetLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [*(a1 + 72) count];
      v40 = [*(*(a1 + 32) + 48) count];
      *buf = 134218240;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = v40;
      _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Identified %lu shared asset container changes for current batch. %lu remain", buf, 0x16u);
    }
  }

  v41 = PLMomentsGetLog();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = *(a1 + 32);
    v43 = *(v42 + 8);
    v44 = [*(v42 + 16) count];
    *buf = 134218240;
    *&buf[4] = v43;
    *&buf[12] = 2048;
    *&buf[14] = v44;
    _os_log_impl(&dword_19BF1F000, v41, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Beginning moment generation pass with %lu changes. %lu remain", buf, 0x16u);
  }
}

void __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 setObject:a3 forKey:v8];
  [*(a1 + 40) addObject:v8];

  if (++*(*(*(a1 + 48) + 8) + 24) >= *(*(*(a1 + 56) + 8) + 24))
  {
    *a4 = 1;
  }
}

unint64_t __73__PLMomentGeneration__runIncrementalGenerationPassWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v7 setObject:a3 forKeyedSubscript:v8];
  [*(a1 + 40) addObject:v8];

  result = [*(a1 + 32) count];
  if (result >= *(*(*(a1 + 48) + 8) + 24))
  {
    *a4 = 1;
  }

  return result;
}

- (void)generateWithIncrementalDataCompletionHandler:(id)a3
{
  v4 = a3;
  if (PLPlatformMomentsSupported())
  {
    if (v4)
    {
      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __67__PLMomentGeneration_generateWithIncrementalDataCompletionHandler___block_invoke;
      v10 = &unk_1E7577C08;
      v11 = self;
      v12 = v4;
      pl_dispatch_sync();
    }

    [(PLMomentGeneration *)self _updateIncrementalMomentGeneration:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v6 = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

void __67__PLMomentGeneration_generateWithIncrementalDataCompletionHandler___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 40) copy];
  v2 = *(*(a1 + 32) + 56);
  v3 = _Block_copy(v4);
  [v2 addObject:v3];
}

- (void)generateWithAssetInsertsAndUpdates:(id)a3 assetDeletes:(id)a4 assetUpdatesForHighlights:(id)a5 momentUpdatesForHighlights:(id)a6 completionHandler:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (PLPlatformMomentsSupported() && ([v18 count] || objc_msgSend(v12, "count") || objc_msgSend(v13, "count") || objc_msgSend(v14, "count")))
  {
    [(PLMomentGeneration *)self saveChangesForAssetInsertsAndUpdates:v18 assetDeletes:v12 assetUpdatesForHighlights:v13 momentUpdatesForHighlights:v14 sharedAssetContainerIncrementalChangesByAssetID:0];
    [(PLMomentGeneration *)self generateWithIncrementalDataCompletionHandler:v15];
  }

  else if (v15)
  {
    WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
    v17 = [WeakRetained isolationQueue];
    pl_dispatch_async();
  }
}

- (void)saveChangesForAssetInsertsAndUpdates:(id)a3 assetDeletes:(id)a4 assetUpdatesForHighlights:(id)a5 momentUpdatesForHighlights:(id)a6 sharedAssetContainerIncrementalChangesByAssetID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (PLPlatformMomentsSupported() && ([v11 count] || objc_msgSend(v12, "count") || objc_msgSend(v13, "count") || objc_msgSend(v14, "count")))
  {
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    pl_dispatch_sync();
  }
}

uint64_t __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke(void *a1)
{
  [*(a1[4] + 16) addObjectsFromArray:a1[5]];
  [*(a1[4] + 24) addEntriesFromDictionary:a1[6]];
  [*(a1[4] + 32) addObjectsFromArray:a1[7]];
  [*(a1[4] + 40) addObjectsFromArray:a1[8]];
  v2 = a1[9];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke_2;
  v4[3] = &unk_1E7578478;
  v4[4] = a1[4];
  return [v2 enumerateKeysAndObjectsUsingBlock:v4];
}

void __173__PLMomentGeneration_saveChangesForAssetInsertsAndUpdates_assetDeletes_assetUpdatesForHighlights_momentUpdatesForHighlights_sharedAssetContainerIncrementalChangesByAssetID___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(a1 + 32) + 48);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v9];
  v8 = v7;
  if (v7)
  {
    [v7 mergeChangesFrom:v6];
  }

  else
  {
    [*(*(a1 + 32) + 48) setObject:v6 forKeyedSubscript:v9];
  }
}

- (BOOL)_isAsset:(id)a3 identicalToAssetForMoments:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 dateCreated];
  v8 = [v6 dateCreated];
  v9 = v8;
  if (v7)
  {
    if (v8 && ([v7 isEqual:v8] & 1) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  if (v8)
  {
    goto LABEL_9;
  }

LABEL_4:
  v10 = [v5 location];
  v11 = [v6 location];
  v12 = v11;
  v13 = (v10 | v11) == 0;
  if (v10 && v11)
  {
    [v10 coordinate];
    v15 = v14;
    [v12 coordinate];
    if (v15 == v16)
    {
      [v10 coordinate];
      v18 = v17;
      [v12 coordinate];
      v13 = v18 == v19;
    }

    else
    {
      v13 = 0;
    }
  }

LABEL_12:
  return v13;
}

- (id)_newPublicGlobalUUIDsToAssetsMappingWithAssets:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [v10 moment];

        v11 = [v10 globalUUID];
        if (v11)
        {
          [v4 setObject:v10 forKey:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_runIncrementalMomentGenerationIfItemsArePendingWithCompletion:(id)a3
{
  v4 = a3;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__108963;
  v29[4] = __Block_byref_object_dispose__108964;
  v30 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  obj = 0;
  v5 = [(PLMomentGeneration *)self _hasWorkWorkRemainingWithCompletionBlocks:&obj];
  objc_storeStrong(&v30, obj);
  v28 = v5;
  v6 = self->_incrementalMomentGenThrottle;
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  v8 = [WeakRetained isolationQueue];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke;
  aBlock[3] = &unk_1E7578910;
  v23 = v29;
  v9 = v8;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (*(v26 + 24) == 1)
  {
    v12 = objc_autoreleasePoolPush();
    Current = CFAbsoluteTimeGetCurrent();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_3;
    v14[3] = &unk_1E75768A0;
    v20 = Current;
    v18 = &v25;
    v14[4] = self;
    v19 = v29;
    v15 = v6;
    v16 = v11;
    v17 = v4;
    [(PLMomentGeneration *)self _runIncrementalGenerationPassWithCompletionHandler:v14];

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    (*(v10 + 2))(v10);
    v4[2](v4);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);
}

uint64_t __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return pl_dispatch_async();
  }

  return result;
}

uint64_t __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLMomentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 80);
    *buf = 134217984;
    v10 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "[MomentsGeneration] Moment generation pass completed in %.2f s", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v4 _hasWorkWorkRemainingWithCompletionBlocks:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 64) + 8) + 24) = v6;
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    [*(a1 + 40) update];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  return (*(*(a1 + 56) + 16))();
}

void __85__PLMomentGeneration__runIncrementalMomentGenerationIfItemsArePendingWithCompletion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)releaseMemoryIntensiveObjects
{
  [(PLLazyObject *)self->_lazyLocalCreationDateCreator resetObject];
  [(PLLazyObject *)self->_lazyFrequentLocationManager resetObject];
  WeakRetained = objc_loadWeakRetained(&self->_momentGenerationDataManager);
  [WeakRetained releaseMemoryIntensiveObjects];
}

- (BOOL)_hasWorkWorkRemainingWithCompletionBlocks:(id *)a3
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__108963;
  v14 = __Block_byref_object_dispose__108964;
  v15 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  pl_dispatch_sync();
  if (a3)
  {
    *a3 = v11[5];
  }

  v4 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  _Block_object_dispose(&v10, 8);

  return v4;
}

uint64_t __64__PLMomentGeneration__hasWorkWorkRemainingWithCompletionBlocks___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) count];
  v3 = [*(a1[4] + 24) count];
  v4 = [*(a1[4] + 32) count];
  v5 = [*(a1[4] + 40) count];
  result = [*(a1[4] + 48) count];
  *(*(a1[5] + 8) + 24) = (v2 | v3 | v4 | v5 | result) != 0;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v7 = [MEMORY[0x1E695DEC8] arrayWithArray:*(a1[4] + 56)];
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(a1[4] + 56) removeAllObjects];
    v10 = a1[4];

    return [v10 releaseMemoryIntensiveObjects];
  }

  return result;
}

- (PLMomentGeneration)initWithMomentGenerationDataManager:(id)a3 bundle:(id)a4 locale:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v49.receiver = self;
  v49.super_class = PLMomentGeneration;
  v11 = [(PLMomentGeneration *)&v49 init];
  if (PLPlatformMomentsSupported())
  {
    if (v11)
    {
      objc_storeWeak(&v11->_momentGenerationDataManager, v8);
      v12 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingInsertsAndUpdates = v11->_pendingInsertsAndUpdates;
      v11->_pendingInsertsAndUpdates = v12;

      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      pendingDeletes = v11->_pendingDeletes;
      v11->_pendingDeletes = v14;

      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      pendingCompletionBlocks = v11->_pendingCompletionBlocks;
      v11->_pendingCompletionBlocks = v16;

      v18 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingUpdatesForHighlights = v11->_pendingUpdatesForHighlights;
      v11->_pendingUpdatesForHighlights = v18;

      v20 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      pendingMomentUpdatesForHighlights = v11->_pendingMomentUpdatesForHighlights;
      v11->_pendingMomentUpdatesForHighlights = v20;

      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
      pendingSharedAssetContainerIncrementalChanges = v11->_pendingSharedAssetContainerIncrementalChanges;
      v11->_pendingSharedAssetContainerIncrementalChanges = v22;

      v24 = dispatch_queue_create("com.apple.moment.generation.pendingIsolation", 0);
      incrementalGenerationStateQueue = v11->_incrementalGenerationStateQueue;
      v11->_incrementalGenerationStateQueue = v24;

      objc_storeStrong(&v11->_libraryBundle, a4);
      if (v10)
      {
        v26 = [[PLDateRangeTitleGenerator alloc] initWithLocale:v10];
      }

      else
      {
        v26 = objc_alloc_init(PLDateRangeTitleGenerator);
      }

      dateRangeTitleGenerator = v11->_dateRangeTitleGenerator;
      v11->_dateRangeTitleGenerator = v26;

      v28 = objc_initWeak(&location, v11);
      v29 = objc_alloc(MEMORY[0x1E69BF270]);
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke;
      v46[3] = &unk_1E7576828;
      objc_copyWeak(&v47, &location);
      v30 = [v29 initWithRetriableBlock:v46];
      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
      lazyFrequentLocationManager = v11->_lazyFrequentLocationManager;
      v11->_lazyFrequentLocationManager = v30;

      v32 = objc_initWeak(&location, v11);
      v33 = objc_alloc(MEMORY[0x1E69BF270]);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_2;
      v44[3] = &unk_1E7576828;
      objc_copyWeak(&v45, &location);
      v34 = [v33 initWithRetriableBlock:v44];
      objc_destroyWeak(&v45);
      objc_destroyWeak(&location);
      lazyLocalCreationDateCreator = v11->_lazyLocalCreationDateCreator;
      v11->_lazyLocalCreationDateCreator = v34;

      objc_initWeak(&location, v11);
      v36 = [PLMomentGenerationThrottle alloc];
      v37 = [v8 isLightweightMigrationManager];
      v38 = [v8 isolationQueue];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_3;
      v42[3] = &unk_1E7576878;
      objc_copyWeak(&v43, &location);
      v39 = [(PLMomentGenerationThrottle *)v36 initWithName:@"MomentGeneration" canDelayAnyQOS:0 singleThreadedMode:v37 timeProvider:0 targetQueue:v38 target:v42];
      incrementalMomentGenThrottle = v11->_incrementalMomentGenThrottle;
      v11->_incrementalMomentGenThrottle = v39;

      objc_destroyWeak(&v43);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

id __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newFrequentLocationManager];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained newLocalCreationDateCreator];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_3(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_initWeak(&location, WeakRetained);
  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = @"MomentGeneration";
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "[MomentGenerationThrottle] %{public}@ executing target, waiting for completion...", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_44;
  v7[3] = &unk_1E7576850;
  objc_copyWeak(&v9, &location);
  v6 = v3;
  v8 = v6;
  [WeakRetained _runIncrementalMomentGenerationIfItemsArePendingWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __72__PLMomentGeneration_initWithMomentGenerationDataManager_bundle_locale___block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v3 = [WeakRetained[11] timeProvider];
    [v3 currentTime];
    v5 = v4;

    (*(*(a1 + 32) + 16))(v5);
    WeakRetained = v6;
  }
}

+ (id)dateIntervalsAroundSortedDates:(id)a3 minimumIntervalDuration:(double)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = a4 * 0.5;
    v27 = [MEMORY[0x1E695DF70] array];
    v8 = -(a4 * 0.5);
    v9 = [v6 dateByAddingTimeInterval:v8];
    v25 = v6;
    v10 = [v6 dateByAddingTimeInterval:v7];
    v11 = [v10 dateByAddingTimeInterval:v7];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v5;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        v16 = 0;
        v17 = v10;
        v18 = v11;
        do
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v28 + 1) + 8 * v16);
          if ([v18 compare:v19] == -1)
          {
            v20 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v17];
            [v27 addObject:v20];
            v21 = [v19 dateByAddingTimeInterval:v8];

            v9 = v21;
          }

          v10 = [v19 dateByAddingTimeInterval:v7];

          v11 = [v10 dateByAddingTimeInterval:v7];

          ++v16;
          v17 = v10;
          v18 = v11;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v22 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v9 endDate:v10];
    [v27 addObject:v22];
    v23 = v27;

    v5 = v26;
  }

  else
  {
    v23 = MEMORY[0x1E695E0F0];
  }

  return v23;
}

@end