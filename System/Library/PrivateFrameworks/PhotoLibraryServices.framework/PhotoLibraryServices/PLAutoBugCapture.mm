@interface PLAutoBugCapture
+ (BOOL)_shouldThrottleReportForType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5;
+ (id)_actionDictionaryWithLogArchive:(BOOL)a3 networkInfo:(BOOL)a4 crashAndSpinLogs:(BOOL)a5 diagnosticExtensions:(BOOL)a6;
+ (id)_bucketCountDescriptionForCount:(int64_t)a3 policy:(unint64_t)a4;
+ (id)_countEventWithName:(id)a3 result:(id)a4;
+ (id)_eventWithName:(id)a3 result:(id)a4;
+ (id)_eventWithName:(id)a3 result:(id)a4 count:(id)a5;
+ (id)_sThrottleLock_untilDates;
+ (void)_captureSnapshotWithType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5 subtypeContextModifier:(id)a6 triggerThresholdValues:(id)a7 events:(id)a8 actions:(id)a9 completion:(id)a10;
+ (void)_captureSpotlightClientHandlerReindexItemsWithCountDescription:(id)a3 reason:(id)a4 completion:(id)a5;
+ (void)_registerCompletedReportForType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5 success:(BOOL)a6;
+ (void)captureImageWriterInvalidLivePhotoMetadataWithStillDisplayTimeNotNumeric:(BOOL)a3 videoDurationIsNotNumeric:(BOOL)a4 photoIrisMediaGroupUUIDDoesNotMatch:(BOOL)a5 existingPhotoIrisMediaGroupUUIDIsMissing:(BOOL)a6 completion:(id)a7;
+ (void)captureSpotlightClientHandlerReindexItemsWithIdentifiers:(id)a3 reason:(id)a4 completion:(id)a5;
+ (void)captureSpotlightClientStateMissingSnapshotWithSpotlightAssetCountResult:(id)a3 spotlightError:(id)a4 searchIndexingEvents:(id)a5 completion:(id)a6;
@end

@implementation PLAutoBugCapture

