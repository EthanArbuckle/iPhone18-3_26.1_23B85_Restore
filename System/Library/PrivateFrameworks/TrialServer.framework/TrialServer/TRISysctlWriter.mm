@interface TRISysctlWriter
- (BOOL)writeSysctlWithName:(id)name intValue:(int64_t)value;
@end

@implementation TRISysctlWriter

- (BOOL)writeSysctlWithName:(id)name intValue:(int64_t)value
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  valueCopy = value;
  v6 = sysctlbyname([nameCopy cStringUsingEncoding:1], 0, 0, &valueCopy, 8uLL);
  v7 = TRILogCategory_Server();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:valueCopy];
      v10 = __error();
      v11 = strerror(*v10);
      *buf = 138412802;
      v16 = nameCopy;
      v17 = 2112;
      v18 = v9;
      v19 = 2080;
      v20 = v11;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Unable to set sysctl named %@ to %@. Error: %s", buf, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:valueCopy];
    *buf = 138412546;
    v16 = nameCopy;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Set sysctl named %@ to %@.", buf, 0x16u);
    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6 == 0;
}

@end