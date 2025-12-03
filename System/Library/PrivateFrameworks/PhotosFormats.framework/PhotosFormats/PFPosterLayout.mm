@interface PFPosterLayout
+ (id)layoutWithDictionaryRepresentation:(id)representation;
- (BOOL)isUsingHeadroom;
- (CGSize)imageSize;
- (PFPosterLayout)initWithPortraitLayout:(id)layout landscapeLayout:(id)landscapeLayout;
- (id)dictionaryRepresentation;
- (id)layoutByUpdatingConfiguration:(id)configuration;
- (id)layoutByUpdatingConfigurationWithSaliency:(id)saliency normalizedTopEdgeInset:(double)inset;
- (id)layoutByUpdatingNormalizedPortraitAdaptiveTimeFrame:(CGRect)frame landscapeAdaptiveTimeFrame:(CGRect)timeFrame;
- (id)layoutByUpdatingNormalizedPortraitAdaptiveVisibleFrame:(CGRect)frame landscapeAdaptiveVisibleFrame:(CGRect)visibleFrame;
- (id)layoutByUpdatingNormalizedPortraitVisibleFrame:(CGRect)frame landscapeVisibleFrame:(CGRect)visibleFrame;
- (id)layoutByUpgradingToConfiguration:(id)configuration;
@end

@implementation PFPosterLayout

- (id)dictionaryRepresentation
{
  dictionaryRepresentation = [(PFPosterOrientedLayout *)self->_portraitLayout dictionaryRepresentation];
  dictionaryRepresentation2 = [(PFPosterOrientedLayout *)self->_landscapeLayout dictionaryRepresentation];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:&unk_1F2AAB5C0 forKeyedSubscript:@"version"];
  [v5 setObject:dictionaryRepresentation forKeyedSubscript:@"portrait"];
  [v5 setObject:dictionaryRepresentation2 forKeyedSubscript:@"landscape"];

  return v5;
}

- (id)layoutByUpgradingToConfiguration:(id)configuration
{
  portraitLayout = self->_portraitLayout;
  configurationCopy = configuration;
  portraitConfiguration = [configurationCopy portraitConfiguration];
  v7 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpgradingToConfiguration:portraitConfiguration];

  landscapeLayout = self->_landscapeLayout;
  landscapeConfiguration = [configurationCopy landscapeConfiguration];

  v10 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpgradingToConfiguration:landscapeConfiguration];

  v11 = [[PFPosterLayout alloc] initWithPortraitLayout:v7 landscapeLayout:v10];

  return v11;
}

