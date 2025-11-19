@interface CLKUIMetalQuadView
+ (id)allocateDepthTextureWithWidth:(unint64_t)a3 height:(unint64_t)a4 sampleCount:(unint64_t)a5;
+ (id)allocateMsaaTextureWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6;
- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor;
- (BOOL)_displayAndCheckForDrawable:(BOOL)a3 withCompletion:(id)a4;
- (BOOL)prewarmWithCompletion:(id)a3;
- (CGSize)drawableSize;
- (CLKUIMetalQuadView)initWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 colorSpace:(int64_t)a6 asyncRenderQueue:(id)a7;
- (float)computeAPLAndSnapshot:(id *)a3;
- (id)_getDimmingPipelineState;
- (id)_newRenderPassDescriptor;
- (id)_snapshotTextureInRect:(CGRect)a3 scale:(double)a4 time:(double)a5 withAdditionalPasses:(id)a6;
- (id)snapshotInRect:(CGRect)a3 scale:(double)a4 time:(double)a5;
- (id)snapshotTextureInRect:(CGRect)a3 scale:(double)a4 time:(double)a5;
- (void)_handleQuadArrayChange:(id)a3;
- (void)_renderQuads:(id)a3 toScreenWithCommandBuffer:(id)a4 passDescriptor:(id)a5;
- (void)_updateDrawableSizeIfNecessary;
- (void)_updateFramebufferOnly;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setClearColor:(id)a3;
- (void)setOpaque:(BOOL)a3;
- (void)setSingleBufferMode:(BOOL)a3;
- (void)snapshotAndFreeze;
@end

@implementation CLKUIMetalQuadView

- (CLKUIMetalQuadView)initWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 colorSpace:(int64_t)a6 asyncRenderQueue:(id)a7
{
  v8 = a5;
  v37.receiver = self;
  v37.super_class = CLKUIMetalQuadView;
  v9 = [(CLKUIQuadView *)&v37 initWithFrame:a4 identifier:a5 options:a7 asyncRenderQueue:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    if ((a6 - 1) > 2)
    {
      v11 = 81;
    }

    else
    {
      v11 = qword_1BCE230B8[a6 - 1];
    }

    v9->_colorPixelFormat = v11;
    v9->_maxAPL = 1.0;
    v9->_aplFilterAmount = 0.0;
    if ((v8 & 8) != 0)
    {
      v12 = [(CLKUIMetalQuadView *)v9 _msaaCount];
    }

    else
    {
      v12 = 1;
    }

    v10->_msaaCount = v12;
    *(v10 + 552) = *(v10 + 552) & 0xFE | v8 & 1;
    *(v10 + 552) = *(v10 + 552) & 0xF7 | (v8 >> 2) & 8;
    *(v10 + 552) = *(v10 + 552) & 0xDF | (v8 >> 1) & 0x20;
    *(v10 + 552) = *(v10 + 552) & 0xBF | (v8 >> 1) & 0x40;
    *(v10 + 552) = *(v10 + 552) & 0xFD | v8 & 2;
    *(v10 + 552) = *(v10 + 552) & 0xFB | (v8 >> 2) & 4;
    if (*(v10 + 552))
    {
      v13 = objc_opt_new();
      [v13 setDepthCompareFunction:3];
      [v13 setDepthWriteEnabled:1];
      v14 = +[CLKUIMetalResourceManager sharedDevice];
      v15 = [v14 newDepthStencilStateWithDescriptor:v13];
      depthStencilState = v10->_depthStencilState;
      v10->_depthStencilState = v15;
    }

    v17 = objc_alloc_init(MEMORY[0x1E69793F0]);
    if ((*(v10 + 552) & 4) != 0)
    {
      v18 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v18 scale];
      v21 = v22;
    }

    else
    {
      v18 = [MEMORY[0x1E695B530] sharedRenderingContext];
      v19 = [v18 device];
      [v19 screenScale];
      v21 = v20;
    }

    [(CAMetalLayer *)v17 setContentsScale:v21];
    v23 = +[CLKUIMetalResourceManager sharedDevice];
    [(CAMetalLayer *)v17 setDevice:v23];

    [(CAMetalLayer *)v17 setPixelFormat:v10->_colorPixelFormat];
    [(CAMetalLayer *)v17 setFramebufferOnly:(*(v10 + 552) & 0x20) == 0];
    [(CAMetalLayer *)v17 setFenceEnabled:1];
    [(CAMetalLayer *)v17 setPresentsWithTransaction:(*(v10 + 552) >> 1) & 1];
    if ((*(v10 + 552) & 0x40) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }

    [(CAMetalLayer *)v17 setMaximumDrawableCount:v24];
    [(CAMetalLayer *)v17 setDrawsAsynchronously:1];
    [(CAMetalLayer *)v17 setAllowsDisplayCompositing:0];
    [(CAMetalLayer *)v17 setOpaque:1];
    metalLayer = v10->_metalLayer;
    v10->_metalLayer = v17;
    v26 = v17;

    v27 = v10->_metalLayer;
    [(CLKUIMetalQuadView *)v10 bounds];
    [(CAMetalLayer *)v27 setFrame:?];
    v28 = [(CLKUIMetalQuadView *)v10 layer];
    [v28 addSublayer:v26];

    v29 = +[CLKUIMetalResourceManager sharedCommandQueue];
    commandQueue = v10->_commandQueue;
    v10->_commandQueue = v29;

    v31 = [(CLKUIMetalQuadView *)v10 _newRenderPassDescriptor];
    renderPassDescriptor = v10->_renderPassDescriptor;
    v10->_renderPassDescriptor = v31;

    *(v10 + 552) |= 0x10u;
    v33 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(CLKUIMetalQuadView *)v10 bounds];
    v34 = [v33 initWithFrame:?];
    snapshotView = v10->_snapshotView;
    v10->_snapshotView = v34;

    [(CLKUIMetalQuadView *)v10 addSubview:v10->_snapshotView];
    [(UIImageView *)v10->_snapshotView setHidden:1];
  }

  return v10;
}

