@interface TSUPairNonRetainedSecond
- (void)p_SetSecond:(id)second;
@end

@implementation TSUPairNonRetainedSecond

- (void)p_SetSecond:(id)second
{
  if (self->super.mSecond != second)
  {
    self->super.mSecond = second;
  }
}

@end