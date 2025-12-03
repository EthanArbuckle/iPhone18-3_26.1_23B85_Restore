@interface NSData(RemoteManagementModel)
- (id)RMModelHexString;
- (id)RMModelSHA1Hash;
- (id)RMModelSHA1HexString;
@end

@implementation NSData(RemoteManagementModel)

- (id)RMModelHexString
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [self length];
  bytes = [self bytes];
  v4 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v6 = *bytes++;
      *v5 = RMModelHexString_digits[v6 >> 4];
      v4 = v5 + 2;
      v5[1] = RMModelHexString_digits[v6 & 0xF];
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  *v4 = 0;
  v7 = [MEMORY[0x277CCACA8] stringWithCString:? encoding:?];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)RMModelSHA1Hash
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v5, 0, sizeof(v5));
  CC_SHA1_Init(&v5);
  CC_SHA1_Update(&v5, [self bytes], objc_msgSend(self, "length"));
  CC_SHA1_Final(md, &v5);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)RMModelSHA1HexString
{
  rMModelSHA1Hash = [self RMModelSHA1Hash];
  rMModelHexString = [rMModelSHA1Hash RMModelHexString];

  return rMModelHexString;
}

@end