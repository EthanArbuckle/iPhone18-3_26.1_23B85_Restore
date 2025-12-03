@interface NaiveBayesClassifier
- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error;
@end

@implementation NaiveBayesClassifier

- (id)predictionFromFeatures:(id)features options:(id)options error:(id *)error
{
  swift_unknownObjectRetain();
  optionsCopy = options;
  selfCopy = self;
  SiriSuggestionsIntelligence.NaiveBayesClassifier.prediction(from:options:)(features);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end