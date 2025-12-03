@interface PGPotentialRecentSocialGroupCentricSuggestion
- (PGPotentialRecentSocialGroupCentricSuggestion)initWithPersonLocalIdentifiers:(id)identifiers personWeights:(id)weights momentLocalIdentifiers:(id)localIdentifiers weight:(float)weight notSeenSinceDate:(id)date;
@end

@implementation PGPotentialRecentSocialGroupCentricSuggestion

- (PGPotentialRecentSocialGroupCentricSuggestion)initWithPersonLocalIdentifiers:(id)identifiers personWeights:(id)weights momentLocalIdentifiers:(id)localIdentifiers weight:(float)weight notSeenSinceDate:(id)date
{
  identifiersCopy = identifiers;
  weightsCopy = weights;
  localIdentifiersCopy = localIdentifiers;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = PGPotentialRecentSocialGroupCentricSuggestion;
  v17 = [(PGPotentialRecentSocialGroupCentricSuggestion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_personLocalIdentifiers, identifiers);
    objc_storeStrong(&v18->_personWeights, weights);
    objc_storeStrong(&v18->_momentLocalIdentifiers, localIdentifiers);
    v18->_weight = weight;
    objc_storeStrong(&v18->_notSeenSinceDate, date);
  }

  return v18;
}

@end