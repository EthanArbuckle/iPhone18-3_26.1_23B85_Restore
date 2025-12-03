@interface PaginatedSwipingContainerView
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only;
@end

@implementation PaginatedSwipingContainerView

- (CGSize)vui_layoutSubviews:(CGSize)subviews computationOnly:(BOOL)only
{
  height = subviews.height;
  width = subviews.width;
  selfCopy = self;
  v8 = sub_1E3B51804(only, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  selfCopy = self;
  LOBYTE(scroll) = sub_1E3B51AA0(scroll);

  return scroll & 1;
}

@end