@interface SKGProcessor(Embeddings)
- (BOOL)generateCalendarEventTypesForProcessedItem:()Embeddings;
- (uint64_t)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:;
- (uint64_t)generateEmbeddingsForRecord:()Embeddings processedItem:isPriority:workCost:cancelBlock:;
- (uint64_t)loadEmbedder;
- (uint64_t)updateChunks:()Embeddings firstChunkLength:fromString:overlapSize:maxChunks:cancelBlock:;
@end

@implementation SKGProcessor(Embeddings)

- (uint64_t)loadEmbedder
{
  if (loadEmbedder_onceToken != -1)
  {
    [SKGProcessor(Embeddings) loadEmbedder];
  }

  return loadEmbedder_gSuccess;
}

- (uint64_t)updateChunks:()Embeddings firstChunkLength:fromString:overlapSize:maxChunks:cancelBlock:
{
  v14 = a3;
  v15 = a5;
  v16 = a8;
  if (a7 && [v15 length])
  {
    v17 = [a1 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__SKGProcessor_Embeddings__updateChunks_firstChunkLength_fromString_overlapSize_maxChunks_cancelBlock___block_invoke;
    block[3] = &unk_27893EE50;
    v21 = v15;
    v22 = v14;
    v23 = a7;
    v24 = a6;
    v25 = a4;
    dispatch_sync(v17, block);

    if (v16)
    {
      v18 = v16[2](v16, @"chunking") ^ 1;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (uint64_t)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:
{
  v106 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v86 = a4;
  v85 = a5;
  v13 = a9;
  v88 = [MEMORY[0x277D65768] sharedInstance];
  context = objc_autoreleasePoolPush();
  v89 = v13;
  if ((a8 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = *MEMORY[0x277D65780];
    v16 = 0.001;
    v17 = a8;
    v18 = v85;
    while (1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v19 = SKGLogEmbedInit();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v12 bundleIdentifier];
          *buf = 138412546;
          v103 = v20;
          v104 = 2048;
          v105 = v17;
          _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "[Document Embedding Generation] Start primary embedding generation for item bundleID %@. %llu retries left.", buf, 0x16u);
        }
      }

      v21 = [v12 bundleIdentifier];
      v99 = 0;
      v22 = [v88 generateEmbeddingForTextInputs:v86 extendedContextLength:1 bundleID:v21 queryID:0x7FFFFFFFFFFFFFFFLL clientBundleID:@"com.apple.spotlightknowledged" timeout:10000 workCost:a7 error:&v99];
      v23 = v99;

      if (v89)
      {
        if (v89[2]())
        {
          break;
        }
      }

      if (!v23)
      {
        goto LABEL_22;
      }

      v24 = [v23 domain];
      if (([v24 isEqualToString:v15] & 1) == 0)
      {

        goto LABEL_22;
      }

      v25 = [v23 code];

      if (v25 != -8007)
      {
        goto LABEL_22;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v26 = SKGLogEmbedInit();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = [v12 bundleIdentifier];
          *buf = 138412546;
          v103 = v28;
          v104 = 2048;
          v105 = v17;
          _os_log_error_impl(&dword_231B25000, v26, OS_LOG_TYPE_ERROR, "[Document Embedding Generation] Embedding generation for primary embeddings timed out for bundleID %@. %llu retries left.", buf, 0x16u);
        }
      }

      if (!v17)
      {
        goto LABEL_22;
      }

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v16];
      v16 = v16 + v16;
      v14 = v22;
      v27 = v17-- <= 0;
      if (v27)
      {
        v23 = 0;
        goto LABEL_22;
      }
    }

    v59 = 0;
    goto LABEL_66;
  }

  v23 = 0;
  v22 = 0;
  v18 = v85;
