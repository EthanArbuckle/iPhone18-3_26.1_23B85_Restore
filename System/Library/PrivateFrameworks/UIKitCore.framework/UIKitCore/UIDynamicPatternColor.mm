@interface UIDynamicPatternColor
- (BOOL)isEqual:(id)equal;
- (UIDynamicPatternColor)initWithPatternImage:(id)image;
- (id)_resolvedColorWithTraitCollection:(id)collection;
- (id)description;
@end

@implementation UIDynamicPatternColor

- (UIDynamicPatternColor)initWithPatternImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (imageCopy && [imageCopy _tiledPatternColor])
  {
    v11.receiver = self;
    v11.super_class = UIDynamicPatternColor;
    v7 = [(UIDynamicPatternColor *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_image, image);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(UIImage *)self->_image isEqual:equalCopy->_image];
  }

  return v5;
}

- (id)_resolvedColorWithTraitCollection:(id)collection
{
  image = self->_image;
  if (collection)
  {
    imageConfiguration = [collection imageConfiguration];
  }

  else
  {
    imageConfiguration = 0;
  }

  v6 = imageConfiguration;
  v7 = [(UIImage *)image imageWithConfiguration:v6];

  _tiledPatternColor = [v7 _tiledPatternColor];
  if (!_tiledPatternColor)
  {
    _tiledPatternColor = [(UIImage *)self->_image _tiledPatternColor];
  }

  v9 = [[UIColor alloc] initWithCGColor:_tiledPatternColor];

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