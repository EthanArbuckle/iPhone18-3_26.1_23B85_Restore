@interface PFAssertionPolicyAbort
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyAbort

- (void)notifyAssertion:(id)a3
{
  v3 = a3;
  if ([v3 isFatal])
  {
    abort();
  }
}

@end