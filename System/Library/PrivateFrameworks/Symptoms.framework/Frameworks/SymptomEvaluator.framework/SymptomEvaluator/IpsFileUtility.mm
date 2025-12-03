@interface IpsFileUtility
+ (id)_createDataForCrashReporterIpsHeaderWithBugType:(id)type contentType:(id)contentType date:(id)date additionalFields:(id)fields;
+ (id)_createIpsFileNameWithPrefix:(id)prefix date:(id)date inDirectory:(id)directory;
+ (id)formattedDateForFilename:(id)filename;
- (BOOL)_checkDirectoryAndCreateIfNecessary:(id)necessary;
- (BOOL)_writeIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsData:(id)data inDirectory:(id)directory fileNamePrefix:(id)prefix;
- (BOOL)createIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsContent:(id)content inDirectory:(id)directory fileNamePrefix:(id)prefix;
- (BOOL)createIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsData:(id)data inDirectory:(id)directory fileNamePrefix:(id)prefix;
- (void)dealloc;
@end

@implementation IpsFileUtility

- (void)dealloc
{
  if (gCrashReporterSupportDyLibHandle)
  {
    dlclose(gCrashReporterSupportDyLibHandle);
    gCrashReporterSupportDyLibHandle = 0;
  }

  v3.receiver = self;
  v3.super_class = IpsFileUtility;
  [(IpsFileUtility *)&v3 dealloc];
}

- (BOOL)createIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsContent:(id)content inDirectory:(id)directory fileNamePrefix:(id)prefix
{
  typeCopy = type;
  contentTypeCopy = contentType;
  headersCopy = headers;
  contentCopy = content;
  directoryCopy = directory;
  prefixCopy = prefix;
  v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:contentCopy];
  if (v20)
  {
    v21 = [(IpsFileUtility *)self createIpsFileWithBugType:typeCopy contentType:contentTypeCopy additionalIpsHeaders:headersCopy ipsData:v20 inDirectory:directoryCopy fileNamePrefix:prefixCopy];
  }

  else
  {
    v22 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_INFO, "data object is nil", v24, 2u);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)_writeIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsData:(id)data inDirectory:(id)directory fileNamePrefix:(id)prefix
{
  v53 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  contentTypeCopy = contentType;
  headersCopy = headers;
  dataCopy = data;
  directoryCopy = directory;
  prefixCopy = prefix;
  if ([(IpsFileUtility *)self _checkDirectoryAndCreateIfNecessary:directoryCopy])
  {
    v48 = dataCopy;
    context = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEAA8] date];
    v21 = v20 = typeCopy;
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [IpsFileUtility _createIpsFileNameWithPrefix:prefixCopy date:v21 inDirectory:directoryCopy];
    v47 = v20;
    v24 = [IpsFileUtility _createDataForCrashReporterIpsHeaderWithBugType:v20 contentType:contentTypeCopy date:v21 additionalFields:headersCopy];
    if (v24)
    {
      v25 = defaultManager;
      if ([defaultManager createFileAtPath:v23 contents:v24 attributes:0])
      {
        uUID = [MEMORY[0x277CCAD78] UUID];
        uUIDString = [uUID UUIDString];

        v44 = uUIDString;
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.tmp", directoryCopy, uUIDString];
        v45 = v28;
        if ([v48 writeToFile:v28 atomically:1])
        {
          v43 = v25;
          v29 = fopen([(FILE *)v23 cStringUsingEncoding:4], "a");
          v30 = fopen([(FILE *)v28 cStringUsingEncoding:4], "r");
          v31 = v30;
          if (v29)
          {
            v32 = v30 == 0;
          }

          else
          {
            v32 = 1;
          }

          v33 = !v32;
          if (v32)
          {
            log = otherLogHandle;
            if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 134218240;
              v50 = v29;
              v51 = 2048;
              v52 = v31;
              _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_INFO, "ipsFileFD is %p, tempFileFD is %p", buf, 0x16u);
            }

            if (v29)
            {
              fclose(v29);
              v39 = otherLogHandle;
              if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v50 = v23;
                _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_INFO, "Removing the incomplete IPS file: %@", buf, 0xCu);
              }

              [v43 removeItemAtPath:v23 error:0];
            }
          }

          else
          {
            while (1)
            {
              v34 = getc(v31);
              if (v34 == -1)
              {
                break;
              }

              putc(v34, v29);
            }

            fclose(v29);
          }

          if (v31)
          {
            fclose(v31);
          }

          v25 = v43;
        }

        else
        {
          v38 = otherLogHandle;
          if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v50 = v23;
            _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_INFO, "Temporary file creation failed, removing the incomplete IPS file: %@", buf, 0xCu);
          }

          [v25 removeItemAtPath:v23 error:0];
          v33 = 0;
        }

        v23 = v45;
        if (!v45)
        {
          goto LABEL_39;
        }

        [v25 removeItemAtPath:v45 error:0];
LABEL_38:

LABEL_39:
        objc_autoreleasePoolPop(context);
        typeCopy = v47;
        dataCopy = v48;
        goto LABEL_40;
      }

      v36 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v37 = "IPS file creation failed";
        goto LABEL_21;
      }
    }

    else
    {
      v36 = otherLogHandle;
      v25 = defaultManager;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v37 = "IPS header data is nil";
LABEL_21:
        _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_INFO, v37, buf, 2u);
      }
    }

    v33 = 0;
    goto LABEL_38;
  }

  v35 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v50 = directoryCopy;
    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_INFO, "Directory %@ does not exist and failed to create one", buf, 0xCu);
  }

  v33 = 0;