+ (void)captureImageWriterInvalidLivePhotoMetadataWithStillDisplayTimeNotNumeric:(BOOL)a3 videoDurationIsNotNumeric:(BOOL)a4 photoIrisMediaGroupUUIDDoesNotMatch:(BOOL)a5 existingPhotoIrisMediaGroupUUIDIsMissing:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v32[1] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = v13;
  if (v7)
  {
    [v13 addObject:@"IdentifierMissing"];
    if (!v8)
    {
LABEL_3:
      if (!v10)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (!v8)
  {
    goto LABEL_3;
  }

  [v14 addObject:@"IdentifierDoesNotMatch"];
  if (!v10)
  {
LABEL_4:
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  [v14 addObject:@"ImageDisplayTimeNotNumeric"];
  if (v9)
  {
LABEL_5:
    [v14 addObject:@"VideoDurationNotNumeric"];
  }

LABEL_6:
  if ([v14 count])
  {
    v15 = [v14 componentsJoinedByString:@"|"];
    v16 = [a1 _actionDictionaryWithLogArchive:1 networkInfo:0 crashAndSpinLogs:1 diagnosticExtensions:1];
    [a1 _captureSnapshotWithType:@"ImageWriter" subType:@"InvalidLivePhotoMetadata" subtypeContextBase:v15 subtypeContextModifier:0 triggerThresholdValues:0 events:0 actions:v16 completion:v12];
  }

  else
  {
    v17 = MEMORY[0x1E69BF2D0];
    v18 = MEMORY[0x1E696ABC0];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v19 = getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_ptr;
    v30 = getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_ptr;
    if (!getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_ptr)
    {
      v20 = SymptomDiagnosticReporterLibrary();
      v28[3] = dlsym(v20, "kSymptomDiagnosticErrorInvalidParameters");
      getkSymptomDiagnosticErrorInvalidParametersSymbolLoc_ptr = v28[3];
      v19 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (!v19)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int getkSymptomDiagnosticErrorInvalidParameters(void)"];
      [v25 handleFailureInFunction:v26 file:@"PLAutoBugCapture.m" lineNumber:50 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v21 = *v19;
    v31 = *MEMORY[0x1E696A278];
    v32[0] = @"No invalid live photo metadata flags selected";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v23 = [v18 errorWithDomain:@"PLAutoBugCaptureErrorDomain" code:v21 userInfo:v22];
    v24 = [v17 failureWithError:v23];
    v12[2](v12, v24);
  }
}

+ (void)captureSpotlightClientHandlerReindexItemsWithIdentifiers:(id)a3 reason:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _bucketCountDescriptionForCount:objc_msgSend(a3 policy:{"count"), 1}];
  [a1 _captureSpotlightClientHandlerReindexItemsWithCountDescription:v10 reason:v9 completion:v8];
}

+ (void)_captureSpotlightClientHandlerReindexItemsWithCountDescription:(id)a3 reason:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (a4)
  {
    v9 = [@"SpotlightReindex" stringByAppendingFormat:@":%@", a4];
  }

  else
  {
    v9 = @"SpotlightReindex";
  }

  v10 = [a1 _actionDictionaryWithLogArchive:1 networkInfo:0 crashAndSpinLogs:1 diagnosticExtensions:1];
  [a1 _captureSnapshotWithType:@"Search" subType:v9 subtypeContextBase:@"ItemCount" subtypeContextModifier:v11 triggerThresholdValues:0 events:0 actions:v10 completion:v8];
}

+ (void)captureSpotlightClientStateMissingSnapshotWithSpotlightAssetCountResult:(id)a3 spotlightError:(id)a4 searchIndexingEvents:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29 = a6;
  if ([v10 isSuccess])
  {
    v13 = [v10 result];
    v14 = [v13 unsignedIntegerValue];

    v15 = [a1 _bucketCountDescriptionForCount:v14 policy:0];
    if (v11)
    {
LABEL_3:
      v16 = [v11 domain];
      v17 = -[__CFString stringByAppendingFormat:](v15, "stringByAppendingFormat:", @"(%@:%ld)", v16, [v11 code]);

      goto LABEL_6;
    }
  }

  else
  {
    v15 = @"Failed";
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v17 = v15;
LABEL_6:
  v28 = v15;
  v18 = [v12 sortedArrayUsingComparator:&__block_literal_global_109534];

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v20 = v18;
  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      v24 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v30 + 1) + 8 * v24) autoBugCaptureEventDictionary];
        [v19 addObject:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  v26 = [a1 _countEventWithName:@"SpotlightAssetCountQuery" result:v10];
  [v19 addObject:v26];

  v27 = [a1 _actionDictionaryWithLogArchive:1 networkInfo:0 crashAndSpinLogs:1 diagnosticExtensions:1];
  [a1 _captureSnapshotWithType:@"Search" subType:@"SpotlightClientStateMissing" subtypeContextBase:@"AssetCount" subtypeContextModifier:v17 triggerThresholdValues:0 events:v19 actions:v27 completion:v29];
}

uint64_t __139__PLAutoBugCapture_captureSpotlightClientStateMissingSnapshotWithSpotlightAssetCountResult_spotlightError_searchIndexingEvents_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

+ (void)_captureSnapshotWithType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5 subtypeContextModifier:(id)a6 triggerThresholdValues:(id)a7 events:(id)a8 actions:(id)a9 completion:(id)a10
{
  v63 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v44 = a7;
  v45 = a8;
  v46 = a9;
  v47 = a10;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:251 description:{@"Invalid parameter not satisfying: %@", @"subType"}];

    if (v19)
    {
      goto LABEL_4;
    }

    goto LABEL_22;
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:250 description:{@"Invalid parameter not satisfying: %@", @"type"}];

  if (!v18)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (v19)
  {
    goto LABEL_4;
  }

LABEL_22:
  v41 = [MEMORY[0x1E696AAA8] currentHandler];
  [v41 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"subtypeContextBase"}];

