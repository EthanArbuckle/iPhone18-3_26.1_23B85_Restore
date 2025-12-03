@interface SUBannerCellConfiguration
+ (double)rowHeightForContext:(id)context representedObject:(id)object;
+ (id)copyDefaultContext;
- (CGSize)_imageSizeForLayoutSize:(CGSize)size;
- (id)copyImageDataProvider;
- (void)reloadAfterArtworkLoad;
- (void)reloadImages;
- (void)reloadLayoutInformation;
@end

@implementation SUBannerCellConfiguration

+ (id)copyDefaultContext
{
  v2 = objc_alloc_init(SUItemCellContext);
  v3 = objc_alloc_init(SUImageDataProvider);
  -[SUImageDataProvider setFillColor:](v3, "setFillColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUImageDataProvider *)v3 setFinalSize:147.0, 83.0];
  v4 = objc_alloc_init(SUClipCornersImageModifier);
  [(SUClipCornersImageModifier *)v4 setCornerRadius:10.0];
  [(SUClipCornersImageModifier *)v4 setCorners:255];
  v5 = objc_alloc_init(SUStrokeEdgesImageModifier);
  [(SUStrokeEdgesImageModifier *)v5 setEdgeInsets:1.0, 1.0, 1.0, 1.0];
  -[SUStrokeEdgesImageModifier setStrokeColor:](v5, "setStrokeColor:", [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.200000003]);
  [(SUStrokeEdgesImageModifier *)v5 setStrokeCurrentPath:1];
  v6 = objc_alloc_init(SUArrayImageModifier);
  -[SUArrayImageModifier setModifiers:](v6, "setModifiers:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v4, v5, 0}]);
  [(SUImageDataProvider *)v3 setModifier:v6];

  [(SUArtworkCellContext *)v2 setImageProvider:v3];
  v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderBanner.png"];
  if (!v7)
  {
    v7 = [MEMORY[0x1E69DCAB8] imageNamed:@"PlaceholderBanner.png" inBundle:{objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class())}];
  }

  [(SUArtworkCellContext *)v2 setPlaceholderImage:v7];
  return v2;
}

+ (double)rowHeightForContext:(id)context representedObject:(id)object
{
  tableViewStyle = [context tableViewStyle];
  result = 101.0;
  if (tableViewStyle == 1)
  {
    return 84.0;
  }

  return result;
}

- (id)copyImageDataProvider
{
  v3 = [objc_msgSend(self->super.super.super.super._context "imageProvider")];
  if (self->super.super.super.super._layoutSize.width > 0.00000011920929)
  {
    [(SUBannerCellConfiguration *)self _imageSizeForLayoutSize:?];
    [v3 setFinalSize:?];
  }

  return v3;
}

- (void)reloadAfterArtworkLoad
{
  [(SUBannerCellConfiguration *)self reloadImages];
  v3.receiver = self;
  v3.super_class = SUBannerCellConfiguration;
  [(SUArtworkCellConfiguration *)&v3 reloadAfterArtworkLoad];
}

- (void)reloadImages
{
  v3 = [objc_msgSend(self->super.super.super.super._representedObject "itemImageCollection")];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [v3 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [(SUArtworkCellConfiguration *)self artworkImageForItemImage:v5];
  }

  else
  {
    v6 = 0;
  }

  *self->super.super.super._images = v6;
  if (v4 < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 objectAtIndex:1];
  }

  if (v7)
  {
    v8 = [(SUArtworkCellConfiguration *)self artworkImageForItemImage:v7];
  }

  else
  {
    v8 = 0;
  }

  *(self->super.super.super._images + 1) = v8;
}

- (void)reloadLayoutInformation
{
  p_layoutSize = &self->super.super.super.super._layoutSize;
  [(SUBannerCellConfiguration *)self _imageSizeForLayoutSize:self->super.super.super.super._layoutSize.width, self->super.super.super.super._layoutSize.height];
  v5 = (p_layoutSize->height - v4) * 0.5;
  v6 = floorf(v5);
  imageFrames = self->super.super.super._imageFrames;
  imageFrames->origin.x = 0.0;
  imageFrames->origin.y = v6;
  imageFrames->size.width = v8;
  imageFrames->size.height = v4;
  imageFrames[1].origin.x = p_layoutSize->width - v8;
  imageFrames[1].origin.y = v6;
  imageFrames[1].size.width = v8;
  imageFrames[1].size.height = v4;
  if (![self->super.super.super.super._context tableViewStyle])
  {
    v9 = self->super.super.super._imageFrames;
    v9->origin.x = 10.0;
    v9[1].origin.x = v9[1].origin.x + -10.0;
  }
}

- (CGSize)_imageSizeForLayoutSize:(CGSize)size
{
  v3 = size.width + -6.0;
  tableViewStyle = [self->super.super.super.super._context tableViewStyle];
  v5 = v3 + -20.0;
  if (tableViewStyle)
  {
    v5 = v3;
  }

  v6 = v5 * 0.5;
  v7 = fminf(roundf(v6), 147.0);
  v8 = v7;
  v9 = roundf(v7 * 0.56463);
  result.height = v9;
  result.width = v8;
  return result;
}

@end