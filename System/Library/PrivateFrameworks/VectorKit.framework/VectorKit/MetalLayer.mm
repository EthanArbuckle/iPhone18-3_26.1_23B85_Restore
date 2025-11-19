@interface MetalLayer
- (CGSize)backingSize;
- (GGLLayerDelegate)renderDelegate;
- (MetalLayer)initWithDevice:(shared_ptr<ggl:(BOOL)a4 :MetalDevice>)a3 sRGB:;
- (id).cxx_construct;
- (id)_updateDrawable;
- (int)backingFormat;
- (void)_createTexture;
- (void)_onTimerFired:(double)a3 withPresent:(id)a4;
- (void)onTimerFired:(double)a3 presentAfterMinimumDuration:(double)a4;
- (void)onTimerFired:(double)a3 presentAtTime:(double)a4;
@end

@implementation MetalLayer

- (id).cxx_construct
{
  *(self + 9) = 0;
  *(self + 10) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  *(self + 14) = 0;
  return self;
}

- (CGSize)backingSize
{
  width = self->_backingSize.width;
  height = self->_backingSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (GGLLayerDelegate)renderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)onTimerFired:(double)a3 presentAfterMinimumDuration:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__MetalLayer_onTimerFired_presentAfterMinimumDuration___block_invoke;
  v4[3] = &__block_descriptor_40_e27_v16__0___CAMetalDrawable__8l;
  *&v4[4] = a4;
  [(MetalLayer *)self _onTimerFired:v4 withPresent:a3];
}

- (void)onTimerFired:(double)a3 presentAtTime:(double)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__MetalLayer_onTimerFired_presentAtTime___block_invoke;
  v4[3] = &__block_descriptor_40_e27_v16__0___CAMetalDrawable__8l;
  *&v4[4] = a4;
  [(MetalLayer *)self _onTimerFired:v4 withPresent:a3];
}

- (void)_onTimerFired:(double)a3 withPresent:(id)a4
{
  v6 = a4;
  v7 = mach_absolute_time();
  v8 = objc_autoreleasePoolPush();
  [(MetalLayer *)self _createTexture];
  p_texture = &self->_texture;
  if (self->_texture.__ptr_)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = WeakRetained;
    cntrl = self->_texture.__cntrl_;
    v30 = *p_texture;
    v31 = cntrl;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    [WeakRetained prepareTexture:&v30];
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }
  }

  v13 = objc_loadWeakRetained(&self->_delegate);
  v14 = [v13 isDelayedRenderQueueConsumptionSupported];

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    v16 = [v15 renderQueueForTimestamp:a3];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_loadWeakRetained(&self->_delegate);
  [v17 willUpdateFrameTexture];

  v18 = [(MetalLayer *)self _updateDrawable];
  v19 = objc_loadWeakRetained(&self->_delegate);
  [v19 didUpdateFrameTexture];

  if (v18)
  {
    v27 = v7;
    if ((v14 & 1) == 0)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      v16 = [v20 renderQueueForTimestamp:a3];
    }

    v21 = objc_loadWeakRetained(&self->_delegate);
    v22 = *p_texture;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __40__MetalLayer__onTimerFired_withPresent___block_invoke;
    v28[3] = &unk_1E7B3F110;
    v28[4] = self;
    v23 = v18;
    v29 = v23;
    [v21 drawToTexture:v22 withRenderQueue:v16 completionHandler:v28];

    v24 = objc_loadWeakRetained(&self->_delegate);
    [v24 willPresent];

    v7 = v27;
    v6[2](v6, v23);
    ggl::MetalResourceManager::updateTextureWithResource(*(self->_device.__ptr_ + 10), *p_texture, 0);
    v25 = objc_loadWeakRetained(&self->_delegate);
    [v25 didPresent];
  }

  objc_autoreleasePoolPop(v8);
  v26 = mach_absolute_time();
  if (ggl::Performance::Counters::instance(void)::onceToken[0] != -1)
  {
    dispatch_once(ggl::Performance::Counters::instance(void)::onceToken, &__block_literal_global_50855);
  }

  atomic_fetch_add(*(ggl::Performance::Counters::instance(void)::counters + 32), v26 - v7);
}

