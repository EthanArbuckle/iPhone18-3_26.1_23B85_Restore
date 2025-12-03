@interface WBSScribbleValidator
- (WBSScribbleValidator)initWithWebView:(id)view elements:(id)elements excludedTargets:(id)targets completion:(id)completion;
- (void)_addSimilarTargets:(id)targets element:(id)element;
- (void)_collectSimilarTargetsWithCompletion:(id)completion;
- (void)_compareRenderedTextWithCompletion:(id)completion;
- (void)_findTargetsUsingHitTest:(id)test completion:(id)completion;
- (void)_findTargetsUsingSelectors:(id)selectors completion:(id)completion;
- (void)_findTargetsUsingTextSearch:(id)search completion:(id)completion;
- (void)_invokeCompletionBlock;
- (void)_removeHiddenResultsAndAddInFlowElements;
- (void)_removeHiddenResultsWithSimilarURLs;
- (void)_removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded;
- (void)_removeTargetsToRevealIfNeeded;
- (void)_startValidation;
- (void)forEachSimilarTargetedElement:(id)element;
- (void)invalidate;
@end

@implementation WBSScribbleValidator

- (WBSScribbleValidator)initWithWebView:(id)view elements:(id)elements excludedTargets:(id)targets completion:(id)completion
{
  viewCopy = view;
  elementsCopy = elements;
  targetsCopy = targets;
  completionCopy = completion;
  v39.receiver = self;
  v39.super_class = WBSScribbleValidator;
  v14 = [(WBSScribbleValidator *)&v39 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_webView, viewCopy);
    v16 = [elementsCopy copy];
    elementsToValidate = v15->_elementsToValidate;
    v15->_elementsToValidate = v16;

    v18 = [targetsCopy copy];
    targetsToExclude = v15->_targetsToExclude;
    v15->_targetsToExclude = v18;

    v20 = objc_opt_new();
    targetsToReveal = v15->_targetsToReveal;
    v15->_targetsToReveal = v20;

    v22 = objc_opt_new();
    targetingResults = v15->_targetingResults;
    v15->_targetingResults = v22;

    v24 = objc_opt_new();
    targetsToHideUsingDisplayNone = v15->_targetsToHideUsingDisplayNone;
    v15->_targetsToHideUsingDisplayNone = v24;

    v26 = objc_opt_new();
    targetsToHideUsingPaintAvoidance = v15->_targetsToHideUsingPaintAvoidance;
    v15->_targetsToHideUsingPaintAvoidance = v26;

    v28 = objc_opt_new();
    similarTargetsAndElements = v15->_similarTargetsAndElements;
    v15->_similarTargetsAndElements = v28;

    v30 = objc_opt_new();
    targetToScribbleElementWithMatchingSelectorsMap = v15->_targetToScribbleElementWithMatchingSelectorsMap;
    v15->_targetToScribbleElementWithMatchingSelectorsMap = v30;

    v32 = _Block_copy(completionCopy);
    completionBlock = v15->_completionBlock;
    v15->_completionBlock = v32;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __76__WBSScribbleValidator_initWithWebView_elements_excludedTargets_completion___block_invoke;
    block[3] = &unk_1E8283080;
    v34 = v15;
    v38 = v34;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    v35 = v34;
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  return v15;
}

- (void)_startValidation
{
  v2 = *(self + 16);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v4, v5, "Validating %zu scribble element(s)", v6, v7, v8, v9, 0);
}

void __40__WBSScribbleValidator__startValidation__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXScribble();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __40__WBSScribbleValidator__startValidation__block_invoke_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([MEMORY[0x1E69C8880] scribbleRequiresVisualSimilarity])
    {
      [WeakRetained _removeHiddenResultsWithSimilarURLs];
    }

    else
    {
      [WeakRetained _removeHiddenResultsAndAddInFlowElements];
    }

    [WeakRetained _removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__WBSScribbleValidator__startValidation__block_invoke_51;
    v4[3] = &unk_1E8284F48;
    objc_copyWeak(v5, (a1 + 40));
    v5[1] = *(a1 + 48);
    [WeakRetained _compareRenderedTextWithCompletion:v4];
    objc_destroyWeak(v5);
  }

  else
  {
    [0 _invokeCompletionBlock];
  }
}

