@interface RUIJSTableRow
@end

@implementation RUIJSTableRow

void __RUIJSTableRow_updateAttributes_block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) tableElement];
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCAA70] indexPathForRow:*(a1 + 48) inSection:*(a1 + 56)];
  [v4 reloadRow:v2 atIndexPath:v3];
}

@end