LABEL_4:
  if ([a1 _shouldThrottleReportForType:v17 subType:v18 subtypeContextBase:v19])
  {
    v21 = PLBackendGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v61 = v19;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "Auto bug capture for %{public}@/%{public}@/%{public}@ throttled because a similar report was made recently", buf, 0x20u);
    }

    v22 = MEMORY[0x1E69BF2D0];
    v23 = MEMORY[0x1E696ABC0];
    v54 = 0;
    v55 = &v54;
    v56 = 0x2020000000;
    v24 = getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_ptr;
    v57 = getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_ptr;
    if (!getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_block_invoke;
      v61 = &unk_1E7577EA0;
      v62 = &v54;
      v25 = SymptomDiagnosticReporterLibrary();
      v26 = dlsym(v25, "kSymptomDiagnosticErrorRequestThrottled");
      *(v62[1] + 24) = v26;
      getkSymptomDiagnosticErrorRequestThrottledSymbolLoc_ptr = *(v62[1] + 24);
      v24 = v55[3];
    }

    _Block_object_dispose(&v54, 8);
    if (!v24)
    {
      v42 = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const int getkSymptomDiagnosticErrorRequestThrottled(void)"];
      [v42 handleFailureInFunction:v43 file:@"PLAutoBugCapture.m" lineNumber:48 description:{@"%s", dlerror()}];

      __break(1u);
    }

    v27 = *v24;
    v58 = *MEMORY[0x1E696A278];
    v59 = @"Throttled by client";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v29 = [v23 errorWithDomain:@"PLAutoBugCaptureErrorDomain" code:v27 userInfo:v28];
    v30 = [v22 failureWithError:v29];
    v47[2](v47, v30);
  }

  else
  {
    if (v20)
    {
      v31 = [v19 stringByAppendingFormat:@":%@", v20];
    }

    else
    {
      v31 = v19;
    }

    v28 = v31;
    v32 = [MEMORY[0x1E696AE30] processInfo];
    v33 = [v32 processName];
    v34 = v33;
    v35 = @"unknown";
    if (v33)
    {
      v35 = v33;
    }

    v29 = v35;

    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v36 = getSDRDiagnosticReporterClass_softClass;
    v57 = getSDRDiagnosticReporterClass_softClass;
    if (!getSDRDiagnosticReporterClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getSDRDiagnosticReporterClass_block_invoke;
      v61 = &unk_1E7577EA0;
      v62 = &v54;
      __getSDRDiagnosticReporterClass_block_invoke(buf);
      v36 = v55[3];
    }

    v37 = v36;
    _Block_object_dispose(&v54, 8);
    v30 = objc_alloc_init(v36);
    v38 = [v30 signatureWithDomain:@"PhotosBackend" type:v17 subType:v18 subtypeContext:v28 detectedProcess:v29 triggerThresholdValues:v44];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __144__PLAutoBugCapture__captureSnapshotWithType_subType_subtypeContextBase_subtypeContextModifier_triggerThresholdValues_events_actions_completion___block_invoke;
    v48[3] = &unk_1E7576BC0;
    v53 = a1;
    v49 = v17;
    v50 = v18;
    v51 = v19;
    v52 = v47;
    [v30 snapshotWithSignature:v38 delay:v45 events:0 payload:v46 actions:v48 reply:0.0];
  }
}

void __144__PLAutoBugCapture__captureSnapshotWithType_subType_subtypeContextBase_subtypeContextModifier_triggerThresholdValues_events_actions_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v4 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  v28 = getkSymptomDiagnosticReplySuccessSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplySuccessSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticReplySuccessSymbolLoc_block_invoke;
    v30 = &unk_1E7577EA0;
    v31 = &v25;
    v5 = SymptomDiagnosticReporterLibrary();
    v6 = dlsym(v5, "kSymptomDiagnosticReplySuccess");
    *(v31[1] + 24) = v6;
    getkSymptomDiagnosticReplySuccessSymbolLoc_ptr = *(v31[1] + 24);
    v4 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v4)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplySuccess(void)"];
    [v21 handleFailureInFunction:v22 file:@"PLAutoBugCapture.m" lineNumber:25 description:{@"%s", dlerror()}];

    goto LABEL_17;
  }

  v7 = [v3 objectForKeyedSubscript:*v4];
  v8 = [v7 BOOLValue];

  [*(a1 + 64) _registerCompletedReportForType:*(a1 + 32) subType:*(a1 + 40) subtypeContextBase:*(a1 + 48) success:v8];
  if (v8)
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Auto bug capture finished sending snapshot, received response: %@", buf, 0xCu);
    }

    v10 = MEMORY[0x1E69BF2D0];
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = [v10 successWithResult:v11];
    goto LABEL_14;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v13 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  v28 = getkSymptomDiagnosticReplyReasonSymbolLoc_ptr;
  if (!getkSymptomDiagnosticReplyReasonSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getkSymptomDiagnosticReplyReasonSymbolLoc_block_invoke;
    v30 = &unk_1E7577EA0;
    v31 = &v25;
    v14 = SymptomDiagnosticReporterLibrary();
    v15 = dlsym(v14, "kSymptomDiagnosticReplyReason");
    *(v31[1] + 24) = v15;
    getkSymptomDiagnosticReplyReasonSymbolLoc_ptr = *(v31[1] + 24);
    v13 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v13)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticReplyReason(void)"];
    [v23 handleFailureInFunction:v24 file:@"PLAutoBugCapture.m" lineNumber:27 description:{@"%s", dlerror()}];