+ (id)allocateDepthTextureWithWidth:(unint64_t)a3 height:(unint64_t)a4 sampleCount:(unint64_t)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69741C0]);
    v10 = v9;
    if (a5 >= 2)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    [v9 setTextureType:v11];
    [v10 setPixelFormat:252];
    [v10 setWidth:a3];
    [v10 setHeight:a4];
    [v10 setSampleCount:a5];
    [v10 setUsage:4];
    [v10 setStorageMode:3];
    v12 = +[CLKUIMetalResourceManager sharedDevice];
    v5 = [v12 newTextureWithDescriptor:v10];
  }

  return v5;
}

+ (id)allocateMsaaTextureWithWidth:(unint64_t)a3 height:(unint64_t)a4 pixelFormat:(unint64_t)a5 sampleCount:(unint64_t)a6
{
  v6 = 0;
  if (a4 && a3 && a6 >= 2)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69741C0]);
    [v11 setTextureType:4];
    [v11 setPixelFormat:a5];
    [v11 setWidth:a3];
    [v11 setHeight:a4];
    [v11 setStorageMode:3];
    [v11 setUsage:4];
    [v11 setSampleCount:a6];
    [v11 setMipmapLevelCount:1];
    v12 = +[CLKUIMetalResourceManager sharedDevice];
    v6 = [v12 newTextureWithDescriptor:v11];
  }

  return v6;
}

- (void)layoutSubviews
{
  [(CLKUIMetalQuadView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CAMetalLayer *)self->_metalLayer frame];
  self->_quadSize.width = v8;
  self->_quadSize.height = v10;
  if (v8 != v12 || v10 != v11)
  {
    *(self + 552) |= 0x10u;
    [(CAMetalLayer *)self->_metalLayer setFrame:v4, v6, v8, v10];
  }

  [(CLKUIMetalQuadView *)self bounds];
  snapshotView = self->_snapshotView;

  [(UIImageView *)snapshotView setFrame:?];
}

- (void)setOpaque:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = CLKUIMetalQuadView;
  if ([(CLKUIMetalQuadView *)&v6 isOpaque]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CLKUIMetalQuadView;
    [(CLKUIMetalQuadView *)&v5 setOpaque:v3];
    [(CAMetalLayer *)self->_metalLayer setOpaque:v3];
  }
}

- (void)setClearColor:(id)a3
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v7 = [v8 objectAtIndexedSubscript:0];
  [v7 setClearColor:{var0, var1, var2, var3}];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)clearColor
{
  v2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
  v3 = [v2 objectAtIndexedSubscript:0];
  [v3 clearColor];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (void)_handleQuadArrayChange:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v6 _handleQuadArrayChange:v4];
  quads = self->_quads;
  self->_quads = v4;
}

