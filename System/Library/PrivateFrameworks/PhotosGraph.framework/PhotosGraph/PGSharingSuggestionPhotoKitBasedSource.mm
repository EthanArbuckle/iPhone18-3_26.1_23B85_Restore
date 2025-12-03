@interface PGSharingSuggestionPhotoKitBasedSource
- (BOOL)canRunWithInput:(id)input;
@end

@implementation PGSharingSuggestionPhotoKitBasedSource

- (BOOL)canRunWithInput:(id)input
{
  moments = [input moments];
  if ([moments count])
  {
    firstObject = [moments firstObject];
    startDate = [firstObject startDate];

    lastObject = [moments lastObject];
    endDate = [lastObject endDate];

    [endDate timeIntervalSinceDate:startDate];
    v9 = v8 < 7776000.0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end