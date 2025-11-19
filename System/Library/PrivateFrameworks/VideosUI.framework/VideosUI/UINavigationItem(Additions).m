@interface UINavigationItem(Additions)
- (uint64_t)setStackedSearchBarPlacement;
@end

@implementation UINavigationItem(Additions)

- (uint64_t)setStackedSearchBarPlacement
{
  if (MEMORY[0x1E6913230]())
  {

    return [a1 setPreferredSearchBarPlacement:2];
  }

  else
  {

    return [a1 _dci_setPreferredSearchBarPlacement:2];
  }
}

@end