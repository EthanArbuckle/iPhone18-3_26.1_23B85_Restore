@interface SPDictionaryQuery
+ (void)initialize;
- (void)start;
@end

@implementation SPDictionaryQuery

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = dispatch_queue_create("SPDictionaryQuery.activation", 0);
    v3 = sActivationQueue;
    sActivationQueue = v2;

    sQueryQueue = dispatch_queue_create("SPDictionaryQuery.query", 0);

    MEMORY[0x2821F96F8]();
  }
}

void __29__SPDictionaryQuery_activate__block_invoke()
{
  active = DCSCopyActiveDictionaries();
  os_unfair_lock_lock(&sDictionaryLock);
  v1 = sDictionaries;
  sDictionaries = active;

  os_unfair_lock_unlock(&sDictionaryLock);
}

void __31__SPDictionaryQuery_deactivate__block_invoke()
{
  os_unfair_lock_lock(&sDictionaryLock);
  v0 = sDictionaries;
  sDictionaries = 0;

  os_unfair_lock_unlock(&sDictionaryLock);
}

- (void)start
{
  v17.receiver = self;
  v17.super_class = SPDictionaryQuery;
  [(SPKQuery *)&v17 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:5])
  {
    v3 = [(SPKQuery *)self queryContext];
    v4 = [(SPKQuery *)self delegate];
    v5 = [v4 queryIdent];
    v6 = [v4 clientBundleID];
    v7 = objc_alloc(MEMORY[0x277D4C658]);
    v8 = [v3 searchString];
    v9 = [v7 initWithInput:v8 triggerEvent:objc_msgSend(v3 indexType:"whyQuery") queryId:{6, v5}];

    v10 = [MEMORY[0x277D4BEC0] sharedProxy];
    [v10 sendFeedbackType:5 feedback:v9 queryId:v5 clientID:v6];

    v11 = sQueryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__SPDictionaryQuery_start__block_invoke;
    block[3] = &unk_279CFE1A8;
    block[4] = self;
    v15 = v9;
    v16 = v6;
    v12 = v6;
    v13 = v9;
    dispatch_async(v11, block);
  }
}

