@interface PPMutableTopicRecord
- (PPMutableTopicRecord)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setExtractionOsBuild:(id)build;
- (void)setSource:(id)source;
@end

@implementation PPMutableTopicRecord

- (void)setExtractionOsBuild:(id)build
{
  buildCopy = build;
  v7 = PPGetStringInternPool();
  v5 = [v7 intern:buildCopy];

  extractionOsBuild = self->super._extractionOsBuild;
  self->super._extractionOsBuild = v5;
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
  v4 = objc_opt_new();
  objc_storeStrong((v4 + 8), self->super._topic);
  objc_storeStrong((v4 + 16), self->super._source);
  *(v4 + 24) = self->super._algorithm;
  *(v4 + 32) = self->super._initialScore;
  *(v4 + 40) = self->super._decayRate;
  *(v4 + 48) = self->super._isLocal;
  objc_storeStrong((v4 + 56), self->super._extractionOsBuild);
  *(v4 + 64) = self->super._extractionAssetVersion;
  *(v4 + 80) = self->super._bucketizedSentimentScore;
  objc_storeStrong((v4 + 72), self->super._metadata);
  return v4;
}

- (PPMutableTopicRecord)init
{
  v3.receiver = self;
  v3.super_class = PPMutableTopicRecord;
  result = [(PPMutableTopicRecord *)&v3 init];
  if (result)
  {
    result->super._extractionAssetVersion = -1;
  }

  return result;
}

@end