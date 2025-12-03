@interface TSDMetalLayer
- (TSDMetalLayer)initWithFrame:(CGRect)frame isOpaque:(BOOL)opaque isWideGamut:(BOOL)gamut delegate:(id)delegate metalDevice:(id)device;
- (TSDMetalLayerDelegate)delegate;
- (id)device;
- (void)displayAtCurrentLayerTime;
- (void)p_drawFrameAtLayerTime:(double)time;
- (void)p_drawFrameFromDisplayLink:(id)link;
- (void)p_performWorkOnMainThread:(id)thread;
- (void)pauseAnimation;
- (void)resumeAnimation;
- (void)setDevice:(id)device;
- (void)startAnimation;
- (void)stopAnimation;
@end

@implementation TSDMetalLayer

- (TSDMetalLayer)initWithFrame:(CGRect)frame isOpaque:(BOOL)opaque isWideGamut:(BOOL)gamut delegate:(id)delegate metalDevice:(id)device
{
  gamutCopy = gamut;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  delegateCopy = delegate;
  deviceCopy = device;
  v19.receiver = self;
  v19.super_class = TSDMetalLayer;
  v16 = [(CAMetalLayer *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_delegate, delegateCopy);
    [(TSDMetalLayer *)v17 setFrame:x, y, width, height];
    [(TSDMetalLayer *)v17 setMasksToBounds:0];
    [(TSDMetalLayer *)v17 setOpaque:0];
    [(CAMetalLayer *)v17 setFramebufferOnly:1];
    [(CAMetalLayer *)v17 setPixelFormat:80];
    if (gamutCopy)
    {
      [(CAMetalLayer *)v17 setPixelFormat:552];
    }

    [(TSDMetalLayer *)v17 setDevice:deviceCopy];
  }

  return v17;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  v10.receiver = self;
  v10.super_class = TSDMetalLayer;
  [(CAMetalLayer *)&v10 setDevice:deviceCopy];
  if (deviceCopy)
  {
    newCommandQueue = [deviceCopy newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    if (!self->_commandQueue)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDMetalLayer setDevice:]"];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/Metal/TSDMetalLayer.m"];
      [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:92 description:{@"invalid nil value for '%s'", "_commandQueue"}];
    }
  }
}

- (id)device
{
  v4.receiver = self;
  v4.super_class = TSDMetalLayer;
  device = [(CAMetalLayer *)&v4 device];

  return device;
}

- (void)p_drawFrameAtLayerTime:(double)time
{
  if (!self->_isAnimationStopping)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [WeakRetained shouldDrawFrameAtLayerTime:time];

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 drawFrameAtLayerTime:time];
    }
  }
}

- (void)p_drawFrameFromDisplayLink:(id)link
{
  [(CADisplayLink *)self->_displayLink targetTimestamp];

  [(TSDMetalLayer *)self p_drawFrameAtLayerTime:?];
}

- (void)startAnimation
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x277CD9E48] displayLinkWithTarget:self selector:sel_p_drawFrameFromDisplayLink_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
  }

  self->_isAnimationStopping = 0;
}

- (void)p_performWorkOnMainThread:(id)thread
{
  v3 = MEMORY[0x277CCACC8];
  block = thread;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)stopAnimation
{
  self->_isAnimationStopping = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __30__TSDMetalLayer_stopAnimation__block_invoke;
  v2[3] = &unk_279D47618;
  v2[4] = self;
  [(TSDMetalLayer *)self p_performWorkOnMainThread:v2];
}

void __30__TSDMetalLayer_stopAnimation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = 0;

    v2 = *(a1 + 32);
  }

  *(v2 + 72) = 0;
}

- (void)pauseAnimation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __31__TSDMetalLayer_pauseAnimation__block_invoke;
  v2[3] = &unk_279D47618;
  v2[4] = self;
  [(TSDMetalLayer *)self p_performWorkOnMainThread:v2];
}

void *__31__TSDMetalLayer_pauseAnimation__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return [result setPaused:1];
  }

  return result;
}

- (void)resumeAnimation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __32__TSDMetalLayer_resumeAnimation__block_invoke;
  v2[3] = &unk_279D47618;
  v2[4] = self;
  [(TSDMetalLayer *)self p_performWorkOnMainThread:v2];
}

void *__32__TSDMetalLayer_resumeAnimation__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return [result setPaused:0];
  }

  return result;
}

- (void)displayAtCurrentLayerTime
{
  self->_isAnimationStopping = 0;
  if (!self->_displayLink)
  {
    v4 = CACurrentMediaTime();

    [(TSDMetalLayer *)self p_drawFrameAtLayerTime:v4];
  }
}

- (TSDMetalLayerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end