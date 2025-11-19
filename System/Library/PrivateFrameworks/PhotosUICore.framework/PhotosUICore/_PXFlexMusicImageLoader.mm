@interface _PXFlexMusicImageLoader
- (CGSize)maxSize;
- (_PXFlexMusicImageLoader)initWithArtworkAsset:(id)a3 maxSize:(CGSize)a4 sharedImageLoadingQueue:(id)a5;
- (void)_handleDownloadCompleted:(BOOL)a3 error:(id)a4;
- (void)dealloc;
- (void)startWithCompletion:(id)a3;
@end

@implementation _PXFlexMusicImageLoader

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = _PXFlexMusicImageLoader;
  [(_PXFlexMusicImageLoader *)&v3 dealloc];
}

- (void)_handleDownloadCompleted:(BOOL)a3 error:(id)a4
{
  v5 = a4;
  v6 = +[PXFlexMusicLibrary sharedLibrary];
  v7 = [(_PXFlexMusicImageLoader *)self artworkAsset];
  v8 = [v7 audioAsset];
  v9 = [v6 localURLForAsset:v8 resourceType:1];

  if (!v9)
  {
    v5;
    px_dispatch_on_main_queue();
  }

  v10 = [(_PXFlexMusicImageLoader *)self sharedImageLoadingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke;
  block[3] = &unk_1E774C620;
  v12 = v9;
  v13 = self;
  dispatch_async(v10, block);
}

- (void)startWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(_PXFlexMusicImageLoader *)self completionHandler];

  if (v6)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"self.completionHandler == nil"}];
  }

  [(_PXFlexMusicImageLoader *)self setCompletionHandler:v5];
  objc_initWeak(&location, self);
  v7 = [(_PXFlexMusicImageLoader *)self downloader];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___PXFlexMusicImageLoader_startWithCompletion___block_invoke;
  v9[3] = &unk_1E7749D00;
  objc_copyWeak(&v10, &location);
  [v7 startWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (_PXFlexMusicImageLoader)initWithArtworkAsset:(id)a3 maxSize:(CGSize)a4 sharedImageLoadingQueue:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = _PXFlexMusicImageLoader;
  v12 = [(_PXFlexMusicImageLoader *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkAsset, a3);
    v13->_maxSize.width = width;
    v13->_maxSize.height = height;
    objc_storeStrong(&v13->_sharedImageLoadingQueue, a5);
    v14 = [PXFlexMusicDownloader alloc];
    v15 = [v10 audioAsset];
    v16 = [(PXFlexMusicDownloader *)v14 initWithAsset:v15 resource:1];
    downloader = v13->_downloader;
    v13->_downloader = v16;
  }

  return v13;
}

@end