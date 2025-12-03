@interface TSUShallowCopyPair
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TSUShallowCopyPair

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSUShallowCopyPair allocWithZone:zone];
  first = [(TSUPair *)self first];
  second = [(TSUPair *)self second];

  return [(TSUPair *)v4 initWithFirst:first second:second];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TSUMutableShallowCopyPair allocWithZone:zone];
  first = [(TSUPair *)self first];
  second = [(TSUPair *)self second];

  return [(TSUPair *)v4 initWithFirst:first second:second];
}

@end