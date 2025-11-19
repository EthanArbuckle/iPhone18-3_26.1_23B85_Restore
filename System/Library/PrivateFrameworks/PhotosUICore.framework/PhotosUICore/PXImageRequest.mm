@interface PXImageRequest
- (CGSize)targetSize;
- (PXImageRequest)initWithMediaProvider:(id)a3 asset:(id)a4 targetSize:(CGSize)a5 options:(id)a6;
- (id)description;
- (void)cancel;
- (void)performWithResultHandler:(id)a3;
@end

@implementation PXImageRequest

- (CGSize)targetSize
{
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = PXImageRequest;
  v4 = [(PXImageRequest *)&v15 description];
  v5 = [(PXImageRequest *)self requestID];
  v6 = [(PXImageRequest *)self asset];
  [(PXImageRequest *)self targetSize];
  v7 = NSStringFromCGSize(v17);
  v8 = [(PXImageRequest *)self image];
  v9 = [(PXImageRequest *)self gotFullQualityImage];
  v10 = @"NO";
  if (v9)
  {
    v10 = @"YES";
  }

  v11 = v10;
  v12 = [(PXImageRequest *)self error];
  v13 = [v3 stringWithFormat:@"<%@ requestID:%ld asset:%p targetSize:%@ image:%@ gotFullQuality:%@ error:%@>", v4, v5, v6, v7, v8, v11, v12];

  return v13;
}

- (void)performWithResultHandler:(id)a3
{
  v4 = a3;
  mediaProvider = self->_mediaProvider;
  asset = self->_asset;
  options = self->_options;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PXImageRequest_performWithResultHandler___block_invoke;
  v11[3] = &unk_1E7745E40;
  v11[4] = self;
  v12 = v4;
  width = self->_targetSize.width;
  height = self->_targetSize.height;
  v10 = v4;
  self->_requestID = [(PXUIImageProvider *)mediaProvider requestImageForAsset:asset targetSize:1 contentMode:options options:v11 resultHandler:width, height];
}

void __43__PXImageRequest_performWithResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 objectForKeyedSubscript:*off_1E7722078];
  [v7 setGotFullQualityImage:{objc_msgSend(v8, "BOOLValue") ^ 1}];

  v9 = *(a1 + 32);
  v10 = [v6 objectForKeyedSubscript:*off_1E7722080];
  [v9 setResultIsInCloud:{objc_msgSend(v10, "BOOLValue")}];

  v11 = [v6 objectForKeyedSubscript:*off_1E7722070];
  if (v11)
  {
    [*(a1 + 32) setError:v11];
    v12 = PLUIGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 32);
      v14 = 138412546;
      v15 = v13;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "%@ recieved error:%@", &v14, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancel
{
  v3 = [(PXImageRequest *)self requestID];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXImageRequest *)self mediaProvider];
    [v5 cancelImageRequest:v4];
  }

  self->_canceled = 1;
}

- (PXImageRequest)initWithMediaProvider:(id)a3 asset:(id)a4 targetSize:(CGSize)a5 options:(id)a6
{
  height = a5.height;
  width = a5.width;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PXImageRequest;
  v15 = [(PXImageRequest *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_mediaProvider, a3);
    objc_storeStrong(&v16->_asset, a4);
    v16->_targetSize.width = width;
    v16->_targetSize.height = height;
    objc_storeStrong(&v16->_options, a6);
  }

  return v16;
}

@end