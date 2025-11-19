@interface NSData(SHA256)
- (id)psso_sha256Hash;
- (id)psso_sha256HashString;
@end

@implementation NSData(SHA256)

- (id)psso_sha256HashString
{
  if ([a1 length])
  {
    v2 = [a1 psso_sha256Hash];
    v3 = [v2 base64EncodedStringWithOptions:0];
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
  v2 = [a1 length];
  if (v2)
  {
    CC_SHA256([a1 bytes], objc_msgSend(a1, "length"), md);
    v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end