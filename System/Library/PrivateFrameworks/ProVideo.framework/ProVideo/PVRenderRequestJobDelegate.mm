@interface PVRenderRequestJobDelegate
- (PVRenderRequestJobDelegate)initWithRequest:(id)request completionHandler:(id)handler pvRenderer:(id)renderer;
- (int)jobPriority;
- (int)renderContextPriority;
- (int)renderThreadPriority;
- (unsigned)jobTypeTag;
- (unsigned)outputCVPixelBufferFormat;
- (void)buildGraph:(void *)graph renderContext:(const void *)context frameStats:(void *)stats;
- (void)dealloc;
- (void)finishCompletedJob;
- (void)renderJobFinished:(HGRef<PVRenderJob>)finished;
- (void)setupDestinationBuffers:(void *)buffers renderContext:(const void *)context frameStats:(void *)stats;
@end

@implementation PVRenderRequestJobDelegate

- (PVRenderRequestJobDelegate)initWithRequest:(id)request completionHandler:(id)handler pvRenderer:(id)renderer
{
  requestCopy = request;
  handlerCopy = handler;
  rendererCopy = renderer;
  v22.receiver = self;
  v22.super_class = PVRenderRequestJobDelegate;
  v12 = [(PVRenderRequestJobDelegate *)&v22 init];
  v13 = v12;
  v14 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->m_request, request);
    objc_storeStrong(&v13->m_pvRenderer, renderer);
    PVRenderManager::INSTANCE(v15, &v21);
    m_Obj = v14->m_renderManager.m_Obj;
    v17 = v21;
    if (m_Obj == v21)
    {
      if (m_Obj)
      {
        (*(*v21 + 24))(v21);
      }
    }

    else
    {
      if (m_Obj)
      {
        (*(*m_Obj + 24))(m_Obj);
        v17 = v21;
      }

      v14->m_renderManager.m_Obj = v17;
    }

    v18 = MEMORY[0x2666EAFC0](handlerCopy);
    m_completionHandler = v14->m_completionHandler;
    v14->m_completionHandler = v18;

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  m_destinationBitmaps = self->m_destinationBitmaps;
  if (m_destinationBitmaps)
  {
    v5 = self->m_destinationBitmaps;
    std::vector<HGRef<HGBitmap>>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2666E9F00](m_destinationBitmaps, 0x20C40960023A9);
  }

  v4.receiver = self;
  v4.super_class = PVRenderRequestJobDelegate;
  [(PVRenderRequestJobDelegate *)&v4 dealloc];
}

- (unsigned)jobTypeTag
{
  v2 = objc_opt_class();

  return [v2 jobTypeTag];
}

- (unsigned)outputCVPixelBufferFormat
{
  outputCVPixelBufferFormat = [(PVRenderRequest *)self->m_request outputCVPixelBufferFormat];
  v4 = 16;
  if (!outputCVPixelBufferFormat)
  {
    v4 = 8;
  }

  v5 = *(&self->super.isa + v4);

  return [v5 outputCVPixelBufferFormat];
}