- (void)snapshotAndFreeze
{
  [(CLKUIMetalQuadView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695B4F8] currentDevice];
  [v11 screenScale];
  v13 = [(CLKUIMetalQuadView *)self snapshotInRect:v4 scale:v6 time:v8, v10, v12, CACurrentMediaTime()];

  [(UIImageView *)self->_snapshotView setImage:v13];
  [(UIImageView *)self->_snapshotView setHidden:0];
}

- (void)setSingleBufferMode:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v5 setSingleBufferMode:?];
  if (v3)
  {
    [(CAMetalLayer *)self->_metalLayer removeBackBuffers];
  }
}

- (id)snapshotInRect:(CGRect)a3 scale:(double)a4 time:(double)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke;
  v7[3] = &unk_1E7FF8908;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v7[4] = self;
  v7[5] = &v11;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

void __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if ((*(v3 + 632) | 2) == 0x22B)
  {
    v4 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:71 width:(*(a1 + 64) * *(a1 + 80)) height:(*(a1 + 80) * *(a1 + 72)) mipmapped:0];
    [v4 setUsage:3];
    v5 = +[CLKUIMetalResourceManager sharedDevice];
    v6 = [v5 newTextureWithDescriptor:v4];

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke_2;
    v17 = &unk_1E7FF88E0;
    v18 = *(a1 + 32);
    v7 = v6;
    v19 = v7;
    v8 = _Block_copy(&v14);

    v3 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *(v3 + 616) = 1;
  v9 = [*(a1 + 32) _snapshotTextureInRect:v8 scale:*(a1 + 48) time:*(a1 + 56) withAdditionalPasses:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v14, v15, v16, v17, v18}];
  *(*(a1 + 32) + 616) = 0;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v9;
  }

  v11 = [*(a1 + 32) _textureToImage:v10 scale:*(a1 + 80)];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  objc_autoreleasePoolPop(v2);
}

void __48__CLKUIMetalQuadView_snapshotInRect_scale_time___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 568);
  v7 = v11;
  CLKUIConvertTextureFromXRSRGBtoP3(a3, v6, a2, &v11);
  v8 = v11;

  v9 = *(a1 + 32);
  v10 = *(v9 + 568);
  *(v9 + 568) = v8;
}

- (id)snapshotTextureInRect:(CGRect)a3 scale:(double)a4 time:(double)a5
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CLKUIMetalQuadView_snapshotTextureInRect_scale_time___block_invoke;
  v7[3] = &unk_1E7FF8930;
  v7[4] = self;
  v7[5] = &v11;
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v5;
}

uint64_t __55__CLKUIMetalQuadView_snapshotTextureInRect_scale_time___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _snapshotTextureInRect:0 scale:*(a1 + 48) time:*(a1 + 56) withAdditionalPasses:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_snapshotTextureInRect:(CGRect)a3 scale:(double)a4 time:(double)a5 withAdditionalPasses:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  v54 = *MEMORY[0x1E69E9840];
  v11 = a6;
  [(CLKUIQuadView *)self _prerenderForTime:a5];
  context = objc_autoreleasePoolPush();
  v40 = (height * a4);
  v41 = (width * a4);
  v12 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:self->_colorPixelFormat width:? height:? mipmapped:?];
  [v12 setUsage:5];
  v13 = +[CLKUIMetalResourceManager sharedDevice];
  v43 = [v13 newTextureWithDescriptor:v12];

  v14 = CACurrentMediaTime();
  v15 = objc_opt_new();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v16 = self->_quads;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v49;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v48 + 1) + 8 * i);
        if ([v21 prepareForTime:v14])
        {
          [v15 addObject:v21];
        }
      }

      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    v22 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    v23 = MEMORY[0x1E696AEC0];
    v24 = [(CLKUIQuadView *)self debugIdentifier];
    v25 = [v23 stringWithFormat:@"FaceSnapshot-%@", v24];

    v39 = v25;
    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v22 forCase:v25];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v26 = v15;
    v27 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v45;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [*(*(&v44 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:v22];
        }

        v28 = [v26 countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v28);
    }

    msaaCount = self->_msaaCount;
    v32 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v33 = [v32 objectAtIndexedSubscript:0];
    v34 = v33;
    if (msaaCount < 2)
    {
      [v33 setTexture:v43];
    }

    else
    {
      v35 = [CLKUIMetalQuadView allocateMsaaTextureWithWidth:v41 height:v40 pixelFormat:[(CLKUIMetalQuadView *)self colorPixelFormat] sampleCount:self->_msaaCount];
      [v34 setTexture:v35];

      v32 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
      v34 = [v32 objectAtIndexedSubscript:0];
      [v34 setResolveTexture:v43];
    }

    if (*(self + 552))
    {
      v36 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
      v37 = [CLKUIMetalQuadView allocateDepthTextureWithWidth:v41 height:v40 sampleCount:self->_msaaCount];
      [v36 setTexture:v37];
    }

    [(CLKUIMetalQuadView *)self _renderQuads:v26 toScreenWithCommandBuffer:v22 passDescriptor:self->_renderPassDescriptor];
    if (v11)
    {
      v11[2](v11, v22, v43);
    }

    [v22 commit];
    [v22 waitUntilCompleted];
  }

  objc_autoreleasePoolPop(context);

  return v43;
}

