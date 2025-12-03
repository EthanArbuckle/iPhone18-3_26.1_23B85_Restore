@interface PBFDataStoreArchiver
+ (BOOL)archiveDataStoreAtURL:(id)l toURL:(id)rL options:(id)options error:(id *)error;
+ (id)fileManager;
- (BOOL)archiveToFileAtURL:(id)l error:(id *)error;
- (PBFDataStoreArchiver)initWithDataStoreAtURL:(id)l;
@end

@implementation PBFDataStoreArchiver

+ (id)fileManager
{
  if (fileManager_onceToken != -1)
  {
    +[PBFDataStoreArchiver fileManager];
  }

  v3 = fileManager_fileManager;

  return v3;
}

void __35__PBFDataStoreArchiver_fileManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = fileManager_fileManager;
  fileManager_fileManager = v0;
}

+ (BOOL)archiveDataStoreAtURL:(id)l toURL:(id)rL options:(id)options error:(id *)error
{
  v56[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  optionsCopy = options;
  v14 = lCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v14)
  {
    [PBFDataStoreArchiver archiveDataStoreAtURL:a2 toURL:? options:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataStoreArchiver archiveDataStoreAtURL:a2 toURL:? options:? error:?];
  }

  v15 = rLCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v15)
  {
    [PBFDataStoreArchiver archiveDataStoreAtURL:a2 toURL:? options:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFDataStoreArchiver archiveDataStoreAtURL:a2 toURL:? options:? error:?];
  }

  if ([v14 checkResourceIsReachableAndReturnError:error])
  {
    v48 = 0;
    v16 = [v14 getResourceValue:&v48 forKey:*MEMORY[0x277CBE868] error:error];
    v17 = v48;
    v18 = v17;
    if (v16 && ([v17 BOOLValue] & 1) == 0)
    {
      v32 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA748];
      v55[0] = *MEMORY[0x277CCA470];
      v55[1] = v33;
      v56[0] = @"Data Store URLs are directories.";
      v56[1] = v14;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
      [v32 pbf_generalErrorWithCode:1 userInfo:v19];
      *error = v29 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v19 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v20 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v19 setLocale:v20];

    lastPathComponent = [v14 lastPathComponent];
    v22 = [v19 numberFromString:lastPathComponent];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

    if (unsignedIntegerValue <= 0x3A)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA748];
      v53[0] = *MEMORY[0x277CCA470];
      v53[1] = v25;
      v54[0] = @"Data Store URLs are only valid from 59+";
      v54[1] = v14;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v54;
      v28 = v53;
LABEL_13:
      fileManager = [v26 dictionaryWithObjects:v27 forKeys:v28 count:2];
      [v24 pbf_generalErrorWithCode:1 userInfo:fileManager];
      *error = v29 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ([v15 checkResourceIsReachableAndReturnError:0])
    {
      v24 = MEMORY[0x277CCA9B8];
      v30 = *MEMORY[0x277CCA748];
      v51[0] = *MEMORY[0x277CCA470];
      v51[1] = v30;
      v52[0] = @"URL already exists. No going to overwrite.";
      v52[1] = v15;
      v26 = MEMORY[0x277CBEAC0];
      v27 = v52;
      v28 = v51;
      goto LABEL_13;
    }

    v45 = optionsCopy;
    v47 = v18;
    fileManager = [self fileManager];
    pf_temporaryDirectoryURL = [MEMORY[0x277CBEBC0] pf_temporaryDirectoryURL];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v37 = [pf_temporaryDirectoryURL URLByAppendingPathComponent:uUIDString];

    v46 = v37;
    v38 = [MEMORY[0x277CBEBC0] pbf_dataStoreURLForBaseURL:v37 version:unsignedIntegerValue];
    uRLByDeletingLastPathComponent = [v38 URLByDeletingLastPathComponent];
    LODWORD(uUID) = [fileManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error];

    if (uUID)
    {
      v18 = v47;
      optionsCopy = v45;
      if ([fileManager copyItemAtURL:v14 toURL:v38 error:error] && +[PBFDataStoreArchivalUtilities transformDataStoreAtURL:options:error:](PBFDataStoreArchivalUtilities, "transformDataStoreAtURL:options:error:", v38, v45, error))
      {
        if (PBFAppleArchiveCompressDirectory(v38, v15))
        {
          v29 = 1;
LABEL_23:

          goto LABEL_24;
        }

        v40 = MEMORY[0x277CCA9B8];
        v41 = *MEMORY[0x277CCA748];
        v49[0] = *MEMORY[0x277CCA470];
        v49[1] = v41;
        v50[0] = @"Failed to archive!";
        v50[1] = v15;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
        v43 = v40;
        v18 = v47;
        *error = [v43 pbf_generalErrorWithCode:1 userInfo:v42];
      }

      v29 = 0;
      goto LABEL_23;
    }

    v29 = 0;
    v18 = v47;
    optionsCopy = v45;
    goto LABEL_23;
  }

  v29 = 0;
LABEL_26:

  return v29;
}

- (PBFDataStoreArchiver)initWithDataStoreAtURL:(id)l
{
  lCopy = l;
  if (([lCopy checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {
    [PBFDataStoreArchiver initWithDataStoreAtURL:a2];
  }

  v12.receiver = self;
  v12.super_class = PBFDataStoreArchiver;
  v6 = [(PBFDataStoreArchiver *)&v12 init];
  if (v6)
  {
    v7 = [lCopy copy];
    dataStoreURL = v6->_dataStoreURL;
    v6->_dataStoreURL = v7;

    v9 = objc_opt_new();
    options = v6->_options;
    v6->_options = v9;
  }

  return v6;
}

- (BOOL)archiveToFileAtURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_opt_class();
  dataStoreURL = self->_dataStoreURL;
  options = [(PBFDataStoreArchiver *)self options];
  LOBYTE(error) = [v7 archiveDataStoreAtURL:dataStoreURL toURL:lCopy options:options error:error];

  return error;
}

+ (void)archiveDataStoreAtURL:(char *)a1 toURL:options:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)archiveDataStoreAtURL:(char *)a1 toURL:options:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)archiveDataStoreAtURL:(char *)a1 toURL:options:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)archiveDataStoreAtURL:(char *)a1 toURL:options:error:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataStoreAtURL:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[dataStoreURL checkResourceIsReachableAndReturnError:nil]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end