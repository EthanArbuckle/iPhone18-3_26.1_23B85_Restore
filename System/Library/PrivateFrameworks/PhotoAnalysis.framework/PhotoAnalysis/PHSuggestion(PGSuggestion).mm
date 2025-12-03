@interface PHSuggestion(PGSuggestion)
- (id)features;
- (id)keyAssets;
- (id)representativeAssets;
- (id)suggestedPersonLocalIdentifiers;
- (uint64_t)containsUnverifiedPersons;
@end

@implementation PHSuggestion(PGSuggestion)

- (uint64_t)containsUnverifiedPersons
{
  featuresProperties = [self featuresProperties];
  v2 = [featuresProperties objectForKeyedSubscript:@"containsUnverifiedPersons"];

  bOOLValue = [v2 BOOLValue];
  return bOOLValue;
}

- (id)suggestedPersonLocalIdentifiers
{
  featuresProperties = [self featuresProperties];
  v2 = [featuresProperties objectForKeyedSubscript:@"suggestedPersonLocalIdentifiers"];

  return v2;
}

- (id)features
{
  featuresProperties = [self featuresProperties];
  v2 = [featuresProperties objectForKeyedSubscript:@"features"];

  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

- (id)representativeAssets
{
  fetchedObjects = objc_getAssociatedObject(self, "PHSuggestionPGSuggestionRepresentativeAssets");
  if (!fetchedObjects)
  {
    v3 = [MEMORY[0x277CD97A8] fetchAssetsInAssetCollection:self options:0];
    fetchedObjects = [v3 fetchedObjects];
    objc_setAssociatedObject(self, "PHSuggestionPGSuggestionRepresentativeAssets", fetchedObjects, 1);
  }

  return fetchedObjects;
}

- (id)keyAssets
{
  fetchedObjects = objc_getAssociatedObject(self, "PHSuggestionPGSuggestionKeyAssets");
  if (!fetchedObjects)
  {
    v3 = [MEMORY[0x277CD97A8] fetchKeyAssetsInAssetCollection:self options:0];
    fetchedObjects = [v3 fetchedObjects];
    objc_setAssociatedObject(self, "PHSuggestionPGSuggestionKeyAssets", fetchedObjects, 1);
  }

  return fetchedObjects;
}

@end