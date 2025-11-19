@interface CREngineFast
- (CRConfidenceThresholdProviding)confidenceThresholdProvider;
@end

@implementation CREngineFast

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