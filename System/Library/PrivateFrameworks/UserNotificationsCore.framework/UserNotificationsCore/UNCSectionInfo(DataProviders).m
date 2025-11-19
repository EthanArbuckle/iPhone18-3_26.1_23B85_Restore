@interface UNCSectionInfo(DataProviders)
@end

@implementation UNCSectionInfo(DataProviders)

+ (void)defaultSectionInfoForSection:()DataProviders .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 localizedDescription];
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_1DA7A9000, v5, OS_LOG_TYPE_ERROR, "Encountered error obtaining application record for section %{public}@: %{public}@", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end