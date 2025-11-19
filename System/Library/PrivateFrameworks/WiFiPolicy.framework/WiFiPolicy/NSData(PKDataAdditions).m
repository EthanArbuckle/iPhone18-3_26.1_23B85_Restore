@interface NSData(PKDataAdditions)
- (id)SHA1Hash;
- (id)hexEncoding;
@end

@implementation NSData(PKDataAdditions)

- (id)SHA1Hash
{
  v5 = *MEMORY[0x277D85DE8];
  CC_SHA1([a1 bytes], objc_msgSend(a1, "length"), md);
  v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:20];
  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

- (id)hexEncoding
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v3 = [a1 length];
  v4 = [a1 bytes];
  if (v3)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v2 appendFormat:@"%02x", v6];
      --v3;
    }

    while (v3);
  }

  return v2;
}

@end