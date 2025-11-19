@interface PLFullSizeRenderImageVirtualResource
- (PLFullSizeRenderImageVirtualResource)initWithAsset:(id)a3;
@end

@implementation PLFullSizeRenderImageVirtualResource

- (PLFullSizeRenderImageVirtualResource)initWithAsset:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLFullSizeRenderImageVirtualResource;
  v5 = [(PLVirtualResource *)&v9 initWithAsset:v4 resourceType:0 version:2 recipeID:65938];
  if (v5)
  {
    v6 = [v4 fileTypeForFullsizeRenderImage];
    v7 = [PLUniformTypeIdentifier utiWithIdentifier:v6];

    [(PLVirtualResource *)v5 setUniformTypeIdentifier:v7];
    -[PLVirtualResource setUnorientedWidth:](v5, "setUnorientedWidth:", [v4 width]);
    -[PLVirtualResource setUnorientedHeight:](v5, "setUnorientedHeight:", [v4 height]);
  }

  return v5;
}

@end