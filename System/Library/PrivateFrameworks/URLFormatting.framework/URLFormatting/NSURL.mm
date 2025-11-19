@interface NSURL
@end

@implementation NSURL

uint64_t __57__NSURL_LPPrivate___lp_URLByDeletingCommonIndexPageNames__block_invoke()
{
  [NSURL(LPPrivate) _lp_URLByDeletingCommonIndexPageNames]::commonIndexPageNames = [MEMORY[0x277CBEB98] setWithArray:&unk_28803EF28];

  return MEMORY[0x2821F96F8]();
}

@end