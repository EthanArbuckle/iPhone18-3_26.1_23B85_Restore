@interface UIToolTipConfiguration
+ (UIToolTipConfiguration)configurationWithToolTip:(NSString *)toolTip inRect:(CGRect)sourceRect;
- (CGRect)sourceRect;
@end

@implementation UIToolTipConfiguration

+ (UIToolTipConfiguration)configurationWithToolTip:(NSString *)toolTip inRect:(CGRect)sourceRect
{
  height = sourceRect.size.height;
  width = sourceRect.size.width;
  y = sourceRect.origin.y;
  x = sourceRect.origin.x;
  v8 = toolTip;
  v9 = objc_opt_new();
  [v9 setToolTip:v8];

  [v9 setSourceRect:{x, y, width, height}];

  return v9;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end