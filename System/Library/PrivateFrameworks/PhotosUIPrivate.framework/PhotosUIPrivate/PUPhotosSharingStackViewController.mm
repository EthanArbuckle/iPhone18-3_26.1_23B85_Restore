@interface PUPhotosSharingStackViewController
- (PHAsset)currentAsset;
- (PUPhotosSharingStackViewController)initWithAssetFetchResult:(id)result;
- (PUPhotosSharingStackViewController)initWithCoder:(id)coder;
- (PUPhotosSharingStackViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation PUPhotosSharingStackViewController

- (void)viewDidLoad
{
  v14.receiver = self;
  v14.super_class = PUPhotosSharingStackViewController;
  [(PUPhotosSharingStackViewController *)&v14 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69C36A0]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  cardsView = self->_cardsView;
  self->_cardsView = v4;

  [(PXMessagesStackView *)self->_cardsView setAllowPlayableContentLoading:1];
  [(PXMessagesStackView *)self->_cardsView setDelegate:self];
  [(PXMessagesStackView *)self->_cardsView setHorizontalAlignment:0];
  [(PXMessagesStackView *)self->_cardsView setUseAspectTiles:1];
  v6 = MEMORY[0x1E69C3858];
  assetFetchResult = [(PUPhotosSharingStackViewController *)self assetFetchResult];
  firstObject = [assetFetchResult firstObject];
  photoLibrary = [firstObject photoLibrary];
  v10 = [v6 mediaProviderWithLibrary:photoLibrary];

  [(PXMessagesStackView *)self->_cardsView setMediaProvider:v10];
  v11 = MEMORY[0x1E69C37D8];
  assetFetchResult2 = [(PUPhotosSharingStackViewController *)self assetFetchResult];
  v13 = [v11 dataSourceManagerWithAssets:assetFetchResult2];

  [(PXMessagesStackView *)self->_cardsView setDataSourceManager:v13];
  [(PUPhotosSharingStackViewController *)self setView:self->_cardsView];
}

- (PHAsset)currentAsset
{
  assetFetchResult = [(PUPhotosSharingStackViewController *)self assetFetchResult];
  v4 = [assetFetchResult objectAtIndexedSubscript:{-[PXMessagesStackView currentIndex](self->_cardsView, "currentIndex")}];

  return v4;
}

- (PUPhotosSharingStackViewController)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosSharingStackViewController.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PUPhotosSharingStackViewController initWithCoder:]"}];

  abort();
}

- (PUPhotosSharingStackViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosSharingStackViewController.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PUPhotosSharingStackViewController initWithNibName:bundle:]"}];

  abort();
}

- (PUPhotosSharingStackViewController)initWithAssetFetchResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = PUPhotosSharingStackViewController;
  v6 = [(PUPhotosSharingStackViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetFetchResult, result);
  }

  return v7;
}

@end