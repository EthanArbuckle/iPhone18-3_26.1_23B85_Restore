@interface RowWhitelist
@end

@implementation RowWhitelist

void ___RowWhitelist_block_invoke()
{
  v2[7] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v2[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:7];
  v1 = _RowWhitelist_whitelist;
  _RowWhitelist_whitelist = v0;
}

@end