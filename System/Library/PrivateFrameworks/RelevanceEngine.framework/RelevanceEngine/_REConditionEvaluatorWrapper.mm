@interface _REConditionEvaluatorWrapper
- (BOOL)shouldAcceptElement:(id)element;
@end

@implementation _REConditionEvaluatorWrapper

- (BOOL)shouldAcceptElement:(id)element
{
  if (!element)
  {
    return 0;
  }

  featureMapGenerator = self->_featureMapGenerator;
  if (!featureMapGenerator)
  {
    return 0;
  }

  v5 = featureMapGenerator[2];
  elementCopy = element;
  v7 = v5(featureMapGenerator, elementCopy);
  v8 = [REMLElement alloc];
  identifier = [elementCopy identifier];

  v10 = [(REMLElement *)v8 initWithIdentifier:identifier featureMap:v7];
  evaluator = self->_evaluator;
  featureMap = [(REMLElement *)v10 featureMap];
  LOBYTE(evaluator) = [(REConditionEvaluator *)evaluator acceptsFeatureMap:featureMap predictionSet:0 explanation:0];

  return evaluator;
}

@end