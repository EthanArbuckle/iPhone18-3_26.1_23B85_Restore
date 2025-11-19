@interface SPFeedbackManager
+ (id)sharedManager;
+ (void)bumpPriorityOnQueue:(id)a3 withCompletion:(id)a4;
+ (void)flushFeedbackWithCompletion:(id)a3;
- (BOOL)isParsecFeedbackEnabled;
- (SPFeedbackManager)init;
- (void)_sendFeedback:(id)a3 type:(int64_t)a4;
- (void)_sendFeedback:(id)a3 type:(int64_t)a4 queryId:(unint64_t)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)updateNeedsToDisplayFirstTimeView;
- (void)updateParsecEnabled;
@end

@implementation SPFeedbackManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[SPFeedbackManager sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __34__SPFeedbackManager_sharedManager__block_invoke()
{
  sharedManager_sharedManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateNeedsToDisplayFirstTimeView
{
  feedbackQueue = self->_feedbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SPFeedbackManager_updateNeedsToDisplayFirstTimeView__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(feedbackQueue, block);
}

- (void)updateParsecEnabled
{
  feedbackQueue = self->_feedbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__SPFeedbackManager_updateParsecEnabled__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(feedbackQueue, block);
}

void __54__SPFeedbackManager_updateNeedsToDisplayFirstTimeView__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) defaultsCenter];
  [*(a1 + 32) setNeedsToDisplayFirstTimeView:{objc_msgSend(v2, "integerForKey:", @"SPUISearchFirstTimeShowCount"}];

  v3 = [*(a1 + 32) isParsecFeedbackEnabled];
  v5 = [*(a1 + 32) parsecFeedbackListener];
  v4 = [v5 configuration];
  [v4 setParsecEnabled:v3];
}

- (SPFeedbackManager)init
{
  v12.receiver = self;
  v12.super_class = SPFeedbackManager;
  v2 = [(SPFeedbackManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
    v5 = dispatch_queue_create("com.apple.spotlight.feedback", v4);
    feedbackQueue = v2->_feedbackQueue;
    v2->_feedbackQueue = v5;

    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
    [v7 addObserver:v2 forKeyPath:@"SPUISearchFirstTimeShowCount" options:0 context:0];
    [v7 addObserver:v2 forKeyPath:@"SBSearchDisabledDomains" options:0 context:0];
    [(SPFeedbackManager *)v2 setDefaultsCenter:v7];
    [(SPFeedbackManager *)v2 updateNeedsToDisplayFirstTimeView];
    [(SPFeedbackManager *)v2 updateParsecEnabled];
    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    clientBundleID = v2->_clientBundleID;
    v2->_clientBundleID = v9;

    v2->_clientRankAndBlend = _os_feature_enabled_impl();
    if ([(NSString *)v2->_clientBundleID hasPrefix:@"com.apple.omniSearch"]|| [(NSString *)v2->_clientBundleID hasPrefix:@"com.apple.intelligenceflow"])
    {
      v2->_clientRankAndBlend = 0;
    }
  }

  return v2;
}

- (BOOL)isParsecFeedbackEnabled
{
  if ([(SPFeedbackManager *)self needsToDisplayFirstTimeView])
  {
    return 0;
  }

  return [(SPFeedbackManager *)self isParsecEnabled];
}

void __40__SPFeedbackManager_updateParsecEnabled__block_invoke(uint64_t a1)
{
  v2 = SPGetDisabledDomainSet();
  if ([v2 containsObject:@"DOMAIN_PARSEC"])
  {
    v4 = *(a1 + 32);
    v3 = (a1 + 32);
    [v4 setIsParsecEnabled:0];
  }

  else
  {
    v5 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v6 = [v5 isSpotlightInternetResultsAllowed];
    v7 = *(a1 + 32);
    v3 = (a1 + 32);
    [v7 setIsParsecEnabled:v6];
  }

  v8 = [*v3 isParsecFeedbackEnabled];
  v10 = [*v3 parsecFeedbackListener];
  v9 = [v10 configuration];
  [v9 setParsecEnabled:v8];
}

+ (void)flushFeedbackWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SPFeedbackManager sharedManager];
  v6 = [v5 feedbackQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke;
  v8[3] = &unk_1E82F9420;
  v9 = v4;
  v10 = a1;
  v7 = v4;
  [a1 bumpPriorityOnQueue:v6 withCompletion:v8];
}

void __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = +[SPDaemonConnection sharedBackgroundConnection];
  v4 = [v3 connectionQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_2;
  v5[3] = &unk_1E82F93F8;
  v6 = *(a1 + 32);
  [v2 bumpPriorityOnQueue:v4 withCompletion:v5];
}

void __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = +[SPDaemonConnection sharedBackgroundConnection];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__SPFeedbackManager_flushFeedbackWithCompletion___block_invoke_3;
  v3[3] = &unk_1E82F93F8;
  v4 = *(a1 + 32);
  [v2 barrierOnXPC:v3];
}

+ (void)bumpPriorityOnQueue:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SPFeedbackManager_bumpPriorityOnQueue_withCompletion___block_invoke;
  block[3] = &unk_1E82F93F8;
  v10 = v5;
  v6 = v5;
  v7 = a3;
  v8 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(v7, v8);
}

- (void)_sendFeedback:(id)a3 type:(int64_t)a4 queryId:(unint64_t)a5
{
  v8 = a3;
  feedbackQueue = self->_feedbackQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SPFeedbackManager__sendFeedback_type_queryId___block_invoke;
  v11[3] = &unk_1E82F8FC8;
  v11[4] = self;
  v12 = v8;
  v13 = a5;
  v14 = a4;
  v10 = v8;
  dispatch_async(feedbackQueue, v11);
}

