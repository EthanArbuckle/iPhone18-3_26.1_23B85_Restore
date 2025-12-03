@interface RBProcessAppNapState
- (RBProcessAppNapState)init;
- (id)_initWithProcessAppNapState:(id)state;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)dealloc;
@end

@implementation RBProcessAppNapState

- (RBProcessAppNapState)init
{
  v3.receiver = self;
  v3.super_class = RBProcessAppNapState;
  return [(RBProcessAppNapState *)&v3 init];
}

- (id)_initWithProcessAppNapState:(id)state
{
  v4.receiver = self;
  v4.super_class = RBProcessAppNapState;
  return [(RBProcessAppNapState *)&v4 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = RBProcessAppNapState;
  [(RBProcessAppNapState *)&v2 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [RBMutableProcessAppNapState allocWithZone:zone];

  return [(RBProcessAppNapState *)v4 _initWithProcessAppNapState:self];
}

@end