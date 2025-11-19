@interface NSDictionary
@end

@implementation NSDictionary

void __78__NSDictionary_SafariCoreExtras__safari_mapAndFilterKeysAndObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

void __68__NSDictionary_SafariCoreExtras__safari_mapAndFilterKeysUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = (*(*(a1 + 40) + 16))();
  if (v4)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }
}

void __72__NSDictionary_SafariCoreExtras__safari_dictionaryByRemovingNullObjects__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (*MEMORY[0x1E695E738] == v5)
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = [*(a1 + 32) mutableCopy];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 removeObjectForKey:v10];
  }
}

uint64_t __56__NSDictionary_SafariCoreExtras__safari_containsObject___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 isEqual:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __66__NSDictionary_SafariCoreExtras__safari_containsEntryPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

id __56__NSDictionary_SafariCoreExtras__safari_mutableDeepCopy__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 copy];

  return v3;
}

uint64_t __65__NSDictionary_SafariCoreExtras__safari_valueOfEntryPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __68__NSDictionary_SafariCoreExtras__safari_valuesOfEntriesPassingTest___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v4];
  }
}

@end