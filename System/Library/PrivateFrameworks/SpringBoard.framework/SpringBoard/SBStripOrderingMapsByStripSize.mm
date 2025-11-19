@interface SBStripOrderingMapsByStripSize
@end

@implementation SBStripOrderingMapsByStripSize

void ____SBStripOrderingMapsByStripSize_block_invoke()
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = &unk_283371AC8;
  v17[1] = &unk_283371AF8;
  v18[0] = &unk_28336E910;
  v18[1] = &unk_28336E928;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = &unk_283371AC8;
  v15[1] = &unk_283371AF8;
  v16[0] = &unk_28336E940;
  v16[1] = &unk_28336E958;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v13[0] = &unk_283371AC8;
  v13[1] = &unk_283371AF8;
  v14[0] = &unk_28336E970;
  v14[1] = &unk_28336E988;
  v13[2] = &unk_283371AE0;
  v13[3] = &unk_283371B10;
  v14[2] = &unk_28336E9A0;
  v14[3] = &unk_28336E9B8;
  v13[4] = &unk_283371B28;
  v14[4] = &unk_28336E9D0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v9 = &unk_283371AC8;
  v10 = &unk_28336E9E8;
  v11[0] = &unk_283371AF8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v12[0] = v3;
  v11[1] = &unk_283371AE0;
  v7 = &unk_283371AC8;
  v8 = &unk_28336EA00;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v12[1] = v4;
  v12[2] = v0;
  v11[2] = &unk_283371B10;
  v11[3] = &unk_283371B28;
  v11[4] = &unk_283371B40;
  v12[3] = v1;
  v12[4] = v2;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v6 = __SBStripOrderingMapsByStripSize__map;
  __SBStripOrderingMapsByStripSize__map = v5;
}

@end