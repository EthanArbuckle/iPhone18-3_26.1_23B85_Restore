@interface UINavigationBarLayout
@end

@implementation UINavigationBarLayout

uint64_t __41___UINavigationBarLayout__addLayoutItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 priority];
  v6 = [v4 priority];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t __41___UINavigationBarLayout__addLayoutItem___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t __61___UINavigationBarLayout__reprioritizeLayoutItem_toPriority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 priority];
  v6 = [v4 priority];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t __53___UINavigationBarLayout__reorderLayoutItem_toOrder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  v7 = -1;
  if (v5 <= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

@end