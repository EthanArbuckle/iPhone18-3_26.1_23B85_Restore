@interface PXChangeDetailsEntryForSection
@end

@implementation PXChangeDetailsEntryForSection

void ___PXChangeDetailsEntryForSection_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 32) subitemChangesInItem:a2 section:*(a1 + 48)];
  v4 = [[_PXChangeDetailsEntry alloc] initWithIndex:a2 changeDetails:v5];
  [*(a1 + 40) addSubitemEntry:v4];
}

@end