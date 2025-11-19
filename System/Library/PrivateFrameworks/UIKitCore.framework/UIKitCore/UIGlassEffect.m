@interface UIGlassEffect
+ (id)effectWithGlass:(id)a3;
+ (id)effectWithStyle:(int64_t)a3;
- (_UIViewGlass)glass;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UIGlassEffect

+ (id)effectWithStyle:(int64_t)a3
{
  v4 = objc_alloc_init(a1);
  if (v4)
  {
    v4[4] = a3;
  }

  return v4;
}

+ (id)effectWithGlass:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[1];
  v5[1] = v4;

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
    v5 = [(UIGlassEffect *)self tintColor];
    [(_UIViewGlass *)v3 setTintColor:v5];

    [(_UIViewGlass *)v3 setFlexible:[(UIGlassEffect *)self isInteractive]];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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