@interface PXMovieProvider
- (BOOL)canPlayMovie;
- (PXDiagnosticsItemProvider)diagnosticsItemProvider;
- (PXMovieProvider)init;
- (PXMovieProvider)initWithAssetCollection:(id)collection;
- (PXMovieProvider)initWithAssetCollection:(id)collection keyAsset:(id)asset;
- (PXMovieProviderDelegate)delegate;
- (UIViewController)movieViewController;
@end

@implementation PXMovieProvider

- (PXMovieProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PXDiagnosticsItemProvider)diagnosticsItemProvider
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:50 description:@"This class should be never be used directly"];

  return 0;
}

- (BOOL)canPlayMovie
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:45 description:@"This class should be never be used directly"];

  return 0;
}

- (UIViewController)movieViewController
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:40 description:@"This class should be never be used directly"];

  return 0;
}

- (PXMovieProvider)initWithAssetCollection:(id)collection keyAsset:(id)asset
{
  assetCopy = asset;
  v8 = [(PXMovieProvider *)self initWithAssetCollection:collection];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyAsset, asset);
  }

  return v9;
}

- (PXMovieProvider)initWithAssetCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXMovieProvider;
  v6 = [(PXMovieProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, collection);
  }

  return v7;
}

- (PXMovieProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXMovieProvider init]"}];

  abort();
}

@end