@interface UIReusePool
@end

@implementation UIReusePool

void __30___UIReusePool_reusableObject__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) anyObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = *(*(a1 + 32) + 8);

    [v5 removeObject:?];
  }
}

@end