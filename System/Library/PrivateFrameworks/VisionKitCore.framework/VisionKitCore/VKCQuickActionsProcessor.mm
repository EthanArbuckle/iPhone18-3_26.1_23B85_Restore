@interface VKCQuickActionsProcessor
+ (id)configureQuickActionForTuple:(id)a3 unfilteredTextElements:(id)a4;
+ (id)dedupeQuickActions:(id)a3;
+ (id)sortQuickActions:(id)a3;
+ (int64_t)sortOrderForElement:(id)a3;
+ (void)quickActionsFromElements:(id)a3 unfilteredElements:(id)a4 analysis:(id)a5 queue:(id)a6 completionHandler:(id)a7;
@end

@implementation VKCQuickActionsProcessor

+ (void)quickActionsFromElements:(id)a3 unfilteredElements:(id)a4 analysis:(id)a5 queue:(id)a6 completionHandler:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v12 = a4;
  v13 = a5;
  queue = a6;
  v40 = v12;
  v41 = a7;
  v14 = [v12 vk_objectsPassingTest:&__block_literal_global_24];
  v15 = objc_alloc_init(MEMORY[0x1E696AD18]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_2;
  v55[3] = &unk_1E7BE6160;
  v16 = v15;
  v56 = v16;
  v45 = [v43 vk_compactMap:v55];
  v44 = [getDDContextMenuActionClass() filterResultsForQuickActions:v45];
  v17 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v45 count];
    v19 = [v44 count];
    *buf = 67109376;
    *&buf[4] = v18;
    LOWORD(v65) = 1024;
    *(&v65 + 2) = v19;
    _os_log_impl(&dword_1B4335000, v17, OS_LOG_TYPE_DEFAULT, "Filtered quickActions using filterResultsForQuickActions from %d elements to %d elements", buf, 0xEu);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_179;
  v53[3] = &unk_1E7BE6188;
  v39 = v16;
  v54 = v39;
  v20 = [v44 vk_compactMap:v53];
  v21 = [v20 vk_map:&__block_literal_global_184];
  v22 = [v21 vk_compactMap:&__block_literal_global_189];
  v23 = objc_alloc_init(VKCDataDetectorCatalystRevealHighlighter);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v24 = getkDataDetectorsAllResultsKeySymbolLoc_ptr;
  v60 = getkDataDetectorsAllResultsKeySymbolLoc_ptr;
  if (!getkDataDetectorsAllResultsKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __getkDataDetectorsAllResultsKeySymbolLoc_block_invoke;
    v67 = &unk_1E7BE3F48;
    v68 = &v57;
    v25 = DataDetectorsUILibrary_2();
    v26 = dlsym(v25, "kDataDetectorsAllResultsKey");
    *(v68[1] + 24) = v26;
    getkDataDetectorsAllResultsKeySymbolLoc_ptr = *(v68[1] + 24);
    v24 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v24)
  {
    goto LABEL_10;
  }

  v27 = *v24;
  v61 = v27;
  v63[0] = v22;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v28 = getkDDHighlighterKeySymbolLoc_ptr;
  v60 = getkDDHighlighterKeySymbolLoc_ptr;
  if (!getkDDHighlighterKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v65 = 3221225472;
    v66 = __getkDDHighlighterKeySymbolLoc_block_invoke;
    v67 = &unk_1E7BE3F48;
    v68 = &v57;
    v29 = DataDetectorsUILibrary_2();
    v30 = dlsym(v29, "kDDHighlighterKey");
    *(v68[1] + 24) = v30;
    getkDDHighlighterKeySymbolLoc_ptr = *(v68[1] + 24);
    v28 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v28)
  {
LABEL_10:
    getkDDRVInteractionDidFinishNotification_cold_1();
    __break(1u);
  }

  v62 = *v28;
  v63[1] = v23;
  v31 = MEMORY[0x1E695DF20];
  v32 = v62;
  v33 = [v31 dictionaryWithObjects:v63 forKeys:&v61 count:2];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_4;
  block[3] = &unk_1E7BE3E80;
  v47 = v13;
  v48 = v21;
  v49 = v33;
  v50 = v14;
  v51 = v41;
  v52 = a1;
  v34 = v41;
  v35 = v14;
  v36 = v33;
  v37 = v21;
  v38 = v13;
  dispatch_async(queue, block);
}

