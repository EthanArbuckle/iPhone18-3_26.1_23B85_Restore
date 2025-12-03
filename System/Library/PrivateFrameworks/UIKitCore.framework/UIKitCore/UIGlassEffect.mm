@interface UIGlassEffect
+ (id)effectWithGlass:(id)glass;
+ (id)effectWithStyle:(int64_t)style;
- (_UIViewGlass)glass;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIGlassEffect

+ (id)effectWithStyle:(int64_t)style
{
  v4 = objc_alloc_init(self);
  if (v4)
  {
    v4[4] = style;
  }

  return v4;
}

+ (id)effectWithGlass:(id)glass
{
  glassCopy = glass;
  v5 = objc_alloc_init(self);
  v6 = v5[1];
  v5[1] = glassCopy;

  return v5;
}

- (_UIViewGlass)glass
{
  explicitGlass = self->_explicitGlass;
  if (explicitGlass)
  {
    v3 = explicitGlass;
  }

  else
  {
    v3 = [[_UIViewGlass alloc] initWithVariant:self->_style == 1];
    tintColor = [(UIGlassEffect *)self tintColor];
    [(_UIViewGlass *)v3 setTintColor:tintColor];

    [(_UIViewGlass *)v3 setFlexible:[(UIGlassEffect *)self isInteractive]];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = v4;
  if (v4)
  {
    *(v4 + 32) = self->_style;
    objc_storeStrong((v4 + 8), self->_explicitGlass);
    v6 = [(UIColor *)self->_tintColor copy];
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;

    *(v5 + 16) = self->_interactive;
  }

  return v5;
}

@end