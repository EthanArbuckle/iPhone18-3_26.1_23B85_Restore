@interface NSString(Hash)
- (id)preinstalledAudioHashForLanguage:()Hash name:;
- (id)sha256hex;
@end

@implementation NSString(Hash)

- (id)preinstalledAudioHashForLanguage:()Hash name:
{
  v4 = [a1 stringByAppendingFormat:@" %@ %@", a3, a4];
  v5 = [v4 sha256hex];

  return v5;
}

- (id)sha256hex
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 UTF8String];
  v2 = strlen(v1);
  CC_SHA256(v1, v2, md);
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end