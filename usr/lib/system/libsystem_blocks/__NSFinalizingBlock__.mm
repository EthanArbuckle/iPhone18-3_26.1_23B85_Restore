@interface __NSFinalizingBlock__
- (void)finalize;
@end

@implementation __NSFinalizingBlock__

- (void)finalize
{
  if ((self[1].super.super.isa & 0x2000000) != 0)
  {
    (*(self[3].super.super.isa + 3))();
  }
}

@end