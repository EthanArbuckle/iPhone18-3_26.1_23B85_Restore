@interface SpeedSampleTypes
@end

@implementation SpeedSampleTypes

uint64_t ___SpeedSampleTypes_block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v9[0] = v8;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];
  v9[1] = v7;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];
  v9[2] = v6;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];
  v9[3] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v0 = [v3 initWithArray:?];
  v1 = _SpeedSampleTypes___speedSampleTypes;
  _SpeedSampleTypes___speedSampleTypes = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  result = MEMORY[0x277D82BD8](v8);
  *MEMORY[0x277D85DE8];
  return result;
}

@end