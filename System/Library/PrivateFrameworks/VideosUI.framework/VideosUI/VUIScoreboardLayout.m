@interface VUIScoreboardLayout
+ (id)_textColor:(int64_t)a3;
- (_VUICornerRadii)borderRadii;
@end

@implementation VUIScoreboardLayout

+ (id)_textColor:(int64_t)a3
{
  v3 = [MEMORY[0x1E69DC888] blackColor];
  v4 = [v3 colorWithAlphaComponent:0.5];

  return v4;
}

- (_VUICornerRadii)borderRadii
{
  topLeft = self->_borderRadii.topLeft;
  topRight = self->_borderRadii.topRight;
  bottomLeft = self->_borderRadii.bottomLeft;
  bottomRight = self->_borderRadii.bottomRight;
  result.bottomRight = bottomRight;
  result.bottomLeft = bottomLeft;
  result.topRight = topRight;
  result.topLeft = topLeft;
  return result;
}

@end