void __40__WBSScribbleValidator__startValidation__block_invoke_51(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _removeTargetsToRevealIfNeeded];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v5 = v4;
    v6 = *(a1 + 40);
    v7 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__WBSScribbleValidator__startValidation__block_invoke_51_cold_1(v7, v5, v6);
    }

    WeakRetained = v3;
  }

  [WeakRetained _invokeCompletionBlock];
}

- (void)invalidate
{
  objc_storeWeak(&self->_webView, 0);

  [(WBSScribbleValidator *)self _invokeCompletionBlock];
}

- (void)_invokeCompletionBlock
{
  v5 = _Block_copy(self->_completionBlock);
  completionBlock = self->_completionBlock;
  self->_completionBlock = 0;

  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, self);
    v4 = v5;
  }
}

- (void)_collectSimilarTargetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  objc_initWeak(&location, self);
  elementsToValidate = self->_elementsToValidate;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__WBSScribbleValidator__collectSimilarTargetsWithCompletion___block_invoke;
  v8[3] = &unk_1E8284FC0;
  objc_copyWeak(&v11, &location);
  v7 = v5;
  v9 = v7;
  selfCopy = self;
  [(NSArray *)elementsToValidate enumerateObjectsUsingBlock:v8];
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], completionCopy);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __61__WBSScribbleValidator__collectSimilarTargetsWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__WBSScribbleValidator__collectSimilarTargetsWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E8284F98;
  objc_copyWeak(&v9, a1 + 6);
  v7 = a1[4];
  v4 = v3;
  v8 = v4;
  v5 = _Block_copy(aBlock);
  dispatch_group_enter(a1[4]);
  [a1[5] _findTargetsUsingHitTest:v4 completion:v5];
  dispatch_group_enter(a1[4]);
  [a1[5] _findTargetsUsingTextSearch:v4 completion:v5];
  dispatch_group_enter(a1[4]);
  [a1[5] _findTargetsUsingSelectors:v4 completion:v5];

  objc_destroyWeak(&v9);
}

void __61__WBSScribbleValidator__collectSimilarTargetsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _addSimilarTargets:v5 element:*(a1 + 40)];
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_addSimilarTargets:(id)targets element:(id)element
{
  v37 = *MEMORY[0x1E69E9840];
  targetsCopy = targets;
  elementCopy = element;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [targetsCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    selfCopy = self;
    v24 = targetsCopy;
    v22 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(targetsCopy);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        if (([v11 isNearbyTarget] & 1) == 0)
        {
          targetsToExclude = self->_targetsToExclude;
          v30[0] = MEMORY[0x1E69E9820];
          v30[1] = 3221225472;
          v30[2] = __51__WBSScribbleValidator__addSimilarTargets_element___block_invoke;
          v30[3] = &unk_1E8284FE8;
          v30[4] = v11;
          if (([(NSArray *)targetsToExclude safari_containsObjectPassingTest:v30]& 1) == 0)
          {
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v13 = self->_targetingResults;
            v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v27;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v27 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v18 = *(*(&v26 + 1) + 8 * j);
                  target = [v18 target];
                  v20 = [target isSameElement:v11];

                  if (v20)
                  {
                    [v18 addElement:elementCopy];
                    self = selfCopy;
                    goto LABEL_18;
                  }
                }

                v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v26 objects:v35 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            self = selfCopy;
            targetingResults = selfCopy->_targetingResults;
            v13 = [[WBSElementTargetingResult alloc] initWithTarget:v11 element:elementCopy];
            [(NSMutableArray *)targetingResults addObject:v13];
LABEL_18:

            targetsCopy = v24;
            v9 = v22;
          }
        }
      }

      v8 = [targetsCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v8);
  }
}

