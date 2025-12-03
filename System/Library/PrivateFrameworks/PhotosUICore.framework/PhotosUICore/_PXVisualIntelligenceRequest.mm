@interface _PXVisualIntelligenceRequest
+ (id)teardownQueue;
- (VKCImageAnalyzerRequest)vkImageRequest;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset cgImage:(CGImage *)image orientation:(int64_t)orientation requestID:(int)d resultHandler:(id)handler;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset image:(id)image requestID:(int)d resultHandler:(id)handler;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestID:(int)d resultHandler:(id)handler;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset requestID:(int)d resultHandler:(id)handler;
- (void)dealloc;
@end

@implementation _PXVisualIntelligenceRequest

- (VKCImageAnalyzerRequest)vkImageRequest
{
  v28 = *MEMORY[0x1E69E9840];
  asset = [(_PXVisualIntelligenceRequest *)self asset];
  asset2 = [(_PXVisualIntelligenceRequest *)self asset];
  v5 = [PXVisualIntelligenceManager canRequestVKImageAnalysisForAsset:asset2];

  if (v5)
  {
    pixelWidth = [asset pixelWidth];
    pixelHeight = [asset pixelHeight];
    if ((PFIsSpotlight() & 1) != 0 || PLIsPeopleViewService())
    {
      v8 = -81;
    }

    else
    {
      v8 = -65;
    }

    localIdentifier = [asset localIdentifier];
    photoLibrary = [asset photoLibrary];
    photoLibraryURL = [photoLibrary photoLibraryURL];

    v15 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithLocalIdentifier:localIdentifier photoLibraryURL:photoLibraryURL imageSize:v8 requestType:{pixelWidth, pixelHeight}];
    [v15 setImageSource:0];

    goto LABEL_20;
  }

  if ([asset mediaType] == 2)
  {
    pixelBuffer = [(_PXVisualIntelligenceRequest *)self pixelBuffer];
    if (pixelBuffer)
    {
      v10 = pixelBuffer;
      cgImageOrPixelBufferOrientation = [(_PXVisualIntelligenceRequest *)self cgImageOrPixelBufferOrientation];
      v12 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithCVPixelBuffer:v10 orientation:cgImageOrPixelBufferOrientation requestType:-65];
    }

    else
    {
      cgImage = [(_PXVisualIntelligenceRequest *)self cgImage];
      cgImageOrPixelBufferOrientation2 = [(_PXVisualIntelligenceRequest *)self cgImageOrPixelBufferOrientation];
      if (cgImage)
      {
        v21 = cgImageOrPixelBufferOrientation2;
      }

      else
      {
        image = [(_PXVisualIntelligenceRequest *)self image];
        cgImage = [image CGImage];

        if (!cgImage)
        {
          v24 = PLVisualIntelligenceGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            asset3 = [(_PXVisualIntelligenceRequest *)self asset];
            v26 = 138412290;
            v27 = asset3;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "No video frame to make visual image analyze request, asset: %@", &v26, 0xCu);
          }

          v15 = 0;
          goto LABEL_19;
        }

        v21 = 0;
      }

      v12 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithCGImage:cgImage orientation:v21 requestType:-65];
    }

    v15 = v12;
LABEL_19:
    [v15 setImageSource:2];
    goto LABEL_20;
  }

  v13 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    asset4 = [(_PXVisualIntelligenceRequest *)self asset];
    v26 = 138412290;
    v27 = asset4;
    _os_log_impl(&dword_1A3C1C000, v13, OS_LOG_TYPE_ERROR, "Must be PHAsset of image (excludes GIF) or LivePhoto to make visual image analyze request, asset: %@", &v26, 0xCu);
  }

  v15 = 0;
LABEL_20:

  return v15;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_pixelBuffer);
  CGImageRelease(self->_cgImage);
  v3 = +[_PXVisualIntelligenceRequest teardownQueue];
  dispatch_async(v3, &__block_literal_global_135448);

  v4.receiver = self;
  v4.super_class = _PXVisualIntelligenceRequest;
  [(_PXVisualIntelligenceRequest *)&v4 dealloc];
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset cgImage:(CGImage *)image orientation:(int64_t)orientation requestID:(int)d resultHandler:(id)handler
{
  v9 = [(_PXVisualIntelligenceRequest *)self initWithAsset:asset requestID:*&d resultHandler:handler];
  if (v9)
  {
    v9->_cgImage = CGImageRetain(image);
    v9->_cgImageOrPixelBufferOrientation = orientation;
  }

  return v9;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset pixelBuffer:(__CVBuffer *)buffer orientation:(int64_t)orientation requestID:(int)d resultHandler:(id)handler
{
  v9 = [(_PXVisualIntelligenceRequest *)self initWithAsset:asset requestID:*&d resultHandler:handler];
  if (v9)
  {
    v9->_pixelBuffer = CVPixelBufferRetain(buffer);
    v9->_cgImageOrPixelBufferOrientation = orientation;
  }

  return v9;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset image:(id)image requestID:(int)d resultHandler:(id)handler
{
  v7 = *&d;
  imageCopy = image;
  v12 = [(_PXVisualIntelligenceRequest *)self initWithAsset:asset requestID:v7 resultHandler:handler];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, image);
  }

  return v13;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)asset requestID:(int)d resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = _PXVisualIntelligenceRequest;
  v11 = [(_PXVisualIntelligenceRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, asset);
    v12->_requestID = d;
    v13 = [handlerCopy copy];
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v13;
  }

  return v12;
}

+ (id)teardownQueue
{
  if (teardownQueue_onceToken != -1)
  {
    dispatch_once(&teardownQueue_onceToken, &__block_literal_global_30);
  }

  v3 = teardownQueue_queue;

  return v3;
}

@end