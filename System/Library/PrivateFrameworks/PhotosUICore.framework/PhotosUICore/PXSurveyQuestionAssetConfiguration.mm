@interface PXSurveyQuestionAssetConfiguration
+ (void)configureViewForAsset:(id)a3;
- (BOOL)needsQuestionInvalidationForChange:(id)a3;
- (CGRect)assetContentsRect;
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionAssetConfiguration)init;
- (PXSurveyQuestionAssetConfiguration)initWithTitle:(id)a3 asset:(id)a4;
- (UIView)contentView;
- (void)_handleDidSelectAssetView;
- (void)dealloc;
@end

@implementation PXSurveyQuestionAssetConfiguration

- (CGRect)assetContentsRect
{
  x = self->_assetContentsRect.origin.x;
  y = self->_assetContentsRect.origin.y;
  width = self->_assetContentsRect.size.width;
  height = self->_assetContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)needsQuestionInvalidationForChange:(id)a3
{
  v3 = [a3 changeDetailsForObject:self->_asset];
  v4 = [v3 objectWasDeleted];

  return v4;
}

- (void)_handleDidSelectAssetView
{
  v3 = [(PXSurveyQuestionAssetConfiguration *)self handlers];
  v4 = [v3 didSelectAssetHandler];

  if (v4)
  {
    v6 = [(PXSurveyQuestionAssetConfiguration *)self handlers];
    v5 = [v6 didSelectAssetHandler];
    (v5)[2](v5, self->_asset);
  }
}

- (CGRect)contentRectForOneUp
{
  assetView = self->_assetView;
  if (assetView)
  {
    [(PXDisplayAssetContentView *)assetView currentContentsRect];
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIView)contentView
{
  assetView = self->_assetView;
  if (!assetView)
  {
    v4 = [(PXSurveyQuestionAssetConfiguration *)self asset];
    v5 = [PXDisplayAssetContentView checkOutViewForAsset:v4 withPlaybackStyle:1];
    v6 = self->_assetView;
    self->_assetView = v5;

    [PXSurveyQuestionAssetConfiguration configureViewForAsset:self->_assetView];
    v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__handleDidSelectAssetView];
    [(PXDisplayAssetContentView *)self->_assetView addGestureRecognizer:v7];

    assetView = self->_assetView;
  }

  return assetView;
}

- (void)dealloc
{
  v3 = self->_assetView;
  if (v3)
  {
    v5 = MEMORY[0x1E69E9820];
    v6 = 3221225472;
    v7 = __45__PXSurveyQuestionAssetConfiguration_dealloc__block_invoke;
    v8 = &unk_1E774C648;
    v9 = v3;
    px_dispatch_on_main_queue();
  }

  v4.receiver = self;
  v4.super_class = PXSurveyQuestionAssetConfiguration;
  [(PXSurveyQuestionAssetConfiguration *)&v4 dealloc];
}

- (PXSurveyQuestionAssetConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionAssetConfiguration.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXSurveyQuestionAssetConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionAssetConfiguration)initWithTitle:(id)a3 asset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionAssetConfiguration;
  v8 = [(PXSurveyQuestionAssetConfiguration *)&v12 init];
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

+ (void)configureViewForAsset:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v6 = a3;
  v4 = [v3 quaternarySystemFillColor];
  [v6 setBackgroundColor:v4];

  [v6 setCanDisplayLoadingIndicator:1];
  [v6 setHidden:0];
  v5 = objc_alloc_init(PXPhotoKitUIMediaProvider);
  [v6 setMediaProvider:v5];

  [v6 setPlaceholderTransitionDuration:0.2];
  [v6 setContentMode:2];
}

@end