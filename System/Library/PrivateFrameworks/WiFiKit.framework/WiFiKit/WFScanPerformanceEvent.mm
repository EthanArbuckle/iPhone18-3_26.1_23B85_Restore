@interface WFScanPerformanceEvent
- (id)_scanReasonToString:(unint64_t)string;
@end

@implementation WFScanPerformanceEvent

- (id)_scanReasonToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBDC20[string];
  }
}

@end