@interface PGFeatureTransformersForFeatureExtractors
- (PGFeatureTransformersForFeatureExtractors)init;
- (id)featureTransformersForFeatureExtractorName:(id)a3;
- (void)addFeatureTransformers:(id)a3 forFeatureExtractorName:(id)a4;
@end

@implementation PGFeatureTransformersForFeatureExtractors

- (id)featureTransformersForFeatureExtractorName:(id)a3
{
  v4 = a3;
  v5 = [(PGFeatureTransformersForFeatureExtractors *)self featureTransformersForFeatureExtractors];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)addFeatureTransformers:(id)a3 forFeatureExtractorName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PGFeatureTransformersForFeatureExtractors *)self featureTransformersForFeatureExtractors];
  [v8 setObject:v7 forKey:v6];
}

- (PGFeatureTransformersForFeatureExtractors)init
{
  v5.receiver = self;
  v5.super_class = PGFeatureTransformersForFeatureExtractors;
  v2 = [(PGFeatureTransformersForFeatureExtractors *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(PGFeatureTransformersForFeatureExtractors *)v2 setFeatureTransformersForFeatureExtractors:v3];
  }

  return v2;
}

@end