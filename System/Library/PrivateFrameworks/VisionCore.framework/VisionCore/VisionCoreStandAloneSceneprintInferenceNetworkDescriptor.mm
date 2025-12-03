@interface VisionCoreStandAloneSceneprintInferenceNetworkDescriptor
+ (id)descriptorAndReturnError:(id *)error;
- (VisionCoreTensorDescriptor)sceneprintOutput;
@end

@implementation VisionCoreStandAloneSceneprintInferenceNetworkDescriptor

+ (id)descriptorAndReturnError:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:@"stand-alone sceneprint model is no longer supported"];
  }

  return 0;
}

- (VisionCoreTensorDescriptor)sceneprintOutput
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"VisionCoreStandAloneSceneprintInferenceNetworkDescriptor.m" lineNumber:28 description:@"sceneprint tensor descriptor not available"];

  return 0;
}

@end