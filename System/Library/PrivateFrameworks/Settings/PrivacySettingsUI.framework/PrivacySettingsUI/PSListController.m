@interface PSListController
@end

@implementation PSListController

uint64_t __81__PSListController_PUIGroupReplace__pui_replaceRows_withRows_header_insertPoint___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeContiguousSpecifiers:*(a1 + 40) animated:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 insertContiguousSpecifiers:v3 afterSpecifier:v4 animated:0];
}

@end