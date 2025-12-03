@interface NSData(TRI)
+ (id)triDataWithHexString:()TRI;
+ (id)triVerifiedMappedDataWithFile:()TRI error:;
- (id)triHexlify;
- (id)triSha256;
- (id)triSha256Base64String;
@end

@implementation NSData(TRI)

- (id)triSha256
{
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  bytes = [self bytes];
  v4 = [self length];
  mutableBytes = [v2 mutableBytes];
  if (!mutableBytes)
  {
    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v7);
  }

  CC_SHA256(bytes, v4, mutableBytes);

  return v2;
}

- (id)triSha256Base64String
{
  triSha256 = [self triSha256];
  v2 = [triSha256 base64EncodedStringWithOptions:0];

  return v2;
}

- (id)triHexlify
{
  v4 = [self length];
  v5 = 2 * v4;
  v6 = malloc_type_malloc(2 * v4, 0x1997DC19uLL);
  if (!v6)
  {
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v20);
  }

  v7 = v6;
  bytes = [self bytes];
  if (v4)
  {
    v9 = v7 + 1;
    do
    {
      v11 = *bytes++;
      v10 = v11;
      v12 = v11 & 0xF;
      v13 = (v11 >> 4) | 0x30;
      v14 = (v11 >> 4) + 87;
      if (v11 < 0xA0)
      {
        LOBYTE(v14) = v13;
      }

      *(v9 - 1) = v14;
      v15 = v10 & 0xF | 0x30;
      v16 = v12 + 87;
      if (v12 < 0xA)
      {
        v16 = v15;
      }

      *v9 = v16;
      v9 += 2;
      --v4;
    }

    while (v4);
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v7 length:v5 encoding:1 freeWhenDone:1];
  if (!v17)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSData+TRI.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  return v17;
}

+ (id)triVerifiedMappedDataWithFile:()TRI error:
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = open([v5 fileSystemRepresentation], 0);
  if (v7 < 0)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = __error();
    v16 = strerror(*v15);
    v17 = [v14 initWithFormat:@"Failed to open %@: %s (%d)", v5, v16, *__error()];
    if (a4)
    {
      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v19 = *MEMORY[0x277CCA5B8];
      v20 = *__error();
      v44 = *MEMORY[0x277CCA450];
      v45[0] = v17;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      v22 = [v18 initWithDomain:v19 code:v20 userInfo:v21];
      v23 = *a4;
      *a4 = v22;
    }

    objc_autoreleasePoolPop(v6);
LABEL_17:
    v34 = 0;
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:0x10000];
  mutableBytes = [v9 mutableBytes];
  if (!mutableBytes)
  {
    v39 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v39);
  }

  v11 = mutableBytes;
  while (1)
  {
    v12 = read(v8, v11, [v9 length]);
    v13 = v12;
    if (v12 < 0)
    {
      break;
    }

    if (!v12)
    {
      goto LABEL_13;
    }
  }

  v24 = objc_alloc(MEMORY[0x277CCACA8]);
  v25 = __error();
  v26 = strerror(*v25);
  v27 = [v24 initWithFormat:@"Error while read-verifying %@: %s (%d)", v5, v26, *__error()];
  if (a4)
  {
    v40 = objc_alloc(MEMORY[0x277CCA9B8]);
    v28 = *MEMORY[0x277CCA5B8];
    v29 = *__error();
    v42 = *MEMORY[0x277CCA450];
    v43 = v27;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v31 = v30 = v6;
    v32 = [v40 initWithDomain:v28 code:v29 userInfo:v31];
    v33 = *a4;
    *a4 = v32;

    v6 = v30;
  }

LABEL_13:
  close(v8);

  objc_autoreleasePoolPop(v6);
  if (v13 < 0)
  {
    goto LABEL_17;
  }

  v41 = 0;
  v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:8 error:&v41];
  v35 = v41;
  v36 = v41;
  if (a4)
  {
    objc_storeStrong(a4, v35);
  }

LABEL_18:
  v37 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)triDataWithHexString:()TRI
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@" " withString:&stru_28435FC98];
  v4 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v9 = 0;
  if ([v3 length] >= 2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      __str[0] = [v3 characterAtIndex:v6 - 1];
      __str[1] = [v3 characterAtIndex:v6];
      HIBYTE(v9) = strtol(__str, 0, 16);
      [v4 appendBytes:&v9 + 1 length:1];
      ++v5;
      v6 += 2;
    }

    while (v5 < [v3 length] >> 1);
  }

  return v4;
}

@end