@interface PGPotentialRecentPersonCentricSuggestion
- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 assets:(id)a4 notSeenSinceDate:(id)a5;
- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 assets:(id)a4 relationshipScore:(unint64_t)a5;
@end

@implementation PGPotentialRecentPersonCentricSuggestion

- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 assets:(id)a4 notSeenSinceDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGPotentialRecentPersonCentricSuggestion;
  v12 = [(PGPotentialRecentPersonCentricSuggestion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifier, a3);
    objc_storeStrong(&v13->_assets, a4);
    objc_storeStrong(&v13->_notSeenSinceDate, a5);
  }

  return v13;
}

- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)a3 assets:(id)a4 relationshipScore:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PGPotentialRecentPersonCentricSuggestion;
  v11 = [(PGPotentialRecentPersonCentricSuggestion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personLocalIdentifier, a3);
    objc_storeStrong(&v12->_assets, a4);
    v12->_relationshipScore = a5;
  }

  return v12;
}

@end