- (void)_findTargetsUsingHitTest:(id)test completion:(id)completion
{
  testCopy = test;
  completionCopy = completion;
  if ([testCopy isOutOfFlow])
  {
    WeakRetained = objc_loadWeakRetained(&self->_webView);
    if (WeakRetained)
    {
      [testCopy hitTestLocationInWebView:WeakRetained];
      v10 = [objc_alloc(MEMORY[0x1E6985400]) initWithPoint:{v8, v9}];
      [v10 setCanIncludeNearbyElements:0];
      [WeakRetained _requestTargetedElementInfo:v10 completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)_findTargetsUsingTextSearch:(id)search completion:(id)completion
{
  searchCopy = search;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  if (WeakRetained)
  {
    searchableText = [searchCopy searchableText];
    if ([searchableText length])
    {
      v9 = [objc_alloc(MEMORY[0x1E6985400]) initWithSearchText:searchableText];
      [v9 setCanIncludeNearbyElements:0];
      [WeakRetained _requestTargetedElementInfo:v9 completionHandler:completionCopy];
    }

    else
    {
      completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
    }
  }

  else
  {
    completionCopy[2](completionCopy, MEMORY[0x1E695E0F0]);
  }
}

- (void)_findTargetsUsingSelectors:(id)selectors completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  selectorsCopy = selectors;
  completionCopy = completion;
  v8 = objc_opt_new();
  WeakRetained = objc_loadWeakRetained(&self->_webView);
  v18 = completionCopy;
  v19 = selectorsCopy;
  if (WeakRetained)
  {
    v10 = v8;
    v11 = dispatch_group_create();
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    allSelectorsIncludingShadowHosts = [selectorsCopy allSelectorsIncludingShadowHosts];
    v13 = [allSelectorsIncludingShadowHosts countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(allSelectorsIncludingShadowHosts);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          if ([v16 count])
          {
            dispatch_group_enter(v11);
            v17 = [objc_alloc(MEMORY[0x1E6985400]) initWithSelectors:v16];
            [v17 setCanIncludeNearbyElements:0];
            objc_initWeak(&location, self);
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __62__WBSScribbleValidator__findTargetsUsingSelectors_completion___block_invoke;
            v23[3] = &unk_1E8285010;
            objc_copyWeak(&v27, &location);
            v24 = v10;
            v25 = v19;
            v26 = v11;
            [WeakRetained _requestTargetedElementInfo:v17 completionHandler:v23];

            objc_destroyWeak(&v27);
            objc_destroyWeak(&location);
          }
        }

        v13 = [allSelectorsIncludingShadowHosts countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__WBSScribbleValidator__findTargetsUsingSelectors_completion___block_invoke_2;
    block[3] = &unk_1E8284B78;
    v22 = v18;
    v21 = v10;
    dispatch_group_notify(v11, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v10 = v8;
    (*(completionCopy + 2))(completionCopy, v8);
  }
}

void __62__WBSScribbleValidator__findTargetsUsingSelectors_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) addObjectsFromArray:v3];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [WeakRetained[9] setObject:*(a1 + 40) forKey:{*(*(&v10 + 1) + 8 * v9++), v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    dispatch_group_leave(*(a1 + 48));
  }
}

- (void)_removeHiddenResultsAndAddInFlowElements
{
  targetingResults = self->_targetingResults;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __64__WBSScribbleValidator__removeHiddenResultsAndAddInFlowElements__block_invoke;
  v3[3] = &unk_1E8285038;
  v3[4] = self;
  [(NSMutableArray *)targetingResults safari_removeObjectsPassingTest:v3];
}

uint64_t __64__WBSScribbleValidator__removeHiddenResultsAndAddInFlowElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 target];
  v5 = [v4 isInVisibilityAdjustmentSubtree];

  if (v5)
  {
    if ([v3 isBackedByGlobalAction])
    {
      v6 = 40;
    }

    else
    {
      v7 = [v3 target];
      v8 = [v7 safari_isOutOfFlow];

      v6 = 48;
      if (v8)
      {
        v6 = 40;
      }
    }

    v9 = *(*(a1 + 32) + v6);
    v10 = [v3 target];
    [v9 addObject:v10];
  }

  return v5;
}

- (void)_removeHiddenResultsWithSimilarURLs
{
  targetingResults = self->_targetingResults;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__WBSScribbleValidator__removeHiddenResultsWithSimilarURLs__block_invoke;
  v3[3] = &unk_1E8285038;
  v3[4] = self;
  [(NSMutableArray *)targetingResults safari_removeObjectsPassingTest:v3];
}

