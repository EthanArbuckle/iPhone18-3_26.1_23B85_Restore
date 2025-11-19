@interface PLFullSizeRenderVideoComplementVirtualResource
- (PLFullSizeRenderVideoComplementVirtualResource)initWithAsset:(id)a3;
@end

@implementation PLFullSizeRenderVideoComplementVirtualResource

- (PLFullSizeRenderVideoComplementVirtualResource)initWithAsset:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLFullSizeRenderVideoComplementVirtualResource;
  v3 = [(PLVirtualResource *)&v9 initWithAsset:a3 resourceType:3 version:2 recipeID:131272];
  v4 = v3;
  if (v3)
  {
    [(PLVirtualResource *)v3 setUnorientedWidth:0];
    [(PLVirtualResource *)v4 setUnorientedHeight:0];
    v5 = [PLResourceRecipe recipeFromID:131272];
    v6 = [v5 uti];
    [(PLVirtualResource *)v4 setUniformTypeIdentifier:v6];

    v7 = [v5 codecFourCharCodeName];
    [(PLVirtualResource *)v4 setCodecFourCharCodeName:v7];
  }

  return v4;
}

@end