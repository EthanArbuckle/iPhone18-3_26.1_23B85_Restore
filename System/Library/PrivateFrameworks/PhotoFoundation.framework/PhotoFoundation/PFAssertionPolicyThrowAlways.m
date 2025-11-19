@interface PFAssertionPolicyThrowAlways
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyThrowAlways

- (void)notifyAssertion:(id)a3
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = a3;
  v9 = [v5 prettyMethodName];
  v6 = [v5 fileName];
  v7 = [v5 lineNumber];
  v8 = [v5 message];

  [v3 raise:v4 format:{@"Assertion failure in %@, %@:%lu: %@", v9, v6, v7, v8}];
}

@end