- (BOOL)prewarmWithCompletion:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke;
  v7[3] = &unk_1E7FF8980;
  v7[4] = self;
  v5 = v4;
  v8 = v5;
  v9 = &v10;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  LOBYTE(self) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return self;
}

void __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = CACurrentMediaTime();
  v4 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = *(*(a1 + 32) + 528);
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * i);
        if ([v10 prepareForTime:v3])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    context = v2;
    v11 = [*(*(a1 + 32) + 496) commandBuffer];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [*(a1 + 32) debugIdentifier];
    v14 = [v12 stringWithFormat:@"FacePrewarm-%@", v13];

    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v11 forCase:v14];
    v15 = *(a1 + 40);
    if (v15)
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __44__CLKUIMetalQuadView_prewarmWithCompletion___block_invoke_2;
      v38[3] = &unk_1E7FF8958;
      v39 = v15;
      [v11 addCompletedHandler:v38];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v16 = v4;
    v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v35;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v34 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:v11];
        }

        v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v18);
    }

    v21 = *(a1 + 32);
    if (*(v21 + 552))
    {
      v22 = [*(v21 + 504) depthAttachment];
      v23 = [v22 texture];
      v24 = *(*(a1 + 32) + 536);

      v21 = *(a1 + 32);
      if (v23 != v24)
      {
        v25 = [*(v21 + 504) depthAttachment];
        [v25 setTexture:*(*(a1 + 32) + 536)];

        v21 = *(a1 + 32);
      }
    }

    if (!*(v21 + 600))
    {
      v26 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:*(v21 + 632) width:32 height:32 mipmapped:0];
      [v26 setUsage:5];
      v27 = +[CLKUIMetalResourceManager sharedDevice];
      v28 = [v27 newTextureWithDescriptor:v26];
      v29 = *(a1 + 32);
      v30 = *(v29 + 600);
      *(v29 + 600) = v28;

      v21 = *(a1 + 32);
    }

    v31 = [*(v21 + 504) colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setTexture:*(*(a1 + 32) + 600)];

    [*(a1 + 32) _renderQuads:v16 toScreenWithCommandBuffer:v11 passDescriptor:*(*(a1 + 32) + 504)];
    [v11 commit];

    objc_autoreleasePoolPop(context);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    *(*(*(a1 + 48) + 8) + 24) = 0;

    objc_autoreleasePoolPop(v2);
  }
}

- (void)_renderQuads:(id)a3 toScreenWithCommandBuffer:(id)a4 passDescriptor:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*(self + 552) & 8) != 0)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v26 + 1) + 8 * v21++) renderWithCommandBuffer:v9 passDescriptor:v10];
        }

        while (v19 != v21);
        v19 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v11 = [v9 renderCommandEncoderWithDescriptor:v10];
    v12 = v11;
    if (*(self + 552))
    {
      [v11 setDepthStencilState:self->_depthStencilState];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v22 + 1) + 8 * v17++) renderForDisplayWithEncoder:{v12, v22}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v15);
    }

    [v12 endEncoding];
  }
}

