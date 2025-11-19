@interface RCMutableComposition
- (void)recacheAVURLDerivedValues;
@end

@implementation RCMutableComposition

- (void)recacheAVURLDerivedValues
{
  v2.receiver = self;
  v2.super_class = RCMutableComposition;
  [(RCComposition *)&v2 recacheAVURLDerivedValues];
}

@end