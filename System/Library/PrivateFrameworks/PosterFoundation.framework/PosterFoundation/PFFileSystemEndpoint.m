@interface PFFileSystemEndpoint
- (BOOL)copyURL:(id)a3 relativeTo:(id)a4 fileManager:(id)a5 error:(id *)a6;
- (BOOL)prepareEndpointForBaseURL:(id)a3 fileManager:(id)a4 error:(id *)a5;
- (BOOL)writeData:(id)a3 relativeTo:(id)a4 fileManager:(id)a5 error:(id *)a6;
- (NSString)pathComponents;
- (PFFileSystemEndpoint)init;
- (PFFileSystemEndpoint)initWithComponents:(id)a3 attributes:(id)a4 resourceValues:(id)a5;
- (PFFileSystemEndpoint)initWithRelativePathComponents:(id)a3 attributes:(id)a4 resourceValues:(id)a5;
- (id)description;
- (id)endPointByAppendingEndpoint:(id)a3;
- (id)endPointByAppendingRelativePathComponents:(id)a3;
- (id)resolveWithBaseURL:(id)a3;
- (unint64_t)hash;
@end

@implementation PFFileSystemEndpoint

- (PFFileSystemEndpoint)initWithRelativePathComponents:(id)a3 attributes:(id)a4 resourceValues:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 length] >= 2 && objc_msgSend(v7, "hasPrefix:", @"/"))
  {
    do
    {
      v9 = [v7 substringFromIndex:0];

      v7 = v9;
    }

    while (([v9 hasPrefix:@"/"] & 1) != 0);
  }

  else
  {
    v9 = v7;
  }

  v10 = [MEMORY[0x1E696AF20] componentsWithString:v9];
  v11 = [(PFFileSystemEndpoint *)self initWithComponents:v10 attributes:0 resourceValues:v8];

  return v11;
}

- (PFFileSystemEndpoint)initWithComponents:(id)a3 attributes:(id)a4 resourceValues:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [PFFileSystemEndpoint initWithComponents:a2 attributes:? resourceValues:?];
  }

  v12 = v11;
  v21.receiver = self;
  v21.super_class = PFFileSystemEndpoint;
  v13 = [(PFFileSystemEndpoint *)&v21 init];
  if (v13)
  {
    v14 = [v9 copy];
    components = v13->_components;
    v13->_components = v14;

    v16 = [v10 copy];
    attributes = v13->_attributes;
    v13->_attributes = v16;

    v18 = [v12 copy];
    resourceValues = v13->_resourceValues;
    v13->_resourceValues = v18;
  }

  return v13;
}

- (PFFileSystemEndpoint)init
{
  [(PFFileSystemEndpoint *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (unint64_t)hash
{
  v3 = [(NSURLComponents *)self->_components hash];
  v4 = [(NSDictionary *)self->_attributes hash]^ v3;
  v5 = [(NSDictionary *)self->_resourceValues hash];
  v6 = 0xBF58476D1CE4E5B9 * (v4 ^ v5 ^ ((v4 ^ v5) >> 30));
  return (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31);
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_components withName:@"components"];
  if ([(NSDictionary *)self->_attributes count])
  {
    v5 = [v3 appendObject:self->_attributes withName:@"attributes"];
  }

  if ([(NSDictionary *)self->_resourceValues count])
  {
    v6 = [v3 appendObject:self->_resourceValues withName:@"resourceValues"];
  }

  v7 = [v3 build];

  return v7;
}

- (BOOL)prepareEndpointForBaseURL:(id)a3 fileManager:(id)a4 error:(id *)a5
{
  v10 = a3;
  v11 = a4;
  if (!v11)
  {
    [PFFileSystemEndpoint prepareEndpointForBaseURL:a2 fileManager:? error:?];
  }

  if (!v10)
  {
    [PFFileSystemEndpoint prepareEndpointForBaseURL:a2 fileManager:? error:?];
  }

  v12 = v11;
  if ([v10 pf_isWritable])
  {
    v13 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:v10];
    v14 = [(PFFileSystemEndpoint *)self attributes];
    v15 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v14 error:a5];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = [(PFFileSystemEndpoint *)self attributes];
    v17 = [v16 count];

    if (v17)
    {
      v18 = [(PFFileSystemEndpoint *)self attributes];
      v19 = [v13 path];
      v20 = [v12 setAttributes:v18 ofItemAtPath:v19 error:a5];

      if (!v20)
      {
        goto LABEL_15;
      }
    }

    v21 = [(PFFileSystemEndpoint *)self resourceValues];
    v22 = [v21 count];

    if (!v22 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v13 setResourceValues:v23 error:a5], v23, v24))
    {
      v25 = 1;
    }

    else
    {
LABEL_15:
      v25 = 0;
    }
  }

  else
  {
    if (!a5)
    {
      v25 = 0;
      goto LABEL_17;
    }

    v26 = PFFunctionNameForAddress(v5);
    v13 = v26;
    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = @"(Unknown Location)";
    }

    PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v29, 0, 0, 0, @"baseURL is not writable", v27, v28, 0);
    *a5 = v25 = 0;
  }

LABEL_17:
  return v25;
}

- (NSString)pathComponents
{
  v2 = [(PFFileSystemEndpoint *)self components];
  v3 = [v2 string];

  return v3;
}