LABEL_17:
    __break(1u);
  }

  v16 = [v3 valueForKey:*v13];
  v17 = [v16 unsignedIntegerValue];

  v18 = PLBackendGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = v3;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Auto bug capture failed with code: %lu, %{public}@", buf, 0x16u);
  }

  v19 = MEMORY[0x1E69BF2D0];
  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PLAutoBugCaptureErrorDomain" code:v17 userInfo:0];
  v12 = [v19 failureWithError:v11];
LABEL_14:
  v20 = v12;

  (*(*(a1 + 56) + 16))();
}

+ (id)_actionDictionaryWithLogArchive:(BOOL)a3 networkInfo:(BOOL)a4 crashAndSpinLogs:(BOOL)a5 diagnosticExtensions:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v43[4] = *MEMORY[0x1E69E9840];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v10 = getkSymptomDiagnosticActionLogArchiveSymbolLoc_ptr;
  v40 = getkSymptomDiagnosticActionLogArchiveSymbolLoc_ptr;
  if (!getkSymptomDiagnosticActionLogArchiveSymbolLoc_ptr)
  {
    v11 = SymptomDiagnosticReporterLibrary();
    v38[3] = dlsym(v11, "kSymptomDiagnosticActionLogArchive");
    getkSymptomDiagnosticActionLogArchiveSymbolLoc_ptr = v38[3];
    v10 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v10)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticActionLogArchive(void)"];
    [v29 handleFailureInFunction:v30 file:@"PLAutoBugCapture.m" lineNumber:39 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v12 = *v10;
  v41[0] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithBool:v9];
  v43[0] = v13;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v14 = getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_ptr;
  v40 = getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_ptr;
  if (!getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_ptr)
  {
    v15 = SymptomDiagnosticReporterLibrary();
    v38[3] = dlsym(v15, "kSymptomDiagnosticActionGetNetworkInfo");
    getkSymptomDiagnosticActionGetNetworkInfoSymbolLoc_ptr = v38[3];
    v14 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v14)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticActionGetNetworkInfo(void)"];
    [v31 handleFailureInFunction:v32 file:@"PLAutoBugCapture.m" lineNumber:41 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v16 = *v14;
  v41[1] = v16;
  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  v43[1] = v17;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v18 = getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_ptr;
  v40 = getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_ptr;
  if (!getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_ptr)
  {
    v19 = SymptomDiagnosticReporterLibrary();
    v38[3] = dlsym(v19, "kSymptomDiagnosticActionCrashAndSpinLogs");
    getkSymptomDiagnosticActionCrashAndSpinLogsSymbolLoc_ptr = v38[3];
    v18 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v18)
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticActionCrashAndSpinLogs(void)"];
    [v33 handleFailureInFunction:v34 file:@"PLAutoBugCapture.m" lineNumber:43 description:{@"%s", dlerror()}];

    goto LABEL_20;
  }

  v20 = *v18;
  v41[2] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  v43[2] = v21;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v22 = getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_ptr;
  v40 = getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_ptr;
  if (!getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_ptr)
  {
    v23 = SymptomDiagnosticReporterLibrary();
    v38[3] = dlsym(v23, "kSymptomDiagnosticActionDiagnosticExtensions");
    getkSymptomDiagnosticActionDiagnosticExtensionsSymbolLoc_ptr = v38[3];
    v22 = v38[3];
  }

  _Block_object_dispose(&v37, 8);
  if (!v22)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkSymptomDiagnosticActionDiagnosticExtensions(void)"];
    [v35 handleFailureInFunction:v36 file:@"PLAutoBugCapture.m" lineNumber:45 description:{@"%s", dlerror()}];

LABEL_20:
    __break(1u);
  }

  v42 = *v22;
  v24 = MEMORY[0x1E696AD98];
  v25 = v42;
  v26 = [v24 numberWithBool:v6];
  v43[3] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v41 count:4];

  return v27;
}

