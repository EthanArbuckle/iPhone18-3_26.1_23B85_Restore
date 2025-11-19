@interface NSData(IMAdditions)
+ (id)imDataFromHexString:()IMAdditions;
+ (id)uniquenessHashForContentsOfFileUrl:()IMAdditions readBufferSize:;
- (id)hexString;
- (id)uniquenessHash;
@end

@implementation NSData(IMAdditions)

+ (id)imDataFromHexString:()IMAdditions
{
  v3 = a3;
  v4 = [v3 length];
  v5 = v4 >> 1;
  v6 = malloc_type_malloc(v4 >> 1, 0x189BC8DEuLL);
  v7 = [v3 UTF8String];
  if (v4 < 2)
  {
LABEL_5:
    v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v6 length:v5];
  }

  else
  {
    v8 = v7;
    v9 = 0;
    while (1)
    {
      v12 = 0;
      if (sscanf(v8, "%1hhx%1hhx", &v12 + 1, &v12) < 2)
      {
        break;
      }

      v6[v9++] = v12 + 16 * HIBYTE(v12);
      v8 += 2;
      if (v5 == v9)
      {
        goto LABEL_5;
      }
    }

    free(v6);
    v10 = 0;
  }

  return v10;
}

- (id)hexString
{
  v2 = [a1 length];
  v3 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v2];
  v4 = [a1 bytes];
  if (v2)
  {
    v5 = v4;
    do
    {
      v6 = *v5++;
      [v3 appendFormat:@"%02x", v6];
      --v2;
    }

    while (v2);
  }

  return v3;
}

- (id)uniquenessHash
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  if (v2)
  {
    v3 = v2;
    memset(&v10, 0, sizeof(v10));
    CC_MD5_Init(&v10);
    v4 = [a1 bytes];
    if (v3 < 0x10000)
    {
      goto LABEL_5;
    }

    do
    {
      CC_MD5_Update(&v10, v4, 0x10000u);
      v4 += 0x10000;
      v3 -= 0x10000;
    }

    while (v3 >> 16);
    if (v3)
    {
LABEL_5:
      CC_MD5_Update(&v10, v4, v3);
    }

    CC_MD5_Final(md, &v10);
    v5 = 0;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = v11 + 1;
    do
    {
      v7 = md[v5];
      *(v6 - 1) = a0123456789abcd[v7 >> 4];
      *v6 = a0123456789abcd[v7 & 0xF];
      v6 += 2;
      ++v5;
    }

    while (v5 != 16);
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v11 length:32 encoding:4];
  }

  v8 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)uniquenessHashForContentsOfFileUrl:()IMAdditions readBufferSize:
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = 0x4000;
  }

  v17 = 0;
  v7 = [MEMORY[0x1E696AC00] fileHandleForReadingFromURL:v5 error:&v17];
  v8 = v17;
  if (v7)
  {
    memset(&v16, 0, sizeof(v16));
    CC_MD5_Init(&v16);
    do
    {
      v9 = objc_autoreleasePoolPush();
      v10 = [v7 readDataOfLength:v6];
      v11 = [v10 length];
      if (v11)
      {
        v12 = v10;
        CC_MD5_Update(&v16, [v10 bytes], objc_msgSend(v10, "length"));
      }

      objc_autoreleasePoolPop(v9);
    }

    while (v11);
    CC_MD5_Final(md, &v16);
    [v7 closeFile];
    v13 = [MEMORY[0x1E695DEF0] dataWithBytes:md length:16];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end