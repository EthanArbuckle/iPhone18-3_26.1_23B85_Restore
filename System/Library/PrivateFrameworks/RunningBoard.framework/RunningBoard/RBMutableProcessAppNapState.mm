@interface RBMutableProcessAppNapState
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation RBMutableProcessAppNapState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RBMutableProcessAppNapState allocWithZone:zone];

  return [(RBProcessAppNapState *)v4 _initWithProcessAppNapState:self];
}

@end