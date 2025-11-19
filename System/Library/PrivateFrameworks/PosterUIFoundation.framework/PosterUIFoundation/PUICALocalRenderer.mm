@interface PUICALocalRenderer
- (BOOL)archiveRenderingOfRequest:(id)a3 toURL:(id)a4 error:(id *)a5;
- (BOOL)usesCoreImageForState:(PUIRenderState *)a3;
- (PUICALocalRenderer)initWithColorSpace:(CGColorSpace *)a3;
- (PUICALocalRenderer)initWithDevice:(id)a3 colorSpace:(CGColorSpace *)a4;
- (PUICALocalRenderer)initWithDevice:(id)a3 commmandQueue:(id)a4 colorSpace:(CGColorSpace *)a5;
- (id)CIContext;
- (id)newCommandBufferWithCompletion:(id)a3;
- (id)newSurfaceWithSize:(CGSize)a3 colorSpace:(CGColorSpace *)a4 outOptions:(unint64_t *)a5;
- (id)newTextureWithSize:(CGSize)a3 colorSpace:(CGColorSpace *)a4;
- (id)nextFrameHandlerWithCompletion:(id)a3;
- (id)renderCIImage:(id)a3 toSurface:(id)a4 completionHandler:(id)a5;
- (id)renderFrameToTexture:(id)a3 configureWithTransaction:(id)a4 completionHandler:(id)a5;
- (id)renderRequest:(id)a3 error:(id *)a4;
- (id)renderState:(PUIRenderState *)a3 error:(id *)a4;
- (id)rendererForDestination:(id)a3;
- (unint64_t)pixelFormatForBSIOSurfaceOptions:(unint64_t)a3;
- (void)configureWithTransaction:(id)a3;
- (void)dealloc;
- (void)renderRequest:(id)a3 completionHandler:(id)a4;
- (void)renderState:(PUIRenderState *)a3 completionHandler:(id)a4;
- (void)resetState;
- (void)setIdentifier:(id)a3;
- (void)setLogger:(id)a3;
- (void)setRenderState:(PUIRenderState *)a3;
- (void)updateStateWithTransaction:(PUIRenderState *)a3;
@end

@implementation PUICALocalRenderer

- (PUICALocalRenderer)initWithColorSpace:(CGColorSpace *)a3
{
  v5 = MTLCreateSystemDefaultDevice();
  if (v5)
  {
    self = [(PUICALocalRenderer *)self initWithDevice:v5 colorSpace:a3];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PUICALocalRenderer)initWithDevice:(id)a3 colorSpace:(CGColorSpace *)a4
{
  v6 = a3;
  v7 = [v6 newCommandQueue];
  if (v7)
  {
    self = [(PUICALocalRenderer *)self initWithDevice:v6 commmandQueue:v7 colorSpace:a4];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PUICALocalRenderer)initWithDevice:(id)a3 commmandQueue:(id)a4 colorSpace:(CGColorSpace *)a5
{
  v9 = a3;
  v10 = a4;
  v24.receiver = self;
  v24.super_class = PUICALocalRenderer;
  v11 = [(PUICALocalRenderer *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, a3);
    objc_storeStrong(&v12->_commandQueue, a4);
    v13 = PUILogRendering();
    logger = v12->_logger;
    v12->_logger = v13;

    v15 = [[PUIViewportLayer alloc] initWithScale:1.0];
    viewportLayer = v12->_viewportLayer;
    v12->_viewportLayer = v15;

    v12->_encodingLock._os_unfair_lock_opaque = 0;
    identifier = v12->_identifier;
    v12->_identifier = @"PUICALocalRenderer";

    commandQueue = v12->_commandQueue;
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.command-queue", v12->_identifier];
    [(MTLCommandQueue *)commandQueue setLabel:v19];

    if (a5)
    {
      v20 = CGColorSpaceRetain(a5);
    }

    else
    {
      v21 = MGGetBoolAnswer();
      v22 = MEMORY[0x1E695F110];
      if (!v21)
      {
        v22 = MEMORY[0x1E695F1C0];
      }

      v20 = CGColorSpaceCreateWithName(*v22);
    }

    v12->_colorSpace = v20;
  }

  return v12;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  self->_colorSpace = 0;
  v3.receiver = self;
  v3.super_class = PUICALocalRenderer;
  [(PUICALocalRenderer *)&v3 dealloc];
}

- (void)setLogger:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = PUILogRendering();
  }

  logger = self->_logger;
  self->_logger = v5;
}

