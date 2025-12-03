@interface PLFullSizeRenderImageVirtualResource
- (PLFullSizeRenderImageVirtualResource)initWithAsset:(id)asset;
@end

@implementation PLFullSizeRenderImageVirtualResource

- (PLFullSizeRenderImageVirtualResource)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PLFullSizeRenderImageVirtualResource;
  v5 = [(PLVirtualResource *)&v9 initWithAsset:assetCopy resourceType:0 version:2 recipeID:65938];
  if (v5)
  {
    fileTypeForFullsizeRenderImage = [assetCopy fileTypeForFullsizeRenderImage];
    v7 = [PLUniformTypeIdentifier utiWithIdentifier:fileTypeForFullsizeRenderImage];

    [(PLVirtualResource *)v5 setUniformTypeIdentifier:v7];
    -[PLVirtualResource setUnorientedWidth:](v5, "setUnorientedWidth:", [assetCopy width]);
    -[PLVirtualResource setUnorientedHeight:](v5, "setUnorientedHeight:", [assetCopy height]);
  }

  return v5;
}

@end