@interface PUImageDataRenderNode
- (BOOL)_isInputValid;
- (CGSize)baseImageSize;
- (CGSize)renderedImageSize;
- (PUImageDataRenderNode)initWithImageInfoNode:(id)node videoURLNode:(id)lNode compositionController:(id)controller livePhotoPairingIdentifier:(id)identifier jpegCompression:(double)compression;
- (id)_editSource;
- (void)_handleRenderCompletedWithJpegData:(id)data baseSize:(CGSize)size editedSize:(CGSize)editedSize;
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

- (void)_handleRenderCompletedWithJpegData:(id)data baseSize:(CGSize)size editedSize:(CGSize)editedSize
{
  self->_renderedImageSize = editedSize;
  self->_baseImageSize = size;
  objc_storeStrong(&self->_imageData, data);

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
  _editSource = [(PUImageDataRenderNode *)self _editSource];
  if (_editSource)
  {
    v7 = [objc_alloc(MEMORY[0x1E69BE658]) initWithEditSource:_editSource];
    compositionController = [(PUImageDataRenderNode *)self compositionController];
    [v7 setCompositionController:compositionController];

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
    imageDataNode = [(PUImageDataRenderNode *)self imageDataNode];
    imageDataURL = [imageDataNode imageDataURL];

    imageDataNode2 = [(PUImageDataRenderNode *)self imageDataNode];
    imageDataUTI = [imageDataNode2 imageDataUTI];

    imageDataNode3 = [(PUImageDataRenderNode *)self imageDataNode];
    useEmbeddedPreview = [imageDataNode3 useEmbeddedPreview];

    videoURL = [(PUVideoURLNode *)self->_videoURLNode videoURL];

    if (videoURL)
    {
      if (self->_livePhotoPairingIdentifier)
      {
        v10 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:imageDataURL type:imageDataUTI image:0 useEmbeddedPreview:useEmbeddedPreview];
        v11 = objc_alloc(MEMORY[0x1E69BE880]);
        videoURL2 = [(PUVideoURLNode *)self->_videoURLNode videoURL];
        v13 = [v11 initWithVideoURL:videoURL2];

        v14 = [objc_alloc(MEMORY[0x1E69BE518]) initWithPhotoSource:v10 videoComplement:v13];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E69BE880]);
        videoURL3 = [(PUVideoURLNode *)self->_videoURLNode videoURL];
        v14 = [v15 initWithVideoURL:videoURL3];
      }
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x1E69BE660]) initWithURL:imageDataURL type:imageDataUTI image:0 useEmbeddedPreview:useEmbeddedPreview];
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
  imageDataNode = [(PUImageDataRenderNode *)self imageDataNode];
  imageDataURL = [imageDataNode imageDataURL];

  imageDataNode2 = [(PUImageDataRenderNode *)self imageDataNode];
  [imageDataNode2 imageExifOrientation];

  if (imageDataURL)
  {
    IsValid = PLOrientationIsValid();
  }

  else
  {
    IsValid = 0;
  }

  videoURLNode = [(PUImageDataRenderNode *)self videoURLNode];
  videoURL = [videoURLNode videoURL];
  if (videoURL)
  {
    livePhotoPairingIdentifier = [(PUImageDataRenderNode *)self livePhotoPairingIdentifier];
    v10 = livePhotoPairingIdentifier == 0;
  }

  else
  {
    v10 = 0;
  }

  return v10 | IsValid;
}

- (PUImageDataRenderNode)initWithImageInfoNode:(id)node videoURLNode:(id)lNode compositionController:(id)controller livePhotoPairingIdentifier:(id)identifier jpegCompression:(double)compression
{
  nodeCopy = node;
  lNodeCopy = lNode;
  controllerCopy = controller;
  identifierCopy = identifier;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];

    if (nodeCopy)
    {
      goto LABEL_3;
    }

LABEL_11:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"imageInfoNode"}];

    goto LABEL_3;
  }

  if (!nodeCopy)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (compression > 1.0 || compression < 0.0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUImageDataRenderNode.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"jpegCompression <= 1 && jpegCompression >= 0"}];
  }

  v18 = [MEMORY[0x1E695DF70] arrayWithObject:nodeCopy];
  v19 = v18;
  if (lNodeCopy)
  {
    [v18 addObject:lNodeCopy];
  }

  v29.receiver = self;
  v29.super_class = PUImageDataRenderNode;
  v20 = [(PXRunNode *)&v29 initWithDependencies:v19];
  if (v20)
  {
    v21 = [controllerCopy copy];
    compositionController = v20->_compositionController;
    v20->_compositionController = v21;

    objc_storeStrong(&v20->_imageDataNode, node);
    v20->_jpegCompression = compression;
    v23 = [identifierCopy copy];
    livePhotoPairingIdentifier = v20->_livePhotoPairingIdentifier;
    v20->_livePhotoPairingIdentifier = v23;

    objc_storeStrong(&v20->_videoURLNode, lNode);
  }

  return v20;
}

@end