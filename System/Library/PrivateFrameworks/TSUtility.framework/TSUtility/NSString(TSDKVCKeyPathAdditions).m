@interface NSString(TSDKVCKeyPathAdditions)
- (__CFString)tsu_keyPathByRemovingFirstKey;
- (__CFString)tsu_keyPathByRemovingLastKey;
- (uint64_t)tsu_firstKey;
- (uint64_t)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions;
- (uint64_t)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions;
- (uint64_t)tsu_lastKey;
- (uint64_t)tsu_numberOfKeysInKeyPath;
@end

@implementation NSString(TSDKVCKeyPathAdditions)

- (__CFString)tsu_keyPathByRemovingLastKey
{
  v2 = [a1 rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_287DDF830;
  }

  return [a1 substringToIndex:v2];
}

- (__CFString)tsu_keyPathByRemovingFirstKey
{
  v2 = [a1 rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_287DDF830;
  }

  return [a1 substringFromIndex:v2 + 1];
}

- (uint64_t)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions
{
  if ([a1 length])
  {
    v5 = [a3 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a3, a1];
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = a3;
  }

  return [v6 stringWithString:v8];
}

- (uint64_t)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions
{
  if ([a1 length])
  {
    v5 = [a3 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a1, a3];
    }

    v8 = a1;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v8 = a3;
  }

  return [v6 stringWithString:v8];
}

- (uint64_t)tsu_firstKey
{
  v2 = [a1 rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  return [a1 substringToIndex:v2];
}

- (uint64_t)tsu_lastKey
{
  v2 = [a1 rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a1;
  }

  return [a1 substringFromIndex:v2 + 1];
}

- (uint64_t)tsu_numberOfKeysInKeyPath
{
  v2 = [a1 length];
  v3 = 0;
  v4 = 0;
  v5 = v2;
  do
  {
    v6 = [a1 rangeOfString:@"." options:2 range:{v3, v5}];
    ++v4;
    v3 = v6 + v7;
    v5 = v2 - (v6 + v7);
  }

  while (v6 + v7 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

@end