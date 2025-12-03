@interface PXSurveyQuestionWallpaperConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)change;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionWallpaperConfiguration)init;
- (PXSurveyQuestionWallpaperConfiguration)initWithTitle:(id)title asset:(id)asset;
- (UIView)contentView;
- (void)layoutContentViewInRect:(CGRect)rect;
@end

@implementation PXSurveyQuestionWallpaperConfiguration

- (BOOL)needsQuestionInvalidationForChange:(id)change
{
  v3 = [change changeDetailsForObject:self->_asset];
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
  [MEMORY[0x1E69DCEB0] px_mainScreen];
  [objc_claimAutoreleasedReturnValue() bounds];
  PXSizeGetAspectRatio();
}

- (UIView)contentView
{
  wallpaperView = self->_wallpaperView;
  if (!wallpaperView)
  {
    v4 = objc_alloc_init(PXWallpaperSuggestionView);
    v5 = self->_wallpaperView;
    self->_wallpaperView = v4;

    [(PXWallpaperSuggestionView *)self->_wallpaperView setShowClockOverlay:0];
    asset = [(PXSurveyQuestionWallpaperConfiguration *)self asset];
    [(PXWallpaperSuggestionView *)self->_wallpaperView setAsset:asset];

    wallpaperView = self->_wallpaperView;
  }

  return wallpaperView;
}

- (PXSurveyQuestionWallpaperConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionWallpaperConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionWallpaperConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionWallpaperConfiguration)initWithTitle:(id)title asset:(id)asset
{
  titleCopy = title;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionWallpaperConfiguration;
  v8 = [(PXSurveyQuestionWallpaperConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_asset, asset);
    v8->_isStale = 0;
  }

  return v8;
}

@end