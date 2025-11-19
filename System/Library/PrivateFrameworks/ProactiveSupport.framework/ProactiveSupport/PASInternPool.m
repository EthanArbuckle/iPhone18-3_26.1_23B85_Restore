@interface PASInternPool
@end

@implementation PASInternPool

uint64_t __25___PASInternPool_isEmpty__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result == 0;
  return result;
}

uint64_t __29___PASInternPool_isInterned___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __36___PASInternPool__intern_copyInput___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 member:*(a1 + 32)];
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
    goto LABEL_12;
  }

  v4 = *(a1 + 56);
  if (v4 == 1)
  {
    v5 = (*(*(*(a1 + 40) + 16) + 16))(*(*(a1 + 40) + 16), *(a1 + 32), [*(a1 + 40) allocationZone]);
  }

  else
  {
    v5 = *(a1 + 32);
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);
  if (v4)
  {
  }

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6 != *(a1 + 32))
  {
    if (!malloc_size(*(*(*(a1 + 48) + 8) + 40)))
    {
      goto LABEL_12;
    }

    v6 = *(*(*(a1 + 48) + 8) + 40);
  }

  [v7 addObject:v6];
LABEL_12:
}

id __48___PASInternPool_initWithBehavior_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:?];

  return v2;
}

@end