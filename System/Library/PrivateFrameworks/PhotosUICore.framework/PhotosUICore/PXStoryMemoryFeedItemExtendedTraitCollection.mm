@interface PXStoryMemoryFeedItemExtendedTraitCollection
- (PXStoryMemoryFeedItemExtendedTraitCollection)initWithSpecManager:(id)manager initialReferenceSize:(CGSize)size isFullscreen:(BOOL)fullscreen;
@end

@implementation PXStoryMemoryFeedItemExtendedTraitCollection

- (PXStoryMemoryFeedItemExtendedTraitCollection)initWithSpecManager:(id)manager initialReferenceSize:(CGSize)size isFullscreen:(BOOL)fullscreen
{
  height = size.height;
  width = size.width;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = PXStoryMemoryFeedItemExtendedTraitCollection;
  height = [(PXStoryExtendedTraitCollection *)&v18 initWithLayoutReferenceSize:width, height];
  if (height)
  {
    spec = [managerCopy spec];
    v12 = spec;
    if (fullscreen)
    {
      [spec overlayFeedPeekDistance];
      height->_bottomTitleContentOffset = v13;
    }

    else
    {
      [spec itemCornerRadius];
      height->_viewportCornerRadius = v14;
      itemShadow = [v12 itemShadow];
      viewportShadow = height->_viewportShadow;
      height->_viewportShadow = itemShadow;
    }

    height->_isFullscreen = fullscreen;
    height->_userInterfaceFeature = 1;
  }

  return height;
}

@end