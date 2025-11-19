@interface NSData(PBFUtilities)
- (id)pbf_sha256Hash;
@end

@implementation NSData(PBFUtilities)

- (id)pbf_sha256Hash
{
  v13 = *MEMORY[0x277D85DE8];
  if ([a1 length])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x8810000000;
    v10 = &unk_21B7185A7;
    memset(&v11, 0, sizeof(v11));
    CC_SHA256_Init(&v11);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__NSData_PBFUtilities__pbf_sha256Hash__block_invoke;
    v6[3] = &unk_2782C8D08;
    v6[4] = &v7;
    [a1 enumerateByteRangesUsingBlock:v6];
    CC_SHA256_Final(md, (v8 + 4));
    v2 = [MEMORY[0x277CCAB68] stringWithCapacity:64];
    for (i = 0; i != 32; ++i)
    {
      [v2 appendFormat:@"%02x", md[i]];
    }

    v4 = [MEMORY[0x277CCACA8] stringWithString:v2];

    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end