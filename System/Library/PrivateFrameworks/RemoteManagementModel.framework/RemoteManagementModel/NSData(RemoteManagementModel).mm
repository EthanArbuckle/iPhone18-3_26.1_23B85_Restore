@interface NSData(RemoteManagementModel)
- (id)RMModelHexString;
- (id)RMModelSHA1Hash;
- (id)RMModelSHA1HexString;
@end

@implementation NSData(RemoteManagementModel)

- (id)RMModelHexString
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  v3 = [a1 bytes];
  v4 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
  if (v2)
  {
    v5 = v10 - ((2 * v2 + 16) & 0xFFFFFFFFFFFFFFF0);
    do
    {
      v6 = *v3++;
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
  CC_SHA1_Update(&v5, [a1 bytes], objc_msgSend(a1, "length"));
  CC_SHA1_Final(md, &v5);
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)RMModelSHA1HexString
{
  v1 = [a1 RMModelSHA1Hash];
  v2 = [v1 RMModelHexString];

  return v2;
}

@end