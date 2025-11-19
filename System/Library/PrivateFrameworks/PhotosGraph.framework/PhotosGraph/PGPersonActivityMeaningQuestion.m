@interface PGPersonActivityMeaningQuestion
- (PGPersonActivityMeaningQuestion)initWithMeaningLabel:(id)a3 assetUUID:(id)a4 localFactoryScore:(double)a5;
@end

@implementation PGPersonActivityMeaningQuestion

- (PGPersonActivityMeaningQuestion)initWithMeaningLabel:(id)a3 assetUUID:(id)a4 localFactoryScore:(double)a5
{
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PGPersonActivityMeaningQuestion;
  v10 = [(PGPersonActivityMeaningQuestion *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, a4);
    v11->_state = 0;
    v11->_localFactoryScore = a5;
    v17 = @"personActivityMeaningLabel";
    v18[0] = v8;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

@end