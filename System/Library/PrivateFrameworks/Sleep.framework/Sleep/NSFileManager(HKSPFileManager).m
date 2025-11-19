@interface NSFileManager(HKSPFileManager)
+ (id)_bundleCacheDirectory;
+ (id)_bundleCachePathForFile:()HKSPFileManager;
- (id)hkspDataForCacheFileWithName:()HKSPFileManager;
- (uint64_t)hkspFileWithNameExistsInCache:()HKSPFileManager;
- (uint64_t)hkspRemoveFileWithNameFromCache:()HKSPFileManager error:;
- (uint64_t)hkspWriteData:()HKSPFileManager toCacheFileWithName:error:;
@end

@implementation NSFileManager(HKSPFileManager)

+ (id)_bundleCacheDirectory
{
  if (qword_280B06950 != -1)
  {
    dispatch_once(&qword_280B06950, &__block_literal_global_9);
  }

  v1 = _MergedGlobals_13;

  return v1;
}

+ (id)_bundleCachePathForFile:()HKSPFileManager
{
  v4 = a3;
  v5 = [a1 _bundleCacheDirectory];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (uint64_t)hkspFileWithNameExistsInCache:()HKSPFileManager
{
  v4 = a3;
  v5 = [objc_opt_class() _bundleCachePathForFile:v4];

  v6 = [a1 fileExistsAtPath:v5 isDirectory:0];
  return v6;
}

- (id)hkspDataForCacheFileWithName:()HKSPFileManager
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [objc_opt_class() _bundleCachePathForFile:v4];

  v7 = [v5 initWithContentsOfFile:v6];

  return v7;
}

- (uint64_t)hkspWriteData:()HKSPFileManager toCacheFileWithName:error:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (([a1 hkspFileWithNameExistsInCache:v9] & 1) == 0)
  {
    v10 = [objc_opt_class() _bundleCacheDirectory];
    v36 = *MEMORY[0x277CCA1B0];
    v37[0] = *MEMORY[0x277CCA198];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v29 = 0;
    [a1 createDirectoryAtPath:v10 withIntermediateDirectories:1 attributes:v11 error:&v29];
    v12 = v29;

    if (v12)
    {
      v13 = HKSPLogForCategory(7uLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = v25;
        v27 = [objc_opt_class() _bundleCacheDirectory];
        *buf = 138543874;
        v31 = v25;
        v32 = 2114;
        v33 = v27;
        v34 = 2114;
        v35 = v12;
        _os_log_error_impl(&dword_269A84000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] failed to create directory at %{public}@ with error %{public}@", buf, 0x20u);
      }

      v14 = v12;
      if (a5)
      {
LABEL_6:
        v15 = v14;
        *a5 = v14;
LABEL_15:

        v17 = 0;
        goto LABEL_16;
      }

LABEL_12:
      v20 = HKSPLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v14;
        _os_log_error_impl(&dword_269A84000, v20, OS_LOG_TYPE_ERROR, "Dropping error because caller did not provide an errorOut pointer: %{public}@", buf, 0xCu);
      }

      goto LABEL_15;
    }
  }

  v16 = [objc_opt_class() _bundleCachePathForFile:v9];
  v28 = 0;
  v17 = 1;
  v18 = [v8 writeToFile:v16 options:1 error:&v28];
  v14 = v28;

  if ((v18 & 1) == 0)
  {
    v19 = HKSPLogForCategory(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      *buf = 138543618;
      v31 = v23;
      v32 = 2114;
      v33 = v14;
      v24 = v23;
      _os_log_error_impl(&dword_269A84000, v19, OS_LOG_TYPE_ERROR, "[%{public}@] failed to write data to file with error %{public}@", buf, 0x16u);
    }

    v14 = v14;
    if (!v14)
    {
      goto LABEL_15;
    }

    if (a5)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_16:

  v21 = *MEMORY[0x277D85DE8];
  return v17;
}

- (uint64_t)hkspRemoveFileWithNameFromCache:()HKSPFileManager error:
{
  v6 = a3;
  v7 = [objc_opt_class() _bundleCachePathForFile:v6];

  v8 = [a1 removeItemAtPath:v7 error:a4];
  return v8;
}

@end