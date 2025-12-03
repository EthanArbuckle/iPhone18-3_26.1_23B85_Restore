@interface PGFeatureTransformersForFeatureExtractors
- (PGFeatureTransformersForFeatureExtractors)init;
- (id)featureTransformersForFeatureExtractorName:(id)name;
- (void)addFeatureTransformers:(id)transformers forFeatureExtractorName:(id)name;
@end

@implementation PGFeatureTransformersForFeatureExtractors

- (id)featureTransformersForFeatureExtractorName:(id)name
{
  nameCopy = name;
  featureTransformersForFeatureExtractors = [(PGFeatureTransformersForFeatureExtractors *)self featureTransformersForFeatureExtractors];
  v6 = [featureTransformersForFeatureExtractors objectForKeyedSubscript:nameCopy];

  return v6;
}

- (void)addFeatureTransformers:(id)transformers forFeatureExtractorName:(id)name
{
  nameCopy = name;
  transformersCopy = transformers;
  featureTransformersForFeatureExtractors = [(PGFeatureTransformersForFeatureExtractors *)self featureTransformersForFeatureExtractors];
  [featureTransformersForFeatureExtractors setObject:transformersCopy forKey:nameCopy];
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