@interface PFFileSystemStagedURL
+ (BOOL)commitStagedURLs:(id)a3 destinationURL:(id)a4 stagingURL:(id)a5 fileManager:(id)a6 error:(id *)a7;
+ (BOOL)commitStagedURLs:(id)a3 destinationURLsForSwap:(id)a4 stagingURLsForSwap:(id)a5 stagingURL:(id)a6 fileManager:(id)a7 error:(id *)a8;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)archiveObjectUsingNSKeyedArchiver:(id)a3 toEndpoint:(id)a4;
+ (id)copyPath:(id)a3 toEndpoint:(id)a4;
+ (id)copyURL:(id)a3 toEndpoint:(id)a4;
+ (id)stageCreateEndpoint:(id)a3;
+ (id)stageDeleteEndpoint:(id)a3;
+ (id)writeData:(id)a3 toEndpoint:(id)a4;
- (BOOL)commitRelativeToURL:(id)a3 error:(id *)a4;
- (PFFileSystemStagedURL)init;
- (PFFileSystemStagedURL)initWithEndpoint:(id)a3 commitHandler:(id)a4 commitDescription:(id)a5;
- (id)description;
@end

@implementation PFFileSystemStagedURL

+ (id)copyURL:(id)a3 toEndpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PFFileSystemStagedURL_copyURL_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [(PFFileSystemStagedURL *)v7 initWithEndpoint:v9 commitHandler:v12 commitDescription:@"copyURL"];

  return v10;
}

+ (id)stageCreateEndpoint:(id)a3
{
  v3 = a3;
  v4 = [PFFileSystemStagedURL alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PFFileSystemStagedURL_stageCreateEndpoint___block_invoke;
  v8[3] = &unk_1E8189220;
  v9 = v3;
  v5 = v3;
  v6 = [(PFFileSystemStagedURL *)v4 initWithEndpoint:v5 commitHandler:v8 commitDescription:@"createEndpoint"];

  return v6;
}

+ (id)stageDeleteEndpoint:(id)a3
{
  v3 = a3;
  v4 = [PFFileSystemStagedURL alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PFFileSystemStagedURL_stageDeleteEndpoint___block_invoke;
  v8[3] = &unk_1E8189220;
  v9 = v3;
  v5 = v3;
  v6 = [(PFFileSystemStagedURL *)v4 initWithEndpoint:v5 commitHandler:v8 commitDescription:@"deleteEndpoint"];

  return v6;
}

uint64_t __45__PFFileSystemStagedURL_stageDeleteEndpoint___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 resolveWithBaseURL:a3];
  v9 = [v7 removeItemAtURL:v8 error:a4];

  return v9;
}

+ (id)archiveObjectUsingNSKeyedArchiver:(id)a3 toEndpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PFFileSystemStagedURL_archiveObjectUsingNSKeyedArchiver_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [(PFFileSystemStagedURL *)v7 initWithEndpoint:v8 commitHandler:v12 commitDescription:@"archiveObject"];

  return v10;
}

uint64_t __70__PFFileSystemStagedURL_archiveObjectUsingNSKeyedArchiver_toEndpoint___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  v20 = 0;
  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v20];
  v11 = v20;
  v12 = v11;
  if (!v10)
  {
    if (a4)
    {
      if (v11)
      {
        v14 = v11;
        v13 = 0;
        *a4 = v12;
        goto LABEL_8;
      }

      v15 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A588];
      v22[0] = @"Unable to archive data";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v17 = [v15 pf_errorWithCode:0 userInfo:v16];
      *a4 = v17;
    }

    v13 = 0;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) writeData:v10 relativeTo:v8 fileManager:v7 error:a4];
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)writeData:(id)a3 toEndpoint:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PFFileSystemStagedURL_writeData_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = v6;
  v14 = v5;
  v8 = v5;
  v9 = v6;
  v10 = [(PFFileSystemStagedURL *)v7 initWithEndpoint:v9 commitHandler:v12 commitDescription:@"writeData"];

  return v10;
}

+ (id)copyPath:(id)a3 toEndpoint:(id)a4
{
  v6 = a4;
  v7 = [a3 contentsURL];
  v8 = [v7 URLByDeletingLastPathComponent];

  v9 = [a1 copyURL:v8 toEndpoint:v6];
  return v9;
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() != a1)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Subclassing %@ is not allowed.", v8}];
  }

  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PFFileSystemStagedURL;
  return objc_msgSendSuper2(&v10, sel_allocWithZone_, a3);
}

- (PFFileSystemStagedURL)initWithEndpoint:(id)a3 commitHandler:(id)a4 commitDescription:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  if (!v11)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  v13 = v12;
  if (!v12)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  v21.receiver = self;
  v21.super_class = PFFileSystemStagedURL;
  v14 = [(PFFileSystemStagedURL *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, a3);
    v16 = [v11 copy];
    commitHandler = v15->_commitHandler;
    v15->_commitHandler = v16;

    v18 = [v13 copy];
    commitDescription = v15->_commitDescription;
    v15->_commitDescription = v18;
  }

  return v15;
}