id __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 scannerResult];
  [v2 setObject:v3 forKey:v4];

  v5 = [v3 scannerResult];

  return v5;
}

VKCTextDataDetectorElement *__105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_179(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];
  if (!v4)
  {
    v4 = [[VKCTextDataDetectorElement alloc] initWithScannerResult:v3];
  }

  return v4;
}

VKCQuickActionMenuTuple *__105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_2_182(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(VKCQuickActionMenuTuple);
  v4 = [VKCActionInfoButton buttonWithImage:0 text:0];
  [(VKCQuickActionMenuTuple *)v3 setButton:v4];

  [(VKCQuickActionMenuTuple *)v3 setElement:v2];

  return v3;
}

id __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 element];
  v3 = [v2 scannerResult];
  v4 = [v3 coreResult];

  return v4;
}

void __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_4(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF00] date];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) analysisRequestID];
    *buf = 67109120;
    v19 = v4;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_INFO, "Beginning Quick Action processing, id: %d", buf, 8u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_193;
  v16[3] = &unk_1E7BE61F0;
  v5 = *(a1 + 40);
  v17 = *(a1 + 48);
  [v5 enumerateObjectsUsingBlock:v16];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_2_195;
  v9[3] = &unk_1E7BE3E80;
  v6 = *(a1 + 40);
  v7 = *(a1 + 72);
  v10 = v6;
  v15 = v7;
  v11 = *(a1 + 56);
  v12 = v2;
  v13 = *(a1 + 32);
  v14 = *(a1 + 64);
  v8 = v2;
  vk_dispatchMainAfterDelay(v9, 0.0);
}

void __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_193(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 element];
  v5 = [v4 groupedElementData];
  v6 = [v2 vk_dictionaryByAddingEntriesFromNonNilDictionary:v5];

  DDContextMenuActionClass = getDDContextMenuActionClass();
  v8 = [v3 element];
  v9 = [v8 scannerResult];
  v10 = [v9 coreResult];
  v11 = [v3 button];
  v14 = 0;
  v12 = [DDContextMenuActionClass buttonActionsForURL:0 result:v10 contact:0 icsString:0 context:v6 view:v11 identifier:0 suggestedActions:0 defaultAction:&v14];
  v13 = v14;

  [v3 setMenu:v12];
  [v3 setDefaultAction:v13];
}

void __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_2_195(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __105__VKCQuickActionsProcessor_quickActionsFromElements_unfilteredElements_analysis_queue_completionHandler___block_invoke_3_196;
  v14 = &unk_1E7BE6218;
  v16 = *(a1 + 72);
  v2 = *(a1 + 32);
  v15 = *(a1 + 40);
  v3 = [v2 vk_compactMap:&v11];
  v4 = [*(a1 + 72) dedupeQuickActions:{v3, v11, v12, v13, v14}];

  v5 = [*(a1 + 72) sortQuickActions:v4];

  v6 = [MEMORY[0x1E695DF00] date];
  [v6 timeIntervalSinceDate:*(a1 + 48)];
  v8 = v7;

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [*(a1 + 56) analysisRequestID];
    *buf = 134218240;
    v18 = v8;
    v19 = 1024;
    v20 = v10;
    _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_INFO, "Quick Action processing completed in %f, id: %d", buf, 0x12u);
  }

  (*(*(a1 + 64) + 16))();
}

+ (int64_t)sortOrderForElement:(id)a3
{
  v3 = [a3 dataDetectorTypes];
  if ((v3 & 0x40) != 0)
  {
    return 1;
  }

  if ((v3 & 0x200) != 0)
  {
    return 2;
  }

  if ((v3 & 0x80) != 0)
  {
    return 3;
  }

  if ((v3 & 0x100) != 0)
  {
    return 4;
  }

  if (v3)
  {
    return 5;
  }

  if ((v3 & 2) != 0)
  {
    return 6;
  }

  if ((v3 & 0x10) != 0)
  {
    return 7;
  }

  if ((v3 & 8) != 0)
  {
    return 8;
  }

  if ((v3 & 4) != 0)
  {
    return 9;
  }

  if ((v3 & 0x400) != 0)
  {
    return 10;
  }

  if ((v3 & 0x800) != 0)
  {
    return 11;
  }

  if ((v3 & 0x20) != 0)
  {
    return 13;
  }

  return 127;
}

