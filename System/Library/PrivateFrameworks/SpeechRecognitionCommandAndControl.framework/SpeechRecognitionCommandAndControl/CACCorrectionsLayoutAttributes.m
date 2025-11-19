@interface CACCorrectionsLayoutAttributes
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CACCorrectionsLayoutAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CACCorrectionsLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [(CACCorrectionsLayoutAttributes *)self availableWidth];
  [v4 setAvailableWidth:?];
  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CACCorrectionsLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v7 description];
  [(CACCorrectionsLayoutAttributes *)self availableWidth];
  v5 = [v3 stringByAppendingFormat:@"available width: %f", v4];;

  return v5;
}

@end