@interface PGMemoryQualityQuestion
- (PGMemoryQualityQuestion)initWithMemory:(id)a3 localFactoryScore:(double)a4;
@end

@implementation PGMemoryQualityQuestion

- (PGMemoryQualityQuestion)initWithMemory:(id)a3 localFactoryScore:(double)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = PGMemoryQualityQuestion;
  v7 = [(PGMemoryQualityQuestion *)&v16 init];
  if (v7)
  {
    v8 = [v6 uuid];
    entityIdentifier = v7->_entityIdentifier;
    v7->_entityIdentifier = v8;

    v7->_state = 0;
    v7->_localFactoryScore = a4;
    v17[0] = @"category";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "category")}];
    v17[1] = @"subcategory";
    v18[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v6, "subcategory")}];
    v18[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    additionalInfo = v7->_additionalInfo;
    v7->_additionalInfo = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

@end