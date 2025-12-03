@interface PLBasebandExtraCode
- (void)logWithLogger:(id)logger;
@end

@implementation PLBasebandExtraCode

- (void)logWithLogger:(id)logger
{
  agent = [(PLBasebandMessage *)self agent];
  [agent logEventNoneBBReportBy:7 withAction:6];
}

@end