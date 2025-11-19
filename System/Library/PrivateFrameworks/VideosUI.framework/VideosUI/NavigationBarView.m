@interface NavigationBarView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
@end

@implementation NavigationBarView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v5 = self;
  v6 = sub_1E37DBB94(width);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end