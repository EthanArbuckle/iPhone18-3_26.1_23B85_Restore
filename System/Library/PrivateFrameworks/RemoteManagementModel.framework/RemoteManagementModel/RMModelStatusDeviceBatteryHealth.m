@interface RMModelStatusDeviceBatteryHealth
+ (id)supportedOS;
@end

@implementation RMModelStatusDeviceBatteryHealth

+ (id)supportedOS
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_28746C110;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468690];
  v16[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874686A8];
  v16[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v18[0] = v4;
  v17[1] = &unk_28746C128;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874686C0];
  v15[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874686D8];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v18[1] = v7;
  v17[2] = &unk_28746C140;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_2874686F0];
  v14[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_287468708];
  v14[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v18[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end