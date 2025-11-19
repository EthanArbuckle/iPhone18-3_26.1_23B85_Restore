@interface TUIKeyboardPathRenderer
+ (id)generatePipelineDescriptorsForMTKView:(id)a3;
- (TUIKeyboardPathRenderer)initWithMTKView:(id)a3 generatePipelineDescriptors:(BOOL)a4;
- (TUIKeyboardPathRendererDataSource)datasource;
- (void)completeRendering;
- (void)drawInMTKView:(id)a3;
- (void)keyboardDidHide;
- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4;
- (void)setPaused:(BOOL)a3;
- (void)setupMetal;
- (void)setupPipeline;
- (void)updateVertexBufferForPaths:(id)a3;
@end

@implementation TUIKeyboardPathRenderer

- (TUIKeyboardPathRendererDataSource)datasource
{
  WeakRetained = objc_loadWeakRetained(&self->_datasource);

  return WeakRetained;
}

- (void)keyboardDidHide
{
  [(MTKView *)self->_view releaseDrawables];
  v3 = [(MTKView *)self->_view layer];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(MTKView *)self->_view layer];
    [v5 discardContents];
    [v5 removeBackBuffers];
  }
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  if ([(MTKView *)self->_view isPaused]!= a3)
  {
    view = self->_view;

    [(MTKView *)view setPaused:v3];
  }
}

- (void)mtkView:(id)a3 drawableSizeWillChange:(CGSize)a4
{
  height = a4.height;
  *self->_viewportPixelSize = vmovn_s64(vcvtq_u64_f64(a4));
  v6 = a3;
  [v6 bounds];
  *self->_viewportPointSize = v7;
  [v6 bounds];
  v9 = v8;

  *&self->_viewportPointSize[4] = v9;
  v10 = *self->_viewportPointSize;
  if (v10)
  {
    v11 = *self->_viewportPixelSize / v10;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  self->_scale = v12;
}

- (void)completeRendering
{
  self->_drawing = 0;
  if (!self->_vertexCount)
  {
    [(TUIKeyboardPathRenderer *)self setPaused:1];
  }
}

- (void)drawInMTKView:(id)a3
{
  v4 = a3;
  if (self->_setupCompleted && !self->_drawing)
  {
    if (self->_pipelineState)
    {
      v5 = vceqz_s32(*self->_viewportPointSize);
      if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) == 0)
      {
        v6 = [(TUIKeyboardPathRenderer *)self datasource];
        v7 = objc_opt_respondsToSelector();

        if (v7)
        {
          v8 = [(TUIKeyboardPathRenderer *)self datasource];
          v9 = [v8 pathsToRender];

          [(TUIKeyboardPathRenderer *)self updateVertexBufferForPaths:v9];
        }

        v10 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
        [v10 setLabel:@"PathCommand"];
        v11 = [v4 currentRenderPassDescriptor];
        if (v11)
        {
          v12 = [v10 renderCommandEncoderWithDescriptor:v11];
          [v12 setLabel:@"PathRenderEncoder"];
          [v12 setFrontFacingWinding:0];
          v13 = *self->_viewportPixelSize;
          location[0] = 0;
          location[1] = 0;
          v14.i64[0] = v13;
          v14.i64[1] = HIDWORD(v13);
          v19 = vcvtq_f64_u64(v14);
          v20 = xmmword_1900C0FB0;
          [v12 setViewport:location];
          [v12 setRenderPipelineState:self->_pipelineState];
          [v12 setVertexBuffer:self->_vertexBuffer offset:0 atIndex:0];
          [v12 setVertexBytes:self->_viewportPointSize length:8 atIndex:1];
          [v12 setFragmentBytes:self->_pathColor length:16 atIndex:2];
          if (self->_vertexCount)
          {
            [v12 drawPrimitives:3 vertexStart:0 vertexCount:?];
          }

          [v12 endEncoding];
          objc_initWeak(location, self);
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __41__TUIKeyboardPathRenderer_drawInMTKView___block_invoke;
          v16[3] = &unk_1E72D7AE0;
          objc_copyWeak(&v17, location);
          [v10 addCompletedHandler:v16];
          v15 = [v4 currentDrawable];
          [v10 presentDrawable:v15];

          objc_destroyWeak(&v17);
          objc_destroyWeak(location);
        }

        [v10 commit];
      }
    }
  }
}

void __41__TUIKeyboardPathRenderer_drawInMTKView___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__TUIKeyboardPathRenderer_drawInMTKView___block_invoke_2;
  block[3] = &unk_1E72D7FD8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __41__TUIKeyboardPathRenderer_drawInMTKView___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained completeRendering];
    WeakRetained = v2;
  }
}

