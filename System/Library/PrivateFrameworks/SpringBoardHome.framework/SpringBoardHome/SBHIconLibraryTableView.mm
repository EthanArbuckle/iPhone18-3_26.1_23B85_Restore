@interface SBHIconLibraryTableView
@end

@implementation SBHIconLibraryTableView

uint64_t __42___SBHIconLibraryTableView_layoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 section];

  return [v2 headerViewForSection:v3];
}

@end