void __26__SPDictionaryQuery_start__block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x277D85DE8];
  if (kPlaceHolderInputName_block_invoke_definitionStringInitOnceToken != -1)
  {
    __26__SPDictionaryQuery_start__block_invoke_cold_1();
  }

  v2 = [*(a1 + 32) queryContext];
  v3 = [v2 getTrimmedSearchString];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 length];
  if (v6 > [kPlaceHolderInputName_block_invoke_definitionString1 length] && objc_msgSend(v4, "hasPrefix:", kPlaceHolderInputName_block_invoke_definitionString1) && (v7 = &kPlaceHolderInputName_block_invoke_definitionString1, (objc_msgSend(v5, "characterIsMember:", objc_msgSend(v4, "characterAtIndex:", objc_msgSend(kPlaceHolderInputName_block_invoke_definitionString1, "length"))) & 1) != 0) || v6 > objc_msgSend(kPlaceHolderInputName_block_invoke_definitionString2, "length") && objc_msgSend(v4, "hasPrefix:", kPlaceHolderInputName_block_invoke_definitionString2) && (v7 = &kPlaceHolderInputName_block_invoke_definitionString2, objc_msgSend(v5, "characterIsMember:", objc_msgSend(v4, "characterAtIndex:", objc_msgSend(kPlaceHolderInputName_block_invoke_definitionString2, "length")))))
  {
    v8 = *v7;
    v9 = v8;
    if (v8)
    {
      [v4 deleteCharactersInRange:{0, objc_msgSend(v8, "length")}];
      v10 = [v4 stringByTrimmingCharactersInSet:v5];
      v11 = [v10 mutableCopy];

      v63 = 1;
      v4 = v11;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

  v63 = 0;
LABEL_13:
  os_unfair_lock_lock(&sDictionaryLock);
  if ([sDictionaries count])
  {
    v12 = objc_opt_class();
    NSStringFromClass(v12);
    v13 = DCSSearchFoundationCopyResultsWithOptions();
    os_unfair_lock_unlock(&sDictionaryLock);
    if ([v13 count])
    {
      v57 = v9;
      v58 = v5;
      v14 = objc_opt_new();
      v62 = objc_opt_new();
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v56 = v13;
      obj = v13;
      v15 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      v61 = *MEMORY[0x277D65A60];
      if (v15)
      {
        v16 = v15;
        v17 = *v67;
        v59 = v14;
        v60 = *v67;
        do
        {
          v18 = 0;
          v64 = v16;
          do
          {
            if (*v67 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v66 + 1) + 8 * v18);
            v20 = [v19 footnote];
            if (([v14 containsObject:v20] & 1) == 0)
            {
              [v14 addObject:v20];
              [v62 addObject:v19];
              v21 = [*(a1 + 32) queryContext];
              v22 = [v21 searchString];
              [v19 setUserInput:v22];

              v23 = [*(a1 + 32) queryContext];
              [v19 setQueryId:{objc_msgSend(v23, "queryIdent")}];

              if (v63)
              {
                [v19 setTopHit:SSSetTopHitWithReasonString()];
              }

              [v19 setType:8];
              [v19 setResultBundleId:v61];
              v24 = [v19 title];
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              v26 = [v19 title];
              v27 = v26;
              if (isKindOfClass)
              {
                v28 = [v26 formattedTextPieces];
                if (v28)
                {
                  v29 = [v27 formattedTextPieces];
                  [v29 firstObject];
                  v30 = a1;
                  v32 = v31 = v4;
                  v33 = [v32 text];

                  v4 = v31;
                  a1 = v30;
                  v14 = v59;
                }

                else
                {
                  v33 = [v27 text];
                }
              }

              else
              {
                v33 = [v26 text];
              }

              [v19 setCompletion:v33];
              v34 = objc_opt_new();
              [v34 setSymbolName:@"book.closed.fill"];
              [v34 setIsTemplate:1];
              v35 = [v19 card];
              [v35 setTitleImage:v34];

              v36 = [v19 card];
              [v36 setTitle:v4];

              v17 = v60;
              v16 = v64;
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v16);
      }

      v37 = objc_opt_new();
      [v37 setMaxInitiallyVisibleResults:1];
      [v37 setBundleIdentifier:v61];
      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v39 = [v38 localizedStringForKey:@"DOMAIN_DICTIONARY" value:&stru_287C35638 table:@"Search"];
      [v37 setTitle:v39];

      [v37 setResults:v62];
      v40 = objc_alloc(MEMORY[0x277D65860]);
      v41 = [*(a1 + 32) queryGroupId];
      v70 = v37;
      v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
      v43 = [v40 initWithQueryID:v41 sourceKind:5 sections:v42];

      v44 = [*(a1 + 32) responseHandler];
      (v44)[2](v44, v43);

      v45 = [MEMORY[0x277D4BEC0] sharedProxy];
      v46 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:*(a1 + 40)];
      [v45 sendFeedbackType:6 feedback:v46 queryId:objc_msgSend(*(a1 + 40) clientID:{"queryId"), *(a1 + 48)}];

      v9 = v57;
      v5 = v58;
      v13 = v56;
    }

    else
    {
      v51 = objc_alloc(MEMORY[0x277D65860]);
      v52 = [*(a1 + 32) queryGroupId];
      v53 = [v51 initWithQueryID:v52 sourceKind:5 sections:MEMORY[0x277CBEBF8]];
      v54 = [*(a1 + 32) responseHandler];
      (v54)[2](v54, v53);
    }
  }

  else
  {
    os_unfair_lock_unlock(&sDictionaryLock);
    v47 = objc_alloc(MEMORY[0x277D65860]);
    v48 = [*(a1 + 32) queryGroupId];
    v49 = [v47 initWithQueryID:v48 sourceKind:5 sections:MEMORY[0x277CBEBF8]];
    v50 = [*(a1 + 32) responseHandler];
    (v50)[2](v50, v49);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void __26__SPDictionaryQuery_start__block_invoke_2()
{
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.Search.framework"];
  v0 = [v4 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_1" value:&stru_287C35638 table:@"Search"];
  v1 = kPlaceHolderInputName_block_invoke_definitionString1;
  kPlaceHolderInputName_block_invoke_definitionString1 = v0;

  v2 = [v4 localizedStringForKey:@"DICTIONARY_DEFINITION_TRIGGER_2" value:&stru_287C35638 table:@"Search"];
  v3 = kPlaceHolderInputName_block_invoke_definitionString2;
  kPlaceHolderInputName_block_invoke_definitionString2 = v2;
}

@end