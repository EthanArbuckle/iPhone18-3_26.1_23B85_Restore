@interface PLSharedAssetsContainerIncrementalChangeContainer
- (PLSharedAssetsContainerIncrementalChangeContainer)initWithAsset:(id)a3 change:(id)a4;
@end

@implementation PLSharedAssetsContainerIncrementalChangeContainer

- (PLSharedAssetsContainerIncrementalChangeContainer)initWithAsset:(id)a3 change:(id)a4
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = PLSharedAssetsContainerIncrementalChangeContainer;
  v10 = [(PLSharedAssetsContainerIncrementalChangeContainer *)&v14 init];
  if (v10)
  {
    if (v8)
    {
      if (v9)
      {
LABEL_4:
        objc_storeStrong(&v10->_asset, a3);
        objc_storeStrong(&v10->_change, a4);
        goto LABEL_5;
      }
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:v10 file:@"PLSharedAssetsContainer.m" lineNumber:352 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

      if (v9)
      {
        goto LABEL_4;
      }
    }

    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:v10 file:@"PLSharedAssetsContainer.m" lineNumber:353 description:{@"Invalid parameter not satisfying: %@", @"change"}];

    goto LABEL_4;
  }

LABEL_5:

  return v10;
}

@end