@interface SiriSuggestionsIntelligence.IdentityModel
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation SiriSuggestionsIntelligence.IdentityModel

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  v9 = SiriSuggestionsIntelligence.IdentityModel.prediction(from:options:)();

  swift_unknownObjectRelease();

  return v9;
}

@end