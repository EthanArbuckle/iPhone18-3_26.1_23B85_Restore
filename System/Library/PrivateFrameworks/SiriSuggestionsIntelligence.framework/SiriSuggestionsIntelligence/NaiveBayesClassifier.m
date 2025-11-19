@interface NaiveBayesClassifier
- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5;
@end

@implementation NaiveBayesClassifier

- (id)predictionFromFeatures:(id)a3 options:(id)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  SiriSuggestionsIntelligence.NaiveBayesClassifier.prediction(from:options:)(a3);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

@end