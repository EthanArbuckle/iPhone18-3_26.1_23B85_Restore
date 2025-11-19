@interface SKGProcessor
@end

@implementation SKGProcessor

void __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_group_create();
  dispatch_group_enter(v1);
  v2 = [MEMORY[0x277D65768] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke_2;
  v6[3] = &unk_27893E840;
  v3 = v1;
  v7 = v3;
  [v2 preheatWithCompletionHandler:v6];

  v4 = dispatch_time(0, 60000000000);
  if (dispatch_group_wait(v3, v4) && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v5 = SKGLogEmbedInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke_cold_1(v5);
    }
  }

  objc_autoreleasePoolPop(v0);
}

void __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v4 = SKGLogEmbedInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke_2_cold_1(v3, v4);
      }
    }
  }

  else
  {
    loadEmbedder_gSuccess = 1;
    v5 = [MEMORY[0x277D65770] sharedInstance];
    v6 = [MEMORY[0x277D657A0] sharedContext];
    v7 = [v6 enableCalendarEventClassification];

    if (v7)
    {
      v8 = +[CalendarEventClassificationModelManager sharedInstance];
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void __103__SKGProcessor_Embeddings__updateChunks_firstChunkLength_fromString_overlapSize_maxChunks_cancelBlock___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D65770] sharedInstance];
  if (v2)
  {
    v15 = v2;
    v3 = [v2 maxTokenLength];
    if (v3 <= 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = v3 - 2;
    }

    v5 = [v15 getTokenIDsForText:*(a1 + 32)];
    v6 = 0;
    while (v6 < [v5 count] && objc_msgSend(*(a1 + 40), "count") < *(a1 + 48))
    {
      if ([v5 count] - v6 < v4)
      {
        if (![*(a1 + 40) count] || objc_msgSend(v5, "count") - v6 > *(a1 + 56))
        {
          v10 = objc_alloc(MEMORY[0x277D65778]);
          v11 = [v5 subarrayWithRange:{v6, objc_msgSend(v5, "count") - v6}];
          v12 = [v10 initWithTokenIds:v11];

          [*(a1 + 40) addObject:v12];
        }

        break;
      }

      v7 = objc_alloc(MEMORY[0x277D65778]);
      v8 = [v5 subarrayWithRange:{v6, v4}];
      v9 = [v7 initWithTokenIds:v8];

      [*(a1 + 40) addObject:v9];
      v6 = v6 + v4 - *(a1 + 56);
    }

    if ([*(a1 + 40) count] && *(a1 + 64))
    {
      v13 = [*(a1 + 40) firstObject];
      **(a1 + 64) = [v13 tokenLength];
    }

    v2 = v15;
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __102__SKGProcessor_Embeddings__generateEmbeddingsForRecord_processedItem_isPriority_workCost_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D65798];
  v4 = *(*(*(a1 + 56) + 8) + 40);
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 bundleIdentifier];
  v8 = [v3 normalizeForEmbeddingGeneration:v4 bundleID:v7];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = objc_opt_new();
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 40) updateChunks:*(*(*(a1 + 64) + 8) + 40) firstChunkLength:*(*(a1 + 72) + 8) + 24 fromString:*(*(*(a1 + 56) + 8) + 40) overlapSize:38 maxChunks:*(a1 + 80) cancelBlock:*(a1 + 48)];
  v6[2](v6, @"complete");

  return v14;
}

uint64_t __209__SKGProcessor_Items__enumerateProcessedItemsFromRecord_referenceIdentifier_bundleIdentifier_protectionClass_processorFlags_workCost_fetchCachedLanguageBlock_cacheLanguageBlock_processedItemBlock_cancelBlock___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = a1[8];
  v8 = a1[9];
  v9 = a2;
  *(*(a1[10] + 8) + 24) = [v3 generateLanguageForRecord:v4 processedItem:v5 fetchCachedLanguageBlock:v6 cacheLanguageBlock:v7 cancelBlock:v8];
  if (*(*(a1[10] + 8) + 24))
  {
    v10 = @"complete";
  }

  else
  {
    v10 = @"LID-failed";
  }

  v9[2](v9, v10);

  return *(*(a1[10] + 8) + 24);
}

BOOL __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 24);
  if (v2 && (v4 & 1) != 0)
  {
    v5 = (*(v2 + 16))(v2, @"processTextContentFromRecord:cancel") ^ 1;
    v3 = *(*(a1 + 40) + 8);
  }

  else
  {
    v5 = v4 != 0;
  }

  *(v3 + 24) = v5;
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

