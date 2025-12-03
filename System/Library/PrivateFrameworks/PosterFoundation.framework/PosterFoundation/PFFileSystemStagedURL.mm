@interface PFFileSystemStagedURL
+ (BOOL)commitStagedURLs:(id)ls destinationURL:(id)l stagingURL:(id)rL fileManager:(id)manager error:(id *)error;
+ (BOOL)commitStagedURLs:(id)ls destinationURLsForSwap:(id)swap stagingURLsForSwap:(id)forSwap stagingURL:(id)l fileManager:(id)manager error:(id *)error;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)archiveObjectUsingNSKeyedArchiver:(id)archiver toEndpoint:(id)endpoint;
+ (id)copyPath:(id)path toEndpoint:(id)endpoint;
+ (id)copyURL:(id)l toEndpoint:(id)endpoint;
+ (id)stageCreateEndpoint:(id)endpoint;
+ (id)stageDeleteEndpoint:(id)endpoint;
+ (id)writeData:(id)data toEndpoint:(id)endpoint;
- (BOOL)commitRelativeToURL:(id)l error:(id *)error;
- (PFFileSystemStagedURL)init;
- (PFFileSystemStagedURL)initWithEndpoint:(id)endpoint commitHandler:(id)handler commitDescription:(id)description;
- (id)description;
@end

@implementation PFFileSystemStagedURL

+ (id)copyURL:(id)l toEndpoint:(id)endpoint
{
  lCopy = l;
  endpointCopy = endpoint;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__PFFileSystemStagedURL_copyURL_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = endpointCopy;
  v14 = lCopy;
  v8 = lCopy;
  v9 = endpointCopy;
  v10 = [(PFFileSystemStagedURL *)v7 initWithEndpoint:v9 commitHandler:v12 commitDescription:@"copyURL"];

  return v10;
}

+ (id)stageCreateEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [PFFileSystemStagedURL alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PFFileSystemStagedURL_stageCreateEndpoint___block_invoke;
  v8[3] = &unk_1E8189220;
  v9 = endpointCopy;
  v5 = endpointCopy;
  v6 = [(PFFileSystemStagedURL *)v4 initWithEndpoint:v5 commitHandler:v8 commitDescription:@"createEndpoint"];

  return v6;
}

+ (id)stageDeleteEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = [PFFileSystemStagedURL alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PFFileSystemStagedURL_stageDeleteEndpoint___block_invoke;
  v8[3] = &unk_1E8189220;
  v9 = endpointCopy;
  v5 = endpointCopy;
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

+ (id)archiveObjectUsingNSKeyedArchiver:(id)archiver toEndpoint:(id)endpoint
{
  archiverCopy = archiver;
  endpointCopy = endpoint;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PFFileSystemStagedURL_archiveObjectUsingNSKeyedArchiver_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = archiverCopy;
  v14 = endpointCopy;
  v8 = endpointCopy;
  v9 = archiverCopy;
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

+ (id)writeData:(id)data toEndpoint:(id)endpoint
{
  dataCopy = data;
  endpointCopy = endpoint;
  v7 = [PFFileSystemStagedURL alloc];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__PFFileSystemStagedURL_writeData_toEndpoint___block_invoke;
  v12[3] = &unk_1E81891F8;
  v13 = endpointCopy;
  v14 = dataCopy;
  v8 = dataCopy;
  v9 = endpointCopy;
  v10 = [(PFFileSystemStagedURL *)v7 initWithEndpoint:v9 commitHandler:v12 commitDescription:@"writeData"];

  return v10;
}

+ (id)copyPath:(id)path toEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  contentsURL = [path contentsURL];
  uRLByDeletingLastPathComponent = [contentsURL URLByDeletingLastPathComponent];

  v9 = [self copyURL:uRLByDeletingLastPathComponent toEndpoint:endpointCopy];
  return v9;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() != self)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v5 raise:v6 format:{@"Subclassing %@ is not allowed.", v8}];
  }

  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PFFileSystemStagedURL;
  return objc_msgSendSuper2(&v10, sel_allocWithZone_, zone);
}

