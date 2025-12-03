@interface NSDictionary(StatusKitAgent)
- (id)ska_dataFrombase64EncodedStringForKey:()StatusKitAgent;
- (id)ska_dateFromUnixTimestampForKey:()StatusKitAgent;
- (id)ska_dictionaryForKey:()StatusKitAgent;
- (id)ska_numberForKey:()StatusKitAgent;
- (id)ska_stringForKey:()StatusKitAgent;
@end

@implementation NSDictionary(StatusKitAgent)

- (id)ska_dictionaryForKey:()StatusKitAgent
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

  return v2;
}

- (id)ska_dataFrombase64EncodedStringForKey:()StatusKitAgent
{
  v1 = [self ska_stringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v1 options:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ska_dateFromUnixTimestampForKey:()StatusKitAgent
{
  v1 = [self ska_numberForKey:?];
  v2 = v1;
  if (v1 && ([v1 doubleValue], v3 >= 2.22044605e-16))
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ska_stringForKey:()StatusKitAgent
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

  return v2;
}

- (id)ska_numberForKey:()StatusKitAgent
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

  return v2;
}

@end