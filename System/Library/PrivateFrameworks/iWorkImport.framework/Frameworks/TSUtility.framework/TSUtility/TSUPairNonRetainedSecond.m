@interface TSUPairNonRetainedSecond
- (void)p_SetSecond:(id)a3;
@end

@implementation TSUPairNonRetainedSecond

- (void)p_SetSecond:(id)a3
{
  if (self->super.mSecond != a3)
  {
    self->super.mSecond = a3;
  }
}

@end