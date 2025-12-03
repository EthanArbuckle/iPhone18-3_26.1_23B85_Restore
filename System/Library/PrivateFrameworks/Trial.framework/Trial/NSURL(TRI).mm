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
  scheme = [self scheme];
  if (scheme)
  {
    scheme2 = [self scheme];
    v4 = [scheme2 isEqualToString:@"container"];
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
  scheme = [v6 scheme];

  if (!scheme)
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
  if ([self isFileURL])
  {
    relativePath = [self relativePath];
    v5 = relativePath;
    v6 = &stru_28435FC98;
    if (relativePath)
    {
      v6 = relativePath;
    }

    absoluteString = v6;

    if (([(__CFString *)absoluteString isAbsolutePath]& 1) == 0)
    {
      baseURL = [self baseURL];
      if (baseURL)
      {
        v9 = baseURL;
        baseURL2 = [self baseURL];
        if ([baseURL2 isFileURL])
        {
          baseURL3 = [self baseURL];
          relativePath2 = [baseURL3 relativePath];
          v13 = [relativePath2 isEqualToString:@"/"];

          if (v13)
          {
            goto LABEL_11;
          }
        }

        else
        {
        }

        v17 = MEMORY[0x277CCACA8];
        baseURL4 = [self baseURL];
        triSaveURLToString = [baseURL4 triSaveURLToString];
        v23[0] = triSaveURLToString;
        v23[1] = absoluteString;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v21 = [v17 pathWithComponents:v20];

        absoluteString = v21;
      }
    }
  }

  else
  {
    absoluteString = [self absoluteString];
    if (!absoluteString)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSURL+TRI.m" lineNumber:43 description:{@"Failed to compute absolute string for URL: %@", self}];

      absoluteString = 0;
    }
  }

LABEL_11:
  if ([(__CFString *)absoluteString hasPrefix:@"./"])
  {
    v14 = [(__CFString *)absoluteString substringFromIndex:2];

    absoluteString = v14;
  }

  v15 = *MEMORY[0x277D85DE8];

  return absoluteString;
}

- (uint64_t)triIsEqual:()TRI
{
  v4 = a3;
  if ([self isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      triSaveURLToString = [self triSaveURLToString];
      triSaveURLToString2 = [v6 triSaveURLToString];
      v5 = [triSaveURLToString isEqualToString:triSaveURLToString2];
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
  relativePath = [self relativePath];
  if (([self triIsContainerURL] & 1) == 0)
  {
    goto LABEL_11;
  }

  host = [self host];
  if (!host)
  {
    goto LABEL_11;
  }

  v7 = host;
  port = [self port];

  if (!port)
  {
    goto LABEL_11;
  }

  port2 = [self port];
  integerValue = [port2 integerValue];

  if (integerValue)
  {
    host2 = [self host];
    v12 = [TRIAppContainer containerWithIdentifier:host2 type:integerValue];

    if ([relativePath length] >= 2 && objc_msgSend(relativePath, "isAbsolutePath"))
    {
      v13 = [relativePath substringFromIndex:1];

      relativePath = v13;
    }

    if (relativePath)
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
      path = [v17 path];

      if (path)
      {
        v19 = MEMORY[0x277CCACA8];
        path2 = [v17 path];
        v24[0] = path2;
        v24[1] = relativePath;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
        v22 = [v19 pathWithComponents:v21];

        relativePath = v22;
        v14 = relativePath;
      }

      else
      {
        v23 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
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
    relativePath = relativePath;
    v14 = relativePath;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)triContainerURLWithPath:()TRI containerId:containerType:
{
  v7 = a4;
  v8 = a3;
  isAbsolutePath = [v8 isAbsolutePath];
  if (a5 && v7 && !isAbsolutePath)
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
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  uRLByResolvingSymlinksInPath = [self URLByResolvingSymlinksInPath];
  v6 = uRLByResolvingSymlinksInPath;
  if (!uRLByResolvingSymlinksInPath)
  {
    v20 = 0;
    goto LABEL_14;
  }

  pathComponents = [uRLByResolvingSymlinksInPath pathComponents];
  firstObject = [pathComponents firstObject];
  if ([firstObject isEqualToString:@"/"])
  {
    v9 = [pathComponents count];

    if (v9 >= 2)
    {
      v10 = [pathComponents subarrayWithRange:{2, objc_msgSend(pathComponents, "count") - 2}];
      v11 = MEMORY[0x277CBEBC0];
      v12 = [pathComponents objectAtIndexedSubscript:0];
      v25[0] = v12;
      v13 = [pathComponents objectAtIndexedSubscript:1];
      v25[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
      v15 = [v11 fileURLWithPathComponents:v14];

      path = [v15 path];
      if (!path)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"NSURL+TRI.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"level1Path"}];
      }

      v24 = 0;
      v17 = [defaultManager destinationOfSymbolicLinkAtPath:path error:&v24];
      if (v17)
      {
        v18 = [&unk_28436FB58 mutableCopy];
        pathComponents2 = [v17 pathComponents];
        [v18 addObjectsFromArray:pathComponents2];

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