@interface _UILegibilityCachedShadow
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesSettings:(id)a3 strength:(double)a4;
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

- (BOOL)matchesSettings:(id)a3 strength:(double)a4
{
  [(_UILegibilityCachedShadow *)self strength];
  if (vabdd_f64(v7, a4) >= 0.00000011920929)
  {
    return 0;
  }

  v8 = [(_UILegibilityCachedShadow *)self settings];

  return [(_UILegibilitySettings *)v8 isEqual:a3];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [a3 settings];
  [a3 strength];

  return [(_UILegibilityCachedShadow *)self matchesSettings:v5 strength:?];
}

@end