@interface NSData(iCalDigest)
- (id)ical_digestWithVersionNumber:()iCalDigest;
@end

@implementation NSData(iCalDigest)

- (id)ical_digestWithVersionNumber:()iCalDigest
{
  v11 = *MEMORY[0x277D85DE8];
  data = a3;
  v5 = [a1 length];
  if (v5)
  {
    memset(&v8, 0, sizeof(v8));
    CC_SHA1_Init(&v8);
    if (a3)
    {
      CC_SHA1_Update(&v8, &data, 4u);
    }

    CC_SHA1_Update(&v8, [a1 bytes], objc_msgSend(a1, "length"));
    CC_SHA1_Final(md, &v8);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end