- (void)buildGraph:(void *)graph renderContext:(const void *)context frameStats:(void *)stats
{
  v89 = *MEMORY[0x277D85DE8];
  p_m_request = &self->m_request;
  [(PVRenderer *)self->m_pvRenderer loadInstructionGraphEffects:self->m_request, context, stats];
  highQuality = [(PVRenderRequest *)*p_m_request highQuality];
  compositingContext = [(PVRenderRequest *)*(p_m_request - 1) compositingContext];
  [(PVRenderRequest *)*p_m_request outputSize];
  v10 = v9;
  v12 = v11;
  m_pvRenderer = self->m_pvRenderer;
  if (m_pvRenderer)
  {
    [(PVRenderer *)m_pvRenderer frameDuration];
  }

  else
  {
    memset(&v87, 0, sizeof(v87));
  }

  v14 = HGObject::operator new(0xA8uLL);
  time = v87;
  v90.width = v10;
  v90.height = v12;
  PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v14, compositingContext, v90, highQuality, &time);

  v15 = MEMORY[0x277CCACA8];
  m_request = self->m_request;
  if (m_request)
  {
    [(PVRenderRequest *)m_request time];
    v17 = MEMORY[0x277CCACA8];
    value = v87.value;
    timescale = v87.timescale;
  }

  else
  {
    timescale = 0;
    value = 0;
    memset(&v87, 0, sizeof(v87));
    v17 = MEMORY[0x277CCACA8];
  }

  time = v87;
  v20 = [v17 stringWithFormat:@"{%lld/%d = %.3f}", value, timescale, CMTimeGetSeconds(&time)];
  v62 = [v15 stringWithFormat:@"RequestTime: %@", v20];

  v21 = v62;
  uTF8String = [v62 UTF8String];
  v23 = strlen(uTF8String);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    operator new();
  }

  v86 = v23;
  if (v23)
  {
    memmove(&__dst, uTF8String, v23);
  }

  *(&__dst + v24) = 0;
  PVInstructionGraphContext::AddContextDotNode(v14, &__dst);
  if (v86 < 0)
  {
    operator delete(__dst);
  }

  if (HGLogger::getLevel("kPVInstructionGraphToHeliumGraphLogContext", v25) >= 1)
  {
    v26 = self->m_request;
    if (v26)
    {
      [(PVRenderRequest *)v26 time];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v27 = CMTimeCopyDescription(0, &time);
    v28 = v27;
    v29 = atomic_load(HGLogger::_enabled);
    if (v29)
    {
      v30 = v27;
      uTF8String2 = [v28 UTF8String];
      HGLogger::log("kPVInstructionGraphToHeliumGraphLogContext", 1, "Current Time:           %s\n", v32, v33, uTF8String2);
    }

    CFRelease(v28);
  }

  time.value = &time.timescale;
  *&time.timescale = 0;
  v80[0] = 0;
  v80[1] = 0;
  time.epoch = 0;
  v79 = v80;
  v80[2] = v81;
  v81[0] = 0;
  v82[0] = 0;
  v82[1] = 0;
  v81[1] = 0;
  v81[2] = v82;
  v82[2] = v83;
  v83[0] = 0;
  v84[0] = 0;
  v84[1] = 0;
  v83[1] = 0;
  v83[2] = v84;
  Renderer = HGRenderContext::GetRenderer(context);
  v35 = Renderer;
  if (Renderer)
  {
    (*(*Renderer + 16))(Renderer);
  }

  v77 = v35;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  selfCopy2 = self;
  obj = [(PVRenderRequest *)self->m_request outputNodes];
  v37 = [obj countByEnumeratingWithState:&v73 objects:v88 count:16];
  if (v37)
  {
    v65 = *v74;
    do
    {
      v66 = v37;
      for (i = 0; i != v66; ++i)
      {
        if (*v74 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v73 + 1) + 8 * i);
        v40 = selfCopy2->m_request;
        if (v40)
        {
          [(PVRenderRequest *)v40 time];
        }

        else
        {
          memset(&v87, 0, sizeof(v87));
        }

        v71 = v14;
        if (v14)
        {
          (*(*v14 + 16))(v14);
        }

        if (v39)
        {
          [v39 hgNodeForTime:&v87 trackInputs:&time renderer:&v77 igContext:&v71];
        }

        else
        {
          v72 = 0;
        }

        if (v71)
        {
          (*(*v71 + 24))(v71);
        }

        if (+[PVEnvironment PV_HIGHLIGHT_OUT_OF_GAMUT])
        {
          v41 = HGObject::operator new(0x1A0uLL);
          HgcHighlightOutOfGamut::HgcHighlightOutOfGamut(v41);
          (*(*v41 + 120))(v41, 0, v72);
          if (v72 != v41)
          {
            if (v72)
            {
              (*(*v72 + 24))();
            }

            v72 = v41;
            (*(*v41 + 16))(v41);
          }

          (*(*v41 + 24))(v41);
        }

        v69 = v72;
        if (v72)
        {
          (*(*v72 + 16))(v72);
        }

        v42 = PVInstructionGraphContext::WorkingColorSpace(v14);
        v43 = PVInstructionGraphContext::OutputColorSpace(v14);
        v68 = 0;
        ColorConformInput(&v69, v42, v43, 1, &v68, &v70);
        v44 = v68;
        v45 = v70;
        if (v72 == v70)
        {
          if (v72)
          {
            (*(*v70 + 24))(v70);
          }
        }

        else
        {
          if (v72)
          {
            (*(*v72 + 24))();
            v45 = v70;
          }

          v72 = v45;
          v70 = 0;
        }

        if (v69)
        {
          (*(*v69 + 24))(v69);
        }

        if (v44)
        {
          NSLog(&cfstr_ConformError.isa, v44);
        }

        outputCVPixelBufferFormat = [(PVRenderRequestJobDelegate *)self outputCVPixelBufferFormat];
        if (PVIsMultiplaneCoreVideo420Format(outputCVPixelBufferFormat) || PVIsMultiplaneCoreVideo422Format(outputCVPixelBufferFormat))
        {
          [(PVRenderRequest *)self->m_request outputSize];
          v48 = v47;
          [(PVRenderRequest *)self->m_request outputSize];
          v50 = v48 & 1;
          if (v48 < 0)
          {
            v50 = -v50;
          }

          v51 = HGRectMake4i(0, 0, v50 + v48, v49);
          v53 = v52;
          DOD = HGRenderer::GetDOD(v77, v72);
          v56 = v55;
          v57 = PVInstructionGraphContext::OutputColorSpace(v14);
          nclcTriplet = [v57 nclcTriplet];

          PVCreateYUVPlanesWithBackfillBlackBackground(DOD, v56, v51, v53, &v72, nclcTriplet, outputCVPixelBufferFormat, graph);
        }

        else if (outputCVPixelBufferFormat == 1380411457 || outputCVPixelBufferFormat == 1111970369)
        {
          v59 = *(graph + 1);
          if (v59 >= *(graph + 2))
          {
            v61 = std::vector<HGRef<HGNode>>::__emplace_back_slow_path<HGRef<HGNode> const&>(graph, &v72);
          }

          else
          {
            v60 = v72;
            *v59 = v72;
            if (v60)
            {
              (*(*v60 + 16))(v60);
            }

            v61 = (v59 + 1);
            *(graph + 1) = v59 + 1;
          }

          *(graph + 1) = v61;
        }

        if (v72)
        {
          (*(*v72 + 24))(v72);
        }

        selfCopy2 = self;
      }

      v37 = [obj countByEnumeratingWithState:&v73 objects:v88 count:16];
    }

    while (v37);
  }

  if (v77)
  {
    (*(*v77 + 24))(v77);
  }

  PVInputHGNodeMap<PVInstructionGraphSourceNode * {__strong}>::~PVInputHGNodeMap(&time);

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }
}

