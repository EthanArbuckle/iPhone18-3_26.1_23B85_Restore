@interface VEFrameProcessor
- (BOOL)createSharedEventListener;
- (BOOL)internalProcessWithParameters:(id)parameters error:(id *)error;
- (BOOL)internalStartSessionWithConfigurations:(id)configurations error:(id *)error;
- (BOOL)processWithListParameters:(id)parameters error:(id *)error;
- (BOOL)processWithParameters:(id)parameters error:(id *)error;
- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error;
- (BOOL)startSessionWithListConfigurations:(id)configurations error:(id *)error;
- (VEFrameProcessor)init;
- (void)destroySharedEventListener;
- (void)endSession;
- (void)internalEndSession;
- (void)processWithCommandBuffer:(id)buffer parameters:(id)parameters completionHandler:(id)handler;
- (void)processWithListParameters:(id)parameters completionHandler:(id)handler;
- (void)processWithParameters:(id)parameters completionHandler:(id)handler;
@end

@implementation VEFrameProcessor

- (void)internalEndSession
{
  opticalFlow = self->_opticalFlow;
  if (opticalFlow)
  {
    [(OpticalFlowProcessor *)opticalFlow finishProcessing];
    v4 = self->_opticalFlow;
    self->_opticalFlow = 0;
  }

  vsaProcessor = self->_vsaProcessor;
  if (vsaProcessor)
  {
    [(VSAProcessor *)vsaProcessor finishProcessing];
    v6 = self->_vsaProcessor;
    self->_vsaProcessor = 0;
  }

  frcProcessor = self->_frcProcessor;
  if (frcProcessor)
  {
    [(FRCProcessor *)frcProcessor finishProcessing];
    v8 = self->_frcProcessor;
    self->_frcProcessor = 0;
  }

  vsrProcessor = self->_vsrProcessor;
  if (vsrProcessor)
  {
    [(VSRProcessor *)vsrProcessor finishProcessing];
    v10 = self->_vsrProcessor;
    self->_vsrProcessor = 0;
  }

  vdgProcessor = self->_vdgProcessor;
  if (vdgProcessor)
  {
    [(VDGProcessor *)vdgProcessor finishProcessing];
    v12 = self->_vdgProcessor;
    self->_vdgProcessor = 0;
  }

  [(VEFrameProcessor *)self destroySharedEventListener];
}

- (void)destroySharedEventListener
{
  sharedEventListener = self->_sharedEventListener;
  self->_sharedEventListener = 0;

  sharedEventList = self->_sharedEventList;
  self->_sharedEventList = 0;

  self->_sharedEventListTearingDown = 0;
}

- (BOOL)createSharedEventListener
{
  self->_sharedEventListTearingDown = 0;
  v3 = [objc_alloc(MEMORY[0x277CD6FD8]) initWithDispatchQueue:self->_processFrameQueue];
  sharedEventListener = self->_sharedEventListener;
  self->_sharedEventListener = v3;

  result = 0;
  if (self->_sharedEventListener)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sharedEventList = self->_sharedEventList;
    self->_sharedEventList = v5;

    if (self->_sharedEventList)
    {
      return 1;
    }
  }

  return result;
}

- (void)endSession
{
  if (self->_sharedEventListener)
  {
    os_unfair_lock_lock(&self->_sharedEventListLock);
    if ([(NSMutableArray *)self->_sharedEventList count]&& !self->_sharedEventListTearingDown)
    {
      lastObject = [(NSMutableArray *)self->_sharedEventList lastObject];
      self->_sharedEventListTearingDown = 1;
      os_unfair_lock_unlock(&self->_sharedEventListLock);
      if (lastObject)
      {
        if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          [VEFrameProcessor endSession];
        }

        [lastObject waitUntilSignaledValue:2 timeoutMS:10000];
      }
    }

    else
    {
      self->_sharedEventListTearingDown = 1;
      os_unfair_lock_unlock(&self->_sharedEventListLock);
    }
  }

  processFrameQueue = self->_processFrameQueue;
  if (processFrameQueue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __30__VEFrameProcessor_endSession__block_invoke;
    block[3] = &unk_279E17118;
    block[4] = self;
    dispatch_sync(processFrameQueue, block);
  }
}

