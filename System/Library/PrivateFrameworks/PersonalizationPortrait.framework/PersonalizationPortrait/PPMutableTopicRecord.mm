@interface PPMutableTopicRecord
- (PPMutableTopicRecord)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setExtractionOsBuild:(id)a3;
- (void)setSource:(id)a3;
@end

@implementation PPMutableTopicRecord

- (void)setExtractionOsBuild:(id)a3
{
  v4 = a3;
  v7 = PPGetStringInternPool();
  v5 = [v7 intern:v4];

  extractionOsBuild = self->super._extractionOsBuild;
  self->super._extractionOsBuild = v5;
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