- (id)endPointByAppendingRelativePathComponents:(id)a3
{
  v4 = a3;
  v5 = [(PFFileSystemEndpoint *)self components];
  v6 = [v5 path];

  v7 = MEMORY[0x1E696AF20];
  v8 = [v6 stringByAppendingPathComponent:v4];

  v9 = [v7 componentsWithString:v8];

  v10 = [objc_alloc(objc_opt_class()) initWithComponents:v9 attributes:self->_attributes resourceValues:self->_resourceValues];

  return v10;
}

- (id)endPointByAppendingEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(PFFileSystemEndpoint *)self pathComponents];
  v6 = [v4 pathComponents];
  v7 = MEMORY[0x1E696AF20];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v5, v6];
  v9 = [v7 componentsWithString:v8];

  v10 = objc_alloc(objc_opt_class());
  v11 = [v4 attributes];
  v12 = [v4 resourceValues];

  v13 = [v10 initWithComponents:v9 attributes:v11 resourceValues:v12];

  return v13;
}

- (id)resolveWithBaseURL:(id)a3
{
  v4 = [a3 path];
  v5 = [(PFFileSystemEndpoint *)self components];
  v6 = [v5 path];

  v7 = [v4 stringByAppendingPathComponent:v6];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  v9 = [v8 standardizedURL];

  return v9;
}

- (BOOL)writeData:(id)a3 relativeTo:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  v13 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:a4];
  v14 = [v13 absoluteURL];
  v15 = [v14 URLByDeletingLastPathComponent];

  v36 = 0;
  v16 = [v15 path];
  v17 = [v12 fileExistsAtPath:v16 isDirectory:&v36];

  if ((v17 & 1) == 0)
  {
    if (![v12 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:a6])
    {
LABEL_14:
      LOBYTE(a6) = 0;
      goto LABEL_20;
    }

    v36 = 1;
    goto LABEL_10;
  }

  if (v36)
  {
LABEL_10:
    v23 = [v13 URLByStandardizingPath];
    v24 = [v23 path];
    v25 = [(PFFileSystemEndpoint *)self attributes];
    v26 = [v12 createFileAtPath:v24 contents:v11 attributes:v25];

    if (v26)
    {
      v27 = [(PFFileSystemEndpoint *)self resourceValues];
      v28 = [v27 count];

      if (!v28 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v29 = objc_claimAutoreleasedReturnValue(), LODWORD(a6) = [v13 setResourceValues:v29 error:a6], v29, a6))
      {
        LOBYTE(a6) = 1;
      }
    }

    else if (a6)
    {
      v30 = PFFunctionNameForAddress(v6);
      v33 = v30;
      if (v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = @"(Unknown Location)";
      }

      *a6 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v34, 0, 0, 1, @"unable to create file at endpoint '%@'", v31, v32, self);

      LOBYTE(a6) = 0;
    }

    goto LABEL_20;
  }

  if (a6)
  {
    v18 = PFFunctionNameForAddress(v6);
    v21 = v18;
    if (v18)
    {
      v22 = v18;
    }

    else
    {
      v22 = @"(Unknown Location)";
    }

    *a6 = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v22, 0, 0, 1, @"Endpoint '%@' exists but was expecting a directory and not a file. Aborting.", v19, v20, self);

    goto LABEL_14;
  }

LABEL_20:

  return a6;
}

- (BOOL)copyURL:(id)a3 relativeTo:(id)a4 fileManager:(id)a5 error:(id *)a6
{
  v38[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:a4];
  v13 = [v12 absoluteURL];
  v14 = [v13 URLByDeletingLastPathComponent];

  v34 = 0;
  v15 = [v14 path];
  v16 = [v11 fileExistsAtPath:v15 isDirectory:&v34];

  if (v16)
  {
    if ((v34 & 1) == 0)
    {
      if (a6)
      {
        v17 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A588];
        v38[0] = @"Endpoint exists but was expecting a directory; aborting.";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v19 = v17;
        v20 = 3;
LABEL_15:
        *a6 = [v19 pf_errorWithCode:v20 userInfo:v18];

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (![v11 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:a6])
    {
LABEL_16:
      LOBYTE(a6) = 0;
      goto LABEL_17;
    }

    v34 = 1;
  }

  v21 = [v10 URLByStandardizingPath];
  v22 = [v11 copyItemAtURL:v21 toURL:v12 error:a6];

  if (v22)
  {
    v23 = [(PFFileSystemEndpoint *)self attributes];
    v24 = [v23 count];

    if (v24)
    {
      v25 = [(PFFileSystemEndpoint *)self attributes];
      v26 = [v12 path];
      v27 = [v11 setAttributes:v25 ofItemAtPath:v26 error:a6];

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    v28 = [(PFFileSystemEndpoint *)self resourceValues];
    v29 = [v28 count];

    if (!v29 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v30 = objc_claimAutoreleasedReturnValue(), LODWORD(a6) = [v12 setResourceValues:v30 error:a6], v30, a6))
    {
      LOBYTE(a6) = 1;
    }
  }

  else if (a6)
  {
    v31 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A588];
    v36 = @"Unable to create file at endpoint";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v19 = v31;
    v20 = 0;
    goto LABEL_15;
  }

LABEL_17:

  v32 = *MEMORY[0x1E69E9840];
  return a6;
}

- (void)initWithComponents:(char *)a1 attributes:resourceValues:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"components", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)prepareEndpointForBaseURL:(char *)a1 fileManager:error:.cold.1(char *a1)
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

- (void)prepareEndpointForBaseURL:(char *)a1 fileManager:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"fileManager", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end