- (PFFileSystemStagedURL)initWithEndpoint:(id)endpoint commitHandler:(id)handler commitDescription:(id)description
{
  endpointCopy = endpoint;
  handlerCopy = handler;
  descriptionCopy = description;
  if (!endpointCopy)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  if (!handlerCopy)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  v13 = descriptionCopy;
  if (!descriptionCopy)
  {
    [PFFileSystemStagedURL initWithEndpoint:a2 commitHandler:? commitDescription:?];
  }

  v21.receiver = self;
  v21.super_class = PFFileSystemStagedURL;
  v14 = [(PFFileSystemStagedURL *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_endpoint, endpoint);
    v16 = [handlerCopy copy];
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
  build = [v3 build];

  return build;
}

- (BOOL)commitRelativeToURL:(id)l error:(id *)error
{
  v11[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = objc_opt_class();
  v11[0] = self;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  LOBYTE(error) = [v7 commitStagedURLs:v8 destinationURL:lCopy error:error];

  v9 = *MEMORY[0x1E69E9840];
  return error;
}

+ (BOOL)commitStagedURLs:(id)ls destinationURL:(id)l stagingURL:(id)rL fileManager:(id)manager error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  lCopy = l;
  rLCopy = rL;
  managerCopy = manager;
  if (!rLCopy)
  {
    v16 = MEMORY[0x1E695DFF8];
    v17 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v20 = [v17 stringWithFormat:@"StagedURLCommit-%@", uUIDString];
    rLCopy = [v16 pf_temporaryDirectoryURLNamed:v20];
  }

  v27[0] = lCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v26 = rLCopy;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v23 = [self commitStagedURLs:lsCopy destinationURLsForSwap:v21 stagingURLsForSwap:v22 stagingURL:rLCopy fileManager:managerCopy error:error];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)commitStagedURLs:(id)ls destinationURLsForSwap:(id)swap stagingURLsForSwap:(id)forSwap stagingURL:(id)l fileManager:(id)manager error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  lsCopy = ls;
  swapCopy = swap;
  forSwapCopy = forSwap;
  lCopy = l;
  managerCopy = manager;
  v52 = forSwapCopy;
  if (![forSwapCopy count] || !objc_msgSend(swapCopy, "count") || (v17 = objc_msgSend(forSwapCopy, "count"), v17 != objc_msgSend(swapCopy, "count")))
  {
    if (error)
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

      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(lsCopy, v22, 0, 0, 0, @"Invalid number of staging or destination URLs.", v19, v20, 0);
    }

    [managerCopy removeItemAtURL:lCopy error:0];
    v23 = 0;
    goto LABEL_13;
  }

  if (managerCopy)
  {
    if (!lCopy)
    {
      goto LABEL_15;
    }
  }

  else
  {
    managerCopy = [MEMORY[0x1E696AC08] defaultManager];
    if (!lCopy)
    {
LABEL_15:
      v26 = MEMORY[0x1E695DFF8];
      v27 = MEMORY[0x1E696AEC0];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      v30 = [v27 stringWithFormat:@"StagedURLCommit-%@", uUIDString];
      lCopy = [v26 pf_temporaryDirectoryURLNamed:v30];
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = lsCopy;
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
        v36 = (v35)[2](v35, managerCopy, lCopy, &v54);
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

          if (error)
          {
            v48 = v38;
            *error = v38;
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
  while (v39 < [swapCopy count])
  {
    v40 = [swapCopy objectAtIndexedSubscript:v39];
    v41 = [v52 objectAtIndexedSubscript:v39];
    v42 = [managerCopy pf_replaceURL:v40 withURL:v41 error:error];

    v23 &= v42;
    ++v39;
  }

LABEL_37:
  [managerCopy removeItemAtURL:lCopy error:0];
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