@interface NSString(PersonaKit)
+ (id)pr_hexStringWithData:()PersonaKit;
- (id)pr_SHADigest;
- (id)pr_numericValue;
@end

@implementation NSString(PersonaKit)

- (id)pr_SHADigest
{
  v9 = *MEMORY[0x277D85DE8];
  uTF8String = [self UTF8String];
  *md = 0u;
  v8 = 0u;
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, md);
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)pr_numericValue
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
  invertedSet = [v2 invertedSet];

  v4 = [self componentsSeparatedByCharactersInSet:invertedSet];
  v5 = [v4 componentsJoinedByString:&stru_287026288];
  longLongValue = [v5 longLongValue];

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];

  return v7;
}

+ (id)pr_hexStringWithData:()PersonaKit
{
  v3 = a3;
  v4 = [v3 length];
  bytes = [v3 bytes];
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v4];
  if (v4 >= 1)
  {
    do
    {
      v7 = *bytes++;
      [v6 appendFormat:@"%02X", v7];
      --v4;
    }

    while (v4);
  }

  v8 = [v6 copy];

  return v8;
}

@end