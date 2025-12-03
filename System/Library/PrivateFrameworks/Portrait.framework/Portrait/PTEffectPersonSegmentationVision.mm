@interface PTEffectPersonSegmentationVision
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSize;
- (CGSize)colorSize;
- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)context colorSize:(CGSize)size;
- (__CVBuffer)outputPixelBuffer;
- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation PTEffectPersonSegmentationVision

- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)context colorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v32.receiver = self;
  v32.super_class = PTEffectPersonSegmentationVision;
  v9 = [(PTEffectPersonSegmentationVision *)&v32 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_metalContext, context);
  v10->_colorSize.width = width;
  v10->_colorSize.height = height;
  v11 = objc_alloc_init(MEMORY[0x277CE2E18]);
  visionSession = v10->_visionSession;
  v10->_visionSession = v11;

  if (!v10->_visionSession)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v16 initWithMetalContext:v17 colorSize:v18, v19, v20, v21, v22, v23];
    }

    goto LABEL_9;
  }

  v13 = [objc_alloc(MEMORY[0x277CE2E10]) initWithSession:v10->_visionSession];
  visionRequestHandler = v10->_visionRequestHandler;
  v10->_visionRequestHandler = v13;

  if (!v10->_visionRequestHandler)
  {
    v16 = _PTLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v16 initWithMetalContext:v24 colorSize:v25, v26, v27, v28, v29, v30];
    }

LABEL_9:

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = v10;
LABEL_11:

  return v15;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size
{
  *&retstr->var0 = xmmword_2244A5BB0;
  retstr->var2 = 1;
  return result;
}

- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  personSegmentationRequest = self->_personSegmentationRequest;
  self->_personSegmentationRequest = v5;

  v7 = +[PTInference ANEConfigForSynchronousWork];
  -[VNGeneratePersonSegmentationRequest setModelExecutionPriority:](self->_personSegmentationRequest, "setModelExecutionPriority:", [v7 VNRequestModelExecutionPriority]);

  [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest setQualityLevel:1];
  [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest setOutputPixelFormat:1278226488];
  visionRequestHandler = self->_visionRequestHandler;
  v25[0] = self->_personSegmentationRequest;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  v24 = 0;
  LOBYTE(visionRequestHandler) = [(VNSequenceRequestHandler *)visionRequestHandler performRequests:v9 onCVPixelBuffer:buffer error:&v24];
  v10 = v24;

  if ((visionRequestHandler & 1) == 0)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v10 runPersonSegmentationForPixelBuffer:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  results = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([results count])
  {
    v19 = [results objectAtIndexedSubscript:0];
    pixelBuffer = [v19 pixelBuffer];
    device = [(PTMetalContext *)self->_metalContext device];
    v22 = [PTPixelBufferUtil createTextureFromPixelBuffer:pixelBuffer device:device];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSize
{
  *&retstr->var0 = xmmword_2244A5BB0;
  retstr->var2 = 1;
  return self;
}

- (CGSize)colorSize
{
  width = self->_colorSize.width;
  height = self->_colorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__CVBuffer)outputPixelBuffer
{
  results = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([results count])
  {
    v3 = [results objectAtIndexedSubscript:0];
    pixelBuffer = [v3 pixelBuffer];
  }

  else
  {
    pixelBuffer = 0;
  }

  return pixelBuffer;
}

@end