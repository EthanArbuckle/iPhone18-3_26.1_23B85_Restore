@interface PHPhotoLibrary(PGApplicationData)
- (id)pg_urlForGraphApplicationData;
@end

@implementation PHPhotoLibrary(PGApplicationData)

- (id)pg_urlForGraphApplicationData
{
  v22 = *MEMORY[0x277D85DE8];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  processName = [processInfo processName];

  if (([processName isEqualToString:@"photoanalysisd"] & 1) == 0 && (objc_msgSend(processName, "isEqualToString:", @"LifeCipher") & 1) == 0 && !objc_msgSend(processName, "isEqualToString:", @"graphctl"))
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v18 = 0;
    loggingConnection = [v5 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v18];
    v8 = v18;
    if (v8)
    {
      v9 = v8;
      v4 = 0;
LABEL_10:
      v10 = MEMORY[0x277CBEBC0];
      v11 = NSTemporaryDirectory();
      v12 = [v10 fileURLWithPath:v11];

      v4 = v12;
      goto LABEL_11;
    }

    v4 = [loggingConnection URLByAppendingPathComponent:processName];
    buf[0] = 0;
    path = [v4 path];
    v16 = [v5 fileExistsAtPath:path isDirectory:buf];

    if (v16)
    {
      if ((buf[0] & 1) == 0)
      {

        v4 = 0;
        v9 = 0;
        goto LABEL_10;
      }

      v9 = 0;
    }

    else
    {
      v17 = 0;
      [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:&v17];
      v9 = v17;
    }

    if (v4 && !v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v19 = 0;
  v4 = [self urlForApplicationDataFolderIdentifier:1 error:&v19];
  v5 = v19;
  if (v4)
  {
    goto LABEL_12;
  }

  v6 = +[PGLogging sharedLogging];
  loggingConnection = [v6 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v5;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Failed to access graph service URL. Error: %@", buf, 0xCu);
  }

  v4 = 0;
LABEL_11:

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end