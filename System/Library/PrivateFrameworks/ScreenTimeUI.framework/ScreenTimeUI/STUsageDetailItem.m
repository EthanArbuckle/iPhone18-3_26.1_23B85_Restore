@interface STUsageDetailItem
@end

@implementation STUsageDetailItem

void __54__STUsageDetailItem_UIAdditions__localizedDisplayName__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABD8] mainQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__STUsageDetailItem_UIAdditions__localizedDisplayName__block_invoke_2;
  v3[3] = &unk_278338A08;
  v3[4] = *(a1 + 32);
  [v2 addOperationWithBlock:v3];
}

uint64_t __54__STUsageDetailItem_UIAdditions__localizedDisplayName__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"localizedDisplayName"];
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"localizedDisplayName"];
}

@end