uint64_t __59__WBSScribbleValidator__removeHiddenResultsWithSimilarURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 target];
  v5 = [v4 isInVisibilityAdjustmentSubtree];

  if (v5)
  {
    v20 = 0;
    v6 = [v3 computeURLSimilarity:&v20];
    v7 = v20;
    v8 = v7;
    v5 = 0;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        if (v6 != 3)
        {
LABEL_15:
          v5 = 1;
          goto LABEL_16;
        }

        if ([v7 isBackedByGlobalAction])
        {
          v9 = 40;
        }

        else
        {
          v10 = [v3 target];
          v11 = [v10 safari_isOutOfFlow];

          v9 = 48;
          if (v11)
          {
            v9 = 40;
          }
        }

        v12 = *(*(a1 + 32) + v9);
        v13 = [v3 target];
        [v12 addObject:v13];

        v14 = *(*(a1 + 32) + 64);
        v15 = [WBSScribbleElementAndTarget alloc];
        v16 = [v3 target];
        v17 = [(WBSScribbleElementAndTarget *)v15 initWithElement:v8 target:v16];
        [v14 addObject:v17];

LABEL_13:
        v18 = WBS_LOG_CHANNEL_PREFIXScribble();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          __59__WBSScribbleValidator__removeHiddenResultsWithSimilarURLs__block_invoke_cold_1(v18, v3, v8);
        }

        goto LABEL_15;
      }
    }

    else if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

LABEL_16:
  }

  return v5;
}

- (void)_removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded
{
  targetingResults = self->_targetingResults;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__WBSScribbleValidator__removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded__block_invoke;
  v3[3] = &unk_1E8285038;
  v3[4] = self;
  [(NSMutableArray *)targetingResults safari_removeObjectsPassingTest:v3];
}

uint64_t __83__WBSScribbleValidator__removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  if (!WeakRetained)
  {
LABEL_9:
    v5 = 1;
    goto LABEL_10;
  }

  if (([v3 hasSimilarGeometryInView:WeakRetained] & 1) == 0)
  {
    if ([MEMORY[0x1E69C8880] scribbleRequiresVisualSimilarity])
    {
      v6 = [v3 target];
      v7 = [v6 isInVisibilityAdjustmentSubtree];

      if (v7)
      {
        v8 = *(*(a1 + 32) + 56);
        v9 = [v3 target];
        [v8 addObject:v9];
      }
    }

    v10 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __83__WBSScribbleValidator__removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded__block_invoke_cold_1(v10, v3);
    }

    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)_compareRenderedTextWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  objc_initWeak(&location, self);
  targetingResults = self->_targetingResults;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__WBSScribbleValidator__compareRenderedTextWithCompletion___block_invoke;
  v8[3] = &unk_1E82850A8;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [(NSMutableArray *)targetingResults enumerateObjectsUsingBlock:v8];
  dispatch_group_notify(v7, MEMORY[0x1E69E96A0], completionCopy);
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);
}

void __59__WBSScribbleValidator__compareRenderedTextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__WBSScribbleValidator__compareRenderedTextWithCompletion___block_invoke_2;
  v5[3] = &unk_1E8285080;
  objc_copyWeak(&v8, (a1 + 40));
  v6 = *(a1 + 32);
  v4 = v3;
  v7 = v4;
  [v4 checkForSimilarRenderedText:v5];

  objc_destroyWeak(&v8);
}

