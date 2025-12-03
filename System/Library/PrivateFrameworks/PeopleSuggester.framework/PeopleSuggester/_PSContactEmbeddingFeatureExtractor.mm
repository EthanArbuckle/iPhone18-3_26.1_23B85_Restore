@interface _PSContactEmbeddingFeatureExtractor
- (id)featureInputForContact:(id)contact;
- (id)featureInputsForContacts:(id)contacts;
@end

@implementation _PSContactEmbeddingFeatureExtractor

- (id)featureInputForContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(_PSFamilyFeatureExtractor);
  v5 = [(_PSFamilyFeatureExtractor *)v4 featureInputForContact:contactCopy];

  return v5;
}

- (id)featureInputsForContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = objc_alloc_init(_PSFamilyFeatureExtractor);
  v5 = [(_PSFamilyFeatureExtractor *)v4 featureInputsForContacts:contactsCopy];

  return v5;
}

@end