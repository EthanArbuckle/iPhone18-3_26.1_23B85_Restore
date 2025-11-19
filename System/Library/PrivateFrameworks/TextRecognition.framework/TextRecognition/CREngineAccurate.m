@interface CREngineAccurate
- (CRConfidenceThresholdProviding)confidenceThresholdProvider;
@end

@implementation CREngineAccurate

- (CRConfidenceThresholdProviding)confidenceThresholdProvider
{
  result = *self->confidenceThresholdProviderFacade;
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

@end