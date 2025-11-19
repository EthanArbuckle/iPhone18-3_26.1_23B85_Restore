@interface PISliderNetBaseJob
- (BOOL)complete:(id *)a3;
- (BOOL)render:(id *)a3;
- (id)scalePolicy;
@end

@implementation PISliderNetBaseJob

- (BOOL)complete:(id *)a3
{
  renderTask = self->_renderTask;
  v24 = 0;
  v6 = [(CIRenderTask *)renderTask waitUntilCompletedAndReturnError:&v24];
  v7 = v24;
  if (v6)
  {
    v8 = self->_renderTask;
    self->_renderTask = 0;

    v9 = [(NURenderJob *)self request];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    storage = self->_storage;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __31__PISliderNetBaseJob_complete___block_invoke;
    v15[3] = &unk_1E82AAAD8;
    v11 = v9;
    v16 = v11;
    v17 = self;
    v18 = &v20;
    v19 = a3;
    [(NUPurgeableStorage *)storage useAsCVPixelBufferWithBlock:v15];
    v12 = *(v21 + 24);

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = MEMORY[0x1E69B3A48];
    v11 = [(NURenderJob *)self request];
    [v13 errorWithCode:1 reason:@"Failed to render thumbnail" object:v11 underlyingError:v7];
    *a3 = v12 = 0;
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

- (BOOL)render:(id *)a3
{
  v5 = [(NURenderJob *)self renderNode];
  v6 = [v5 outputImage:a3];

  v7 = [MEMORY[0x1E69B3BF0] BGRA8];
  v8 = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  v9 = [MEMORY[0x1E69B3A58] sharedFactory];
  v10 = [v9 surfaceStoragePool];

  v11 = [(NURenderJob *)self imageSize];
  v13 = [v10 newStorageWithSize:v11 format:{v12, v7}];
  storage = self->_storage;
  self->_storage = v13;

  v28[0] = 0;
  v28[1] = 0;
  v28[2] = [(NURenderJob *)self imageSize];
  v28[3] = v15;
  v16 = [MEMORY[0x1E69B3C10] regionWithRect:v28];
  v17 = self->_storage;
  v18 = [(NURenderJob *)self imageSize];
  v27 = 0;
  v20 = [(NURenderJob *)self renderImage:v6 into:v17 colorSpace:v8 roi:v16 imageSize:v18 error:v19, &v27];
  v21 = v27;
  renderTask = self->_renderTask;
  self->_renderTask = v20;

  v23 = self->_renderTask;
  if (!v23)
  {
    v24 = MEMORY[0x1E69B3A48];
    v25 = [(NURenderJob *)self request];
    *a3 = [v24 errorWithCode:1 reason:@"Failed to create CIRenderTask for thumbnail render" object:v25 underlyingError:*a3];
  }

  return v23 != 0;
}

- (id)scalePolicy
{
  v2 = [(NURenderJob *)self request];
  v3 = [v2 scalePolicy];

  return v3;
}

@end