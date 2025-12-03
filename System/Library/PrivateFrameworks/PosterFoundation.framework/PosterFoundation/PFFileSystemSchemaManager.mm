@interface PFFileSystemSchemaManager
- (BOOL)deleteEndpoint:(id)endpoint error:(id *)error;
- (BOOL)prepareFileSystemForEndpoints:(id)endpoints error:(id *)error;
- (PFFileSystemSchemaManager)init;
- (PFFileSystemSchemaManager)initWithBaseURL:(id)l fileManager:(id)manager;
- (id)enumeratorForEndpoint:(id)endpoint includingPropertiesForKeys:(id)keys options:(unint64_t)options errorHandler:(id)handler;
- (id)resolveEndpoint:(id)endpoint;
@end

@implementation PFFileSystemSchemaManager

- (PFFileSystemSchemaManager)initWithBaseURL:(id)l fileManager:(id)manager
{
  lCopy = l;
  managerCopy = manager;
  if (!lCopy)
  {
    [PFFileSystemSchemaManager initWithBaseURL:a2 fileManager:?];
  }

  v9 = managerCopy;
  v16.receiver = self;
  v16.super_class = PFFileSystemSchemaManager;
  v10 = [(PFFileSystemSchemaManager *)&v16 init];
  if (v10)
  {
    if (v9)
    {
      defaultManager = v9;
    }

    else
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    }

    fileManager = v10->_fileManager;
    v10->_fileManager = defaultManager;

    uRLByStandardizingPath = [lCopy URLByStandardizingPath];
    baseURL = v10->_baseURL;
    v10->_baseURL = uRLByStandardizingPath;
  }

  return v10;
}

- (PFFileSystemSchemaManager)init
{
  [(PFFileSystemSchemaManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)enumeratorForEndpoint:(id)endpoint includingPropertiesForKeys:(id)keys options:(unint64_t)options errorHandler:(id)handler
{
  endpointCopy = endpoint;
  keysCopy = keys;
  handlerCopy = handler;
  if (!endpointCopy)
  {
    [PFFileSystemSchemaManager enumeratorForEndpoint:a2 includingPropertiesForKeys:? options:? errorHandler:?];
  }

  v14 = handlerCopy;
  v15 = [(PFFileSystemSchemaManager *)self resolveEndpoint:endpointCopy];
  v16 = [(NSFileManager *)self->_fileManager enumeratorAtURL:v15 includingPropertiesForKeys:keysCopy options:options errorHandler:v14];

  return v16;
}

- (id)resolveEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (!endpointCopy)
  {
    [PFFileSystemSchemaManager resolveEndpoint:a2];
  }

  v6 = endpointCopy;
  v7 = [endpointCopy resolveWithBaseURL:self->_baseURL];

  return v7;
}

- (BOOL)prepareFileSystemForEndpoints:(id)endpoints error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  endpointsCopy = endpoints;
  selfCopy = self;
  baseURL = [(PFFileSystemSchemaManager *)self baseURL];
  absoluteString = [baseURL absoluteString];
  fileManager = [(PFFileSystemSchemaManager *)self fileManager];
  if (![baseURL checkResourceIsReachableAndReturnError:error])
  {
LABEL_27:
    v28 = 0;
    goto LABEL_53;
  }

  if (([baseURL pf_isWritable] & 1) == 0)
  {
    if (error)
    {
      v23 = PFFunctionNameForAddress(v50);
      v26 = v23;
      if (v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = @"(Unknown Location)";
      }

      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(selfCopy, v27, 0, 0, 0, @"baseURL is not writable", v24, v25, 0);
    }

    goto LABEL_27;
  }

  v54 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = endpointsCopy;
  v7 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v7)
  {
    v8 = *v67;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v67 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v66 + 1) + 8 * i);
        components = [v10 components];
        v12 = [components URLRelativeToURL:baseURL];

        filePathURL = [v12 filePathURL];
        absoluteString2 = [filePathURL absoluteString];

        if (([absoluteString2 hasPrefix:absoluteString] & 1) == 0)
        {
          if (error)
          {
            v29 = PFFunctionNameForAddress(v50);
            v32 = v29;
            if (v29)
            {
              v33 = v29;
            }

            else
            {
              v33 = @"(Unknown Location)";
            }

            *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(selfCopy, v33, 0, 0, 0, @"endpoint URL escapes the baseURL please don't write outside the base url.  We trusted you.", v30, v31, 0);;
          }

          goto LABEL_51;
        }

        if (([fileManager fileExistsAtPath:absoluteString2] & 1) == 0)
        {
          [v54 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v66 objects:v72 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v16 = v6;
  v12 = 0;
  v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v17)
  {
    v18 = *v63;
    while (2)
    {
      v19 = 0;
      v20 = v12;
      do
      {
        if (*v63 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v62 + 1) + 8 * v19);
        v61 = 0;
        v22 = [v21 prepareEndpointForBaseURL:baseURL fileManager:fileManager error:&v61];
        v12 = v61;

        if (!v22)
        {
          if (!v12)
          {
            v34 = PFFunctionNameForAddress(v50);
            v37 = v34;
            if (v34)
            {
              v38 = v34;
            }

            else
            {
              v38 = @"(Unknown Location)";
            }

            v12 = PFGeneralErrorFromObjectWithLocalizedFailureReason(selfCopy, v38, 0, 0, 1, @"Unable to setup endpoint %@", v35, v36, v21);
          }

          goto LABEL_38;
        }

        [v15 addObject:v21];
        ++v19;
        v20 = v12;
      }

      while (v17 != v19);
      v17 = [v16 countByEnumeratingWithState:&v62 objects:v71 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

LABEL_38:

  objc_autoreleasePoolPop(context);
  if (v12)
  {
    if (error)
    {
      v39 = v12;
      *error = v12;
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    absoluteString2 = v54;
    v40 = [absoluteString2 countByEnumeratingWithState:&v57 objects:v70 count:16];
    if (v40)
    {
      v41 = *v58;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v58 != v41)
          {
            objc_enumerationMutation(absoluteString2);
          }

          v43 = *(*(&v57 + 1) + 8 * j);
          if ([v15 containsObject:v43])
          {
            components2 = [v43 components];
            v45 = [components2 URLRelativeToURL:baseURL];
            filePathURL2 = [v45 filePathURL];

            [fileManager removeItemAtURL:filePathURL2 error:0];
          }
        }

        v40 = [absoluteString2 countByEnumeratingWithState:&v57 objects:v70 count:16];
      }

      while (v40);
    }

    v6 = v15;
LABEL_51:

    v28 = 0;
    v15 = v6;
  }

  else
  {
    v28 = 1;
  }

LABEL_53:
  v47 = *MEMORY[0x1E69E9840];
  return v28;
}

- (BOOL)deleteEndpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  fileManager = [(PFFileSystemSchemaManager *)self fileManager];
  v8 = [(PFFileSystemSchemaManager *)self resolveEndpoint:endpointCopy];

  LOBYTE(error) = [fileManager removeItemAtURL:v8 error:error];
  return error;
}

- (void)initWithBaseURL:(char *)a1 fileManager:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"baseURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)enumeratorForEndpoint:(char *)a1 includingPropertiesForKeys:options:errorHandler:.cold.1(char *a1)
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

- (void)resolveEndpoint:(char *)a1 .cold.1(char *a1)
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

@end