@interface _TVStackViewFlowLayoutAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _TVStackViewFlowLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = _TVStackViewFlowLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [(_TVStackViewFlowLayoutAttributes *)self showcaseFactor];
  [v4 setShowcaseFactor:?];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _TVStackViewFlowLayoutAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v10 isEqual:v4])
  {
    [(_TVStackViewFlowLayoutAttributes *)self showcaseFactor];
    v6 = v5;
    [v4 showcaseFactor];
    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end