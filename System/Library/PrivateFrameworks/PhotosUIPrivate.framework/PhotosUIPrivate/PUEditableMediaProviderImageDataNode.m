@interface PUEditableMediaProviderImageDataNode
- (PUEditableMediaProviderImageDataNode)initWithAsset:(id)a3 mediaProvider:(id)a4 version:(int64_t)a5;
- (void)_handleLoadedImageData:(id)a3 imageUTI:(id)a4 imageOrientation:(int64_t)a5 info:(id)a6;
- (void)didCancel;
- (void)run;
@end

@implementation PUEditableMediaProviderImageDataNode

- (void)_handleLoadedImageData:(id)a3 imageUTI:(id)a4 imageOrientation:(int64_t)a5 info:(id)a6
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = *MEMORY[0x1E6978E20];
  v12 = a6;
  v13 = [v12 objectForKeyedSubscript:v11];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6978DF0]];

  if (!v13)
  {
    v15 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v14;
      _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_ERROR, "Error fetching the image URL: %@", &v21, 0xCu);
    }
  }

  imageData = self->_imageData;
  self->_imageData = v9;
  v17 = v9;

  imageDataURL = self->_imageDataURL;
  self->_imageDataURL = v13;
  v19 = v13;

  imageDataUTI = self->_imageDataUTI;
  self->_imageDataUTI = v10;

  self->_imageExifOrientation = PLExifOrientationFromImageOrientation();
  [(PXRunNode *)self completeWithError:v14];
}

- (void)run
{
  imageData = self->_imageData;
  self->_imageData = 0;

  imageDataURL = self->_imageDataURL;
  self->_imageDataURL = 0;

  imageDataUTI = self->_imageDataUTI;
  self->_imageDataUTI = 0;

  self->_imageExifOrientation = 0;
  v6 = objc_alloc_init(MEMORY[0x1E6978868]);
  [v6 setDeliveryMode:1];
  [v6 setLoadingMode:0x10000];
  [v6 setVersion:{-[PUEditableMediaProviderImageDataNode version](self, "version")}];
  v7 = [(PUEditableMediaProviderImageDataNode *)self asset];
  v8 = [(PUEditableMediaProviderImageDataNode *)self mediaProvider];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__PUEditableMediaProviderImageDataNode_run__block_invoke;
  v9[3] = &unk_1E7B76E08;
  objc_copyWeak(&v10, &location);
  self->_requestID = [v8 requestImageDataForAsset:v7 options:v6 resultHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__PUEditableMediaProviderImageDataNode_run__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLoadedImageData:v11 imageUTI:v10 imageOrientation:a4 info:v9];
}

- (void)didCancel
{
  v3 = [(PUEditableMediaProviderImageDataNode *)self mediaProvider];
  [v3 cancelImageRequest:self->_requestID];
}

- (PUEditableMediaProviderImageDataNode)initWithAsset:(id)a3 mediaProvider:(id)a4 version:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PUEditableMediaProviderImageDataNode;
  v11 = [(PXRunNode *)&v14 initWithDependencies:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_asset, a3);
    objc_storeStrong(&v12->_mediaProvider, a4);
    v12->_version = a5;
  }

  return v12;
}

@end