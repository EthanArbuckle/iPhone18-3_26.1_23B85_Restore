@interface DistanceSampleTypes
@end

@implementation DistanceSampleTypes

uint64_t ___DistanceSampleTypes_block_invoke()
{
  v14[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v14[0] = v13;
  v12 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB48]];
  v14[1] = v12;
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v14[2] = v11;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v14[3] = v10;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v14[4] = v9;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v14[5] = v8;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v14[6] = v7;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v14[7] = v6;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v14[8] = v5;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:9];
  v0 = [v3 initWithArray:?];
  v1 = _DistanceSampleTypes___distanceSampleTypes;
  _DistanceSampleTypes___distanceSampleTypes = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  result = MEMORY[0x277D82BD8](v13);
  *MEMORY[0x277D85DE8];
  return result;
}

@end