@interface PGPublicEventQuestion
- (BOOL)isEquivalentToPersistedQuestion:(id)question;
- (PGPublicEventQuestion)initWithAssetUUID:(id)d publicEventMUID:(unint64_t)iD publicEventName:(id)name publicEventSource:(id)source localFactoryScore:(double)score;
@end

@implementation PGPublicEventQuestion

- (BOOL)isEquivalentToPersistedQuestion:(id)question
{
  questionCopy = question;
  type = [(PGPublicEventQuestion *)self type];
  if (type != [questionCopy type])
  {
    goto LABEL_4;
  }

  additionalInfo = [questionCopy additionalInfo];
  v7 = *MEMORY[0x277D3C988];
  v8 = [additionalInfo objectForKeyedSubscript:*MEMORY[0x277D3C988]];
  v9 = [(NSDictionary *)self->_additionalInfo objectForKeyedSubscript:v7];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    additionalInfo2 = [questionCopy additionalInfo];
    v12 = *MEMORY[0x277D3C990];
    v13 = [additionalInfo2 objectForKeyedSubscript:*MEMORY[0x277D3C990]];
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

- (PGPublicEventQuestion)initWithAssetUUID:(id)d publicEventMUID:(unint64_t)iD publicEventName:(id)name publicEventSource:(id)source localFactoryScore:(double)score
{
  v27[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  sourceCopy = source;
  v25.receiver = self;
  v25.super_class = PGPublicEventQuestion;
  v16 = [(PGPublicEventQuestion *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_entityIdentifier, d);
    v17->_localFactoryScore = score;
    v17->_state = 0;
    v26[0] = *MEMORY[0x277D3C988];
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:iD];
    v19 = *MEMORY[0x277D3C990];
    v27[0] = v18;
    v27[1] = nameCopy;
    v20 = *MEMORY[0x277D3C998];
    v26[1] = v19;
    v26[2] = v20;
    v27[2] = sourceCopy;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
    additionalInfo = v17->_additionalInfo;
    v17->_additionalInfo = v21;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

@end