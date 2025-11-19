@interface NSDictionary(ICAdditions)
- (double)ic_doubleValueForKey:()ICAdditions;
- (uint64_t)ic_BOOLValueForKey:()ICAdditions;
- (uint64_t)ic_int64ValueForKey:()ICAdditions;
- (uint64_t)ic_intValueForKey:()ICAdditions;
- (uint64_t)ic_integerValueForKey:()ICAdditions;
- (uint64_t)ic_uintValueForKey:()ICAdditions;
- (void)ic_arrayValueForKey:()ICAdditions;
- (void)ic_dataValueForKey:()ICAdditions;
- (void)ic_dictionaryValueForKey:()ICAdditions;
- (void)ic_numberValueForKey:()ICAdditions;
- (void)ic_stringValueForKey:()ICAdditions;
@end

@implementation NSDictionary(ICAdditions)

- (void)ic_dataValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSData())
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

- (void)ic_stringValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSString())
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

- (void)ic_dictionaryValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSDictionary())
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

- (void)ic_arrayValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSArray())
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

- (double)ic_doubleValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  v2 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v1 doubleValue];
    v2 = v3;
  }

  return v2;
}

- (uint64_t)ic_BOOLValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ic_int64ValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 longLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ic_uintValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 unsignedIntValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ic_intValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 intValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)ic_integerValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)ic_numberValueForKey:()ICAdditions
{
  v1 = [a1 objectForKey:?];
  if (_NSIsNSNumber())
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