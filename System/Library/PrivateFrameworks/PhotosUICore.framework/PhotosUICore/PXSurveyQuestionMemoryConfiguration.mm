@interface PXSurveyQuestionMemoryConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)a3;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionMemoryConfiguration)init;
- (PXSurveyQuestionMemoryConfiguration)initWithTitle:(id)a3 memory:(id)a4 songAdamId:(id)a5 customKeyAssetIdentifier:(id)a6;
- (UIView)contentView;
- (void)layoutContentViewInRect:(CGRect)a3;
- (void)presentDetailsForMemoryView:(id)a3;
@end

@implementation PXSurveyQuestionMemoryConfiguration

- (void)presentDetailsForMemoryView:(id)a3
{
  v9 = [PXPhotosDetailsContext photosDetailsContextForMemory:self->_memory];
  v4 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v9 options:0];
  v5 = [(PXSurveyQuestionMemoryConfiguration *)self handlers];
  v6 = [v5 pushViewControllerHandler];

  if (v6)
  {
    v7 = [(PXSurveyQuestionMemoryConfiguration *)self handlers];
    v8 = [v7 pushViewControllerHandler];
    (v8)[2](v8, v4, self->_memory);
  }
}

- (BOOL)needsQuestionInvalidationForChange:(id)a3
{
  v3 = [a3 changeDetailsForObject:self->_memory];
  v4 = [v3 objectWasDeleted];

  return v4;
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

- (void)layoutContentViewInRect:(CGRect)a3
{
  if (a3.size.height >= a3.size.width)
  {
    if (a3.size.height > a3.size.width)
    {
      a3.origin.y = a3.origin.y + (a3.size.height - a3.size.width) * 0.5 + 8.0;
      a3.size.height = a3.size.width;
    }
  }

  else
  {
    a3.origin.x = a3.origin.x + (a3.size.width - a3.size.height) * 0.5;
    a3.origin.y = a3.origin.y + 8.0;
    a3.size.width = a3.size.height;
  }

  [(PXMemoryView *)self->_memoryView setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (UIView)contentView
{
  v17[1] = *MEMORY[0x1E69E9840];
  memoryView = self->_memoryView;
  if (!memoryView)
  {
    v4 = [PXMemoryInfo memoryInfoWithMemory:self->_memory];
    if (self->_customKeyAssetIdentifier)
    {
      v5 = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v6 = MEMORY[0x1E6978630];
      v17[0] = self->_customKeyAssetIdentifier;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v8 = [v6 fetchAssetsWithUUIDs:v7 options:v5];

      v9 = [v4 memoryInfoWithUpdatedKeyAssetFetchResult:v8];

      v4 = v9;
    }

    v10 = objc_alloc_init(PXMemoryViewModel);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__PXSurveyQuestionMemoryConfiguration_contentView__block_invoke;
    v15[3] = &unk_1E7747C08;
    v16 = v4;
    v11 = v4;
    [(PXMemoryViewModel *)v10 performChanges:v15];
    v12 = objc_alloc_init(PXMemoryView);
    v13 = self->_memoryView;
    self->_memoryView = v12;

    [(PXMemoryView *)self->_memoryView setViewModel:v10];
    [(PXMemoryView *)self->_memoryView setPresentationDelegate:self];

    memoryView = self->_memoryView;
  }

  return memoryView;
}

void __50__PXSurveyQuestionMemoryConfiguration_contentView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  v4 = [v3 localizedDateText];
  [v8 setLocalizedDateText:v4];

  v5 = [*(a1 + 32) localizedTitle];
  [v8 setLocalizedTitle:v5];

  v6 = [*(a1 + 32) keyAssetFetchResult];
  v7 = [v6 firstObject];
  [v8 setKeyAsset:v7];

  [v8 setSpecSet:1];
}

- (PXSurveyQuestionMemoryConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionMemoryConfiguration.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXSurveyQuestionMemoryConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionMemoryConfiguration)initWithTitle:(id)a3 memory:(id)a4 songAdamId:(id)a5 customKeyAssetIdentifier:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = PXSurveyQuestionMemoryConfiguration;
  v14 = [(PXSurveyQuestionMemoryConfiguration *)&v21 init];
  if (v14 && (v15 = [v10 copy], title = v14->_title, v14->_title = v15, title, objc_storeStrong(&v14->_memory, a4), objc_storeStrong(&v14->_songAdamId, a5), v14->_isStale = 0, objc_storeStrong(&v14->_customKeyAssetIdentifier, a6), v14->_customKeyAssetIdentifier) && (-[PHMemory photoLibrary](v14->_memory, "photoLibrary"), v17 = objc_claimAutoreleasedReturnValue(), photoLibrary = v14->_photoLibrary, v14->_photoLibrary = v17, photoLibrary, !v14->_photoLibrary))
  {
    v19 = 0;
  }

  else
  {
    v19 = v14;
  }

  return v19;
}

@end