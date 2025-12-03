@interface PFAssertionPolicyDebuggerFatal
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyDebuggerFatal

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (+[PFAssertionHandler runningUnderDebugger](PFAssertionHandler, "runningUnderDebugger") && [assertionCopy isFatal])
  {
    __debugbreak();
  }
}

@end