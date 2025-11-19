@interface PXCMMStackBubbleView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PXCMMStackBubbleView)initWithCoder:(id)a3;
- (PXCMMStackBubbleView)initWithFrame:(CGRect)a3;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDataSourceManager:(id)a3;
- (void)setMomentShare:(id)a3;
@end

@implementation PXCMMStackBubbleView

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (DataSourceManagerObservationContext_134990 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXCMMStackBubbleView.m" lineNumber:125 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(PXCMMStackBubbleView *)self _updateSubviews];
    v9 = v11;
  }
}

- (void)layoutSubviews
{
  [(PXCMMStackBubbleView *)self bounds];
  [(PXMessagesStackView *)self->_stackView setFrame:?];
  [(PXCMMStackBubbleView *)self bounds];
  [(UIActivityIndicatorView *)self->_activityIndicatorView setFrame:?];
  v3.receiver = self;
  v3.super_class = PXCMMStackBubbleView;
  [(PXCMMStackBubbleView *)&v3 layoutSubviews];
}

- (void)_updateSubviews
{
  v3 = [(PXCMMStackBubbleView *)self dataSourceManager];
  v4 = [v3 dataSource];
  v5 = [v4 containsAnyItems];

  stackView = self->_stackView;
  if (v5)
  {
    if (!stackView)
    {
      v7 = [PXMessagesStackView alloc];
      v8 = [(PXMessagesStackView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_stackView;
      self->_stackView = v8;

      v10 = [(PXCMMStackBubbleView *)self mediaProvider];
      [(PXMessagesStackView *)self->_stackView setMediaProvider:v10];

      v11 = [(PXCMMStackBubbleView *)self dataSourceManager];
      [(PXBaseMessagesStackView *)self->_stackView setDataSourceManager:v11];

      [(PXCMMStackBubbleView *)self addSubview:self->_stackView];
    }

    activityIndicatorView = self->_activityIndicatorView;
    if (activityIndicatorView)
    {
      [(UIActivityIndicatorView *)activityIndicatorView removeFromSuperview];
      v13 = self->_activityIndicatorView;
      self->_activityIndicatorView = 0;
    }
  }

  else
  {
    if (stackView)
    {
      [(PXMessagesStackView *)stackView removeFromSuperview];
      v14 = self->_stackView;
      self->_stackView = 0;
    }

    if (!self->_activityIndicatorView)
    {
      v15 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
      v16 = self->_activityIndicatorView;
      self->_activityIndicatorView = v15;

      [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
      v17 = self->_activityIndicatorView;

      [(PXCMMStackBubbleView *)self addSubview:v17];
    }
  }
}

- (void)setDataSourceManager:(id)a3
{
  v5 = a3;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != v5)
  {
    v7 = v5;
    [(PXSectionedDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext_134990];
    objc_storeStrong(&self->_dataSourceManager, a3);
    [(PXSectionedDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext_134990];
    [(PXCMMStackBubbleView *)self _updateSubviews];
    v5 = v7;
  }
}

- (void)setMomentShare:(id)a3
{
  v8 = a3;
  if (([(PHMomentShare *)self->_momentShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_momentShare, a3);
    if (v8)
    {
      v5 = PXCuratedAssetsWithFallbackForMomentShare(v8, 1);
      LOBYTE(v7) = 0;
      v6 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:v8 existingAssetsFetchResult:v5 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v7];
      if ([v8 status] == 2)
      {
        [v8 acceptMomentShareWithCompletion:&__block_literal_global_135003];
      }
    }

    else
    {
      v6 = 0;
    }

    [(PXCMMStackBubbleView *)self setDataSourceManager:v6];
  }
}

void __39__PXCMMStackBubbleView_setMomentShare___block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to accept CMM with error %@", &v6, 0xCu);
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PXCMMStackBubbleView *)self maximumHeight];
  if (height >= v5)
  {
    height = v5;
  }

  v6 = objc_opt_class();

  [v6 sizeThatFits:{width, height}];
  result.height = v8;
  result.width = v7;
  return result;
}

- (PXCMMStackBubbleView)initWithCoder:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXCMMStackBubbleView.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXCMMStackBubbleView initWithCoder:]"}];

  abort();
}

- (PXCMMStackBubbleView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PXCMMStackBubbleView;
  v3 = [(PXCMMStackBubbleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:v4];
    mediaProvider = v3->_mediaProvider;
    v3->_mediaProvider = v5;

    v3->_maximumHeight = 1.79769313e308;
  }

  return v3;
}

@end