- (id)layoutByUpdatingNormalizedPortraitAdaptiveTimeFrame:(CGRect)frame landscapeAdaptiveTimeFrame:(CGRect)timeFrame
{
  height = timeFrame.size.height;
  width = timeFrame.size.width;
  y = timeFrame.origin.y;
  x = timeFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13 = self->_portraitLayout;
  v14 = self->_landscapeLayout;
  v20.origin.x = v11;
  v20.origin.y = v10;
  v20.size.width = v9;
  v20.size.height = v8;
  if (!CGRectIsEmpty(v20))
  {
    v21.origin.x = v11;
    v21.origin.y = v10;
    v21.size.width = v9;
    v21.size.height = v8;
    if (!CGRectIsInfinite(v21))
    {
      v15 = [(PFPosterOrientedLayout *)self->_portraitLayout layoutByUpdatingNormalizedAdaptiveTimeFrame:v11, v10, v9, v8];

      v13 = v15;
    }
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsEmpty(v22))
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (!CGRectIsInfinite(v23))
    {
      height = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedAdaptiveTimeFrame:x, y, width, height];

      v14 = height;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingNormalizedPortraitAdaptiveVisibleFrame:(CGRect)frame landscapeAdaptiveVisibleFrame:(CGRect)visibleFrame
{
  height = visibleFrame.size.height;
  width = visibleFrame.size.width;
  y = visibleFrame.origin.y;
  x = visibleFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13 = self->_portraitLayout;
  v14 = self->_landscapeLayout;
  v20.origin.x = v11;
  v20.origin.y = v10;
  v20.size.width = v9;
  v20.size.height = v8;
  if (!CGRectIsEmpty(v20))
  {
    v21.origin.x = v11;
    v21.origin.y = v10;
    v21.size.width = v9;
    v21.size.height = v8;
    if (!CGRectIsInfinite(v21))
    {
      v15 = [(PFPosterOrientedLayout *)self->_portraitLayout layoutByUpdatingNormalizedAdaptiveVisibleFrame:v11, v10, v9, v8];

      v13 = v15;
    }
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsEmpty(v22))
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (!CGRectIsInfinite(v23))
    {
      height = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedAdaptiveVisibleFrame:x, y, width, height];

      v14 = height;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingNormalizedPortraitVisibleFrame:(CGRect)frame landscapeVisibleFrame:(CGRect)visibleFrame
{
  height = visibleFrame.size.height;
  width = visibleFrame.size.width;
  y = visibleFrame.origin.y;
  x = visibleFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  v13 = self->_portraitLayout;
  v14 = self->_landscapeLayout;
  v20.origin.x = v11;
  v20.origin.y = v10;
  v20.size.width = v9;
  v20.size.height = v8;
  if (!CGRectIsEmpty(v20))
  {
    v21.origin.x = v11;
    v21.origin.y = v10;
    v21.size.width = v9;
    v21.size.height = v8;
    if (!CGRectIsInfinite(v21))
    {
      v15 = [(PFPosterOrientedLayout *)self->_portraitLayout layoutByUpdatingNormalizedVisibleFrame:v11, v10, v9, v8];

      v13 = v15;
    }
  }

  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  if (!CGRectIsEmpty(v22))
  {
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    if (!CGRectIsInfinite(v23))
    {
      height = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedVisibleFrame:x, y, width, height];

      v14 = height;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingConfigurationWithSaliency:(id)saliency normalizedTopEdgeInset:(double)inset
{
  portraitLayout = self->_portraitLayout;
  saliencyCopy = saliency;
  portraitConfiguration = [saliencyCopy portraitConfiguration];
  v9 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpdatingConfigurationWithSaliency:portraitConfiguration normalizedTopEdgeInset:inset];

  landscapeLayout = self->_landscapeLayout;
  landscapeConfiguration = [saliencyCopy landscapeConfiguration];

  v12 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpdatingConfigurationWithSaliency:landscapeConfiguration normalizedTopEdgeInset:inset];

  v13 = [[PFPosterLayout alloc] initWithPortraitLayout:v9 landscapeLayout:v12];

  return v13;
}

- (id)layoutByUpdatingConfiguration:(id)configuration
{
  portraitLayout = self->_portraitLayout;
  configurationCopy = configuration;
  portraitConfiguration = [configurationCopy portraitConfiguration];
  v7 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpdatingConfiguration:portraitConfiguration];

  landscapeLayout = self->_landscapeLayout;
  landscapeConfiguration = [configurationCopy landscapeConfiguration];

  v10 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpdatingConfiguration:landscapeConfiguration];

  v11 = [[PFPosterLayout alloc] initWithPortraitLayout:v7 landscapeLayout:v10];

  return v11;
}

- (PFPosterLayout)initWithPortraitLayout:(id)layout landscapeLayout:(id)landscapeLayout
{
  layoutCopy = layout;
  landscapeLayoutCopy = landscapeLayout;
  v13.receiver = self;
  v13.super_class = PFPosterLayout;
  v8 = [(PFPosterLayout *)&v13 init];
  portraitLayout = v8->_portraitLayout;
  v8->_portraitLayout = layoutCopy;
  v10 = layoutCopy;

  landscapeLayout = v8->_landscapeLayout;
  v8->_landscapeLayout = landscapeLayoutCopy;

  return v8;
}

- (CGSize)imageSize
{
  [(PFPosterOrientedLayout *)self->_portraitLayout imageSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)isUsingHeadroom
{
  if ([(PFPosterOrientedLayout *)self->_portraitLayout isUsingHeadroom])
  {
    return 1;
  }

  landscapeLayout = self->_landscapeLayout;

  return [(PFPosterOrientedLayout *)landscapeLayout isUsingHeadroom];
}

+ (id)layoutWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = [representationCopy objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [representationCopy objectForKeyedSubscript:@"portrait"];
    v6 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v5];

    v7 = [representationCopy objectForKeyedSubscript:@"landscape"];
    v8 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v7];

    v9 = [[PFPosterLayout alloc] initWithPortraitLayout:v6 landscapeLayout:v8];
  }

  else
  {
    v6 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:representationCopy];
    v9 = [[PFPosterLayout alloc] initWithPortraitLayout:v6 landscapeLayout:0];
  }

  return v9;
}

@end