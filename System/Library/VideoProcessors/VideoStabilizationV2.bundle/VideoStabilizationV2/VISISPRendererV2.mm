@interface VISISPRendererV2
- (BOOL)_isPixelBuffer422:(__CVBuffer *)buffer422;
- (VISISPRendererV2)initWithISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session metalContext:(id)context metalCommandQueue:(id)queue;
- (VISRendererDelegate)delegate;
- (__n128)gridSize;
- (__n128)inputSize;
- (__n128)outputSize;
- (int)enqueuePixelBufferForRendering:(VISISPRendererV2 *)self inputValidBufferRect:(SEL)rect metadata:(__CVBuffer *)metadata ltmLUT:(CGRect *)t outputPixelBuffer:(id)buffer transformCounts:(id)counts transforms3x3:(__CVBuffer *)transforms3x3 transformStrides:(float *)(a8;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)process;
- (int)purgeResources;
- (void)dealloc;
@end

@implementation VISISPRendererV2

- (void)dealloc
{
  [(VISISPRendererV2 *)self finishProcessing];
  [(VISISPRendererV2 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = VISISPRendererV2;
  [(VISISPRendererV2 *)&v3 dealloc];
}

- (int)prepareToProcess:(unsigned int)process
{
  if (process - 4 < 0xFFFFFFFD)
  {
    goto LABEL_60;
  }

  if (self->_setupCompleted)
  {
    goto LABEL_60;
  }

  v5 = AffineTransformContextAlloc(self->_metalCommandQueue);
  self->_gpuRenderer = v5;
  if (!v5)
  {
    goto LABEL_60;
  }

  p_ispProcessingSession = &self->_ispProcessingSession;
  ispProcessingSession = self->_ispProcessingSession;
  if (!ispProcessingSession)
  {
    v35 = objc_alloc_init(NSMutableDictionary);
    if (!v35 || (Function = FigCaptureGetCaptureDeviceCreateFunction()) == 0)
    {

      goto LABEL_60;
    }

    v37 = Function(kCFAllocatorDefault, 0, &self->_ispCaptureDevice);
    if (!v37)
    {
      if (process == 3)
      {
        v38 = &off_563F8;
      }

      else
      {
        v38 = &off_56410;
      }

      [v35 setObject:v38 forKeyedSubscript:kFigCaptureISPProcessingSessionConfigurationKey_SessionType];
      ispCaptureDevice = self->_ispCaptureDevice;
      v40 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v40)
      {
        LODWORD(v8) = -12782;
LABEL_47:

        goto LABEL_48;
      }

      v37 = v40(ispCaptureDevice, kCFAllocatorDefault, v35, &self->_ispProcessingSession);
      if (!v37)
      {

        goto LABEL_6;
      }
    }

    LODWORD(v8) = v37;
    goto LABEL_47;
  }

  CFRetain(ispProcessingSession);
LABEL_6:
  v8 = *p_ispProcessingSession;
  if (!*p_ispProcessingSession)
  {
    return v8;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    setup = v9(v8, kFigCaptureISPProcessingSessionProperty_SupportedOutputs, kCFAllocatorDefault, &self->_ispOutputIdentifiers);
    if (setup)
    {
      goto LABEL_63;
    }

    if (![(NSArray *)self->_ispOutputIdentifiers count])
    {
      goto LABEL_60;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v11 = self->_ispOutputIdentifiers;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v48;
      while (1)
      {
        if (*v48 != v14)
        {
          objc_enumerationMutation(v11);
        }

        if (!--v13)
        {
          v13 = [(NSArray *)v11 countByEnumeratingWithState:&v47 objects:v46 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    v15 = self->_ispProcessingSession;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v16)
    {
      setup = v16(v15, kFigCaptureISPProcessingSessionProperty_InputPixelBufferAttributes, kCFAllocatorDefault, &self->_ispInputPixelBufferAttributes);
      if (setup)
      {
        goto LABEL_63;
      }

      v17 = self->_ispProcessingSession;
      v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v18)
      {
        setup = v18(v17, kFigCaptureISPProcessingSessionProperty_OutputPixelBufferAttributes, kCFAllocatorDefault, &self->_ispOutputPixelBufferAttributes);
        if (setup)
        {
          goto LABEL_63;
        }

        v19 = dispatch_semaphore_create(1);
        ispRendererLock = self->_ispRendererLock;
        self->_ispRendererLock = v19;

        if (!self->_ispRendererLock)
        {
          goto LABEL_60;
        }

        v21 = dispatch_semaphore_create(0);
        ispWait = self->_ispWait;
        self->_ispWait = v21;

        if (!self->_ispWait)
        {
          goto LABEL_60;
        }

        v23 = dispatch_semaphore_create(6);
        ispBackPressure = self->_ispBackPressure;
        self->_ispBackPressure = v23;

        if (!self->_ispBackPressure)
        {
          goto LABEL_60;
        }

        v25 = dispatch_semaphore_create(1);
        frameCounterMutex = self->_frameCounterMutex;
        self->_frameCounterMutex = v25;

        if (!self->_frameCounterMutex)
        {
          goto LABEL_60;
        }

        v27 = *p_ispProcessingSession;
        v28 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v28)
        {
          setup = v28(v27, kFigCaptureISPProcessingSessionProperty_OutputHandler, &__block_literal_global_0);
          if (!setup)
          {
            objc_initWeak(&location, self);
            v8 = self->_ispProcessingSession;
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = __37__VISISPRendererV2_prepareToProcess___block_invoke_2;
            v43[3] = &unk_55120;
            objc_copyWeak(&v44, &location);
            v29 = v43;
            v30 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v30)
            {
              LODWORD(v8) = v30(v8, v29);

              if (v8)
              {
LABEL_55:
                objc_destroyWeak(&v44);
                objc_destroyWeak(&location);
                goto LABEL_48;
              }

              dispatch_semaphore_wait(self->_ispWait, 0xFFFFFFFFFFFFFFFFLL);
              if (!self->_ispStatus)
              {
                objc_destroyWeak(&v44);
                objc_destroyWeak(&location);
                if (process == 3)
                {
                  LODWORD(v8) = [(VISISPRendererV2 *)self prepareToProcess:?];
                  if (!v8)
                  {
                    return v8;
                  }

                  if (v8 == 1)
                  {
                    goto LABEL_35;
                  }

                  LODWORD(v8) = location;
                  goto LABEL_48;
                }

                v31 = objc_alloc_init(VISISPStripGeneratorV2);
                ispStripGenerator = self->_ispStripGenerator;
                self->_ispStripGenerator = v31;

                v33 = self->_ispStripGenerator;
                if (v33)
                {
                  [(VISISPStripGeneratorV2 *)v33 setInputSize:*self->_inputSize];
                  [(VISISPStripGeneratorV2 *)self->_ispStripGenerator setOutputSize:*self->_outputSize];
                  [(VISISPStripGeneratorV2 *)self->_ispStripGenerator setGridSize:*self->_gridSize];
                  [(VISISPStripGeneratorV2 *)self->_ispStripGenerator setExtendedOutputRowsToFill:self->_extendedOutputRowsToFill];
                  if (process == 1)
                  {
                    v34 = 1;
                  }

                  else
                  {
                    v34 = 2;
                  }

                  [(VISISPStripGeneratorV2 *)self->_ispStripGenerator setType:v34];
                  setup = [(VISISPStripGeneratorV2 *)self->_ispStripGenerator setup];
                  if (!setup)
                  {
LABEL_35:
                    LODWORD(v8) = 0;
                    *&self->_setupCompleted = 1;
                    self->_numberOfFramesEnqueued = 0;
                    return v8;
                  }

                  goto LABEL_63;
                }

LABEL_60:
                LODWORD(v8) = 0;
                return v8;
              }

              fig_log_get_emitter();
              FigDebugAssert3();
            }

            else
            {
            }

            LODWORD(v8) = -12782;
            goto LABEL_55;
          }

LABEL_63:
          LODWORD(v8) = setup;
          goto LABEL_48;
        }
      }
    }
  }

  LODWORD(v8) = -12782;
LABEL_48:
  if (*p_ispProcessingSession)
  {
    CFRelease(*p_ispProcessingSession);
    *p_ispProcessingSession = 0;
  }

  v41 = self->_ispCaptureDevice;
  if (v41)
  {
    CFRelease(v41);
    self->_ispCaptureDevice = 0;
  }

  return v8;
}

void __37__VISISPRendererV2_prepareToProcess___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  *(WeakRetained + 26) = a2;
  dispatch_semaphore_signal(*(WeakRetained + 11));
}

