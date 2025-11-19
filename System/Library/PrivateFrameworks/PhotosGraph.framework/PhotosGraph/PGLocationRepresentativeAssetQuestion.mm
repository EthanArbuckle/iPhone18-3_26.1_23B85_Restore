@interface PGLocationRepresentativeAssetQuestion
- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)a3 locationName:(id)a4;
@end

@implementation PGLocationRepresentativeAssetQuestion

- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)a3 locationName:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PGLocationRepresentativeAssetQuestion;
  v9 = [(PGLocationRepresentativeAssetQuestion *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentifier, a3);
    v10->_state = 0;
    v16 = @"localizedLocationName";
    v17[0] = v8;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

@end