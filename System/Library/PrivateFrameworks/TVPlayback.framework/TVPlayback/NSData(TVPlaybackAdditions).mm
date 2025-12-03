@interface NSData(TVPlaybackAdditions)
- (id)tvp_MD5Digest;
- (id)tvp_SHA1Digest;
- (id)tvp_SHA256Digest;
- (uint64_t)tvp_lowercaseHexString;
- (uint64_t)tvp_uppercaseHexString;
@end

@implementation NSData(TVPlaybackAdditions)

- (uint64_t)tvp_lowercaseHexString
{
  v2 = MEMORY[0x277CCACA8];
  bytes = [self bytes];
  v4 = [self length];

  return [v2 tvp_lowercaseHexStringWithBytes:bytes length:v4];
}

- (uint64_t)tvp_uppercaseHexString
{
  v2 = MEMORY[0x277CCACA8];
  bytes = [self bytes];
  v4 = [self length];

  return [v2 tvp_uppercaseHexStringWithBytes:bytes length:v4];
}

- (id)tvp_MD5Digest
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    CC_MD5([self bytes], v2, md);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tvp_SHA1Digest
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    CC_SHA1([self bytes], v2, v6);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:20];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)tvp_SHA256Digest
{
  v7 = *MEMORY[0x277D85DE8];
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

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end