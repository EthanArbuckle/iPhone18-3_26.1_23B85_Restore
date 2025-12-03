@interface _UILegibilityCachedShadow
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesSettings:(id)settings strength:(double)strength;
- (void)dealloc;
@end

@implementation _UILegibilityCachedShadow

- (void)dealloc
{
  self->_settings = 0;

  self->_shadow = 0;
  v3.receiver = self;
  v3.super_class = _UILegibilityCachedShadow;
  [(_UILegibilityCachedShadow *)&v3 dealloc];
}

- (BOOL)matchesSettings:(id)settings strength:(double)strength
{
  [(_UILegibilityCachedShadow *)self strength];
  if (vabdd_f64(v7, strength) >= 0.00000011920929)
  {
    return 0;
  }

  settings = [(_UILegibilityCachedShadow *)self settings];

  return [(_UILegibilitySettings *)settings isEqual:settings];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  settings = [equal settings];
  [equal strength];

  return [(_UILegibilityCachedShadow *)self matchesSettings:settings strength:?];
}

@end