@interface WFDiagnosticsResultItemTestPass
- (WFDiagnosticsResultItemTestPass)initWithResults:(id)a3;
@end

@implementation WFDiagnosticsResultItemTestPass

- (WFDiagnosticsResultItemTestPass)initWithResults:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFDiagnosticsResultItemTestPass;
  v3 = a3;
  v4 = [(WFDiagnosticsResultItemTestPass *)&v6 init];
  [(WFDiagnosticsResultItemTestPass *)v4 setResults:v3, v6.receiver, v6.super_class];

  [(WFDiagnosticsResultItemTestPass *)v4 setDidPassTest:1];
  [(WFDiagnosticsResultItemTestPass *)v4 setFailedTests:MEMORY[0x277CBEBF8]];
  return v4;
}

@end