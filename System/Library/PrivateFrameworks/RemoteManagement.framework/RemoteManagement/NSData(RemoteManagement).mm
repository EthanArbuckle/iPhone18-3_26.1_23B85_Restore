@interface NSData(RemoteManagement)
- (uint64_t)rm_atomicWriteToURL:()RemoteManagement error:;
@end

@implementation NSData(RemoteManagement)

- (uint64_t)rm_atomicWriteToURL:()RemoteManagement error:
{
  v6 = a3;
  v39 = 0;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v39];
  v10 = v39;

  if (!v9 || (v10 & 1) == 0)
  {
    v13 = [v6 URLByDeletingLastPathComponent];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v18 = [v17 UUIDString];
    v19 = [v18 substringToIndex:8];
    v20 = [v6 lastPathComponent];
    v21 = [v16 stringWithFormat:@".temp-%@-%@", v19, v20];

    v22 = [v13 URLByAppendingPathComponent:v21];
    v38 = 0;
    LOBYTE(v18) = [a1 writeToURL:v22 options:0 error:&v38];
    v23 = v38;
    if (v18)
    {
      v24 = [MEMORY[0x1E696AC08] defaultManager];
      v37 = v23;
      v25 = [v24 replaceItemAtURL:v6 withItemAtURL:v22 backupItemName:0 options:1 resultingItemURL:0 error:&v37];
      v26 = v37;

      v27 = +[RMLog nsdata_rm];
      v28 = v27;
      if (v25)
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [NSData(RemoteManagement) rm_atomicWriteToURL:error:];
        }

        v15 = 1;
        v23 = v26;
      }

      else
      {
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          [NSData(RemoteManagement) rm_atomicWriteToURL:error:];
        }

        if (a4 && v26)
        {
          v31 = v26;
          *a4 = v26;
        }

        v32 = [MEMORY[0x1E696AC08] defaultManager];
        v36 = v26;
        v33 = [v32 removeItemAtURL:v22 error:&v36];
        v23 = v36;

        if ((v33 & 1) == 0)
        {
          v34 = +[RMLog nsdata_rm];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            [NSData(RemoteManagement) rm_atomicWriteToURL:error:];
          }
        }

        v15 = 0;
      }
    }

    else
    {
      v29 = +[RMLog nsdata_rm];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [NSData(RemoteManagement) rm_atomicWriteToURL:error:];
      }

      v15 = 0;
      if (a4 && v23)
      {
        v30 = v23;
        v15 = 0;
        *a4 = v23;
      }
    }

    goto LABEL_30;
  }

  v11 = +[RMLog nsdata_rm];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [NSData(RemoteManagement) rm_atomicWriteToURL:error:];
  }

  if (a4)
  {
    v12 = +[RMErrorUtilities createInternalError];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
      v15 = 0;
      *a4 = v13;
    }

    else
    {
      v15 = 0;
    }

LABEL_30:

    goto LABEL_31;
  }

  v15 = 0;
LABEL_31:

  return v15;
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1E1168000, v0, v1, "Failed to write temporary file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1E1168000, v0, v1, "Failed to replace original file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1E1168000, v0, v1, "Failed to remove temporary file: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1E1168000, v0, OS_LOG_TYPE_DEBUG, "Wrote file atomically in-place: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)rm_atomicWriteToURL:()RemoteManagement error:.cold.5()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_1E1168000, v0, v1, "Failed to write temporary file since a directory is present: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end