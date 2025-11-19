@interface NSXPCConnection(TUAdditions)
- (uint64_t)tu_clientSandboxCanAccessFileURL:()TUAdditions;
@end

@implementation NSXPCConnection(TUAdditions)

- (uint64_t)tu_clientSandboxCanAccessFileURL:()TUAdditions
{
  v4 = a3;
  v30 = 0u;
  v31 = 0u;
  [a1 auditToken];
  if ([v4 isFileURL])
  {
    v29 = 0;
    v5 = [v4 checkResourceIsReachableAndReturnError:&v29];
    v6 = v29;
    if (v5)
    {
      if ([v4 fileSystemRepresentation])
      {
        v7 = *MEMORY[0x1E69E9BD0];
        if (!sandbox_check_by_audit_token())
        {
          v27 = 1;
          goto LABEL_15;
        }

        v8 = TUDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [NSXPCConnection(TUAdditions) tu_clientSandboxCanAccessFileURL:v8];
        }
      }

      else
      {
        v8 = TUDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(NSXPCConnection(TUAdditions) *)v4 tu_clientSandboxCanAccessFileURL:v8, v21, v22, v23, v24, v25, v26];
        }
      }
    }

    else
    {
      v8 = TUDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(TUAdditions) *)v6 tu_clientSandboxCanAccessFileURL:v8, v15, v16, v17, v18, v19, v20];
      }
    }
  }

  else
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(TUAdditions) *)v4 tu_clientSandboxCanAccessFileURL:v6, v9, v10, v11, v12, v13, v14];
    }
  }

  v27 = 0;
LABEL_15:

  return v27;
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "URL is not a file system URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "URL resource is not reachable: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.3(NSObject *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6[0] = 67109378;
  v6[1] = v2;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&dword_1956FD000, a1, OS_LOG_TYPE_ERROR, "Client sandbox does not have access to the given file! (Error %i: %s)", v6, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)tu_clientSandboxCanAccessFileURL:()TUAdditions .cold.4(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0(&dword_1956FD000, a2, a3, "Could not get file system representation for URL: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end