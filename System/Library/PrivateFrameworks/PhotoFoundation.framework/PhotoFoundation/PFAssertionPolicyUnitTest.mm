@interface PFAssertionPolicyUnitTest
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyUnitTest

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if (([assertionCopy isFatal] & 1) != 0 || objc_msgSend(MEMORY[0x1E696AF00], "isMainThread"))
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D930];
    prettyMethodName = [assertionCopy prettyMethodName];
    fileName = [assertionCopy fileName];
    lineNumber = [assertionCopy lineNumber];
    message = [assertionCopy message];
    [v3 raise:v4 format:{@"Assertion failure in %@, %@:%lu: %@", prettyMethodName, fileName, lineNumber, message}];
  }
}

@end