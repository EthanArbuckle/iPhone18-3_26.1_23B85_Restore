@interface SFPersonCollectionViewMaximumSizeCategory
@end

@implementation SFPersonCollectionViewMaximumSizeCategory

void ___SFPersonCollectionViewMaximumSizeCategory_block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = MEMORY[0x1E69DDC40];
  if (v2 >= v1)
  {
    v4 = v1;
  }

  else
  {
    v4 = v2;
  }

  if (v4 > 320.0)
  {
    v3 = MEMORY[0x1E69DDC38];
  }

  v5 = *v3;

  objc_storeStrong(&_SFPersonCollectionViewMaximumSizeCategory_maxCategory, v5);
}

@end