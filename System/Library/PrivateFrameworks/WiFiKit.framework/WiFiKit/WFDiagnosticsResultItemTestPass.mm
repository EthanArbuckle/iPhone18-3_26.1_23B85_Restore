@interface WFDiagnosticsResultItemTestPass
- (WFDiagnosticsResultItemTestPass)initWithResults:(id)results;
@end

@implementation WFDiagnosticsResultItemTestPass

- (WFDiagnosticsResultItemTestPass)initWithResults:(id)results
{
  v6.receiver = self;
  v6.super_class = WFDiagnosticsResultItemTestPass;
  resultsCopy = results;
  v4 = [(WFDiagnosticsResultItemTestPass *)&v6 init];
  [(WFDiagnosticsResultItemTestPass *)v4 setResults:resultsCopy, v6.receiver, v6.super_class];

  [(WFDiagnosticsResultItemTestPass *)v4 setDidPassTest:1];
  [(WFDiagnosticsResultItemTestPass *)v4 setFailedTests:MEMORY[0x277CBEBF8]];
  return v4;
}

@end