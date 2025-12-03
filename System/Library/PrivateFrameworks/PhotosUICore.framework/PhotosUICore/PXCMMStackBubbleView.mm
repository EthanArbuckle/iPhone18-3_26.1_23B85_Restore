@interface PXCMMStackBubbleView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PXCMMStackBubbleView)initWithCoder:(id)coder;
- (PXCMMStackBubbleView)initWithFrame:(CGRect)frame;
- (void)_updateSubviews;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDataSourceManager:(id)manager;
- (void)setMomentShare:(id)share;
@end

@implementation PXCMMStackBubbleView

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (DataSourceManagerObservationContext_134990 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMStackBubbleView.m" lineNumber:125 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(PXCMMStackBubbleView *)self _updateSubviews];
    observableCopy = v11;
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
  dataSourceManager = [(PXCMMStackBubbleView *)self dataSourceManager];
  dataSource = [dataSourceManager dataSource];
  containsAnyItems = [dataSource containsAnyItems];

  stackView = self->_stackView;
  if (containsAnyItems)
  {
    if (!stackView)
    {
      v7 = [PXMessagesStackView alloc];
      v8 = [(PXMessagesStackView *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v9 = self->_stackView;
      self->_stackView = v8;

      mediaProvider = [(PXCMMStackBubbleView *)self mediaProvider];
      [(PXMessagesStackView *)self->_stackView setMediaProvider:mediaProvider];

      dataSourceManager2 = [(PXCMMStackBubbleView *)self dataSourceManager];
      [(PXBaseMessagesStackView *)self->_stackView setDataSourceManager:dataSourceManager2];

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

- (void)setDataSourceManager:(id)manager
{
  managerCopy = manager;
  dataSourceManager = self->_dataSourceManager;
  if (dataSourceManager != managerCopy)
  {
    v7 = managerCopy;
    [(PXSectionedDataSourceManager *)dataSourceManager unregisterChangeObserver:self context:DataSourceManagerObservationContext_134990];
    objc_storeStrong(&self->_dataSourceManager, manager);
    [(PXSectionedDataSourceManager *)self->_dataSourceManager registerChangeObserver:self context:DataSourceManagerObservationContext_134990];
    [(PXCMMStackBubbleView *)self _updateSubviews];
    managerCopy = v7;
  }
}

- (void)setMomentShare:(id)share
{
  shareCopy = share;
  if (([(PHMomentShare *)self->_momentShare isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_momentShare, share);
    if (shareCopy)
    {
      v5 = PXCuratedAssetsWithFallbackForMomentShare(shareCopy, 1);
      LOBYTE(v7) = 0;
      v6 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerForAssetCollection:shareCopy existingAssetsFetchResult:v5 existingKeyAssetsFetchResult:0 fetchPropertySets:0 basePredicate:0 options:0 ignoreSharedLibraryFilters:v7];
      if ([shareCopy status] == 2)
      {
        [shareCopy acceptMomentShareWithCompletion:&__block_literal_global_135003];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (PXCMMStackBubbleView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMStackBubbleView.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXCMMStackBubbleView initWithCoder:]"}];

  abort();
}

- (PXCMMStackBubbleView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PXCMMStackBubbleView;
  v3 = [(PXCMMStackBubbleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    mEMORY[0x1E69789A8] = [MEMORY[0x1E69789A8] sharedMomentSharePhotoLibrary];
    v5 = [PXPhotoKitUIMediaProvider mediaProviderWithLibrary:mEMORY[0x1E69789A8]];
    mediaProvider = v3->_mediaProvider;
    v3->_mediaProvider = v5;

    v3->_maximumHeight = 1.79769313e308;
  }

  return v3;
}

@end