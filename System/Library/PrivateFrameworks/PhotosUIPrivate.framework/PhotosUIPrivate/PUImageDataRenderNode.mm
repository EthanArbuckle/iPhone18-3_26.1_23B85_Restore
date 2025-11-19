@interface PUImageDataRenderNode
- (BOOL)_isInputValid;
- (CGSize)baseImageSize;
- (CGSize)renderedImageSize;
- (PUImageDataRenderNode)initWithImageInfoNode:(id)a3 videoURLNode:(id)a4 compositionController:(id)a5 livePhotoPairingIdentifier:(id)a6 jpegCompression:(double)a7;
- (id)_editSource;
- (void)_handleRenderCompletedWithJpegData:(id)a3 baseSize:(CGSize)a4 editedSize:(CGSize)a5;
- (void)run;
@end

@implementation PUImageDataRenderNode

- (CGSize)renderedImageSize
{
  width = self->_renderedImageSize.width;
  height = self->_renderedImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)baseImageSize
{
  width = self->_baseImageSize.width;
  height = self->_baseImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_handleRenderCompletedWithJpegData:(id)a3 baseSize:(CGSize)a4 editedSize:(CGSize)a5
{
  self->_renderedImageSize = a5;
  self->_baseImageSize = a4;
  objc_storeStrong(&self->_imageData, a3);

  [(PXRunNode *)self complete];
}

- (void)run
{
  v3 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B36F3000, v3, OS_LOG_TYPE_DEFAULT, "PUImageDataRenderNode render start...", buf, 2u);
  }

  imageData = self->_imageData;
  self->_imageData = 0;

  v5 = *MEMORY[0x1E695F060];
  self->_renderedImageSize = *MEMORY[0x1E695F060];
  self->_baseImageSize = v5;
  v6 = [(PUImageDataRenderNode *)self _editSource];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:v6];
    v8 = [(PUImageDataRenderNode *)self compositionController];
    [v7 setCompositionController:v8];

    [(PUImageDataRenderNode *)self jpegCompression];
    v10 = v9;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v12 = v11;
    objc_initWeak(buf, self);
    livePhotoPairingIdentifier = self->_livePhotoPairingIdentifier;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __28__PUImageDataRenderNode_run__block_invoke;
    v14[3] = &unk_1E7B77420;
    v15[1] = v12;
    objc_copyWeak(v15, buf);
    [v7 generateJPEGImageDataWithCompressionQuality:livePhotoPairingIdentifier livePhotoPairingIdentifier:v14 completionHandler:v10];
    objc_destroyWeak(v15);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PXRunNode *)self cancelWithError:0];
  }
}

void __28__PUImageDataRenderNode_run__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E695DF00];
  v12 = a2;
  [v11 timeIntervalSinceReferenceDate];
  v14 = v13;
  v15 = *(a1 + 40);
  v16 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    v19 = v14 - v15;
    _os_log_impl(&dword_1B36F3000, v16, OS_LOG_TYPE_DEFAULT, "PUImageDataRenderNode render time: %f sec", &v18, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRenderCompletedWithJpegData:v12 baseSize:a3 editedSize:{a4, a5, a6}];
}

- (id)_editSource
{
  if ([(PUImageDataRenderNode *)self _isInputValid])
  {
    v3 = [(PUImageDataRenderNode *)self imageDataNode];
    v4 = [v3 imageDataURL];

    v5 = [(PUImageDataRenderNode *)self imageDataNode];
    v6 = [v5 imageDataUTI];

    v7 = [(PUImageDataRenderNode *)self imageDataNode];
    v8 = [v7 useEmbeddedPreview];

    v9 = [(PUVideoURLNode *)self->_videoURLNode videoURL];

    if (v9)
    {
      if (self->_livePhotoPairingIdentifier)
      {
        v10 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:v4 type:v6 image:0 useEmbeddedPreview:v8];
        v11 = objc_alloc(MEMORY[0x1E69BE880]);
        v12 = [(PUVideoURLNode *)self->_videoURLNode videoURL];
        v13 = [v11 initWithVideoURL:v12];

        v14 = [objc_alloc(MEMORY[0x1E69BE518]) initWithPhotoSource:v10 videoComplement:v13];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E69BE880]);
        v16 = [(PUVideoURLNode *)self->_videoURLNode videoURL];
        v14 = [v15 initWithVideoURL:v16];
      }
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:v4 type:v6 image:0 useEmbeddedPreview:v8];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_isInputValid
{
  v3 = [(PUImageDataRenderNode *)self imageDataNode];
  v4 = [v3 imageDataURL];

  v5 = [(PUImageDataRenderNode *)self imageDataNode];
  [v5 imageExifOrientation];

  if (v4)
  {
    IsValid = PLOrientationIsValid();
  }

  else
  {
    IsValid = 0;
  }

  v7 = [(PUImageDataRenderNode *)self videoURLNode];
  v8 = [v7 videoURL];
  if (v8)
  {
    v9 = [(PUImageDataRenderNode *)self livePhotoPairingIdentifier];
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10 | IsValid;
}

- (PUImageDataRenderNode)initWithImageInfoNode:(id)a3 videoURLNode:(id)a4 compositionController:(id)a5 livePhotoPairingIdentifier:(id)a6 jpegCompression:(double)a7
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if (!v16)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_11:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"imageInfoNode"}];

    goto LABEL_3;
  }

  if (!v14)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a7 > 1.0 || a7 < 0.0)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"jpegCompression <= 1 && jpegCompression >= 0"}];
  }

  v18 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
  v19 = v18;
  if (v15)
  {
    [v18 addObject:v15];
  }

  v29.receiver = self;
  v29.super_class = PUImageDataRenderNode;
  v20 = [(PXRunNode *)&v29 initWithDependencies:v19];
  if (v20)
  {
    v21 = [v16 copy];
    compositionController = v20->_compositionController;
    v20->_compositionController = v21;

    objc_storeStrong(&v20->_imageDataNode, a3);
    v20->_jpegCompression = a7;
    v23 = [v17 copy];
    livePhotoPairingIdentifier = v20->_livePhotoPairingIdentifier;
    v20->_livePhotoPairingIdentifier = v23;

    objc_storeStrong(&v20->_videoURLNode, a4);
  }

  return v20;
}

@end