@interface RBMutableProcessAppNapState
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RBMutableProcessAppNapState

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RBMutableProcessAppNapState allocWithZone:a3];

  return [(RBProcessAppNapState *)v4 _initWithProcessAppNapState:self];
}

@end