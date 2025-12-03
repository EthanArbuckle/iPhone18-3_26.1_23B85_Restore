@interface SLBertClassifierResult
- (SLBertClassifierResult)initWithScore:(id)score assetVersion:(id)version extractedFeats:(id)feats;
- (id)dictionaryRepresentation;
@end

@implementation SLBertClassifierResult

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary addEntriesFromDictionary:self->_extractedFeats];
  [dictionary setObject:self->_domainProb forKey:@"domainProb"];
  [dictionary setObject:self->_assetVersion forKey:@"assetVersion"];

  return dictionary;
}

- (SLBertClassifierResult)initWithScore:(id)score assetVersion:(id)version extractedFeats:(id)feats
{
  scoreCopy = score;
  versionCopy = version;
  featsCopy = feats;
  v15.receiver = self;
  v15.super_class = SLBertClassifierResult;
  v12 = [(SLBertClassifierResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_domainProb, score);
    objc_storeStrong(&v13->_assetVersion, version);
    objc_storeStrong(&v13->_extractedFeats, feats);
  }

  return v13;
}

@end