@interface NSData(TVMLKitAdditions)
- (id)tv_MD5Digest;
- (id)tv_SHA1Digest;
- (id)tv_SHA256Digest;
- (uint64_t)tv_lowercaseHexString;
@end

@implementation NSData(TVMLKitAdditions)

- (uint64_t)tv_lowercaseHexString
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 bytes];
  v4 = [a1 length];

  return [v2 tv_lowercaseHexStringWithBytes:v3 length:v4];
}

- (id)tv_MD5Digest
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    CC_MD5([a1 bytes], v2, md);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
  }

  return v3;
}

- (id)tv_SHA1Digest
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    memset(v5, 0, sizeof(v5));
    CC_SHA1([a1 bytes], v2, v5);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:20];
  }

  return v3;
}

- (id)tv_SHA256Digest
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    CC_SHA256([a1 bytes], v2, md);
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  return v3;
}

@end