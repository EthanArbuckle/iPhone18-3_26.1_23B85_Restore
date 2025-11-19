@interface NSData(OFNSDataCryptoExtensions)
+ (FILE)AES128GenerateVerifierWithPassword:()OFNSDataCryptoExtensions;
+ (uint64_t)AES128CheckVerifier:()OFNSDataCryptoExtensions withPassword:;
- (char)hexaStringRepresentation;
- (id)AES128EncryptWithPassword:()OFNSDataCryptoExtensions;
- (uint64_t)hmacSha1Hash:()OFNSDataCryptoExtensions;
- (uint64_t)md5Hash;
- (uint64_t)sha1Hash;
@end

@implementation NSData(OFNSDataCryptoExtensions)

- (uint64_t)md5Hash
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v3, 0, sizeof(v3));
  CC_MD5_Init(&v3);
  CC_MD5_Update(&v3, [a1 bytes], objc_msgSend(a1, "length"));
  CC_MD5_Final(md, &v3);
  return [MEMORY[0x277CBEA90] dataWithBytes:md length:16];
}

- (uint64_t)sha1Hash
{
  v5 = *MEMORY[0x277D85DE8];
  memset(&v3, 0, sizeof(v3));
  CC_SHA1_Init(&v3);
  CC_SHA1_Update(&v3, [a1 bytes], objc_msgSend(a1, "length"));
  CC_SHA1_Final(md, &v3);
  return [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
}

- (uint64_t)hmacSha1Hash:()OFNSDataCryptoExtensions
{
  v5 = *MEMORY[0x277D85DE8];
  CCHmac(0, [a3 bytes], objc_msgSend(a3, "length"), objc_msgSend(a1, "bytes"), objc_msgSend(a1, "length"), macOut);
  return [MEMORY[0x277CBEA90] dataWithBytes:macOut length:20];
}

- (char)hexaStringRepresentation
{
  v2 = [a1 length];
  v3 = [a1 bytes];
  result = malloc_type_calloc(1uLL, (2 * v2) | 1, 0xB549ADE5uLL);
  if (result)
  {
    v5 = result;
    if (v2)
    {
      v6 = 0;
      v7 = 0;
      v8 = 1;
      do
      {
        sprintf(&v5[v6], "%02x", *(v3 + v7));
        v7 = v8;
        v9 = v2 > v8++;
        v6 += 2;
      }

      while (v9);
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v5 length:2 * v2 encoding:4];
    free(v5);

    return v10;
  }

  return result;
}

- (id)AES128EncryptWithPassword:()OFNSDataCryptoExtensions
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [a3 md5Hash];
    v14 = 0;
    iv = xmmword_269E92B20;
    v5 = [a1 length] + 15;
    v6 = malloc_type_calloc(1uLL, v5 & 0xFFFFFFFFFFFFFFF0, 0x213A4D50uLL);
    if (v6)
    {
      v7 = v6;
      [a1 getBytes:v6 length:{objc_msgSend(a1, "length")}];
      dataOutAvailable = ([a1 length] + 15) & 0xFFFFFFFFFFFFFFF0;
      dataOut = malloc_type_calloc(1uLL, dataOutAvailable, 0x5BA05FE1uLL);
      if (dataOut)
      {
        v10 = dataOut;
        if (!CCCrypt(0, 0, 0, [v4 bytes], objc_msgSend(v4, "length"), &iv, v7, v5 & 0xFFFFFFFFFFFFFFF0, dataOut, dataOutAvailable, &v14))
        {
          v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v10 length:dataOutAvailable freeWhenDone:1];
          free(v7);
          return v12;
        }

        free(v7);
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      free(v11);
    }
  }

  return 0;
}

+ (FILE)AES128GenerateVerifierWithPassword:()OFNSDataCryptoExtensions
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 dataUsingEncoding:4];
  v5 = fopen("/dev/random", "r");
  if (v5)
  {
    v6 = fread(__ptr, 1uLL, 8uLL, v5);
    fclose(v5);
    if (v6 == 8)
    {
      v5 = [MEMORY[0x277CBEB28] dataWithBytes:__ptr length:8];
      [(FILE *)v5 appendData:v4];
      v10 = *[objc_msgSend(a3 "md5Hash")];
      v7 = 50000;
      do
      {
        CC_MD5(&v10, 0x10u, &v10);
        --v7;
      }

      while (v7);
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v10 length:16];
      -[FILE appendData:](v5, "appendData:", [v8 AES128EncryptWithPassword:{a3, v10}]);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

+ (uint64_t)AES128CheckVerifier:()OFNSDataCryptoExtensions withPassword:
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = [a4 dataUsingEncoding:4];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:0];
  [v7 appendData:{objc_msgSend(a3, "subdataWithRange:", 0, 8)}];
  [v7 appendData:v6];
  *v11 = *[objc_msgSend(a4 "md5Hash")];
  v8 = 50000;
  do
  {
    CC_MD5(v11, 0x10u, v11);
    --v8;
  }

  while (v8);
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:16];
  [v7 appendData:{objc_msgSend(v9, "AES128EncryptWithPassword:", a4, *v11)}];
  return [v7 isEqualToData:a3];
}

@end