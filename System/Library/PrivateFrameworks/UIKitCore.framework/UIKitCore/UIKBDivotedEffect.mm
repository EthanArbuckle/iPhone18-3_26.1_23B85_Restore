@interface UIKBDivotedEffect
- (CGColor)CGColor;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKBDivotedEffect

- (CGColor)CGColor
{
  v2 = UIKBGetNamedColor(@"UIKBColorBlack_Alpha8");

  return CGColorRetain(v2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [UIKBDivotedEffect allocWithZone:zone];

  return [(UIKBDivotedEffect *)v3 init];
}

@end