@interface PGRelationshipQuestion
- (PGRelationshipQuestion)initWithRelationshipLabel:(id)label confirmedPersonUUID:(id)d;
- (PGRelationshipQuestion)initWithRelationshipLabel:(id)label personUUID:(id)d displayString:(id)string localFactoryScore:(double)score;
@end

@implementation PGRelationshipQuestion

- (PGRelationshipQuestion)initWithRelationshipLabel:(id)label personUUID:(id)d displayString:(id)string localFactoryScore:(double)score
{
  v28[2] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  dCopy = d;
  stringCopy = string;
  v24.receiver = self;
  v24.super_class = PGRelationshipQuestion;
  v13 = [(PGRelationshipQuestion *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entityIdentifier, d);
    v14->_state = 0;
    v14->_localFactoryScore = score;
    if (stringCopy)
    {
      v14->_entityType = 4;
      v14->_displayType = 6;
      v15 = *MEMORY[0x277D3C9B0];
      v27[0] = *MEMORY[0x277D3C8D0];
      v27[1] = v15;
      v28[0] = stringCopy;
      v28[1] = labelCopy;
      v16 = MEMORY[0x277CBEAC0];
      v17 = v28;
      v18 = v27;
      v19 = 2;
    }

    else
    {
      v14->_entityType = 1;
      v14->_displayType = 2;
      v25 = *MEMORY[0x277D3C9B0];
      v26 = labelCopy;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v26;
      v18 = &v25;
      v19 = 1;
    }

    v20 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:v19];
    additionalInfo = v14->_additionalInfo;
    v14->_additionalInfo = v20;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (PGRelationshipQuestion)initWithRelationshipLabel:(id)label confirmedPersonUUID:(id)d
{
  result = [(PGRelationshipQuestion *)self initWithRelationshipLabel:label personUUID:d displayString:0 localFactoryScore:1.0];
  if (result)
  {
    result->_state = 2;
  }

  return result;
}

@end