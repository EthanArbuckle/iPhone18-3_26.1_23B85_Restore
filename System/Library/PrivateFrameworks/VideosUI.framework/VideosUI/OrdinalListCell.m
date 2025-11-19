@interface OrdinalListCell
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (id)zoomSourceView;
@end

@implementation OrdinalListCell

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  width = a3.width;
  v6 = self;
  v7 = sub_1E3FB01C8(a4, width);
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)zoomSourceView
{
  v2 = self;
  v3 = sub_1E3FB1988();

  return v3;
}

@end