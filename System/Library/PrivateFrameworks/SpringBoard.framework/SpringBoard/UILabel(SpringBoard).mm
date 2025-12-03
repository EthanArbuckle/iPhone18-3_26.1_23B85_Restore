@interface UILabel(SpringBoard)
- (double)sb_yPositionForLayoutAfterLabel:()SpringBoard baselineOffset:;
- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard baselineOffset:font:;
- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard lineHeight:baselineOffset:font:;
@end

@implementation UILabel(SpringBoard)

- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard lineHeight:baselineOffset:font:
{
  v11 = a7;
  v14.origin.x = self;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
  [v11 descender];

  return SBFloatRoundForScale();
}

- (uint64_t)sb_yPositionForLabelWithContainerBounds:()SpringBoard baselineOffset:font:
{
  v11 = a7;
  v14.origin.x = self;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
  [v11 ascender];

  return SBFloatRoundForScale();
}

- (double)sb_yPositionForLayoutAfterLabel:()SpringBoard baselineOffset:
{
  v4 = a3;
  [v4 frame];
  CGRectGetMaxY(v9);
  [v4 _baselineOffsetFromBottom];

  font = [self font];
  [font ascender];
  SBFloatRoundForScale();
  v7 = v6;

  return v7;
}

@end