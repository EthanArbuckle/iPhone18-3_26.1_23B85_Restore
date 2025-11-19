@interface PXStoryMemoryFeedItemExtendedTraitCollection
- (PXStoryMemoryFeedItemExtendedTraitCollection)initWithSpecManager:(id)a3 initialReferenceSize:(CGSize)a4 isFullscreen:(BOOL)a5;
@end

@implementation PXStoryMemoryFeedItemExtendedTraitCollection

- (PXStoryMemoryFeedItemExtendedTraitCollection)initWithSpecManager:(id)a3 initialReferenceSize:(CGSize)a4 isFullscreen:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v18.receiver = self;
  v18.super_class = PXStoryMemoryFeedItemExtendedTraitCollection;
  v10 = [(PXStoryExtendedTraitCollection *)&v18 initWithLayoutReferenceSize:width, height];
  if (v10)
  {
    v11 = [v9 spec];
    v12 = v11;
    if (a5)
    {
      [v11 overlayFeedPeekDistance];
      v10->_bottomTitleContentOffset = v13;
    }

    else
    {
      [v11 itemCornerRadius];
      v10->_viewportCornerRadius = v14;
      v15 = [v12 itemShadow];
      viewportShadow = v10->_viewportShadow;
      v10->_viewportShadow = v15;
    }

    v10->_isFullscreen = a5;
    v10->_userInterfaceFeature = 1;
  }

  return v10;
}

@end