void __48__SPFeedbackManager__sendFeedback_type_queryId___block_invoke(uint64_t a1)
{
  v1 = a1;
  v72 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isParsecFeedbackEnabled])
  {
    [*(*(v1 + 32) + 32) reportFeedback:*(v1 + 40) queryId:*(v1 + 48)];
  }

  if (*(v1 + 56) == 26)
  {
    v2 = v1;
    v3 = *(v1 + 40);
    v4 = [v3 result];
    v5 = [v3 cardSection];
    v6 = [v5 spotlightBackingResult];

    v7 = [v6 resultBundleId];
    v8 = [v7 isEqualToString:*MEMORY[0x1E69D3F78]];

    if (v8)
    {
      v9 = v6;

      v4 = v9;
    }

    v10 = [v3 triggerEvent];
    v1 = v2;
    if (v4 && (v10 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 query], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v12 = [v4 userInput];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v4 completion];
        }

        v11 = v14;

        v1 = v2;
      }

      [MEMORY[0x1E69D3E98] cacheResult:v4 searchString:v11];
    }
  }

  v15 = *(v1 + 40);
  v16 = *(v1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = *(v1 + 40);
    v18 = [v17 copy];
    [v18 setQueryId:{objc_msgSend(v17, "queryId")}];
    v19 = [v17 cardSection];
    v20 = [v19 spotlightBackingResult];
    if (v20)
    {
      v21 = v18;
      [v18 setResult:v20];
    }

    else
    {
      [v17 result];
      v23 = v22 = v1;
      v21 = v18;
      [v18 setResult:v23];

      v1 = v22;
    }

    v15 = v21;
  }

  v24 = *(v1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v15;
    v55 = v1;
    v25 = *(v1 + 40);
    v26 = [v25 copy];
    v27 = [v25 uniqueIdsOfVisibleButtons];
    [v26 setUniqueIdsOfVisibleButtons:v27];

    v28 = [v25 uniqueIdentifiersOfVisibleCardSections];
    [v26 setUniqueIdentifiersOfVisibleCardSections:v28];

    v53 = v25;
    v29 = [v25 goTakeoverResult];
    [v26 setGoTakeoverResult:v29];

    v30 = [v26 results];
    v31 = objc_opt_new();
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v30;
    v32 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (!v32)
    {
      goto LABEL_47;
    }

    v33 = v32;
    v34 = *v67;
    v35 = 0x1E69C9000uLL;
    v56 = *v67;
    while (1)
    {
      v36 = 0;
      v57 = v33;
      do
      {
        if (*v67 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v66 + 1) + 8 * v36);
        if ([v37 usesCompactDisplay])
        {
          [v37 compactCard];
        }

        else
        {
          [v37 inlineCard];
        }
        v38 = ;
        v39 = [v38 cardSections];
        v40 = [v39 firstObject];

        v41 = *(v35 + 3928);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v60 = v38;
          v61 = v36;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v59 = v40;
          v42 = [v40 cardSections];
          v43 = [v42 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (!v43)
          {
            goto LABEL_43;
          }

          v44 = v43;
          v45 = *v63;
          while (1)
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v63 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v62 + 1) + 8 * i);
              v48 = [v26 uniqueIdentifiersOfVisibleCardSections];
              v49 = [v47 cardSectionId];
              if ([v48 containsObject:v49])
              {
                v50 = [v47 spotlightBackingResult];

                if (!v50)
                {
                  continue;
                }

                v48 = [v47 spotlightBackingResult];
                [v31 addObject:v48];
              }

              else
              {
              }
            }

            v44 = [v42 countByEnumeratingWithState:&v62 objects:v70 count:16];
            if (!v44)
            {
LABEL_43:

              v34 = v56;
              v33 = v57;
              v35 = 0x1E69C9000;
              v38 = v60;
              v36 = v61;
              v40 = v59;
              goto LABEL_45;
            }
          }
        }

        [v31 addObject:v37];
LABEL_45:

        ++v36;
      }

      while (v36 != v33);
      v33 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (!v33)
      {
LABEL_47:

        [v26 setResults:v31];
        v1 = v55;
        goto LABEL_49;
      }
    }
  }

  v26 = v15;
LABEL_49:
  if (*(*(v1 + 32) + 8) == 1)
  {
    v51 = +[SPSearchFeedbackProxy sharedProxy];
    [v51 sendFeedbackType:*(v1 + 56) feedback:v26 queryId:*(v1 + 48) clientID:*(*(v1 + 32) + 16)];
  }

  else
  {
    v51 = +[SPDaemonConnection sharedBackgroundConnection];
    [v51 sendSFFeedback:v26 type:*(v1 + 56) queryId:*(v1 + 48)];
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)_sendFeedback:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  -[SPFeedbackManager _sendFeedback:type:queryId:](self, "_sendFeedback:type:queryId:", v6, a4, [v6 queryId]);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([v10 isEqualToString:@"SPUISearchFirstTimeShowCount"])
  {
    [(SPFeedbackManager *)self updateNeedsToDisplayFirstTimeView];
  }

  else if ([v10 isEqualToString:@"SBSearchDisabledDomains"])
  {
    [(SPFeedbackManager *)self updateParsecEnabled];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SPFeedbackManager;
    if ([(SPFeedbackManager *)&v14 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v13.receiver = self;
      v13.super_class = SPFeedbackManager;
      [(SPFeedbackManager *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }
  }
}

@end