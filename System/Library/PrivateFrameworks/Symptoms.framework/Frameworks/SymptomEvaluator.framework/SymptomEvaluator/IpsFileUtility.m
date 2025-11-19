@interface IpsFileUtility
+ (id)_createDataForCrashReporterIpsHeaderWithBugType:(id)a3 contentType:(id)a4 date:(id)a5 additionalFields:(id)a6;
+ (id)_createIpsFileNameWithPrefix:(id)a3 date:(id)a4 inDirectory:(id)a5;
+ (id)formattedDateForFilename:(id)a3;
- (BOOL)_checkDirectoryAndCreateIfNecessary:(id)a3;
- (BOOL)_writeIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsData:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8;
- (BOOL)createIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsContent:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8;
- (BOOL)createIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsData:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8;
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

- (BOOL)createIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsContent:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17];
  if (v20)
  {
    v21 = [(IpsFileUtility *)self createIpsFileWithBugType:v14 contentType:v15 additionalIpsHeaders:v16 ipsData:v20 inDirectory:v18 fileNamePrefix:v19];
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

- (BOOL)_writeIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsData:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8
{
  v53 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([(IpsFileUtility *)self _checkDirectoryAndCreateIfNecessary:v18])
  {
    v48 = v17;
    context = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEAA8] date];
    v21 = v20 = v14;
    v22 = [MEMORY[0x277CCAA00] defaultManager];
    v23 = [IpsFileUtility _createIpsFileNameWithPrefix:v19 date:v21 inDirectory:v18];
    v47 = v20;
    v24 = [IpsFileUtility _createDataForCrashReporterIpsHeaderWithBugType:v20 contentType:v15 date:v21 additionalFields:v16];
    if (v24)
    {
      v25 = v22;
      if ([v22 createFileAtPath:v23 contents:v24 attributes:0])
      {
        v26 = [MEMORY[0x277CCAD78] UUID];
        v27 = [v26 UUIDString];

        v44 = v27;
        v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@.tmp", v18, v27];
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
        v14 = v47;
        v17 = v48;
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
      v25 = v22;
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
    v50 = v18;
    _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_INFO, "Directory %@ does not exist and failed to create one", buf, 0xCu);
  }

  v33 = 0;
LABEL_40:

  v40 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)createIpsFileWithBugType:(id)a3 contentType:(id)a4 additionalIpsHeaders:(id)a5 ipsData:(id)a6 inDirectory:(id)a7 fileNamePrefix:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
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
      v25 = v17;
      (v21)(v14, v19, 0, 0, v24);

      v22 = 1;
    }

    else
    {
      v22 = [(IpsFileUtility *)self _writeIpsFileWithBugType:v14 contentType:v15 additionalIpsHeaders:v16 ipsData:v17 inDirectory:v18 fileNamePrefix:v19];
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)_checkDirectoryAndCreateIfNecessary:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  if ([v4 fileExistsAtPath:v3 isDirectory:&v10])
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
        v12 = v3;
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
      v12 = v3;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Directory %@ does not exist, creating one.", buf, 0xCu);
    }

    v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)_createDataForCrashReporterIpsHeaderWithBugType:(id)a3 contentType:(id)a4 date:(id)a5 additionalFields:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[SystemProperties sharedInstance];
  v14 = MEMORY[0x277CCACA8];
  v15 = [v13 productName];
  v16 = [v13 productVersion];
  v17 = [v13 buildVersion];
  v18 = [v14 stringWithFormat:@"%@ %@ (%@)", v15, v16, v17];

  v19 = MEMORY[0x277CBEB38];
  v20 = [v13 buildVariant];
  [v10 timeIntervalSince1970];
  v22 = v21;

  v23 = formattedDateStringForTimeInterval(v22);
  v24 = [v19 dictionaryWithObjectsAndKeys:{v12, @"bug_type", v18, @"os_version", v20, @"os_variant", v23, @"timestamp", v11, @"content-type", 0}];

  [v24 addEntriesFromDictionary:v9];
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

+ (id)_createIpsFileNameWithPrefix:(id)a3 date:(id)a4 inDirectory:(id)a5
{
  v7 = MEMORY[0x277CCACA8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 alloc];
  v12 = [IpsFileUtility formattedDateForFilename:v9];

  v13 = [v11 initWithFormat:@"%@/%@_%@.ips", v8, v10, v12];

  return v13;
}

+ (id)formattedDateForFilename:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
  v6 = [v5 stringFromDate:v4];

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