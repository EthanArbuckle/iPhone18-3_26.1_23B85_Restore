@interface PXStoryMoviePresenter
- (BOOL)presentMovieViewControllerForAssetCollection:(id)collection keyAssetFetchResult:(id)result referencePersons:(id)persons preferredTransitionType:(int64_t)type;
@end

@implementation PXStoryMoviePresenter

- (BOOL)presentMovieViewControllerForAssetCollection:(id)collection keyAssetFetchResult:(id)result referencePersons:(id)persons preferredTransitionType:(int64_t)type
{
  personsCopy = persons;
  resultCopy = result;
  collectionCopy = collection;
  v12 = [[PXStoryConfiguration alloc] initWithAssetCollection:collectionCopy keyAsset:resultCopy referencePersons:personsCopy];

  v13 = [PXStoryUIFactory viewControllerWithConfiguration:v12 contentViewController:0];
  presentingViewController = [(PXMoviePresenter *)self presentingViewController];
  [presentingViewController presentViewController:v13 animated:1 completion:0];

  return 1;
}

@end