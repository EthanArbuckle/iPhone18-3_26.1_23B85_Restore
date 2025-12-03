@interface _TVStackViewFlowLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _TVStackViewFlowLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _TVStackViewFlowLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [(_TVStackViewFlowLayoutAttributes *)self showcaseFactor];
  [v4 setShowcaseFactor:?];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = _TVStackViewFlowLayoutAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v10 isEqual:equalCopy])
  {
    [(_TVStackViewFlowLayoutAttributes *)self showcaseFactor];
    v6 = v5;
    [equalCopy showcaseFactor];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end