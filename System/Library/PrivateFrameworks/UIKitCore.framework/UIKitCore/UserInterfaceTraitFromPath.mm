@interface UserInterfaceTraitFromPath
@end

@implementation UserInterfaceTraitFromPath

void ___UserInterfaceTraitFromPath_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v3 setUserInterfaceIdiom:?];
    v3 = v4;
  }

  [v3 setDisplayScale:*(a1 + 40)];
}

@end