- (int)finishProcessing
{
  gpuRenderer = self->_gpuRenderer;
  if (gpuRenderer)
  {
    AffineTransformFinish(gpuRenderer);
  }

  if (self->_finishProcessingCompleted || !self->_setupCompleted)
  {
    result = 0;
  }

  else
  {
    ispProcessingSession = self->_ispProcessingSession;
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v5)
    {
      result = v5(ispProcessingSession);
    }

    else
    {
      result = -12782;
    }
  }

  self->_finishProcessingCompleted = 1;
  return result;
}

- (int)purgeResources
{
  gpuRenderer = self->_gpuRenderer;
  if (gpuRenderer)
  {
    AffineTransformFinish(gpuRenderer);
    AffineTransformContextRelease(self->_gpuRenderer);
    self->_gpuRenderer = 0;
  }

  ispProcessingSession = self->_ispProcessingSession;
  if (ispProcessingSession && self->_setupCompleted)
  {
    if (self->_ispCaptureDevice)
    {
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v5)
      {
        v5(ispProcessingSession);
      }

      ispCaptureDevice = self->_ispCaptureDevice;
      if (ispCaptureDevice)
      {
        CFRelease(ispCaptureDevice);
        self->_ispCaptureDevice = 0;
      }
    }

    ispMeshGenerator = self->_ispMeshGenerator;
    self->_ispMeshGenerator = 0;

    ispStripGenerator = self->_ispStripGenerator;
    self->_ispStripGenerator = 0;

    v9 = self->_ispProcessingSession;
    if (v9)
    {
      CFRelease(v9);
      self->_ispProcessingSession = 0;
    }

    dispatch_semaphore_wait(self->_frameCounterMutex, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_numberOfFramesEnqueued)
    {
      v10 = 0;
      do
      {
        dispatch_semaphore_signal(self->_ispBackPressure);
        ++v10;
      }

      while (v10 < self->_numberOfFramesEnqueued);
    }

    self->_numberOfFramesEnqueued = 0;
    ispBackPressure = self->_ispBackPressure;
    self->_ispBackPressure = 0;

    dispatch_semaphore_signal(self->_frameCounterMutex);
    ispRendererLock = self->_ispRendererLock;
    self->_ispRendererLock = 0;

    ispWait = self->_ispWait;
    self->_ispWait = 0;

    frameCounterMutex = self->_frameCounterMutex;
    self->_frameCounterMutex = 0;

    self->_setupCompleted = 0;
  }

  return 0;
}

