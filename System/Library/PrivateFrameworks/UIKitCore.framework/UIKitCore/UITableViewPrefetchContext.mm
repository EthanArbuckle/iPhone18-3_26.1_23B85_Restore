@interface UITableViewPrefetchContext
@end

@implementation UITableViewPrefetchContext

void __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke(void *a1, unint64_t a2)
{
  v3 = a1[5];
  v5 = a2 >= v3;
  v4 = a2 - v3;
  v5 = !v5 || v4 >= a1[6];
  if (v5)
  {
    v8 = *(*(a1[4] + 8) + 40);
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = *(a1[4] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v8 = *(*(a1[4] + 8) + 40);
    }

    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v8 addObject:v12];
  }
}

uint64_t __74___UITableViewPrefetchContext_computeIndexesToCancelForVisibleIndexRange___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 48);
  v3 = [a2 unsignedIntegerValue];

  return [v2 removeIndex:v3];
}

void __101___UITableViewPrefetchContext_computeIndexesToRefreshForVisibleIndexRange_effectiveRefreshDirection___block_invoke(void *a1, unint64_t a2)
{
  if (a1[6] <= a2)
  {
    v3 = a1[5];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v3 addObject:?];
  }

  else
  {
    v2 = a1[4];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
    [v2 insertObject:? atIndex:?];
  }
}

uint64_t __72___UITableViewPrefetchContext_schedulePrefetchRequestAfterNextCACommit___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    result = *(v1 + 16);
    if (result)
    {
      result = (*(result + 16))(result, *(v2 + 40));
      v1 = *(v2 + 32);
    }

    *(v1 + 8) = 0;
  }

  return result;
}

void __53___UITableViewPrefetchContext_cancelWithNewMaxIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v2 addObject:v3];
}

@end