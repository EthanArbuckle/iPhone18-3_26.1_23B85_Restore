@interface PGExhaustiveMomentLabellingQuestion
- (PGExhaustiveMomentLabellingQuestion)initWithMomentUUID:(id)d localFactoryScore:(double)score meaningLabels:(id)labels;
@end

@implementation PGExhaustiveMomentLabellingQuestion

- (PGExhaustiveMomentLabellingQuestion)initWithMomentUUID:(id)d localFactoryScore:(double)score meaningLabels:(id)labels
{
  v21[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  labelsCopy = labels;
  v19.receiver = self;
  v19.super_class = PGExhaustiveMomentLabellingQuestion;
  v11 = [(PGExhaustiveMomentLabellingQuestion *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_entityIdentifier, d);
    v12->_state = 0;
    v12->_localFactoryScore = score;
    if ([labelsCopy count])
    {
      array = [labelsCopy array];
      v14 = [array componentsJoinedByString:{@", "}];

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