@interface PLMediaAnalysisEmbeddingSearchResult
- (NSNumber)distance;
- (NSNumber)similarity;
- (PLMediaAnalysisEmbeddingSearchResult)initWithAssetUUID:(id)d metric:(int64_t)metric metricValue:(id)value;
@end

@implementation PLMediaAnalysisEmbeddingSearchResult

- (NSNumber)similarity
{
  if ((self->_metric | 2) == 2)
  {
    v2 = self->_metricValue;
  }

  else
  {
    [(NSNumber *)self->_metricValue doubleValue];
    v2 = [MEMORY[0x1E696AD98] numberWithDouble:(2.0 - v3 * v3) * 0.5];
  }

  return v2;
}

- (NSNumber)distance
{
  p_metricValue = &self->_metricValue;
  metricValue = self->_metricValue;
  if (p_metricValue[1] == 1)
  {
    v4 = metricValue;
  }

  else
  {
    [(NSNumber *)metricValue doubleValue];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:sqrt(v5 * -2.0 + 2.0)];
  }

  return v4;
}

- (PLMediaAnalysisEmbeddingSearchResult)initWithAssetUUID:(id)d metric:(int64_t)metric metricValue:(id)value
{
  dCopy = d;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = PLMediaAnalysisEmbeddingSearchResult;
  v11 = [(PLMediaAnalysisEmbeddingSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUID, d);
    v12->_metric = metric;
    objc_storeStrong(&v12->_metricValue, value);
  }

  return v12;
}

@end