- (BOOL)_displayAndCheckForDrawable:(BOOL)a3 withCompletion:(id)a4
{
  v4 = a3;
  v101 = *MEMORY[0x1E69E9840];
  v65 = a4;
  context = objc_autoreleasePoolPush();
  [(CLKUIMetalQuadView *)self _updateDrawableSizeIfNecessary];
  v6 = CACurrentMediaTime();
  v7 = objc_opt_new();
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v8 = self->_quads;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v93 objects:v100 count:16];
  if (v9)
  {
    v10 = *v94;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v94 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v93 + 1) + 8 * i);
        if ([v12 prepareForTime:v6])
        {
          [v7 addObject:v12];
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v93 objects:v100 count:16];
    }

    while (v9);
  }

  if ([v7 count])
  {
    v13 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
    v14 = MEMORY[0x1E696AEC0];
    v15 = [(CLKUIQuadView *)self debugIdentifier];
    v61 = [v14 stringWithFormat:@"FaceDisplay-%@", v15];

    [CLKUIMetalResourceManager addCompletedErrorCheckToCommandBuffer:v13 forCase:v61];
    [(UIImageView *)self->_snapshotView setHidden:1];
    [(UIImageView *)self->_snapshotView setImage:0];
    if (v65)
    {
      v91[0] = MEMORY[0x1E69E9820];
      v91[1] = 3221225472;
      v91[2] = __65__CLKUIMetalQuadView__displayAndCheckForDrawable_withCompletion___block_invoke;
      v91[3] = &unk_1E7FF8958;
      v92 = v65;
      [v13 addScheduledHandler:v91];
    }

    if ([(CLKUIQuadView *)self singleBufferMode])
    {
      objc_initWeak(location, self);
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __65__CLKUIMetalQuadView__displayAndCheckForDrawable_withCompletion___block_invoke_2;
      v89[3] = &unk_1E7FF89A8;
      objc_copyWeak(&v90, location);
      [v13 addCompletedHandler:v89];
      objc_destroyWeak(&v90);
      objc_destroyWeak(location);
    }

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v16 = v7;
    v17 = [v16 countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v17)
    {
      v18 = *v86;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v86 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v85 + 1) + 8 * j) performOffscreenPassesWithCommandBuffer:v13];
        }

        v17 = [v16 countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v17);
    }

    if (v4 && (*(self + 552) & 2) == 0 && ([(CAMetalLayer *)self->_metalLayer isDrawableAvailable]& 1) == 0)
    {
      [v13 commit];
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v20 = v16;
      v52 = [v20 countByEnumeratingWithState:&v81 objects:v98 count:16];
      if (v52)
      {
        v53 = *v82;
        do
        {
          for (k = 0; k != v52; ++k)
          {
            if (*v82 != v53)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v81 + 1) + 8 * k) renderFailedForReason:0];
          }

          v52 = [v20 countByEnumeratingWithState:&v81 objects:v98 count:16];
        }

        while (v52);
      }

      v62 = 0;
      goto LABEL_63;
    }

    v20 = [MEMORY[0x1E695DF00] date];
    v64 = [(CAMetalLayer *)self->_metalLayer nextDrawable];
    v60 = [MEMORY[0x1E695DF00] date];
    [v60 timeIntervalSinceDate:v20];
    v62 = v64 != 0;
    if (!v64)
    {
      [v13 commit];
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v22 = v16;
      v24 = [v22 countByEnumeratingWithState:&v77 objects:v97 count:16];
      if (v24)
      {
        v25 = *v78;
        do
        {
          for (m = 0; m != v24; ++m)
          {
            if (*v78 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [*(*(&v77 + 1) + 8 * m) renderFailedForReason:1];
          }

          v24 = [v22 countByEnumeratingWithState:&v77 objects:v97 count:16];
        }

        while (v24);
      }

      goto LABEL_62;
    }

    v21 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v22 = [v21 objectAtIndexedSubscript:0];

    if (self->_msaaCount < 2)
    {
      v23 = [v64 texture];
      [v22 setTexture:v23];
    }

    else
    {
      [v22 setTexture:self->_msaaTexture];
      v23 = [v64 texture];
      [v22 setResolveTexture:v23];
    }

    if (*(self + 552))
    {
      v27 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
      v28 = [v27 texture];
      v29 = v28 == self->_depthTexture;

      if (!v29)
      {
        [v27 setTexture:self->_depthTexture];
      }
    }

    [(CLKUIMetalQuadView *)self _renderQuads:v16 toScreenWithCommandBuffer:v13 passDescriptor:self->_renderPassDescriptor];
    if ([(CLKUIMetalQuadView *)self _shouldApplyAPLFilter])
    {
      v30 = self->_aplPipelineState;
      v31 = [v64 texture];
      v76 = v30;
      v58 = _CLKUIComputeTextureAPL(v31, v13, &v76);
      v32 = v76;

      aplPipelineState = self->_aplPipelineState;
      self->_aplPipelineState = v32;
      v34 = v32;

      v59 = [(CLKUIMetalQuadView *)self _getDimmingPipelineState];
      v35 = [v13 computeCommandEncoder];
      [v35 setComputePipelineState:v59];
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      *location = 0u;
      aplFilterAmount = self->_aplFilterAmount;
      *&v75 = self->_maxAPL;
      *(&v75 + 1) = aplFilterAmount;
      v37 = [MEMORY[0x1E695B4F8] currentDevice];
      *&v38 = CLKUINativeToAPLCoeff(v37);
      v74 = v38;

      v39 = sRGBtoNative();
      LODWORD(location[1]) = v40;
      DWORD2(v72) = v41;
      location[0] = *&v39;
      *&v72 = v42;
      DWORD2(v73) = v43;
      *&v73 = v44;
      [v35 setBytes:location length:80 atIndex:2];
      [v35 setBuffer:v58 offset:0 atIndex:1];
      v45 = [v64 texture];
      [v35 setTexture:v45 atIndex:0];

      v46 = [v59 threadExecutionWidth];
      v57 = [v59 maxTotalThreadsPerThreadgroup];
      v47 = [v64 texture];
      v56 = [v47 width];
      v48 = [v64 texture];

      LODWORD(v34) = [v48 height];
      v70[0] = (v46 + v56 - 1) / v46;
      v70[1] = (v57 / v46 + v34 - 1) / (v57 / v46);
      v70[2] = 1;
      v69[0] = v46;
      v69[1] = v57 / v46;
      v69[2] = 1;
      [v35 dispatchThreadgroups:v70 threadsPerThreadgroup:v69];
      [v35 endEncoding];
    }

    if ((*(self + 552) & 2) == 0)
    {
      [v13 presentDrawable:v64];
      [v13 commit];
LABEL_62:

LABEL_63:
      goto LABEL_64;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__CLKUIMetalQuadView__displayAndCheckForDrawable_withCompletion___block_invoke_3;
    aBlock[3] = &unk_1E7FF89D0;
    v49 = v13;
    v67 = v49;
    v68 = v64;
    v50 = _Block_copy(aBlock);
    [v49 commit];
    v51 = [MEMORY[0x1E6979518] currentPhase];
    if (v51)
    {
      if (v51 == 1)
      {
        v50[2](v50);
LABEL_61:

        goto LABEL_62;
      }

      if (![MEMORY[0x1E6979518] currentState])
      {
        [MEMORY[0x1E6979518] activate];
      }
    }

    [MEMORY[0x1E6979518] addCommitHandler:v50 forPhase:1];
    goto LABEL_61;
  }

  v65[2]();
  v62 = 0;
LABEL_64:

  objc_autoreleasePoolPop(context);
  return v62;
}

