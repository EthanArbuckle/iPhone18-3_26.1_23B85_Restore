@interface PGFrequentLocationQuestion
- (PGFrequentLocationQuestion)initWithAssetUUID:(id)a3 location:(id)a4 locationTypeName:(id)a5;
@end

@implementation PGFrequentLocationQuestion

- (PGFrequentLocationQuestion)initWithAssetUUID:(id)a3 location:(id)a4 locationTypeName:(id)a5
{
  v31[5] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v28.receiver = self;
  v28.super_class = PGFrequentLocationQuestion;
  v12 = [(PGFrequentLocationQuestion *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityIdentifier, a3);
    [*MEMORY[0x277D3C8C8] doubleValue];
    v13->_localFactoryScore = v14;
    v13->_state = 0;
    v15 = *MEMORY[0x277D3C930];
    v31[0] = *MEMORY[0x277D3C928];
    v31[1] = v15;
    v16 = *MEMORY[0x277D3C900];
    v31[2] = *MEMORY[0x277D3C938];
    v31[3] = v16;
    v31[4] = *MEMORY[0x277D3C918];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:5];
    [v10 coordinate];
    v19 = v18;
    v20 = *MEMORY[0x277D3C8F8];
    v30[0] = v17;
    v21 = *MEMORY[0x277D3C908];
    v29[0] = v20;
    v29[1] = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v30[1] = v22;
    v29[2] = *MEMORY[0x277D3C910];
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
    v29[3] = *MEMORY[0x277D3C920];
    v30[2] = v23;
    v30[3] = v11;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:4];
    additionalInfo = v13->_additionalInfo;
    v13->_additionalInfo = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13;
}

@end