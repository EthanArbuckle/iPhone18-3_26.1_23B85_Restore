@interface SearchUIItemAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SearchUIItemAttributes

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SearchUIItemAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:a3];
  [v4 setIsForcingHeight:{-[SearchUIItemAttributes isForcingHeight](self, "isForcingHeight")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUIItemAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v8 isEqual:v4])
  {
    v5 = [(SearchUIItemAttributes *)self isForcingHeight];
    v6 = v5 ^ [v4 isForcingHeight] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end