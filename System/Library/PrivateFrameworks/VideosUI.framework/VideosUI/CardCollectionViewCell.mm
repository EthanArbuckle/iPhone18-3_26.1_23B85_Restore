@interface CardCollectionViewCell
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
- (id)zoomSourceView;
- (void)dragStateDidChange:(int64_t)change;
- (void)imageViewHandler:(id)handler;
- (void)vui_cellDidEndDisplaying;
- (void)vui_cellDidSelect;
- (void)vui_cellWillBeDisplayed;
- (void)vui_prepareForReuse;
@end

@implementation CardCollectionViewCell

- (void)vui_prepareForReuse
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEE8B8();
}

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  selfCopy = self;
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
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEEEA8();
}

- (void)vui_cellDidEndDisplaying
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEF11C();
}

- (void)vui_cellDidSelect
{
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EEF2D0();
}

- (void)dragStateDidChange:(int64_t)change
{
  selfCopy = self;
  sub_1E3EEF410(change);
}

- (void)imageViewHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  OUTLINED_FUNCTION_51();
  sub_1E3EF3C1C();
}

- (id)zoomSourceView
{
  selfCopy = self;
  v3 = sub_1E3EF45AC();

  return v3;
}

@end