@interface MDDisplayLayer
- (BOOL)hasRenderTarget;
- (BOOL)insertDisplayLayer:(id)layer;
- (BOOL)isDelayedRenderQueueConsumptionSupported;
- (CALayer)layer;
- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer;
- (CGRect)bounds;
- (CGSize)size;
- (CGSize)sizeInPixels;
- (GGLRenderQueueSource)renderSource;
- (MDDisplayLayer)initWithContentScale:(double)scale useMultisampling:(BOOL)multisampling extraColorFormats:(const void *)formats shouldRasterize:(BOOL)rasterize allowBlitToDrawable:(BOOL)drawable taskContext:(const void *)context device:(void *)device sharedResources:(id)self0 services:(void *)self1 signpostId:(unint64_t)self2;
- (id).cxx_construct;
- (id)drawInContext:registry:;
- (shared_ptr<ggl::BitmapDataBase>)bitmapData;
- (void)_didReadPixels:(void *)pixels;
- (void)_notifyObserversSizeChanged:(CGSize)changed;
- (void)_prepareTexture:(const void *)texture isDrawable:(BOOL)drawable;
- (void)createRenderTarget;
- (void)dealloc;
- (void)debugConsoleForId:(int)id;
- (void)destroyRenderTarget;
- (void)didUpdateFrameTexture;
- (void)drawInContext:(CGContext *)context registry:(void *)registry;
- (void)drawInContext:registry:;
- (void)expandedPerformanceHUD:(id)d;
- (void)prepareTargetsForPlatormsWithFramebufferFetch:(const void *)fetch;
- (void)prepareTargetsForPlatormsWithoutFramebufferFetch:(const void *)fetch isDrawable:(BOOL)drawable;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setBounds:(CGRect)bounds;
- (void)setContentScale:(double)scale;
- (void)setContentsGravity:(id)gravity;
- (void)setNeedsDisplayOnBoundsChange:(BOOL)change;
- (void)setOpaque:(BOOL)opaque;
- (void)setSize:(CGSize)size;
- (void)willPresent;
- (void)willUpdateFrameTexture;
@end

@implementation MDDisplayLayer

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 9) = 0;
  *(self + 8) = 0u;
  *(self + 24) = 0u;
  *(self + 40) = 0u;
  *(self + 11) = &unk_1F2A59028;
  *(self + 12) = 0;
  *(self + 7) = 0u;
  *(self + 8) = 0u;
  *(self + 20) = 850045863;
  *(self + 184) = 0u;
  *(self + 200) = 0u;
  *(self + 216) = 0u;
  *(self + 232) = 0u;
  *(self + 248) = 0u;
  *(self + 59) = 0;
  *(self + 168) = 0u;
  *(self + 264) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 376) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  return self;
}

- (CGSize)size
{
  v2 = *(self + 66);
  v3 = *(self + 67);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)createRenderTarget
{
  layer = [(MDDisplayLayer *)self layer];

  if (!layer)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v4 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "MDDisplayLayer creating new render layer", buf, 2u);
    }

    if (!**(self + 18))
    {
      operator new();
    }

    v5 = *(self + 2);
    *(self + 8) = 0uLL;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    v6 = *(self + 18);
    if (!*v6)
    {
      v7 = *(v6 + 16);
      *buf = *(v6 + 8);
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(self + 2);
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = +[VKPlatform sharedPlatform];
      [v9 explicitDefaultRefreshRate];

      operator new();
    }

    v10 = *(self + 4);
    *(self + 24) = 0uLL;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
    }
  }
}

