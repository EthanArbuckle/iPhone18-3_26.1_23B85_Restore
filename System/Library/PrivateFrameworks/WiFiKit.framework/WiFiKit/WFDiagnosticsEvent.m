@interface WFDiagnosticsEvent
- (id)_testTypeToString:(int64_t)a3;
@end

@implementation WFDiagnosticsEvent

- (id)_testTypeToString:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBE768[a3];
  }
}

@end