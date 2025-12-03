@interface WFDiagnosticsEvent
- (id)_testTypeToString:(int64_t)string;
@end

@implementation WFDiagnosticsEvent

- (id)_testTypeToString:(int64_t)string
{
  if (string > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE768[string];
  }
}

@end