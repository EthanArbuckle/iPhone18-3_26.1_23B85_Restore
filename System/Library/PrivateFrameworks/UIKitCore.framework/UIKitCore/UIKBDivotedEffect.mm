@interface UIKBDivotedEffect
- (CGColor)CGColor;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIKBDivotedEffect

- (CGColor)CGColor
{
  v2 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha8");

  return CGColorRetain(v2);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [UIKBDivotedEffect allocWithZone:a3];

  return [(UIKBDivotedEffect *)v3 init];
}

@end