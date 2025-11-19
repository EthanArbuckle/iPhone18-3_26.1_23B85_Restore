@interface _PUWallpaperSmartAlbumPreviewReloadRequest
- (_PUWallpaperSmartAlbumPreviewReloadRequest)initWithPhotoLibrary:(id)a3 shuffleConfiguration:(id)a4 completion:(id)a5;
- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3;
@end

@implementation _PUWallpaperSmartAlbumPreviewReloadRequest

- (void)passiveContentDataSourcePreviewAssetsDidChange:(id)a3
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

- (_PUWallpaperSmartAlbumPreviewReloadRequest)initWithPhotoLibrary:(id)a3 shuffleConfiguration:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _PUWallpaperSmartAlbumPreviewReloadRequest;
  v11 = [(_PUWallpaperSmartAlbumPreviewReloadRequest *)&v19 init];
  if (v11)
  {
    v12 = [v10 copy];
    completion = v11->_completion;
    v11->_completion = v12;

    v14 = [objc_alloc(MEMORY[0x1E69C3C90]) initWithPhotoLibrary:v8 changeObserver:v11 centerMedia:0];
    smartAlbumDataSource = v11->_smartAlbumDataSource;
    v11->_smartAlbumDataSource = v14;

    v16 = [v9 personLocalIdentifiers];
    v17 = [v16 allObjects];
    [(PXWallpaperSmartAlbumDataSource *)v11->_smartAlbumDataSource setPeopleLocalIdentifiers:v17];

    -[PXWallpaperSmartAlbumDataSource setSelectedTypes:](v11->_smartAlbumDataSource, "setSelectedTypes:", [v9 shuffleSmartAlbums]);
  }

  return v11;
}

@end