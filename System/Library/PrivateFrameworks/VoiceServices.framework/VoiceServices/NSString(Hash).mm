@interface NSString(Hash)
- (id)preinstalledAudioHashForLanguage:()Hash name:;
- (id)sha256hex;
@end

@implementation NSString(Hash)

- (id)preinstalledAudioHashForLanguage:()Hash name:
{
  v4 = [self stringByAppendingFormat:@" %@ %@", a3, a4];
  sha256hex = [v4 sha256hex];

  return sha256hex;
}

- (id)sha256hex
{
  v8 = *MEMORY[0x277D85DE8];
  uTF8String = [self UTF8String];
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, md);
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
  for (i = 0; i != 32; ++i)
  {
    [v3 appendFormat:@"%02x", md[i]];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end