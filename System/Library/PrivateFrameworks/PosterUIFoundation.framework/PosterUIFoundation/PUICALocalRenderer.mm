@interface PUICALocalRenderer
- (BOOL)archiveRenderingOfRequest:(id)request toURL:(id)l error:(id *)error;
- (BOOL)usesCoreImageForState:(PUIRenderState *)state;
- (PUICALocalRenderer)initWithColorSpace:(CGColorSpace *)space;
- (PUICALocalRenderer)initWithDevice:(id)device colorSpace:(CGColorSpace *)space;
- (PUICALocalRenderer)initWithDevice:(id)device commmandQueue:(id)queue colorSpace:(CGColorSpace *)space;
- (id)CIContext;
- (id)newCommandBufferWithCompletion:(id)completion;
- (id)newSurfaceWithSize:(CGSize)size colorSpace:(CGColorSpace *)space outOptions:(unint64_t *)options;
- (id)newTextureWithSize:(CGSize)size colorSpace:(CGColorSpace *)space;
- (id)nextFrameHandlerWithCompletion:(id)completion;
- (id)renderCIImage:(id)image toSurface:(id)surface completionHandler:(id)handler;
- (id)renderFrameToTexture:(id)texture configureWithTransaction:(id)transaction completionHandler:(id)handler;
- (id)renderRequest:(id)request error:(id *)error;
- (id)renderState:(PUIRenderState *)state error:(id *)error;
- (id)rendererForDestination:(id)destination;
- (unint64_t)pixelFormatForBSIOSurfaceOptions:(unint64_t)options;
- (void)configureWithTransaction:(id)transaction;
- (void)dealloc;
- (void)renderRequest:(id)request completionHandler:(id)handler;
- (void)renderState:(PUIRenderState *)state completionHandler:(id)handler;
- (void)resetState;
- (void)setIdentifier:(id)identifier;
- (void)setLogger:(id)logger;
- (void)setRenderState:(PUIRenderState *)state;
- (void)updateStateWithTransaction:(PUIRenderState *)transaction;
@end

@implementation PUICALocalRenderer

