@interface NSArray
@end

@implementation NSArray

id __47__NSArray_PosterFuturesKit__pft_joinWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = (*(*(a1 + 32) + 16))();
    [v5 pft_addNonNilObject:v7];
  }

  [v5 addObject:v6];

  return v5;
}

uint64_t __56__NSArray_PosterFuturesKit__pft_slicesWithMaximumCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 subarrayWithRange:{v4, v3}];
}

uint64_t __64__NSArray_PosterFuturesKit__pft_balancedSlicesWithMaximumCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 rangeValue];

  return [v2 subarrayWithRange:{v4, v3}];
}

uint64_t __63__NSArray_PosterFuturesKit__pft_indexOfFirstObjectPassingTest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __40__NSArray_PosterFuturesKit__pft_flatten__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = [v6 pft_flatten];

    [v4 addObjectsFromArray:v5];
    v6 = v5;
  }

  else
  {
    [v4 addObject:v6];
  }
}

void __41__NSArray_PosterFuturesKit__pft_flatMap___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 addObjectsFromArray:v2];
}

void __52__NSArray_PosterFuturesKit__pft_isIdenticalToArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 objectAtIndex:a3];

  if (v9 != v8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end