@interface VKCTextElementProcessor
+ (id)dataDetectorElementFromVNBarcodeObservation:(id)a3 loggingIndex:(int64_t)a4;
+ (id)dataDetectorsFromCRDocumentOutputRegion:(id)a3 shouldFilter:(BOOL)a4;
+ (id)textElementsFromCRDocumentOutputRegion:(id)a3;
+ (void)addGroupingToDataDetectors:(id)a3 parentDocument:(id)a4;
@end

@implementation VKCTextElementProcessor

+ (id)textElementsFromCRDocumentOutputRegion:(id)a3
{
  v3 = a3;
  v4 = [v3 contentsWithTypes:8];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __66__VKCTextElementProcessor_textElementsFromCRDocumentOutputRegion___block_invoke;
  v11[3] = &unk_1E7BE4AE0;
  v12 = v3;
  v5 = v3;
  v6 = [v4 vk_compactMap:v11];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

+ (id)dataDetectorsFromCRDocumentOutputRegion:(id)a3 shouldFilter:(BOOL)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E695DF00] now];
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v9 = getDDDetectionControllerClass_softClass;
  v30 = getDDDetectionControllerClass_softClass;
  if (!getDDDetectionControllerClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getDDDetectionControllerClass_block_invoke;
    v26[3] = &unk_1E7BE3F48;
    v26[4] = &v27;
    __getDDDetectionControllerClass_block_invoke(v26);
    v9 = v28[3];
  }

  v10 = v9;
  _Block_object_dispose(&v27, 8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __80__VKCTextElementProcessor_dataDetectorsFromCRDocumentOutputRegion_shouldFilter___block_invoke;
  v20 = &unk_1E7BE4B08;
  v25 = a4;
  v24 = v9;
  v21 = v7;
  v11 = v8;
  v22 = v11;
  v12 = v6;
  v23 = v12;
  v13 = v7;
  [v12 enumerateContentsWithTypes:2048 usingBlock:&v17];
  if (vk_supportsContextAwareDataDetectors())
  {
    [a1 addGroupingToDataDetectors:v11 parentDocument:{v12, v17, v18, v19, v20, v21, v22}];
  }

  v14 = v23;
  v15 = v11;

  return v11;
}

void __80__VKCTextElementProcessor_dataDetectorsFromCRDocumentOutputRegion_shouldFilter___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = VKDynamicCast(v4, v3);

  if (*(a1 + 64) != 1 || ([v5 ddResult], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || (v7 = *(a1 + 56), objc_msgSend(v5, "ddResult"), v8 = objc_claimAutoreleasedReturnValue(), v14[0] = v8, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 1), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "filterResults:forTypes:referenceDate:referenceTimeZone:", v9, 0xFFFFLL, *(a1 + 32), 0), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v8, v11))
  {
    v12 = *(a1 + 40);
    v13 = [VKCTextDataDetectorElement dataDetectorElementFromCROutputRegion:v5 parentDocument:*(a1 + 48)];
    [v12 addObject:v13];
  }
}

+ (void)addGroupingToDataDetectors:(id)a3 parentDocument:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v8 = getkDataDetectorsGroupAllResultsKeySymbolLoc_ptr;
  v45 = getkDataDetectorsGroupAllResultsKeySymbolLoc_ptr;
  if (!getkDataDetectorsGroupAllResultsKeySymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getkDataDetectorsGroupAllResultsKeySymbolLoc_block_invoke;
    v40 = &unk_1E7BE3F48;
    v41 = &v42;
    v9 = DataDetectorsUILibrary_0();
    v43[3] = dlsym(v9, "kDataDetectorsGroupAllResultsKey");
    getkDataDetectorsGroupAllResultsKeySymbolLoc_ptr = *(v41[1] + 24);
    v8 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v8)
  {
    getkDDRVInteractionDidFinishNotification_cold_1();
LABEL_15:
    getkDDRVInteractionDidFinishNotification_cold_1();
LABEL_16:
    getkDDRVInteractionDidFinishNotification_cold_1();
    goto LABEL_17;
  }

  v10 = *v8;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v11 = getkDataDetectorsGroupTranscriptKeySymbolLoc_ptr;
  v45 = getkDataDetectorsGroupTranscriptKeySymbolLoc_ptr;
  if (!getkDataDetectorsGroupTranscriptKeySymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getkDataDetectorsGroupTranscriptKeySymbolLoc_block_invoke;
    v40 = &unk_1E7BE3F48;
    v41 = &v42;
    v12 = DataDetectorsUILibrary_0();
    v43[3] = dlsym(v12, "kDataDetectorsGroupTranscriptKey");
    getkDataDetectorsGroupTranscriptKeySymbolLoc_ptr = *(v41[1] + 24);
    v11 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v11)
  {
    goto LABEL_15;
  }

  v13 = *v11;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v14 = getkDataDetectorsGroupCategoryKeySymbolLoc_ptr;
  v45 = getkDataDetectorsGroupCategoryKeySymbolLoc_ptr;
  if (!getkDataDetectorsGroupCategoryKeySymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getkDataDetectorsGroupCategoryKeySymbolLoc_block_invoke;
    v40 = &unk_1E7BE3F48;
    v41 = &v42;
    v15 = DataDetectorsUILibrary_0();
    v43[3] = dlsym(v15, "kDataDetectorsGroupCategoryKey");
    getkDataDetectorsGroupCategoryKeySymbolLoc_ptr = *(v41[1] + 24);
    v14 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = *v14;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v17 = getkDataDetectorsDocumentLanguageKeySymbolLoc_ptr;
  v45 = getkDataDetectorsDocumentLanguageKeySymbolLoc_ptr;
  if (!getkDataDetectorsDocumentLanguageKeySymbolLoc_ptr)
  {
    v37 = MEMORY[0x1E69E9820];
    v38 = 3221225472;
    v39 = __getkDataDetectorsDocumentLanguageKeySymbolLoc_block_invoke;
    v40 = &unk_1E7BE3F48;
    v41 = &v42;
    v18 = DataDetectorsUILibrary_0();
    v43[3] = dlsym(v18, "kDataDetectorsDocumentLanguageKey");
    getkDataDetectorsDocumentLanguageKeySymbolLoc_ptr = *(v41[1] + 24);
    v17 = v43[3];
  }

  _Block_object_dispose(&v42, 8);
  if (!v17)
  {
LABEL_17:
    v27 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v42, 8);
    _Unwind_Resume(v27);
  }

  v19 = *v17;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __69__VKCTextElementProcessor_addGroupingToDataDetectors_parentDocument___block_invoke;
  v30[3] = &unk_1E7BE4B78;
  v31 = v10;
  v32 = v13;
  v33 = v16;
  v34 = v6;
  v35 = v19;
  v20 = v7;
  v36 = v20;
  v21 = v19;
  v22 = v6;
  v23 = v16;
  v24 = v13;
  v25 = v10;
  [v22 enumerateContentsWithTypes:4096 usingBlock:v30];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __69__VKCTextElementProcessor_addGroupingToDataDetectors_parentDocument___block_invoke_4;
  v28[3] = &unk_1E7BE4BA0;
  v29 = v20;
  v26 = v20;
  [v5 enumerateObjectsUsingBlock:v28];
}