void __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v5 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_2_cold_1(v3, v5);
    }
  }

  [*(*(*(a1 + 32) + 8) + 40) addEntity:v3];
  objc_autoreleasePoolPop(v4);
}

void __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_37(void *a1, void *a2, uint64_t a3, _BYTE *a4, double a5)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = objc_autoreleasePoolPush();
  v11 = [v9 lowercaseStringWithLocale:a1[4]];
  v12 = [SKGKeyphrase alloc];
  v21[0] = v9;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v14 = [(SKGKeyphrase *)v12 initWithKeyphrase:v11 components:v13 tokenCount:a3 score:a5];

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v15 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_37_cold_1(a1, a3, v15);
    }
  }

  [*(*(a1[7] + 8) + 40) addEntity:v14];
  v16 = a1[6];
  v17 = *(a1[8] + 8);
  v18 = *(v17 + 24);
  if (v16 && (v18 & 1) != 0)
  {
    v19 = (*(v16 + 16))(v16, @"processTextContentFromRecord:keyphrase:text") ^ 1;
    v17 = *(a1[8] + 8);
  }

  else
  {
    v19 = v18 != 0;
  }

  *(v17 + 24) = v19;

  objc_autoreleasePoolPop(v10);
  if ((*(*(a1[8] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
}

BOOL __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = (*(v2 + 16))(v2, @"processTextContentFromRecord:cancel") ^ 1;
    v4 = *(*(a1 + 40) + 8);
  }

  else
  {
    v4 = *(*(a1 + 40) + 8);
    v3 = *(v4 + 24);
  }

  *(v4 + 24) = v3;
  return (*(*(*(a1 + 40) + 8) + 24) & 1) == 0;
}

id __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [v7 stringByTrimmingCharactersInSet:v8];

  if ([v9 length] < 0xA)
  {
    v23 = *(a1 + 32);
    if (v23)
    {
      v24 = (*(v23 + 16))(v23, @"processTextContentFromRecord:cancel") ^ 1;
      v25 = *(*(a1 + 40) + 8);
    }

    else
    {
      v25 = *(*(a1 + 40) + 8);
      v24 = *(v25 + 24);
    }

    *(v25 + 24) = v24;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      *a5 = 1;
    }
  }

  else
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__22;
    v43 = __Block_byref_object_dispose__22;
    v44 = 0;
    v10 = +[SKGDataDetector sharedDetector];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke_8;
    v34[3] = &unk_27893F008;
    v9 = v9;
    v35 = v9;
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v37 = &v39;
    v38 = v11;
    v36 = v12;
    [v10 enumerateDetectedDataInString:v9 locale:0 referenceDate:0 referenceTimezone:0 entityBlock:0 rangeBlock:v34];

    if ([v40[5] count])
    {
      v13 = [v9 mutableCopy];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v14 = v40[5];
      v15 = [v14 countByEnumeratingWithState:&v30 objects:v45 count:16];
      if (v15)
      {
        v16 = *v31;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v31 != v16)
            {
              objc_enumerationMutation(v14);
            }

            [v13 replaceOccurrencesOfString:*(*(&v30 + 1) + 8 * i) withString:&stru_2846CE8D8 options:0 range:{0, objc_msgSend(v13, "length")}];
          }

          v15 = [v14 countByEnumeratingWithState:&v30 objects:v45 count:16];
        }

        while (v15);
      }

      v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v19 = [v13 stringByTrimmingCharactersInSet:v18];

      v9 = v19;
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = (*(v20 + 16))(v20, @"processTextContentFromRecord:cancel") ^ 1;
      v22 = *(*(a1 + 40) + 8);
    }

    else
    {
      v22 = *(*(a1 + 40) + 8);
      v21 = *(v22 + 24);
    }

    *(v22 + 24) = v21;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      *a5 = 1;
    }

    if ([v9 length] <= 9)
    {
      v27 = 0;
    }

    else
    {
      v27 = v9;
    }

    v26 = v27;

    _Block_object_dispose(&v39, 8);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v26;
}

void __126__SKGProcessor_PreExtractor__generateLanguageForRecord_processedItem_fetchCachedLanguageBlock_cacheLanguageBlock_cancelBlock___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v14 = [*(a1 + 32) substringWithRange:{a2, a3}];
  if (v14)
  {
    v7 = *(*(*(a1 + 48) + 8) + 40);
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v7 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v7 addObject:v14];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    v12 = (*(v11 + 16))(v11, @"processTextContentFromRecord:cancel") ^ 1;
    v13 = *(*(a1 + 56) + 8);
  }

  else
  {
    v13 = *(*(a1 + 56) + 8);
    v12 = *(v13 + 24);
  }

  *(v13 + 24) = v12;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a5 = 1;
  }
}

