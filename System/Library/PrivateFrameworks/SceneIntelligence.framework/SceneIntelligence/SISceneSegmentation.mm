@interface SISceneSegmentation
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SISceneSegmentation)initWithNetworkConfiguration:(id)configuration;
- (id)subLoggers;
- (int64_t)evaluateSemanticForImage:(__CVBuffer *)image semanticOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput uncertaintyOutput:(__CVBuffer *)uncertaintyOutput;
- (int64_t)evaluateSemanticForImageData:(id)data output:(id)output;
- (int64_t)postprocessingIOSSemanticOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput uncertaintyOutput:(__CVBuffer *)uncertaintyOutput;
- (int64_t)postprocessingOutput:(id)output;
- (void)_initializeUncertaintyThresholds:(float)thresholds;
- (void)dealloc;
@end

@implementation SISceneSegmentation

- (SISceneSegmentation)initWithNetworkConfiguration:(id)configuration
{
  v20[1] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = SISceneSegmentation;
  v6 = [(SIModel *)&v16 initWithNetworkConfiguration:configurationCopy];
  if (v6)
  {
    v19 = kSIMLSceneSegmentationInputTensorName;
    v7 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    v20[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [(SIModel *)v6 setInputs:v8];

    v17[0] = kSIMLSceneSegmentationOutputLabelsTensorName;
    v9 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    v18[0] = v9;
    v17[1] = kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName;
    v10 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    v18[1] = v10;
    v17[2] = kSIMLSceneSegmentationOutputNormalizationTensorName;
    v11 = [[SIPixelBuffer alloc] initWithCVPixelBuffer:0];
    v18[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
    [(SIModel *)v6 setOutputs:v12];

    [configurationCopy uncertaintyThreshold];
    [(SISceneSegmentation *)v6 _initializeUncertaintyThresholds:?];
    objc_storeStrong(&v6->_configuration, configuration);
    v13 = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_initializeUncertaintyThresholds:(float)thresholds
{
  network = [(SIModel *)self network];
  v6 = [network getOutputChannels:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  self->_uncertaintyThresholds = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  self->_probabilityThresholds = v7;
  if (v6)
  {
    uncertaintyThresholds = self->_uncertaintyThresholds;
    do
    {
      *uncertaintyThresholds++ = thresholds;
      v9 = 1.0 / (2.0 - thresholds);
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }
}

- (CGSize)getInputResolution
{
  network = [(SIModel *)self network];
  v4 = [network getInputWidth:kSIMLSceneSegmentationInputTensorName];
  network2 = [(SIModel *)self network];
  v6 = [network2 getInputHeight:kSIMLSceneSegmentationInputTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)getOutputResolution
{
  network = [(SIModel *)self network];
  v4 = [network getOutputWidth:kSIMLSceneSegmentationOutputLabelsTensorName];
  network2 = [(SIModel *)self network];
  v6 = [network2 getOutputHeight:kSIMLSceneSegmentationOutputLabelsTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)dealloc
{
  uncertaintyThresholds = self->_uncertaintyThresholds;
  if (uncertaintyThresholds)
  {
    free(uncertaintyThresholds);
  }

  probabilityThresholds = self->_probabilityThresholds;
  if (probabilityThresholds)
  {
    free(probabilityThresholds);
  }

  v5.receiver = self;
  v5.super_class = SISceneSegmentation;
  [(SISceneSegmentation *)&v5 dealloc];
}

- (int64_t)evaluateSemanticForImageData:(id)data output:(id)output
{
  dataCopy = data;
  outputCopy = output;
  v8 = -[SISceneSegmentation evaluateSemanticForImage:semanticOutput:confidenceOutput:uncertaintyOutput:](self, "evaluateSemanticForImage:semanticOutput:confidenceOutput:uncertaintyOutput:", [dataCopy inputImageBuffer], objc_msgSend(outputCopy, "semantic"), objc_msgSend(outputCopy, "confidence"), objc_msgSend(outputCopy, "uncertainty"));

  return v8;
}

- (int64_t)evaluateSemanticForImage:(__CVBuffer *)image semanticOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput uncertaintyOutput:(__CVBuffer *)uncertaintyOutput
{
  v9 = [(SIModel *)self inputs:image];
  v10 = [v9 objectForKeyedSubscript:kSIMLSceneSegmentationInputTensorName];
  [v10 setPixelBuffer:image];

  outputs = [(SIModel *)self outputs];
  v12 = [outputs objectForKeyedSubscript:kSIMLSceneSegmentationOutputLabelsTensorName];
  [v12 setPixelBuffer:output];

  inputs = [(SIModel *)self inputs];
  outputs2 = [(SIModel *)self outputs];
  [(SIModel *)self evaluateWithInput:inputs outputs:outputs2];

  return 0;
}

- (int64_t)postprocessingOutput:(id)output
{
  outputCopy = output;
  v5 = -[SISceneSegmentation postprocessingSemanticOutput:confidenceOutput:uncertaintyOutput:](self, "postprocessingSemanticOutput:confidenceOutput:uncertaintyOutput:", [outputCopy semantic], objc_msgSend(outputCopy, "confidence"), objc_msgSend(outputCopy, "uncertainty"));

  return v5;
}

- (int64_t)postprocessingIOSSemanticOutput:(__CVBuffer *)output confidenceOutput:(__CVBuffer *)confidenceOutput uncertaintyOutput:(__CVBuffer *)uncertaintyOutput
{
  network = [(SIModel *)self network];
  v45 = [network getOutputSurface:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  network2 = [(SIModel *)self network];
  v46 = [network2 getOutputSurface:kSIMLSceneSegmentationOutputNormalizationTensorName];

  network3 = [(SIModel *)self network];
  v10 = [network3 getOutputChannels:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  Width = CVPixelBufferGetWidth(output);
  Height = CVPixelBufferGetHeight(output);
  BytesPerRow = CVPixelBufferGetBytesPerRow(output);
  v48 = CVPixelBufferGetBytesPerRow(confidenceOutput);
  v47 = CVPixelBufferGetBytesPerRow(uncertaintyOutput);
  v13 = IOSurfaceGetBytesPerRow([v46 ioSurface]);
  kdebug_trace();
  CVPixelBufferLockBaseAddress(output, 0);
  CVPixelBufferLockBaseAddress(confidenceOutput, 0);
  CVPixelBufferLockBaseAddress(uncertaintyOutput, 0);
  IOSurfaceLock([v45 ioSurface], 0, 0);
  IOSurfaceLock([v46 ioSurface], 0, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(confidenceOutput);
  v15 = CVPixelBufferGetBaseAddress(uncertaintyOutput);
  outputCopy = output;
  v16 = CVPixelBufferGetBaseAddress(output);
  v17 = IOSurfaceGetBaseAddress([v46 ioSurface]);
  v18 = IOSurfaceGetBaseAddress([v45 ioSurface]);
  if (Height)
  {
    v19 = v18;
    for (i = 0; i != Height; ++i)
    {
      if (Width)
      {
        v21 = 0;
        v22 = &v15[i * v47];
        probabilityThresholds = self->_probabilityThresholds;
        v24 = v18;
        do
        {
          v25 = v16[i * BytesPerRow + v21];
          _H1 = *&v19[2 * i * Width + 2 * Height * Width * v25 + 2 * v21];
          _H2 = *&v17[2 * v21 + i * v13];
          __asm
          {
            FCVT            S1, H1
            FCVT            S2, H2
          }

          v33 = _S1 / _S2;
          *&BaseAddress[4 * v21 + i * v48] = v33;
          if (v33 >= probabilityThresholds[v25])
          {
            *&v22[4 * v21] = 1065353216;
          }

          else
          {
            if (v10)
            {
              v34 = 0;
              v35 = 0.0;
              v36 = v24;
              do
              {
                _H3 = *v36;
                __asm { FCVT            S3, H3 }

                if (v35 < _S3 && v35 != _S1)
                {
                  v35 = _S3;
                }

                ++v34;
                v36 += Width * Height;
              }

              while (v10 > v34);
            }

            else
            {
              v35 = 0.0;
            }

            v40 = 1.0 - (v35 / _S1);
            if (v40 >= self->_uncertaintyThresholds[v25])
            {
              *&v22[4 * v21] = v40;
            }

            else
            {
              *&v22[4 * v21] = 0;
            }
          }

          ++v21;
          ++v24;
        }

        while (v21 != Width);
      }

      v18 += 2 * Width;
    }
  }

  CVPixelBufferUnlockBaseAddress(outputCopy, 0);
  CVPixelBufferUnlockBaseAddress(confidenceOutput, 0);
  CVPixelBufferUnlockBaseAddress(uncertaintyOutput, 0);
  IOSurfaceUnlock([v45 ioSurface], 0, 0);
  IOSurfaceUnlock([v46 ioSurface], 0, 0);
  kdebug_trace();

  return 0;
}

- (id)subLoggers
{
  v4.receiver = self;
  v4.super_class = SISceneSegmentation;
  subLoggers = [(SIModel *)&v4 subLoggers];

  return subLoggers;
}

@end