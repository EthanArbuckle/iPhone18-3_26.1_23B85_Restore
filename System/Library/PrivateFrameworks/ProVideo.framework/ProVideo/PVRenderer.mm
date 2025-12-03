@interface PVRenderer
- (HGRef<HGBitmap>)getDestinationBuffer:(CGSize)buffer cvPixelBufferFormat:(unsigned int)format;
- (HGRef<HGCVPixelBuffer>)hgCVPixelBufferFromCVPoolForSize:(CGSize)size withFormat:(unsigned int)format;
- (PVRenderer)initWithOptions:(id)options;
- (id).cxx_construct;
- (void)_statsLogCheck;
- (void)cleanupMemoryCaches;
- (void)dealloc;
- (void)loadInstructionGraphEffects:(id)effects;
- (void)renderJobFinished:(HGRef<PVRenderJob>)finished;
- (void)startRenderRequest:(id)request completionHandler:(id)handler;
- (void)updateDestinationFormatForOutputColorSpace;
@end

@implementation PVRenderer

- (PVRenderer)initWithOptions:(id)options
{
  optionsCopy = options;
  v8.receiver = self;
  v8.super_class = PVRenderer;
  if ([(PVRendererBase *)&v8 initWithOptions:optionsCopy])
  {
    if (optionsCopy)
    {
      v5 = [optionsCopy objectForKeyedSubscript:@"kPVRendererPoolDestinationBuffers"];
      if (v5)
      {
        v6 = [optionsCopy objectForKeyedSubscript:@"kPVRendererPoolDestinationBuffers"];
        [v6 BOOLValue];
      }
    }

    operator new();
  }

  return 0;
}

- (void)dealloc
{
  PVRenderManager::FlushTextureFactories(self->_renderManager.m_Obj);
  PVRenderManager::TearDownTextureFactories(self->_renderManager.m_Obj);
  cvPoolsLock = self->_cvPoolsLock;
  if (cvPoolsLock)
  {
    (*(cvPoolsLock->var0 + 1))(cvPoolsLock);
  }

  begin = self->_cvPools.__begin_;
  end = self->_cvPools.__end_;
  if (begin != end)
  {
    do
    {
      v6 = *begin;
      if (*begin)
      {
        (*(*v6 + 16))(*begin);
        (*(*v6 + 24))(v6);
      }

      ++begin;
    }

    while (begin != end);
    begin = self->_cvPools.__begin_;
    end = self->_cvPools.__end_;
  }

  while (end != begin)
  {
    std::allocator<HGRef<PVCVPixelBufferPool>>::destroy[abi:ne200100](&self->_cvPools, --end);
  }

  self->_cvPools.__end_ = begin;
  v7.receiver = self;
  v7.super_class = PVRenderer;
  [(PVRendererBase *)&v7 dealloc];
}

- (void)startRenderRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  outputNodes = [requestCopy outputNodes];
  if (outputNodes && ([requestCopy outputNodes], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, outputNodes, v10) && (objc_msgSend(requestCopy, "outputSize"), v11 != 0.0) && (objc_msgSend(requestCopy, "outputSize"), v12 != 0.0))
  {
    v13 = [[PVRenderRequestJobDelegate alloc] initWithRequest:requestCopy completionHandler:handlerCopy pvRenderer:self];
    if (requestCopy)
    {
      [requestCopy time];
    }

    else
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    [(PVRendererBase *)self startJobForDelegate:v13 time:&v14 playback:1];
    if (v17)
    {
      (*(*v17 + 24))(v17);
    }

    [(PVRenderer *)self _statsLogCheck:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, requestCopy, 0);
  }
}

- (void)loadInstructionGraphEffects:(id)effects
{
  effectsCopy = effects;
  compositingContext = [(PVRendererBase *)self compositingContext];
  [effectsCopy outputSize];
  v7 = v6;
  v9 = v8;
  highQuality = [effectsCopy highQuality];
  [(PVRenderer *)self frameDuration];
  v11 = HGObject::operator new(0xA8uLL);
  v16 = v15;
  v17.width = v7;
  v17.height = v9;
  PVRendererInstructionGraphContext::PVRendererInstructionGraphContext(v11, compositingContext, v17, highQuality, &v16);

  effectLoader = self->_effectLoader;
  outputNodes = [effectsCopy outputNodes];
  v14 = v11;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  [(PVRenderEffectLoader *)effectLoader loadEffectsForGraphs:outputNodes loadContext:&v14];
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }
}

