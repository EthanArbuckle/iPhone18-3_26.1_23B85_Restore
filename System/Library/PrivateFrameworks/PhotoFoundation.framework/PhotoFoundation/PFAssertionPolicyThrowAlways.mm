@interface PFAssertionPolicyThrowAlways
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyThrowAlways

- (void)notifyAssertion:(id)assertion
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  assertionCopy = assertion;
  prettyMethodName = [assertionCopy prettyMethodName];
  fileName = [assertionCopy fileName];
  lineNumber = [assertionCopy lineNumber];
  message = [assertionCopy message];

  [v3 raise:v4 format:{@"Assertion failure in %@, %@:%lu: %@", prettyMethodName, fileName, lineNumber, message}];
}

@end