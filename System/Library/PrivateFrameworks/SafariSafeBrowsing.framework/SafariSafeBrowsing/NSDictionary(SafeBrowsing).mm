@interface NSDictionary(SafeBrowsing)
- (void)ssb_arrayForKey:()SafeBrowsing;
- (void)ssb_dictionaryForKey:()SafeBrowsing;
- (void)ssb_numberForKey:()SafeBrowsing;
- (void)ssb_stringForKey:()SafeBrowsing;
@end

@implementation NSDictionary(SafeBrowsing)

- (void)ssb_stringForKey:()SafeBrowsing
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)ssb_numberForKey:()SafeBrowsing
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)ssb_arrayForKey:()SafeBrowsing
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)ssb_dictionaryForKey:()SafeBrowsing
{
  v1 = [self objectForKeyedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

@end