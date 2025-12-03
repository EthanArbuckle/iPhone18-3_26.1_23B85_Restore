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
  v2 = [self rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_287DDF830;
  }

  return [self substringToIndex:v2];
}

- (__CFString)tsu_keyPathByRemovingFirstKey
{
  v2 = [self rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_287DDF830;
  }

  return [self substringFromIndex:v2 + 1];
}

- (uint64_t)tsu_keyPathByPrependingKey:()TSDKVCKeyPathAdditions
{
  if ([self length])
  {
    v5 = [a3 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", a3, self];
    }

    selfCopy = self;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = a3;
  }

  return [v6 stringWithString:selfCopy];
}

- (uint64_t)tsu_keyPathByAppendingKey:()TSDKVCKeyPathAdditions
{
  if ([self length])
  {
    v5 = [a3 length];
    v6 = MEMORY[0x277CCACA8];
    if (v5)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", self, a3];
    }

    selfCopy = self;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    selfCopy = a3;
  }

  return [v6 stringWithString:selfCopy];
}

- (uint64_t)tsu_firstKey
{
  v2 = [self rangeOfString:@"." options:2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self;
  }

  return [self substringToIndex:v2];
}

- (uint64_t)tsu_lastKey
{
  v2 = [self rangeOfString:@"." options:6];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return self;
  }

  return [self substringFromIndex:v2 + 1];
}

- (uint64_t)tsu_numberOfKeysInKeyPath
{
  v2 = [self length];
  v3 = 0;
  v4 = 0;
  v5 = v2;
  do
  {
    v6 = [self rangeOfString:@"." options:2 range:{v3, v5}];
    ++v4;
    v3 = v6 + v7;
    v5 = v2 - (v6 + v7);
  }

  while (v6 + v7 != 0x7FFFFFFFFFFFFFFFLL);
  return v4;
}

@end