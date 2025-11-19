@interface TSUHasher
+ (BOOL)addFileToSha1HashWithFileHandle:(id)a3 hashContext:(CC_SHA1state_st *)a4 error:(id *)a5;
+ (id)computeSha1WithFile:(id)a3 error:(id *)a4;
+ (id)computeSha1WithFileOrDirectory:(id)a3 error:(id *)a4;
- (TSUHasher)init;
- (void)addObject:(id)a3;
- (void)addRange:(_NSRange)a3;
@end

@implementation TSUHasher

- (TSUHasher)init
{
  v3.receiver = self;
  v3.super_class = TSUHasher;
  result = [(TSUHasher *)&v3 init];
  if (result)
  {
    result->_currentHash = 0xCBF29CE484222325;
  }

  return result;
}

- (void)addObject:(id)a3
{
  v4 = [a3 hash];

  [(TSUHasher *)self p_appendUnsignedInteger:v4];
}

- (void)addRange:(_NSRange)a3
{
  length = a3.length;
  [(TSUHasher *)self p_appendUnsignedInteger:a3.location];

  [(TSUHasher *)self p_appendUnsignedInteger:length];
}

+ (id)computeSha1WithFile:(id)a3 error:(id *)a4
{
  v5 = a3;
  v11 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v11];

  if (v8 && (v11 & 1) == 0)
  {
    v9 = [TSUHasher computeSha1WithFileOrDirectory:v5 error:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)computeSha1WithFileOrDirectory:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (v8)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v15 = 0;
    v9 = [TSUHasher addFileToSha1HashWithFileHandle:v5 hashContext:&c error:&v15];
    v10 = v15;
    v11 = v10;
    if (!v9 || v10)
    {
      if (a4)
      {
        v13 = v10;
        v12 = 0;
        *a4 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      CC_SHA1_Final(md, &c);
      v12 = [MEMORY[0x277CBEA90] dataWithBytes:md length:20];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)addFileToSha1HashWithFileHandle:(id)a3 hashContext:(CC_SHA1state_st *)a4 error:(id *)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v38 = 0;
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  [v8 fileExistsAtPath:v9 isDirectory:&v38];

  if (v38 != 1)
  {
    v32 = 0;
    v15 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:v7 error:&v32];
    v24 = v32;
    v12 = v24;
    if (v15)
    {
      while (1)
      {
        v31 = 0;
        v25 = [v15 readDataUpToLength:0x80000 error:&v31];
        v26 = v31;
        v27 = v26;
        if (!v25)
        {
          break;
        }

        if (![v25 length])
        {

          v11 = 1;
          goto LABEL_30;
        }

        CC_SHA1_Update(a4, [v25 bytes], objc_msgSend(v25, "length"));
      }

      if (a5)
      {
        v28 = v26;
        *a5 = v27;
      }
    }

    else if (a5)
    {
      v29 = v24;
      v11 = 0;
      *a5 = v12;
      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_30;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 1;
  v12 = [v10 enumeratorAtURL:v7 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:1 errorHandler:0];

  v13 = [v12 allObjects];
  v14 = [v13 sortedArrayUsingComparator:&unk_28862B2D0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        v33 = 0;
        v21 = [TSUHasher addFileToSha1HashWithFileHandle:v20 hashContext:a4 error:&v33];
        v22 = v33;
        if (!v21 || v22 != 0)
        {
          if (a5)
          {
            v22 = v22;
            *a5 = v22;
          }

          v11 = 0;
          goto LABEL_22;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }

    v11 = 1;
  }

LABEL_22:

LABEL_30:
  return v11;
}

@end