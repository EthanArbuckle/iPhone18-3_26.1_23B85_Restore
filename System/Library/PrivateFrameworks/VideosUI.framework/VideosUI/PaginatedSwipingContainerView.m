@interface PaginatedSwipingContainerView
- (BOOL)accessibilityScroll:(int64_t)a3;
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
@end

@implementation PaginatedSwipingContainerView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = sub_1E3B51804(a4, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1E3B51AA0(a3);

  return a3 & 1;
}

@end