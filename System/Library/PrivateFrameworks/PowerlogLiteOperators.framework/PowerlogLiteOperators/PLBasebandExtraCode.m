@interface PLBasebandExtraCode
- (void)logWithLogger:(id)a3;
@end

@implementation PLBasebandExtraCode

- (void)logWithLogger:(id)a3
{
  v3 = [(PLBasebandMessage *)self agent];
  [v3 logEventNoneBBReportBy:7 withAction:6];
}

@end