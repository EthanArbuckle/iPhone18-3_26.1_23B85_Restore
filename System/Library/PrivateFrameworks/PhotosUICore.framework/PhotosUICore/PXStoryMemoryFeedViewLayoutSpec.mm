@interface PXStoryMemoryFeedViewLayoutSpec
- (BOOL)wantsFirstItemFullscreen;
- (BOOL)wantsItemHoverEvents;
- (PXStoryMemoryFeedViewLayoutSpec)init;
- (PXStoryMemoryFeedViewLayoutSpec)initWithMemoriesSpec:(id)spec;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)placeholderMargins;
- (UIEdgeInsets)subtitleInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (UIEdgeInsets)viewOutsets;
- (id)_fullscreenLayoutGeneratorWithReferenceSize:(CGSize)size;
- (id)layoutGeneratorWithReferenceSize:(CGSize)size;
- (int64_t)rootLayoutOrientation;
@end

@implementation PXStoryMemoryFeedViewLayoutSpec

- (UIEdgeInsets)subtitleInsets
{
  top = self->_subtitleInsets.top;
  left = self->_subtitleInsets.left;
  bottom = self->_subtitleInsets.bottom;
  right = self->_subtitleInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)viewOutsets
{
  top = self->_viewOutsets.top;
  left = self->_viewOutsets.left;
  bottom = self->_viewOutsets.bottom;
  right = self->_viewOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_fullscreenLayoutGeneratorWithReferenceSize:(CGSize)size
{
  [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
  objc_claimAutoreleasedReturnValue();
  +[PXStorySettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  self->_numberOfColumns = 4;
  PXVisionScaledFloat();
}

- (id)layoutGeneratorWithReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (![(PXStoryMemoryFeedViewLayoutSpec *)self wantsFirstItemFullscreen])
  {
    memoriesSpec = [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
    v8 = +[PXStorySettings sharedInstance];
    userInterfaceIdiom = [memoriesSpec userInterfaceIdiom];
    v11 = [(PXStoryMemoryFeedViewLayoutSpec *)self rootLayoutOrientation]== 2 || userInterfaceIdiom == 4;
    sizeClass = [memoriesSpec sizeClass];
    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (sizeClass == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    if (sizeClass >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    self->_numberOfColumns = v15;
    if (v11)
    {
      [v8 feedCardLandscapeAspectRatio];
    }

    else
    {
      [v8 feedCardPortraitAspectRatio];
    }

    [memoriesSpec feedInteritemSpacing];
    [memoriesSpec feedEntryEdgeInsets];
    [memoriesSpec safeAreaInsets];
    PXEdgeInsetsMax();
  }

  height = [(PXStoryMemoryFeedViewLayoutSpec *)self _fullscreenLayoutGeneratorWithReferenceSize:width, height];

  return height;
}

- (int64_t)rootLayoutOrientation
{
  result = self->_rootLayoutOrientation;
  if (!result)
  {
    memoriesSpec = [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
    rootExtendedTraitCollection = [memoriesSpec rootExtendedTraitCollection];
    self->_rootLayoutOrientation = [rootExtendedTraitCollection layoutOrientation];

    return self->_rootLayoutOrientation;
  }

  return result;
}

- (UIEdgeInsets)placeholderMargins
{
  v2 = *off_1E7721FA8;
  v3 = *(off_1E7721FA8 + 1);
  v4 = *(off_1E7721FA8 + 2);
  v5 = *(off_1E7721FA8 + 3);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)wantsItemHoverEvents
{
  v2 = +[PXStorySettings sharedInstance];
  showFeedChromeOnHover = [v2 showFeedChromeOnHover];

  return showFeedChromeOnHover;
}

- (BOOL)wantsFirstItemFullscreen
{
  v2 = +[PXStorySettings sharedInstance];
  wantsFullscreenFeedExperience = [v2 wantsFullscreenFeedExperience];

  return wantsFullscreenFeedExperience;
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  v2 = *off_1E7721FA8;
  v3 = *(off_1E7721FA8 + 1);
  v4 = *(off_1E7721FA8 + 2);
  v5 = *(off_1E7721FA8 + 3);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  v2 = *off_1E7721FA8;
  v3 = *(off_1E7721FA8 + 1);
  v4 = *(off_1E7721FA8 + 2);
  v5 = *(off_1E7721FA8 + 3);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (PXStoryMemoryFeedViewLayoutSpec)initWithMemoriesSpec:(id)spec
{
  specCopy = spec;
  if (!specCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"memoriesSpec != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PXStoryMemoryFeedViewLayoutSpec;
  v7 = [(PXStoryMemoryFeedViewLayoutSpec *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_memoriesSpec, spec);
    v9 = [off_1E7721880 normalBehaviorWithAxis:1];
    scrollBehavior = v8->_scrollBehavior;
    v8->_scrollBehavior = v9;

    v11 = +[PXStorySettings sharedInstance];
    [v11 feedItemCornerRadius];
    v8->_itemCornerRadius = v12;
    if ([v11 wantsFeedItemShadow])
    {
      feedItemShadow = [v11 feedItemShadow];
    }

    else
    {
      feedItemShadow = 0;
    }

    itemShadow = v8->_itemShadow;
    v8->_itemShadow = feedItemShadow;
  }

  return v8;
}

- (PXStoryMemoryFeedViewLayoutSpec)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:105 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedViewLayoutSpec init]"}];

  abort();
}

@end