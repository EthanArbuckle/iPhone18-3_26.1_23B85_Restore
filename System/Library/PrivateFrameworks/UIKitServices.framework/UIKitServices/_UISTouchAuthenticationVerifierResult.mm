@interface _UISTouchAuthenticationVerifierResult
- (_UISTouchAuthenticationVerifierResult)initWithPassesSecurityAnalysis:(BOOL)analysis failureReasons:(id)reasons;
@end

@implementation _UISTouchAuthenticationVerifierResult

- (_UISTouchAuthenticationVerifierResult)initWithPassesSecurityAnalysis:(BOOL)analysis failureReasons:(id)reasons
{
  analysisCopy = analysis;
  reasonsCopy = reasons;
  v12.receiver = self;
  v12.super_class = _UISTouchAuthenticationVerifierResult;
  v9 = [(_UISTouchAuthenticationVerifierResult *)&v12 init];
  if (v9)
  {
    if (reasonsCopy && analysisCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v9 file:@"_UISTouchAuthenticationVerifierResult.m" lineNumber:16 description:@"An event that passes security analysis can not have failure reasons"];
    }

    v9->_passesSecurityAnalysis = analysisCopy;
    objc_storeStrong(&v9->_failureReasons, reasons);
  }

  return v9;
}

@end