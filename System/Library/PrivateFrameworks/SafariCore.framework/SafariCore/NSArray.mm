@interface NSArray
@end

@implementation NSArray

void __78__NSArray_SafariCoreExtras__safari_mapAndFilterObjectsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  if (v2)
  {
    v3 = v2;
    [*(a1 + 32) addObject:v2];
    v2 = v3;
  }
}

void __85__NSArray_SafariCoreExtras__safari_enumerateZippedValuesWithArray_options_withBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = a2;
  v9 = [v7 objectAtIndexedSubscript:a3];
  (*(v6 + 16))(v6, v8, v9, a3, a4);
}

void __62__NSArray_SafariCoreExtras__safari_orderedSetByApplyingBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v11 = (*(v7 + 16))(v7, v9, a3, [v8 count], a4);

  v10 = v11;
  if (v11)
  {
    [*(a1 + 32) addObject:v11];
    v10 = v11;
  }
}

void *__59__NSArray_SafariCoreExtras__safari_maximumUsingComparator___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v6)
  {
    v8 = (*(a1[4] + 16))();
    v7 = v6;
    if ((v8 + 1) >= 2)
    {
      if (v8 != 1)
      {
        goto LABEL_6;
      }

      v7 = v5;
    }
  }

  a1 = v7;
LABEL_6:

  return a1;
}

void __50__NSArray_SafariCoreExtras__safari_flattenedArray__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  if (isKindOfClass)
  {
    if (!v7)
    {
      v8 = [*(a1 + 32) subarrayWithRange:{0, a3}];
      v9 = [v8 mutableCopy];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v7 = *(*(*(a1 + 40) + 8) + 40);
    }

    v12 = [v13 safari_flattenedArray];
    [v7 addObjectsFromArray:v12];
  }

  else
  {
    [*(v6 + 40) addObject:v13];
  }
}

void __61__NSArray_SafariCoreExtras__safari_splitArrayUsingCondition___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v7 = a2;
  v5 = v4(v3, v7);
  v6 = 40;
  if (v5)
  {
    v6 = 32;
  }

  [*(a1 + v6) addObject:v7];
}

uint64_t __76__NSArray_SafariCoreExtras__safari_longestIncreasingSubsequenceUsingValues___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  v3 = [v1 containsObject:v2];

  return v3;
}

void __79__NSArray_SafariCoreExtras__safari_dictionaryByMappingObjectsToKeysUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void __88__NSArray_SafariCoreExtras__safari_dictionaryByMappingObjectsAsKeysToObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __87__NSArray_SafariCoreExtras__safari_dictionaryOfArraysByMappingObjectsToKeysUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
    if (!v4)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
    }

    [v4 addObject:v5];
  }
}

@end