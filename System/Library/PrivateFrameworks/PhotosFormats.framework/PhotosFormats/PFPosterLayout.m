@interface PFPosterLayout
+ (id)layoutWithDictionaryRepresentation:(id)a3;
- (BOOL)isUsingHeadroom;
- (CGSize)imageSize;
- (PFPosterLayout)initWithPortraitLayout:(id)a3 landscapeLayout:(id)a4;
- (id)dictionaryRepresentation;
- (id)layoutByUpdatingConfiguration:(id)a3;
- (id)layoutByUpdatingConfigurationWithSaliency:(id)a3 normalizedTopEdgeInset:(double)a4;
- (id)layoutByUpdatingNormalizedPortraitAdaptiveTimeFrame:(CGRect)a3 landscapeAdaptiveTimeFrame:(CGRect)a4;
- (id)layoutByUpdatingNormalizedPortraitAdaptiveVisibleFrame:(CGRect)a3 landscapeAdaptiveVisibleFrame:(CGRect)a4;
- (id)layoutByUpdatingNormalizedPortraitVisibleFrame:(CGRect)a3 landscapeVisibleFrame:(CGRect)a4;
- (id)layoutByUpgradingToConfiguration:(id)a3;
@end

@implementation PFPosterLayout

- (id)dictionaryRepresentation
{
  v3 = [(PFPosterOrientedLayout *)self->_portraitLayout dictionaryRepresentation];
  v4 = [(PFPosterOrientedLayout *)self->_landscapeLayout dictionaryRepresentation];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 setObject:&unk_1F2AAB5C0 forKeyedSubscript:@"version"];
  [v5 setObject:v3 forKeyedSubscript:@"portrait"];
  [v5 setObject:v4 forKeyedSubscript:@"landscape"];

  return v5;
}

- (id)layoutByUpgradingToConfiguration:(id)a3
{
  portraitLayout = self->_portraitLayout;
  v5 = a3;
  v6 = [v5 portraitConfiguration];
  v7 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpgradingToConfiguration:v6];

  landscapeLayout = self->_landscapeLayout;
  v9 = [v5 landscapeConfiguration];

  v10 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpgradingToConfiguration:v9];

  v11 = [[PFPosterLayout alloc] initWithPortraitLayout:v7 landscapeLayout:v10];

  return v11;
}

- (id)layoutByUpdatingNormalizedPortraitAdaptiveTimeFrame:(CGRect)a3 landscapeAdaptiveTimeFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
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
      v16 = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedAdaptiveTimeFrame:x, y, width, height];

      v14 = v16;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingNormalizedPortraitAdaptiveVisibleFrame:(CGRect)a3 landscapeAdaptiveVisibleFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
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
      v16 = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedAdaptiveVisibleFrame:x, y, width, height];

      v14 = v16;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingNormalizedPortraitVisibleFrame:(CGRect)a3 landscapeVisibleFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
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
      v16 = [(PFPosterOrientedLayout *)self->_landscapeLayout layoutByUpdatingNormalizedVisibleFrame:x, y, width, height];

      v14 = v16;
    }
  }

  v17 = [[PFPosterLayout alloc] initWithPortraitLayout:v13 landscapeLayout:v14];

  return v17;
}

- (id)layoutByUpdatingConfigurationWithSaliency:(id)a3 normalizedTopEdgeInset:(double)a4
{
  portraitLayout = self->_portraitLayout;
  v7 = a3;
  v8 = [v7 portraitConfiguration];
  v9 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpdatingConfigurationWithSaliency:v8 normalizedTopEdgeInset:a4];

  landscapeLayout = self->_landscapeLayout;
  v11 = [v7 landscapeConfiguration];

  v12 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpdatingConfigurationWithSaliency:v11 normalizedTopEdgeInset:a4];

  v13 = [[PFPosterLayout alloc] initWithPortraitLayout:v9 landscapeLayout:v12];

  return v13;
}

- (id)layoutByUpdatingConfiguration:(id)a3
{
  portraitLayout = self->_portraitLayout;
  v5 = a3;
  v6 = [v5 portraitConfiguration];
  v7 = [(PFPosterOrientedLayout *)portraitLayout layoutByUpdatingConfiguration:v6];

  landscapeLayout = self->_landscapeLayout;
  v9 = [v5 landscapeConfiguration];

  v10 = [(PFPosterOrientedLayout *)landscapeLayout layoutByUpdatingConfiguration:v9];

  v11 = [[PFPosterLayout alloc] initWithPortraitLayout:v7 landscapeLayout:v10];

  return v11;
}

- (PFPosterLayout)initWithPortraitLayout:(id)a3 landscapeLayout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PFPosterLayout;
  v8 = [(PFPosterLayout *)&v13 init];
  portraitLayout = v8->_portraitLayout;
  v8->_portraitLayout = v6;
  v10 = v6;

  landscapeLayout = v8->_landscapeLayout;
  v8->_landscapeLayout = v7;

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

+ (id)layoutWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v3 objectForKeyedSubscript:@"portrait"];
    v6 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v5];

    v7 = [v3 objectForKeyedSubscript:@"landscape"];
    v8 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v7];

    v9 = [[PFPosterLayout alloc] initWithPortraitLayout:v6 landscapeLayout:v8];
  }

  else
  {
    v6 = [PFPosterOrientedLayout layoutWithDictionaryRepresentation:v3];
    v9 = [[PFPosterLayout alloc] initWithPortraitLayout:v6 landscapeLayout:0];
  }

  return v9;
}

@end