- (BOOL)internalStartSessionWithConfigurations:(id)configurations error:(id *)error
{
  configurationsCopy = configurations;
  if (![configurationsCopy count])
  {
LABEL_36:
    v47 = 1;
    goto LABEL_75;
  }

  v7 = 0;
  v8 = 0x277D04000uLL;
  while (1)
  {
    v9 = [configurationsCopy objectAtIndexedSubscript:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v11 = [configurationsCopy objectAtIndexedSubscript:v7];
    v12 = v11;
    if (isKindOfClass)
    {
      if (v11)
      {
        if (!self->_vsaProcessor)
        {
          v13 = [objc_alloc(*(v8 + 1560)) initWithFrameWidth:objc_msgSend(v11 FrameHeight:"frameWidth") usePrecomputedFlow:{objc_msgSend(v11, "frameHeight"), objc_msgSend(v11, "usePrecomputedFlow")}];
          vsaProcessor = self->_vsaProcessor;
          self->_vsaProcessor = v13;

          if (!self->_vsaProcessor)
          {
            if (error)
            {
              v48 = @"Could not init VSAProcessor";
              goto LABEL_71;
            }

            goto LABEL_73;
          }

          isMemoryAvailableForVSA([v12 frameWidth], objc_msgSend(v12, "frameHeight"), objc_msgSend(v12, "usePrecomputedFlow"), objc_msgSend(v12, "qualityPrioritization"));
          v15 = self->_vsaProcessor;
          v16 = dvpVSAConfigFromVE(v12);
          v17 = [(VSAProcessor *)v15 startSessionWithMotionBlurConfig:v16 error:error];
LABEL_13:
          v24 = v17;

          if ((v24 & 1) == 0)
          {
            goto LABEL_74;
          }

          goto LABEL_14;
        }

        if (!error)
        {
          goto LABEL_73;
        }

        v48 = @"VSAProcessor already created";
        goto LABEL_68;
      }

      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"motionBlurConfiguration is missing";
      goto LABEL_65;
    }

    objc_opt_class();
    v18 = objc_opt_isKindOfClass();

    v19 = [configurationsCopy objectAtIndexedSubscript:v7];
    v12 = v19;
    if (v18)
    {
      if (v19)
      {
        if (!self->_opticalFlow)
        {
          v20 = [objc_alloc(MEMORY[0x277D04608]) initWithFrameWidth:objc_msgSend(v19 FrameHeight:"frameWidth") revision:{objc_msgSend(v19, "frameHeight"), objc_msgSend(v19, "revision")}];
          opticalFlow = self->_opticalFlow;
          self->_opticalFlow = v20;

          v22 = self->_opticalFlow;
          if (!v22)
          {
            if (error)
            {
              v48 = @"Could not init OpticalFlowProcessor";
              goto LABEL_71;
            }

            goto LABEL_73;
          }

          [(OpticalFlowProcessor *)v22 setStreamingMode:1];
          isMemoryAvailableForOpticalFlow([v12 frameWidth], objc_msgSend(v12, "frameHeight"), objc_msgSend(v12, "revision"), objc_msgSend(v12, "qualityPrioritization"));
          v23 = self->_opticalFlow;
          v16 = dvpOpticalFlowConfigFromVE(v12);
          v17 = [(OpticalFlowProcessor *)v23 startSessionWithOpticalFlowConfig:v16 error:error];
          goto LABEL_13;
        }

        if (!error)
        {
          goto LABEL_73;
        }

        v48 = @"OpticalFlowProcessor already created";
LABEL_68:
        v49 = 4;
        goto LABEL_72;
      }

      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"opticalFlowConfiguration is missing";
LABEL_65:
      v49 = 12;
      goto LABEL_72;
    }

    objc_opt_class();
    v25 = objc_opt_isKindOfClass();

    v26 = [configurationsCopy objectAtIndexedSubscript:v7];
    v12 = v26;
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (!v26)
    {
      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"frameRateConfiguration is missing";
      goto LABEL_65;
    }

    if (self->_frcProcessor)
    {
      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"FRCProcessor already created";
      goto LABEL_68;
    }

    v27 = [objc_alloc(MEMORY[0x277D04600]) initWithFrameWidth:objc_msgSend(v26 FrameHeight:"frameWidth") usePrecomputedFlow:objc_msgSend(v26 revision:{"frameHeight"), objc_msgSend(v26, "usePrecomputedFlow"), objc_msgSend(v26, "revision")}];
    frcProcessor = self->_frcProcessor;
    self->_frcProcessor = v27;

    if (!self->_frcProcessor)
    {
      if (error)
      {
        v48 = @"Could not init FRCProcessor";
        goto LABEL_71;
      }

      goto LABEL_73;
    }

    isMemoryAvailableForFRC([v12 frameWidth], objc_msgSend(v12, "frameHeight"), objc_msgSend(v12, "usePrecomputedFlow"), objc_msgSend(v12, "qualityPrioritization"));
    v29 = self->_frcProcessor;
    v30 = dvpFRCConfigFromVE(v12);
    v31 = [(FRCProcessor *)v29 startSessionWithFrameRateConfig:v30 error:error];
LABEL_32:
    v45 = v31;

    v8 = 0x277D04000;
    if ((v45 & 1) == 0)
    {
      goto LABEL_74;
    }

LABEL_14:
    if ([configurationsCopy count] <= ++v7)
    {
      goto LABEL_36;
    }
  }

  objc_opt_class();
  v32 = objc_opt_isKindOfClass();

  v33 = [configurationsCopy objectAtIndexedSubscript:v7];
  v12 = v33;
  if (v32)
  {
    if (v33)
    {
      if (!self->_vsrProcessor)
      {
        v34 = [objc_alloc(MEMORY[0x277D04620]) initWithFrameWidth:objc_msgSend(v33 frameHeight:"frameWidth") inputType:objc_msgSend(v33 usePrecomputedFlow:{"frameHeight"), objc_msgSend(v33, "inputType"), objc_msgSend(v33, "usePrecomputedFlow")}];
        vsrProcessor = self->_vsrProcessor;
        self->_vsrProcessor = v34;

        if (!self->_vsrProcessor)
        {
          if (error)
          {
            v48 = @"Could not init VSRProcessor";
            goto LABEL_71;
          }

          goto LABEL_73;
        }

        inputType = [v12 inputType];
        frameWidth = [v12 frameWidth];
        frameHeight = [v12 frameHeight];
        usePrecomputedFlow = [v12 usePrecomputedFlow];
        qualityPrioritization = [v12 qualityPrioritization];
        if (inputType == 1)
        {
          isMemoryAvailableForVSR(frameWidth, frameHeight, usePrecomputedFlow, qualityPrioritization);
        }

        else
        {
          isMemoryAvailableForISR(frameWidth, frameHeight, usePrecomputedFlow, qualityPrioritization);
        }

        v8 = 0x277D04000;
        v46 = self->_vsrProcessor;
        v16 = dvpVSRConfigFromVE(v12);
        v17 = [(VSRProcessor *)v46 startSessionWithSuperResolutionConfig:v16 error:error];
        goto LABEL_13;
      }

      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"VSRProcessor already created";
      goto LABEL_68;
    }

    if (!error)
    {
      goto LABEL_73;
    }

    v48 = @"superResConfiguration is missing";
    goto LABEL_65;
  }

  objc_opt_class();
  v41 = objc_opt_isKindOfClass();

  if (v41)
  {
    v12 = [configurationsCopy objectAtIndexedSubscript:v7];
    if (!v12)
    {
      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"VELensFlareMitigationConfiguration is missing";
      goto LABEL_65;
    }

    if (self->_vdgProcessor)
    {
      if (!error)
      {
        goto LABEL_73;
      }

      v48 = @"VDGProcessor already created";
      goto LABEL_68;
    }

    v42 = [objc_alloc(MEMORY[0x277D04610]) initWithFrameWidth:objc_msgSend(v12 FrameHeight:"frameWidth") usePrecomputedFlow:objc_msgSend(v12 revision:{"frameHeight"), objc_msgSend(v12, "usePrecomputedFlow"), objc_msgSend(v12, "revision")}];
    vdgProcessor = self->_vdgProcessor;
    self->_vdgProcessor = v42;

    v44 = self->_vdgProcessor;
    if (!v44)
    {
      if (error)
      {
        v48 = @"Could not init VDGProcessor";
LABEL_71:
        v49 = 7;
LABEL_72:
        *error = errorMessage(v49, v48);
      }

LABEL_73:

      goto LABEL_74;
    }

    v30 = dvpVDGConfigFromVE(v12);
    v31 = [(VDGProcessor *)v44 startSessionWithDeghostingConfig:v30 error:error];
    goto LABEL_32;
  }

  if (error)
  {
    errorMessage(12, @"Invalid configurations");
    *error = v47 = 0;
    goto LABEL_75;
  }

LABEL_74:
  v47 = 0;
LABEL_75:

  return v47;
}

- (BOOL)startSessionWithListConfigurations:(id)configurations error:(id *)error
{
  configurationsCopy = configurations;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  processFrameQueue = self->_processFrameQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__VEFrameProcessor_startSessionWithListConfigurations_error___block_invoke;
  v11[3] = &unk_279E17140;
  v13 = &v21;
  v11[4] = self;
  v8 = configurationsCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(processFrameQueue, v11);
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __61__VEFrameProcessor_startSessionWithListConfigurations_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 internalStartSessionWithConfigurations:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (BOOL)startSessionWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (!configurationCopy || !array)
  {
    *(v25 + 24) = 0;
    if (!error)
    {
      goto LABEL_5;
    }

    v12 = errorMessage(12, @"configuration is missing");
    v13 = v19[5];
    v19[5] = v12;

    goto LABEL_4;
  }

  [array addObject:configurationCopy];
  processFrameQueue = self->_processFrameQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__VEFrameProcessor_startSessionWithConfiguration_error___block_invoke;
  v14[3] = &unk_279E17140;
  v16 = &v24;
  v14[4] = self;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(processFrameQueue, v14);

  if (error)
  {
LABEL_4:
    *error = v19[5];
  }

LABEL_5:
  v10 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

uint64_t __56__VEFrameProcessor_startSessionWithConfiguration_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 internalStartSessionWithConfigurations:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
  return [a1[5] removeAllObjects];
}

- (BOOL)internalProcessWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v7 = objc_autoreleasePoolPush();
  if (self->_opticalFlow)
  {
    if ([parametersCopy count])
    {
      v8 = 0;
      while (1)
      {
        v9 = [parametersCopy objectAtIndexedSubscript:v8];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          break;
        }

        if ([parametersCopy count] <= ++v8)
        {
          goto LABEL_6;
        }
      }

      v17 = [parametersCopy objectAtIndexedSubscript:v8];
      v11 = v17;
      if (v17)
      {
        sourceFrame = [v17 sourceFrame];
        if ([sourceFrame buffer])
        {
          nextFrame = [v11 nextFrame];
          buffer = [nextFrame buffer];

          if (buffer)
          {
            opticalFlow = self->_opticalFlow;
            v22 = dvpOpticalFlowParamsFromVE(v11);
            v60 = 0;
            v23 = [(OpticalFlowProcessor *)opticalFlow processWithOpticalFlowParams:v22 error:&v60];
            v12 = v60;

            if ((v23 & 1) == 0)
            {

              goto LABEL_64;
            }

LABEL_8:

            if (!self->_vsaProcessor)
            {
LABEL_30:
              if (self->_frcProcessor)
              {
                if (![parametersCopy count])
                {
                  goto LABEL_35;
                }

                v30 = 0;
                while (1)
                {
                  v31 = [parametersCopy objectAtIndexedSubscript:v30];
                  objc_opt_class();
                  v32 = objc_opt_isKindOfClass();

                  if (v32)
                  {
                    break;
                  }

                  if ([parametersCopy count] <= ++v30)
                  {
                    goto LABEL_35;
                  }
                }

                v33 = [parametersCopy objectAtIndexedSubscript:v30];
                if (!v33)
                {
LABEL_35:
                  if (!error)
                  {
                    goto LABEL_64;
                  }

                  v16 = @"frameRateParams is missing";
                  goto LABEL_56;
                }

                v34 = v33;
                frcProcessor = self->_frcProcessor;
                v36 = dvpFRCParamsFromVE(v33);
                v58 = v12;
                v37 = [(FRCProcessor *)frcProcessor processWithFrameRateParams:v36 error:&v58];
                v29 = v58;

                v12 = v29;
                if (!v37)
                {
                  goto LABEL_57;
                }
              }

              if (self->_vsrProcessor)
              {
                if (![parametersCopy count])
                {
                  goto LABEL_44;
                }

                v38 = 0;
                while (1)
                {
                  v39 = [parametersCopy objectAtIndexedSubscript:v38];
                  objc_opt_class();
                  v40 = objc_opt_isKindOfClass();

                  if (v40)
                  {
                    break;
                  }

                  if ([parametersCopy count] <= ++v38)
                  {
                    goto LABEL_44;
                  }
                }

                v41 = [parametersCopy objectAtIndexedSubscript:v38];
                if (!v41)
                {
LABEL_44:
                  if (!error)
                  {
                    goto LABEL_64;
                  }

                  v16 = @"superResParams is missing";
                  goto LABEL_56;
                }

                v42 = v41;
                vsrProcessor = self->_vsrProcessor;
                v44 = dvpVSRParamsFromVE(v41);
                v57 = v12;
                v45 = [(VSRProcessor *)vsrProcessor processWithSuperResolutionParams:v44 error:&v57];
                v29 = v57;

                v12 = v29;
                if (!v45)
                {
                  goto LABEL_57;
                }
              }

              if (!self->_vdgProcessor)
              {
                v49 = 1;
                goto LABEL_65;
              }

              if ([parametersCopy count])
              {
                v46 = 0;
                while (1)
                {
                  v47 = [parametersCopy objectAtIndexedSubscript:v46];
                  objc_opt_class();
                  v48 = objc_opt_isKindOfClass();

                  if (v48)
                  {
                    break;
                  }

                  if ([parametersCopy count] <= ++v46)
                  {
                    goto LABEL_54;
                  }
                }

                v50 = [parametersCopy objectAtIndexedSubscript:v46];
                if (v50)
                {
                  v51 = v50;
                  vdgProcessor = self->_vdgProcessor;
                  v53 = dvpVDGParamsFromVE(v50);
                  v56 = v12;
                  LOBYTE(vdgProcessor) = [(VDGProcessor *)vdgProcessor processWithDeghostingParams:v53 error:&v56];
                  v29 = v56;

                  if (vdgProcessor)
                  {
                    v49 = 1;
                    goto LABEL_58;
                  }

LABEL_57:
                  v49 = 0;
LABEL_58:
                  v12 = v29;
                  goto LABEL_65;
                }
              }

LABEL_54:
              if (!error)
              {
                goto LABEL_64;
              }

              v16 = @"VELensFlareMitigationParameters is missing";
LABEL_56:
              v29 = errorMessage(12, v16);

              goto LABEL_57;
            }

            goto LABEL_12;
          }
        }

        else
        {
        }
      }
    }

    else
    {
LABEL_6:
      v11 = 0;
    }

    v12 = 0;
    goto LABEL_8;
  }

  if (!self->_vsaProcessor)
  {
    if (!self->_frcProcessor && !self->_vsrProcessor && !self->_vdgProcessor)
    {
      v12 = _VEError(3, 0);
      goto LABEL_64;
    }

    v12 = 0;
    goto LABEL_30;
  }

  v12 = 0;
