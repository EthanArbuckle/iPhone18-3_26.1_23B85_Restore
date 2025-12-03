@interface PLHighlightItemPromoter
- (PLHighlightItemPromoter)initWithRule:(id)rule;
- (void)processHighlightItemsInHighlightItemList:(id)list currentlyPromotedHighlightItems:(id)items withSharingConsideration:(int64_t)consideration resultBlock:(id)block;
@end

@implementation PLHighlightItemPromoter

- (void)processHighlightItemsInHighlightItemList:(id)list currentlyPromotedHighlightItems:(id)items withSharingConsideration:(int64_t)consideration resultBlock:(id)block
{
  v40 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  blockCopy = block;
  sortedChildHighlightItems = [list sortedChildHighlightItems];
  v11 = [MEMORY[0x1E695DFA8] set];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = sortedChildHighlightItems;
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
        rule = [(PLHighlightItemPromoter *)self rule];
        v19 = [rule highlightItemHasMinimumRequirementToBePromoted:v17 withSharingConsideration:consideration];

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

  rule2 = [(PLHighlightItemPromoter *)self rule];
  maximumNumberOfHighlightItemsToPromote = [rule2 maximumNumberOfHighlightItemsToPromote];

  v22 = [MEMORY[0x1E695DFD8] set];
  if ([v11 count] <= maximumNumberOfHighlightItemsToPromote)
  {
    v28 = blockCopy;
    v27 = itemsCopy;
    if ([v11 count])
    {
      v25 = v22;
      v22 = v11;
    }

    else
    {
      rule3 = [(PLHighlightItemPromoter *)self rule];
      v30 = [MEMORY[0x1E695DFD8] setWithArray:v12];
      v25 = [rule3 fallbackHighlightItemFromAllHighlightItems:v30 withSharingConsideration:consideration];

      if (v25)
      {
        v31 = [MEMORY[0x1E695DFD8] setWithObject:v25];

        v22 = v31;
      }
    }
  }

  else
  {
    rule4 = [(PLHighlightItemPromoter *)self rule];
    v24 = [rule4 highlightItemsSortedByImportance:v11 withSharingConsideration:consideration];

    v25 = [v24 subarrayWithRange:{0, maximumNumberOfHighlightItemsToPromote}];

    v26 = [MEMORY[0x1E695DFD8] setWithArray:v25];

    v22 = v26;
    v28 = blockCopy;
    v27 = itemsCopy;
  }

  v32 = [MEMORY[0x1E695DFA8] setWithSet:v27];
  [v32 minusSet:v22];
  (v28)[2](v28, v22, v32, [v22 count] != 0);
}

- (PLHighlightItemPromoter)initWithRule:(id)rule
{
  ruleCopy = rule;
  v9.receiver = self;
  v9.super_class = PLHighlightItemPromoter;
  v6 = [(PLHighlightItemPromoter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rule, rule);
  }

  return v7;
}

@end