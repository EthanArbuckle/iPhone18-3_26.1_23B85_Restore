@interface REGroupRelevanceProviderManager
+ (id)_features;
- (id)_valueForProvider:(id)provider feature:(id)feature;
@end

@implementation REGroupRelevanceProviderManager

+ (id)_features
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature groupFeature];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_valueForProvider:(id)provider feature:(id)feature
{
  groupIdentifier = [provider groupIdentifier];
  v5 = [REFeatureValue featureValueWithString:groupIdentifier];

  return v5;
}

@end