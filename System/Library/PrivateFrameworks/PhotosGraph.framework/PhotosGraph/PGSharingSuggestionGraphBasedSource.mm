@interface PGSharingSuggestionGraphBasedSource
- (BOOL)canRunWithInput:(id)input;
@end

@implementation PGSharingSuggestionGraphBasedSource

- (BOOL)canRunWithInput:(id)input
{
  momentNodes = [input momentNodes];
  if ([momentNodes count])
  {
    firstObject = [momentNodes firstObject];
    universalStartDate = [firstObject universalStartDate];

    lastObject = [momentNodes lastObject];
    universalEndDate = [lastObject universalEndDate];

    [universalEndDate timeIntervalSinceDate:universalStartDate];
    v9 = v8 < 7776000.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end