- (void)setIdentifier:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
  }

  else
  {
    v4 = @"PUICALocalRenderer";
  }

  identifier = self->_identifier;
  self->_identifier = &v4->isa;

  commandQueue = self->_commandQueue;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.command-queue", self->_identifier];
  [(MTLCommandQueue *)commandQueue setLabel:v7];
}

- (id)renderState:(PUIRenderState *)a3 error:(id *)a4
{
  outputPixelSize = a3->outputPixelSize;
  layer = a3->layer;
  scale = a3->scale;
  v7 = layer;
  v24 = v7;
  v8 = a3->image;
  v25 = v8;
  if (self)
  {
    if ([(PUICALocalRenderer *)self usesCoreImageForState:&outputPixelSize])
    {
      v21 = 0;
      v9 = [(PUICALocalRenderer *)self newSurfaceWithSize:self->_colorSpace colorSpace:&v21 outOptions:a3->outputPixelSize.width, a3->outputPixelSize.height];
      v10 = [(PUICALocalRenderer *)self renderCIImage:a3->image toSurface:v9 completionHandler:0];
      [v10 waitUntilCompleted];

      goto LABEL_6;
    }
  }

  else
  {
    v11 = v8;
  }

  v12 = [(PUICALocalRenderer *)self newTextureWithSize:self->_colorSpace colorSpace:a3->outputPixelSize.width, a3->outputPixelSize.height];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __40__PUICALocalRenderer_renderState_error___block_invoke;
  v16[3] = &unk_1F1C6D2C0;
  v16[4] = self;
  v17 = a3->outputPixelSize;
  v13 = a3->layer;
  v18 = a3->scale;
  v19 = v13;
  v20 = a3->image;
  v14 = [(PUICALocalRenderer *)self renderFrameToTexture:v12 configureWithTransaction:v16 completionHandler:0];
  [v14 waitUntilCompleted];
  [(PUICALocalRenderer *)self resetState];
  v9 = [v12 iosurface];
  [v12 setPurgeableState:4];

LABEL_6:

  return v9;
}

void __40__PUICALocalRenderer_renderState_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = *(a1 + 64);
  v8 = *(a1 + 56);
  v4 = v3;
  v9 = v4;
  v5 = *(a1 + 72);
  v10 = v5;
  if (v2)
  {
    [v2 setRenderState:&v7];
  }

  else
  {
    v6 = v5;
  }
}

- (void)renderState:(PUIRenderState *)a3 completionHandler:(id)a4
{
  v6 = a4;
  outputPixelSize = a3->outputPixelSize;
  layer = a3->layer;
  scale = a3->scale;
  v8 = layer;
  v34 = v8;
  v9 = a3->image;
  v35 = v9;
  if (!self)
  {
    v15 = v9;

    goto LABEL_5;
  }

  if (![(PUICALocalRenderer *)self usesCoreImageForState:&outputPixelSize])
  {
LABEL_5:
    v16 = [(PUICALocalRenderer *)self newTextureWithSize:self->_colorSpace colorSpace:a3->outputPixelSize.width, a3->outputPixelSize.height];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3254779904;
    v23[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_2;
    v23[3] = &unk_1F1C6D2C0;
    v23[4] = self;
    v24 = a3->outputPixelSize;
    v17 = a3->layer;
    v25 = a3->scale;
    v26 = v17;
    v27 = a3->image;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_3;
    v19[3] = &unk_1E7854908;
    v12 = v16;
    v20 = v12;
    v21 = self;
    v22 = v6;
    v18 = [(PUICALocalRenderer *)self renderFrameToTexture:v12 configureWithTransaction:v23 completionHandler:v19];

    v14 = v27;
    goto LABEL_6;
  }

  v31 = 0;
  v10 = [(PUICALocalRenderer *)self newSurfaceWithSize:self->_colorSpace colorSpace:&v31 outOptions:a3->outputPixelSize.width, a3->outputPixelSize.height];
  image = a3->image;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke;
  v28[3] = &unk_1E78548E0;
  v30 = v6;
  v12 = v10;
  v29 = v12;
  v13 = [(PUICALocalRenderer *)self renderCIImage:image toSurface:v12 completionHandler:v28];

  v14 = v30;
LABEL_6:
}

void __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = *(a1 + 64);
  v8 = *(a1 + 56);
  v4 = v3;
  v9 = v4;
  v5 = *(a1 + 72);
  v10 = v5;
  if (v2)
  {
    [v2 setRenderState:&v7];
  }

  else
  {
    v6 = v5;
  }
}

