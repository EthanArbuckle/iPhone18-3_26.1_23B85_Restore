@interface QueryDescriptionBar
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)singlePressWithGesture:(id)a3;
@end

@implementation QueryDescriptionBar

- (void)singlePressWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E3EFA5B8();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1E3EFB57C(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E3EFBB44();
}

@end