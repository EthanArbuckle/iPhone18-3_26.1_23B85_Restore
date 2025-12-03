@interface VKOverlay
- ($C9B3965AAA5284750DDDB08D9AABF973)replaceMapContentInRect;
- (BOOL)areResourcesRequired;
- (BOOL)canDrawKey:(id *)key;
- (BOOL)canDrawKey:(id *)key withData:(id)data;
- (BOOL)canPossiblyDrawKey:(id *)key;
- (BOOL)shouldUseMetalTexture;
- (VKOverlay)init;
- (VKOverlayDelegate)delegate;
- (id).cxx_construct;
- (id)customTileProvider;
- (id)rasterTileProvider;
- (id)vectorData;
- (shared_ptr<md::RasterTileOverlayStyle>)customStyle;
- (shared_ptr<md::RasterTileOverlayStyle>)rasterStyle;
- (unint64_t)estimatedCostForCustomTileData:(id)data;
- (unsigned)anisotropy;
- (void)_updateCustomTileProvider;
- (void)_updateRasterTileProvider;
- (void)_updateVectorData;
- (void)customTileOverlayDidChangeAlpha:(id)alpha;
- (void)customTileOverlayDidChangeDisplayRate:(id)rate;
- (void)customTileOverlayNeedsDisplay:(id)display;
- (void)customTileOverlayNeedsInvalidate:(id)invalidate;
- (void)dealloc;
- (void)didEnterKey:(id *)key withFallback:(BOOL)fallback;
- (void)didExitKey:(id *)key;
- (void)drawKey:(id *)key inContext:(CGContext *)context;
- (void)drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp;
- (void)drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)drawKey:(id *)key withData:(id)data inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale;
- (void)onVisibleTiles:(id)tiles;
- (void)rasterTileOverlayDidChangeAlpha:(id)alpha;
- (void)rasterTileOverlayNeedsDisplay:(id)display;
- (void)rasterTileOverlayNeedsInvalidate:(id)invalidate;
- (void)setBlendMode:(int64_t)mode;
- (void)setDelegate:(id)delegate;
- (void)setForceRasterizationForGlobe:(BOOL)globe;
- (void)setNeedsDisplayForReason:(unint64_t)reason;
- (void)setNeedsDisplayInRect:(id *)rect level:(int64_t)level reason:(unint64_t)reason;
- (void)setStandardContainer:(weak_ptr<md::OverlayContainer>)container;
- (void)vectorOverlayNeedsDisplay:(id)display needsFullInvalidate:(BOOL)invalidate;
- (weak_ptr<md::OverlayContainer>)standardContainer;
@end

@implementation VKOverlay

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 28) = 0;
  *(self + 32) = 0;
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 40) = 0;
  *(self + 21) = 0;
  *(self + 22) = 0;
  return self;
}

