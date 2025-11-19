@interface NSDictionary(VUIStoreAcquisition)
- (uint64_t)vui_appleTimingAppHeaderValue;
@end

@implementation NSDictionary(VUIStoreAcquisition)

- (uint64_t)vui_appleTimingAppHeaderValue
{
  v1 = [a1 objectForKey:@"apple-timing-app"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 componentsSeparatedByString:@" "];
    v3 = [v2 firstObject];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end