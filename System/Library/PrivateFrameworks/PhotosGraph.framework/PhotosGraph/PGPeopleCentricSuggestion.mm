@interface PGPeopleCentricSuggestion
- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier asset:(id)asset;
- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifiers:(id)identifiers asset:(id)asset;
@end

@implementation PGPeopleCentricSuggestion

- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifiers:(id)identifiers asset:(id)asset
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = PGPeopleCentricSuggestion;
  v8 = [(PGSingleAssetSuggestion *)&v11 initWithType:3 subtype:305 asset:asset];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestedPersonLocalIdentifiers, identifiers);
  }

  return v9;
}

- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier asset:(id)asset
{
  v13[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = PGPeopleCentricSuggestion;
  v7 = [(PGSingleAssetSuggestion *)&v12 initWithType:3 subtype:304 asset:asset];
  if (v7)
  {
    v13[0] = identifierCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    suggestedPersonLocalIdentifiers = v7->_suggestedPersonLocalIdentifiers;
    v7->_suggestedPersonLocalIdentifiers = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end