- (shared_ptr<md::RasterTileOverlayStyle>)customStyle
{
  cntrl = self->_customStyle.__cntrl_;
  *v2 = self->_customStyle.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<md::RasterTileOverlayStyle>)rasterStyle
{
  cntrl = self->_rasterStyle.__cntrl_;
  *v2 = self->_rasterStyle.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- ($C9B3965AAA5284750DDDB08D9AABF973)replaceMapContentInRect
{
  x = self->_replaceMapContentInRect.origin.x;
  y = self->_replaceMapContentInRect.origin.y;
  width = self->_replaceMapContentInRect.size.width;
  height = self->_replaceMapContentInRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)customTileOverlayDidChangeDisplayRate:(id)rate
{
  rateCopy = rate;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  if (self->_customTileProvider == rateCopy && self->_runLoopController)
  {
    desiredDisplayRate = [(VKCustomTileOverlayProviderData *)rateCopy desiredDisplayRate];
    if (desiredDisplayRate || [(VKCustomTileOverlayProviderData *)rateCopy forceContinuousLayout]|| [(VKCustomTileOverlayProviderData *)rateCopy forceNativeDisplayRate])
    {
      forceNativeDisplayRate = [(VKCustomTileOverlayProviderData *)rateCopy forceNativeDisplayRate];
      v6 = 60;
      if ((desiredDisplayRate - 20) < 0xA)
      {
        v6 = 20;
      }

      if ((desiredDisplayRate - 15) >= 5)
      {
        v7 = v6;
      }

      else
      {
        v7 = 15;
      }

      if ((desiredDisplayRate - 5) >= 0xA)
      {
        v8 = v7;
      }

      else
      {
        v8 = 5;
      }

      if ((desiredDisplayRate - 1) >= 4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      if (forceNativeDisplayRate)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      runLoopController = self->_runLoopController;
      var1 = runLoopController->var1;
      forceNativeDisplayRate2 = [(VKCustomTileOverlayProviderData *)rateCopy forceNativeDisplayRate];
      if (runLoopController->var0)
      {
        v17 = runLoopController->var0 + 40960;
        if (var1 >= v10)
        {
          v18 = v10;
        }

        else
        {
          v18 = var1;
        }

        if (var1 == -1)
        {
          v18 = v10;
        }

        *(runLoopController->var0 + 5249) = v18;
        *(v17 + 1145) = forceNativeDisplayRate2;
        runLoopController->var1 = v18;
        md::RunLoopController::_updateDisplayRate(runLoopController, v14, v15, v16);
      }

      var0 = self->_runLoopController->var0;
      if (var0)
      {
        md::MapEngine::setNeedsLayoutContinuously(var0, 1, 1u);
        v20 = self->_runLoopController->var0;
        if (v20)
        {
          v23 = 1;
          md::MapEngine::setNeedsTick(v20, &v23);
        }
      }
    }

    else
    {
      v21 = self->_runLoopController->var0;
      if (v21)
      {
        md::MapEngine::setNeedsLayoutContinuously(v21, 0, 1u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_customTileProviderLock._lock);
}

- (void)customTileOverlayNeedsInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  cntrl = self->_standardContainer.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      ptr = self->_standardContainer.__ptr_;
      if (ptr)
      {
        md::OverlayContainer::invalidate(ptr, self);
      }
    }

    v7 = self->_standardContainer.__cntrl_;
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
  }
}

- (void)customTileOverlayDidChangeAlpha:(id)alpha
{
  alphaCopy = alpha;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  if (self->_customTileProvider == alphaCopy)
  {
    ptr = self->_customStyle.__ptr_;
    [(VKCustomTileOverlayProviderData *)alphaCopy alpha];
    *&v5 = v5;
    *ptr = LODWORD(v5);
    runLoopController = self->_runLoopController;
    if (runLoopController)
    {
      var0 = runLoopController->var0;
      if (runLoopController->var0)
      {
        v9 = 1;
        md::MapEngine::setNeedsTick(var0, &v9);
      }
    }
  }

  os_unfair_lock_unlock(&self->_customTileProviderLock._lock);
}

- (void)customTileOverlayNeedsDisplay:(id)display
{
  displayCopy = display;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  customTileProvider = self->_customTileProvider;

  if (customTileProvider == displayCopy)
  {
    runLoopController = self->_runLoopController;
    if (runLoopController)
    {
      var0 = runLoopController->var0;
      if (runLoopController->var0)
      {
        v8 = 1;
        md::MapEngine::setNeedsTick(var0, &v8);
      }
    }
  }

  os_unfair_lock_unlock(&self->_customTileProviderLock._lock);
}

- (void)rasterTileOverlayNeedsInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  cntrl = self->_standardContainer.__cntrl_;
  if (cntrl)
  {
    v5 = std::__shared_weak_count::lock(cntrl);
    if (v5)
    {
      ptr = self->_standardContainer.__ptr_;
      if (ptr)
      {
        md::OverlayContainer::invalidate(ptr, self);
      }
    }

    v7 = self->_standardContainer.__cntrl_;
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
  }
}

- (void)rasterTileOverlayDidChangeAlpha:(id)alpha
{
  alphaCopy = alpha;
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  if (self->_rasterTileProvider == alphaCopy)
  {
    ptr = self->_rasterStyle.__ptr_;
    [(VKRasterTileOverlayProviderData *)alphaCopy alpha];
    *&v5 = v5;
    *ptr = LODWORD(v5);
    runLoopController = self->_runLoopController;
    if (runLoopController)
    {
      var0 = runLoopController->var0;
      if (runLoopController->var0)
      {
        v9 = 1;
        md::MapEngine::setNeedsTick(var0, &v9);
      }
    }
  }

  os_unfair_lock_unlock(&self->_rasterTileProviderLock._lock);
}

- (void)rasterTileOverlayNeedsDisplay:(id)display
{
  displayCopy = display;
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  rasterTileProvider = self->_rasterTileProvider;

  if (rasterTileProvider == displayCopy)
  {
    runLoopController = self->_runLoopController;
    if (runLoopController)
    {
      var0 = runLoopController->var0;
      if (runLoopController->var0)
      {
        v8 = 1;
        md::MapEngine::setNeedsTick(var0, &v8);
      }
    }
  }

  os_unfair_lock_unlock(&self->_rasterTileProviderLock._lock);
}

- (void)vectorOverlayNeedsDisplay:(id)display needsFullInvalidate:(BOOL)invalidate
{
  invalidateCopy = invalidate;
  displayCopy = display;
  os_unfair_lock_lock(&self->_vectorDataLock._lock);
  vectorData = self->_vectorData;

  if (vectorData == displayCopy)
  {
    if (invalidateCopy)
    {
      cntrl = self->_standardContainer.__cntrl_;
      if (cntrl)
      {
        v9 = std::__shared_weak_count::lock(cntrl);
        if (v9)
        {
          ptr = self->_standardContainer.__ptr_;
          if (ptr)
          {
            md::OverlayContainer::invalidate(ptr, self);
          }
        }

        v13 = self->_standardContainer.__cntrl_;
        self->_standardContainer.__ptr_ = 0;
        self->_standardContainer.__cntrl_ = 0;
        if (v13)
        {
          std::__shared_weak_count::__release_weak(v13);
        }

        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }
      }

      else
      {
        self->_standardContainer.__ptr_ = 0;
        self->_standardContainer.__cntrl_ = 0;
      }
    }

    else
    {
      runLoopController = self->_runLoopController;
      if (runLoopController)
      {
        var0 = runLoopController->var0;
        if (runLoopController->var0)
        {
          v14 = 1;
          md::MapEngine::setNeedsTick(var0, &v14);
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_vectorDataLock._lock);
}

- (void)setStandardContainer:(weak_ptr<md::OverlayContainer>)container
{
  v4 = *container.__ptr_;
  v3 = *(container.__ptr_ + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_standardContainer.__cntrl_;
  self->_standardContainer.__ptr_ = v4;
  self->_standardContainer.__cntrl_ = v3;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }
}

- (weak_ptr<md::OverlayContainer>)standardContainer
{
  cntrl = self->_standardContainer.__cntrl_;
  *v2 = self->_standardContainer.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 2, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setNeedsDisplayForReason:(unint64_t)reason
{
  vectorData = [(VKOverlay *)self vectorData];
  rasterTileProvider = [(VKOverlay *)self rasterTileProvider];
  customTileProvider = [(VKOverlay *)self customTileProvider];
  [(VKOverlay *)self _updateVectorData];
  [(VKOverlay *)self _updateRasterTileProvider];
  [(VKOverlay *)self _updateCustomTileProvider];
  vectorData2 = [(VKOverlay *)self vectorData];
  rasterTileProvider2 = [(VKOverlay *)self rasterTileProvider];
  customTileProvider2 = [(VKOverlay *)self customTileProvider];
  if (reason == 2)
  {
    if (vectorData2 && vectorData2 == vectorData || rasterTileProvider2 && rasterTileProvider2 == rasterTileProvider)
    {
      v9 = customTileProvider;
      v10 = 1;
    }

    else
    {
      v9 = customTileProvider;
      if (customTileProvider2)
      {
        v17 = customTileProvider2 == customTileProvider;
      }

      else
      {
        v17 = 0;
      }

      v10 = v17;
    }
  }

  else
  {
    v9 = customTileProvider;
    v10 = 0;
  }

  cntrl = self->_standardContainer.__cntrl_;
  if (!cntrl)
  {
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
    goto LABEL_22;
  }

  v12 = std::__shared_weak_count::lock(cntrl);
  if (v12)
  {
    ptr = self->_standardContainer.__ptr_;
    if (ptr)
    {
      if (!v10 || (runLoopController = self->_runLoopController) == 0)
      {
        md::OverlayContainer::invalidate(ptr, self);
      }

      var0 = runLoopController->var0;
      if (runLoopController->var0)
      {
        v20 = 7;
        md::MapEngine::setNeedsTick(var0, &v20);
      }

LABEL_21:
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      goto LABEL_22;
    }
  }

  v16 = self->_standardContainer.__cntrl_;
  self->_standardContainer.__ptr_ = 0;
  self->_standardContainer.__cntrl_ = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v12)
  {
    goto LABEL_21;
  }

LABEL_22:
}

- (void)_updateCustomTileProvider
{
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  [(VKCustomTileOverlayProviderData *)self->_customTileProvider setDelegate:0];
  customTileProvider = self->_customTileProvider;
  self->_customTileProvider = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained overlayCanProvideCustomTileData:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 customTileProviderForOverlay:self];
    v8 = self->_customTileProvider;
    self->_customTileProvider = v7;

    [(VKCustomTileOverlayProviderData *)self->_customTileProvider setDelegate:self];
  }

  v9 = self->_customTileProvider;
  ptr = self->_customStyle.__ptr_;
  if (v9)
  {
    [(VKCustomTileOverlayProviderData *)v9 alpha];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  *ptr = v12;

  os_unfair_lock_unlock(&self->_customTileProviderLock._lock);
}

- (id)customTileProvider
{
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  v3 = self->_customTileProvider;
  os_unfair_lock_unlock(&self->_customTileProviderLock._lock);

  return v3;
}

- (void)_updateRasterTileProvider
{
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  [(VKRasterTileOverlayProviderData *)self->_rasterTileProvider setDelegate:0];
  rasterTileProvider = self->_rasterTileProvider;
  self->_rasterTileProvider = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained overlayCanProvideRasterTileData:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [v6 rasterTileProviderForOverlay:self];
    v8 = self->_rasterTileProvider;
    self->_rasterTileProvider = v7;

    [(VKRasterTileOverlayProviderData *)self->_rasterTileProvider setDelegate:self];
  }

  v9 = self->_rasterTileProvider;
  ptr = self->_rasterStyle.__ptr_;
  if (v9)
  {
    [(VKRasterTileOverlayProviderData *)v9 alpha];
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  *ptr = v12;

  os_unfair_lock_unlock(&self->_rasterTileProviderLock._lock);
}

- (id)rasterTileProvider
{
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  v3 = self->_rasterTileProvider;
  os_unfair_lock_unlock(&self->_rasterTileProviderLock._lock);

  return v3;
}

- (void)_updateVectorData
{
  os_unfair_lock_lock(&self->_vectorDataLock._lock);
  delegate = [(VKOverlay *)self delegate];
  if ([delegate overlayCanProvideVectorData:self])
  {
    v4 = !self->_forceRasterizationForGlobe;
  }

  else
  {
    v4 = 0;
  }

  self->_canProvideVectorData = v4;
  [(VKVectorOverlayData *)self->_vectorData _setDelegate:0];
  vectorData = self->_vectorData;
  self->_vectorData = 0;

  if (self->_canProvideVectorData)
  {
    v6 = [delegate vectorDataForOverlay:self];
    v7 = self->_vectorData;
    self->_vectorData = v6;

    [(VKVectorOverlayData *)self->_vectorData _setDelegate:self];
    [(VKVectorOverlayData *)self->_vectorData setBlendMode:self->_blendMode];
  }

  os_unfair_lock_unlock(&self->_vectorDataLock._lock);
}

- (id)vectorData
{
  os_unfair_lock_lock(&self->_vectorDataLock._lock);
  v3 = self->_vectorData;
  os_unfair_lock_unlock(&self->_vectorDataLock._lock);

  return v3;
}

- (void)drawKey:(id *)key withData:(id)data inTexture:(id)texture withTimestamp:(double)timestamp withTileScale:(float)scale
{
  dataCopy = data;
  textureCopy = texture;
  delegate = [(VKOverlay *)self delegate];
  *&v14 = scale;
  [delegate overlay:self drawKey:key withData:dataCopy inTexture:textureCopy withTimestamp:timestamp withTileScale:v14];
}

- (void)drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp withTileScale:(float)scale
{
  dataCopy = data;
  delegate = [(VKOverlay *)self delegate];
  *&v13 = scale;
  [delegate overlay:self drawKey:key withData:dataCopy inIOSurface:surface withTimestamp:timestamp withTileScale:v13];
}

- (void)drawKey:(id *)key withData:(id)data inIOSurface:(__IOSurface *)surface withTimestamp:(double)timestamp
{
  dataCopy = data;
  delegate = [(VKOverlay *)self delegate];
  [delegate overlay:self drawKey:key withData:dataCopy inIOSurface:surface withTimestamp:timestamp];
}

- (void)drawKey:(id *)key inContext:(CGContext *)context
{
  delegate = [(VKOverlay *)self delegate];
  [delegate overlay:self drawKey:key inContext:context];
}

- (void)onVisibleTiles:(id)tiles
{
  tilesCopy = tiles;
  delegate = [(VKOverlay *)self delegate];
  [delegate overlay:self onVisibleTiles:tilesCopy];
}

- (void)didEnterKey:(id *)key withFallback:(BOOL)fallback
{
  fallbackCopy = fallback;
  delegate = [(VKOverlay *)self delegate];
  [delegate overlay:self didEnterKey:key withFallback:fallbackCopy];
}

- (void)didExitKey:(id *)key
{
  delegate = [(VKOverlay *)self delegate];
  [delegate overlay:self didExitKey:key];
}

- (BOOL)canDrawKey:(id *)key withData:(id)data
{
  dataCopy = data;
  delegate = [(VKOverlay *)self delegate];
  LOBYTE(key) = [delegate overlay:self canDrawKey:key withData:dataCopy];

  return key;
}

- (unint64_t)estimatedCostForCustomTileData:(id)data
{
  dataCopy = data;
  delegate = [(VKOverlay *)self delegate];
  v6 = [delegate overlay:self estimatedCostForCustomTileData:dataCopy];

  return v6;
}

- (unsigned)anisotropy
{
  delegate = [(VKOverlay *)self delegate];
  v4 = [delegate anisotropy:self];

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v5 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v5;
  }
}

- (BOOL)shouldUseMetalTexture
{
  selfCopy = self;
  delegate = [(VKOverlay *)self delegate];
  LOBYTE(selfCopy) = [delegate shouldUseMetalTexture:selfCopy];

  return selfCopy;
}

- (BOOL)areResourcesRequired
{
  selfCopy = self;
  delegate = [(VKOverlay *)self delegate];
  LOBYTE(selfCopy) = [delegate areOverlayResourcesRequired:selfCopy];

  return selfCopy;
}

- (BOOL)canDrawKey:(id *)key
{
  delegate = [(VKOverlay *)self delegate];
  LOBYTE(key) = [delegate overlay:self canDrawKey:key];

  return key;
}

- (BOOL)canPossiblyDrawKey:(id *)key
{
  delegate = [(VKOverlay *)self delegate];
  LOBYTE(key) = [delegate overlay:self canPossiblyDrawKey:key];

  return key;
}

- (void)setNeedsDisplayInRect:(id *)rect level:(int64_t)level reason:(unint64_t)reason
{
  cntrl = self->_standardContainer.__cntrl_;
  if (cntrl)
  {
    v7 = std::__shared_weak_count::lock(cntrl);
    if (v7 && self->_standardContainer.__ptr_)
    {
      selfCopy = self;
      operator new();
    }

    v9 = self->_standardContainer.__cntrl_;
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v7);
    }
  }

  else
  {
    self->_standardContainer.__ptr_ = 0;
    self->_standardContainer.__cntrl_ = 0;
  }
}

