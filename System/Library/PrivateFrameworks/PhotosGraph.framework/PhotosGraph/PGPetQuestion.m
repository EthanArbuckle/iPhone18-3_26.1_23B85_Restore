@interface PGPetQuestion
- (PGPetQuestion)initWithPetUUID:(id)a3 displayString:(id)a4 localFactoryScore:(double)a5;
@end

@implementation PGPetQuestion

- (PGPetQuestion)initWithPetUUID:(id)a3 displayString:(id)a4 localFactoryScore:(double)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v17.receiver = self;
  v17.super_class = PGPetQuestion;
  v11 = [(PGPetQuestion *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, a3);
    v12->_state = 0;
    v12->_localFactoryScore = a5;
    if (v10)
    {
      v12->_entityType = 4;
      v12->_displayType = 6;
      v18 = *MEMORY[0x277D3C8D0];
      v19[0] = v10;
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