+ (void)_registerCompletedReportForType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5 success:(BOOL)a6
{
  v8 = a3;
  v12 = a4;
  v13 = a5;
  v9 = v13;
  v10 = v12;
  v11 = v8;
  PLRunWithUnfairLock();
}

void __87__PLAutoBugCapture__registerCompletedReportForType_subType_subtypeContextBase_success___block_invoke(uint64_t a1)
{
  v2 = 3600.0;
  if (*(a1 + 64))
  {
    v2 = 86400.0;
  }

  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:v2];
  v3 = [*(a1 + 56) _sThrottleLock_untilDates];
  v4 = [v3 _pl_mutableDictionaryCreateAndInsertIfNeededForKey:*(a1 + 32)];
  v5 = [v4 _pl_mutableDictionaryCreateAndInsertIfNeededForKey:*(a1 + 40)];
  [v5 setObject:v6 forKeyedSubscript:*(a1 + 48)];
}

+ (BOOL)_shouldThrottleReportForType:(id)a3 subType:(id)a4 subtypeContextBase:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__109590;
  v20 = __Block_byref_object_dispose__109591;
  v21 = 0;
  v10 = v7;
  v11 = v8;
  v12 = v9;
  PLRunWithUnfairLock();
  if (v17[5])
  {
    v13 = [MEMORY[0x1E695DF00] now];
    v14 = [v13 compare:v17[5]] == -1;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v16, 8);
  return v14;
}

void __76__PLAutoBugCapture__shouldThrottleReportForType_subType_subtypeContextBase___block_invoke(uint64_t a1)
{
  v7 = [*(a1 + 64) _sThrottleLock_untilDates];
  v2 = [v7 objectForKeyedSubscript:*(a1 + 32)];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 48)];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

+ (id)_sThrottleLock_untilDates
{
  os_unfair_lock_assert_owner(&_sThrottleLock);
  v2 = _sThrottleLock_untilDates;
  if (!_sThrottleLock_untilDates)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = _sThrottleLock_untilDates;
    _sThrottleLock_untilDates = v3;

    v2 = _sThrottleLock_untilDates;
  }

  return v2;
}

+ (id)_countEventWithName:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isSuccess])
  {
    v8 = [v7 result];
    v9 = [a1 _eventWithName:v6 result:@"Success" count:v8];
  }

  else
  {
    v9 = [a1 _eventWithName:v6 result:@"Failure"];
  }

  return v9;
}

+ (id)_eventWithName:(id)a3 result:(id)a4 count:(id)a5
{
  v21[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"result"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"name"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:183 description:{@"Invalid parameter not satisfying: %@", @"count"}];

LABEL_4:
  v12 = getkSymptomDiagnosticKeyEventName();
  v20[0] = v12;
  v21[0] = v9;
  v13 = getkSymptomDiagnosticKeyEventResult();
  v20[1] = v13;
  v21[1] = v10;
  v14 = getkSymptomDiagnosticKeyEventCount();
  v20[2] = v14;
  v21[2] = v11;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  return v15;
}

+ (id)_eventWithName:(id)a3 result:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:a1 file:@"PLAutoBugCapture.m" lineNumber:166 description:{@"Invalid parameter not satisfying: %@", @"result"}];

LABEL_3:
  v10 = getkSymptomDiagnosticKeyEventName();
  v16[0] = v10;
  v17[0] = v7;
  v11 = getkSymptomDiagnosticKeyEventResult();
  v16[1] = v11;
  v17[1] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v12;
}

+ (id)_bucketCountDescriptionForCount:(int64_t)a3 policy:(unint64_t)a4
{
  if (a4)
  {
    if (a4 == 1)
    {
      v5 = 10;
      while (v5 <= a3)
      {
        v6 = v5 >= 0x186A1;
        v5 *= 10;
        if (v6)
        {
          goto LABEL_18;
        }
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%tu", v5];
      if (v7)
      {
        goto LABEL_19;
      }

LABEL_18:
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@">=%tu", 1000000];
LABEL_19:
    }

    else
    {
      v7 = @"invalid";
    }
  }

  else
  {
    if (a3)
    {
      v7 = @"NonZero";
    }

    else
    {
      v7 = @"Zero";
    }
  }

  return v7;
}

@end