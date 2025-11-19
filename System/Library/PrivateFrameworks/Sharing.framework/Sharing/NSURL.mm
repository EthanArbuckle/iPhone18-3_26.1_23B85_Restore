@interface NSURL
@end

@implementation NSURL

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    if (*(a1 + 48) == 1)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [v4 lastPathComponent];
      v8 = [v6 temporaryDirectory];
      v18 = 0;
      v9 = [v6 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:&v18];
      v10 = v18;

      if (!v9)
      {
        v11 = utilities_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_1(v10, v11);
        }

        v9 = [v6 temporaryDirectory];
      }

      v12 = [v9 URLByAppendingPathComponent:v7];
      v17 = v10;
      v13 = [v6 copyItemAtURL:v4 toURL:v12 error:&v17];
      v14 = v17;

      if (v13)
      {
        v5 = v12;
        v15 = v4;
      }

      else
      {
        v15 = utilities_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_2(v4, v14, v15);
        }

        v5 = v4;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *(a1 + 32);
  (*(*(a1 + 40) + 16))();
}

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Failed to create a temporary directory with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __79__NSURL_Sharing__coordinateReadingWithSaveToTempDir_options_completionHandler___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A9662000, log, OS_LOG_TYPE_ERROR, "Failed to copy file %@ to temporary directory with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end