LABEL_12:
  if ([parametersCopy count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [parametersCopy objectAtIndexedSubscript:v13];
      objc_opt_class();
      v15 = objc_opt_isKindOfClass();

      if (v15)
      {
        break;
      }

      if ([parametersCopy count] <= ++v13)
      {
        goto LABEL_16;
      }
    }

    v24 = [parametersCopy objectAtIndexedSubscript:v13];
    if (v24)
    {
      v25 = v24;
      vsaProcessor = self->_vsaProcessor;
      v27 = dvpVSAParamsFromVE(v24);
      v59 = v12;
      v28 = [(VSAProcessor *)vsaProcessor processWithMotionBlurParams:v27 error:&v59];
      v29 = v59;

      v12 = v29;
      if (!v28)
      {
        goto LABEL_57;
      }

      goto LABEL_30;
    }
  }

LABEL_16:
  if (error)
  {
    v16 = @"motionBlurParams is missing";
    goto LABEL_56;
  }

LABEL_64:
  v49 = 0;
LABEL_65:
  objc_autoreleasePoolPop(v7);
  if (error)
  {
    v54 = v12;
    *error = v12;
  }

  return v49;
}

- (BOOL)processWithListParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  processFrameQueue = self->_processFrameQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__VEFrameProcessor_processWithListParameters_error___block_invoke;
  v11[3] = &unk_279E17140;
  v13 = &v21;
  v11[4] = self;
  v8 = parametersCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_sync(processFrameQueue, v11);
  if (error)
  {
    *error = v16[5];
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

void __52__VEFrameProcessor_processWithListParameters_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 internalProcessWithParameters:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
}

