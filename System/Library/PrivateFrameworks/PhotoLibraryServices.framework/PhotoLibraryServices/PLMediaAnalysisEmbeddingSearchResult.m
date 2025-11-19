@interface PLMediaAnalysisEmbeddingSearchResult
- (NSNumber)distance;
- (NSNumber)similarity;
- (PLMediaAnalysisEmbeddingSearchResult)initWithAssetUUID:(id)a3 metric:(int64_t)a4 metricValue:(id)a5;
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

- (PLMediaAnalysisEmbeddingSearchResult)initWithAssetUUID:(id)a3 metric:(int64_t)a4 metricValue:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PLMediaAnalysisEmbeddingSearchResult;
  v11 = [(PLMediaAnalysisEmbeddingSearchResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetUUID, a3);
    v12->_metric = a4;
    objc_storeStrong(&v12->_metricValue, a5);
  }

  return v12;
}

@end