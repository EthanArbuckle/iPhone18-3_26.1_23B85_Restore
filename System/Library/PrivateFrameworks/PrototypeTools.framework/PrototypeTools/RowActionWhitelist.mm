@interface RowActionWhitelist
@end

@implementation RowActionWhitelist

void ___RowActionWhitelist_block_invoke()
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:2];
  v1 = _RowActionWhitelist_whitelist;
  _RowActionWhitelist_whitelist = v0;
}

@end