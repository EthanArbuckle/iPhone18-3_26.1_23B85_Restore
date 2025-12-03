@interface PLSharedAssetsContainerIncrementalChangeContainer
- (PLSharedAssetsContainerIncrementalChangeContainer)initWithAsset:(id)asset change:(id)change;
@end

@implementation PLSharedAssetsContainerIncrementalChangeContainer

- (PLSharedAssetsContainerIncrementalChangeContainer)initWithAsset:(id)asset change:(id)change
{
  assetCopy = asset;
  changeCopy = change;
  v14.receiver = self;
  v14.super_class = PLSharedAssetsContainerIncrementalChangeContainer;
  v10 = [(PLSharedAssetsContainerIncrementalChangeContainer *)&v14 init];
  if (v10)
  {
    if (assetCopy)
    {
      if (changeCopy)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, asset);
        objc_storeStrong(&v10->_change, change);
        goto LABEL_5;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PLSharedAssetsContainer.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

      if (changeCopy)
      {
        goto LABEL_4;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v10 file:@"PLSharedAssetsContainer.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"change"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

@end