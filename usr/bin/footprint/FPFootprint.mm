@interface FPFootprint
- (void)dealloc;
@end

@implementation FPFootprint

- (void)dealloc
{
  sub_10000F020(self);
  v3.receiver = self;
  v3.super_class = FPFootprint;
  [(FPFootprint *)&v3 dealloc];
}

@end