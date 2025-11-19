@interface DescriptionTemplateView
- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4;
- (void)handleSelected:(id)a3;
@end

@implementation DescriptionTemplateView

- (CGSize)vui_layoutSubviews:(CGSize)a3 computationOnly:(BOOL)a4
{
  v5 = self;
  sub_1E3E2E53C(a4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)handleSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3E2F0AC(v4);
}

@end