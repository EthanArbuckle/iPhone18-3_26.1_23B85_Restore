@interface SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider

- (NSSet)featureNames
{

  SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureNames.getter();

  v2 = sub_1DA421EA4();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_1DA421B94();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  v7 = SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureValue(for:)(v6);

  return v7;
}

@end