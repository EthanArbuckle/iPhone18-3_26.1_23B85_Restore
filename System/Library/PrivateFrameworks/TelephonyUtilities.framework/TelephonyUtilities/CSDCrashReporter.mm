@interface CSDCrashReporter
+ (void)simulateCrashReportWithFormat:(id)format;
@end

@implementation CSDCrashReporter

+ (void)simulateCrashReportWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v6];

  [self simulateCrashReportWithReason:v5 pid:getpid() code:14593455];
}

@end