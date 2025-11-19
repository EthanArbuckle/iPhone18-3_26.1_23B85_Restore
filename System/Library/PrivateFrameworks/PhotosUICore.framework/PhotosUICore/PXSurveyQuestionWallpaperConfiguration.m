@interface PXSurveyQuestionWallpaperConfiguration
- (BOOL)needsQuestionInvalidationForChange:(id)a3;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionWallpaperConfiguration)init;
- (PXSurveyQuestionWallpaperConfiguration)initWithTitle:(id)a3 asset:(id)a4;
- (UIView)contentView;
- (void)layoutContentViewInRect:(CGRect)a3;
@end

@implementation PXSurveyQuestionWallpaperConfiguration

- (BOOL)needsQuestionInvalidationForChange:(id)a3
{
  v3 = [a3 changeDetailsForObject:self->_asset];
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
    v6 = [(PXSurveyQuestionWallpaperConfiguration *)self asset];
    [(PXWallpaperSuggestionView *)self->_wallpaperView setAsset:v6];

    wallpaperView = self->_wallpaperView;
  }

  return wallpaperView;
}

- (PXSurveyQuestionWallpaperConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionWallpaperConfiguration.m" lineNumber:35 description:{@"%s is not available as initializer", "-[PXSurveyQuestionWallpaperConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionWallpaperConfiguration)initWithTitle:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionWallpaperConfiguration;
  v8 = [(PXSurveyQuestionWallpaperConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    objc_storeStrong(&v8->_asset, a4);
    v8->_isStale = 0;
  }

  return v8;
}

@end