void __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) iosurface];
  [*(a1 + 32) setPurgeableState:4];
  [*(a1 + 40) resetState];
  (*(*(a1 + 48) + 16))();
}

- (id)renderRequest:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = renderRequest_error__count++;
  v8 = PUILogCommon();
  v9 = os_signpost_id_generate(v8);

  Current = CFAbsoluteTimeGetCurrent();
  v11 = PUILogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *&buf[4] = v7;
    *&buf[8] = 2082;
    *&buf[10] = "[PUICALocalRenderer renderRequest:error:]";
    _os_log_impl(&dword_1A8C85000, v11, OS_LOG_TYPE_INFO, "(%d) start %{public}s", buf, 0x12u);
  }

  v12 = PUILogCommon();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "sync render request", &unk_1A8D256D3, buf, 2u);
  }

  v14 = os_transaction_create();
  *buf = *MEMORY[0x1E695F060];
  v40 = 0;
  v41 = 0;
  *&buf[16] = 0x3FF0000000000000;
  v32 = 0;
  v15 = [v6 configureState:buf error:&v32];
  v16 = v32;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (a4)
    {
      v21 = v16;
      v20 = 0;
      *a4 = v17;
      goto LABEL_13;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  v28 = *buf;
  v29 = *&buf[16];
  v18 = v40;
  v30 = v18;
  v19 = v41;
  v31 = v19;
  if (!self)
  {
    v22 = v19;

    goto LABEL_12;
  }

  v20 = [(PUICALocalRenderer *)self renderState:&v28 error:a4];
LABEL_13:
  v23 = PUILogCommon();
  v24 = v23;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *v33 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v24, OS_SIGNPOST_INTERVAL_END, v9, "sync render request", &unk_1A8D256D3, v33, 2u);
  }

  v25 = PUILogCommon();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = CFAbsoluteTimeGetCurrent();
    *v33 = 67109634;
    v34 = v7;
    v35 = 2082;
    v36 = "[PUICALocalRenderer renderRequest:error:]";
    v37 = 2048;
    v38 = v26 - Current;
    _os_log_impl(&dword_1A8C85000, v25, OS_LOG_TYPE_INFO, "(%d) end %{public}s; completed in %.4f", v33, 0x1Cu);
  }

  return v20;
}

- (void)renderRequest:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = *MEMORY[0x1E695F060];
  v20 = 0;
  v21 = 0;
  v19 = 0x3FF0000000000000;
  v17 = 0;
  v8 = [v6 configureState:&v18 error:&v17];
  v9 = v17;
  if (v8)
  {
    v13 = v18;
    v14 = v19;
    v10 = v20;
    v15 = v10;
    v11 = v21;
    v16 = v11;
    if (self)
    {
      [(PUICALocalRenderer *)self renderState:&v13 completionHandler:v7];
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    v7[2](v7, 0, v9);
  }
}

- (BOOL)archiveRenderingOfRequest:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v39[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v9 path];
  if (v10)
  {
    v30 = *MEMORY[0x1E695F060];
    v32 = 0;
    v33 = 0;
    v31 = 0x3FF0000000000000;
    v29 = 0;
    v11 = [v8 configureState:&v30 error:&v29];
    v12 = v29;
    v13 = v12;
    if (v11)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3254779904;
      v24[2] = __60__PUICALocalRenderer_archiveRenderingOfRequest_toURL_error___block_invoke;
      v24[3] = &unk_1F1C6D2C0;
      v24[4] = self;
      v25 = v30;
      v26 = v31;
      v27 = v32;
      v28 = v33;
      [(PUICALocalRenderer *)self configureWithTransaction:v24];
      v36 = *MEMORY[0x1E6979630];
      v14 = [*MEMORY[0x1E6982E00] identifier];
      v37 = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

      v16 = CAMLEncodeLayerTreeToPathWithOptions();
      [(PUICALocalRenderer *)self resetState];
      if (a5)
      {
        v17 = v16;
      }

      else
      {
        v17 = 1;
      }

      if ((v17 & 1) == 0)
      {
        v18 = MEMORY[0x1E696ABC0];
        v19 = *MEMORY[0x1E696A598];
        v34[0] = *MEMORY[0x1E696A580];
        v34[1] = v19;
        v35[0] = @"CoreAnimation failed to write .ca file to URL.";
        v35[1] = @"Check CoreAnimation logs.";
        v34[2] = *MEMORY[0x1E696A998];
        v35[2] = v9;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
        *a5 = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:v20];
      }
    }

    else if (a5)
    {
      v22 = v12;
      v16 = 0;
      *a5 = v13;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_16;
  }

  if (a5)
  {
    v21 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A998];
    v39[0] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v21 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v13];
    *a5 = v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v16 = 0;
