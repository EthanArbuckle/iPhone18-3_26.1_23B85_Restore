@interface NSDictionary(VUIStoreAcquisition)
- (uint64_t)vui_appleTimingAppHeaderValue;
@end

@implementation NSDictionary(VUIStoreAcquisition)

- (uint64_t)vui_appleTimingAppHeaderValue
{
  v1 = [self objectForKey:@"apple-timing-app"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 componentsSeparatedByString:@" "];
    firstObject = [v2 firstObject];
    integerValue = [firstObject integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

@end