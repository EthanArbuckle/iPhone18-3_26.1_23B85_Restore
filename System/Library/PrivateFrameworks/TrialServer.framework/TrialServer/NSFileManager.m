@interface NSFileManager
@end

@implementation NSFileManager

void __66__NSFileManager_TRIServer__triRemoveNestedEmptyDirectoriesAtPath___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (rmdir([v3 fileSystemRepresentation]) && *__error() != 66)
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = __error();
      v7 = strerror(*v6);
      v8 = *__error();
      v9 = 138543874;
      v10 = v3;
      v11 = 2080;
      v12 = v7;
      v13 = 1024;
      v14 = v8;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed remove directory %{public}@: %s (%d)", &v9, 0x1Cu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end