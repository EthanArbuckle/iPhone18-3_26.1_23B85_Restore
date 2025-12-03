@interface PGLocationRepresentativeAssetQuestion
- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)d locationName:(id)name;
@end

@implementation PGLocationRepresentativeAssetQuestion

- (PGLocationRepresentativeAssetQuestion)initWithAssetUUID:(id)d locationName:(id)name
{
  v17[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PGLocationRepresentativeAssetQuestion;
  v9 = [(PGLocationRepresentativeAssetQuestion *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_entityIdentifier, d);
    v10->_state = 0;
    v16 = @"localizedLocationName";
    v17[0] = nameCopy;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    additionalInfo = v10->_additionalInfo;
    v10->_additionalInfo = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

@end