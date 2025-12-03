@interface NSString(TRI)
+ (id)triHashStrings:()TRI withDataSalt:;
+ (uint64_t)triNullableStringsAreEqualWithString:()TRI andOther:;
- (id)triFilenameForFactorName;
- (id)triHashWithDataSalt:()TRI;
- (id)triHashWithIntegerSalt:()TRI;
- (id)triParseJson;
- (id)triSanitizedPathComponentWithMaxLength:()TRI addHash:error:;
- (id)triStringByResolvingSymlinksInPath;
- (id)triTrim;
- (uint64_t)triIsPathSafe;
- (uint64_t)triIsPathSafePlausibleUniqueId;
- (uint64_t)triJavaHash;
@end

@implementation NSString(TRI)

- (uint64_t)triIsPathSafePlausibleUniqueId
{
  result = [self triIsPathSafe];
  if (result)
  {
    return [self length] > 5;
  }

  return result;
}

- (uint64_t)triIsPathSafe
{
  result = [self length];
  if (result)
  {
    return ([self containsString:@"/"] & 1) == 0 && (objc_msgSend(self, "containsString:", &stru_2843623F8) & 1) == 0 && objc_msgSend(self, "UTF8String") != 0;
  }

  return result;
}

- (id)triStringByResolvingSymlinksInPath
{
  v11[3] = *MEMORY[0x277D85DE8];
  stringByResolvingSymlinksInPath = [self stringByResolvingSymlinksInPath];
  if ([stringByResolvingSymlinksInPath hasPrefix:@"/var/"])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = 0;
    v3 = [defaultManager destinationOfSymbolicLinkAtPath:@"/var" error:&v10];
    v4 = v10;

    if (v3)
    {
      v5 = [stringByResolvingSymlinksInPath substringFromIndex:{objc_msgSend(@"/var/", "length")}];

      v6 = MEMORY[0x277CCACA8];
      v11[0] = @"/";
      v11[1] = v3;
      v11[2] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
      stringByResolvingSymlinksInPath = [v6 pathWithComponents:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];

  return stringByResolvingSymlinksInPath;
}

- (id)triFilenameForFactorName
{
  v7 = 0;
  v4 = [self triSanitizedPathComponentWithMaxLength:50 addHash:1 error:&v7];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSString+TRI.m" lineNumber:136 description:{@"Failed to sanitize factor name %@: %@", self, v7}];
  }

  return v4;
}

- (id)triTrim
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v3;
}

- (uint64_t)triJavaHash
{
  if (![self length])
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v3 = [self characterAtIndex:v2++] - v3 + 32 * v3;
  }

  while (v2 < [self length]);
  return v3;
}

- (id)triHashWithIntegerSalt:()TRI
{
  v7 = a3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v7 length:8];
  v5 = [self triHashWithDataSalt:v4];

  return v5;
}

- (id)triHashWithDataSalt:()TRI
{
  v4 = a3;
  v5 = [self dataUsingEncoding:4];
  v6 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v5, "length") + objc_msgSend(v4, "length")}];
  [v6 appendData:v4];

  [v6 appendData:v5];
  v7 = [MEMORY[0x277CBEB28] dataWithLength:32];
  CC_SHA256([v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v7, "mutableBytes"));
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:{objc_msgSend(v7, "bytes")}];

  return v8;
}