- (void)cleanupMemoryCaches
{
  v8.receiver = self;
  v8.super_class = PVRenderer;
  [(PVRendererBase *)&v8 cleanupMemoryCaches];
  [(PVRenderEffectLoader *)self->_effectLoader ageOutEffects];
  m_Obj = self->_destinationBufferPool.m_Obj;
  if (m_Obj)
  {
    HGCVPixelBufferPool::clear(m_Obj);
  }

  PVRenderManager::FreeTexturePools(self->_renderManager.m_Obj);
  cvPoolsLock = self->_cvPoolsLock;
  HGSynchronizable::Lock(cvPoolsLock);
  begin = self->_cvPools.__begin_;
  end = self->_cvPools.__end_;
  while (begin != end)
  {
    v7 = *begin;
    if (*begin)
    {
      (*(*v7 + 2))(*begin);
    }

    CVPixelBufferPoolFlush(v7[5], 1uLL);
    (*(*v7 + 3))(v7);
    ++begin;
  }

  HGSynchronizable::Unlock(cvPoolsLock);
}

- (HGRef<HGBitmap>)getDestinationBuffer:(CGSize)buffer cvPixelBufferFormat:(unsigned int)format
{
  v5 = *&format;
  height = buffer.height;
  width = buffer.width;
  v9 = v4;
  *v4 = 0;
  if (PVIsMultiplaneCoreVideo420Format(format) || PVIsMultiplaneCoreVideo422Format(v5))
  {
    v32.width = width;
    v32.height = height;
    if (!PVCanCreateCVPixelBuffer(v32))
    {
      v10 = PVMaximumCVPixelBufferSize();
      if (width > v10)
      {
        width = v10;
      }

      if (height > v10)
      {
        height = v10;
      }

      NSLog(&cfstr_ErrorMultiplan.isa);
    }
  }

  v33.width = width;
  v33.height = height;
  if (PVCanCreateCVPixelBuffer(v33))
  {
    [(PVRenderer *)self hgCVPixelBufferFromCVPoolForSize:v5 withFormat:width, height];
    if (v30)
    {
      v12 = *(v30 + 3);
      compositingContext = [(PVRendererBase *)self compositingContext];
      outputColorSpace = [compositingContext outputColorSpace];
      PVAddColorSpaceAttributesToCVPixelBuffer(v12, outputColorSpace);

      if (PVIsMultiplaneCoreVideo420Format(v5) || PVIsMultiplaneCoreVideo422Format(v5))
      {
        if (PVIs10BitMultiplaneCoreVideoX420Format(v5) || PVIs10BitMultiplaneCoreVideoX422Format(v5))
        {
          v16 = 3;
        }

        else
        {
          v16 = 1;
        }

        HGCVBitmap::create(&v30, v16, 0, &v29);
      }

      else
      {
        v27 = HGCV::HGFormatForCVPixelFormat(v5, 0, v15);
        HGCVBitmap::create(&v30, v27, 0, &v29);
      }

      v28 = v29;
      if (v29)
      {
        *v9 = v29;
        (*(*v28 + 16))(v28);
        (*(*v28 + 24))(v28);
      }
    }

    else
    {
      NSLog(&cfstr_ErrorGetdestin.isa);
    }

    v26 = v30;
    if (v30)
    {
      return (*(*v30 + 24))(v30);
    }
  }

  else
  {
    v17 = width;
    v18 = height;
    v19 = HGRectMake4f(v11, 0.0, 0.0, v17, v18);
    v21 = v20;
    v23 = HGCV::HGFormatForCVPixelFormat(v5, 0, v22);
    compositingContext2 = [(PVRendererBase *)self compositingContext];
    outputColorSpace2 = [compositingContext2 outputColorSpace];
    PVCreateHGBitmapWithStorage(v19, v21, v23, outputColorSpace2, &v30);
    if (v30)
    {
      *v9 = v30;
      v30 = 0;
    }
  }

  return v26;
}

- (void)renderJobFinished:(HGRef<PVRenderJob>)finished
{
  v20 = *finished.var0;
  if (v20)
  {
    (*(*v20 + 16))(v20, a2);
  }

  v19.receiver = self;
  v19.super_class = PVRenderer;
  [(PVRendererBase *)&v19 renderJobFinished:&v20];
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  cvPoolsLock = self->_cvPoolsLock;
  v15 = cvPoolsLock;
  LOBYTE(v16) = 0;
  HGSynchronizable::Lock(cvPoolsLock);
  p_cvPools = &self->_cvPools;
  begin = self->_cvPools.__begin_;
  end = self->_cvPools.__end_;
  while (begin != end)
  {
    v8 = *begin;
    if (*begin)
    {
      (*(*v8 + 2))(*begin);
    }

    CVPixelBufferPoolFlush(v8[5], 0);
    (*(*v8 + 3))(v8);
    ++begin;
  }

  HGSynchronizable::Unlock(cvPoolsLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  ptr = self->_dateLock.__ptr_;
  v18 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = *"";
  block[2] = __32__PVRenderer_renderJobFinished___block_invoke;
  block[3] = &unk_279AA5C78;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(*ptr, block);
  if (v16[3])
  {
    PVRenderManager::FlushTextureFactories(self->_renderManager.m_Obj);
    v10 = self->_cvPoolsLock;
    HGSynchronizable::Lock(v10);
    v11 = p_cvPools->__begin_;
    v12 = p_cvPools->__end_;
    while (v11 != v12)
    {
      v13 = *v11;
      if (*v11)
      {
        (*(*v13 + 2))(*v11);
      }

      CVPixelBufferPoolFlush(v13[5], 1uLL);
      (*(*v13 + 3))(v13);
      ++v11;
    }

    HGSynchronizable::Unlock(v10);
  }

  _Block_object_dispose(&v15, 8);
}

void __32__PVRenderer_renderJobFinished___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 168) timeIntervalSinceNow];
  if (v2 < -1.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 168);
    *(v4 + 168) = v3;
  }
}

