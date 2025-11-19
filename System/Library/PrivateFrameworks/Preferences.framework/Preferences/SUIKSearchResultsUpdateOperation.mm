@interface SUIKSearchResultsUpdateOperation
@end

@implementation SUIKSearchResultsUpdateOperation

__CFString *__41___SUIKSearchResultsUpdateOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v4 = &stru_1EFE45030;
  }

  else
  {
    v4 = SUIKCategoryFromSearchableItem(v3);
  }

  return v4;
}

uint64_t __41___SUIKSearchResultsUpdateOperation_main__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    v7 = 0;
  }

  else
  {
    v8 = [*(a1 + 32) delegate];
    v7 = [v8 searchResultsCollectionViewController:0 sortCategory1:v5 sortCategory2:v6];
  }

  return v7;
}

uint64_t __41___SUIKSearchResultsUpdateOperation_main__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  if ([v4 containsObject:v5])
  {
    goto LABEL_6;
  }

  v6 = [v3 attributeSet];
  v7 = [v6 rankingHint];
  if (!v7)
  {

LABEL_6:
    v12 = 0;
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v3 attributeSet];
  v10 = [v9 subject];

  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v11 = *(a1 + 32);
  v5 = [v3 uniqueIdentifier];
  [v11 addObject:v5];
  v12 = 1;
LABEL_7:

LABEL_8:
  return v12;
}

uint64_t __41___SUIKSearchResultsUpdateOperation_main__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v8 = [v6 attributeSet];
    v9 = [v8 rankingHint];
    v10 = [v5 attributeSet];
    v11 = [v10 rankingHint];
    v7 = [v9 compare:v11];

    if (v7)
    {
      goto LABEL_6;
    }

    if (([*(a1 + 32) isCancelled] & 1) == 0)
    {
      v12 = [v5 attributeSet];
      v13 = [v12 subject];
      v14 = [v6 attributeSet];
      v15 = [v14 subject];
      v7 = [v13 compare:v15];

      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:

  return v7;
}

void __41___SUIKSearchResultsUpdateOperation_main__block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) diffableDataSource];
  [v2 applySnapshot:*(a1 + 40) animatingDifferences:1];
}

@end