- (PUICALocalRenderer)initWithColorSpace:(CGColorSpace *)space
{
  v5 = MTLCreateSystemDefaultDevice();
  if (v5)
  {
    self = [(PUICALocalRenderer *)self initWithDevice:v5 colorSpace:space];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PUICALocalRenderer)initWithDevice:(id)device colorSpace:(CGColorSpace *)space
{
  deviceCopy = device;
  newCommandQueue = [deviceCopy newCommandQueue];
  if (newCommandQueue)
  {
    self = [(PUICALocalRenderer *)self initWithDevice:deviceCopy commmandQueue:newCommandQueue colorSpace:space];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PUICALocalRenderer)initWithDevice:(id)device commmandQueue:(id)queue colorSpace:(CGColorSpace *)space
{
  deviceCopy = device;
  queueCopy = queue;
  v24.receiver = self;
  v24.super_class = PUICALocalRenderer;
  v11 = [(PUICALocalRenderer *)&v24 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_device, device);
    objc_storeStrong(&v12->_commandQueue, queue);
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

    if (space)
    {
      v20 = CGColorSpaceRetain(space);
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

- (void)setLogger:(id)logger
{
  loggerCopy = logger;
  v7 = loggerCopy;
  if (loggerCopy)
  {
    v5 = loggerCopy;
  }

  else
  {
    v5 = PUILogRendering();
  }

  logger = self->_logger;
  self->_logger = v5;
}

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = [identifier copy];
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

- (id)renderState:(PUIRenderState *)state error:(id *)error
{
  outputPixelSize = state->outputPixelSize;
  layer = state->layer;
  scale = state->scale;
  v7 = layer;
  v24 = v7;
  v8 = state->image;
  v25 = v8;
  if (self)
  {
    if ([(PUICALocalRenderer *)self usesCoreImageForState:&outputPixelSize])
    {
      v21 = 0;
      iosurface = [(PUICALocalRenderer *)self newSurfaceWithSize:self->_colorSpace colorSpace:&v21 outOptions:state->outputPixelSize.width, state->outputPixelSize.height];
      v10 = [(PUICALocalRenderer *)self renderCIImage:state->image toSurface:iosurface completionHandler:0];
      [v10 waitUntilCompleted];

      goto LABEL_6;
    }
  }

  else
  {
    v11 = v8;
  }

  v12 = [(PUICALocalRenderer *)self newTextureWithSize:self->_colorSpace colorSpace:state->outputPixelSize.width, state->outputPixelSize.height];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __40__PUICALocalRenderer_renderState_error___block_invoke;
  v16[3] = &unk_1F1C6D2C0;
  v16[4] = self;
  v17 = state->outputPixelSize;
  v13 = state->layer;
  v18 = state->scale;
  v19 = v13;
  v20 = state->image;
  v14 = [(PUICALocalRenderer *)self renderFrameToTexture:v12 configureWithTransaction:v16 completionHandler:0];
  [v14 waitUntilCompleted];
  [(PUICALocalRenderer *)self resetState];
  iosurface = [v12 iosurface];
  [v12 setPurgeableState:4];

LABEL_6:

  return iosurface;
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

- (void)renderState:(PUIRenderState *)state completionHandler:(id)handler
{
  handlerCopy = handler;
  outputPixelSize = state->outputPixelSize;
  layer = state->layer;
  scale = state->scale;
  v8 = layer;
  v34 = v8;
  v9 = state->image;
  v35 = v9;
  if (!self)
  {
    v15 = v9;

    goto LABEL_5;
  }

  if (![(PUICALocalRenderer *)self usesCoreImageForState:&outputPixelSize])
  {
LABEL_5:
    v16 = [(PUICALocalRenderer *)self newTextureWithSize:self->_colorSpace colorSpace:state->outputPixelSize.width, state->outputPixelSize.height];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3254779904;
    v23[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_2;
    v23[3] = &unk_1F1C6D2C0;
    v23[4] = self;
    v24 = state->outputPixelSize;
    v17 = state->layer;
    v25 = state->scale;
    v26 = v17;
    v27 = state->image;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke_3;
    v19[3] = &unk_1E7854908;
    v12 = v16;
    v20 = v12;
    selfCopy = self;
    v22 = handlerCopy;
    v18 = [(PUICALocalRenderer *)self renderFrameToTexture:v12 configureWithTransaction:v23 completionHandler:v19];

    v14 = v27;
    goto LABEL_6;
  }

  v31 = 0;
  v10 = [(PUICALocalRenderer *)self newSurfaceWithSize:self->_colorSpace colorSpace:&v31 outOptions:state->outputPixelSize.width, state->outputPixelSize.height];
  image = state->image;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __52__PUICALocalRenderer_renderState_completionHandler___block_invoke;
  v28[3] = &unk_1E78548E0;
  v30 = handlerCopy;
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

- (id)renderRequest:(id)request error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  requestCopy = request;
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
  v15 = [requestCopy configureState:buf error:&v32];
  v16 = v32;
  v17 = v16;
  if ((v15 & 1) == 0)
  {
    if (error)
    {
      v21 = v16;
      v20 = 0;
      *error = v17;
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

  v20 = [(PUICALocalRenderer *)self renderState:&v28 error:error];
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

- (void)renderRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v18 = *MEMORY[0x1E695F060];
  v20 = 0;
  v21 = 0;
  v19 = 0x3FF0000000000000;
  v17 = 0;
  v8 = [requestCopy configureState:&v18 error:&v17];
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
      [(PUICALocalRenderer *)self renderState:&v13 completionHandler:handlerCopy];
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, v9);
  }
}

- (BOOL)archiveRenderingOfRequest:(id)request toURL:(id)l error:(id *)error
{
  v39[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  lCopy = l;
  path = [lCopy path];
  if (path)
  {
    v30 = *MEMORY[0x1E695F060];
    v32 = 0;
    v33 = 0;
    v31 = 0x3FF0000000000000;
    v29 = 0;
    v11 = [requestCopy configureState:&v30 error:&v29];
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
      identifier = [*MEMORY[0x1E6982E00] identifier];
      v37 = identifier;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

      v16 = CAMLEncodeLayerTreeToPathWithOptions();
      [(PUICALocalRenderer *)self resetState];
      if (error)
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
        v35[2] = lCopy;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
        *error = [v18 errorWithDomain:*MEMORY[0x1E696A250] code:512 userInfo:v20];
      }
    }

    else if (error)
    {
      v22 = v12;
      v16 = 0;
      *error = v13;
    }

    else
    {
      v16 = 0;
    }

    goto LABEL_16;
  }

  if (error)
  {
    v21 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A998];
    v39[0] = lCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    [v21 errorWithDomain:*MEMORY[0x1E696A250] code:4 userInfo:v13];
    *error = v16 = 0;
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

- (void)updateStateWithTransaction:(PUIRenderState *)transaction
{
  [MEMORY[0x1E6979518] begin];
  outputPixelSize = transaction->outputPixelSize;
  layer = transaction->layer;
  scale = transaction->scale;
  v6 = layer;
  v11 = v6;
  v7 = transaction->image;
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

- (void)setRenderState:(PUIRenderState *)state
{
  v5 = state->layer;
  v6 = self->_currentRenderState.layer;
  if (v6)
  {
    contentLayer = [(PUIViewportLayer *)self->_viewportLayer contentLayer];
    [contentLayer replaceSublayer:v6 with:v5];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    contentLayer = [(PUIViewportLayer *)self->_viewportLayer contentLayer];
    [contentLayer addSublayer:v5];
  }

LABEL_6:
  [(CALayer *)v5 setNeedsLayout];
  viewportLayer = self->_viewportLayer;
  BSRectWithSize();
  [(PUIViewportLayer *)viewportLayer setFrame:?];
  [(PUIViewportLayer *)self->_viewportLayer setScale:state->scale];
  [(PUIViewportLayer *)self->_viewportLayer setNeedsLayout];
  [(CALayer *)v5 setNeedsLayout];
  __copy_assignment_8_8_t0w24_s24_s32(&self->_currentRenderState, state);

  image = state->image;
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

- (id)renderCIImage:(id)image toSurface:(id)surface completionHandler:(id)handler
{
  handlerCopy = handler;
  surfaceCopy = surface;
  imageCopy = image;
  cIContext = [(PUICALocalRenderer *)self CIContext];
  v12 = [objc_alloc(MEMORY[0x1E695F678]) initWithIOSurface:surfaceCopy];

  v13 = [cIContext startTaskToRender:imageCopy toDestination:v12 error:0];

  v14 = [(PUICALocalRenderer *)self nextFrameHandlerWithCompletion:handlerCopy];

  return v14;
}

- (void)configureWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  [MEMORY[0x1E6979518] begin];
  if (transactionCopy)
  {
    v3 = objc_autoreleasePoolPush();
    transactionCopy[2]();
    objc_autoreleasePoolPop(v3);
  }

  [MEMORY[0x1E6979518] commit];
  [MEMORY[0x1E6979518] flush];
}

- (id)renderFrameToTexture:(id)texture configureWithTransaction:(id)transaction completionHandler:(id)handler
{
  handlerCopy = handler;
  transactionCopy = transaction;
  v10 = [(PUICALocalRenderer *)self rendererForDestination:texture];
  [(PUICALocalRenderer *)self configureWithTransaction:transactionCopy];

  [(PUIViewportLayer *)self->_viewportLayer bounds];
  [v10 setBounds:?];
  [v10 nextFrameTime];
  [v10 beginFrameAtTime:0 timeStamp:?];
  [v10 render];
  [v10 endFrame];
  v11 = [(PUICALocalRenderer *)self nextFrameHandlerWithCompletion:handlerCopy];

  return v11;
}

- (id)nextFrameHandlerWithCompletion:(id)completion
{
  v4 = [(PUICALocalRenderer *)self newCommandBufferWithCompletion:completion];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.next-frame-waiter", self->_identifier];
  [v4 setLabel:v5];

  [v4 enqueue];
  [v4 commit];

  return v4;
}

- (id)newCommandBufferWithCompletion:(id)completion
{
  completionCopy = completion;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (completionCopy)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __53__PUICALocalRenderer_newCommandBufferWithCompletion___block_invoke;
    v7[3] = &unk_1E7854930;
    v8 = completionCopy;
    [commandBuffer addCompletedHandler:v7];
  }

  return commandBuffer;
}

- (id)rendererForDestination:(id)destination
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
  destinationCopy = destination;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [MEMORY[0x1E6979428] rendererWithMTLTexture:destinationCopy options:v8];
  [v9 setLayer:self->_viewportLayer];
  [v9 setDestination:destinationCopy];

  return v9;
}

- (id)newSurfaceWithSize:(CGSize)size colorSpace:(CGColorSpace *)space outOptions:(unint64_t *)options
{
  height = size.height;
  width = size.width;
  if (CGColorSpaceIsWideGamutRGB(space))
  {
    Name = CGColorSpaceGetName(space);
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
  v12 = CGColorSpaceCopyPropertyList(space);
  if (v12)
  {
    v13 = v12;
    IOSurfaceSetValue(v11, *MEMORY[0x1E696CEE0], v12);
    CFRelease(v13);
  }

  if (options)
  {
    *options = v15;
  }

  return v11;
}

- (id)newTextureWithSize:(CGSize)size colorSpace:(CGColorSpace *)space
{
  v10 = 0;
  v5 = [(PUICALocalRenderer *)self newSurfaceWithSize:space colorSpace:&v10 outOptions:size.width, size.height];
  v6 = [(PUICALocalRenderer *)self pixelFormatForBSIOSurfaceOptions:v10];
  v7 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:v6 width:objc_msgSend(v5 height:"width") mipmapped:objc_msgSend(v5, "height"), 0];
  [v7 setAllowGPUOptimizedContents:0];
  [v7 setUsage:5];
  v8 = [(MTLDevice *)self->_device newTextureWithDescriptor:v7 iosurface:v5 plane:0];

  return v8;
}

- (unint64_t)pixelFormatForBSIOSurfaceOptions:(unint64_t)options
{
  v3 = 80;
  v4 = 554;
  if ((options & 1) == 0)
  {
    v4 = 550;
  }

  if ((options & 2) != 0)
  {
    v3 = v4;
  }

  if ((options & 4) != 0)
  {
    return 115;
  }

  else
  {
    return v3;
  }
}

- (BOOL)usesCoreImageForState:(PUIRenderState *)state
{
  v4 = state->image != 0;

  return v4;
}

@end