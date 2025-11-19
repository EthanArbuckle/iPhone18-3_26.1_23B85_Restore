@interface _PXVisualIntelligenceRequest
+ (id)teardownQueue;
- (VKCImageAnalyzerRequest)vkImageRequest;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 cgImage:(CGImage *)a4 orientation:(int64_t)a5 requestID:(int)a6 resultHandler:(id)a7;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 image:(id)a4 requestID:(int)a5 resultHandler:(id)a6;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(int64_t)a5 requestID:(int)a6 resultHandler:(id)a7;
- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 requestID:(int)a4 resultHandler:(id)a5;
- (void)dealloc;
@end

@implementation _PXVisualIntelligenceRequest

- (VKCImageAnalyzerRequest)vkImageRequest
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(_PXVisualIntelligenceRequest *)self asset];
  v4 = [(_PXVisualIntelligenceRequest *)self asset];
  v5 = [PXVisualIntelligenceManager canRequestVKImageAnalysisForAsset:v4];

  if (v5)
  {
    v6 = [v3 pixelWidth];
    v7 = [v3 pixelHeight];
    if ((PFIsSpotlight() & 1) != 0 || PLIsPeopleViewService())
    {
      v8 = -81;
    }

    else
    {
      v8 = -65;
    }

    v16 = [v3 localIdentifier];
    v17 = [v3 photoLibrary];
    v18 = [v17 photoLibraryURL];

    v15 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithLocalIdentifier:v16 photoLibraryURL:v18 imageSize:v8 requestType:{v6, v7}];
    [v15 setImageSource:0];

    goto LABEL_20;
  }

  if ([v3 mediaType] == 2)
  {
    v9 = [(_PXVisualIntelligenceRequest *)self pixelBuffer];
    if (v9)
    {
      v10 = v9;
      v11 = [(_PXVisualIntelligenceRequest *)self cgImageOrPixelBufferOrientation];
      v12 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithCVPixelBuffer:v10 orientation:v11 requestType:-65];
    }

    else
    {
      v19 = [(_PXVisualIntelligenceRequest *)self cgImage];
      v20 = [(_PXVisualIntelligenceRequest *)self cgImageOrPixelBufferOrientation];
      if (v19)
      {
        v21 = v20;
      }

      else
      {
        v22 = [(_PXVisualIntelligenceRequest *)self image];
        v19 = [v22 CGImage];

        if (!v19)
        {
          v24 = PLVisualIntelligenceGetLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = [(_PXVisualIntelligenceRequest *)self asset];
            v26 = 138412290;
            v27 = v25;
            _os_log_impl(&dword_1A3C1C000, v24, OS_LOG_TYPE_ERROR, "No video frame to make visual image analyze request, asset: %@", &v26, 0xCu);
          }

          v15 = 0;
          goto LABEL_19;
        }

        v21 = 0;
      }

      v12 = [objc_alloc(MEMORY[0x1E69DF9F8]) initWithCGImage:v19 orientation:v21 requestType:-65];
    }

    v15 = v12;
LABEL_19:
    [v15 setImageSource:2];
    goto LABEL_20;
  }

  v13 = PLVisualIntelligenceGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = [(_PXVisualIntelligenceRequest *)self asset];
    v26 = 138412290;
    v27 = v14;
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

- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 cgImage:(CGImage *)a4 orientation:(int64_t)a5 requestID:(int)a6 resultHandler:(id)a7
{
  v9 = [(_PXVisualIntelligenceRequest *)self initWithAsset:a3 requestID:*&a6 resultHandler:a7];
  if (v9)
  {
    v9->_cgImage = CGImageRetain(a4);
    v9->_cgImageOrPixelBufferOrientation = a5;
  }

  return v9;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 pixelBuffer:(__CVBuffer *)a4 orientation:(int64_t)a5 requestID:(int)a6 resultHandler:(id)a7
{
  v9 = [(_PXVisualIntelligenceRequest *)self initWithAsset:a3 requestID:*&a6 resultHandler:a7];
  if (v9)
  {
    v9->_pixelBuffer = CVPixelBufferRetain(a4);
    v9->_cgImageOrPixelBufferOrientation = a5;
  }

  return v9;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 image:(id)a4 requestID:(int)a5 resultHandler:(id)a6
{
  v7 = *&a5;
  v11 = a4;
  v12 = [(_PXVisualIntelligenceRequest *)self initWithAsset:a3 requestID:v7 resultHandler:a6];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_image, a4);
  }

  return v13;
}

- (_PXVisualIntelligenceRequest)initWithAsset:(id)a3 requestID:(int)a4 resultHandler:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _PXVisualIntelligenceRequest;
  v11 = [(_PXVisualIntelligenceRequest *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, a3);
    v12->_requestID = a4;
    v13 = [v10 copy];
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