LABEL_17:

  return v16;
}

void __60__PUICALocalRenderer_archiveRenderingOfRequest_toURL_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  v3 = *(a1 + 64);
  v8 = *(a1 + 56);
  v4 = v3;
  v9 = v4;
  v5 = *(a1 + 72);
  v10 = v5;
  if (v2)
  {
    [v2 setRenderState:&v7];
  }

  else
  {
    v6 = v5;
  }
}

- (void)updateStateWithTransaction:(PUIRenderState *)a3
{
  [MEMORY[0x1E6979518] begin];
  outputPixelSize = a3->outputPixelSize;
  layer = a3->layer;
  scale = a3->scale;
  v6 = layer;
  v11 = v6;
  v7 = a3->image;
  v12 = v7;
  if (self)
  {
    [(PUICALocalRenderer *)self setRenderState:&outputPixelSize];
  }

  else
  {
    v8 = v7;
  }

  [(PUIViewportLayer *)self->_viewportLayer setNeedsLayout:outputPixelSize];
  [(PUIViewportLayer *)self->_viewportLayer layoutIfNeeded];
  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
}

- (void)setRenderState:(PUIRenderState *)a3
{
  v5 = a3->layer;
  v6 = self->_currentRenderState.layer;
  if (v6)
  {
    v7 = [(PUIViewportLayer *)self->_viewportLayer contentLayer];
    [v7 replaceSublayer:v6 with:v5];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v7 = [(PUIViewportLayer *)self->_viewportLayer contentLayer];
    [v7 addSublayer:v5];
  }

LABEL_6:
  [(CALayer *)v5 setNeedsLayout];
  viewportLayer = self->_viewportLayer;
  BSRectWithSize();
  [(PUIViewportLayer *)viewportLayer setFrame:?];
  [(PUIViewportLayer *)self->_viewportLayer setScale:a3->scale];
  [(PUIViewportLayer *)self->_viewportLayer setNeedsLayout];
  [(CALayer *)v5 setNeedsLayout];
  __copy_assignment_8_8_t0w24_s24_s32(&self->_currentRenderState, a3);

  image = a3->image;
}

- (void)resetState
{
  [MEMORY[0x1E6979518] begin];
  layer = self->_currentRenderState.layer;
  self->_currentRenderState.layer = 0;
  v4 = layer;

  [(CALayer *)v4 removeFromSuperlayer];
  [MEMORY[0x1E6979518] commit];
  v5 = MEMORY[0x1E6979518];

  [v5 flush];
}

- (id)CIContext
{
  v16[5] = *MEMORY[0x1E69E9840];
  ciContext = self->_ciContext;
  if (!ciContext)
  {
    v4 = MEMORY[0x1E695F620];
    commandQueue = self->_commandQueue;
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.CoreImage-Context", self->_identifier, *MEMORY[0x1E695F830]];
    v7 = *MEMORY[0x1E695F858];
    v16[0] = v6;
    v16[1] = MEMORY[0x1E695E118];
    v8 = *MEMORY[0x1E695F7F8];
    v15[1] = v7;
    v15[2] = v8;
    v9 = *MEMORY[0x1E695F7F0];
    v16[2] = MEMORY[0x1E695E118];
    v16[3] = MEMORY[0x1E695E110];
    v10 = *MEMORY[0x1E695F818];
    v15[3] = v9;
    v15[4] = v10;
    v16[4] = &unk_1F1C92778;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v12 = [v4 contextWithMTLCommandQueue:commandQueue options:v11];
    v13 = self->_ciContext;
    self->_ciContext = v12;

    ciContext = self->_ciContext;
  }

  return ciContext;
}

