@interface PFAssertionPolicyCrashReport
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyCrashReport

- (void)notifyAssertion:(id)assertion
{
  assertionCopy = assertion;
  if ([assertionCopy isFatal])
  {
    v3 = MEMORY[0x1E696AEC0];
    prettyMethodName = [assertionCopy prettyMethodName];
    fileName = [assertionCopy fileName];
    lineNumber = [assertionCopy lineNumber];
    message = [assertionCopy message];
    v8 = [v3 stringWithFormat:@"Assertion failure in %@, %@:%lu\n%@", prettyMethodName, fileName, lineNumber, message];

    qword_1ECAA3A50 = [v8 UTF8String];
  }
}

@end