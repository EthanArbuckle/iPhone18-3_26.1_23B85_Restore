@interface SearchBarPalette
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation SearchBarPalette

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  OUTLINED_FUNCTION_6_12();
  v4 = sub_1E40E1334();
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1E40E1528();
}

@end