- (void)_statsLogCheck
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  ptr = self->_dateLock.__ptr_;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = __28__PVRenderer__statsLogCheck__block_invoke;
  v4[3] = &unk_279AA5C78;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(*ptr, v4);
  if (*(v6 + 24) == 1)
  {
    [(PVRendererBase *)self printAndClearStats:1];
  }

  _Block_object_dispose(&v5, 8);
}

void __28__PVRenderer__statsLogCheck__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 160) timeIntervalSinceNow];
  if (v2 < -5.0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = objc_opt_new();
    v4 = *(a1 + 32);
    v5 = *(v4 + 160);
    *(v4 + 160) = v3;
  }
}

- (void)updateDestinationFormatForOutputColorSpace
{
  compositingContext = [(PVRendererBase *)self compositingContext];
  outputColorSpace = [compositingContext outputColorSpace];
  isHDRSpace = [outputColorSpace isHDRSpace];

  if (isHDRSpace)
  {
    v6 = 2016686640;
  }

  else
  {
    compositingContext2 = [(PVRendererBase *)self compositingContext];
    outputColorSpace2 = [compositingContext2 outputColorSpace];
    [outputColorSpace2 isP3d65GammaColorSpace];

    v6 = 1111970369;
  }

  self->_destinationPixelFormat = v6;
}

- (HGRef<HGCVPixelBuffer>)hgCVPixelBufferFromCVPoolForSize:(CGSize)size withFormat:(unsigned int)format
{
  v5 = *&format;
  height = size.height;
  width = size.width;
  v9 = v4;
  cvPoolsLock = self->_cvPoolsLock;
  v23 = 0;
  HGSynchronizable::Lock(cvPoolsLock);
  *v9 = 0;
  if (self->_enableDestinationPool)
  {
    v21 = 0;
    p_cvPools = &self->_cvPools;
    begin = self->_cvPools.__begin_;
    end = self->_cvPools.__end_;
    if (begin != end)
    {
      while (1)
      {
        v13 = *begin;
        if (*begin)
        {
          (*(*v13 + 16))(*begin);
        }

        if (*(v13 + 16) == width && *(v13 + 24) == height && *(v13 + 32) == v5)
        {
          break;
        }

        (*(*v13 + 24))(v13);
        if (++begin == end)
        {
          goto LABEL_9;
        }
      }

      v19 = *v13;
      v21 = v13;
      (*(v19 + 16))(v13);
      (*(*v13 + 24))(v13);
      goto LABEL_19;
    }

LABEL_9:
    name = [(PVRendererBase *)self name];
    NSLog(&cfstr_CouldNotFindPo.isa, name, width, height);

    v15 = HGObject::operator new(0x30uLL);
    PVCVPixelBufferPool::PVCVPixelBufferPool(v15, width, height, v5);
    if (v15)
    {
      v21 = v15;
      v16 = p_cvPools->__end_;
      if (v16 < p_cvPools->__cap_)
      {
        *v16 = v15;
        (*(*v15 + 16))(v15);
LABEL_16:
        v17 = (v16 + 1);
        p_cvPools->__end_ = v16 + 1;
LABEL_18:
        p_cvPools->__end_ = v17;
        v13 = v21;
LABEL_19:
        pixelBufferOut = 0;
        CVPixelBufferPoolCreatePixelBuffer(0, *(v13 + 40), &pixelBufferOut);
        HGCVPixelBuffer::convert(pixelBufferOut, &v20);
        if (v20)
        {
          *v9 = v20;
        }

        if (v21)
        {
          (*(*v21 + 24))(v21);
        }

        return HGSynchronizable::Unlock(cvPoolsLock);
      }
    }

    else
    {
      v16 = p_cvPools->__end_;
      if (v16 < p_cvPools->__cap_)
      {
        *v16 = 0;
        goto LABEL_16;
      }
    }

    v17 = std::vector<HGRef<PVCVPixelBufferPool>>::__emplace_back_slow_path<HGRef<PVCVPixelBufferPool> const&>(p_cvPools, &v21);
    goto LABEL_18;
  }

  HGCVPixelBuffer::create(width, height, v5, &pixelBufferOut);
  if (pixelBufferOut)
  {
    *v9 = pixelBufferOut;
  }

  return HGSynchronizable::Unlock(cvPoolsLock);
}

- (id).cxx_construct
{
  *(self + 13) = 0;
  *(self + 14) = 0;
  *(self + 12) = 0;
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 19) = 0;
  return self;
}

@end