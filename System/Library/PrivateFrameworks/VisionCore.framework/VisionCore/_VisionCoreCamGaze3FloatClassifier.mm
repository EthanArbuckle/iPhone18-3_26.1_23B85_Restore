@interface _VisionCoreCamGaze3FloatClassifier
- (BOOL)getGazeClassification:(int64_t *)classification fromGazeProbabilitiesOutputData:(id)data error:(id *)error;
@end

@implementation _VisionCoreCamGaze3FloatClassifier

- (BOOL)getGazeClassification:(int64_t *)classification fromGazeProbabilitiesOutputData:(id)data error:(id *)error
{
  dataCopy = data;
  v9 = [dataCopy length];
  storageByteCount = [(VisionCoreTensorDescriptor *)self->super._gazeProbabilitiesOutputDescriptor storageByteCount];
  if (v9 == storageByteCount)
  {
    bytes = [dataCopy bytes];
    v12 = *bytes;
    v13 = bytes[1];
    v14 = bytes[2];
    v15 = *bytes <= v14 || v12 <= v13;
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

    *classification = v16;
  }

  else if (error)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"the gaze probabilities output data length is %lu, not the expected %lu for %@", v9, storageByteCount, self->super._gazeProbabilitiesOutputDescriptor];
    *error = [MEMORY[0x1E696ABC0] VisionCoreErrorForInvalidArgumentWithLocalizedDescription:v19];
  }

  return v9 == storageByteCount;
}

@end