@interface AMSBag
@end

@implementation AMSBag

uint64_t __25__AMSBag_Quota__quotaBag__block_invoke()
{
  v0 = [MEMORY[0x277CEE3F8] bagForProfile:@"iCloudQuota" profileVersion:@"1"];
  v1 = quotaBag_quotaBag;
  quotaBag_quotaBag = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end