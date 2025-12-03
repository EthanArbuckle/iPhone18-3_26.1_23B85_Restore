@interface PFAssertionPolicyLog
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyLog

- (void)notifyAssertion:(id)assertion
{
  v22 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    assertionCopy = assertion;
    prettyMethodName = [assertionCopy prettyMethodName];
    fileName = [assertionCopy fileName];
    lineNumber = [assertionCopy lineNumber];
    message = [assertionCopy message];
    backtrace = [assertionCopy backtrace];

    v11 = [backtrace componentsJoinedByString:@"\n"];
    v12 = 138413314;
    v13 = prettyMethodName;
    v14 = 2112;
    v15 = fileName;
    v16 = 2048;
    v17 = lineNumber;
    v18 = 2112;
    v19 = message;
    v20 = 2112;
    v21 = v11;
    _os_log_error_impl(&dword_1D8B9C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure in %@, %@:%lu\nMessage: %@\nBacktrace:\n%@", &v12, 0x34u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end