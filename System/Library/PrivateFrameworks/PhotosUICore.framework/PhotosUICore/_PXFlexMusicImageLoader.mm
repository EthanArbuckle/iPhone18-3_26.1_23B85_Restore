@interface _PXFlexMusicImageLoader
- (CGSize)maxSize;
- (_PXFlexMusicImageLoader)initWithArtworkAsset:(id)asset maxSize:(CGSize)size sharedImageLoadingQueue:(id)queue;
- (void)_handleDownloadCompleted:(BOOL)completed error:(id)error;
- (void)dealloc;
- (void)startWithCompletion:(id)completion;
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

- (void)_handleDownloadCompleted:(BOOL)completed error:(id)error
{
  errorCopy = error;
  v6 = +[PXFlexMusicLibrary sharedLibrary];
  artworkAsset = [(_PXFlexMusicImageLoader *)self artworkAsset];
  audioAsset = [artworkAsset audioAsset];
  v9 = [v6 localURLForAsset:audioAsset resourceType:1];

  if (!v9)
  {
    errorCopy;
    px_dispatch_on_main_queue();
  }

  sharedImageLoadingQueue = [(_PXFlexMusicImageLoader *)self sharedImageLoadingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58___PXFlexMusicImageLoader__handleDownloadCompleted_error___block_invoke;
  block[3] = &unk_1E774C620;
  v12 = v9;
  selfCopy = self;
  dispatch_async(sharedImageLoadingQueue, block);
}

- (void)startWithCompletion:(id)completion
{
  completionCopy = completion;
  completionHandler = [(_PXFlexMusicImageLoader *)self completionHandler];

  if (completionHandler)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFlexMusicImageProvider.m" lineNumber:134 description:{@"Invalid parameter not satisfying: %@", @"self.completionHandler == nil"}];
  }

  [(_PXFlexMusicImageLoader *)self setCompletionHandler:completionCopy];
  objc_initWeak(&location, self);
  downloader = [(_PXFlexMusicImageLoader *)self downloader];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47___PXFlexMusicImageLoader_startWithCompletion___block_invoke;
  v9[3] = &unk_1E7749D00;
  objc_copyWeak(&v10, &location);
  [downloader startWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (_PXFlexMusicImageLoader)initWithArtworkAsset:(id)asset maxSize:(CGSize)size sharedImageLoadingQueue:(id)queue
{
  height = size.height;
  width = size.width;
  assetCopy = asset;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = _PXFlexMusicImageLoader;
  v12 = [(_PXFlexMusicImageLoader *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_artworkAsset, asset);
    v13->_maxSize.width = width;
    v13->_maxSize.height = height;
    objc_storeStrong(&v13->_sharedImageLoadingQueue, queue);
    v14 = [PXFlexMusicDownloader alloc];
    audioAsset = [assetCopy audioAsset];
    v16 = [(PXFlexMusicDownloader *)v14 initWithAsset:audioAsset resource:1];
    downloader = v13->_downloader;
    v13->_downloader = v16;
  }

  return v13;
}

@end