- (void)updateVertexBufferForPaths:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_vertexCount = 0;
  v5 = [(MTLBuffer *)self->_vertexBuffer contents];
  scale = self->_scale;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    v45 = 0.5 / scale;
    v41 = *v48;
    do
    {
      v10 = 0;
      v42 = v8;
      do
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v10;
        v11 = *(*(&v47 + 1) + 8 * v10);
        v12 = [v11 nonSentinelPoints];
        v13 = [v12 count];

        if (v13 >= 2)
        {
          v14 = [v11 nonSentinelPoints];
          v15 = [v14 objectAtIndex:0];

          [v15 point];
          v17.f64[1] = v16;
          v18 = vcvt_f32_f64(v17);
          v19 = v18;
          v20 = v18;
          v21 = 1;
          do
          {
            v22 = v20;
            v23 = v19;
            v24 = v18;
            v25 = [v11 nonSentinelPoints];
            v26 = [v25 objectAtIndex:v21];

            [v26 decay];
            *&v27 = v13 * v27 + 0.0;
            v46 = (((1.0 - ((v21 - *&v27) / v13)) * -19.7) + 19.7) * 0.5;
            [v26 point];
            v29.f64[1] = v28;
            v18 = vcvt_f32_f64(v29);
            *&v29.f64[0] = vsub_f32(v18, v24);
            v30 = vmul_f32(*&v29.f64[0], *&v29.f64[0]);
            v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
            v31 = vrsqrte_f32(v30.u32[0]);
            v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
            *&v29.f64[0] = vmul_n_f32(*&v29.f64[0], vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
            v30.f32[0] = -*v29.f64;
            LODWORD(v29.f64[0]) = vdup_lane_s32(*&v29.f64[0], 1).u32[0];
            HIDWORD(v29.f64[0]) = v30.i32[0];
            *&v29.f64[0] = vmul_n_f32(*&v29.f64[0], v46);
            v19 = vsub_f32(v18, *&v29.f64[0]);
            v20 = vadd_f32(*&v29.f64[0], v18);
            if (v46 >= v45)
            {
              v33 = vceq_f32(v24, v18);
              if ((vpmin_u32(v33, v33).u32[0] & 0x80000000) == 0)
              {
                vertexCount = self->_vertexCount;
                if (vertexCount >> 12 <= 2)
                {
                  *(v5 + 8 * vertexCount) = v23;
                  self->_vertexCount = vertexCount + 1;
                  if (vertexCount != 12287)
                  {
                    *(v5 + 8 * (vertexCount + 1)) = v22;
                    self->_vertexCount = vertexCount + 2;
                    if (vertexCount <= 0x2FFD)
                    {
                      *(v5 + 8 * (vertexCount + 2)) = v19;
                      self->_vertexCount = vertexCount + 3;
                      if (vertexCount != 12285)
                      {
                        *(v5 + 8 * (vertexCount + 3)) = v19;
                        self->_vertexCount = vertexCount + 4;
                        if (vertexCount >> 2 <= 0xBFE)
                        {
                          *(v5 + 8 * (vertexCount + 4)) = v22;
                          self->_vertexCount = vertexCount + 5;
                          if (vertexCount != 12283)
                          {
                            *(v5 + 8 * (vertexCount + 5)) = v20;
                            self->_vertexCount = vertexCount + 6;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v21 + 2 < v13 || v21 == v13 - 1)
            {
              v21 += 2;
            }

            else
            {
              v21 = v13 - 1;
            }

            if (v21 >= v13 && v46 >= v45)
            {
              v36 = vsub_f32(v20, v18);
              v37 = self->_vertexCount;
              v38 = 12;
              v39 = v20;
              do
              {
                v40 = v39;
                v36 = vmla_lane_f32(vmul_n_f32(0x3E8483EE3F7746EALL, v36.f32[0]), 0x3F7746EABE8483EELL, v36, 1);
                v39 = vadd_f32(v36, v18);
                if (v37 >> 12 <= 2)
                {
                  *(v5 + 8 * v37) = v40;
                  self->_vertexCount = v37 + 1;
                  if (v37 == 12287 || (*(v5 + 8 * (v37 + 1)) = v18, self->_vertexCount = v37 + 2, v37 > 0x2FFD))
                  {
                    v37 = 12288;
                  }

                  else
                  {
                    *(v5 + 8 * (v37 + 2)) = v39;
                    v37 += 3;
                    self->_vertexCount = v37;
                  }
                }

                --v38;
              }

              while (v38);
            }
          }

          while (v21 < v13);

          v9 = v41;
          v8 = v42;
        }

        v10 = v44 + 1;
      }

      while (v44 + 1 != v8);
      v8 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v8);
  }
}

- (void)setupPipeline
{
  device = self->_device;
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v44 = 0;
  v5 = [(MTLDevice *)device newDefaultLibraryWithBundle:v4 error:&v44];
  v6 = v44;

  if (v5)
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v7 pathForResource:@"TextInputUI_iOS" ofType:@"pipelinelib"];

    v40 = v8;
    if (v8 && !self->_generatePipelineDescriptors)
    {
      v9 = self->_device;
      v43 = v6;
      v10 = [(MTLDevice *)v9 newPipelineLibraryWithFilePath:v8 error:&v43];
      v11 = v43;

      pipelineLibrary = self->_pipelineLibrary;
      self->_pipelineLibrary = v10;

      v6 = v11;
    }

    v13 = v6;
    v14 = [v5 newFunctionWithName:@"pathVertexShader"];
    v15 = [v5 newFunctionWithName:@"pathFragmentShader"];
    v16 = objc_alloc_init(MEMORY[0x1E69741E0]);
    v17 = [v16 attributes];
    v18 = [v17 objectAtIndexedSubscript:0];
    [v18 setFormat:29];

    v19 = [v16 attributes];
    v20 = [v19 objectAtIndexedSubscript:0];
    [v20 setOffset:0];

    v21 = [v16 attributes];
    v22 = [v21 objectAtIndexedSubscript:0];
    [v22 setBufferIndex:0];

    v23 = [v16 layouts];
    v24 = [v23 objectAtIndexedSubscript:0];
    [v24 setStride:8];

    v25 = [v16 layouts];
    v26 = [v25 objectAtIndexedSubscript:0];
    [v26 setStepRate:1];

    v27 = [v16 layouts];
    v28 = [v27 objectAtIndexedSubscript:0];
    [v28 setStepFunction:1];

    v29 = objc_alloc_init(MEMORY[0x1E6974148]);
    [v29 setLabel:@"PathPipeline"];
    [v29 setVertexDescriptor:v16];
    [v29 setVertexFunction:v14];
    [v29 setFragmentFunction:v15];
    colorPixelFormat = self->_colorPixelFormat;
    v31 = [v29 colorAttachments];
    v32 = [v31 objectAtIndexedSubscript:0];
    [v32 setPixelFormat:colorPixelFormat];

    [v29 setDepthAttachmentPixelFormat:0];
    [v29 setSampleCount:1];
    [v29 setPipelineLibrary:self->_pipelineLibrary];
    v33 = self->_device;
    v42 = v13;
    v34 = [(MTLDevice *)v33 newRenderPipelineStateWithDescriptor:v29 error:&v42];
    v6 = v42;

    pipelineState = self->_pipelineState;
    self->_pipelineState = v34;

    if (!self->_pipelineState)
    {
      NSLog(&cfstr_FailedToCreate.isa, v6, v40);
    }

    v36 = [(MTLDevice *)self->_device newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = v36;

    v38 = [(MTLDevice *)self->_device newBufferWithLength:98304 options:0];
    vertexBuffer = self->_vertexBuffer;
    self->_vertexBuffer = v38;

    [(MTLBuffer *)self->_vertexBuffer setLabel:@"PathVertices"];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__TUIKeyboardPathRenderer_setupPipeline__block_invoke;
    block[3] = &unk_1E72D83A0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    NSLog(&cfstr_FailedToLoadDe.isa, v6);
  }
}

uint64_t __40__TUIKeyboardPathRenderer_setupPipeline__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[3];
  [v3 drawableSize];
  result = [v2 mtkView:v3 drawableSizeWillChange:?];
  *(*(a1 + 32) + 33) = 1;
  return result;
}

- (void)setupMetal
{
  [(MTKView *)self->_view setSampleCount:1];
  [(MTKView *)self->_view setClearColor:0.0, 0.0, 0.0, 0.0];
  [(MTKView *)self->_view setDepthStencilPixelFormat:0];
  self->_colorPixelFormat = [(MTKView *)self->_view colorPixelFormat];
  if (self->_generatePipelineDescriptors)
  {

    [(TUIKeyboardPathRenderer *)self setupPipeline];
  }

  else
  {
    v3 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__TUIKeyboardPathRenderer_setupMetal__block_invoke;
    block[3] = &unk_1E72D83A0;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

void __37__TUIKeyboardPathRenderer_setupMetal__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setupPipeline];
  if (![MEMORY[0x1E69DCBB8] isKeyboardProcess])
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 addObserver:*(a1 + 32) selector:sel_keyboardDidHide name:*MEMORY[0x1E69DDFF8] object:0];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:sel_keyboardDidHide name:*MEMORY[0x1E69DDBC8] object:0];
}

- (TUIKeyboardPathRenderer)initWithMTKView:(id)a3 generatePipelineDescriptors:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = TUIKeyboardPathRenderer;
  v8 = [(TUIKeyboardPathRenderer *)&v12 init];
  if (v8)
  {
    v9 = [v7 device];
    device = v8->_device;
    v8->_device = v9;

    objc_storeStrong(&v8->_view, a3);
    [(MTKView *)v8->_view setDelegate:v8];
    [(MTKView *)v8->_view setAutoResizeDrawable:0];
    v8->_generatePipelineDescriptors = a4;
    [(TUIKeyboardPathRenderer *)v8 setupMetal];
  }

  return v8;
}

+ (id)generatePipelineDescriptorsForMTKView:(id)a3
{
  v3 = a3;
  v4 = [v3 device];
  [v4 startCollectingPipelineDescriptors];

  v5 = [[TUIKeyboardPathRenderer alloc] initWithMTKView:v3 generatePipelineDescriptors:1];
  v6 = [v3 device];

  v7 = [v6 endCollectingPipelineDescriptors];

  return v7;
}

@end