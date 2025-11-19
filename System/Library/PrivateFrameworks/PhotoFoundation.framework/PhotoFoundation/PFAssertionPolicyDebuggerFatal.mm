@interface PFAssertionPolicyDebuggerFatal
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyDebuggerFatal

- (void)notifyAssertion:(id)a3
{
  v3 = a3;
  if (+[PFAssertionHandler runningUnderDebugger](PFAssertionHandler, "runningUnderDebugger") && [v3 isFatal])
  {
    __debugbreak();
  }
}

@end