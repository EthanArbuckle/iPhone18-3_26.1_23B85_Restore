@interface PGAgeCategoryQuestion
- (PGAgeCategoryQuestion)initWithPersonUUID:(id)d ageCategory:(unint64_t)category localFactoryScore:(double)score;
@end

@implementation PGAgeCategoryQuestion

- (PGAgeCategoryQuestion)initWithPersonUUID:(id)d ageCategory:(unint64_t)category localFactoryScore:(double)score
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v17.receiver = self;
  v17.super_class = PGAgeCategoryQuestion;
  v10 = [(PGAgeCategoryQuestion *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_entityIdentifier, d);
    v11->_state = 0;
    v11->_localFactoryScore = score;
    v18 = @"ageCategory";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:category];
    v19[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    additionalInfo = v11->_additionalInfo;
    v11->_additionalInfo = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

@end