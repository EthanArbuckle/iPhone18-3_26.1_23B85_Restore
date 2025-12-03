@interface PXPhotosDetailsLocationSearchUIFactory
+ (id)searchViewControllerWithAssets:(id)assets delegate:(id)delegate;
+ (id)searchViewControllerWithAssets:(id)assets delegate:(id)delegate completion:(id)completion;
@end

@implementation PXPhotosDetailsLocationSearchUIFactory

+ (id)searchViewControllerWithAssets:(id)assets delegate:(id)delegate completion:(id)completion
{
  completionCopy = completion;
  delegateCopy = delegate;
  assetsCopy = assets;
  v10 = [NSClassFromString(&cfstr_Pxphotosdetail_35.isa) searchViewControllerWithAssets:assetsCopy delegate:delegateCopy completion:completionCopy];

  return v10;
}

+ (id)searchViewControllerWithAssets:(id)assets delegate:(id)delegate
{
  delegateCopy = delegate;
  assetsCopy = assets;
  v7 = [NSClassFromString(&cfstr_Pxphotosdetail_35.isa) searchViewControllerWithAssets:assetsCopy delegate:delegateCopy];

  return v7;
}

@end