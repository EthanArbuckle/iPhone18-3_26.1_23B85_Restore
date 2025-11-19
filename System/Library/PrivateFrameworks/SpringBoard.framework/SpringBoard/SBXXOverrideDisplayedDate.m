@interface SBXXOverrideDisplayedDate
@end

@implementation SBXXOverrideDisplayedDate

void ___SBXXOverrideDisplayedDate_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D65E40] sharedInstance];
  [v2 setOverrideDate:*(a1 + 32)];
}

@end