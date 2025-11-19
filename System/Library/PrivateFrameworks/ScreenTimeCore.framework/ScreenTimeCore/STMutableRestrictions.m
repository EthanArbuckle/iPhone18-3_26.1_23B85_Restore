@interface STMutableRestrictions
- (id)copyWithZone:(_NSZone *)a3;
- (id)restrictionsImmutableCopy;
@end

@implementation STMutableRestrictions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [STMutableRestrictions alloc];

  return [(STRestrictions *)v4 _initWithCopyOf:self];
}

- (id)restrictionsImmutableCopy
{
  v2 = [[STRestrictions alloc] _initWithCopyOf:self];

  return v2;
}

@end