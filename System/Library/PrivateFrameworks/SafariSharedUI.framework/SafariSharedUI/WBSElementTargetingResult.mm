@interface WBSElementTargetingResult
- (BOOL)hasSimilarGeometryInView:(id)view;
- (WBSElementTargetingResult)initWithTarget:(id)target element:(id)element;
- (int64_t)computeURLSimilarity:(id *)similarity;
- (void)_forEachPotentiallySimilarElement:(id)element;
- (void)addElement:(id)element;
- (void)checkForSimilarRenderedText:(id)text;
@end

@implementation WBSElementTargetingResult

- (WBSElementTargetingResult)initWithTarget:(id)target element:(id)element
{
  targetCopy = target;
  elementCopy = element;
  v17.receiver = self;
  v17.super_class = WBSElementTargetingResult;
  v9 = [(WBSElementTargetingResult *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_target, target);
    v11 = [MEMORY[0x1E695DFA8] setWithObject:elementCopy];
    globalElements = v10->_globalElements;
    v10->_globalElements = v11;

    v13 = [MEMORY[0x1E695DFA8] setWithObject:elementCopy];
    perSiteElements = v10->_perSiteElements;
    v10->_perSiteElements = v13;

    v15 = v10;
  }

  return v10;
}

- (void)addElement:(id)element
{
  elementCopy = element;
  isBackedByGlobalAction = [elementCopy isBackedByGlobalAction];
  v5 = 16;
  if (isBackedByGlobalAction)
  {
    v5 = 8;
  }

  [*(&self->super.isa + v5) addObject:elementCopy];
}

- (void)_forEachPotentiallySimilarElement:(id)element
{
  v29 = *MEMORY[0x1E69E9840];
  elementCopy = element;
  v25 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  perSiteElements = self->_perSiteElements;
  v27[0] = self->_globalElements;
  v27[1] = perSiteElements;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v12 = v11;
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v18;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v18 != v15)
              {
                objc_enumerationMutation(v12);
              }

              elementCopy[2](elementCopy, *(*(&v17 + 1) + 8 * j), &v25);
              if (v25)
              {

                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v17 objects:v26 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v8);
  }

LABEL_18:
}

- (int64_t)computeURLSimilarity:(id *)similarity
{
  if (similarity)
  {
    *similarity = 0;
  }

  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  mediaAndLinkURLs = [(_WKTargetedElementInfo *)self->_target mediaAndLinkURLs];
  v6 = __50__WBSElementTargetingResult_computeURLSimilarity___block_invoke(mediaAndLinkURLs, mediaAndLinkURLs);

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__WBSElementTargetingResult_computeURLSimilarity___block_invoke_2;
  v10[3] = &unk_1E8284E88;
  v12 = &__block_literal_global_13;
  v7 = v6;
  v11 = v7;
  v13 = &v16;
  v14 = &v22;
  v15 = &v26;
  [(WBSElementTargetingResult *)self _forEachPotentiallySimilarElement:v10];
  if (similarity)
  {
    *similarity = v17[5];
  }

  if (*(v23 + 24) == 1)
  {
    if ([v7 count])
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = *(v27 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  return v8;
}

id __50__WBSElementTargetingResult_computeURLSimilarity___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) safari_URLByRemovingQuery];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

void __50__WBSElementTargetingResult_computeURLSimilarity___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = *(a1 + 40);
  v10 = v6;
  v8 = [v6 mediaAndLinkURLs];
  v9 = (*(v7 + 16))(v7, v8);

  if ([*(a1 + 32) isEqualToSet:v9])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *(*(*(a1 + 64) + 8) + 24) = 1;
    *a3 = 1;
  }

  if ([*(a1 + 32) isSubsetOfSet:v9])
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (BOOL)hasSimilarGeometryInView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__WBSElementTargetingResult_hasSimilarGeometryInView___block_invoke;
  aBlock[3] = &__block_descriptor_48_e28__CGSize_dd_24__0_CGSize_dd_8l;
  aBlock[4] = v5;
  aBlock[5] = v6;
  v7 = _Block_copy(aBlock);
  [(_WKTargetedElementInfo *)self->_target bounds];
  v10 = v7[2](v7, v8, v9);
  v12 = 0;
  if (v10 != 0.0 && v11 != 0.0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __54__WBSElementTargetingResult_hasSimilarGeometryInView___block_invoke_2;
    v14[3] = &unk_1E8284ED0;
    v14[4] = self;
    v17 = v10;
    v18 = v11;
    v15 = v7;
    v16 = &v19;
    [(WBSElementTargetingResult *)self _forEachPotentiallySimilarElement:v14];
    v12 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v12 & 1;
}

double __54__WBSElementTargetingResult_hasSimilarGeometryInView___block_invoke(uint64_t a1, double result)
{
  if (*(a1 + 32) < result)
  {
    return *(a1 + 32);
  }

  return result;
}

void __54__WBSElementTargetingResult_hasSimilarGeometryInView___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v16 = a2;
  v5 = [*(*(a1 + 32) + 24) positionType];
  if (v5 == [v16 positionType])
  {
    v6 = [*(*(a1 + 32) + 24) offsetEdges];
    if (v6 == [v16 anchor])
    {
      v7 = *(a1 + 40);
      [v16 geometry];
      v10 = (*(v7 + 16))(v7, v8, v9);
      if (v10 != 0.0 && v11 != 0.0)
      {
        v12 = *(a1 + 56);
        v13 = v12 - v10;
        if (v13 < 0.0)
        {
          v13 = -v13;
        }

        if (v13 / v12 <= 0.15)
        {
          v14 = *(a1 + 64);
          v15 = v14 - v11;
          if (v15 < 0.0)
          {
            v15 = -v15;
          }

          if (v15 / v14 <= 0.15)
          {
            *(*(*(a1 + 48) + 8) + 24) = 1;
            *a3 = 1;
          }
        }
      }
    }
  }
}

- (void)checkForSimilarRenderedText:(id)text
{
  textCopy = text;
  objc_initWeak(&location, self);
  target = self->_target;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__WBSElementTargetingResult_checkForSimilarRenderedText___block_invoke;
  v7[3] = &unk_1E8284F20;
  objc_copyWeak(&v9, &location);
  v6 = textCopy;
  v8 = v6;
  [(_WKTargetedElementInfo *)target safari_renderedTextForCheckingSimilarityWithCompletion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__WBSElementTargetingResult_checkForSimilarRenderedText___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v5 = *(*(a1 + 32) + 16);
LABEL_6:
    v5();
    goto LABEL_7;
  }

  if (![v3 length])
  {
    v5 = *(*(a1 + 32) + 16);
    goto LABEL_6;
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__6;
  v12[4] = __Block_byref_object_dispose__6;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__WBSElementTargetingResult_checkForSimilarRenderedText___block_invoke_2;
  v6[3] = &unk_1E8284EF8;
  v7 = v3;
  v8 = v12;
  v9 = v10;
  [WeakRetained _forEachPotentiallySimilarElement:v6];
  (*(*(a1 + 32) + 16))();

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);

LABEL_7:
}

void __57__WBSElementTargetingResult_checkForSimilarRenderedText___block_invoke_2(void *a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v7 = a1[4];
  v11 = v6;
  v8 = [v6 imageAnalysisText];
  if ([v7 safari_hasSimilarText:v8])
  {
  }

  else
  {
    v9 = a1[4];
    v10 = [v11 renderTreeText];
    LODWORD(v9) = [v9 safari_hasSimilarText:v10];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  *(*(a1[6] + 8) + 24) = 1;
  *a3 = 1;
LABEL_5:
}

@end