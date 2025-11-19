@interface NSString(ZWJ_Duplicate_Removal)
- (id)stringRemovingDoubleZWJ;
- (uint64_t)hasDoubleZWJ;
@end

@implementation NSString(ZWJ_Duplicate_Removal)

- (uint64_t)hasDoubleZWJ
{
  result = [a1 length];
  if (result)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v5 = [a1 characterAtIndex:v3];
      v6 = v5;
      v7 = v4 == 8205 && v5 == 8205;
      result = v7;
      if (v7)
      {
        break;
      }

      ++v3;
      v4 = v6;
      if (v3 >= [a1 length])
      {
        return 0;
      }
    }
  }

  return result;
}

- (id)stringRemovingDoubleZWJ
{
  v2 = [MEMORY[0x277CCAB68] stringWithCapacity:{objc_msgSend(a1, "length")}];
  if ([a1 length])
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = [a1 characterAtIndex:v4];
      v6 = v5;
      if (v3 != 8205 || v5 != 8205)
      {
        [v2 appendFormat:@"%C", v5];
      }

      ++v4;
      v3 = v6;
    }

    while (v4 < [a1 length]);
  }

  v7 = [MEMORY[0x277CCACA8] stringWithString:v2];

  return v7;
}

@end