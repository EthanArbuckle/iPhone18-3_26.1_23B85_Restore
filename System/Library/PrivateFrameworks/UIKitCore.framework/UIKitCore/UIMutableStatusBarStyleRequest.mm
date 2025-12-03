@interface UIMutableStatusBarStyleRequest
- (id)copyWithZone:(_NSZone *)zone;
- (void)setForegroundColor:(id)color;
- (void)setOverrideHeight:(id)height;
@end

@implementation UIMutableStatusBarStyleRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(UIStatusBarStyleRequest *)self _copyWithZone:zone class:v5];
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  foregroundColor = self->super._foregroundColor;
  p_foregroundColor = &self->super._foregroundColor;
  if (foregroundColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(p_foregroundColor, color);
    colorCopy = v8;
  }
}

- (void)setOverrideHeight:(id)height
{
  heightCopy = height;
  overrideHeight = self->super._overrideHeight;
  p_overrideHeight = &self->super._overrideHeight;
  if (overrideHeight != heightCopy)
  {
    v8 = heightCopy;
    objc_storeStrong(p_overrideHeight, height);
    heightCopy = v8;
  }
}

@end