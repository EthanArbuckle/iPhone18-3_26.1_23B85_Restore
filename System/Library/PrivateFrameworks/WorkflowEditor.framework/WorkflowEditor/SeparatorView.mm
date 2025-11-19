@interface SeparatorView
- (CGSize)sizeThatFits:(CGSize)a3;
@end

@implementation SeparatorView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_2745F9BAC(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end