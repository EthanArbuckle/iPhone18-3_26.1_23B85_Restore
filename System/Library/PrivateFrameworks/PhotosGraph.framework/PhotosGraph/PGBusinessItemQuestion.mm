@interface PGBusinessItemQuestion
- (PGBusinessItemQuestion)initWithAssetUUID:(id)a3 businessUUID:(id)a4 businessName:(id)a5 localFactoryScore:(double)a6;
@end

@implementation PGBusinessItemQuestion

- (PGBusinessItemQuestion)initWithAssetUUID:(id)a3 businessUUID:(id)a4 businessName:(id)a5 localFactoryScore:(double)a6
{
  v22[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v20.receiver = self;
  v20.super_class = PGBusinessItemQuestion;
  v14 = [(PGBusinessItemQuestion *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, a3);
    v15->_localFactoryScore = a6;
    v15->_state = 0;
    v21[0] = @"businessUUID";
    v21[1] = @"businessName";
    v22[0] = v12;
    v22[1] = v13;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

@end