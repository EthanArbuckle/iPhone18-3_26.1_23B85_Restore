@interface NSData(SHA256)
- (id)psso_sha256Hash;
- (id)psso_sha256HashString;
@end

@implementation NSData(SHA256)

- (id)psso_sha256HashString
{
  if ([self length])
  {
    psso_sha256Hash = [self psso_sha256Hash];
    v3 = [psso_sha256Hash base64EncodedStringWithOptions:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)psso_sha256Hash
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [self length];
  if (v2)
  {
    CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end