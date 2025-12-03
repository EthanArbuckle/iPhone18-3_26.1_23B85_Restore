@interface PFAssertionPolicyAbort
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyAbort

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([assertionCopy isFatal])
  {
    abort();
  }
}

@end