LABEL_22:
  if ([v22 count])
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v29 = v22;
    v30 = [v29 countByEnumeratingWithState:&v95 objects:v101 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v96;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v96 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v95 + 1) + 8 * i);
          v35 = [v34 embeddingData];
          [v12 addPrimaryEmbedding:v35];

          [v12 setEmbeddingSize:{objc_msgSend(v34, "elementCount")}];
          [v12 setEmbeddingFormat:objc_msgSend(v34, "elementType")];
          [v12 setEmbeddingVersion:{objc_msgSend(v34, "version")}];
        }

        v31 = [v29 countByEnumeratingWithState:&v95 objects:v101 count:16];
      }

      while (v31);
    }

    v36 = +[SKGActivityJournal sharedJournal];
    v37 = [v12 bundleIdentifier];
    v38 = [v12 referenceIdentifier];
    [v36 addEventForItem:6 bundleID:v37 identifier:v38];

    v18 = v85;
    if (SKGLogGetCurrentLoggingLevel() >= 6)
    {
      v39 = SKGLogEmbedInit();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [SKGProcessor(Embeddings) addEmbeddingsToProcessedItem:primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:];
      }
    }

    [v12 setChunkLength:a6];
  }

  else
  {
    v54 = [v86 count];
    v55 = +[SKGActivityJournal sharedJournal];
    v56 = [v12 bundleIdentifier];
    v57 = [v12 referenceIdentifier];
    if (v54)
    {
      [v55 addEventForItem:7 bundleID:v56 identifier:v57];

      if (!v23)
      {
        v59 = 1;
        v60 = context;
LABEL_67:

        v61 = v60;
LABEL_97:
        objc_autoreleasePoolPop(v61);
        goto LABEL_98;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v58 = SKGLogEmbedInit();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          [SKGProcessor(Embeddings) addEmbeddingsToProcessedItem:primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:];
        }
      }

      v59 = 1;
      [v12 setErrorProcessingEmbeddings:1];
LABEL_66:
      v60 = context;

      goto LABEL_67;
    }

    [v55 addEventForItem:8 bundleID:v56 identifier:v57];
  }

  objc_autoreleasePoolPop(context);
  v40 = objc_autoreleasePoolPush();
  v41 = v40;
  if ((a8 & 0x8000000000000000) == 0)
  {
    v83 = v40;
    v42 = 0;
    v43 = *MEMORY[0x277D65780];
    v44 = 0.001;
    while (1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v45 = SKGLogEmbedInit();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v12 bundleIdentifier];
          *buf = 138412546;
          v103 = v46;
          v104 = 2048;
          v105 = a8;
          _os_log_impl(&dword_231B25000, v45, OS_LOG_TYPE_DEFAULT, "[Document Embedding Generation] Start secondary embedding generation for item bundleID %@. %llu retries left.", buf, 0x16u);
        }
      }

      v47 = [v12 bundleIdentifier];
      v94 = 0;
      v48 = [v88 generateEmbeddingForTextInputs:v18 extendedContextLength:1 bundleID:v47 queryID:0x7FFFFFFFFFFFFFFFLL clientBundleID:@"com.apple.spotlightknowledged" timeout:10000 workCost:a7 error:&v94];
      v49 = v94;

      if (v89)
      {
        if (v89[2]())
        {
          break;
        }
      }

      if (!v49)
      {
        goto LABEL_68;
      }

      v50 = [v49 domain];
      if (([v50 isEqualToString:v43] & 1) == 0)
      {

        goto LABEL_68;
      }

      v51 = [v49 code];

      if (v51 != -8007)
      {
        goto LABEL_68;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v52 = SKGLogEmbedInit();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = [v12 bundleIdentifier];
          *buf = 138412546;
          v103 = v53;
          v104 = 2048;
          v105 = a8;
          _os_log_error_impl(&dword_231B25000, v52, OS_LOG_TYPE_ERROR, "[Document Embedding Generation] Embedding generation for secondary embeddings timed out for bundleID %@. %llu retries left.", buf, 0x16u);
        }
      }

      if (!a8)
      {
        goto LABEL_68;
      }

      [MEMORY[0x277CCACC8] sleepForTimeInterval:v44];
      v44 = v44 + v44;
      v42 = v48;
      v27 = a8-- <= 0;
      if (v27)
      {
        v49 = 0;
LABEL_68:
        v41 = v83;
        goto LABEL_69;
      }
    }

    v59 = 0;
    v41 = v83;
    goto LABEL_95;
  }

  v48 = 0;
  v49 = 0;
LABEL_69:
  if ([v48 count])
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v62 = v48;
    v63 = [v62 countByEnumeratingWithState:&v90 objects:v100 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v91;
      do
      {
        for (j = 0; j != v64; ++j)
        {
          if (*v91 != v65)
          {
            objc_enumerationMutation(v62);
          }

          v67 = *(*(&v90 + 1) + 8 * j);
          v68 = [v67 embeddingData];
          [v12 addSecondaryEmbedding:v68];

          [v12 setEmbeddingSize:{objc_msgSend(v67, "elementCount")}];
          [v12 setEmbeddingFormat:objc_msgSend(v67, "elementType")];
          [v12 setEmbeddingVersion:{objc_msgSend(v67, "version")}];
        }

        v64 = [v62 countByEnumeratingWithState:&v90 objects:v100 count:16];
      }

      while (v64);
    }

    v69 = +[SKGActivityJournal sharedJournal];
    v70 = [v12 bundleIdentifier];
    v71 = [v12 referenceIdentifier];
    [v69 addEventForItem:9 bundleID:v70 identifier:v71];

    v18 = v85;
    if (SKGLogGetCurrentLoggingLevel() < 6)
    {
      goto LABEL_89;
    }

    v72 = SKGLogEmbedInit();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      [SKGProcessor(Embeddings) addEmbeddingsToProcessedItem:primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:];
    }
  }

  else
  {
    v73 = [v18 count];
    v72 = +[SKGActivityJournal sharedJournal];
    v74 = [v12 bundleIdentifier];
    v75 = [v12 referenceIdentifier];
    if (v73)
    {
      [v72 addEventForItem:10 bundleID:v74 identifier:v75];

      if (!v49)
      {
        v59 = 1;
LABEL_96:

        v61 = v41;
        goto LABEL_97;
      }

      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v76 = SKGLogEmbedInit();
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          [SKGProcessor(Embeddings) addEmbeddingsToProcessedItem:primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:];
        }
      }

      v59 = 1;
      [v12 setErrorProcessingEmbeddings:1];
