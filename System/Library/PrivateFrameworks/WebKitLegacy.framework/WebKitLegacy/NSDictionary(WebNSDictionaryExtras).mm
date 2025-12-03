@interface NSDictionary(WebNSDictionaryExtras)
- (uint64_t)_webkit_arrayForKey:()WebNSDictionaryExtras;
- (uint64_t)_webkit_numberForKey:()WebNSDictionaryExtras;
- (uint64_t)_webkit_objectForMIMEType:()WebNSDictionaryExtras;
- (uint64_t)_webkit_stringForKey:()WebNSDictionaryExtras;
- (void)_webkit_BOOLForKey:()WebNSDictionaryExtras;
@end

@implementation NSDictionary(WebNSDictionaryExtras)

- (uint64_t)_webkit_numberForKey:()WebNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_webkit_stringForKey:()WebNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_webkit_arrayForKey:()WebNSDictionaryExtras
{
  v1 = [self objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)_webkit_objectForMIMEType:()WebNSDictionaryExtras
{
  result = [self objectForKey:?];
  if (!result)
  {
    v6 = [a3 rangeOfString:@"/"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v7 = [a3 substringToIndex:v6 + 1];

      return [self objectForKey:v7];
    }
  }

  return result;
}

- (void)_webkit_BOOLForKey:()WebNSDictionaryExtras
{
  result = [self _webkit_numberForKey:?];
  if (result)
  {

    return [result BOOLValue];
  }

  return result;
}

@end