void __46__SKGProcessor_People__peopleFromPhotoRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *(a1 + 32);
  if (v14)
  {
    v28[0] = v14;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = 0;
    if (v15)
    {
LABEL_5:
      v27 = v15;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:v24 addresses:0];

      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:0 addresses:0];
  if (v14)
  {
LABEL_6:
  }

LABEL_7:
  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __47__SKGProcessor_People__authorsFromPhoneRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = *(a1 + 32);
  if (v13)
  {
    v30[0] = v13;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v22 = 0;
    if (v14)
    {
LABEL_5:
      v29 = v14;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      if (v15)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
  if (v15)
  {
LABEL_6:
    v28 = v15;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:v24];

    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:0];
  if (v14)
  {
LABEL_7:
  }

LABEL_8:
  if (v13)
  {
  }

  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __50__SKGProcessor_People__recipientsFromPhoneRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = *(a1 + 32);
  if (v13)
  {
    v30[0] = v13;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v22 = 0;
    if (v14)
    {
LABEL_5:
      v29 = v14;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      if (v15)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
  if (v15)
  {
LABEL_6:
    v28 = v15;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:v24];

    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:0];
  if (v14)
  {
LABEL_7:
  }

LABEL_8:
  if (v13)
  {
  }

  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __46__SKGProcessor_People__peopleFromNotesRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *(a1 + 32);
  if (v14)
  {
    v28[0] = v14;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = 0;
    if (v15)
    {
LABEL_5:
      v27 = v15;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:v24 addresses:0];

      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:0 addresses:0];
  if (v14)
  {
LABEL_6:
  }

LABEL_7:
  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __57__SKGProcessor_People__peopleForAttributeKey_fromRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v27 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  v21 = *(a1 + 32);
  if (v13)
  {
    v30[0] = v13;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    if (v14)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v22 = 0;
    if (v14)
    {
LABEL_5:
      v29 = v14;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      if (v15)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  v23 = 0;
  if (v15)
  {
LABEL_6:
    v28 = v15;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:v24];

    if (!v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v25 = [v21 personWithName:v27 alternateName:0 contactIdentifier:v16 personIdentifier:v17 emails:v22 phones:v23 addresses:0];
  if (v14)
  {
LABEL_7:
  }

LABEL_8:
  if (v13)
  {
  }

  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __63__SKGProcessor_People__peopleForSharedAttributeKey_fromRecord___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = *(*(a1 + 40) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *(a1 + 32);
  if (v14)
  {
    v28[0] = v14;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v23 = 0;
    if (v15)
    {
LABEL_5:
      v27 = v15;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:v24 addresses:0];

      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v25 = [v22 personWithName:v13 alternateName:0 contactIdentifier:v17 personIdentifier:v18 emails:v23 phones:0 addresses:0];
  if (v14)
  {
LABEL_6:
  }

LABEL_7:
  if (v25)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v25];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __112__SKGProcessor_People__personWithName_alternateName_contactIdentifier_personIdentifier_emails_phones_addresses___block_invoke(void *a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if ([v18 hasPrefix:@"NameComponents"])
  {
    v8 = a1[4];
    v7 = a1 + 4;
    v6 = v8;
LABEL_7:
    v11 = *(*(v6 + 8) + 40);
    if (v11)
    {
LABEL_10:
      [v11 addObject:v5];
      goto LABEL_11;
    }

    v12 = [MEMORY[0x277CBEB18] array];
LABEL_9:
    v13 = *(*v7 + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v11 = *(*(*v7 + 8) + 40);
    goto LABEL_10;
  }

  if ([v18 hasPrefix:@"Name"])
  {
    v9 = a1[5];
    v7 = a1 + 5;
    v6 = v9;
    goto LABEL_7;
  }

  if ([v18 hasPrefix:@"DisplayName"])
  {
    v10 = a1[6];
    v7 = a1 + 6;
    v6 = v10;
    goto LABEL_7;
  }

  if ([v18 hasPrefix:@"Email"])
  {
    v16 = a1[7];
    v7 = a1 + 7;
    v15 = v16;
LABEL_18:
    v11 = *(*(v15 + 8) + 40);
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    goto LABEL_9;
  }

  if ([v18 hasPrefix:@"Phone"])
  {
    v17 = a1[8];
    v7 = a1 + 8;
    v15 = v17;
    goto LABEL_18;
  }

LABEL_11:
}

void __69__SKGProcessor_People__generateMegadomePeopleUsingBlock_cancelBlock___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 nameComponents];

  if (v6)
  {
    v7 = [v4 nameComponents];
    v8 = [v7 givenNames];
    if ([v8 count])
    {
      v9 = [v4 nameComponents];
      v10 = [v9 givenNames];
      v11 = [v10 firstObject];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 nameComponents];
    v13 = [v12 familyNames];
    if ([v13 count])
    {
      v14 = [v4 nameComponents];
      v15 = [v14 familyNames];
      v16 = [v15 firstObject];
    }

    else
    {
      v16 = 0;
    }

    v17 = [v4 nameComponents];
    v18 = [v17 middleNames];
    if ([v18 count])
    {
      v19 = [v4 nameComponents];
      v20 = [v19 middleNames];
      v21 = [v20 firstObject];
    }

    else
    {
      v21 = 0;
    }

    if (v11 | v16)
    {
      v22 = objc_alloc_init(MEMORY[0x277CCAC00]);
      v23 = v22;
      if (v11)
      {
        [v22 setGivenName:v11];
      }

      if (v16)
      {
        [v23 setFamilyName:v16];
      }

      if (v21)
      {
        [v23 setMiddleName:v21];
      }

      v48 = v21;
      v24 = getNameFormatter();
      v25 = [v24 stringFromPersonNameComponents:v23];

      if ([v25 length])
      {
        v26 = [v4 entityIdentifier];
        v50 = [v26 stringValue];

        v27 = [v4 contactIdentifiers];
        v51 = [v4 phoneNumbers];
        v28 = [v4 emails];
        if ([v27 count] || objc_msgSend(v51, "count") || objc_msgSend(v28, "count"))
        {
          v47 = v16;
          if ([v27 count])
          {
            v29 = v23;
            v45 = v5;
            v46 = v4;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            v44 = v27;
            obj = v27;
            v30 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v54;
              do
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v54 != v32)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v34 = *(*(&v53 + 1) + 8 * i);
                  v35 = [[SKGPersonComponents alloc] initWithName:v25 nameComponents:v29 displayName:v25 emailAddresses:v28 phoneNumbers:v51];
                  [(SKGPersonComponents *)v35 setContactIdentifier:v34];
                  [(SKGPersonComponents *)v35 setEntityIdentifier:v50];
                  v36 = *(a1[6] + 8);
                  (*(a1[4] + 16))();
                  *a3 = *(*(a1[6] + 8) + 24);
                }

                v31 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
              }

              while (v31);
            }

            v5 = v45;
            v4 = v46;
            v27 = v44;
            v16 = v47;
            v23 = v29;
          }

          else
          {
            v37 = [[SKGPersonComponents alloc] initWithName:v25 nameComponents:v23 displayName:v25 emailAddresses:v28 phoneNumbers:v51];
            [(SKGPersonComponents *)v37 setEntityIdentifier:v50];
            v38 = *(a1[6] + 8);
            (*(a1[4] + 16))();
            *a3 = *(*(a1[6] + 8) + 24);

            v16 = v47;
          }
        }
      }

      v21 = v48;
    }
  }

  objc_autoreleasePoolPop(v5);
  v39 = a1[5];
  v40 = *(a1[7] + 8);
  v41 = *(v40 + 24);
  if (v39 && (v41 & 1) != 0)
  {
    v42 = (*(v39 + 16))(v39, @"processPeopleFromRecord:megadome") ^ 1;
    v40 = *(a1[7] + 8);
  }

  else
  {
    v42 = v41 != 0;
  }

  *(v40 + 24) = v42;
  if ((*(*(a1[7] + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __40__SKGProcessor_Embeddings__loadEmbedder__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231B25000, a2, OS_LOG_TYPE_ERROR, "[Document Embedding Generation][SPEmbeddingModel] preheat failed with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "[Document Entities] %@ added to item", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __97__SKGProcessor_Keyphraser__generateKeyphrasesForRecord_processedItem_processorFlags_cancelBlock___block_invoke_37_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 40) bundleIdentifier];
  v7 = 134218242;
  v8 = a2;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_231B25000, a3, OS_LOG_TYPE_DEBUG, "[Document Keyphrases] %lu keyphrase(s) added to item with bundleID %@.", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end