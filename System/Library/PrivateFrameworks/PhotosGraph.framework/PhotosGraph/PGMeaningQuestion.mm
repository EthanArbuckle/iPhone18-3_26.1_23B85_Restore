@interface PGMeaningQuestion
- (PGMeaningQuestion)initWithConfirmedMeaningLabel:(id)a3 assetUUID:(id)a4;
- (PGMeaningQuestion)initWithMeaningLabel:(id)a3 assetUUID:(id)a4 localFactoryScore:(double)a5;
@end

@implementation PGMeaningQuestion

- (PGMeaningQuestion)initWithConfirmedMeaningLabel:(id)a3 assetUUID:(id)a4
{
  v6 = *MEMORY[0x277D3C8C8];
  v7 = a4;
  v8 = a3;
  [v6 doubleValue];
  v9 = [(PGMeaningQuestion *)self initWithMeaningLabel:v8 assetUUID:v7 localFactoryScore:?];

  if (v9)
  {
    v9->_state = 2;
  }

  return v9;
}

- (PGMeaningQuestion)initWithMeaningLabel:(id)a3 assetUUID:(id)a4 localFactoryScore:(double)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PGMeaningQuestion;
  v10 = [(PGMeaningQuestion *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, a4);
    v11->_state = 0;
    v11->_localFactoryScore = a5;
    v17 = *MEMORY[0x277D3C948];
    v18[0] = v8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

@end