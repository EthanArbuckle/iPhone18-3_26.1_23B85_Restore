@interface SIPeopleSegmentationAlgorithm
- (SIPeopleSegmentationAlgorithm)initWithComputeEngine:(int64_t)a3 andNetworkConfiguration:(int64_t)a4 useAppleNeuralEngineFramework:(BOOL)a5;
- (SIPeopleSegmentationAlgorithm)initWithInputResolution:(CGSize)a3;
- (SIPeopleSegmentationAlgorithm)initWithNetworkConfiguration:(id)a3;
- (int64_t)_preprocessingInputData:(id)a3;
- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4;
- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4 networkConfiguration:(int64_t)a5;
- (int64_t)switchConfiguration:(unint64_t)a3;
@end

@implementation SIPeopleSegmentationAlgorithm

- (SIPeopleSegmentationAlgorithm)initWithInputResolution:(CGSize)a3
{
  v3 = [(SIPeopleSegmentationAlgorithm *)self initWithComputeEngine:SISupportANE() andNetworkConfiguration:0];

  return v3;
}

- (SIPeopleSegmentationAlgorithm)initWithComputeEngine:(int64_t)a3 andNetworkConfiguration:(int64_t)a4 useAppleNeuralEngineFramework:(BOOL)a5
{
  v8 = objc_alloc_init(SIPeopleSegmentationNetworkConfiguration);
  [(SINetworkConfiguration *)v8 setEngineType:a3];
  [(SIPeopleSegmentationNetworkConfiguration *)v8 setNetworkModeEnum:a4];
  [(SINetworkConfiguration *)v8 setRunByE5RT:1];
  v9 = [(SIPeopleSegmentationAlgorithm *)self initWithNetworkConfiguration:v8];

  return v9;
}

- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4
{
  v7 = objc_alloc_init(SIImageInputData);
  [(SIImageInputData *)v7 setInputImageBuffer:a3];
  v8 = objc_alloc_init(SIPeopleSegmentationData);
  pixelBufferOut = 0;
  CVPixelBufferCreateWithIOSurface(0, a4, 0, &pixelBufferOut);
  [(SIPeopleSegmentationData *)v8 setSegmentation:CVPixelBufferRetain(pixelBufferOut)];
  v11.receiver = self;
  v11.super_class = SIPeopleSegmentationAlgorithm;
  v9 = [(SIAlgorithm *)&v11 runWithInput:v7 output:v8];

  return v9;
}

- (int64_t)runWithInput:(__CVBuffer *)a3 output:(__IOSurface *)a4 networkConfiguration:(int64_t)a5
{
  result = [(SIPeopleSegmentationAlgorithm *)self switchConfiguration:a5];
  if (!result)
  {

    return [(SIPeopleSegmentationAlgorithm *)self runWithInput:a3 output:a4];
  }

  return result;
}

- (SIPeopleSegmentationAlgorithm)initWithNetworkConfiguration:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = SIPeopleSegmentationAlgorithm;
  v5 = [(SIAlgorithm *)&v22 initWithNetworkConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [(SIAlgorithm *)v5 model];
    model = v6->_model;
    v6->_model = v7;

    v9 = [SIVideoToolboxScaler alloc];
    [(SIPeopleSegmentation *)v6->_model getInputResolution];
    v11 = v10;
    v13 = v12;
    v14 = [v4 inputImageFormat];
    v15 = [v4 imageScalerIdentifier];
    v16 = [(SIBaseScaler *)v9 initForOutputResolution:v14 outputPixelFormat:0 mode:v15 algorithmKey:v11, v13];
    scaler = v6->_scaler;
    v6->_scaler = v16;

    v18 = objc_alloc_init(SIImageInputData);
    inputData = v6->_inputData;
    v6->_inputData = v18;

    v20 = v6;
  }

  return v6;
}

- (int64_t)switchConfiguration:(unint64_t)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(SIAlgorithm *)self networkConfiguration];
  v6 = [v5 networkModeEnum];
  if ([(SIPeopleSegmentation *)self->_model switchNetworkConfiguration:a3])
  {
    v7 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v20 = 136380931;
      v21 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PeopleSegmentation/SIPeopleSegmentationAlgorithm.m";
      v22 = 1025;
      v23 = 136;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** fail to switch the configuration! The output is not updated ***", &v20, 0x12u);
    }

    v8 = 5;
  }

  else
  {
    if (v6 != a3)
    {
      v9 = [SIVideoToolboxScaler alloc];
      [(SIPeopleSegmentation *)self->_model getInputResolution];
      v11 = v10;
      v13 = v12;
      v14 = [v5 inputImageFormat];
      v15 = [v5 imageScalerIdentifier];
      v16 = [(SIBaseScaler *)v9 initForOutputResolution:v14 outputPixelFormat:0 mode:v15 algorithmKey:v11, v13];
      scaler = self->_scaler;
      self->_scaler = v16;
    }

    v8 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v8;
}

- (int64_t)_preprocessingInputData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = -[SIVideoToolboxScaler createScaledImage:](self->_scaler, "createScaledImage:", [a3 inputImageBuffer]);
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
      v9 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Features/PeopleSegmentation/SIPeopleSegmentationAlgorithm.m";
      v10 = 1025;
      v11 = 155;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to scale the input image or input depth ***", &v8, 0x12u);
    }

    result = 1;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end