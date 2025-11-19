@interface SISceneSegmentationAlgorithm
- (SISceneSegmentationAlgorithm)initWithComputeEngine:(int64_t)a3 andNetworkConfiguration:(int64_t)a4 uncertaintyThreshold:(float)a5;
- (SISceneSegmentationAlgorithm)initWithNetworkConfiguration:(id)a3;
- (int64_t)_postprocessingOutput:(id)a3;
- (int64_t)_preprocessingInputData:(id)a3;
- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4 confidenceOutput:(__IOSurface *)a5 uncertaintyOutput:(__IOSurface *)a6 resampleOutput:(BOOL)a7 networkConfiguration:(int64_t)a8;
- (int64_t)switchConfiguration:(unint64_t)a3;
@end

@implementation SISceneSegmentationAlgorithm

- (SISceneSegmentationAlgorithm)initWithComputeEngine:(int64_t)a3 andNetworkConfiguration:(int64_t)a4 uncertaintyThreshold:(float)a5
{
  v9 = objc_alloc_init(SISceneSegmentationNetworkConfiguration);
  [(SINetworkConfiguration *)v9 setEngineType:a3];
  [(SISceneSegmentationNetworkConfiguration *)v9 setNetworkModeEnum:a4];
  [(SINetworkConfiguration *)v9 setRunByE5RT:1];
  *&v10 = a5;
  [(SISceneSegmentationNetworkConfiguration *)v9 setUncertaintyThreshold:v10];
  [(SISceneSegmentationNetworkConfiguration *)v9 setModelConfig:1];
  v11 = [(SISceneSegmentationAlgorithm *)self initWithNetworkConfiguration:v9];

  return v11;
}

- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4 confidenceOutput:(__IOSurface *)a5 uncertaintyOutput:(__IOSurface *)a6 resampleOutput:(BOOL)a7 networkConfiguration:(int64_t)a8
{
  v27 = *MEMORY[0x277D85DE8];
  v14 = objc_alloc_init(SIImageInputData);
  [(SIImageInputData *)v14 setInputImageBuffer:a3];
  [(SIImageInputData *)v14 setInputDepthBuffer:0];
  texture = 0;
  pixelBufferOut = 0;
  v20 = 0;
  if (CVPixelBufferCreateWithIOSurface(0, a4, 0, &pixelBufferOut))
  {
    v15 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v25 = 1025;
      v26 = 78;
LABEL_7:
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to allocate temp buffer for semantic ***", buf, 0x12u);
    }
  }

  else if (CVPixelBufferCreateWithIOSurface(0, a5, 0, &texture))
  {
    v15 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v25 = 1025;
      v26 = 80;
      goto LABEL_7;
    }
  }

  else
  {
    if (!a6 || !CVPixelBufferCreateWithIOSurface(0, a6, 0, &v20))
    {
      v19 = [SISceneSegmentationData alloc];
      v15 = [(SISceneSegmentationData *)v19 initWithOutputSemanticBuffer:pixelBufferOut confidenceBuffer:texture uncertaintyBuffer:v20];
      CVPixelBufferRelease(pixelBufferOut);
      CVPixelBufferRelease(texture);
      CVPixelBufferRelease(v20);
      v16 = [(SIAlgorithm *)self runWithInput:v14 output:v15 resolutionConfiguration:a8];
      goto LABEL_9;
    }

    v15 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v24 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v25 = 1025;
      v26 = 83;
      goto LABEL_7;
    }
  }

  v16 = 4;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (SISceneSegmentationAlgorithm)initWithNetworkConfiguration:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SISceneSegmentationAlgorithm;
  v6 = [(SIAlgorithm *)&v17 initWithNetworkConfiguration:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [(SIAlgorithm *)v6 model];
    model = v7->_model;
    v7->_model = v8;

    objc_storeStrong(&v7->_configuration, a3);
    v10 = [SIVideoToolboxScaler alloc];
    [(SISceneSegmentation *)v7->_model getInputResolution];
    v11 = [(SIBaseScaler *)v10 initForOutputResolution:1111970369 outputPixelFormat:0 mode:@"SceneSegmentation" algorithmKey:?];
    scalerOne = v7->_scalerOne;
    v7->_scalerOne = v11;

    v13 = objc_alloc_init(SIImageInputData);
    inputData = v7->_inputData;
    v7->_inputData = v13;

    v15 = v7;
  }

  return v7;
}

- (int64_t)switchConfiguration:(unint64_t)a3
{
  v5 = [(SIAlgorithm *)self networkConfiguration];
  v6 = [v5 networkModeEnum];

  v13.receiver = self;
  v13.super_class = SISceneSegmentationAlgorithm;
  v7 = [(SIAlgorithm *)&v13 switchConfiguration:a3];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == a3;
  }

  if (!v8)
  {
    v9 = [SIVideoToolboxScaler alloc];
    [(SISceneSegmentation *)self->_model getInputResolution];
    v10 = [(SIBaseScaler *)v9 initForOutputResolution:1111970369 outputPixelFormat:0 mode:@"SceneSegmentation" algorithmKey:?];
    scalerOne = self->_scalerOne;
    self->_scalerOne = v10;
  }

  return v7;
}

- (int64_t)_preprocessingInputData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = -[SIVideoToolboxScaler createScaledImage:](self->_scalerOne, "createScaledImage:", [a3 inputImageBuffer]);
  [(SIImageInputData *)self->_inputData setInputImageBuffer:v4];
  CVPixelBufferRelease(v4);
  if ([(SIImageInputData *)self->_inputData inputImageBuffer])
  {
    result = 0;
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136380931;
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v10 = 1025;
      v11 = 140;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to scale the input image ***", &v8, 0x12u);
    }

    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (int64_t)_postprocessingOutput:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [(SISceneSegmentation *)self->_model postprocessingOutput:a3];
  if (v3)
  {
    v4 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136380931;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/SceneSegmentation/SISceneSegmentationAlgorithm.m";
      v9 = 1025;
      v10 = 157;
      _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to do postprocessing for SS result ***", &v7, 0x12u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

@end