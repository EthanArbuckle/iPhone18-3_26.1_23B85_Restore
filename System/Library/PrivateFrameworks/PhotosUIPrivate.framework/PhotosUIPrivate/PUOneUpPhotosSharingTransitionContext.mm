@interface PUOneUpPhotosSharingTransitionContext
- (id)keyAssetIndexPath;
@end

@implementation PUOneUpPhotosSharingTransitionContext

- (id)keyAssetIndexPath
{
  currentAssetReference = [(PUOneUpPhotosSharingTransitionContext *)self currentAssetReference];
  indexPath = [currentAssetReference indexPath];

  return indexPath;
}

@end