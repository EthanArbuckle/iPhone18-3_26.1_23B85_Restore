@interface PTFaceAttributesNetwork
- (PTFaceAttributesNetwork)init;
- (id)createRequest;
- (id)faceLandmarksInPixelBuffer:(__CVBuffer *)buffer faceRects:(id)rects orientation:(unsigned int)orientation;
@end

@implementation PTFaceAttributesNetwork

- (PTFaceAttributesNetwork)init
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = PTFaceAttributesNetwork;
  v2 = [(PTFaceAttributesNetwork *)&v20 init];
  if (v2)
  {
    v3 = objc_opt_new();
    session = v2->_session;
    v2->_session = v3;

    createRequest = [(PTFaceAttributesNetwork *)v2 createRequest];
    v6 = createRequest;
    if (createRequest)
    {
      v7 = v2->_session;
      v21[0] = createRequest;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
      v19 = 0;
      LOBYTE(v7) = [(VNSession *)v7 prepareForPerformingRequests:v8 error:&v19];
      v9 = v19;

      if ((v7 & 1) == 0)
      {
        v10 = _PTLogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [PTFaceAttributesNetwork init];
        }
      }

      v11 = [objc_alloc(MEMORY[0x277CE2E10]) initWithSession:v2->_session];
      handler = v2->_handler;
      v2->_handler = v11;

      if (v2->_handler)
      {
        v13 = MLAllComputeDevices();
        v14 = [v13 indexOfObjectPassingTest:&__block_literal_global_13];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          aneDevice = _PTLogSystem();
          if (os_log_type_enabled(aneDevice, OS_LOG_TYPE_ERROR))
          {
            [PTFaceAttributesNetwork init];
          }
        }

        else
        {
          v17 = [v13 objectAtIndexedSubscript:v14];
          aneDevice = v2->_aneDevice;
          v2->_aneDevice = v17;
        }

        v16 = v2;
        goto LABEL_20;
      }

      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTFaceAttributesNetwork init];
      }
    }

    else
    {
      v13 = _PTLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [PTFaceAttributesNetwork init];
      }

      v9 = 0;
    }

    v16 = 0;
LABEL_20:

    goto LABEL_21;
  }

  v16 = 0;
LABEL_21:

  return v16;
}

uint64_t __31__PTFaceAttributesNetwork_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)createRequest
{
  v3 = objc_opt_new();
  v4 = +[PTInference ANEConfigForAsynchronousWork];
  [v3 setModelExecutionPriority:{objc_msgSend(v4, "VNRequestModelExecutionPriority")}];

  v11 = 0;
  v5 = [v3 setRevision:3737841669 error:&v11];
  v6 = v11;
  if ((v5 & 1) == 0)
  {
    v7 = _PTLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork createRequest];
    }
  }

  defaultANEDevice = [MEMORY[0x277CE2DA0] defaultANEDevice];
  if (defaultANEDevice)
  {
    [v3 setComputeDevice:self->_aneDevice forComputeStage:*MEMORY[0x277CE2EB0]];
    [v3 setComputeDevice:self->_aneDevice forComputeStage:*MEMORY[0x277CE2EB8]];
  }

  else
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork createRequest];
    }
  }

  return v3;
}

- (id)faceLandmarksInPixelBuffer:(__CVBuffer *)buffer faceRects:(id)rects orientation:(unsigned int)orientation
{
  v5 = *&orientation;
  v18[1] = *MEMORY[0x277D85DE8];
  rectsCopy = rects;
  createRequest = [(PTFaceAttributesNetwork *)self createRequest];
  [createRequest setInputFaceObservations:rectsCopy];
  if (createRequest)
  {
    handler = self->_handler;
    v18[0] = createRequest;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v17 = 0;
    v12 = [(VNSequenceRequestHandler *)handler performRequests:v11 onCVPixelBuffer:buffer orientation:v5 error:&v17];
    v13 = v17;

    if (v12)
    {
      results = [createRequest results];
      goto LABEL_8;
    }
  }

  else
  {
    v15 = _PTLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PTFaceAttributesNetwork faceLandmarksInPixelBuffer:faceRects:orientation:];
    }

    v13 = 0;
  }

  results = 0;
LABEL_8:

  return results;
}

@end