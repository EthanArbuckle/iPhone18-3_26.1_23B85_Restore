@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __58__NSIndexSet_PhotosUIFoundation__px_isSingleRangeWithMax___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v4 = *(*(result + 32) + 8);
  if (*(v4 + 40))
  {
    a3 = 0;
    *a4 = 1;
    a2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  return result;
}

uint64_t __61__NSIndexSet_PhotosUIFoundation__px_enumerateMap_usingBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    v7 = result;
    do
    {
      if (*a4)
      {
        break;
      }

      (*(*(v7 + 40) + 16))();
      v9 = v8;
      result = (*(*(v7 + 48) + 16))();
      a2 += v9;
      v5 -= v9;
    }

    while (v5);
  }

  return result;
}

uint64_t __60__NSIndexSet_PhotosUIFoundation__px_intersectsWithIndexSet___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) intersectsIndexesInRange:{a2, a3}];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __53__NSIndexSet_PhotosUIFoundation__px_shortDescription__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 < 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a2, v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", a2, a3 + a2 - 1];
  }
  v5 = ;
  [v3 addObject:v5];
}

@end