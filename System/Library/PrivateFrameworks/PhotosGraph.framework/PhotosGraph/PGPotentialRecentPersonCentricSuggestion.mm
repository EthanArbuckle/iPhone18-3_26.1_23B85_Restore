@interface PGPotentialRecentPersonCentricSuggestion
- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier assets:(id)assets notSeenSinceDate:(id)date;
- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier assets:(id)assets relationshipScore:(unint64_t)score;
@end

@implementation PGPotentialRecentPersonCentricSuggestion

- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier assets:(id)assets notSeenSinceDate:(id)date
{
  identifierCopy = identifier;
  assetsCopy = assets;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = PGPotentialRecentPersonCentricSuggestion;
  v12 = [(PGPotentialRecentPersonCentricSuggestion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_personLocalIdentifier, identifier);
    objc_storeStrong(&v13->_assets, assets);
    objc_storeStrong(&v13->_notSeenSinceDate, date);
  }

  return v13;
}

- (PGPotentialRecentPersonCentricSuggestion)initWithPersonLocalIdentifier:(id)identifier assets:(id)assets relationshipScore:(unint64_t)score
{
  identifierCopy = identifier;
  assetsCopy = assets;
  v14.receiver = self;
  v14.super_class = PGPotentialRecentPersonCentricSuggestion;
  v11 = [(PGPotentialRecentPersonCentricSuggestion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_personLocalIdentifier, identifier);
    objc_storeStrong(&v12->_assets, assets);
    v12->_relationshipScore = score;
  }

  return v12;
}

@end