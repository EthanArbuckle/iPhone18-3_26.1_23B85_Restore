@interface PXGDisabledLayerActions
@end

@implementation PXGDisabledLayerActions

void ___PXGDisabledLayerActions_block_invoke()
{
  v20[17] = *MEMORY[0x277D85DE8];
  v19[0] = @"onOrderIn";
  v18 = [MEMORY[0x277CBEB68] null];
  v20[0] = v18;
  v19[1] = @"onOrderOut";
  v17 = [MEMORY[0x277CBEB68] null];
  v20[1] = v17;
  v19[2] = @"sublayers";
  v16 = [MEMORY[0x277CBEB68] null];
  v20[2] = v16;
  v19[3] = @"contents";
  v15 = [MEMORY[0x277CBEB68] null];
  v20[3] = v15;
  v19[4] = @"bounds";
  v14 = [MEMORY[0x277CBEB68] null];
  v20[4] = v14;
  v19[5] = @"position";
  v13 = [MEMORY[0x277CBEB68] null];
  v20[5] = v13;
  v19[6] = @"zPosition";
  v12 = [MEMORY[0x277CBEB68] null];
  v20[6] = v12;
  v19[7] = @"opacity";
  v0 = [MEMORY[0x277CBEB68] null];
  v20[7] = v0;
  v19[8] = @"contentsRect";
  v1 = [MEMORY[0x277CBEB68] null];
  v20[8] = v1;
  v19[9] = @"contentsCenter";
  v2 = [MEMORY[0x277CBEB68] null];
  v20[9] = v2;
  v19[10] = @"contentsScale";
  v3 = [MEMORY[0x277CBEB68] null];
  v20[10] = v3;
  v19[11] = @"hidden";
  v4 = [MEMORY[0x277CBEB68] null];
  v20[11] = v4;
  v19[12] = @"transform";
  v5 = [MEMORY[0x277CBEB68] null];
  v20[12] = v5;
  v19[13] = @"cornerRadius";
  v6 = [MEMORY[0x277CBEB68] null];
  v20[13] = v6;
  v19[14] = @"maskedCorners";
  v7 = [MEMORY[0x277CBEB68] null];
  v20[14] = v7;
  v19[15] = @"masksToBounds";
  v8 = [MEMORY[0x277CBEB68] null];
  v20[15] = v8;
  v19[16] = @"anchorPoint";
  v9 = [MEMORY[0x277CBEB68] null];
  v20[16] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:17];
  v11 = _PXGDisabledLayerActions_disabledActions;
  _PXGDisabledLayerActions_disabledActions = v10;
}

@end