+ (id)dedupeQuickActions:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = [[v3 alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __47__VKCQuickActionsProcessor_dedupeQuickActions___block_invoke;
  v15 = &unk_1E7BE5860;
  v16 = v5;
  v17 = v6;
  v7 = v6;
  v8 = v5;
  [v4 enumerateObjectsUsingBlock:&v12];

  v9 = [v8 allValues];
  v10 = [v9 arrayByAddingObjectsFromArray:v7];

  return v10;
}

void __47__VKCQuickActionsProcessor_dedupeQuickActions___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 text];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 text];
    [v4 setObject:v6 forKey:v5];
  }

  else
  {
    [*(a1 + 40) addObject:v6];
  }
}

+ (id)sortQuickActions:(id)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__VKCQuickActionsProcessor_sortQuickActions___block_invoke;
  v5[3] = &__block_descriptor_40_e53_q24__0__VKCActionInfoButton_8__VKCActionInfoButton_16l;
  v5[4] = a1;
  v3 = [a3 sortedArrayUsingComparator:v5];

  return v3;
}

uint64_t __45__VKCQuickActionsProcessor_sortQuickActions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 representedElement];
  v7 = [v5 representedElement];

  v8 = [*(a1 + 32) sortOrderForElement:v6];
  v9 = [*(a1 + 32) sortOrderForElement:v7];
  if (v8 < v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = v8 > v9;
  }

  if (!v10)
  {
    v11 = [v6 quad];
    [v11 topLeft];
    v13 = v12;
    v15 = v14;

    v16 = [v7 quad];
    [v16 topLeft];
    v18 = v17;
    v20 = v19;

    v21 = v15 > v20;
    if (v15 < v20)
    {
      v21 = -1;
    }

    v22 = v13 > v18;
    if (v13 < v18)
    {
      v22 = -1;
    }

    if (v21)
    {
      v10 = v21;
    }

    else
    {
      v10 = v22;
    }
  }

  return v10;
}

+ (id)configureQuickActionForTuple:(id)a3 unfilteredTextElements:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 button];
  v8 = [v5 defaultAction];
  v9 = [v5 menu];
  v10 = [v5 element];
  if (!v8)
  {
    goto LABEL_8;
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getDDUIActionClass_softClass_0;
  v26 = getDDUIActionClass_softClass_0;
  if (!getDDUIActionClass_softClass_0)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getDDUIActionClass_block_invoke_0;
    v22[3] = &unk_1E7BE3F48;
    v22[4] = &v23;
    __getDDUIActionClass_block_invoke_0(v22);
    v11 = v24[3];
  }

  v12 = v11;
  _Block_object_dispose(&v23, 8);
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 dd_action];
    v21 = v6;
    if (([v13 isPlaceholderAction] & 1) != 0 || objc_msgSend(v10, "isUnitConversionDataDetector"))
    {
      v14 = [MEMORY[0x1E69DCAB8] vk_symbolImageWithName:@"arrow.triangle.swap"];
      v20 = 1;
      v15 = v14;
    }

    else
    {
      v14 = [v13 compactIcon];
      v15 = [v13 icon];
      v20 = 0;
    }

    v16 = [v13 quickActionTitle];
    [v7 setText:v16];
    [v7 setImage:v14];
    [v7 setMenuImage:v15];
    [v7 setDefaultAction:v8];
    v17 = [v10 uuid];
    [v7 setCorrelationIdentifier:v17];

    [v7 setMenu:v9];
    [v7 setRepresentedElement:v10];
    v6 = v21;
    [v7 setAllUnfilteredElements:v21];
    [v7 setShowsMenuAsPrimaryAction:v20];
    [v7 setAccessibilityIdentifier:@"QuickAction"];
    [v7 addTarget:v7 action:sel_performDefaultElementAction forControlEvents:64];
  }

  else
  {
LABEL_8:
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v7;
    v7 = 0;
  }

  v18 = v7;
  return v7;
}

@end