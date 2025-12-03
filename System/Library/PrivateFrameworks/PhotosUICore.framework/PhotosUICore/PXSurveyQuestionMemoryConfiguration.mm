@interface PXSurveyQuestionMemoryConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)change;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionMemoryConfiguration)init;
- (PXSurveyQuestionMemoryConfiguration)initWithTitle:(id)title memory:(id)memory songAdamId:(id)id customKeyAssetIdentifier:(id)identifier;
- (UIView)contentView;
- (void)layoutContentViewInRect:(CGRect)rect;
- (void)presentDetailsForMemoryView:(id)view;
@end

@implementation PXSurveyQuestionMemoryConfiguration

- (void)presentDetailsForMemoryView:(id)view
{
  v9 = [PXPhotosDetailsContext photosDetailsContextForMemory:self->_memory];
  v4 = [[PXPhotosDetailsUIViewController alloc] initWithContext:v9 options:0];
  handlers = [(PXSurveyQuestionMemoryConfiguration *)self handlers];
  pushViewControllerHandler = [handlers pushViewControllerHandler];

  if (pushViewControllerHandler)
  {
    handlers2 = [(PXSurveyQuestionMemoryConfiguration *)self handlers];
    pushViewControllerHandler2 = [handlers2 pushViewControllerHandler];
    (pushViewControllerHandler2)[2](pushViewControllerHandler2, v4, self->_memory);
  }
}

- (BOOL)needsQuestionInvalidationForChange:(id)change
{
  v3 = [change changeDetailsForObject:self->_memory];
  objectWasDeleted = [v3 objectWasDeleted];

  return objectWasDeleted;
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
  if (rect.size.height >= rect.size.width)
  {
    if (rect.size.height > rect.size.width)
    {
      rect.origin.y = rect.origin.y + (rect.size.height - rect.size.width) * 0.5 + 8.0;
      rect.size.height = rect.size.width;
    }
  }

  else
  {
    rect.origin.x = rect.origin.x + (rect.size.width - rect.size.height) * 0.5;
    rect.origin.y = rect.origin.y + 8.0;
    rect.size.width = rect.size.height;
  }

  [(PXMemoryView *)self->_memoryView setFrame:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
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
      librarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary librarySpecificFetchOptions];
      v6 = MEMORY[0x1E6978630];
      v17[0] = self->_customKeyAssetIdentifier;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v8 = [v6 fetchAssetsWithUUIDs:v7 options:librarySpecificFetchOptions];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionMemoryConfiguration.m" lineNumber:52 description:{@"%s is not available as initializer", "-[PXSurveyQuestionMemoryConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionMemoryConfiguration)initWithTitle:(id)title memory:(id)memory songAdamId:(id)id customKeyAssetIdentifier:(id)identifier
{
  titleCopy = title;
  memoryCopy = memory;
  idCopy = id;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = PXSurveyQuestionMemoryConfiguration;
  v14 = [(PXSurveyQuestionMemoryConfiguration *)&v21 init];
  if (v14 && (v15 = [titleCopy copy], title = v14->_title, v14->_title = v15, title, objc_storeStrong(&v14->_memory, memory), objc_storeStrong(&v14->_songAdamId, id), v14->_isStale = 0, objc_storeStrong(&v14->_customKeyAssetIdentifier, identifier), v14->_customKeyAssetIdentifier) && (-[PHMemory photoLibrary](v14->_memory, "photoLibrary"), v17 = objc_claimAutoreleasedReturnValue(), photoLibrary = v14->_photoLibrary, v14->_photoLibrary = v17, photoLibrary, !v14->_photoLibrary))
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