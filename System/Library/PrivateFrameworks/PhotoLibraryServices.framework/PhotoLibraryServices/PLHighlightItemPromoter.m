@interface PLHighlightItemPromoter
- (PLHighlightItemPromoter)initWithRule:(id)a3;
- (void)processHighlightItemsInHighlightItemList:(id)a3 currentlyPromotedHighlightItems:(id)a4 withSharingConsideration:(int64_t)a5 resultBlock:(id)a6;
@end

@implementation PLHighlightItemPromoter

- (void)processHighlightItemsInHighlightItemList:(id)a3 currentlyPromotedHighlightItems:(id)a4 withSharingConsideration:(int64_t)a5 resultBlock:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = a4;
  v33 = a6;
  v10 = [a3 sortedChildHighlightItems];
  v11 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      v16 = 0;
      do
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v35 + 1) + 8 * v16);
        v18 = [(PLHighlightItemPromoter *)self rule];
        v19 = [v18 highlightItemHasMinimumRequirementToBePromoted:v17 withSharingConsideration:a5];

        if (v19)
        {
          [v11 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  v20 = [(PLHighlightItemPromoter *)self rule];
  v21 = [v20 maximumNumberOfHighlightItemsToPromote];

  v22 = [MEMORY[0x1E695DFD8] set];
  if ([v11 count] <= v21)
  {
    v28 = v33;
    v27 = v34;
    if ([v11 count])
    {
      v25 = v22;
      v22 = v11;
    }

    else
    {
      v29 = [(PLHighlightItemPromoter *)self rule];
      v30 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      v25 = [v29 fallbackHighlightItemFromAllHighlightItems:v30 withSharingConsideration:a5];

      if (v25)
      {
        v31 = [MEMORY[0x1E695DFD8] setWithObject:v25];

        v22 = v31;
      }
    }
  }

  else
  {
    v23 = [(PLHighlightItemPromoter *)self rule];
    v24 = [v23 highlightItemsSortedByImportance:v11 withSharingConsideration:a5];

    v25 = [v24 subarrayWithRange:{0, v21}];

    v26 = [MEMORY[0x1E695DFD8] setWithArray:v25];

    v22 = v26;
    v28 = v33;
    v27 = v34;
  }

  v32 = [MEMORY[0x1E695DFA8] setWithSet:v27];
  [v32 minusSet:v22];
  (v28)[2](v28, v22, v32, [v22 count] != 0);
}

- (PLHighlightItemPromoter)initWithRule:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLHighlightItemPromoter;
  v6 = [(PLHighlightItemPromoter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, a3);
  }

  return v7;
}

@end