- (CALayer)layer
{
  v2 = *(self + 1);
  if (v2)
  {
    return *(v2 + 8);
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasRenderTarget
{
  layer = [(MDDisplayLayer *)self layer];
  v3 = layer != 0;

  return v3;
}

- (CGSize)sizeInPixels
{
  v2 = *(self + 68);
  v3 = v2 * *(self + 66);
  v4 = *(self + 67) * v2;
  result.height = v4;
  result.width = v3;
  return result;
}

- (GGLRenderQueueSource)renderSource
{
  WeakRetained = objc_loadWeakRetained(self + 7);

  return WeakRetained;
}

- (void)debugConsoleForId:(int)id
{
  std::mutex::lock((self + 160));
  v5 = *(self + 28);
  if (!v5)
  {
    operator new();
  }

  v6 = md::DebugConsoleManager::console(v5, id);
  std::mutex::unlock((self + 160));
  return v6;
}

- (CGPoint)convertPoint:(CGPoint)point toLayer:(id)layer
{
  y = point.y;
  x = point.x;
  layerCopy = layer;
  layer = [(MDDisplayLayer *)self layer];
  [layer convertPoint:layerCopy toLayer:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result.y = v14;
  result.x = v13;
  return result;
}

- (void)destroyRenderTarget
{
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "MDDisplayLayer destroying render layer", v7, 2u);
  }

  v4 = *(self + 4);
  *(self + 3) = 0;
  *(self + 4) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  layer = [(MDDisplayLayer *)self layer];
  [layer removeFromSuperlayer];

  v6 = *(self + 2);
  *(self + 1) = 0;
  *(self + 2) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

- (BOOL)insertDisplayLayer:(id)layer
{
  layerCopy = layer;
  layer = [(MDDisplayLayer *)self layer];

  if (layer && ([layerCopy sublayers], v6 = objc_claimAutoreleasedReturnValue(), -[MDDisplayLayer layer](self, "layer"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, (v8 & 1) == 0))
  {
    layer2 = [(MDDisplayLayer *)self layer];
    [layerCopy insertSublayer:layer2 atIndex:0];

    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = *(self + 66);
  v9 = *(self + 67);
  *(self + 64) = x;
  *(self + 65) = y;
  *(self + 66) = *&bounds.size.width;
  *(self + 67) = *&bounds.size.height;
  if (v8 != bounds.size.width || v9 != bounds.size.height)
  {
    [(MDDisplayLayer *)self _notifyObserversSizeChanged:bounds.size.width, bounds.size.height];
    x = *(self + 64);
    y = *(self + 65);
    width = *(self + 66);
    height = *(self + 67);
  }

  layer = [(MDDisplayLayer *)self layer];
  [layer setFrame:{x, y, width, height}];

  MidX = CGRectGetMidX(*(self + 16));
  MidY = CGRectGetMidY(*(self + 16));
  layer2 = [(MDDisplayLayer *)self layer];
  [layer2 setPosition:{MidX, MidY}];
}

- (CGRect)bounds
{
  v2 = *(self + 64);
  v3 = *(self + 65);
  v4 = *(self + 66);
  v5 = *(self + 67);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setContentScale:(double)scale
{
  *(self + 68) = scale;
  layer = [(MDDisplayLayer *)self layer];
  [layer setContentsScale:scale];

  v6.n128_u64[0] = *(self + 68);
  v6.n128_f32[0] = v6.n128_f64[0];
  v7 = *(**(self + 19) + 40);

  v7(v6);
}

- (void)setSize:(CGSize)size
{
  *(self + 66) = *&size.width;
  *(self + 67) = *&size.height;
  [(MDDisplayLayer *)self setBounds:*(self + 64), *(self + 65), size.width, size.height];
}

- (shared_ptr<ggl::BitmapDataBase>)bitmapData
{
  v4 = v2;
  [(MDDisplayLayer *)self multiSample];
  [(MDDisplayLayer *)self finalRenderTarget];
  v5 = (*(**(self + 19) + 24))(&v7);
  *v4 = v7;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)_didReadPixels:(void *)pixels
{
  if (*(self + 62))
  {
    v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    v6 = (*(**pixels + 16))();
    v7 = CGDataProviderCreateWithData(0, v6, 4 * *(*pixels + 24) * *(*pixels + 32), 0);
    v8 = CGImageCreate(*(*pixels + 24), *(*pixels + 32), 8uLL, 0x20uLL, 4 * *(*pixels + 24), v5, 0x4001u, v7, 0, 0, kCGRenderingIntentDefault);
    CGContextSaveGState(*(self + 62));
    CGContextSetBlendMode(*(self + 62), kCGBlendModeCopy);
    v10.origin.x = *(self + 64);
    v10.origin.y = *(self + 65);
    v10.size.width = *(self + 66);
    v10.size.height = *(self + 67);
    CGContextDrawImage(*(self + 62), v10, v8);
    CGContextRestoreGState(*(self + 62));
    CGColorSpaceRelease(v5);
    CGImageRelease(v8);

    CGDataProviderRelease(v7);
  }
}

- (void)drawInContext:(CGContext *)context registry:(void *)registry
{
  if (context)
  {
    v6 = *(self + 62);
    if (v6)
    {
      CGContextRelease(v6);
    }

    *(self + 62) = CGContextRetain(context);
    layer = [(MDDisplayLayer *)self layer];
    [layer bounds];
    v9 = v8;
    v11 = v10;

    layer2 = [(MDDisplayLayer *)self layer];
    [layer2 contentsScale];
    v14 = v13;

    v15 = v14 * v11;
    if (v14 * v9 >= 1.0 && v15 >= 1.0)
    {
      operator new();
    }

    CGContextRelease(*(self + 62));
    *(self + 62) = 0;
  }
}

- (void)drawInContext:registry:
{

  JUMPOUT(0x1B8C62190);
}

- (id)drawInContext:registry:
{
  *a2 = &unk_1F2A343C8;
  result = *(self + 8);
  a2[1] = result;
  return result;
}

- (void)setBackgroundColor:(CGColor *)color
{
  layer = [(MDDisplayLayer *)self layer];
  [layer setBackgroundColor:color];
}

- (void)setContentsGravity:(id)gravity
{
  gravityCopy = gravity;
  layer = [(MDDisplayLayer *)self layer];
  [layer setContentsGravity:gravityCopy];
}

- (void)setOpaque:(BOOL)opaque
{
  opaqueCopy = opaque;
  layer = [(MDDisplayLayer *)self layer];
  [layer setOpaque:opaqueCopy];
}

- (void)setNeedsDisplayOnBoundsChange:(BOOL)change
{
  changeCopy = change;
  layer = [(MDDisplayLayer *)self layer];
  [layer setNeedsDisplayOnBoundsChange:changeCopy];
}

- (void)expandedPerformanceHUD:(id)d
{
  name = [d name];
  ggl::Performance::setExpandedMode([name isEqualToString:@"VKExtendedPeformanceHUD"]);
}

- (void)willPresent
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v3 = GEOGetVectorKitPerformanceLog_log;
  v4 = v3;
  v5 = *(self + 69);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Present", &unk_1B3514CAA, v6, 2u);
  }
}

- (void)didUpdateFrameTexture
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v3 = GEOGetVectorKitPerformanceLog_log;
  v4 = v3;
  v5 = *(self + 69);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_END, v5, "UpdateFrameTexture", &unk_1B3514CAA, v6, 2u);
  }
}

