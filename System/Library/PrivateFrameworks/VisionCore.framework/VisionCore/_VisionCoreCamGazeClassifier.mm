@interface _VisionCoreCamGazeClassifier
+ (void)classifierForGazeProbabilitiesOutputDescriptor:(void *)descriptor error:;
- (BOOL)getGazeClassification:(int64_t *)classification fromGazeProbabilitiesOutputData:(id)data error:(id *)error;
- (id)_initWithGazeProbabilitiesOutputDescriptor:(id)descriptor;
@end

@implementation _VisionCoreCamGazeClassifier

- (BOOL)getGazeClassification:(int64_t *)classification fromGazeProbabilitiesOutputData:(id)data error:(id *)error
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [VisionCoreRuntimeUtilities signatureForItem:self selector:a2];
  [currentHandler handleFailureInMethod:a2 object:self file:@"VisionCoreCamGazeNetworkDescriptor.m" lineNumber:90 description:{@"%@ must be implemented", v9}];

  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:@"could not validate the gaze probabilities data shape"];
  }

  return 0;
}

- (id)_initWithGazeProbabilitiesOutputDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = _VisionCoreCamGazeClassifier;
  v6 = [(_VisionCoreCamGazeClassifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gazeProbabilitiesOutputDescriptor, descriptor);
  }

  return v7;
}

+ (void)classifierForGazeProbabilitiesOutputDescriptor:(void *)descriptor error:
{
  v4 = a2;
  objc_opt_self();
  shape = [v4 shape];
  if ([v4 dataType] == 65568 && objc_msgSend(shape, "elementCount") == 3 && (v6 = objc_opt_class()) != 0)
  {
    descriptor = [[v6 alloc] _initWithGazeProbabilitiesOutputDescriptor:v4];
  }

  else if (descriptor)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A gaze probabilties output of %@ is not supported", v4];
    *descriptor = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:v7];

    descriptor = 0;
  }

  return descriptor;
}

@end