@interface PXStoryMoviePresenter
- (BOOL)presentMovieViewControllerForAssetCollection:(id)a3 keyAssetFetchResult:(id)a4 referencePersons:(id)a5 preferredTransitionType:(int64_t)a6;
@end

@implementation PXStoryMoviePresenter

- (BOOL)presentMovieViewControllerForAssetCollection:(id)a3 keyAssetFetchResult:(id)a4 referencePersons:(id)a5 preferredTransitionType:(int64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[PXStoryConfiguration alloc] initWithAssetCollection:v11 keyAsset:v10 referencePersons:v9];

  v13 = [PXStoryUIFactory viewControllerWithConfiguration:v12 contentViewController:0];
  v14 = [(PXMoviePresenter *)self presentingViewController];
  [v14 presentViewController:v13 animated:1 completion:0];

  return 1;
}

@end