- (id)renderCIImage:(id)a3 toSurface:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PUICALocalRenderer *)self CIContext];
  v12 = [objc_alloc(MEMORY[0x1E695F678]) initWithIOSurface:v9];

  v13 = [v11 startTaskToRender:v10 toDestination:v12 error:0];

  v14 = [(PUICALocalRenderer *)self nextFrameHandlerWithCompletion:v8];

  return v14;
}

- (void)configureWithTransaction:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E6979518] begin];
  if (v4)
  {
    v3 = objc_autoreleasePoolPush();
    v4[2]();
    objc_autoreleasePoolPop(v3);
  }

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
}

- (id)renderFrameToTexture:(id)a3 configureWithTransaction:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PUICALocalRenderer *)self rendererForDestination:a3];
  [(PUICALocalRenderer *)self configureWithTransaction:v9];

  [(PUIViewportLayer *)self->_viewportLayer bounds];
  [v10 setBounds:?];
  [v10 nextFrameTime];
  [v10 beginFrameAtTime:0 timeStamp:?];
  [v10 render];
  [v10 endFrame];
  v11 = [(PUICALocalRenderer *)self nextFrameHandlerWithCompletion:v8];

  return v11;
}

- (id)nextFrameHandlerWithCompletion:(id)a3
{
  v4 = [(PUICALocalRenderer *)self newCommandBufferWithCompletion:a3];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.next-frame-waiter", self->_identifier];
  [v4 setLabel:v5];

  [v4 enqueue];
  [v4 commit];

  return v4;
}

- (id)newCommandBufferWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUICALocalRenderer_newCommandBufferWithCompletion___block_invoke;
    v7[3] = &unk_1E7854930;
    v8 = v4;
    [v5 addCompletedHandler:v7];
  }

  return v5;
}

- (id)rendererForDestination:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E6979F08];
  v11[0] = @"kCARendererFlags";
  v11[1] = v4;
  colorSpace = self->_colorSpace;
  v12[0] = &unk_1F1C92790;
  v12[1] = colorSpace;
  v11[2] = *MEMORY[0x1E6979F10];
  v12[2] = self->_commandQueue;
  v6 = MEMORY[0x1E695DF20];
  v7 = a3;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [MEMORY[0x1E6979428] rendererWithMTLTexture:v7 options:v8];
  [v9 setLayer:self->_viewportLayer];
  [v9 setDestination:v7];

  return v9;
}

- (id)newSurfaceWithSize:(CGSize)a3 colorSpace:(CGColorSpace *)a4 outOptions:(unint64_t *)a5
{
  height = a3.height;
  width = a3.width;
  if (CGColorSpaceIsWideGamutRGB(a4))
  {
    Name = CGColorSpaceGetName(a4);
    v10 = 5;
    if (Name == *MEMORY[0x1E695F110])
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  v15 = v10;
  v11 = [MEMORY[0x1E696CDE8] bs_IOSurfaceWithWidth:width height:height options:&v15];
  v12 = CGColorSpaceCopyPropertyList(a4);
  if (v12)
  {
    v13 = v12;
    IOSurfaceSetValue(v11, *MEMORY[0x1E696CEE0], v12);
    CFRelease(v13);
  }

  if (a5)
  {
    *a5 = v15;
  }

  return v11;
}

- (id)newTextureWithSize:(CGSize)a3 colorSpace:(CGColorSpace *)a4
{
  v10 = 0;
  v5 = [(PUICALocalRenderer *)self newSurfaceWithSize:a4 colorSpace:&v10 outOptions:a3.width, a3.height];
  v6 = [(PUICALocalRenderer *)self pixelFormatForBSIOSurfaceOptions:v10];
  v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v6 width:objc_msgSend(v5 height:"width") mipmapped:objc_msgSend(v5, "height"), 0];
  [v7 setAllowGPUOptimizedContents:0];
  [v7 setUsage:5];
  v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v7 iosurface:v5 plane:0];

  return v8;
}

- (unint64_t)pixelFormatForBSIOSurfaceOptions:(unint64_t)a3
{
  v3 = 80;
  v4 = 554;
  if ((a3 & 1) == 0)
  {
    v4 = 550;
  }

  if ((a3 & 2) != 0)
  {
    v3 = v4;
  }

  if ((a3 & 4) != 0)
  {
    return 115;
  }

  else
  {
    return v3;
  }
}

- (BOOL)usesCoreImageForState:(PUIRenderState *)a3
{
  v4 = a3->image != 0;

  return v4;
}

@end