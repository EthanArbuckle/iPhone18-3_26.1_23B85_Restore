@interface PFAssertionPolicyCrashReport
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyCrashReport

- (void)notifyAssertion:(id)a3
{
  v9 = a3;
  if ([v9 isFatal])
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [v9 prettyMethodName];
    v5 = [v9 fileName];
    v6 = [v9 lineNumber];
    v7 = [v9 message];
    v8 = [v3 stringWithFormat:@"Assertion failure in %@, %@:%lu\n%@", v4, v5, v6, v7];

    qword_1ECAA3A50 = [v8 UTF8String];
  }
}

@end