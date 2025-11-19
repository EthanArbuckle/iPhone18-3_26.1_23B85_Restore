@interface CardCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)zoomSourceView;
- (void)dragStateDidChange:(int64_t)a3;
- (void)imageViewHandler:(id)a3;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellDidSelect;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation CardCollectionViewCell

- (void)vui_prepareForReuse
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEE8B8();
}

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v4 = self;
  sub_1E3EEE9CC();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)vui_cellWillBeDisplayed
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEEEA8();
}

- (void)vui_cellDidEndDisplaying
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEF11C();
}

- (void)vui_cellDidSelect
{
  v2 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEF2D0();
}

- (void)dragStateDidChange:(int64_t)a3
{
  v4 = self;
  sub_1E3EEF410(a3);
}

- (void)imageViewHandler:(id)a3
{
  v4 = a3;
  v5 = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EF3C1C();
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E3EF45AC();

  return v3;
}

@end