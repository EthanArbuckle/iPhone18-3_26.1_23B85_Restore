@interface _VisionCoreCamGaze3FloatClassifier
- (BOOL)getGazeClassification:(int64_t *)a3 fromGazeProbabilitiesOutputData:(id)a4 error:(id *)a5;
@end

@implementation _VisionCoreCamGaze3FloatClassifier

- (BOOL)getGazeClassification:(int64_t *)a3 fromGazeProbabilitiesOutputData:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [v8 length];
  v10 = [(VisionCoreTensorDescriptor *)self->super._gazeProbabilitiesOutputDescriptor storageByteCount];
  if (v9 == v10)
  {
    v11 = [v8 bytes];
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = *v11 <= v14 || v12 <= v13;
    v16 = 3;
    if (v15)
    {
      v16 = 0;
    }

    if (v13 > v14 && v13 > v12)
    {
      v16 = 2;
    }

    if (v14 > v13 && v14 > v12)
    {
      v16 = 1;
    }

    *a3 = v16;
  }

  else if (a5)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"the gaze probabilities output data length is %lu, not the expected %lu for %@", v9, v10, self->super._gazeProbabilitiesOutputDescriptor];
    *a5 = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v19];
  }

  return v9 == v10;
}

@end