@interface PXSurveyQuestionAlbumConfiguration
- (BOOL)needsDisplayRefreshForChange:(id)change;
- (BOOL)needsQuestionInvalidationForChange:(id)change;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionAlbumConfiguration)init;
- (PXSurveyQuestionAlbumConfiguration)initWithTitle:(id)title album:(id)album;
- (UIView)contentView;
- (id)_getTitleSubtitleLabelSpec;
- (void)_handleDidSelectAlbumView;
- (void)dealloc;
- (void)layoutContentViewInRect:(CGRect)rect;
@end

@implementation PXSurveyQuestionAlbumConfiguration

- (BOOL)needsDisplayRefreshForChange:(id)change
{
  v24[1] = *MEMORY[0x1E69E9840];
  album = self->_album;
  if (!album)
  {
    return 0;
  }

  title = [(PHAssetCollection *)album title];
  photoLibrary = [(PHAssetCollection *)self->_album photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v8 = MEMORY[0x1E6978650];
  localIdentifier = [(PHAssetCollection *)self->_album localIdentifier];
  v24[0] = localIdentifier;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v11 = [v8 fetchAssetCollectionsWithLocalIdentifiers:v10 options:librarySpecificFetchOptions];
  firstObject = [v11 firstObject];
  title2 = [firstObject title];

  if (title && ![title isEqualToString:title2])
  {
    v16 = 1;
  }

  else
  {
    photoLibrary2 = [(PHAssetCollection *)self->_album photoLibrary];
    librarySpecificFetchOptions2 = [photoLibrary2 librarySpecificFetchOptions];

    v23 = *MEMORY[0x1E6978C68];
    v16 = 1;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
    [librarySpecificFetchOptions2 setFetchPropertySets:v17];

    v18 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:self->_album options:librarySpecificFetchOptions2];
    v19 = [v18 containsObject:self->_keyAsset];
    if (!self->_keyAsset || v19)
    {
      v20 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_album options:librarySpecificFetchOptions2];
      approximateCount = [(PHAssetCollection *)self->_album approximateCount];
      v16 = approximateCount != [v20 count];
    }
  }

  return v16;
}

- (BOOL)needsQuestionInvalidationForChange:(id)change
{
  v12[1] = *MEMORY[0x1E69E9840];
  album = self->_album;
  if (!album)
  {
    return 0;
  }

  v5 = [change changeDetailsForObject:album];
  if ([v5 objectWasDeleted])
  {
    v6 = 1;
  }

  else
  {
    photoLibrary = [(PHAssetCollection *)self->_album photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    v12[0] = *MEMORY[0x1E6978C68];
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [librarySpecificFetchOptions setFetchPropertySets:v9];

    v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_album options:librarySpecificFetchOptions];
    v6 = [v10 count] == 0;
  }

  return v6;
}

- (void)_handleDidSelectAlbumView
{
  v3 = MEMORY[0x1E6978630];
  album = self->_album;
  photoLibrary = [(PHAssetCollection *)album photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v13 = [v3 fetchAssetsInAssetCollection:album options:librarySpecificFetchOptions];

  v7 = [PXPhotosDetailsContext photosDetailsContextForAssetCollection:self->_album assets:v13 viewSourceOrigin:7];
  v8 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v7 options:0];
  handlers = [(PXSurveyQuestionAlbumConfiguration *)self handlers];
  pushViewControllerHandler = [handlers pushViewControllerHandler];

  if (pushViewControllerHandler)
  {
    handlers2 = [(PXSurveyQuestionAlbumConfiguration *)self handlers];
    pushViewControllerHandler2 = [handlers2 pushViewControllerHandler];
    (pushViewControllerHandler2)[2](pushViewControllerHandler2, v8, self->_album);
  }
}

- (id)_getTitleSubtitleLabelSpec
{
  memset(v28, 0, sizeof(v28));
  [(PXDisplayAssetContentView *)self->_contentView bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXDisplayAssetContentView *)self->_contentView layoutMargins];
  v17 = vdupq_n_s64(1uLL);
  v18 = 0;
  v19 = v4;
  v20 = v6;
  v21 = v8;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = 1;
  v15 = [off_1E7721910 memoriesTitleSubtitleSpecForContext:&v17];

  return v15;
}

- (CGRect)contentRectForOneUp
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)layoutContentViewInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXDisplayAssetContentView *)self->_contentView setFrame:?];
  label = self->_label;

  [(PXTitleSubtitleUILabel *)label setFrame:x, y, width, height];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = [PXDisplayAssetContentView checkOutViewForAsset:self->_keyAsset withPlaybackStyle:1];
    v5 = self->_contentView;
    self->_contentView = v4;

    [PXSurveyQuestionAssetConfiguration configureViewForAsset:self->_contentView];
    v6 = [PXTitleSubtitleUILabel alloc];
    [(PXDisplayAssetContentView *)self->_contentView bounds];
    v7 = [(PXTitleSubtitleUILabel *)v6 initWithFrame:?];
    label = self->_label;
    self->_label = v7;

    title = [(PHAssetCollection *)self->_album title];
    [(PXTitleSubtitleUILabel *)self->_label setTitleText:title];

    v10 = MEMORY[0x1E696ADA0];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PHAssetCollection approximateCount](self->_album, "approximateCount")}];
    v12 = [v10 localizedStringFromNumber:v11 numberStyle:1];

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v12];
    [(PXTitleSubtitleUILabel *)self->_label setSubtitleText:v13];

    _getTitleSubtitleLabelSpec = [(PXSurveyQuestionAlbumConfiguration *)self _getTitleSubtitleLabelSpec];
    [(PXTitleSubtitleUILabel *)self->_label setSpec:_getTitleSubtitleLabelSpec];

    [(PXDisplayAssetContentView *)self->_contentView addSubview:self->_label];
    v15 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDidSelectAlbumView];
    [(PXDisplayAssetContentView *)self->_contentView addGestureRecognizer:v15];

    contentView = self->_contentView;
  }

  return contentView;
}

- (void)dealloc
{
  v3 = self->_contentView;
  [(PXTitleSubtitleUILabel *)self->_label removeFromSuperview];
  if (v3)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __45__PXSurveyQuestionAlbumConfiguration_dealloc__block_invoke;
    v8 = &unk_1E774C648;
    v9 = v3;
    px_dispatch_on_main_queue();
  }

  v4.receiver = self;
  v4.super_class = PXSurveyQuestionAlbumConfiguration;
  [(PXSurveyQuestionAlbumConfiguration *)&v4 dealloc];
}

- (PXSurveyQuestionAlbumConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionAlbumConfiguration.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXSurveyQuestionAlbumConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionAlbumConfiguration)initWithTitle:(id)title album:(id)album
{
  titleCopy = title;
  albumCopy = album;
  v18.receiver = self;
  v18.super_class = PXSurveyQuestionAlbumConfiguration;
  v9 = [(PXSurveyQuestionAlbumConfiguration *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_album, album);
    v11 = MEMORY[0x1E6978630];
    photoLibrary = [(PHAssetCollection *)v10->_album photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
    v14 = [v11 fetchKeyAssetsInAssetCollection:albumCopy options:librarySpecificFetchOptions];
    firstObject = [v14 firstObject];
    keyAsset = v10->_keyAsset;
    v10->_keyAsset = firstObject;

    v10->_isStale = 0;
  }

  return v10;
}

@end