LABEL_40:

  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)createIpsFileWithBugType:(id)type contentType:(id)contentType additionalIpsHeaders:(id)headers ipsData:(id)data inDirectory:(id)directory fileNamePrefix:(id)prefix
{
  typeCopy = type;
  contentTypeCopy = contentType;
  headersCopy = headers;
  dataCopy = data;
  directoryCopy = directory;
  prefixCopy = prefix;
  if (_loadCrashReporterSupport_symbolLoadOnce != -1)
  {
    _loadCrashReporterSupport_cold_1();
  }

  if (_loadCrashReporterSupport_symbolsLoaded == 1)
  {
    if (gOSAInMultiUserModeFunc())
    {
      v20 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_INFO, "In multi-user mode, calling OSAWriteLogForSubmission.", buf, 2u);
      }

      v21 = gOSAWriteLogForSubmissionFunc;
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __111__IpsFileUtility_createIpsFileWithBugType_contentType_additionalIpsHeaders_ipsData_inDirectory_fileNamePrefix___block_invoke;
      v24[3] = &unk_27898BA60;
      v25 = dataCopy;
      (v21)(typeCopy, prefixCopy, 0, 0, v24);

      v22 = 1;
    }

    else
    {
      v22 = [(IpsFileUtility *)self _writeIpsFileWithBugType:typeCopy contentType:contentTypeCopy additionalIpsHeaders:headersCopy ipsData:dataCopy inDirectory:directoryCopy fileNamePrefix:prefixCopy];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_checkDirectoryAndCreateIfNecessary:(id)necessary
{
  v13 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  if ([defaultManager fileExistsAtPath:necessaryCopy isDirectory:&v10])
  {
    if (v10)
    {
      v5 = 1;
    }

    else
    {
      v7 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v12 = necessaryCopy;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_INFO, "There is a file at %@", buf, 0xCu);
      }

      v5 = 0;
    }
  }

  else
  {
    v6 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = necessaryCopy;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Directory %@ does not exist, creating one.", buf, 0xCu);
    }

    v5 = [defaultManager createDirectoryAtPath:necessaryCopy withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_createDataForCrashReporterIpsHeaderWithBugType:(id)type contentType:(id)contentType date:(id)date additionalFields:(id)fields
{
  v37 = *MEMORY[0x277D85DE8];
  fieldsCopy = fields;
  dateCopy = date;
  contentTypeCopy = contentType;
  typeCopy = type;
  v13 = +[SystemProperties sharedInstance];
  v14 = MEMORY[0x277CCACA8];
  productName = [v13 productName];
  productVersion = [v13 productVersion];
  buildVersion = [v13 buildVersion];
  v18 = [v14 stringWithFormat:@"%@ %@ (%@)", productName, productVersion, buildVersion];

  v19 = MEMORY[0x277CBEB38];
  buildVariant = [v13 buildVariant];
  [dateCopy timeIntervalSince1970];
  v22 = v21;

  v23 = formattedDateStringForTimeInterval(v22);
  v24 = [v19 dictionaryWithObjectsAndKeys:{typeCopy, @"bug_type", v18, @"os_version", buildVariant, @"os_variant", v23, @"timestamp", contentTypeCopy, @"content-type", 0}];

  [v24 addEntriesFromDictionary:fieldsCopy];
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v24])
  {
    v25 = objc_alloc(MEMORY[0x277CBEB28]);
    v34 = 0;
    v26 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v24 options:0 error:&v34];
    v27 = v34;
    v28 = [v25 initWithData:v26];

    if (v28)
    {
      buf[0] = 10;
      [v28 appendBytes:buf length:1];
      v29 = v28;
      goto LABEL_8;
    }

    if (v27)
    {
      v33 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v27;
        _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_INFO, "serialization of ips header failed with error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v30 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v24;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "contents of ips header dictionary is not JSON compliant: %@", buf, 0xCu);
    }

    v27 = 0;
  }

  v29 = 0;
LABEL_8:

  v31 = *MEMORY[0x277D85DE8];

  return v29;
}

+ (id)_createIpsFileNameWithPrefix:(id)prefix date:(id)date inDirectory:(id)directory
{
  v7 = MEMORY[0x277CCACA8];
  directoryCopy = directory;
  dateCopy = date;
  prefixCopy = prefix;
  v11 = [v7 alloc];
  v12 = [IpsFileUtility formattedDateForFilename:dateCopy];

  v13 = [v11 initWithFormat:@"%@/%@_%@.ips", directoryCopy, prefixCopy, v12];

  return v13;
}

+ (id)formattedDateForFilename:(id)filename
{
  v3 = MEMORY[0x277CCA968];
  filenameCopy = filename;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v6 = [v5 stringFromDate:filenameCopy];

  return v6;
}

- (void)createIpsFileWithBugType:(void *)a1 contentType:additionalIpsHeaders:ipsContent:inDirectory:fileNamePrefix:.cold.1(void *a1)
{
  objc_begin_catch(a1);
  v1 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_23255B000, v1, OS_LOG_TYPE_INFO, "Failed to convert the given object to data", v2, 2u);
  }

  objc_end_catch();
}

@end