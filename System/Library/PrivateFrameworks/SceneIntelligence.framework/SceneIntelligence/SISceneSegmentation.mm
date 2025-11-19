@interface SISceneSegmentation
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SISceneSegmentation)initWithNetworkConfiguration:(id)a3;
- (id)subLoggers;
- (int64_t)evaluateSemanticForImage:(__CVBuffer *)a3 semanticOutput:(__CVBuffer *)a4 confidenceOutput:(__CVBuffer *)a5 uncertaintyOutput:(__CVBuffer *)a6;
- (int64_t)evaluateSemanticForImageData:(id)a3 output:(id)a4;
- (int64_t)postprocessingIOSSemanticOutput:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 uncertaintyOutput:(__CVBuffer *)a5;
- (int64_t)postprocessingOutput:(id)a3;
- (void)_initializeUncertaintyThresholds:(float)a3;
- (void)dealloc;
@end

@implementation SISceneSegmentation

- (SISceneSegmentation)initWithNetworkConfiguration:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SISceneSegmentation;
  v6 = [(SIModel *)&v16 initWithNetworkConfiguration:v5];
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

    [v5 uncertaintyThreshold];
    [(SISceneSegmentation *)v6 _initializeUncertaintyThresholds:?];
    objc_storeStrong(&v6->_configuration, a3);
    v13 = v6;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_initializeUncertaintyThresholds:(float)a3
{
  v5 = [(SIModel *)self network];
  v6 = [v5 getOutputChannels:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  self->_uncertaintyThresholds = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  v7 = malloc_type_malloc(4 * v6, 0x100004052888210uLL);
  self->_probabilityThresholds = v7;
  if (v6)
  {
    uncertaintyThresholds = self->_uncertaintyThresholds;
    do
    {
      *uncertaintyThresholds++ = a3;
      v9 = 1.0 / (2.0 - a3);
      *v7++ = v9;
      --v6;
    }

    while (v6);
  }
}

- (CGSize)getInputResolution
{
  v3 = [(SIModel *)self network];
  v4 = [v3 getInputWidth:kSIMLSceneSegmentationInputTensorName];
  v5 = [(SIModel *)self network];
  v6 = [v5 getInputHeight:kSIMLSceneSegmentationInputTensorName];

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)getOutputResolution
{
  v3 = [(SIModel *)self network];
  v4 = [v3 getOutputWidth:kSIMLSceneSegmentationOutputLabelsTensorName];
  v5 = [(SIModel *)self network];
  v6 = [v5 getOutputHeight:kSIMLSceneSegmentationOutputLabelsTensorName];

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

- (int64_t)evaluateSemanticForImageData:(id)a3 output:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = -[SISceneSegmentation evaluateSemanticForImage:semanticOutput:confidenceOutput:uncertaintyOutput:](self, "evaluateSemanticForImage:semanticOutput:confidenceOutput:uncertaintyOutput:", [v6 inputImageBuffer], objc_msgSend(v7, "semantic"), objc_msgSend(v7, "confidence"), objc_msgSend(v7, "uncertainty"));

  return v8;
}

- (int64_t)evaluateSemanticForImage:(__CVBuffer *)a3 semanticOutput:(__CVBuffer *)a4 confidenceOutput:(__CVBuffer *)a5 uncertaintyOutput:(__CVBuffer *)a6
{
  v9 = [(SIModel *)self inputs:a3];
  v10 = [v9 objectForKeyedSubscript:kSIMLSceneSegmentationInputTensorName];
  [v10 setPixelBuffer:a3];

  v11 = [(SIModel *)self outputs];
  v12 = [v11 objectForKeyedSubscript:kSIMLSceneSegmentationOutputLabelsTensorName];
  [v12 setPixelBuffer:a4];

  v13 = [(SIModel *)self inputs];
  v14 = [(SIModel *)self outputs];
  [(SIModel *)self evaluateWithInput:v13 outputs:v14];

  return 0;
}

- (int64_t)postprocessingOutput:(id)a3
{
  v4 = a3;
  v5 = -[SISceneSegmentation postprocessingSemanticOutput:confidenceOutput:uncertaintyOutput:](self, "postprocessingSemanticOutput:confidenceOutput:uncertaintyOutput:", [v4 semantic], objc_msgSend(v4, "confidence"), objc_msgSend(v4, "uncertainty"));

  return v5;
}

- (int64_t)postprocessingIOSSemanticOutput:(__CVBuffer *)a3 confidenceOutput:(__CVBuffer *)a4 uncertaintyOutput:(__CVBuffer *)a5
{
  v7 = [(SIModel *)self network];
  v45 = [v7 getOutputSurface:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  v8 = [(SIModel *)self network];
  v46 = [v8 getOutputSurface:kSIMLSceneSegmentationOutputNormalizationTensorName];

  v9 = [(SIModel *)self network];
  v10 = [v9 getOutputChannels:kSIMLSceneSegmentationOutputExponentiatedLogitsTensorName];

  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a3);
  v48 = CVPixelBufferGetBytesPerRow(a4);
  v47 = CVPixelBufferGetBytesPerRow(a5);
  v13 = IOSurfaceGetBytesPerRow([v46 ioSurface]);
  kdebug_trace();
  CVPixelBufferLockBaseAddress(a3, 0);
  CVPixelBufferLockBaseAddress(a4, 0);
  CVPixelBufferLockBaseAddress(a5, 0);
  IOSurfaceLock([v45 ioSurface], 0, 0);
  IOSurfaceLock([v46 ioSurface], 0, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a4);
  v15 = CVPixelBufferGetBaseAddress(a5);
  v42 = a3;
  v16 = CVPixelBufferGetBaseAddress(a3);
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

  CVPixelBufferUnlockBaseAddress(v42, 0);
  CVPixelBufferUnlockBaseAddress(a4, 0);
  CVPixelBufferUnlockBaseAddress(a5, 0);
  IOSurfaceUnlock([v45 ioSurface], 0, 0);
  IOSurfaceUnlock([v46 ioSurface], 0, 0);
  kdebug_trace();

  return 0;
}

- (id)subLoggers
{
  v4.receiver = self;
  v4.super_class = SISceneSegmentation;
  v2 = [(SIModel *)&v4 subLoggers];

  return v2;
}

@end