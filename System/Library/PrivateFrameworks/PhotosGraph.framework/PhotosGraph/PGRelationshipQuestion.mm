@interface PGRelationshipQuestion
- (PGRelationshipQuestion)initWithRelationshipLabel:(id)a3 confirmedPersonUUID:(id)a4;
- (PGRelationshipQuestion)initWithRelationshipLabel:(id)a3 personUUID:(id)a4 displayString:(id)a5 localFactoryScore:(double)a6;
@end

@implementation PGRelationshipQuestion

- (PGRelationshipQuestion)initWithRelationshipLabel:(id)a3 personUUID:(id)a4 displayString:(id)a5 localFactoryScore:(double)a6
{
  v28[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v24.receiver = self;
  v24.super_class = PGRelationshipQuestion;
  v13 = [(PGRelationshipQuestion *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_entityIdentifier, a4);
    v14->_state = 0;
    v14->_localFactoryScore = a6;
    if (v12)
    {
      v14->_entityType = 4;
      v14->_displayType = 6;
      v15 = *MEMORY[0x277D3C9B0];
      v27[0] = *MEMORY[0x277D3C8D0];
      v27[1] = v15;
      v28[0] = v12;
      v28[1] = v10;
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
      v26 = v10;
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

- (PGRelationshipQuestion)initWithRelationshipLabel:(id)a3 confirmedPersonUUID:(id)a4
{
  result = [(PGRelationshipQuestion *)self initWithRelationshipLabel:a3 personUUID:a4 displayString:0 localFactoryScore:1.0];
  if (result)
  {
    result->_state = 2;
  }

  return result;
}

@end