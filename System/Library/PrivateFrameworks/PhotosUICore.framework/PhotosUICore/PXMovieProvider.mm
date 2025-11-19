@interface PXMovieProvider
- (BOOL)canPlayMovie;
- (PXDiagnosticsItemProvider)diagnosticsItemProvider;
- (PXMovieProvider)init;
- (PXMovieProvider)initWithAssetCollection:(id)a3;
- (PXMovieProvider)initWithAssetCollection:(id)a3 keyAsset:(id)a4;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:50 description:@"This class should be never be used directly"];

  return 0;
}

- (BOOL)canPlayMovie
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:45 description:@"This class should be never be used directly"];

  return 0;
}

- (UIViewController)movieViewController
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:40 description:@"This class should be never be used directly"];

  return 0;
}

- (PXMovieProvider)initWithAssetCollection:(id)a3 keyAsset:(id)a4
{
  v7 = a4;
  v8 = [(PXMovieProvider *)self initWithAssetCollection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_keyAsset, a4);
  }

  return v9;
}

- (PXMovieProvider)initWithAssetCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMovieProvider;
  v6 = [(PXMovieProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetCollection, a3);
  }

  return v7;
}

- (PXMovieProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMovieProvider.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXMovieProvider init]"}];

  abort();
}

@end