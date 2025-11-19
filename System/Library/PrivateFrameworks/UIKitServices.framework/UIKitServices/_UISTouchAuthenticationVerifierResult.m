@interface _UISTouchAuthenticationVerifierResult
- (_UISTouchAuthenticationVerifierResult)initWithPassesSecurityAnalysis:(BOOL)a3 failureReasons:(id)a4;
@end

@implementation _UISTouchAuthenticationVerifierResult

- (_UISTouchAuthenticationVerifierResult)initWithPassesSecurityAnalysis:(BOOL)a3 failureReasons:(id)a4
{
  v5 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UISTouchAuthenticationVerifierResult;
  v9 = [(_UISTouchAuthenticationVerifierResult *)&v12 init];
  if (v9)
  {
    if (v8 && v5)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:v9 file:@"_UISTouchAuthenticationVerifierResult.m" lineNumber:16 description:@"An event that passes security analysis can not have failure reasons"];
    }

    v9->_passesSecurityAnalysis = v5;
    objc_storeStrong(&v9->_failureReasons, a4);
  }

  return v9;
}

@end