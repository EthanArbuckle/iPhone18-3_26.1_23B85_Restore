@interface AttributionTextViewUIKit
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)handleSelected:(id)a3;
- (void)layoutSubviews;
@end

@implementation AttributionTextViewUIKit

- (void)handleSelected:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1E4000460(v4);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1E4000730(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E4000EC8();
}

@end