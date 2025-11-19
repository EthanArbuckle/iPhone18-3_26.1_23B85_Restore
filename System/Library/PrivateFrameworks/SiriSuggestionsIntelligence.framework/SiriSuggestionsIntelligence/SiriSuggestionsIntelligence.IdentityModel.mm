@interface SiriSuggestionsIntelligence.IdentityModel
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation SiriSuggestionsIntelligence.IdentityModel

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = SiriSuggestionsIntelligence.IdentityModel.prediction(from:options:)();

  swift_unknownObjectRelease();

  return v9;
}

@end