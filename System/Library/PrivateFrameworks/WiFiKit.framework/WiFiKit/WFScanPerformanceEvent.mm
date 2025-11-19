@interface WFScanPerformanceEvent
- (id)_scanReasonToString:(unint64_t)a3;
@end

@implementation WFScanPerformanceEvent

- (id)_scanReasonToString:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBDC20[a3];
  }
}

@end