- (VISRendererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (__n128)inputSize
{
  LOWORD(v1) = *(self + 128);
  WORD2(v1) = *(self + 130);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)outputSize
{
  LOWORD(v1) = *(self + 132);
  WORD2(v1) = *(self + 134);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (__n128)gridSize
{
  LOWORD(v1) = *(self + 136);
  WORD2(v1) = *(self + 138);
  result.n128_u32[0] = v1;
  result.n128_u16[2] = WORD2(v1);
  return result;
}

- (VISISPRendererV2)initWithISPProcessingSession:(OpaqueFigCaptureISPProcessingSession *)session metalContext:(id)context metalCommandQueue:(id)queue
{
  contextCopy = context;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = VISISPRendererV2;
  v11 = [(VISISPRendererV2 *)&v19 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v11->_ispProcessingSession = session;
  objc_storeStrong(&v11->_metalContext, context);
  metalContext = v12->_metalContext;
  if (!metalContext)
  {
    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [[FigMetalContext alloc] initWithbundle:v14 andOptionalCommandQueue:queueCopy];
    v16 = v12->_metalContext;
    v12->_metalContext = v15;

    metalContext = v12->_metalContext;
    if (!metalContext)
    {
      goto LABEL_9;
    }
  }

  if (queueCopy)
  {
    [(FigMetalContext *)metalContext setCommandQueue:queueCopy];
  }

  if (![(VISISPRendererV2 *)v12 _compileShaders])
  {
    v17 = v12;
  }

  else
  {
LABEL_9:
    v17 = 0;
  }

  return v17;
}

- (int)enqueuePixelBufferForRendering:(VISISPRendererV2 *)self inputValidBufferRect:(SEL)rect metadata:(__CVBuffer *)metadata ltmLUT:(CGRect *)t outputPixelBuffer:(id)buffer transformCounts:(id)counts transforms3x3:(__CVBuffer *)transforms3x3 transformStrides:(float *)(a8
{
  v10 = v9;
  v12 = v8;
  bufferCopy = buffer;
  countsCopy = counts;
  iSPMeshParams = 0;
  v20 = 0;
  origin = 0;
  v54 = 0;
  if (!metadata || !transforms3x3)
  {
    v21 = 0;
    goto LABEL_34;
  }

  v21 = 0;
  if (!a8)
  {
    goto LABEL_34;
  }

  if (!self->_setupCompleted)
  {
    v20 = 0;
    iSPMeshParams = 0;
    v21 = 0;
    goto LABEL_34;
  }

  v22 = CMGetAttachment(metadata, @"LowResolutionImageUsedByVideoEncoder", 0);
  v23 = kFigCaptureISPProcessingSessionOutputID_PrimaryScalerLowRes;
  if (v22)
  {
    if (![(NSArray *)self->_ispOutputIdentifiers containsObject:kFigCaptureISPProcessingSessionOutputID_PrimaryScalerLowRes])
    {
      v20 = 0;
      iSPMeshParams = 0;
      v21 = 0;
      goto LABEL_33;
    }

    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  v52[0] = kFigCaptureISPProcessingSessionOutputID_PrimaryScaler;
  v52[1] = transforms3x3;
  v52[2] = v23;
  v52[3] = v22;
  if (t)
  {
    size = t->size;
    origin = t->origin;
    v54 = size;
  }

  else
  {
    origin = 0;
    v54.width = CVPixelBufferGetWidth(metadata);
    v54.height = CVPixelBufferGetHeight(metadata);
  }

  if (self->_ispMeshGenerator)
  {
    v26 = OUTLINED_FUNCTION_0_2();
    v28 = [v27 generateMeshWithTransforms:v26 transforms3x3:? validBufferRect:? ltmLUT:?];
    if (!v28)
    {
      iSPMeshParams = [(VISISPMeshGeneratorV2 *)self->_ispMeshGenerator ISPMeshParams];
      if (!iSPMeshParams)
      {
LABEL_36:
        v21 = 0;
LABEL_37:
        v20 = -12782;
        goto LABEL_32;
      }

LABEL_20:
      v50 = v24;
      v34 = objc_alloc_init(NSMutableDictionary);
      v21 = v34;
      if (!v34)
      {
        goto LABEL_29;
      }

      [v34 setObject:iSPMeshParams forKeyedSubscript:kFigCaptureISPProcessingSessionParameterKey_SessionTypeSpecificParameters];
      dispatch_semaphore_wait(self->_ispBackPressure, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_semaphore_wait(self->_frameCounterMutex, 0xFFFFFFFFFFFFFFFFLL);
      ++self->_numberOfFramesEnqueued;
      dispatch_semaphore_signal(self->_frameCounterMutex);
      v35 = CMGetAttachment(metadata, @"InputDepthPixelBuffer", 0);
      v36 = CMGetAttachment(metadata, @"OutputDepthPixelBuffer", 0);
      if (v35)
      {
        v37 = v36;
        if (v36)
        {
          v49 = a8;
          v38 = v22;
          v39 = countsCopy;
          Width = CVPixelBufferGetWidth(metadata);
          v48 = COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeight(metadata), Width));
          v41 = CVPixelBufferGetWidth(transforms3x3);
          v42 = COERCE_DOUBLE(__PAIR64__(CVPixelBufferGetHeight(transforms3x3), v41));
          countsCopy = v39;
          v22 = v38;
          v43 = AffineTransformArrayApplyOnAttachmentPixelBuffer(self->_gpuRenderer, v35, v37, v49, &origin, bufferCopy, v48, v42, v12, v10);
          if (v43)
          {
            v20 = v43;
            goto LABEL_32;
          }
        }
      }

      dispatch_semaphore_wait(self->_ispRendererLock, 0xFFFFFFFFFFFFFFFFLL);
      ispProcessingSession = self->_ispProcessingSession;
      v45 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v45)
      {
        v20 = v45(ispProcessingSession, self, metadata, v50, v52, v21);
        dispatch_semaphore_signal(self->_ispRendererLock);
        if (!v20)
        {
          self->_finishProcessingCompleted = 0;
          WeakRetained = objc_loadWeakRetained(&self->_delegate);

          if (!WeakRetained)
          {
            dispatch_semaphore_wait(self->_ispWait, 0xFFFFFFFFFFFFFFFFLL);
            if (self->_ispStatus)
            {
              goto LABEL_37;
            }
          }

LABEL_29:
          v20 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        dispatch_semaphore_signal(self->_ispRendererLock);
        v20 = -12782;
      }

      dispatch_semaphore_wait(self->_frameCounterMutex, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_semaphore_signal(self->_ispBackPressure);
      --self->_numberOfFramesEnqueued;
      dispatch_semaphore_signal(self->_frameCounterMutex);
      goto LABEL_32;
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_0_2();
    v28 = [v30 generateStripsWithTransforms:v29 transforms3x3:? validBufferRect:?];
    if (!v28)
    {
      iSPStripParams = [(VISISPStripGeneratorV2 *)self->_ispStripGenerator ISPStripParams];
      iSPMeshParams = iSPStripParams;
      if (!iSPStripParams)
      {
        goto LABEL_36;
      }

      bytes = [iSPStripParams bytes];
      if (!bytes)
      {
        goto LABEL_36;
      }

      v33 = bytes;
      bytes[2] = [(VISISPRendererV2 *)self _isPixelBuffer422:metadata];
      v33[3] = [(VISISPRendererV2 *)self _isPixelBuffer422:transforms3x3];
      goto LABEL_20;
    }
  }

  v20 = v28;
  v21 = 0;
  iSPMeshParams = 0;
LABEL_32:
  if (v22)
  {
LABEL_33:
    CMRemoveAttachment(metadata, @"LowResolutionImageUsedByVideoEncoder");
  }

LABEL_34:

  return v20;
}

- (BOOL)_isPixelBuffer422:(__CVBuffer *)buffer422
{
  result = 0;
  if (buffer422)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(buffer422);
    v4 = PixelFormatType == 645424690 || PixelFormatType == 645428786;
    v5 = v4 || PixelFormatType == 762865202;
    v6 = v5 || PixelFormatType == 762869298;
    v7 = v6 || PixelFormatType == 796419634;
    v8 = v7 || PixelFormatType == 796423730;
    v9 = v8 || PixelFormatType == 1882468914;
    v10 = v9 || PixelFormatType == 1885745714;
    v11 = v10 || PixelFormatType == 2016686642;
    v12 = v11 || PixelFormatType == 2019963442;
    v13 = v12 || PixelFormatType == 2037741158;
    v14 = v13 || PixelFormatType == 2037741171;
    v15 = v14 || PixelFormatType == 2088265266;
    if (v15 || PixelFormatType == 2088269362)
    {
      return 1;
    }
  }

  return result;
}

- (void)prepareToProcess:(uint64_t)a1 .cold.1(uint64_t a1, unsigned int *a2)
{
  v4 = [VISISPMeshGeneratorV2 alloc];
  v5 = *(a1 + 8);
  v6 = [v5 commandQueue];
  v7 = [(VISISPMeshGeneratorV2 *)v4 initWithMetalContext:v5 metalCommandQueue:v6];
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;

  result = *(a1 + 56);
  if (result)
  {
    [result setInputSize:*(a1 + 128)];
    [*(a1 + 56) setOutputSize:*(a1 + 132)];
    [*(a1 + 56) setGridSize:*(a1 + 136)];
    v10 = [*(a1 + 56) setup];
    *a2 = v10;
    if (v10)
    {
      return &dword_0 + 2;
    }

    else
    {
      return &dword_0 + 1;
    }
  }

  return result;
}

@end