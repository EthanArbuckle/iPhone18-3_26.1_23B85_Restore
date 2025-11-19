@interface PGPotentialRecentSocialGroupCentricSuggestion
- (PGPotentialRecentSocialGroupCentricSuggestion)initWithPersonLocalIdentifiers:(id)a3 personWeights:(id)a4 momentLocalIdentifiers:(id)a5 weight:(float)a6 notSeenSinceDate:(id)a7;
@end

@implementation PGPotentialRecentSocialGroupCentricSuggestion

- (PGPotentialRecentSocialGroupCentricSuggestion)initWithPersonLocalIdentifiers:(id)a3 personWeights:(id)a4 momentLocalIdentifiers:(id)a5 weight:(float)a6 notSeenSinceDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = PGPotentialRecentSocialGroupCentricSuggestion;
  v17 = [(PGPotentialRecentSocialGroupCentricSuggestion *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_personLocalIdentifiers, a3);
    objc_storeStrong(&v18->_personWeights, a4);
    objc_storeStrong(&v18->_momentLocalIdentifiers, a5);
    v18->_weight = a6;
    objc_storeStrong(&v18->_notSeenSinceDate, a7);
  }

  return v18;
}

@end