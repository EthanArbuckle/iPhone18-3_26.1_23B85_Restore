@interface NSData(VideosUICore)
- (id)vui_SHA1Digest;
- (id)vui_SHA256Digest;
- (uint64_t)vui_lowercaseHexString;
@end

@implementation NSData(VideosUICore)

- (uint64_t)vui_lowercaseHexString
{
  v2 = MEMORY[0x277CCACA8];
  bytes = [self bytes];
  v4 = [self length];

  return [v2 vui_lowercaseHexStringWithBytes:bytes length:v4];
}

- (id)vui_SHA1Digest
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    CC_SHA1([self bytes], v2, v5);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:20];
  }

  return v3;
}

- (id)vui_SHA256Digest
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    CC_SHA256([self bytes], v2, md);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  return v3;
}

@end