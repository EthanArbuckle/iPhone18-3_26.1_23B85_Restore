@interface PGSharingSuggestionGraphBasedSource
- (BOOL)canRunWithInput:(id)a3;
@end

@implementation PGSharingSuggestionGraphBasedSource

- (BOOL)canRunWithInput:(id)a3
{
  v3 = [a3 momentNodes];
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 universalStartDate];

    v6 = [v3 lastObject];
    v7 = [v6 universalEndDate];

    [v7 timeIntervalSinceDate:v5];
    v9 = v8 < 7776000.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end