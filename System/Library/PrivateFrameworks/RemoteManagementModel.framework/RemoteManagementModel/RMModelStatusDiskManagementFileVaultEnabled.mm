@interface RMModelStatusDiskManagementFileVaultEnabled
+ (id)supportedOS;
@end

@implementation RMModelStatusDiskManagementFileVaultEnabled

+ (id)supportedOS
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = &unk_28746C830;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694A0];
  v8[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874694B8];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v10[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end