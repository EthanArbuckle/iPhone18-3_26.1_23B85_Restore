@interface UIDynamicPatternColor
- (BOOL)isEqual:(id)a3;
- (UIDynamicPatternColor)initWithPatternImage:(id)a3;
- (id)_resolvedColorWithTraitCollection:(id)a3;
- (id)description;
@end

@implementation UIDynamicPatternColor

- (UIDynamicPatternColor)initWithPatternImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 _tiledPatternColor])
  {
    v11.receiver = self;
    v11.super_class = UIDynamicPatternColor;
    v7 = [(UIDynamicPatternColor *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_image, a3);
    }

    self = v8;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIImage *)self->_image isEqual:v4->_image];
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)a3
{
  image = self->_image;
  if (a3)
  {
    v5 = [a3 imageConfiguration];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(UIImage *)image imageWithConfiguration:v6];

  v8 = [v7 _tiledPatternColor];
  if (!v8)
  {
    v8 = [(UIImage *)self->_image _tiledPatternColor];
  }

  v9 = [[UIColor alloc] initWithCGColor:v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p image = %@>", v5, self, self->_image];;

  return v6;
}

@end