LABEL_95:

      goto LABEL_96;
    }

    [v72 addEventForItem:11 bundleID:v74 identifier:v75];
  }

LABEL_89:
  objc_autoreleasePoolPop(v41);
  v59 = 1;
  [v12 setDidProcessEmbeddings:1];
  v77 = [MEMORY[0x277D657A0] sharedContext];
  v78 = [v77 enableCalendarEventClassification];

  if (v78 && [v12 isCalendar] && objc_msgSend(v12, "didProcessEmbeddings"))
  {
    [v12 setDidProcessCalendarEvents:{objc_msgSend(a1, "generateCalendarEventTypesForProcessedItem:", v12)}];
  }

LABEL_98:

  v79 = *MEMORY[0x277D85DE8];
  return v59;
}

- (BOOL)generateCalendarEventTypesForProcessedItem:()Embeddings
{
  v3 = a3;
  v4 = +[CalendarEventClassificationModelManager sharedInstance];
  v5 = [v3 referenceIdentifier];
  v6 = [v3 embedding];
  v7 = [v4 predictForReferenceItemId:v5 withEmbedding:v6];

  v8 = [v7 count];
  if (v8)
  {
    [v3 addDetectedCalendarEventTypes:v7];
  }

  return v8 != 0;
}

- (uint64_t)generateEmbeddingsForRecord:()Embeddings processedItem:isPriority:workCost:cancelBlock:
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__20;
  v49 = __Block_byref_object_dispose__20;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v15 = objc_autoreleasePoolPush();
  v39 = 0;
  v40 = 2;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__20;
  v38 = __Block_byref_object_dispose__20;
  v16 = [v13 bundleIdentifier];
  v17 = (v35 + 5);
  obj = v35[5];
  v18 = [a1 extractContentFromRecord:v12 bundleID:v16 content:&obj maxChunkCountPtr:&v40 textLength:0];
  objc_storeStrong(v17, obj);

  if (!v18)
  {
    goto LABEL_6;
  }

  v19 = +[SKGEventsProfiler sharedInstance];
  v20 = a5 ? 2 : 1;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __102__SKGProcessor_Embeddings__generateEmbeddingsForRecord_processedItem_isPriority_workCost_cancelBlock___block_invoke;
  v25[3] = &unk_27893EE78;
  v29 = &v34;
  v26 = v13;
  v27 = a1;
  v30 = &v45;
  v31 = &v41;
  v32 = v40;
  v28 = v14;
  v21 = [v19 profileCodeWithType:@"GenerateEmbeddings-Chunking" kind:v20 block:v25];

  if ((v21 & 1) == 0)
  {
    v22 = 0;
  }

  else
  {
LABEL_6:
    v22 = 1;
  }

  _Block_object_dispose(&v34, 8);

  objc_autoreleasePoolPop(v15);
  if (v22)
  {
    v23 = [a1 addEmbeddingsToProcessedItem:v13 primaryTextInputs:v46[5] secondaryTextInputs:0 firstChunkLength:v42[3] workCost:a6 timeoutRetries:1 cancelBlock:v14];
  }

  else
  {
    v23 = 0;
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v23;
}

- (void)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x277D85DE8];
  [v1 count];
  v2 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:.cold.2()
{
  OUTLINED_FUNCTION_5();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:.cold.3()
{
  OUTLINED_FUNCTION_5();
  v8 = *MEMORY[0x277D85DE8];
  [v1 count];
  v2 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)addEmbeddingsToProcessedItem:()Embeddings primaryTextInputs:secondaryTextInputs:firstChunkLength:workCost:timeoutRetries:cancelBlock:.cold.4()
{
  OUTLINED_FUNCTION_5();
  v7 = *MEMORY[0x277D85DE8];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_10();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end