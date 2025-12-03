@interface PPMutableLocationRecord
- (PPMutableLocationRecord)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAlgorithm:(unsigned __int16)algorithm;
- (void)setExtractionOsBuild:(id)build;
- (void)setSentimentScore:(double)score;
- (void)setSource:(id)source;
@end

@implementation PPMutableLocationRecord

- (void)setSentimentScore:(double)score
{
  if (score < -1.0)
  {
    score = -1.0;
  }

  self->super._bucketizedSentimentScore = (fmin(score, 1.0) / 0.00787401575);
}

- (void)setExtractionOsBuild:(id)build
{
  buildCopy = build;
  v7 = PPGetStringInternPool();
  v5 = [v7 intern:buildCopy];

  extractionOsBuild = self->super._extractionOsBuild;
  self->super._extractionOsBuild = v5;
}

- (void)setAlgorithm:(unsigned __int16)algorithm
{
  algorithmCopy = algorithm;
  if (algorithm >= 0x100u)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:688 description:@"Algorithm storage too small"];
  }

  self->super._algorithm = algorithmCopy;
}

- (void)setSource:(id)source
{
  sourceCopy = source;
  v7 = PPGetSourceInternPool();
  v5 = [v7 intern:sourceCopy];

  source = self->super._source;
  self->super._source = v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->super._uuid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:649 description:{@"Invalid parameter not satisfying: %@", @"_uuid"}];
  }

  if (!self->super._location)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"_location"}];
  }

  if (!self->super._source)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"_source"}];
  }

  v6 = [[PPLocationRecord allocWithZone:?]];
  v7 = [(NSUUID *)self->super._uuid copyWithZone:zone];
  uuid = v6->_uuid;
  v6->_uuid = v7;

  v9 = [(PPLocation *)self->super._location copyWithZone:zone];
  location = v6->_location;
  v6->_location = v9;

  objc_storeStrong(&v6->_source, self->super._source);
  v6->_algorithm = self->super._algorithm;
  v6->_initialScore = self->super._initialScore;
  v6->_decayRate = self->super._decayRate;
  v11 = [(NSArray *)self->super._contextualNamedEntities copyWithZone:zone];
  contextualNamedEntities = v6->_contextualNamedEntities;
  v6->_contextualNamedEntities = v11;

  objc_storeStrong(&v6->_extractionOsBuild, self->super._extractionOsBuild);
  v6->_extractionAssetVersion = self->super._extractionAssetVersion;
  v6->_bucketizedSentimentScore = self->super._bucketizedSentimentScore;
  return v6;
}

- (PPMutableLocationRecord)init
{
  v3.receiver = self;
  v3.super_class = PPMutableLocationRecord;
  result = [(PPLocationRecord *)&v3 init_];
  if (result)
  {
    result->super._extractionAssetVersion = -1;
  }

  return result;
}

@end