+ (id)triHashStrings:()TRI withDataSalt:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSString+TRI.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"strings"}];
  }

  v9 = objc_autoreleasePoolPush();
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  if (v8)
  {
    CC_SHA256_Update(&c, [v8 bytes], objc_msgSend(v8, "length"));
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        v17 = [v15 dataUsingEncoding:4];
        v18 = v17;
        if (v17)
        {
          CC_SHA256_Update(&c, [v17 bytes], objc_msgSend(v17, "length"));
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v12);
  }

  v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:32];
  if (![v19 mutableBytes])
  {
    v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v23);
  }

  CC_SHA256_Final([v19 mutableBytes], &c);
  objc_autoreleasePoolPop(v9);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)triSanitizedPathComponentWithMaxLength:()TRI addHash:error:
{
  v45[1] = *MEMORY[0x277D85DE8];
  v10 = objc_autoreleasePoolPush();
  v11 = [self dataUsingEncoding:1 allowLossyConversion:1];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:1];
    if (v12)
    {
      v13 = v12;
      if (qword_280ACADE8 != -1)
      {
        dispatch_once(&qword_280ACADE8, &__block_literal_global_9);
      }

      v14 = [v13 componentsSeparatedByCharactersInSet:_MergedGlobals_8];
      0xFFFFFFF = [v14 componentsJoinedByString:&stru_28435FC98];

      if (!a4 || [self isEqualToString:0xFFFFFFF])
      {
        if (!a3)
        {
LABEL_32:
          v25 = 0xFFFFFFF;

          v28 = v25;
          goto LABEL_33;
        }

        if ([0xFFFFFFF length] > a3)
        {
          if (a4)
          {
            goto LABEL_10;
          }

          v41 = a2;
          v29 = MEMORY[0x277CCACA8];
          v30 = [0xFFFFFFF substringToIndex:a3 - 1];
          v31 = [v29 stringWithFormat:@"%@#", v30];

          0xFFFFFFF = v31;
          a2 = v41;
        }

LABEL_26:
        v32 = [0xFFFFFFF length];
        v33 = 8;
        if (!a4)
        {
          v33 = 0;
        }

        if (v33 <= a3)
        {
          v33 = a3;
        }

        if (v32 > v33)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          v37 = a2;
          v38 = currentHandler;
          [currentHandler handleFailureInMethod:v37 object:self file:@"NSString+TRI.m" lineNumber:125 description:@"sanitized string is longer than expected"];
        }

        goto LABEL_32;
      }

LABEL_10:
      v40 = a2;
      triJavaHash = [self triJavaHash];
      v16 = 0xFFFFFFF;
      v17 = v16;
      v18 = v16;
      if (a3)
      {
        if (a3 < 8)
        {
          v18 = &stru_28435FC98;
        }

        else
        {
          v19 = [(__CFString *)v16 length];
          if (v19 >= a3 - 8)
          {
            v20 = a3 - 8;
          }

          else
          {
            v20 = v19;
          }

          v18 = [(__CFString *)v17 substringToIndex:v20];
        }
      }

      0xFFFFFFF = [MEMORY[0x277CCACA8] stringWithFormat:@"%@#%07x", v18, triJavaHash & 0xFFFFFFF];

      a2 = v40;
      if (!a3)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }

    if (a5)
    {
      v21 = MEMORY[0x277CCA9B8];
      v42 = *MEMORY[0x277CCA450];
      v43 = @"could not create string from ASCII encoded data";
      v22 = MEMORY[0x277CBEAC0];
      v23 = &v43;
      v24 = &v42;
      goto LABEL_20;
    }

LABEL_21:
    v28 = 0;
    goto LABEL_34;
  }

  if (!a5)
  {
    goto LABEL_21;
  }

  v21 = MEMORY[0x277CCA9B8];
  v44 = *MEMORY[0x277CCA450];
  v45[0] = @"could not get data from string";
  v22 = MEMORY[0x277CBEAC0];
  v23 = v45;
  v24 = &v44;
LABEL_20:
  v25 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
  v26 = [v21 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v25];
  v27 = *a5;
  *a5 = v26;

  v28 = 0;
LABEL_33:

LABEL_34:
  objc_autoreleasePoolPop(v10);
  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)triParseJson
{
  v4 = [self dataUsingEncoding:4];
  if (!v4)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSString+TRI.m" lineNumber:175 description:@"String output with from trialtool was not a valid UTF-8 string"];
  }

  v10 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v10];
  v6 = v10;
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSString+TRI.m" lineNumber:181 description:{@"JSON from trialtool with --json flag was not a valid json object: %@", v6}];
  }

  return v5;
}

+ (uint64_t)triNullableStringsAreEqualWithString:()TRI andOther:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 | v6)
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

@end