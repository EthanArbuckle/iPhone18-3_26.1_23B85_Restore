@interface VKOverlay
- ($C9B3965AAA5284750DDDB08D9AABF973)replaceMapContentInRect;
- (BOOL)areResourcesRequired;
- (BOOL)canDrawKey:(id *)a3;
- (BOOL)canDrawKey:(id *)a3 withData:(id)a4;
- (BOOL)canPossiblyDrawKey:(id *)a3;
- (BOOL)shouldUseMetalTexture;
- (VKOverlay)init;
- (VKOverlayDelegate)delegate;
- (id).cxx_construct;
- (id)customTileProvider;
- (id)rasterTileProvider;
- (id)vectorData;
- (shared_ptr<md::RasterTileOverlayStyle>)customStyle;
- (shared_ptr<md::RasterTileOverlayStyle>)rasterStyle;
- (unint64_t)estimatedCostForCustomTileData:(id)a3;
- (unsigned)anisotropy;
- (void)_updateCustomTileProvider;
- (void)_updateRasterTileProvider;
- (void)_updateVectorData;
- (void)customTileOverlayDidChangeAlpha:(id)a3;
- (void)customTileOverlayDidChangeDisplayRate:(id)a3;
- (void)customTileOverlayNeedsDisplay:(id)a3;
- (void)customTileOverlayNeedsInvalidate:(id)a3;
- (void)dealloc;
- (void)didEnterKey:(id *)a3 withFallback:(BOOL)a4;
- (void)didExitKey:(id *)a3;
- (void)drawKey:(id *)a3 inContext:(CGContext *)a4;
- (void)drawKey:(id *)a3 withData:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6;
- (void)drawKey:(id *)a3 withData:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6 withTileScale:(float)a7;
- (void)drawKey:(id *)a3 withData:(id)a4 inTexture:(id)a5 withTimestamp:(double)a6 withTileScale:(float)a7;
- (void)onVisibleTiles:(id)a3;
- (void)rasterTileOverlayDidChangeAlpha:(id)a3;
- (void)rasterTileOverlayNeedsDisplay:(id)a3;
- (void)rasterTileOverlayNeedsInvalidate:(id)a3;
- (void)setBlendMode:(int64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setForceRasterizationForGlobe:(BOOL)a3;
- (void)setNeedsDisplayForReason:(unint64_t)a3;
- (void)setNeedsDisplayInRect:(id *)a3 level:(int64_t)a4 reason:(unint64_t)a5;
- (void)setStandardContainer:(weak_ptr<md::OverlayContainer>)a3;
- (void)vectorOverlayNeedsDisplay:(id)a3 needsFullInvalidate:(BOOL)a4;
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

- (void)customTileOverlayDidChangeDisplayRate:(id)a3
{
  v22 = a3;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  if (self->_customTileProvider == v22 && self->_runLoopController)
  {
    v4 = [(VKCustomTileOverlayProviderData *)v22 desiredDisplayRate];
    if (v4 || [(VKCustomTileOverlayProviderData *)v22 forceContinuousLayout]|| [(VKCustomTileOverlayProviderData *)v22 forceNativeDisplayRate])
    {
      v5 = [(VKCustomTileOverlayProviderData *)v22 forceNativeDisplayRate];
      v6 = 60;
      if ((v4 - 20) < 0xA)
      {
        v6 = 20;
      }

      if ((v4 - 15) >= 5)
      {
        v7 = v6;
      }

      else
      {
        v7 = 15;
      }

      if ((v4 - 5) >= 0xA)
      {
        v8 = v7;
      }

      else
      {
        v8 = 5;
      }

      if ((v4 - 1) >= 4)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1;
      }

      if (v5)
      {
        v10 = -1;
      }

      else
      {
        v10 = v9;
      }

      runLoopController = self->_runLoopController;
      var1 = runLoopController->var1;
      v13 = [(VKCustomTileOverlayProviderData *)v22 forceNativeDisplayRate];
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
        *(v17 + 1145) = v13;
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

- (void)customTileOverlayNeedsInvalidate:(id)a3
{
  v8 = a3;
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

- (void)customTileOverlayDidChangeAlpha:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  if (self->_customTileProvider == v8)
  {
    ptr = self->_customStyle.__ptr_;
    [(VKCustomTileOverlayProviderData *)v8 alpha];
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

- (void)customTileOverlayNeedsDisplay:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_customTileProviderLock._lock);
  customTileProvider = self->_customTileProvider;

  if (customTileProvider == v4)
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

- (void)rasterTileOverlayNeedsInvalidate:(id)a3
{
  v8 = a3;
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

- (void)rasterTileOverlayDidChangeAlpha:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  if (self->_rasterTileProvider == v8)
  {
    ptr = self->_rasterStyle.__ptr_;
    [(VKRasterTileOverlayProviderData *)v8 alpha];
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

- (void)rasterTileOverlayNeedsDisplay:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_rasterTileProviderLock._lock);
  rasterTileProvider = self->_rasterTileProvider;

  if (rasterTileProvider == v4)
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

- (void)vectorOverlayNeedsDisplay:(id)a3 needsFullInvalidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_vectorDataLock._lock);
  vectorData = self->_vectorData;

  if (vectorData == v6)
  {
    if (v4)
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

- (void)setStandardContainer:(weak_ptr<md::OverlayContainer>)a3
{
  v4 = *a3.__ptr_;
  v3 = *(a3.__ptr_ + 1);
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

- (void)setNeedsDisplayForReason:(unint64_t)a3
{
  v19 = [(VKOverlay *)self vectorData];
  v5 = [(VKOverlay *)self rasterTileProvider];
  v6 = [(VKOverlay *)self customTileProvider];
  [(VKOverlay *)self _updateVectorData];
  [(VKOverlay *)self _updateRasterTileProvider];
  [(VKOverlay *)self _updateCustomTileProvider];
  v7 = [(VKOverlay *)self vectorData];
  v18 = [(VKOverlay *)self rasterTileProvider];
  v8 = [(VKOverlay *)self customTileProvider];
  if (a3 == 2)
  {
    if (v7 && v7 == v19 || v18 && v18 == v5)
    {
      v9 = v6;
      v10 = 1;
    }

    else
    {
      v9 = v6;
      if (v8)
      {
        v17 = v8 == v6;
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
    v9 = v6;
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
  v3 = [(VKOverlay *)self delegate];
  if ([v3 overlayCanProvideVectorData:self])
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
    v6 = [v3 vectorDataForOverlay:self];
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

- (void)drawKey:(id *)a3 withData:(id)a4 inTexture:(id)a5 withTimestamp:(double)a6 withTileScale:(float)a7
{
  v15 = a4;
  v12 = a5;
  v13 = [(VKOverlay *)self delegate];
  *&v14 = a7;
  [v13 overlay:self drawKey:a3 withData:v15 inTexture:v12 withTimestamp:a6 withTileScale:v14];
}

- (void)drawKey:(id *)a3 withData:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6 withTileScale:(float)a7
{
  v14 = a4;
  v12 = [(VKOverlay *)self delegate];
  *&v13 = a7;
  [v12 overlay:self drawKey:a3 withData:v14 inIOSurface:a5 withTimestamp:a6 withTileScale:v13];
}

- (void)drawKey:(id *)a3 withData:(id)a4 inIOSurface:(__IOSurface *)a5 withTimestamp:(double)a6
{
  v11 = a4;
  v10 = [(VKOverlay *)self delegate];
  [v10 overlay:self drawKey:a3 withData:v11 inIOSurface:a5 withTimestamp:a6];
}

- (void)drawKey:(id *)a3 inContext:(CGContext *)a4
{
  v7 = [(VKOverlay *)self delegate];
  [v7 overlay:self drawKey:a3 inContext:a4];
}

- (void)onVisibleTiles:(id)a3
{
  v5 = a3;
  v4 = [(VKOverlay *)self delegate];
  [v4 overlay:self onVisibleTiles:v5];
}

- (void)didEnterKey:(id *)a3 withFallback:(BOOL)a4
{
  v4 = a4;
  v7 = [(VKOverlay *)self delegate];
  [v7 overlay:self didEnterKey:a3 withFallback:v4];
}

- (void)didExitKey:(id *)a3
{
  v5 = [(VKOverlay *)self delegate];
  [v5 overlay:self didExitKey:a3];
}

- (BOOL)canDrawKey:(id *)a3 withData:(id)a4
{
  v6 = a4;
  v7 = [(VKOverlay *)self delegate];
  LOBYTE(a3) = [v7 overlay:self canDrawKey:a3 withData:v6];

  return a3;
}

- (unint64_t)estimatedCostForCustomTileData:(id)a3
{
  v4 = a3;
  v5 = [(VKOverlay *)self delegate];
  v6 = [v5 overlay:self estimatedCostForCustomTileData:v4];

  return v6;
}

- (unsigned)anisotropy
{
  v3 = [(VKOverlay *)self delegate];
  v4 = [v3 anisotropy:self];

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
  v2 = self;
  v3 = [(VKOverlay *)self delegate];
  LOBYTE(v2) = [v3 shouldUseMetalTexture:v2];

  return v2;
}

- (BOOL)areResourcesRequired
{
  v2 = self;
  v3 = [(VKOverlay *)self delegate];
  LOBYTE(v2) = [v3 areOverlayResourcesRequired:v2];

  return v2;
}

- (BOOL)canDrawKey:(id *)a3
{
  v5 = [(VKOverlay *)self delegate];
  LOBYTE(a3) = [v5 overlay:self canDrawKey:a3];

  return a3;
}

- (BOOL)canPossiblyDrawKey:(id *)a3
{
  v5 = [(VKOverlay *)self delegate];
  LOBYTE(a3) = [v5 overlay:self canPossiblyDrawKey:a3];

  return a3;
}

- (void)setNeedsDisplayInRect:(id *)a3 level:(int64_t)a4 reason:(unint64_t)a5
{
  cntrl = self->_standardContainer.__cntrl_;
  if (cntrl)
  {
    v7 = std::__shared_weak_count::lock(cntrl);
    if (v7 && self->_standardContainer.__ptr_)
    {
      v8 = self;
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

- (void)setForceRasterizationForGlobe:(BOOL)a3
{
  if (self->_forceRasterizationForGlobe != a3)
  {
    self->_forceRasterizationForGlobe = a3;
    if (a3 && self->_canProvideVectorData)
    {
      [(VKOverlay *)self _updateVectorData];
    }
  }
}

- (void)setBlendMode:(int64_t)a3
{
  blendMode = self->_blendMode;
  if (blendMode != a3)
  {
    self->_blendMode = a3;
    if ((a3 - 1) < 0x11)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    *(self->_rasterStyle.__ptr_ + 1) = v5;
    *(self->_customStyle.__ptr_ + 1) = v5;
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

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);
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