- (void)willUpdateFrameTexture
{
  if (GEOGetVectorKitPerformanceLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitPerformanceLog_onceToken, &__block_literal_global_21);
  }

  v3 = GEOGetVectorKitPerformanceLog_log;
  v4 = v3;
  v5 = *(self + 69);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B2754000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "UpdateFrameTexture", &unk_1B3514CAA, v6, 2u);
  }
}

- (BOOL)isDelayedRenderQueueConsumptionSupported
{
  WeakRetained = objc_loadWeakRetained(self + 7);
  isDelayedRenderQueueConsumptionSupported = [WeakRetained isDelayedRenderQueueConsumptionSupported];

  return isDelayedRenderQueueConsumptionSupported;
}

- (void)prepareTargetsForPlatormsWithoutFramebufferFetch:(const void *)fetch isDrawable:(BOOL)drawable
{
  if (*(self + 489))
  {
    return;
  }

  v6 = *fetch;
  if (*(*fetch + 56) > 1u)
  {
    v23 = 0;
    v7 = 0;
  }

  else
  {
    v7 = *(v6 + 80);
    v23 = *(v6 + 84);
  }

  if (!*(self + 50))
  {
    operator new();
  }

  if (*(self + 506) == 1 && (*(self + 488) & 1) == 0 && drawable)
  {
    if (!*(self + 41))
    {
      operator new();
    }

    v8 = 1;
  }

  else
  {
    std::unique_ptr<BlitPass>::reset[abi:nn200100](self + 59, 0);
    v9 = *(self + 41);
    *(self + 41) = 0;
    if (!v9)
    {
      if (*(self + 488) != 1)
      {
        goto LABEL_39;
      }

LABEL_24:
      v12 = *(self + 29);
      if (*(v12 + 184) != *fetch)
      {
        ggl::RenderTarget::setMsaaResolveBuffer(v12, 0, *fetch);
      }

      v10 = *(self + 31);
      if (!v10 || *(v10 + 20) != v7 || *(v10 + 21) != v23)
      {
        operator new();
      }

      v11 = *(self + 32);
      if (!v11)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v8 = 0;
    (*(*v9 + 8))(v9);
  }

  if (*(self + 488))
  {
    goto LABEL_24;
  }

  if (v8)
  {
    v10 = *(self + 33);
    if (!v10 || *(v10 + 20) != v7 || *(v10 + 21) != v23)
    {
      _ZNSt3__115allocate_sharedB8nn200100IN3ggl12SamplerStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v11 = *(self + 34);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    ggl::RenderTarget::setColorBuffer(*(self + 41), 0, *fetch);
    goto LABEL_32;
  }

LABEL_39:
  v10 = *fetch;
  v11 = *(fetch + 1);
  if (v11)
  {
LABEL_31:
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_32:
  v13 = *(self + 30);
  if (!v13 || *(v13 + 20) != v7 || *(v13 + 21) != v23)
  {
    operator new();
  }

  ggl::RenderTarget::setDepthStencilBuffer(*(self + 29), v13);
  ggl::RenderTarget::setDepthStencilBuffer(*(self + 50), *(self + 30));
  ggl::RenderTarget::setColorBuffer(*(self + 29), 0, v10);
  v14 = *(*(self + 50) + 88);
  if (!v14 || *(v14 + 88) != v10)
  {
    operator new();
  }

  v15 = *(self + 16);
  if (v15 >= 2)
  {
    v16 = self + 280;
    v17 = 1;
    v18 = 1;
    do
    {
      v19 = *&v16[16 * v17 - 16];
      if (!v19 || *(v19 + 80) != v7 || *(v19 + 84) != v23)
      {
        operator new();
      }

      v17 = ++v18;
    }

    while (v15 > v18);
    v20 = 1;
    v21 = 1;
    do
    {
      v22 = *(*(self + 50) + 24 * v21 + 88);
      if (!v22 || *(v22 + 88) != *&v16[16 * v21 - 16])
      {
        operator new();
      }

      v21 = ++v20;
    }

    while (v15 > v20);
  }

  if (v11)
  {

    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

- (void)prepareTargetsForPlatormsWithFramebufferFetch:(const void *)fetch
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(self + 489) == 1)
  {
    v4 = *fetch;
    if (*(v4 + 14) > 1u)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = *(v4 + 20);
      v5 = *(v4 + 21);
    }

    v7 = *(self + 488);
    v8 = *(self + 29);
    if (v7 == 1)
    {
      ggl::RenderTarget::setMsaaResolveBuffer(v8, 0, v4);
      v9 = *(self + 31);
      if (!v9 || *(v9 + 20) != v6 || *(v9 + 21) != v5)
      {
        operator new();
      }

      ggl::RenderTarget::setColorBuffer(*(self + 29), 0, v9);
    }

    else
    {
      ggl::RenderTarget::setColorBuffer(v8, 0, v4);
    }

    if (*(self + 16) >= 2uLL)
    {
      v10 = 1;
      v11 = 1;
      do
      {
        v12 = *(self + 2 * v10 + 33);
        if (!v12 || *(v12 + 20) != v6 || *(v12 + 21) != v5)
        {
          operator new();
        }

        ggl::RenderTarget::setColorBuffer(*(self + 29), v10, v12);
        v10 = ++v11;
      }

      while (*(self + 16) > v11);
    }

    v13 = *(self + 30);
    if (!v13 || *(v13 + 20) != v6 || *(v13 + 21) != v5)
    {
      operator new();
    }

    ggl::RenderTarget::setDepthStencilBuffer(*(self + 29), v13);
  }
}

- (void)_prepareTexture:(const void *)texture isDrawable:(BOOL)drawable
{
  if (!*(self + 29))
  {
    operator new();
  }

  if (*(self + 489) == 1)
  {

    [(MDDisplayLayer *)self prepareTargetsForPlatormsWithFramebufferFetch:texture];
  }

  else
  {

    [(MDDisplayLayer *)self prepareTargetsForPlatormsWithoutFramebufferFetch:texture isDrawable:drawable];
  }
}

- (void)dealloc
{
  v3 = dispatch_get_global_queue(0, 0);
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  GEOConfigRemoveBlockListener();
  v4 = *(self + 19);
  *(self + 19) = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__33563;
  v10[4] = __Block_byref_object_dispose__33564;
  v11 = *(self + 12);
  std::unique_ptr<md::DebugConsoleManager>::reset[abi:nn200100](self + 28, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__MDDisplayLayer_dealloc__block_invoke;
  block[3] = &unk_1E7B3A9C8;
  block[4] = v10;
  block[5] = v4;
  dispatch_async(v3, block);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6 = *(self + 62);
  if (v6)
  {
    CFRelease(v6);
  }

  layer = [(MDDisplayLayer *)self layer];
  [layer removeFromSuperlayer];

  _Block_object_dispose(v10, 8);
  v8.receiver = self;
  v8.super_class = MDDisplayLayer;
  [(MDDisplayLayer *)&v8 dealloc];
}

void __25__MDDisplayLayer_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (void)_notifyObserversSizeChanged:(CGSize)changed
{
  height = changed.height;
  width = changed.width;
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(self + 73);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (v9)
        {
          [v9 sizeDidChange:{width, height, v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (MDDisplayLayer)initWithContentScale:(double)scale useMultisampling:(BOOL)multisampling extraColorFormats:(const void *)formats shouldRasterize:(BOOL)rasterize allowBlitToDrawable:(BOOL)drawable taskContext:(const void *)context device:(void *)device sharedResources:(id)self0 services:(void *)self1 signpostId:(unint64_t)self2
{
  resourcesCopy = resources;
  v59.receiver = self;
  v59.super_class = MDDisplayLayer;
  v21 = [(MDDisplayLayer *)&v59 init];
  v22 = v21;
  if (v21)
  {
    *(v21 + 60) = services;
    *(v21 + 69) = id;
    *(v21 + 489) = *(*(device + 1) + 20);
    *(v21 + 488) = multisampling;
    *(v21 + 505) = rasterize;
    *(v21 + 68) = scale;
    *(v21 + 18) = device;
    v23 = (*(**(device + 1) + 16))(*(device + 1), *(*context + 16), *(device + 3));
    *(v22 + 19) = v23;
    v24 = +[VKDebugSettings sharedSettings];
    (*(*v23 + 32))(v23, [v24 drawPerformanceHUD]);

    *(v22 + 506) = drawable;
    if (*(v22 + 488))
    {
      v25 = 4;
    }

    else
    {
      v25 = 1;
    }

    LODWORD(__dst) = *(*(*(v22 + 18) + 8) + 60);
    v26 = std::vector<ggl::PixelFormat>::vector[abi:nn200100](&v57, &__dst, 1uLL);
    std::vector<ggl::PixelFormat>::__insert_with_size[abi:nn200100]<std::__wrap_iter<ggl::PixelFormat const*>,std::__wrap_iter<ggl::PixelFormat const*>>(v26, v58, *formats, *(formats + 1), (*(formats + 1) - *formats) >> 2);
    __dst = 0uLL;
    *(&v56 + 1) = v25 | 0x1A00000000;
    v27 = v58 - v57;
    v28 = (v58 - v57) >> 2;
    *&v56 = v28;
    if (v58 == v57 || (memcpy(&__dst, v57, v58 - v57), v28 <= 3))
    {
      bzero(&__dst + v27, 16 - v27);
    }

    v29 = v56;
    *(v22 + 7) = __dst;
    *(v22 + 8) = v29;
    if ((*(v22 + 489) & 1) == 0)
    {
      LODWORD(__dst) = *(*(*(v22 + 18) + 8) + 56);
      std::vector<ggl::PixelFormat>::vector[abi:nn200100](&location, &__dst, 1uLL);
      std::vector<ggl::PixelFormat>::__insert_with_size[abi:nn200100]<std::__wrap_iter<ggl::PixelFormat const*>,std::__wrap_iter<ggl::PixelFormat const*>>(&location, v54, *formats, *(formats + 1), (*(formats + 1) - *formats) >> 2);
      v30 = location;
      __dst = 0uLL;
      *(&v56 + 1) = v25 | 0x1A00000000;
      v31 = v54 - location;
      v32 = (v54 - location) >> 2;
      *&v56 = v32;
      if (v54 == location || (memcpy(&__dst, location, v54 - location), v32 <= 3))
      {
        bzero(&__dst + v31, 16 - v31);
      }

      v33 = v56;
      *(v22 + 23) = __dst;
      *(v22 + 24) = v33;
      if ((*(v22 + 488) & 1) == 0)
      {
        *(v22 + 84) = *(*(*(v22 + 18) + 8) + 60);
        *(v22 + 85) = 0;
        *(v22 + 43) = 0;
        *(v22 + 44) = 1;
        *(v22 + 90) = v25;
        *(v22 + 91) = 0;
      }

      if (v30)
      {
        v54 = v30;
        operator delete(v30);
      }
    }

    v34 = resourcesCopy;
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = *(v22 + 12);
    *(v22 + 12) = v35;

    objc_initWeak(&location, v22);
    v39 = **context;
    v51[1] = MEMORY[0x1E69E9820];
    v51[2] = 3221225472;
    v51[3] = __165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId___block_invoke;
    v51[4] = &unk_1E7B3A960;
    objc_copyWeak(&v52, &location);
    v40 = _GEOConfigAddBlockListenerForKey();
    v41 = *(v22 + 70);
    *(v22 + 70) = v40;

    v42 = *(v22 + 19);
    {
      {
        [MDDisplayLayer initWithContentScale:useMultisampling:extraColorFormats:shouldRasterize:allowBlitToDrawable:taskContext:device:sharedResources:services:signpostId:]::$_2::operator() const(void)::cached_result = GEOConfigGetBOOL();
      }
    }

    (*(*v42 + 48))(v42, [MDDisplayLayer initWithContentScale:useMultisampling:extraColorFormats:shouldRasterize:allowBlitToDrawable:taskContext:device:sharedResources:services:signpostId:]::$_2::operator() const(void)::cached_result);
    v43 = **context;
    v50[1] = MEMORY[0x1E69E9820];
    v50[2] = 3221225472;
    v50[3] = __165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId___block_invoke_2;
    v50[4] = &unk_1E7B3A960;
    objc_copyWeak(v51, &location);
    v44 = _GEOConfigAddBlockListenerForKey();
    v45 = *(v22 + 71);
    *(v22 + 71) = v44;

    v46 = **context;
    objc_copyWeak(v50, &location);
    v47 = _GEOConfigAddBlockListenerForKey();
    v48 = *(v22 + 72);
    *(v22 + 72) = v47;

    operator new();
  }

  return 0;
}

void __165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained[19];
    if ((atomic_load_explicit(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result))
    {
      _ZZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result = GEOConfigGetBOOL();
      __cxa_guard_release(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result);
    }

    (*(*v2 + 48))(v2, _ZZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb_ENK3__1clEvE13cached_result);
    WeakRetained = v3;
  }
}

void __165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[19];
    if (!*(*(v2 + 1) + 96))
    {
      v3 = WeakRetained;
      if ((atomic_load_explicit(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result))
      {
        _ZZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result = GEOConfigGetBOOL();
        __cxa_guard_release(&_ZGVZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result);
      }

      ggl::MetalRenderer::enableCommandQueueResetOnError(v2, _ZZZZ165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId__EUb0_ENK3__3clEvE13cached_result);
      WeakRetained = v3;
    }
  }
}

void __165__MDDisplayLayer_initWithContentScale_useMultisampling_extraColorFormats_shouldRasterize_allowBlitToDrawable_taskContext_device_sharedResources_services_signpostId___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[19];
    if (!*(*(v2 + 1) + 96))
    {
      v4 = WeakRetained;
      UInteger = GEOConfigGetUInteger();
      ggl::MetalRenderer::setCommandQueueResetAttempts(v2, UInteger);
      WeakRetained = v4;
    }
  }
}

@end