- (void)processWithListParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  processFrameQueue = self->_processFrameQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__VEFrameProcessor_processWithListParameters_completionHandler___block_invoke;
  block[3] = &unk_279E17168;
  block[4] = self;
  v12 = parametersCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = parametersCopy;
  dispatch_async(processFrameQueue, block);
}

void __64__VEFrameProcessor_processWithListParameters_completionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v8 = 0;
  v4 = [v2 internalProcessWithParameters:v3 error:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0 && !v5)
  {
    v6 = _VEError(1, 0);
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, a1[5], v6);
  }
}

- (BOOL)processWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  array = [MEMORY[0x277CBEB18] array];
  v8 = array;
  if (!parametersCopy || !array)
  {
    *(v25 + 24) = 0;
    if (!error)
    {
      goto LABEL_5;
    }

    v12 = errorMessage(12, @"Parameters is missing");
    v13 = v19[5];
    v19[5] = v12;

    goto LABEL_4;
  }

  [array addObject:parametersCopy];
  processFrameQueue = self->_processFrameQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__VEFrameProcessor_processWithParameters_error___block_invoke;
  v14[3] = &unk_279E17140;
  v16 = &v24;
  v14[4] = self;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(processFrameQueue, v14);

  if (error)
  {
LABEL_4:
    *error = v19[5];
  }

