@interface PPMutableLocationRecord
- (PPMutableLocationRecord)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlgorithm:(unsigned __int16)a3;
- (void)setExtractionOsBuild:(id)a3;
- (void)setSentimentScore:(double)a3;
- (void)setSource:(id)a3;
@end

@implementation PPMutableLocationRecord

- (void)setSentimentScore:(double)a3
{
  if (a3 < -1.0)
  {
    a3 = -1.0;
  }

  self->super._bucketizedSentimentScore = (fmin(a3, 1.0) / 0.00787401575);
}

- (void)setExtractionOsBuild:(id)a3
{
  v4 = a3;
  v7 = PPGetStringInternPool();
  v5 = [v7 intern:v4];

  extractionOsBuild = self->super._extractionOsBuild;
  self->super._extractionOsBuild = v5;
}

- (void)setAlgorithm:(unsigned __int16)a3
{
  v3 = a3;
  if (a3 >= 0x100u)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:688 description:@"Algorithm storage too small"];
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
  if (!self->super._uuid)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:649 description:{@"Invalid parameter not satisfying: %@", @"_uuid"}];
  }

  if (!self->super._location)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:650 description:{@"Invalid parameter not satisfying: %@", @"_location"}];
  }

  if (!self->super._source)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PPLocation.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"_source"}];
  }

  v6 = [[PPLocationRecord allocWithZone:?]];
  v7 = [(NSUUID *)self->super._uuid copyWithZone:a3];
  uuid = v6->_uuid;
  v6->_uuid = v7;

  v9 = [(PPLocation *)self->super._location copyWithZone:a3];
  location = v6->_location;
  v6->_location = v9;

  objc_storeStrong(&v6->_source, self->super._source);
  v6->_algorithm = self->super._algorithm;
  v6->_initialScore = self->super._initialScore;
  v6->_decayRate = self->super._decayRate;
  v11 = [(NSArray *)self->super._contextualNamedEntities copyWithZone:a3];
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