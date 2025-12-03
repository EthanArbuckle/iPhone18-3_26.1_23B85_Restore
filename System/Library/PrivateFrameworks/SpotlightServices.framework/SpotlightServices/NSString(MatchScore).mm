@interface NSString(MatchScore)
- (BOOL)containsCJK;
- (uint64_t)composedLength;
- (uint64_t)hasCommonSubDomainPrefix;
- (uint64_t)hasSpecialAppPrefix;
- (uint64_t)startCJK;
@end

@implementation NSString(MatchScore)

- (uint64_t)composedLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [self length];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__NSString_MatchScore__composedLength__block_invoke;
  v5[3] = &unk_1E8596088;
  v5[4] = &v6;
  [self enumerateSubstringsInRange:0 options:v2 usingBlock:{2, v5}];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (uint64_t)hasCommonSubDomainPrefix
{
  if ([self hasPrefix:@"www."] & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"ww."))
  {
    return 1;
  }

  return [self hasPrefix:@"m."];
}

- (uint64_t)hasSpecialAppPrefix
{
  if ([self hasPrefix:@"my"] & 1) != 0 || (objc_msgSend(self, "hasPrefix:", @"My"))
  {
    return 1;
  }

  return [self hasPrefix:@"i"];
}

- (BOOL)containsCJK
{
  if (containsCJK_onceToken != -1)
  {
    [NSString(MatchScore) containsCJK];
  }

  return [containsCJK_sRegex numberOfMatchesInString:self options:0 range:{0, objc_msgSend(self, "length")}] != 0;
}

- (uint64_t)startCJK
{
  result = [self length];
  if (result)
  {
    result = [self UTF8String];
    if (result)
    {
      if ((*result & 0x80000000) == 0)
      {
        return 0;
      }

      v3 = *result;
      if ((~(v3 >> 4) & 0xC) != 0)
      {
        return 0;
      }

      v4 = utf8_byte_length_utf8_len_table_0[v3 >> 4];
      v5 = v3 & utf8_to_code_point_utf8_first_char_mask_0[v4];
      v4 = v4 <= 2 ? 2 : v4;
      v6 = v4 - 1;
      v7 = (result + 1);
      do
      {
        v8 = v5;
        v9 = *v7++;
        v5 = v9 & 0x3F | (v5 << 6);
        --v6;
      }

      while (v6);
      if ((v8 << 6) >> 8 < 0x11)
      {
        return 0;
      }

      result = 1;
      if ((v8 & 0x3FFFFFC) != 0x44 && ((v8 << 6) - 11904) >> 7 >= 0x197 && (v5 - 65376) >= 0x50)
      {
        return 0;
      }
    }
  }

  return result;
}

@end