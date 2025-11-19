@interface NSData(VFAdditions)
- (id)vf_hexString;
- (id)vf_md5Digest;
- (id)vf_sha256DigestWithSalts:()VFAdditions;
@end

@implementation NSData(VFAdditions)

- (id)vf_md5Digest
{
  v9 = *MEMORY[0x277D85DE8];
  memset(&c, 0, sizeof(c));
  CC_MD5_Init(&c);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__NSData_VFAdditions__vf_md5Digest__block_invoke;
  v5[3] = &__block_descriptor_40_e29_v40__0r_v8__NSRange_QQ_16_B32l;
  v5[4] = &c;
  [a1 enumerateByteRangesUsingBlock:v5];
  *md = 0;
  v8 = 0;
  CC_MD5_Final(md, &c);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)vf_hexString
{
  v2 = [a1 length];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:2 * v2];
  v4 = [a1 bytes];
  if (v2)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@"%02X", v6];
      --v2;
    }

    while (v2);
  }

  return v3;
}

- (id)vf_sha256DigestWithSalts:()VFAdditions
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 length])
        {
          CC_SHA256_Update(&c, [v10 bytes], objc_msgSend(v10, "length"));
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  CC_SHA256_Update(&c, [a1 bytes], objc_msgSend(a1, "length"));
  CC_SHA256_Final(md, &c);
  v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:md length:32];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

@end