@interface PGExhaustiveMomentLabellingQuestion
- (PGExhaustiveMomentLabellingQuestion)initWithMomentUUID:(id)a3 localFactoryScore:(double)a4 meaningLabels:(id)a5;
@end

@implementation PGExhaustiveMomentLabellingQuestion

- (PGExhaustiveMomentLabellingQuestion)initWithMomentUUID:(id)a3 localFactoryScore:(double)a4 meaningLabels:(id)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PGExhaustiveMomentLabellingQuestion;
  v11 = [(PGExhaustiveMomentLabellingQuestion *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, a3);
    v12->_state = 0;
    v12->_localFactoryScore = a4;
    if ([v10 count])
    {
      v13 = [v10 array];
      v14 = [v13 componentsJoinedByString:{@", "}];

      v20 = *MEMORY[0x277D3C8D8];
      v21[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      additionalInfo = v12->_additionalInfo;
      v12->_additionalInfo = v15;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

@end