@interface NSData(SFUCryptoUtilsAdditions)
+ (SFUFileInputStream)dataWithContentsOfURL:()SFUCryptoUtilsAdditions decryptionKey:;
- (BOOL)writeToURL:()SFUCryptoUtilsAdditions encryptionKey:;
@end

@implementation NSData(SFUCryptoUtilsAdditions)

- (BOOL)writeToURL:()SFUCryptoUtilsAdditions encryptionKey:
{
  v6 = -[SFUFileOutputStream initWithPath:]([SFUFileOutputStream alloc], "initWithPath:", [a3 path]);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [[SFUCryptoOutputStream alloc] initForEncryptionWithOutputStream:v6 key:a4];
  v9 = v8 != 0;
  if (v8)
  {
    v10 = v8;
    [v8 writeBuffer:objc_msgSend(self size:{"bytes"), objc_msgSend(self, "length")}];
  }

  return v9;
}

+ (SFUFileInputStream)dataWithContentsOfURL:()SFUCryptoUtilsAdditions decryptionKey:
{
  v14 = 0;
  v6 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v7 = -[SFUFileInputStream initWithPath:offset:length:]([SFUFileInputStream alloc], "initWithPath:offset:length:", [a3 path], 0, objc_msgSend(objc_msgSend(v6, "objectForKey:", *MEMORY[0x277CCA1C0]), "unsignedLongLongValue"));
  if (v7)
  {
    v8 = [[SFUCryptoInputStream alloc] initForDecryptionWithInputStream:v7 key:a4];

    if (v8)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB28]);
      v9 = [[SFUMemoryOutputStream alloc] initWithData:v7];
      v10 = malloc_type_malloc(0x40007uLL, 0x100004077774924uLL);
      v11 = [v8 readToBuffer:v10 size:262151];
      if (v11)
      {
        v12 = v11;
        do
        {
          [(SFUMemoryOutputStream *)v9 writeBuffer:v10 size:v12];
          v12 = [v8 readToBuffer:v10 size:262151];
        }

        while (v12);
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

@end