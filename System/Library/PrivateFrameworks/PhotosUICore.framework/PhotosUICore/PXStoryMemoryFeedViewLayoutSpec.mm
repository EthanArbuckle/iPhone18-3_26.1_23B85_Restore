@interface PXStoryMemoryFeedViewLayoutSpec
- (BOOL)wantsFirstItemFullscreen;
- (BOOL)wantsItemHoverEvents;
- (PXStoryMemoryFeedViewLayoutSpec)init;
- (PXStoryMemoryFeedViewLayoutSpec)initWithMemoriesSpec:(id)a3;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)placeholderMargins;
- (UIEdgeInsets)subtitleInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (UIEdgeInsets)viewOutsets;
- (id)_fullscreenLayoutGeneratorWithReferenceSize:(CGSize)a3;
- (id)layoutGeneratorWithReferenceSize:(CGSize)a3;
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

- (id)_fullscreenLayoutGeneratorWithReferenceSize:(CGSize)a3
{
  [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
  objc_claimAutoreleasedReturnValue();
  +[PXStorySettings sharedInstance];
  objc_claimAutoreleasedReturnValue();
  self->_numberOfColumns = 4;
  PXVisionScaledFloat();
}

- (id)layoutGeneratorWithReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (![(PXStoryMemoryFeedViewLayoutSpec *)self wantsFirstItemFullscreen])
  {
    v7 = [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
    v8 = +[PXStorySettings sharedInstance];
    v9 = [v7 userInterfaceIdiom];
    v11 = [(PXStoryMemoryFeedViewLayoutSpec *)self rootLayoutOrientation]== 2 || v9 == 4;
    v12 = [v7 sizeClass];
    if (v11)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    if (v12 == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    if (v12 >= 2)
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

    [v7 feedInteritemSpacing];
    [v7 feedEntryEdgeInsets];
    [v7 safeAreaInsets];
    PXEdgeInsetsMax();
  }

  v6 = [(PXStoryMemoryFeedViewLayoutSpec *)self _fullscreenLayoutGeneratorWithReferenceSize:width, height];

  return v6;
}

- (int64_t)rootLayoutOrientation
{
  result = self->_rootLayoutOrientation;
  if (!result)
  {
    v4 = [(PXStoryMemoryFeedViewLayoutSpec *)self memoriesSpec];
    v5 = [v4 rootExtendedTraitCollection];
    self->_rootLayoutOrientation = [v5 layoutOrientation];

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
  v3 = [v2 showFeedChromeOnHover];

  return v3;
}

- (BOOL)wantsFirstItemFullscreen
{
  v2 = +[PXStorySettings sharedInstance];
  v3 = [v2 wantsFullscreenFeedExperience];

  return v3;
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

- (PXStoryMemoryFeedViewLayoutSpec)initWithMemoriesSpec:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"memoriesSpec != nil"}];
  }

  v17.receiver = self;
  v17.super_class = PXStoryMemoryFeedViewLayoutSpec;
  v7 = [(PXStoryMemoryFeedViewLayoutSpec *)&v17 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_memoriesSpec, a3);
    v9 = [off_1E7721880 normalBehaviorWithAxis:1];
    scrollBehavior = v8->_scrollBehavior;
    v8->_scrollBehavior = v9;

    v11 = +[PXStorySettings sharedInstance];
    [v11 feedItemCornerRadius];
    v8->_itemCornerRadius = v12;
    if ([v11 wantsFeedItemShadow])
    {
      v13 = [v11 feedItemShadow];
    }

    else
    {
      v13 = 0;
    }

    itemShadow = v8->_itemShadow;
    v8->_itemShadow = v13;
  }

  return v8;
}

- (PXStoryMemoryFeedViewLayoutSpec)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryMemoryFeedViewLayoutSpecManager.m" lineNumber:105 description:{@"%s is not available as initializer", "-[PXStoryMemoryFeedViewLayoutSpec init]"}];

  abort();
}

@end