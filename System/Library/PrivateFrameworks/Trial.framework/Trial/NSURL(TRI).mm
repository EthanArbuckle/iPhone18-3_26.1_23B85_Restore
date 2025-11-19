@interface NSURL(TRI)
+ (id)triContainerURLWithPath:()TRI containerId:containerType:;
+ (id)triParseURLFromString:()TRI isDirectory:;
- (__CFString)triSaveURLToString;
- (id)triPathAsOwner:()TRI;
- (id)triURLByResolvingSymlinksInPathIncludingPrivate;
- (uint64_t)triIsContainerURL;
- (uint64_t)triIsEqual:()TRI;
@end

@implementation NSURL(TRI)

- (uint64_t)triIsContainerURL
{
  v2 = [a1 scheme];
  if (v2)
  {
    v3 = [a1 scheme];
    v4 = [v3 isEqualToString:@"container"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)triParseURLFromString:()TRI isDirectory:
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  v7 = [v6 scheme];

  if (!v7)
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CBEBC0] URLWithString:@"file:///"];
    v10 = [v8 fileURLWithPath:v5 isDirectory:a4 relativeToURL:v9];

    v6 = v10;
  }

  return v6;
}

- (__CFString)triSaveURLToString
{
  v23[2] = *MEMORY[0x277D85DE8];
  if ([a1 isFileURL])
  {
    v4 = [a1 relativePath];
    v5 = v4;
    v6 = &stru_28435FC98;
    if (v4)
    {
      v6 = v4;
    }

    v7 = v6;

    if (([(__CFString *)v7 isAbsolutePath]& 1) == 0)
    {
      v8 = [a1 baseURL];
      if (v8)
      {
        v9 = v8;
        v10 = [a1 baseURL];
        if ([v10 isFileURL])
        {
          v11 = [a1 baseURL];
          v12 = [v11 relativePath];
          v13 = [v12 isEqualToString:@"/"];

          if (v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v17 = MEMORY[0x277CCACA8];
        v18 = [a1 baseURL];
        v19 = [v18 triSaveURLToString];
        v23[0] = v19;
        v23[1] = v7;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v21 = [v17 pathWithComponents:v20];

        v7 = v21;
      }
    }
  }

  else
  {
    v7 = [a1 absoluteString];
    if (!v7)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a2 object:a1 file:@"NSURL+TRI.m" lineNumber:43 description:{@"Failed to compute absolute string for URL: %@", a1}];

      v7 = 0;
    }
  }

LABEL_11:
  if ([(__CFString *)v7 hasPrefix:@"./"])
  {
    v14 = [(__CFString *)v7 substringFromIndex:2];

    v7 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (uint64_t)triIsEqual:()TRI
{
  v4 = a3;
  if ([a1 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [a1 triSaveURLToString];
      v8 = [v6 triSaveURLToString];
      v5 = [v7 isEqualToString:v8];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)triPathAsOwner:()TRI
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [a1 relativePath];
  if (([a1 triIsContainerURL] & 1) == 0)
  {
    goto LABEL_11;
  }

  v6 = [a1 host];
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [a1 port];

  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = [a1 port];
  v10 = [v9 integerValue];

  if (v10)
  {
    v11 = [a1 host];
    v12 = [TRIAppContainer containerWithIdentifier:v11 type:v10];

    if ([v5 length] >= 2 && objc_msgSend(v5, "isAbsolutePath"))
    {
      v13 = [v5 substringFromIndex:1];

      v5 = v13;
    }

    if (v5)
    {
      if (a3)
      {
        [v12 containerURLAsOwner];
      }

      else
      {
        [v12 containerURL];
      }
      v17 = ;
      v18 = [v17 path];

      if (v18)
      {
        v19 = MEMORY[0x277CCACA8];
        v20 = [v17 path];
        v24[0] = v20;
        v24[1] = v5;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v22 = [v19 pathWithComponents:v21];

        v5 = v22;
        v14 = v5;
      }

      else
      {
        v23 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = a1;
          _os_log_error_impl(&dword_22EA6B000, v23, OS_LOG_TYPE_ERROR, "triPathAsOwner: unable to resolve containerDir for URL: %@", buf, 0xCu);
        }

        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
LABEL_11:
    v5 = v5;
    v14 = v5;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)triContainerURLWithPath:()TRI containerId:containerType:
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 isAbsolutePath];
  if (a5 && v7 && !v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://%@:%d/%@", @"container", v7, a5, v8];

    v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
    v8 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8];
  }

  return v11;
}

- (id)triURLByResolvingSymlinksInPathIncludingPrivate
{
  v25[2] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [a1 URLByResolvingSymlinksInPath];
  v6 = v5;
  if (!v5)
  {
    v20 = 0;
    goto LABEL_14;
  }

  v7 = [v5 pathComponents];
  v8 = [v7 firstObject];
  if ([v8 isEqualToString:@"/"])
  {
    v9 = [v7 count];

    if (v9 >= 2)
    {
      v10 = [v7 subarrayWithRange:{2, objc_msgSend(v7, "count") - 2}];
      v11 = MEMORY[0x277CBEBC0];
      v12 = [v7 objectAtIndexedSubscript:0];
      v25[0] = v12;
      v13 = [v7 objectAtIndexedSubscript:1];
      v25[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v15 = [v11 fileURLWithPathComponents:v14];

      v16 = [v15 path];
      if (!v16)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:a2 object:a1 file:@"NSURL+TRI.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"level1Path"}];
      }

      v24 = 0;
      v17 = [v4 destinationOfSymbolicLinkAtPath:v16 error:&v24];
      if (v17)
      {
        v18 = [&unk_28436FB58 mutableCopy];
        v19 = [v17 pathComponents];
        [v18 addObjectsFromArray:v19];

        [v18 addObjectsFromArray:v10];
        v20 = [MEMORY[0x277CBEBC0] fileURLWithPathComponents:v18];
      }

      else
      {
        v20 = v6;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v20 = v6;
LABEL_13:

LABEL_14:
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

@end