LABEL_5:
  v10 = *(v25 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

uint64_t __48__VEFrameProcessor_processWithParameters_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 internalProcessWithParameters:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v5;
  return [a1[5] removeAllObjects];
}

- (void)processWithParameters:(id)parameters completionHandler:(id)handler
{
  parametersCopy = parameters;
  handlerCopy = handler;
  processFrameQueue = self->_processFrameQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__VEFrameProcessor_processWithParameters_completionHandler___block_invoke;
  block[3] = &unk_279E17168;
  v12 = parametersCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = parametersCopy;
  dispatch_async(processFrameQueue, block);
}

void __60__VEFrameProcessor_processWithParameters_completionHandler___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = v2;
  if (a1[4])
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v7 = errorMessage(12, @"parameters is missing");
  }

  else
  {
    [v2 addObject:?];
    v5 = a1[5];
    v9 = 0;
    v6 = [v5 internalProcessWithParameters:v3 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0 && (global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      __60__VEFrameProcessor_processWithParameters_completionHandler___block_invoke_cold_1();
    }
  }

  [v3 removeAllObjects];
  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))(v8, a1[4], v7);
  }
}

- (void)processWithCommandBuffer:(id)buffer parameters:(id)parameters completionHandler:(id)handler
{
  bufferCopy = buffer;
  parametersCopy = parameters;
  handlerCopy = handler;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  if (*&self->_opticalFlow != 0 || self->_frcProcessor || self->_vsrProcessor)
  {
    if (parametersCopy)
    {
      array = [MEMORY[0x277CBEB18] array];
      [array addObject:parametersCopy];
      os_unfair_lock_lock(&self->_sharedEventListLock);
      if (!self->_sharedEventListTearingDown)
      {
        if (self->_sharedEventListener)
        {
          if (v21[3])
          {
            goto LABEL_8;
          }
        }

        else
        {
          createSharedEventListener = [(VEFrameProcessor *)self createSharedEventListener];
          *(v21 + 24) = createSharedEventListener;
          if (createSharedEventListener)
          {
LABEL_8:
            newSharedEvent = [(MTLDevice *)self->_device newSharedEvent];
            [(NSMutableArray *)self->_sharedEventList addObject:newSharedEvent];
            os_unfair_lock_unlock(&self->_sharedEventListLock);
            if (newSharedEvent)
            {
              sharedEventListener = self->_sharedEventListener;
              v15[0] = MEMORY[0x277D85DD0];
              v15[1] = 3221225472;
              v15[2] = __74__VEFrameProcessor_processWithCommandBuffer_parameters_completionHandler___block_invoke;
              v15[3] = &unk_279E17190;
              v19 = &v20;
              v15[4] = self;
              v16 = array;
              v18 = handlerCopy;
              v17 = parametersCopy;
              [newSharedEvent notifyListener:sharedEventListener atValue:1 block:v15];
              [bufferCopy encodeSignalEvent:newSharedEvent value:1];
              [bufferCopy encodeWaitForEvent:newSharedEvent value:2];
            }

            goto LABEL_15;
          }
        }
      }

      os_unfair_lock_unlock(&self->_sharedEventListLock);
LABEL_15:

      goto LABEL_16;
    }

    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEFrameProcessor processWithCommandBuffer:parameters:completionHandler:];
    }
  }

  else if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
  {
    [VEFrameProcessor processWithCommandBuffer:parameters:completionHandler:];
  }

