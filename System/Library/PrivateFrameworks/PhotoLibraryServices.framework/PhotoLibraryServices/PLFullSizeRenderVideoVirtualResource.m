@interface PLFullSizeRenderVideoVirtualResource
- (PLFullSizeRenderVideoVirtualResource)initWithAsset:(id)a3;
@end

@implementation PLFullSizeRenderVideoVirtualResource

- (PLFullSizeRenderVideoVirtualResource)initWithAsset:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLFullSizeRenderVideoVirtualResource;
  v5 = [(PLVirtualResource *)&v10 initWithAsset:v4 resourceType:1 version:2 recipeID:0x20000];
  if (v5)
  {
    -[PLVirtualResource setUnorientedWidth:](v5, "setUnorientedWidth:", [v4 width]);
    -[PLVirtualResource setUnorientedHeight:](v5, "setUnorientedHeight:", [v4 height]);
    v6 = [PLResourceRecipe recipeFromID:0x20000];
    v7 = [v6 uti];
    [(PLVirtualResource *)v5 setUniformTypeIdentifier:v7];

    v8 = [v6 codecFourCharCodeName];
    [(PLVirtualResource *)v5 setCodecFourCharCodeName:v8];
  }

  return v5;
}

@end