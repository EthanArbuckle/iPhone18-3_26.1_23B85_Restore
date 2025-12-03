@interface PFWallpaperCompoundLayerStack
- (CGSize)size;
- (PFPosterLayout)layout;
- (PFWallpaperCompoundLayerStack)initWithPortraitLayerStack:(id)stack landscapeLayerStack:(id)layerStack;
- (id)compoundLayerStackByUpdatingParallaxDisabled:(BOOL)disabled;
- (id)compoundLayerStackByUpdatingPortraitDepthEnabled:(BOOL)enabled landscapeDepthEnabled:(BOOL)depthEnabled;
- (id)compoundLayerStackByUpdatingSettlingEffectEnabled:(BOOL)enabled;
- (id)compoundLayerStackByUpdatingSpatialPhotoEnabled:(BOOL)enabled;
- (id)compoundLayerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)frame;
@end

@implementation PFWallpaperCompoundLayerStack

- (PFPosterLayout)layout
{
  v3 = [PFPosterLayout alloc];
  layout = [(PFParallaxLayerStack *)self->_portraitLayerStack layout];
  layout2 = [(PFParallaxLayerStack *)self->_landscapeLayerStack layout];
  v6 = [(PFPosterLayout *)v3 initWithPortraitLayout:layout landscapeLayout:layout2];

  return v6;
}

- (id)compoundLayerStackByUpdatingUserAdjustedVisibleFrame:(BOOL)frame
{
  frameCopy = frame;
  portraitLayerStack = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [portraitLayerStack layerStackByUpdatingUserAdjustedVisibleFrame:frameCopy];

  landscapeLayerStack = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [landscapeLayerStack layerStackByUpdatingUserAdjustedVisibleFrame:frameCopy];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingSpatialPhotoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  portraitLayerStack = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [portraitLayerStack layerStackByUpdatingSpatialPhotoEnabled:enabledCopy];

  landscapeLayerStack = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [landscapeLayerStack layerStackByUpdatingSpatialPhotoEnabled:enabledCopy];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingSettlingEffectEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  portraitLayerStack = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v6 = [portraitLayerStack layerStackByUpdatingSettlingEffectEnabled:enabledCopy];

  landscapeLayerStack = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v8 = [landscapeLayerStack layerStackByUpdatingSettlingEffectEnabled:enabledCopy];

  v9 = [[PFWallpaperCompoundLayerStack alloc] initWithPortraitLayerStack:v6 landscapeLayerStack:v8];

  return v9;
}

- (id)compoundLayerStackByUpdatingParallaxDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v5 = [PFWallpaperCompoundLayerStack alloc];
  portraitLayerStack = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v7 = [portraitLayerStack layerStackByUpdatingParallaxDisabled:disabledCopy];
  landscapeLayerStack = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v9 = [landscapeLayerStack layerStackByUpdatingParallaxDisabled:disabledCopy];
  v10 = [(PFWallpaperCompoundLayerStack *)v5 initWithPortraitLayerStack:v7 landscapeLayerStack:v9];

  return v10;
}

- (id)compoundLayerStackByUpdatingPortraitDepthEnabled:(BOOL)enabled landscapeDepthEnabled:(BOOL)depthEnabled
{
  depthEnabledCopy = depthEnabled;
  enabledCopy = enabled;
  v7 = [PFWallpaperCompoundLayerStack alloc];
  portraitLayerStack = [(PFWallpaperCompoundLayerStack *)self portraitLayerStack];
  v9 = [portraitLayerStack layerStackByUpdatingDepthEnabled:enabledCopy];
  landscapeLayerStack = [(PFWallpaperCompoundLayerStack *)self landscapeLayerStack];
  v11 = [landscapeLayerStack layerStackByUpdatingDepthEnabled:depthEnabledCopy];
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

- (PFWallpaperCompoundLayerStack)initWithPortraitLayerStack:(id)stack landscapeLayerStack:(id)layerStack
{
  stackCopy = stack;
  layerStackCopy = layerStack;
  if (stackCopy)
  {
    v12.receiver = self;
    v12.super_class = PFWallpaperCompoundLayerStack;
    v9 = [(PFWallpaperCompoundLayerStack *)&v12 init];
    objc_storeStrong(&v9->_portraitLayerStack, stack);
    objc_storeStrong(&v9->_landscapeLayerStack, layerStack);
    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end