uint64_t __65__CLKUIMetalQuadView__displayAndCheckForDrawable_withCompletion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if ([WeakRetained singleBufferMode])
    {
      [v3[65] removeBackBuffers];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __65__CLKUIMetalQuadView__displayAndCheckForDrawable_withCompletion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) waitUntilScheduled];
  v2 = *(a1 + 40);

  return [v2 present];
}

- (void)_updateFramebufferOnly
{
  metalLayer = self->_metalLayer;
  if ((*(self + 552) & 0x20) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CLKUIMetalQuadView *)self _shouldApplyAPLFilter]^ 1;
  }

  [(CAMetalLayer *)metalLayer setFramebufferOnly:v3];
}

- (float)computeAPLAndSnapshot:(id *)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__30;
  v10[4] = __Block_byref_object_dispose__31;
  v11 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy_;
  v8[4] = __Block_byref_object_dispose_;
  v9 = self->_aplPipelineState;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke;
  v7[3] = &unk_1E7FF8A20;
  v7[4] = self;
  v7[5] = v10;
  v7[7] = &v12;
  v7[8] = a3;
  v7[6] = v8;
  [(CLKUIQuadView *)self _runOnRenderQueueIfNeeded:v7];
  v5 = v13[6];
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);
  return v5;
}

void __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [MEMORY[0x1E695B4F8] currentDevice];
  [v11 screenScale];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke_2;
  v16[3] = &unk_1E7FF89F8;
  v17 = *(a1 + 40);
  v13 = [v2 _snapshotTextureInRect:v16 scale:v4 time:v6 withAdditionalPasses:{v8, v10, v12, 0.0}];

  objc_storeStrong((*(a1 + 32) + 560), *(*(*(a1 + 48) + 8) + 40));
  if (*(a1 + 64))
  {
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x1E695B4F8] currentDevice];
    [v15 screenScale];
    **(a1 + 64) = [v14 _textureToImage:v13 scale:?];
  }

  *(*(*(a1 + 56) + 8) + 24) = (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
}

