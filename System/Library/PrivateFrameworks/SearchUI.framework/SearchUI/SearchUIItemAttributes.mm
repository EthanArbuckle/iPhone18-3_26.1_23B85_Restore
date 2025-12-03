@interface SearchUIItemAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUIItemAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SearchUIItemAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [v4 setIsForcingHeight:{-[SearchUIItemAttributes isForcingHeight](self, "isForcingHeight")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = SearchUIItemAttributes;
  if ([(UICollectionViewLayoutAttributes *)&v8 isEqual:equalCopy])
  {
    isForcingHeight = [(SearchUIItemAttributes *)self isForcingHeight];
    v6 = isForcingHeight ^ [equalCopy isForcingHeight] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end