- (void)setForceRasterizationForGlobe:(BOOL)globe
{
  if (self->_forceRasterizationForGlobe != globe)
  {
    self->_forceRasterizationForGlobe = globe;
    if (globe && self->_canProvideVectorData)
    {
      [(VKOverlay *)self _updateVectorData];
    }
  }
}

- (void)setBlendMode:(int64_t)mode
{
  blendMode = self->_blendMode;
  if (blendMode != mode)
  {
    self->_blendMode = mode;
    if ((mode - 1) < 0x11)
    {
      modeCopy = mode;
    }

    else
    {
      modeCopy = 0;
    }

    *(self->_rasterStyle.__ptr_ + 1) = modeCopy;
    *(self->_customStyle.__ptr_ + 1) = modeCopy;
    [(VKVectorOverlayData *)self->_vectorData setBlendMode:?];
    if (blendMode)
    {
      runLoopController = self->_runLoopController;
      if (runLoopController)
      {
        var0 = runLoopController->var0;
        if (runLoopController->var0)
        {
          v12 = 1;
          md::MapEngine::setNeedsTick(var0, &v12);
        }
      }
    }

    else
    {
      [(VKOverlay *)self _updateVectorData];
      cntrl = self->_standardContainer.__cntrl_;
      if (cntrl)
      {
        v9 = std::__shared_weak_count::lock(cntrl);
        if (v9)
        {
          ptr = self->_standardContainer.__ptr_;
          if (ptr)
          {
            md::OverlayContainer::invalidate(ptr, self);
          }
        }

        v11 = self->_standardContainer.__cntrl_;
        self->_standardContainer.__ptr_ = 0;
        self->_standardContainer.__cntrl_ = 0;
        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v9)
        {

          std::__shared_weak_count::__release_shared[abi:nn200100](v9);
        }
      }

      else
      {
        self->_standardContainer.__ptr_ = 0;
        self->_standardContainer.__cntrl_ = 0;
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  [(VKOverlay *)self _updateVectorData];
  [(VKOverlay *)self _updateRasterTileProvider];

  [(VKOverlay *)self _updateCustomTileProvider];
}

- (VKOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(VKVectorOverlayData *)self->_vectorData _setDelegate:0];
  v3.receiver = self;
  v3.super_class = VKOverlay;
  [(VKOverlay *)&v3 dealloc];
}

- (VKOverlay)init
{
  v5.receiver = self;
  v5.super_class = VKOverlay;
  v2 = [(VKOverlay *)&v5 init];
  if (v2)
  {
    v3 = *(MEMORY[0x1E69A1680] + 16);
    *(v2 + 24) = *MEMORY[0x1E69A1680];
    *(v2 + 40) = v3;
    *(v2 + 51) = atomic_fetch_add(_overlaysCounter, 1u);
    operator new();
  }

  return 0;
}

@end