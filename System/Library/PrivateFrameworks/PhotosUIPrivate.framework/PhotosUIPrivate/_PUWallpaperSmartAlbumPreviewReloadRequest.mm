@interface _PUWallpaperSmartAlbumPreviewReloadRequest
- (_PUWallpaperSmartAlbumPreviewReloadRequest)initWithPhotoLibrary:(id)library shuffleConfiguration:(id)configuration completion:(id)completion;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change;
@end

@implementation _PUWallpaperSmartAlbumPreviewReloadRequest

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)change
{
  objc_initWeak(&location, self);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __93___PUWallpaperSmartAlbumPreviewReloadRequest_passiveContentDataSourcePreviewAssetsDidChange___block_invoke;
  v3[3] = &unk_1E7B80638;
  objc_copyWeak(&v4, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (_PUWallpaperSmartAlbumPreviewReloadRequest)initWithPhotoLibrary:(id)library shuffleConfiguration:(id)configuration completion:(id)completion
{
  libraryCopy = library;
  configurationCopy = configuration;
  completionCopy = completion;
  v19.receiver = self;
  v19.super_class = _PUWallpaperSmartAlbumPreviewReloadRequest;
  v11 = [(_PUWallpaperSmartAlbumPreviewReloadRequest *)&v19 init];
  if (v11)
  {
    v12 = [completionCopy copy];
    completion = v11->_completion;
    v11->_completion = v12;

    v14 = [objc_alloc(MEMORY[0x1E69C3C90]) initWithPhotoLibrary:libraryCopy changeObserver:v11 centerMedia:0];
    smartAlbumDataSource = v11->_smartAlbumDataSource;
    v11->_smartAlbumDataSource = v14;

    personLocalIdentifiers = [configurationCopy personLocalIdentifiers];
    allObjects = [personLocalIdentifiers allObjects];
    [(PXWallpaperSmartAlbumDataSource *)v11->_smartAlbumDataSource setPeopleLocalIdentifiers:allObjects];

    -[PXWallpaperSmartAlbumDataSource setSelectedTypes:](v11->_smartAlbumDataSource, "setSelectedTypes:", [configurationCopy shuffleSmartAlbums]);
  }

  return v11;
}

@end