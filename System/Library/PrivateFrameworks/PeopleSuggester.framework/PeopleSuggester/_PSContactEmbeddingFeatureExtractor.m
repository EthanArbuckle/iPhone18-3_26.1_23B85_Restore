@interface _PSContactEmbeddingFeatureExtractor
- (id)featureInputForContact:(id)a3;
- (id)featureInputsForContacts:(id)a3;
@end

@implementation _PSContactEmbeddingFeatureExtractor

- (id)featureInputForContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_PSFamilyFeatureExtractor);
  v5 = [(_PSFamilyFeatureExtractor *)v4 featureInputForContact:v3];

  return v5;
}

- (id)featureInputsForContacts:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_PSFamilyFeatureExtractor);
  v5 = [(_PSFamilyFeatureExtractor *)v4 featureInputsForContacts:v3];

  return v5;
}

@end