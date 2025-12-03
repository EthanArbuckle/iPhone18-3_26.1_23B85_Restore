@interface TSUHasher
+ (BOOL)addFileToSha1HashWithFileHandle:(id)handle hashContext:(CC_SHA1state_st *)context error:(id *)error;
+ (id)computeSha1WithFile:(id)file error:(id *)error;
+ (id)computeSha1WithFileOrDirectory:(id)directory error:(id *)error;
- (TSUHasher)init;
- (void)addObject:(id)object;
- (void)addRange:(_NSRange)range;
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

- (void)addObject:(id)object
{
  v4 = [object hash];

  [(TSUHasher *)self p_appendUnsignedInteger:v4];
}

- (void)addRange:(_NSRange)range
{
  length = range.length;
  [(TSUHasher *)self p_appendUnsignedInteger:range.location];

  [(TSUHasher *)self p_appendUnsignedInteger:length];
}

+ (id)computeSha1WithFile:(id)file error:(id *)error
{
  fileCopy = file;
  v11 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fileCopy path];
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v11];

  if (v8 && (v11 & 1) == 0)
  {
    v9 = [TSUHasher computeSha1WithFileOrDirectory:fileCopy error:error];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)computeSha1WithFileOrDirectory:(id)directory error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [directoryCopy path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA1_Init(&c);
    v15 = 0;
    v9 = [TSUHasher addFileToSha1HashWithFileHandle:directoryCopy hashContext:&c error:&v15];
    v10 = v15;
    v11 = v10;
    if (!v9 || v10)
    {
      if (error)
      {
        v13 = v10;
        v12 = 0;
        *error = v11;
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

+ (BOOL)addFileToSha1HashWithFileHandle:(id)handle hashContext:(CC_SHA1state_st *)context error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v38 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [handleCopy path];
  [defaultManager fileExistsAtPath:path isDirectory:&v38];

  if (v38 != 1)
  {
    v32 = 0;
    v15 = [MEMORY[0x277CCA9F8] fileHandleForReadingFromURL:handleCopy error:&v32];
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

        CC_SHA1_Update(context, [v25 bytes], objc_msgSend(v25, "length"));
      }

      if (error)
      {
        v28 = v26;
        *error = v27;
      }
    }

    else if (error)
    {
      v29 = v24;
      v11 = 0;
      *error = v12;
      goto LABEL_30;
    }

    v11 = 0;
    goto LABEL_30;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 1;
  v12 = [defaultManager2 enumeratorAtURL:handleCopy includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:1 errorHandler:0];

  allObjects = [v12 allObjects];
  v14 = [allObjects sortedArrayUsingComparator:&unk_28862B2D0];

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
        v21 = [TSUHasher addFileToSha1HashWithFileHandle:v20 hashContext:context error:&v33];
        v22 = v33;
        if (!v21 || v22 != 0)
        {
          if (error)
          {
            v22 = v22;
            *error = v22;
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