LABEL_16:
  _Block_object_dispose(&v20, 8);
}

void __74__VEFrameProcessor_processWithCommandBuffer_parameters_completionHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9 = 0;
  v6 = [v4 internalProcessWithParameters:v5 error:&v9];
  v7 = v9;
  *(*(a1[8] + 8) + 24) = v6;
  [v3 setSignaledValue:2];
  v8 = a1[7];
  if (v8)
  {
    (*(v8 + 16))(v8, a1[6], v7);
  }

  os_unfair_lock_lock((a1[4] + 84));
  [*(a1[4] + 72) removeObject:v3];
  os_unfair_lock_unlock((a1[4] + 84));
}

- (VEFrameProcessor)init
{
  v16.receiver = self;
  v16.super_class = VEFrameProcessor;
  v2 = [(VEFrameProcessor *)&v16 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_6;
  }

  opticalFlow = v2->_opticalFlow;
  v2->_opticalFlow = 0;

  vsaProcessor = v3->_vsaProcessor;
  v3->_vsaProcessor = 0;

  frcProcessor = v3->_frcProcessor;
  v3->_frcProcessor = 0;

  vsrProcessor = v3->_vsrProcessor;
  v3->_vsrProcessor = 0;

  VELoggerInit(16, 0);
  v8 = dispatch_queue_create("Process Frame  Dispatch Queue", 0);
  processFrameQueue = v3->_processFrameQueue;
  v3->_processFrameQueue = v8;

  if (!v3->_processFrameQueue)
  {
    goto LABEL_6;
  }

  v10 = MTLCreateSystemDefaultDevice();
  device = v3->_device;
  v3->_device = v10;

  if (v3->_device)
  {
    v3->_sharedEventListLock._os_unfair_lock_opaque = 0;
    v3->_sharedEventListTearingDown = 0;
    sharedEventListener = v3->_sharedEventListener;
    v3->_sharedEventListener = 0;

    sharedEventList = v3->_sharedEventList;
    v3->_sharedEventList = 0;

    v14 = v3;
  }

  else
  {
LABEL_6:
    v14 = 0;
  }

  return v14;
}

@end