void __44__CLKUIMetalQuadView_computeAPLAndSnapshot___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = CLKUIComputeTextureAPL(a3, a2, &obj);
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)_getDimmingPipelineState
{
  dimmingPipelineState = self->_dimmingPipelineState;
  if (!dimmingPipelineState)
  {
    v4 = +[CLKUIMetalResourceManager sharedDevice];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v14 = 0;
    v6 = [v4 newDefaultLibraryWithBundle:v5 error:&v14];
    v7 = v14;

    v8 = [v6 newFunctionWithName:@"compute_apply_dimming"];
    v13 = v7;
    v9 = [v4 newComputePipelineStateWithFunction:v8 error:&v13];
    v10 = v13;

    v11 = self->_dimmingPipelineState;
    self->_dimmingPipelineState = v9;

    dimmingPipelineState = self->_dimmingPipelineState;
  }

  return dimmingPipelineState;
}

- (id)_newRenderPassDescriptor
{
  v3 = [MEMORY[0x1E6974128] renderPassDescriptor];
  v4 = [v3 colorAttachments];
  v5 = [v4 objectAtIndexedSubscript:0];

  [v5 setLoadAction:2];
  [v5 setClearColor:{0.0, 0.0, 0.0, 0.0}];
  if (self->_msaaCount <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [v5 setStoreAction:v6];
  if (*(self + 552))
  {
    v7 = [v3 depthAttachment];
    [v7 setLoadAction:2];
    [v7 setClearDepth:1.0];
    [v7 setStoreAction:0];
  }

  return v3;
}

- (CGSize)drawableSize
{
  [(CAMetalLayer *)self->_metalLayer drawableSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_updateDrawableSizeIfNecessary
{
  if ((*(self + 552) & 0x10) != 0)
  {
    v18 = self->_metalLayer;
    if ((*(self + 552) & 4) != 0)
    {
      v3 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v3 scale];
      v6 = v7;
    }

    else
    {
      v3 = [MEMORY[0x1E695B530] sharedRenderingContext];
      v4 = [v3 device];
      [v4 screenScale];
      v6 = v5;
    }

    [(CAMetalLayer *)v18 bounds];
    v9 = v6 * v8;
    v11 = v6 * v10;
    self->_quadSize.width = v9;
    self->_quadSize.height = v11;
    [(CAMetalLayer *)v18 setDrawableSize:v9, v11];
    if (self->_msaaCount >= 2)
    {
      msaaTexture = self->_msaaTexture;
      if (!msaaTexture || v9 != [(MTLTexture *)msaaTexture width]|| v11 != [(MTLTexture *)self->_msaaTexture height])
      {
        v13 = [CLKUIMetalQuadView allocateMsaaTextureWithWidth:v9 height:v11 pixelFormat:[(CLKUIMetalQuadView *)self colorPixelFormat] sampleCount:self->_msaaCount];
        v14 = self->_msaaTexture;
        self->_msaaTexture = v13;
      }
    }

    if (*(self + 552))
    {
      depthTexture = self->_depthTexture;
      if (!depthTexture || v9 != [(MTLTexture *)depthTexture width]|| v11 != [(MTLTexture *)self->_depthTexture height])
      {
        v16 = [CLKUIMetalQuadView allocateDepthTextureWithWidth:v9 height:v11 sampleCount:self->_msaaCount];
        v17 = self->_depthTexture;
        self->_depthTexture = v16;
      }
    }

    *(self + 552) &= ~0x10u;
  }
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLKUIMetalQuadView;
  [(CLKUIQuadView *)&v2 dealloc];
}

@end