- (PFFileSystemStagedURL)init
{
  [(PFFileSystemStagedURL *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_endpoint withName:@"endpoint"];
  v5 = [v3 appendObject:self->_fileManager withName:@"fileManager"];
  [v3 appendString:self->_commitDescription withName:@"commitDescription"];
  v6 = [v3 build];

  return v6;
}

- (BOOL)commitRelativeToURL:(id)a3 error:(id *)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_opt_class();
  v11[0] = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  LOBYTE(a4) = [v7 commitStagedURLs:v8 destinationURL:v6 error:a4];

  v9 = *MEMORY[0x1E69E9840];
  return a4;
}

+ (BOOL)commitStagedURLs:(id)a3 destinationURL:(id)a4 stagingURL:(id)a5 fileManager:(id)a6 error:(id *)a7
{
  v27[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (!v14)
  {
    v16 = MEMORY[0x1E695DFF8];
    v17 = MEMORY[0x1E696AEC0];
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    v20 = [v17 stringWithFormat:@"StagedURLCommit-%@", v19];
    v14 = [v16 pf_temporaryDirectoryURLNamed:v20];
  }

  v27[0] = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v26 = v14;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v23 = [a1 commitStagedURLs:v12 destinationURLsForSwap:v21 stagingURLsForSwap:v22 stagingURL:v14 fileManager:v15 error:a7];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)commitStagedURLs:(id)a3 destinationURLsForSwap:(id)a4 stagingURLsForSwap:(id)a5 stagingURL:(id)a6 fileManager:(id)a7 error:(id *)a8
{
  v60 = *MEMORY[0x1E69E9840];
  v51 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v52 = v14;
  if (![v14 count] || !objc_msgSend(v13, "count") || (v17 = objc_msgSend(v14, "count"), v17 != objc_msgSend(v13, "count")))
  {
    if (a8)
    {
      v18 = PFFunctionNameForAddress(v8);
      v21 = v18;
      if (v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = @"(Unknown Location)";
      }

      *a8 = PFGeneralErrorFromObjectWithLocalizedFailureReason(v51, v22, 0, 0, 0, @"Invalid number of staging or destination URLs.", v19, v20, 0);
    }

    [v16 removeItemAtURL:v15 error:0];
    v23 = 0;
    goto LABEL_13;
  }

  if (v16)
  {
    if (!v15)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    if (!v15)
    {
LABEL_15:
      v26 = MEMORY[0x1E695DFF8];
      v27 = MEMORY[0x1E696AEC0];
      v28 = [MEMORY[0x1E696AFB0] UUID];
      v29 = [v28 UUIDString];
      v30 = [v27 stringWithFormat:@"StagedURLCommit-%@", v29];
      v15 = [v26 pf_temporaryDirectoryURLNamed:v30];
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v51;
  v31 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v31)
  {
    v32 = *v56;
    while (2)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v56 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v55 + 1) + 8 * i);
        v35 = MEMORY[0x1C691C400](v34[1]);
        v54 = 0;
        v36 = (v35)[2](v35, v16, v15, &v54);
        v37 = v54;
        v38 = v37;
        if ((v36 & 1) == 0)
        {
          if (!v37)
          {
            v43 = PFFunctionNameForAddress(v8);
            v46 = v43;
            if (v43)
            {
              v47 = v43;
            }

            else
            {
              v47 = @"(Unknown Location)";
            }

            v38 = PFGeneralErrorFromObjectWithLocalizedFailureReason(v34, v47, 0, 0, 0, @"Commit was rejected.", v44, v45, 0);
          }

          if (a8)
          {
            v48 = v38;
            *a8 = v38;
          }

          v49 = PFLogCommon();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            [PFFileSystemStagedURL commitStagedURLs:v34 destinationURLsForSwap:v49 stagingURLsForSwap:? stagingURL:? fileManager:? error:?];
          }

          v23 = 0;
          goto LABEL_37;
        }
      }

      v31 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  v39 = 0;
  v23 = 1;
  while (v39 < [v13 count])
  {
    v40 = [v13 objectAtIndexedSubscript:v39];
    v41 = [v52 objectAtIndexedSubscript:v39];
    v42 = [v16 pf_replaceURL:v40 withURL:v41 error:a8];

    v23 &= v42;
    ++v39;
  }

LABEL_37:
  [v16 removeItemAtURL:v15 error:0];
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
  return v23 & 1;
}

- (void)initWithEndpoint:(char *)a1 commitHandler:commitDescription:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"commitDescription", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(char *)a1 commitHandler:commitDescription:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"commitBlock", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithEndpoint:(char *)a1 commitHandler:commitDescription:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"endpoint", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)commitStagedURLs:(uint64_t)a1 destinationURLsForSwap:(NSObject *)a2 stagingURLsForSwap:stagingURL:fileManager:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_1C269D000, a2, OS_LOG_TYPE_ERROR, "[PFFileSystemStagedURL] error committing stagedURL: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end