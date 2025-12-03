@interface SISceneUnderstandingAlgorithm
+ (CGSize)outputResolution;
- (SISceneUnderstandingAlgorithm)initWithInputResolution:(CGSize)resolution andComputeEngine:(int64_t)engine;
- (void)runWithInput:(__CVBuffer *)input output:(__IOSurface *)output confidenceOutput:(__IOSurface *)confidenceOutput normalsOutput:(__IOSurface *)normalsOutput orientation:(int64_t)orientation;
@end

@implementation SISceneUnderstandingAlgorithm

+ (CGSize)outputResolution
{
  +[SISceneUnderstandingResult outputDimensions];
  result.height = v3;
  result.width = v2;
  return result;
}

- (SISceneUnderstandingAlgorithm)initWithInputResolution:(CGSize)resolution andComputeEngine:(int64_t)engine
{
  v15.receiver = self;
  v15.super_class = SISceneUnderstandingAlgorithm;
  v5 = [(SISceneUnderstandingAlgorithm *)&v15 init:resolution.width];
  if (v5 && (v6 = [[SISceneUnderstanding alloc] initWithComputeEngine:engine], segmentation = v5->_segmentation, v5->_segmentation = v6, segmentation, v5->_segmentation))
  {
    v8 = [[SISceneUnderstandingResult alloc] initWithModel:v5->_segmentation];
    v9 = v5->_result;
    v5->_result = v8;

    v10 = [SIVideoToolboxScaler alloc];
    +[SISceneUnderstanding inputResolution];
    v11 = [(SIBaseScaler *)v10 initForOutputResolution:1111970369 outputPixelFormat:0 mode:@"SceneUnderstanding" algorithmKey:?];
    scalerOne = v5->_scalerOne;
    v5->_scalerOne = v11;

    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)runWithInput:(__CVBuffer *)input output:(__IOSurface *)output confidenceOutput:(__IOSurface *)confidenceOutput normalsOutput:(__IOSurface *)normalsOutput orientation:(int64_t)orientation
{
  v27 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v13 = [(SIVideoToolboxScaler *)self->_scalerOne createScaledImage:input];
  v14 = [(SISceneUnderstanding *)self->_segmentation evaluateImage:v13 results:self->_result];
  CVPixelBufferRelease(v13);
  kdebug_trace();
  if (v14)
  {
    v15 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstandingAlgorithm.m";
      v25 = 1025;
      v26 = 93;
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to run scene understanding on image input ***", buf, 0x12u);
    }
  }

  else
  {
    pixelBufferOut = 0;
    if (CVPixelBufferCreateWithIOSurface(0, output, 0, &pixelBufferOut))
    {
      v16 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstandingAlgorithm.m";
        v25 = 1025;
        v26 = 101;
        _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unable to create semantic pixel buffer from Surface ***", buf, 0x12u);
      }
    }

    else
    {
      [(SISceneUnderstandingResult *)self->_result writeLabels:pixelBufferOut];
    }

    texture = 0;
    if (CVPixelBufferCreateWithIOSurface(0, confidenceOutput, 0, &texture))
    {
      v17 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstandingAlgorithm.m";
        v25 = 1025;
        v26 = 111;
        _os_log_impl(&dword_21DE0D000, v17, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unable to create probabilities pixel buffer from Surface ***", buf, 0x12u);
      }
    }

    else
    {
      [(SISceneUnderstandingResult *)self->_result writeProbabilities:texture];
    }

    v20 = 0;
    if (CVPixelBufferCreateWithIOSurface(0, normalsOutput, 0, &v20))
    {
      v18 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneUnderstanding/SISceneUnderstandingAlgorithm.m";
        v25 = 1025;
        v26 = 121;
        _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unable to create normals pixel buffer from Surface ***", buf, 0x12u);
      }
    }

    else
    {
      [(SISceneUnderstandingResult *)self->_result writeNormals:v20 orientation:orientation];
    }

    CVPixelBufferRelease(pixelBufferOut);
    CVPixelBufferRelease(texture);
    CVPixelBufferRelease(v20);
    kdebug_trace();
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end