@interface PGPeopleCentricSuggestion
- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 asset:(id)a4;
- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifiers:(id)a3 asset:(id)a4;
@end

@implementation PGPeopleCentricSuggestion

- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifiers:(id)a3 asset:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGPeopleCentricSuggestion;
  v8 = [(PGSingleAssetSuggestion *)&v11 initWithType:3 subtype:305 asset:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_suggestedPersonLocalIdentifiers, a3);
  }

  return v9;
}

- (PGPeopleCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 asset:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v12.receiver = self;
  v12.super_class = PGPeopleCentricSuggestion;
  v7 = [(PGSingleAssetSuggestion *)&v12 initWithType:3 subtype:304 asset:a4];
  if (v7)
  {
    v13[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    suggestedPersonLocalIdentifiers = v7->_suggestedPersonLocalIdentifiers;
    v7->_suggestedPersonLocalIdentifiers = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end