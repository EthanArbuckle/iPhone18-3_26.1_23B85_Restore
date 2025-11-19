@interface SLBertClassifierResult
- (SLBertClassifierResult)initWithScore:(id)a3 assetVersion:(id)a4 extractedFeats:(id)a5;
- (id)dictionaryRepresentation;
@end

@implementation SLBertClassifierResult

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 addEntriesFromDictionary:self->_extractedFeats];
  [v3 setObject:self->_domainProb forKey:@"domainProb"];
  [v3 setObject:self->_assetVersion forKey:@"assetVersion"];

  return v3;
}

- (SLBertClassifierResult)initWithScore:(id)a3 assetVersion:(id)a4 extractedFeats:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SLBertClassifierResult;
  v12 = [(SLBertClassifierResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domainProb, a3);
    objc_storeStrong(&v13->_assetVersion, a4);
    objc_storeStrong(&v13->_extractedFeats, a5);
  }

  return v13;
}

@end