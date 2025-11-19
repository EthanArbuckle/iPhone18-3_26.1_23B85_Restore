@interface PTEffectPersonSegmentationVision
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)a3;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSize;
- (CGSize)colorSize;
- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)a3 colorSize:(CGSize)a4;
- (__CVBuffer)outputPixelBuffer;
- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)a3;
@end

@implementation PTEffectPersonSegmentationVision

- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)a3 colorSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v32.receiver = self;
  v32.super_class = PTEffectPersonSegmentationVision;
  v9 = [(PTEffectPersonSegmentationVision *)&v32 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_metalContext, a3);
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

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)a3
{
  *&retstr->var0 = xmmword_2244A5BB0;
  retstr->var2 = 1;
  return result;
}

- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)a3
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
  LOBYTE(visionRequestHandler) = [(VNSequenceRequestHandler *)visionRequestHandler performRequests:v9 onCVPixelBuffer:a3 error:&v24];
  v10 = v24;

  if ((visionRequestHandler & 1) == 0)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v10 runPersonSegmentationForPixelBuffer:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v18 = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([v18 count])
  {
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v19 pixelBuffer];
    v21 = [(PTMetalContext *)self->_metalContext device];
    v22 = [PTPixelBufferUtil createTextureFromPixelBuffer:v20 device:v21];
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
  v2 = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = [v3 pixelBuffer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end