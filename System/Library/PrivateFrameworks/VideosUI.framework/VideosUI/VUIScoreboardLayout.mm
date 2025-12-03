@interface VUIScoreboardLayout
+ (id)_textColor:(int64_t)color;
- (_VUICornerRadii)borderRadii;
@end

@implementation VUIScoreboardLayout

+ (id)_textColor:(int64_t)color
{
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v4 = [blackColor colorWithAlphaComponent:0.5];

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