- (void)setupDestinationBuffers:(void *)buffers renderContext:(const void *)context frameStats:(void *)stats
{
  if (*(self->m_destinationBitmaps + 1) == *self->m_destinationBitmaps)
  {
    v8 = [(PVRenderRequestJobDelegate *)self outputCVPixelBufferFormat:buffers];
    outputNodes = [(PVRenderRequest *)self->m_request outputNodes];
    v10 = [outputNodes count];

    for (; v10; --v10)
    {
      m_pvRenderer = self->m_pvRenderer;
      [(PVRenderRequest *)self->m_request outputSize];
      if (m_pvRenderer)
      {
        [(PVRenderer *)m_pvRenderer getDestinationBuffer:v8 cvPixelBufferFormat:?];
      }

      else
      {
        v14 = 0;
      }

      std::vector<HGRef<HGBitmap>>::push_back[abi:ne200100](self->m_destinationBitmaps, &v14);
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(v14, v12);
      if (CVBitmapStorage)
      {
        PVCreateOutputBufferForHGCVPixelBuffer(*(CVBitmapStorage[16] + 24), context, buffers);
      }

      else
      {
        std::vector<HGRef<HGBitmap>>::push_back[abi:ne200100](buffers, &v14);
      }

      if (v14)
      {
        (*(*v14 + 24))(v14);
      }
    }
  }
}

- (void)finishCompletedJob
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:(*(self->m_destinationBitmaps + 1) - *self->m_destinationBitmaps) >> 3];
  m_destinationBitmaps = self->m_destinationBitmaps;
  v5 = *m_destinationBitmaps;
  if (*m_destinationBitmaps != m_destinationBitmaps[1])
  {
    do
    {
      v6 = *v5;
      if (*v5)
      {
        (*(*v6 + 16))(*v5);
        v8 = v6;
        (*(*v6 + 16))(v6);
      }

      else
      {
        v8 = 0;
      }

      v7 = [PVImageBuffer imageWithHGBitmap:&v8];
      if (v8)
      {
        (*(*v8 + 24))(v8);
      }

      [v3 addObject:v7];

      if (v6)
      {
        (*(*v6 + 24))(v6);
      }

      ++v5;
    }

    while (v5 != *(self->m_destinationBitmaps + 1));
  }

  (*(self->m_completionHandler + 2))();
}

- (void)renderJobFinished:(HGRef<PVRenderJob>)finished
{
  m_pvRenderer = self->m_pvRenderer;
  v4 = *finished.var0;
  v5 = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4, a2);
  }

  [(PVRenderer *)m_pvRenderer renderJobFinished:&v5];
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }
}

- (int)jobPriority
{
  priority = [(PVRenderRequest *)self->m_request priority];
  if (priority >= 3)
  {
    return 5;
  }

  else
  {
    return 5 * priority;
  }
}

- (int)renderThreadPriority
{
  gcdPriority = [(PVRenderRequest *)self->m_request gcdPriority];
  if (gcdPriority <= 2)
  {
    return gcdPriority + 1;
  }

  else
  {
    return 2;
  }
}

- (int)renderContextPriority
{
  gpuPriority = [(PVRenderRequest *)self->m_request gpuPriority];
  if (gpuPriority >= 3)
  {
    return 5;
  }

  else
  {
    return 5 * gpuPriority;
  }
}

@end