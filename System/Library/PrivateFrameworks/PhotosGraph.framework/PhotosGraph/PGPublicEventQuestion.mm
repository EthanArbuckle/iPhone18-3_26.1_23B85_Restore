@interface PGPublicEventQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)a3;
- (PGPublicEventQuestion)initWithAssetUUID:(id)a3 publicEventMUID:(unint64_t)a4 publicEventName:(id)a5 publicEventSource:(id)a6 localFactoryScore:(double)a7;
@end

@implementation PGPublicEventQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)a3
{
  v4 = a3;
  v5 = [(PGPublicEventQuestion *)self type];
  if (v5 != [v4 type])
  {
    goto LABEL_4;
  }

  v6 = [v4 additionalInfo];
  v7 = *MEMORY[0x277D3C988];
  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D3C988]];
  v9 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:v7];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [v4 additionalInfo];
    v12 = *MEMORY[0x277D3C990];
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x277D3C990]];
    v14 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:v12];
    v15 = [v13 isEqual:v14];
  }

  else
  {
LABEL_4:
    v15 = 0;
  }

  return v15;
}

- (PGPublicEventQuestion)initWithAssetUUID:(id)a3 publicEventMUID:(unint64_t)a4 publicEventName:(id)a5 publicEventSource:(id)a6 localFactoryScore:(double)a7
{
  v27[3] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = PGPublicEventQuestion;
  v16 = [(PGPublicEventQuestion *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_entityIdentifier, a3);
    v17->_localFactoryScore = a7;
    v17->_state = 0;
    v26[0] = *MEMORY[0x277D3C988];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
    v19 = *MEMORY[0x277D3C990];
    v27[0] = v18;
    v27[1] = v14;
    v20 = *MEMORY[0x277D3C998];
    v26[1] = v19;
    v26[2] = v20;
    v27[2] = v15;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    additionalInfo = v17->_additionalInfo;
    v17->_additionalInfo = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

@end