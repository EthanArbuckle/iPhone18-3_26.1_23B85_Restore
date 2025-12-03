@interface PGBusinessItemQuestion
- (PGBusinessItemQuestion)initWithAssetUUID:(id)d businessUUID:(id)iD businessName:(id)name localFactoryScore:(double)score;
@end

@implementation PGBusinessItemQuestion

- (PGBusinessItemQuestion)initWithAssetUUID:(id)d businessUUID:(id)iD businessName:(id)name localFactoryScore:(double)score
{
  v22[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = PGBusinessItemQuestion;
  v14 = [(PGBusinessItemQuestion *)&v20 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_entityIdentifier, d);
    v15->_localFactoryScore = score;
    v15->_state = 0;
    v21[0] = @"businessUUID";
    v21[1] = @"businessName";
    v22[0] = iDCopy;
    v22[1] = nameCopy;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    additionalInfo = v15->_additionalInfo;
    v15->_additionalInfo = v16;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

@end