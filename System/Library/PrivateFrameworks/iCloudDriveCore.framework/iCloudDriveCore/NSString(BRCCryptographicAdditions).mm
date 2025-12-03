@interface NSString(BRCCryptographicAdditions)
+ (__CFString)brc_hexadecimalStringWithBytes:()BRCCryptographicAdditions length:;
- (id)brc_SHA1WithSalt:()BRCCryptographicAdditions;
- (id)brc_SHA256;
- (id)brc_SHA256WithSalt:()BRCCryptographicAdditions;
- (id)brc_dataFromHexidecimalString;
@end

@implementation NSString(BRCCryptographicAdditions)

- (id)brc_SHA256
{
  v7 = *MEMORY[0x277D85DE8];
  uTF8String = [self UTF8String];
  memset(v6, 0, sizeof(v6));
  v2 = strlen(uTF8String);
  CC_SHA256(uTF8String, v2, v6);
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:32];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (__CFString)brc_hexadecimalStringWithBytes:()BRCCryptographicAdditions length:
{
  v4 = a4;
  v16[128] = *MEMORY[0x277D85DE8];
  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * a4];
  if (v6)
  {
    for (; v4; v4 -= v7)
    {
      if (v4 >= 0x200)
      {
        v7 = 512;
      }

      else
      {
        v7 = v4;
      }

      v8 = v16;
      v9 = a3;
      v10 = v7;
      do
      {
        v11 = *v9++;
        *(v8 - 1) = a0123456789abcd[v11 >> 4];
        *v8 = a0123456789abcd[v11 & 0xF];
        v8 += 2;
        --v10;
      }

      while (v10);
      cStr[2 * v7] = 0;
      CFStringAppendCString(v6, cStr, 0x600u);
      a3 += v7;
    }

    v12 = v6;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)brc_SHA1WithSalt:()BRCCryptographicAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a3;
  uTF8String = [self UTF8String];
  uTF8String2 = [v6 UTF8String];

  v9 = strlen(uTF8String);
  v10 = strlen(uTF8String2);
  CCHmac(0, uTF8String, v9, uTF8String2, v10, macOut);
  v11 = [MEMORY[0x277CCACA8] brc_hexadecimalStringWithBytes:macOut length:20];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)brc_SHA256WithSalt:()BRCCryptographicAdditions
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v6 = a3;
  uTF8String = [self UTF8String];
  bytes = [v6 bytes];
  v9 = strlen(uTF8String);
  v10 = [v6 length];

  CCHmac(2u, uTF8String, v9, bytes, v10, &v14);
  v11 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:32];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)brc_dataFromHexidecimalString
{
  uTF8String = [self UTF8String];
  v3 = [self length];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB28] dataWithCapacity:v3 >> 1];
    v10 = 0;
    v8 = 0;
    if (v3)
    {
      v5 = 0;
      v6 = uTF8String + 1;
      do
      {
        *__str = *(v6 - 1);
        v5 += 2;
        v8 = strtoul(__str, 0, 16);
        [v4 appendBytes:&v8 length:1];
        v6 += 2;
      }

      while (v5 < v3);
    }
  }

  return v4;
}

@end