@interface PUOneUpPhotosSharingTransitionContext
- (id)keyAssetIndexPath;
@end

@implementation PUOneUpPhotosSharingTransitionContext

- (id)keyAssetIndexPath
{
  v2 = [(PUOneUpPhotosSharingTransitionContext *)self currentAssetReference];
  v3 = [v2 indexPath];

  return v3;
}

@end