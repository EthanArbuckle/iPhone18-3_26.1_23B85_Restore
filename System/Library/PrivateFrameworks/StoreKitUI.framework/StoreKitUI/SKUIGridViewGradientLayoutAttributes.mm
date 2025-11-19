@interface SKUIGridViewGradientLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SKUIGridViewGradientLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = SKUIGridViewGradientLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v8 copyWithZone:a3];
  v5 = [(IKColor *)self->_gradientColor copy];
  v6 = v4[44];
  v4[44] = v5;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((gradientColor = v4->_gradientColor, gradientColor == self->_gradientColor) || [(IKColor *)gradientColor isEqual:?]))
    {
      v8.receiver = self;
      v8.super_class = SKUIGridViewGradientLayoutAttributes;
      v6 = [(UICollectionViewLayoutAttributes *)&v8 isEqual:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SKUIGridViewGradientLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v5 hash];
  return [(IKColor *)self->_gradientColor hash]^ v3;
}

@end