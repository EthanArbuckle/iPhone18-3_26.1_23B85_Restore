@interface PGPetQuestion
- (PGPetQuestion)initWithPetUUID:(id)d displayString:(id)string localFactoryScore:(double)score;
@end

@implementation PGPetQuestion

- (PGPetQuestion)initWithPetUUID:(id)d displayString:(id)string localFactoryScore:(double)score
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = PGPetQuestion;
  v11 = [(PGPetQuestion *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, d);
    v12->_state = 0;
    v12->_localFactoryScore = score;
    if (stringCopy)
    {
      v12->_entityType = 4;
      v12->_displayType = 6;
      v18 = *MEMORY[0x277D3C8D0];
      v19[0] = stringCopy;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }

    else
    {
      v12->_entityType = 1;
      v12->_displayType = 2;
      v13 = MEMORY[0x277CBEC10];
    }

    additionalInfo = v12->_additionalInfo;
    v12->_additionalInfo = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

@end