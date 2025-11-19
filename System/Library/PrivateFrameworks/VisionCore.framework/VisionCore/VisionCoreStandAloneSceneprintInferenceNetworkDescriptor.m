@interface VisionCoreStandAloneSceneprintInferenceNetworkDescriptor
+ (id)descriptorAndReturnError:(id *)a3;
- (VisionCoreTensorDescriptor)sceneprintOutput;
@end

@implementation VisionCoreStandAloneSceneprintInferenceNetworkDescriptor

+ (id)descriptorAndReturnError:(id *)a3
{
  if (a3)
  {
    *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForUnavailableResourceWithLocalizedDescription:@"stand-alone sceneprint model is no longer supported"];
  }

  return 0;
}

- (VisionCoreTensorDescriptor)sceneprintOutput
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"VisionCoreStandAloneSceneprintInferenceNetworkDescriptor.m" lineNumber:28 description:@"sceneprint tensor descriptor not available"];

  return 0;
}

@end