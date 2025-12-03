@interface PUCollectionViewLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CGPoint)edgeParallaxOffset;
- (CGPoint)parallaxOffset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PUCollectionViewLayoutAttributes

- (CGPoint)edgeParallaxOffset
{
  x = self->_edgeParallaxOffset.x;
  y = self->_edgeParallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)parallaxOffset
{
  x = self->_parallaxOffset.x;
  y = self->_parallaxOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = PUCollectionViewLayoutAttributes;
  if (![(UICollectionViewLayoutAttributes *)&v13 isEqual:equalCopy])
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 1;
    goto LABEL_12;
  }

  [equalCopy parallaxOffset];
  if (self->_parallaxOffset.x == v6 && self->_parallaxOffset.y == v5)
  {
    p_edgeParallaxOffset = &self->_edgeParallaxOffset;
    [equalCopy edgeParallaxOffset];
    v8 = p_edgeParallaxOffset->y == v11 && p_edgeParallaxOffset->x == v10;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PUCollectionViewLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setParallaxOffset:{self->_parallaxOffset.x, self->_parallaxOffset.y}];
  [v4 setEdgeParallaxOffset:{self->_edgeParallaxOffset.x, self->_edgeParallaxOffset.y}];
  return v4;
}

@end