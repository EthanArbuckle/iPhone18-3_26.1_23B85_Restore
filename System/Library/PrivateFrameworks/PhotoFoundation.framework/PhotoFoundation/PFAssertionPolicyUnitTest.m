@interface PFAssertionPolicyUnitTest
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyUnitTest

- (void)notifyAssertion:(id)a3
{
  v9 = a3;
  if (([v9 isFatal] & 1) != 0 || objc_msgSend(MEMORY[0x1E696AF00], "isMainThread"))
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    v5 = [v9 prettyMethodName];
    v6 = [v9 fileName];
    v7 = [v9 lineNumber];
    v8 = [v9 message];
    [v3 raise:v4 format:{@"Assertion failure in %@, %@:%lu: %@", v5, v6, v7, v8}];
  }
}

@end