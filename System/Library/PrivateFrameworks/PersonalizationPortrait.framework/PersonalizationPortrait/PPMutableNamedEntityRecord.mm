@interface PPMutableNamedEntityRecord
- (PPMutableNamedEntityRecord)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlgorithm:(unint64_t)a3;
- (void)setExtractionOsBuild:(id)a3;
- (void)setSource:(id)a3;
@end

@implementation PPMutableNamedEntityRecord

- (void)setExtractionOsBuild:(id)a3
{
  v4 = a3;
  v7 = PPGetStringInternPool();
  v5 = [v7 intern:v4];

  extractionOsBuild = self->super._extractionOsBuild;
  self->super._extractionOsBuild = v5;
}

- (void)setAlgorithm:(unint64_t)a3
{
  v3 = a3;
  if (a3 >= 0x100)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PPNamedEntity.m" lineNumber:672 description:@"Algorithm storage too small"];
  }

  self->super._algorithm = v3;
}

- (void)setSource:(id)a3
{
  v4 = a3;
  v7 = PPGetSourceInternPool();
  v5 = [v7 intern:v4];

  source = self->super._source;
  self->super._source = v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PPNamedEntityRecord allocWithZone:](PPNamedEntityRecord init];
  v6 = [(PPNamedEntity *)self->super._entity copyWithZone:a3];
  entity = v5->_entity;
  v5->_entity = v6;

  objc_storeStrong(&v5->_source, self->super._source);
  v5->_algorithm = self->super._algorithm;
  v5->_initialScore = self->super._initialScore;
  v5->_decayRate = self->super._decayRate;
  objc_storeStrong(&v5->_extractionOsBuild, self->super._extractionOsBuild);
  v5->_extractionAssetVersion = self->super._extractionAssetVersion;
  v5->_changeType = self->super._changeType;
  v5->_bucketizedSentimentScore = self->super._bucketizedSentimentScore;
  v8 = [(PPNamedEntityMetadata *)self->super._metadata copyWithZone:a3];
  metadata = v5->_metadata;
  v5->_metadata = v8;

  return v5;
}

- (PPMutableNamedEntityRecord)init
{
  v3.receiver = self;
  v3.super_class = PPMutableNamedEntityRecord;
  result = [(PPMutableNamedEntityRecord *)&v3 init];
  if (result)
  {
    result->super._extractionAssetVersion = -1;
  }

  return result;
}

@end