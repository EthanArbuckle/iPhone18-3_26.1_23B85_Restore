@interface PISliderNetBaseJob
- (BOOL)complete:(id *)complete;
- (BOOL)render:(id *)render;
- (id)scalePolicy;
@end

@implementation PISliderNetBaseJob

- (BOOL)complete:(id *)complete
{
  renderTask = self->_renderTask;
  v24 = 0;
  v6 = [(CIRenderTask *)renderTask waitUntilCompletedAndReturnError:&v24];
  v7 = v24;
  if (v6)
  {
    v8 = self->_renderTask;
    self->_renderTask = 0;

    request = [(NURenderJob *)self request];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    storage = self->_storage;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__PISliderNetBaseJob_complete___block_invoke;
    v15[3] = &unk_1E82AAAD8;
    request2 = request;
    v16 = request2;
    selfCopy = self;
    v18 = &v20;
    completeCopy = complete;
    [(NUPurgeableStorage *)storage useAsCVPixelBufferWithBlock:v15];
    v12 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = MEMORY[0x1E69B3A48];
    request2 = [(NURenderJob *)self request];
    [v13 errorWithCode:1 reason:@"Failed to render thumbnail" object:request2 underlyingError:v7];
    *complete = v12 = 0;
  }

  return v12 & 1;
}

uint64_t __31__PISliderNetBaseJob_complete___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CVPixelBuffer];
  v4 = [*(a1 + 32) colorSpace];
  [v4 CGColorSpace];
  CVImageBufferSetColorSpace();

  result = [*(a1 + 40) networkProcessingWithResultingPixelBuffer:v3 error:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)render:(id *)render
{
  renderNode = [(NURenderJob *)self renderNode];
  v6 = [renderNode outputImage:render];

  bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
  sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  surfaceStoragePool = [mEMORY[0x1E69B3A58] surfaceStoragePool];

  imageSize = [(NURenderJob *)self imageSize];
  v13 = [surfaceStoragePool newStorageWithSize:imageSize format:{v12, bGRA8}];
  storage = self->_storage;
  self->_storage = v13;

  v28[0] = 0;
  v28[1] = 0;
  v28[2] = [(NURenderJob *)self imageSize];
  v28[3] = v15;
  v16 = [MEMORY[0x1E69B3C10] regionWithRect:v28];
  v17 = self->_storage;
  imageSize2 = [(NURenderJob *)self imageSize];
  v27 = 0;
  v20 = [(NURenderJob *)self renderImage:v6 into:v17 colorSpace:sRGBColorSpace roi:v16 imageSize:imageSize2 error:v19, &v27];
  v21 = v27;
  renderTask = self->_renderTask;
  self->_renderTask = v20;

  v23 = self->_renderTask;
  if (!v23)
  {
    v24 = MEMORY[0x1E69B3A48];
    request = [(NURenderJob *)self request];
    *render = [v24 errorWithCode:1 reason:@"Failed to create CIRenderTask for thumbnail render" object:request underlyingError:*render];
  }

  return v23 != 0;
}

- (id)scalePolicy
{
  request = [(NURenderJob *)self request];
  scalePolicy = [request scalePolicy];

  return scalePolicy;
}

@end