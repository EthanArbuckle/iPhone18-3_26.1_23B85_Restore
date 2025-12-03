@interface NSData(RTExtensions)
- (id)hexDescription;
- (id)hexString;
- (id)hmacSha1WithKey:()RTExtensions;
- (id)md5;
- (id)sha256Hash;
- (void)initWithHexString:()RTExtensions;
@end

@implementation NSData(RTExtensions)

- (id)hexDescription
{
  bytes = [self bytes];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length") + 2}];
  [v3 appendFormat:@"0x"];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(bytes + v4++)];
    }

    while ([self length] > v4);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v5;
}

- (id)hexString
{
  bytes = [self bytes];
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:{2 * objc_msgSend(self, "length")}];
  if ([self length])
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%02x", *(bytes + v4++)];
    }

    while ([self length] > v4);
  }

  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v5;
}

- (id)md5
{
  v4 = *MEMORY[0x277D85DE8];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];

  return v1;
}

- (id)hmacSha1WithKey:()RTExtensions
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = a3;
    v6 = a3;
    bytes = [v6 bytes];
    v8 = [v6 length];

    CCHmac(0, bytes, v8, [self bytes], objc_msgSend(self, "length"), macOut);
    v9 = [MEMORY[0x277CBEA90] dataWithBytes:macOut length:20];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sha256Hash
{
  v4 = *MEMORY[0x277D85DE8];
  CC_SHA256([self bytes], objc_msgSend(self, "length"), md);
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];

  return v1;
}

- (void)initWithHexString:()RTExtensions
{
  v4 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_284528390];
  v5 = objc_opt_new();
  v10 = 0;
  if ([v4 length] >= 2)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      __str[0] = [v4 characterAtIndex:v7 - 1];
      __str[1] = [v4 characterAtIndex:v7];
      HIBYTE(v10) = strtol(__str, 0, 16);
      [v5 appendBytes:&v10 + 1 length:1];
      ++v6;
      v7 += 2;
    }

    while (v6 < [v4 length] >> 1);
  }

  return v5;
}

@end