- (id)_updateDrawable
{
  if (![(CAMetalLayer *)self isDrawableAvailable])
  {
    NSLog(@"No drawable available at time of request for layer %@", self);
    v6 = 0;
    goto LABEL_9;
  }

  v3 = [(CAMetalLayer *)self nextDrawable];
  v4 = v3;
  if (!v3)
  {
    NSLog(@"Nil drawable for layer %@", self);
    goto LABEL_7;
  }

  ptr = self->_texture.__ptr_;
  if (!ptr)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  ggl::MetalResourceManager::updateTextureWithResource(*(self->_device.__ptr_ + 10), ptr, [v3 texture]);
  v6 = v4;
LABEL_8:

LABEL_9:

  return v6;
}

- (void)_createTexture
{
  [(MetalLayer *)self contentsScale];
  v4 = v3;
  [(MetalLayer *)self bounds];
  v6 = (v5 * v4);
  v8 = (v7 * v4);
  p_texture = &self->_texture;
  if (v6 * v8)
  {
    ptr = p_texture->__ptr_;
    if (!p_texture->__ptr_ || *(ptr + 20) != v6 || *(ptr + 21) != v8)
    {
      self->_backingSize.width = v6;
      self->_backingSize.height = v8;
      [(CAMetalLayer *)self setDrawableSize:?];
      operator new();
    }
  }

  else
  {
    cntrl = self->_texture.__cntrl_;
    p_texture->__ptr_ = 0;
    self->_texture.__cntrl_ = 0;
    if (cntrl)
    {

      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }
  }
}

- (MetalLayer)initWithDevice:(shared_ptr<ggl:(BOOL)a4 :MetalDevice>)a3 sRGB:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v22[5] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = MetalLayer;
  v6 = [(CAMetalLayer *)&v20 init:a3.__ptr_];
  v7 = v6;
  if (v6)
  {
    p_device = &v6->_device;
    v10 = *ptr;
    v9 = *(ptr + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = v6->_device.__cntrl_;
    p_device->__ptr_ = v10;
    p_device->__cntrl_ = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    v7->_sRGB = cntrl;
    v21[0] = @"bounds";
    v12 = [MEMORY[0x1E695DFB0] null];
    v22[0] = v12;
    v21[1] = @"position";
    v13 = [MEMORY[0x1E695DFB0] null];
    v22[1] = v13;
    v21[2] = @"contentsScale";
    v14 = [MEMORY[0x1E695DFB0] null];
    v22[2] = v14;
    v21[3] = @"hidden";
    v15 = [MEMORY[0x1E695DFB0] null];
    v22[3] = v15;
    v21[4] = @"contents";
    v16 = [MEMORY[0x1E695DFB0] null];
    v22[4] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
    [(MetalLayer *)v7 setActions:v17];

    [(MetalLayer *)v7 setOpaque:1];
    [(MetalLayer *)v7 setHidden:0];
    [(MetalLayer *)v7 setContentsGravity:*MEMORY[0x1E6979DD0]];
    [(CAMetalLayer *)v7 setPresentsWithTransaction:1];
    [(MetalLayer *)v7 setValue:MEMORY[0x1E695E118] forKey:@"disablePromotionCompatibility"];
    [(CAMetalLayer *)v7 setFramebufferOnly:0];
    if (v7->_sRGB)
    {
      v18 = 81;
    }

    else
    {
      v18 = 80;
    }

    [(CAMetalLayer *)v7 setPixelFormat:v18];
    [(CAMetalLayer *)v7 setFenceEnabled:1];
    [(CAMetalLayer *)v7 setDevice:*(*ptr + 104)];
  }

  return v7;
}

- (int)backingFormat
{
  if (self->_sRGB)
  {
    return 15;
  }

  else
  {
    return 14;
  }
}

@end