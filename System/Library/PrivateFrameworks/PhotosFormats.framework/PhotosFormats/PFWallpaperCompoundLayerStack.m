@interface PFWallpaperCompoundLayerStack
- (CGSize)size;
- (PFPosterLayout)layout;
- (PFWallpaperCompoundLayerStack)initWithPortraitLayerStack:(id)a3 landscapeLayerStack:(id)a4;
- (id)compoundLayerStackByUpdatingParallaxDisabled:(BOOL)a3;
- (id)compoundLayerStackByUpdatingPortraitDepthEnabled:(BOOL)a3 landscapeDepthEnabled:(BOOL)a4;
- (id)compoundLayerStackByUpdatingSettlingEffectEnabled:(BOOL)a3;
- (id)compoundLayerStackByUpdatingSpatialPhotoEnabled:(BOOL)a3;
- (id)compoundLayerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)a3;
@end

@implementation PFWallpaperCompoundLayerStack

- (PFPosterLayout)layout
{
  v3 = [PFPosterLayout alloc];
  v4 = [(PFParallaxLayerStack *)self->_portraitLayerStack layout];
  v5 = [(PFParallaxLayerStack *)self->_landscapeLayerStack layout];
  v6 = [(PFPosterLayout *)v3 initWithPortraitLayout:v4 landscapeLayout:v5];

  return v6;
}

- (id)compoundLayerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [v5 layerStackByUpdatingUserAdjustedVisibleFrame:v3];

  v7 = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [v7 layerStackByUpdatingUserAdjustedVisibleFrame:v3];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingSpatialPhotoEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [v5 layerStackByUpdatingSpatialPhotoEnabled:v3];

  v7 = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [v7 layerStackByUpdatingSpatialPhotoEnabled:v3];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingSettlingEffectEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [v5 layerStackByUpdatingSettlingEffectEnabled:v3];

  v7 = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [v7 layerStackByUpdatingSettlingEffectEnabled:v3];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingParallaxDisabled:(BOOL)a3
{
  v3 = a3;
  v5 = [PFWallpaperCompoundLayerStack alloc];
  v6 = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v7 = [v6 layerStackByUpdatingParallaxDisabled:v3];
  v8 = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v9 = [v8 layerStackByUpdatingParallaxDisabled:v3];
  v10 = [(PFWallpaperCompoundLayerStack *)v5 initWithPortraitLayerStack:v7 landscapeLayerStack:v9];

  return v10;
}

- (id)compoundLayerStackByUpdatingPortraitDepthEnabled:(BOOL)a3 landscapeDepthEnabled:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [PFWallpaperCompoundLayerStack alloc];
  v8 = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v9 = [v8 layerStackByUpdatingDepthEnabled:v5];
  v10 = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v11 = [v10 layerStackByUpdatingDepthEnabled:v4];
  v12 = [(PFWallpaperCompoundLayerStack *)v7 initWithPortraitLayerStack:v9 landscapeLayerStack:v11];

  return v12;
}

- (CGSize)size
{
  [(PFParallaxLayerStack *)self->_portraitLayerStack size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PFWallpaperCompoundLayerStack)initWithPortraitLayerStack:(id)a3 landscapeLayerStack:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v12.receiver = self;
    v12.super_class = PFWallpaperCompoundLayerStack;
    v9 = [(PFWallpaperCompoundLayerStack *)&v12 init];
    objc_storeStrong(&v9->_portraitLayerStack, a3);
    objc_storeStrong(&v9->_landscapeLayerStack, a4);
    self = v9;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end