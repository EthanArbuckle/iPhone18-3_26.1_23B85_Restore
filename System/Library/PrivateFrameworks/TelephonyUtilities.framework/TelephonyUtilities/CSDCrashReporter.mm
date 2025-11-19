@interface CSDCrashReporter
+ (void)simulateCrashReportWithFormat:(id)a3;
@end

@implementation CSDCrashReporter

+ (void)simulateCrashReportWithFormat:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 arguments:&v6];

  [a1 simulateCrashReportWithReason:v5 pid:getpid() code:14593455];
}

@end