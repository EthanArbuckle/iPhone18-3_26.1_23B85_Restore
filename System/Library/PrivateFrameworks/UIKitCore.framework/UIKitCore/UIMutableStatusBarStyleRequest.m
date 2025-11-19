@interface UIMutableStatusBarStyleRequest
- (id)copyWithZone:(_NSZone *)a3;
- (void)setForegroundColor:(id)a3;
- (void)setOverrideHeight:(id)a3;
@end

@implementation UIMutableStatusBarStyleRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(UIStatusBarStyleRequest *)self _copyWithZone:a3 class:v5];
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  foregroundColor = self->super._foregroundColor;
  p_foregroundColor = &self->super._foregroundColor;
  if (foregroundColor != v5)
  {
    v8 = v5;
    objc_storeStrong(p_foregroundColor, a3);
    v5 = v8;
  }
}

- (void)setOverrideHeight:(id)a3
{
  v5 = a3;
  overrideHeight = self->super._overrideHeight;
  p_overrideHeight = &self->super._overrideHeight;
  if (overrideHeight != v5)
  {
    v8 = v5;
    objc_storeStrong(p_overrideHeight, a3);
    v5 = v8;
  }
}

@end