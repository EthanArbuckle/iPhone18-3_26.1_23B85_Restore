@interface PLFullSizeRenderVideoVirtualResource
- (PLFullSizeRenderVideoVirtualResource)initWithAsset:(id)asset;
@end

@implementation PLFullSizeRenderVideoVirtualResource

- (PLFullSizeRenderVideoVirtualResource)initWithAsset:(id)asset
{
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = PLFullSizeRenderVideoVirtualResource;
  v5 = [(PLVirtualResource *)&v10 initWithAsset:assetCopy resourceType:1 version:2 recipeID:0x20000];
  if (v5)
  {
    -[PLVirtualResource setUnorientedWidth:](v5, "setUnorientedWidth:", [assetCopy width]);
    -[PLVirtualResource setUnorientedHeight:](v5, "setUnorientedHeight:", [assetCopy height]);
    v6 = [PLResourceRecipe recipeFromID:0x20000];
    v7 = [v6 uti];
    [(PLVirtualResource *)v5 setUniformTypeIdentifier:v7];

    codecFourCharCodeName = [v6 codecFourCharCodeName];
    [(PLVirtualResource *)v5 setCodecFourCharCodeName:codecFourCharCodeName];
  }

  return v5;
}

@end