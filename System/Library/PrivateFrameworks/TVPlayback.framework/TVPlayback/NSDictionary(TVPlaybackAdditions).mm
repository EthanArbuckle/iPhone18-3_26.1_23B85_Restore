@interface NSDictionary(TVPlaybackAdditions)
- (id)_lookupValueForKey:()TVPlaybackAdditions expectedClass:;
- (id)tvp_URLForKey:()TVPlaybackAdditions;
- (id)tvp_arrayForKey:()TVPlaybackAdditions;
- (id)tvp_dataForKey:()TVPlaybackAdditions;
- (id)tvp_dateForKey:()TVPlaybackAdditions;
- (id)tvp_dateFromMillisecondsSince1970ForKey:()TVPlaybackAdditions;
- (id)tvp_dictionaryForKey:()TVPlaybackAdditions;
- (id)tvp_numberForKey:()TVPlaybackAdditions;
- (id)tvp_stringForKey:()TVPlaybackAdditions;
- (uint64_t)tvp_BOOLForKey:()TVPlaybackAdditions defaultValue:;
- (uint64_t)tvp_appleTimingAppHeaderValue;
@end

@implementation NSDictionary(TVPlaybackAdditions)

- (id)_lookupValueForKey:()TVPlaybackAdditions expectedClass:
{
  v1 = [self objectForKey:?];
  if (v1 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v1 = 0;
  }

  return v1;
}

- (id)tvp_numberForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tvp_stringForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tvp_URLForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (uint64_t)tvp_BOOLForKey:()TVPlaybackAdditions defaultValue:
{
  v5 = [self tvp_numberForKey:?];
  v6 = v5;
  if (v5)
  {
    a4 = [v5 BOOLValue];
  }

  return a4;
}

- (id)tvp_dateForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tvp_dateFromMillisecondsSince1970ForKey:()TVPlaybackAdditions
{
  v1 = [self objectForKey:?];
  v2 = [MEMORY[0x277CBEAA8] tvp_dateWithMillisecondsSince1970:v1];

  return v2;
}

- (id)tvp_dictionaryForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tvp_arrayForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (id)tvp_dataForKey:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [self _lookupValueForKey:v4 expectedClass:objc_opt_class()];

  return v5;
}

- (uint64_t)tvp_appleTimingAppHeaderValue
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