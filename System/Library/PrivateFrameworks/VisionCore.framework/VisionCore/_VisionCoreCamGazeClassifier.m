@interface _VisionCoreCamGazeClassifier
+ (void)classifierForGazeProbabilitiesOutputDescriptor:(void *)a3 error:;
- (BOOL)getGazeClassification:(int64_t *)a3 fromGazeProbabilitiesOutputData:(id)a4 error:(id *)a5;
- (id)_initWithGazeProbabilitiesOutputDescriptor:(id)a3;
@end

@implementation _VisionCoreCamGazeClassifier

- (BOOL)getGazeClassification:(int64_t *)a3 fromGazeProbabilitiesOutputData:(id)a4 error:(id *)a5
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [VisionCoreRuntimeUtilities signatureForItem:self selector:a2];
  [v8 handleFailureInMethod:a2 object:self file:@"VisionCoreCamGazeNetworkDescriptor.m" lineNumber:90 description:{@"%@ must be implemented", v9}];

  if (a5)
  {
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:@"could not validate the gaze probabilities data shape"];
  }

  return 0;
}

- (id)_initWithGazeProbabilitiesOutputDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VisionCoreCamGazeClassifier;
  v6 = [(_VisionCoreCamGazeClassifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_gazeProbabilitiesOutputDescriptor, a3);
  }

  return v7;
}

+ (void)classifierForGazeProbabilitiesOutputDescriptor:(void *)a3 error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [v4 shape];
  if ([v4 dataType] == 65568 && objc_msgSend(v5, "elementCount") == 3 && (v6 = objc_opt_class()) != 0)
  {
    a3 = [[v6 alloc] _initWithGazeProbabilitiesOutputDescriptor:v4];
  }

  else if (a3)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"A gaze probabilties output of %@ is not supported", v4];
    *a3 = [MEMORY[0x1E696ABC0] VisionCoreErrorForFailedOperationWithLocalizedDescription:v7];

    a3 = 0;
  }

  return a3;
}

@end