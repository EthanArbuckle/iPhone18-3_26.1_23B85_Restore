@interface PFAssertionPolicyLog
- (void)notifyAssertion:(id)a3;
@end

@implementation PFAssertionPolicyLog

- (void)notifyAssertion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = a3;
    v6 = [v5 prettyMethodName];
    v7 = [v5 fileName];
    v8 = [v5 lineNumber];
    v9 = [v5 message];
    v10 = [v5 backtrace];

    v11 = [v10 componentsJoinedByString:@"\n"];
    v12 = 138413314;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2048;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_error_impl(&dword_1D8B9C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure in %@, %@:%lu\nMessage: %@\nBacktrace:\n%@", &v12, 0x34u);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end