void __59__WBSScribbleValidator__compareRenderedTextWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = @"similar text";
    if (a2 == 1)
    {
      v7 = @"different text";
    }

    if (a2 == 2)
    {
      v7 = @"no text";
    }

    v8 = v7;
    v9 = WBS_LOG_CHANNEL_PREFIXScribble();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v22 = [*(a1 + 40) target];
      v23 = [v22 debugDescription];
      if (v5)
      {
        v25 = [v5 isBackedByGlobalAction];
        v24 = @"per-site";
        if (v25)
        {
          v24 = @"global";
        }
      }

      else
      {
        v24 = @"no";
      }

      *buf = 138412803;
      v27 = v8;
      v28 = 2113;
      v29 = v23;
      v30 = 2112;
      v31 = v24;
      _os_log_debug_impl(&dword_1C6968000, v9, OS_LOG_TYPE_DEBUG, "- Found %@: %{private}@ (%@ rule)", buf, 0x20u);
    }

    if (a2 == 1)
    {
      if (![MEMORY[0x1E69C8880] scribbleRequiresVisualSimilarity])
      {
        goto LABEL_19;
      }

      v13 = [*(a1 + 40) target];
      v14 = [v13 isInVisibilityAdjustmentSubtree];

      if (!v14)
      {
        goto LABEL_19;
      }

      v15 = WeakRetained[7];
      v16 = [*(a1 + 40) target];
      [v15 addObject:v16];
    }

    else
    {
      if (a2)
      {
LABEL_19:
        dispatch_group_leave(*(a1 + 32));

        goto LABEL_20;
      }

      if (([v5 isBackedByGlobalAction] & 1) != 0 || (objc_msgSend(*(a1 + 40), "target"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "safari_isOutOfFlow"), v10, v11))
      {
        v12 = WeakRetained + 5;
      }

      else
      {
        v12 = WeakRetained + 6;
      }

      v17 = *v12;
      v18 = [*(a1 + 40) target];
      [v17 addObject:v18];

      v19 = WeakRetained[8];
      v20 = [WBSScribbleElementAndTarget alloc];
      v16 = [*(a1 + 40) target];
      v21 = [(WBSScribbleElementAndTarget *)v20 initWithElement:v5 target:v16];
      [v19 addObject:v21];
    }

    goto LABEL_19;
  }

  dispatch_group_leave(*(a1 + 32));
LABEL_20:
}

__CFString *__59__WBSScribbleValidator__compareRenderedTextWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = @"similar text";
  if (v1 == 1)
  {
    v2 = @"different text";
  }

  if (v1 == 2)
  {
    return @"no text";
  }

  else
  {
    return v2;
  }
}

- (void)forEachSimilarTargetedElement:(id)element
{
  v24 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_similarTargetsAndElements;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        target = [v10 target];
        if (target && (v12 = target, [v10 element], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
        {
          target2 = [v10 target];
          element = [v10 element];
          elementCopy[2](elementCopy, target2, element);
        }

        else
        {
          v16 = WBS_LOG_CHANNEL_PREFIXScribble();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(WBSScribbleValidator *)&v17 forEachSimilarTargetedElement:v18, v16];
          }
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)_removeTargetsToRevealIfNeeded
{
  v7 = a2;
  v8 = [a3 debugDescription];
  *self = 138477827;
  *a4 = v8;
  _os_log_debug_impl(&dword_1C6968000, v7, OS_LOG_TYPE_DEBUG, "- Keeping %{private}@ hidden to avoid partially hidden content", self, 0xCu);
}

void __40__WBSScribbleValidator__startValidation__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0_0(&dword_1C6968000, v4, v5, "- Found %zu potentially similar target(s)", v6, v7, v8, v9, 0);
}

void __40__WBSScribbleValidator__startValidation__block_invoke_51_cold_1(os_log_t log, double a2, double a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = (a2 - a3) * 1000.0;
  _os_log_debug_impl(&dword_1C6968000, log, OS_LOG_TYPE_DEBUG, "- Finished validation in %.0f ms", &v3, 0xCu);
}

void __59__WBSScribbleValidator__removeHiddenResultsWithSimilarURLs__block_invoke_cold_1(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = [a2 target];
  v7 = [v6 debugDescription];
  [a3 isBackedByGlobalAction];
  OUTLINED_FUNCTION_1_6(&dword_1C6968000, v8, v9, "- Found similar URLs: %{private}@ (%@)", v10, v11, v12, v13, 3u);
}

void __83__WBSScribbleValidator__removeResultsWithDifferentGeometryAndRevealTargetsIfNeeded__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 target];
  [v4 isInVisibilityAdjustmentSubtree];
  v5 = [a2 target];
  v12 = [v5 debugDescription];
  OUTLINED_FUNCTION_1_6(&dword_1C6968000, v6, v7, "- Found different geometry%@: %{private}@", v8, v9, v10, v11, 3u);
}

- (void)forEachSimilarTargetedElement:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error: targeted element hidden by validation is not similar to any scribble element", buf, 2u);
}

@end