void __69__VKCTextElementProcessor_addGroupingToDataDetectors_parentDocument___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = VKDynamicCast(v4, v3);
  v6 = [v5 dataDetectorsOutputRegions];
  v7 = [v6 vk_compactMap:&__block_literal_global_6];

  v8 = [v3 text];

  v9 = [v5 groupType];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v10 setObject:v7 forKeyedSubscript:*(a1 + 32)];
  [v10 setObject:v8 forKeyedSubscript:*(a1 + 40)];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9];
  [v10 setObject:v11 forKeyedSubscript:*(a1 + 48)];

  v12 = [*(a1 + 56) recognizedLocale];
  if (v12 && [*(a1 + 56) confidence] == 2)
  {
    [v10 setObject:v12 forKeyedSubscript:*(a1 + 64)];
  }

  v13 = [v10 copy];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__VKCTextElementProcessor_addGroupingToDataDetectors_parentDocument___block_invoke_3;
  v15[3] = &unk_1E7BE4B50;
  v16 = *(a1 + 72);
  v17 = v13;
  v14 = v13;
  [v7 enumerateObjectsUsingBlock:v15];
}

void __69__VKCTextElementProcessor_addGroupingToDataDetectors_parentDocument___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 scannerResult];
  v4 = [v2 objectForKey:v5];
  [v3 setGroupedElementData:v4];
}

+ (id)dataDetectorElementFromVNBarcodeObservation:(id)a3 loggingIndex:(int64_t)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v6 = getBCSDetectedCodeClass_softClass;
  v30 = getBCSDetectedCodeClass_softClass;
  if (!getBCSDetectedCodeClass_softClass)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getBCSDetectedCodeClass_block_invoke;
    v36 = &unk_1E7BE3F48;
    v37 = &v27;
    __getBCSDetectedCodeClass_block_invoke(&v33);
    v6 = v28[3];
  }

  v7 = v6;
  _Block_object_dispose(&v27, 8);
  v8 = [v6 detectedCodeWithBarcodeObservation:v5];
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__3;
  v37 = __Block_byref_object_dispose__3;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v40 = a4;
      _os_log_impl(&dword_1B4335000, v10, OS_LOG_TYPE_DEFAULT, "Beginning MRC Parsing of element %ld", buf, 0xCu);
    }

    v11 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __84__VKCTextElementProcessor_dataDetectorElementFromVNBarcodeObservation_loggingIndex___block_invoke;
    v23[3] = &unk_1E7BE4BC8;
    v25 = &v27;
    v26 = &v33;
    v12 = v11;
    v24 = v12;
    [v8 parseCodeWithCompletion:v23];
    v13 = dispatch_time(0, 3000000000);
    dispatch_semaphore_wait(v12, v13);
    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:v9];
    v16 = v15;

    v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v40 = a4;
      v41 = 2048;
      v42 = v16;
      _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_DEFAULT, "Completed MRC Parsing of element %ld. Total Time: %f", buf, 0x16u);
    }

    if (!*(v34 + 40) && !v28[5])
    {
      v18 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[VKCTextElementProcessor dataDetectorElementFromVNBarcodeObservation:loggingIndex:];
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[VKCTextElementProcessor dataDetectorElementFromVNBarcodeObservation:loggingIndex:];
    }
  }

  if (*(v34 + 40))
  {
    v19 = [VKCMRCDataDetectorElement alloc];
    v20 = [(VKCMRCDataDetectorElement *)v19 initWithBarcodeObservation:v5 action:*(v34 + 40)];
  }

  else
  {
    v21 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[VKCTextElementProcessor dataDetectorElementFromVNBarcodeObservation:loggingIndex:];
    }

    v20 = 0;
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v20;
}

void __84__VKCTextElementProcessor_dataDetectorElementFromVNBarcodeObservation_loggingIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.processing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__VKCTextElementProcessor_dataDetectorElementFromVNBarcodeObservation_loggingIndex___block_invoke_cold_1();
    }

    v9 = 40;
  }

  else
  {
    v9 = 48;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 32));
}

@end