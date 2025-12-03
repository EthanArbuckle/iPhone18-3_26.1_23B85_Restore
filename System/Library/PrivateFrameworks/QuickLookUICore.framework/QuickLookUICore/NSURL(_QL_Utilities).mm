@interface NSURL(_QL_Utilities)
+ (id)_QLCreateTemporaryDirectory:()_QL_Utilities;
+ (id)_QLCreateTemporaryDirectoryForOriginalFileAtURL:()_QL_Utilities error:;
+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities filename:;
+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities uuid:;
+ (void)_QLTemporaryFileURLWithType:()_QL_Utilities forOriginalFileAtURL:temporaryFileURL:temporaryDirectoryURL:fallbackUUID:;
- (id)_QLSingleFileSizeForURL:()_QL_Utilities;
- (id)_QLUrlFileSize;
- (uint64_t)_QLDownloadingStatusIsNotCurrent;
- (uint64_t)_QLIsHiddenFile;
- (uint64_t)_QLIsPackageURL;
@end

@implementation NSURL(_QL_Utilities)

- (uint64_t)_QLIsPackageURL
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = *MEMORY[0x277CBE890];
  v11 = 0;
  v3 = [self getResourceValue:&v12 forKey:v2 error:&v11];
  v4 = v12;
  v5 = v11;
  if ((v3 & 1) == 0)
  {
    v6 = MEMORY[0x277D43EF8];
    v7 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_261653000, v7, OS_LOG_TYPE_ERROR, "Failed to determine if url is package: %@ (%@) #Generic", buf, 0x16u);
    }
  }

  bOOLValue = [v4 BOOLValue];

  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (uint64_t)_QLDownloadingStatusIsNotCurrent
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = *MEMORY[0x277CBE948];
  v11 = 0;
  v3 = [self getPromisedItemResourceValue:&v12 forKey:v2 error:&v11];
  v4 = v12;
  v5 = v11;
  if ((v3 & 1) == 0)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Failed to get download status for url:%@ error:%@ #Generic", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (!v4 || [v4 isEqualToString:*MEMORY[0x277CBE938]])
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (uint64_t)_QLIsHiddenFile
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0;
  v2 = *MEMORY[0x277CBE888];
  v11 = 0;
  v3 = [self getPromisedItemResourceValue:&v12 forKey:v2 error:&v11];
  v4 = v12;
  v5 = v11;
  if (v3)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = self;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Failed to determine if file is hidden for url: %@ error: %@ #Generic", buf, 0x16u);
    }

    bOOLValue = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (id)_QLSingleFileSizeForURL:()_QL_Utilities
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v4 = *MEMORY[0x277CBE838];
  v12 = 0;
  v5 = [v3 getPromisedItemResourceValue:&v13 forKey:v4 error:&v12];
  v6 = v13;
  v7 = v12;
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x277D43EF8];
    v9 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_ERROR, "Error getting the size of file(%@) with error (%@) #Generic", buf, 0x16u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_QLUrlFileSize
{
  selfCopy = self;
  v47 = *MEMORY[0x277D85DE8];
  if ([self _QLDownloadingStatusIsNotCurrent])
  {
    goto LABEL_15;
  }

  v41 = 0;
  v2 = *MEMORY[0x277CBE868];
  v40 = 0;
  v3 = [selfCopy getResourceValue:&v41 forKey:v2 error:&v40];
  v4 = v41;
  v5 = v40;
  if ((v3 & 1) == 0)
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = selfCopy;
      v45 = 2112;
      v46 = v5;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Failed to determine if the URL (%@) is a directory error: %@ #Generic", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (![v4 BOOLValue])
  {
LABEL_14:

LABEL_15:
    v12 = [selfCopy _QLSingleFileSizeForURL:{selfCopy, v29, v30, v31, v32, v33}];
    goto LABEL_16;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [selfCopy path];
  v39 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v39];
  v9 = v39;

  if (v9)
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v44 = selfCopy;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Failed to get the contents of folder at URL (%@) with error: %@ #Generic", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v29 = 0;
    v30 = v8;
    v31 = defaultManager;
    v32 = v5;
    v33 = v4;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v8;
    v17 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v36;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v36 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v35 + 1) + 8 * i);
          v23 = MEMORY[0x277CBEBC0];
          path2 = [selfCopy path];
          v25 = [path2 stringByAppendingPathComponent:v22];
          v26 = [v23 fileURLWithPath:v25];
          [v26 _QLUrlFileSize];
          v28 = v27 = selfCopy;
          v19 += [v28 unsignedLongLongValue];

          selfCopy = v27;
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
    }

    v12 = [MEMORY[0x277CCABB0] numberWithLong:v19];
    v5 = v32;
    v4 = v33;
    v8 = v30;
    defaultManager = v31;
    v9 = v29;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_QLCreateTemporaryDirectory:()_QL_Utilities
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEBC0];
  v5 = NSTemporaryDirectory();
  v6 = [v4 fileURLWithPath:v5];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v6 URLByAppendingPathComponent:uUIDString isDirectory:1];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  LOBYTE(uUID) = [defaultManager createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
  v11 = v18;

  if (uUID)
  {
    v12 = v9;
  }

  else
  {
    v13 = MEMORY[0x277D43EF8];
    v14 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_261653000, v14, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
    }

    if (a3)
    {
      v15 = v11;
      v12 = 0;
      *a3 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities filename:
{
  v5 = a4;
  preferredFilenameExtension = [a3 preferredFilenameExtension];
  stringByDeletingPathExtension = [v5 stringByDeletingPathExtension];

  v8 = MEMORY[0x277CBEBC0];
  v9 = NSTemporaryDirectory();
  v10 = [v8 fileURLWithPath:v9];
  v11 = [v10 URLByAppendingPathComponent:stringByDeletingPathExtension];
  v12 = [v11 URLByAppendingPathExtension:preferredFilenameExtension];

  return v12;
}

+ (id)_QLTemporaryFileURLWithType:()_QL_Utilities uuid:
{
  v5 = MEMORY[0x277CBEBC0];
  v6 = a3;
  uUIDString = [a4 UUIDString];
  v8 = [v5 _QLTemporaryFileURLWithType:v6 filename:uUIDString];

  return v8;
}

+ (void)_QLTemporaryFileURLWithType:()_QL_Utilities forOriginalFileAtURL:temporaryFileURL:temporaryDirectoryURL:fallbackUUID:
{
  v30 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  preferredFilenameExtension = [v11 preferredFilenameExtension];
  v15 = *a6;
  if (*a6)
  {
    goto LABEL_9;
  }

  v16 = MEMORY[0x277D43EF8];
  v17 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v17 = *v16;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v17, OS_LOG_TYPE_INFO, "No temporary directory passed from host #Generic", buf, 2u);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  lastPathComponent = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:&v25];
  uRLByDeletingPathExtension = v25;

  if (lastPathComponent && !uRLByDeletingPathExtension)
  {
    v21 = lastPathComponent;
    *a6 = lastPathComponent;

    v15 = *a6;
LABEL_9:
    uRLByDeletingPathExtension = [v12 URLByDeletingPathExtension];
    lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];
    v22 = [v15 URLByAppendingPathComponent:lastPathComponent];
    *a5 = [v22 URLByAppendingPathExtension:preferredFilenameExtension];

    goto LABEL_10;
  }

  v24 = *v16;
  if (!*v16)
  {
    QLSInitLogging();
    v24 = *v16;
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v27 = v12;
    v28 = 2112;
    v29 = uRLByDeletingPathExtension;
    _os_log_impl(&dword_261653000, v24, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
  }

  if (a5)
  {
    *a5 = [MEMORY[0x277CBEBC0] _QLTemporaryFileURLWithType:v11 uuid:v13];
  }

LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
}

+ (id)_QLCreateTemporaryDirectoryForOriginalFileAtURL:()_QL_Utilities error:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v7 = [defaultManager URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v16];
  v8 = v16;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v12 = v7;
  }

  else
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v5;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory URL for URL: %@. Error: %@ #Generic", buf, 0x16u);
    }

    v12 = [MEMORY[0x277CBEBC0] _QLCreateTemporaryDirectory:a4];
  }

  v13 = v12;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end