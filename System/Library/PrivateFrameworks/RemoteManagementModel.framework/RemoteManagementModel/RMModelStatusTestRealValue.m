@interface RMModelStatusTestRealValue
+ (id)supportedOS;
@end

@implementation RMModelStatusTestRealValue

+ (id)supportedOS
{
  v30[6] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28746D238;
  v22 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A640];
  v28[0] = v22;
  v21 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A658];
  v28[1] = v21;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v30[0] = v20;
  v29[1] = &unk_28746D250;
  v19 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A670];
  v27[0] = v19;
  v18 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A688];
  v27[1] = v18;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v30[1] = v17;
  v29[2] = &unk_28746D268;
  v16 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A6A0];
  v26[0] = v16;
  v15 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A6B8];
  v26[1] = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v30[2] = v14;
  v29[3] = &unk_28746D280;
  v2 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A6D0];
  v25[0] = v2;
  v3 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A6E8];
  v25[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v30[3] = v4;
  v29[4] = &unk_28746D298;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A700];
  v24[0] = v5;
  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A718];
  v24[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v30[4] = v7;
  v29[5] = &unk_28746D2B0;
  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A730];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEB98] setWithArray:&unk_28746A748];
  v23[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v30[5] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end