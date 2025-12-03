@interface PFFileSystemEndpoint
- (BOOL)copyURL:(id)l relativeTo:(id)to fileManager:(id)manager error:(id *)error;
- (BOOL)prepareEndpointForBaseURL:(id)l fileManager:(id)manager error:(id *)error;
- (BOOL)writeData:(id)data relativeTo:(id)to fileManager:(id)manager error:(id *)error;
- (NSString)pathComponents;
- (PFFileSystemEndpoint)init;
- (PFFileSystemEndpoint)initWithComponents:(id)components attributes:(id)attributes resourceValues:(id)values;
- (PFFileSystemEndpoint)initWithRelativePathComponents:(id)components attributes:(id)attributes resourceValues:(id)values;
- (id)description;
- (id)endPointByAppendingEndpoint:(id)endpoint;
- (id)endPointByAppendingRelativePathComponents:(id)components;
- (id)resolveWithBaseURL:(id)l;
- (unint64_t)hash;
@end

@implementation PFFileSystemEndpoint

- (PFFileSystemEndpoint)initWithRelativePathComponents:(id)components attributes:(id)attributes resourceValues:(id)values
{
  componentsCopy = components;
  valuesCopy = values;
  if ([componentsCopy length] >= 2 && objc_msgSend(componentsCopy, "hasPrefix:", @"/"))
  {
    do
    {
      v9 = [componentsCopy substringFromIndex:0];

      componentsCopy = v9;
    }

    while (([v9 hasPrefix:@"/"] & 1) != 0);
  }

  else
  {
    v9 = componentsCopy;
  }

  v10 = [MEMORY[0x1E696AF20] componentsWithString:v9];
  v11 = [(PFFileSystemEndpoint *)self initWithComponents:v10 attributes:0 resourceValues:valuesCopy];

  return v11;
}

- (PFFileSystemEndpoint)initWithComponents:(id)components attributes:(id)attributes resourceValues:(id)values
{
  componentsCopy = components;
  attributesCopy = attributes;
  valuesCopy = values;
  if (!componentsCopy)
  {
    [PFFileSystemEndpoint initWithComponents:a2 attributes:? resourceValues:?];
  }

  v12 = valuesCopy;
  v21.receiver = self;
  v21.super_class = PFFileSystemEndpoint;
  v13 = [(PFFileSystemEndpoint *)&v21 init];
  if (v13)
  {
    v14 = [componentsCopy copy];
    components = v13->_components;
    v13->_components = v14;

    v16 = [attributesCopy copy];
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

  build = [v3 build];

  return build;
}

- (BOOL)prepareEndpointForBaseURL:(id)l fileManager:(id)manager error:(id *)error
{
  lCopy = l;
  managerCopy = manager;
  if (!managerCopy)
  {
    [PFFileSystemEndpoint prepareEndpointForBaseURL:a2 fileManager:? error:?];
  }

  if (!lCopy)
  {
    [PFFileSystemEndpoint prepareEndpointForBaseURL:a2 fileManager:? error:?];
  }

  v12 = managerCopy;
  if ([lCopy pf_isWritable])
  {
    v13 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:lCopy];
    attributes = [(PFFileSystemEndpoint *)self attributes];
    v15 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:attributes error:error];

    if (!v15)
    {
      goto LABEL_15;
    }

    attributes2 = [(PFFileSystemEndpoint *)self attributes];
    v17 = [attributes2 count];

    if (v17)
    {
      attributes3 = [(PFFileSystemEndpoint *)self attributes];
      path = [v13 path];
      v20 = [v12 setAttributes:attributes3 ofItemAtPath:path error:error];

      if (!v20)
      {
        goto LABEL_15;
      }
    }

    resourceValues = [(PFFileSystemEndpoint *)self resourceValues];
    v22 = [resourceValues count];

    if (!v22 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v23 = objc_claimAutoreleasedReturnValue(), v24 = [v13 setResourceValues:v23 error:error], v23, v24))
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
    if (!error)
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
    *error = v25 = 0;
  }

LABEL_17:
  return v25;
}

- (NSString)pathComponents
{
  components = [(PFFileSystemEndpoint *)self components];
  string = [components string];

  return string;
}

- (id)endPointByAppendingRelativePathComponents:(id)components
{
  componentsCopy = components;
  components = [(PFFileSystemEndpoint *)self components];
  path = [components path];

  v7 = MEMORY[0x1E696AF20];
  v8 = [path stringByAppendingPathComponent:componentsCopy];

  v9 = [v7 componentsWithString:v8];

  v10 = [objc_alloc(objc_opt_class()) initWithComponents:v9 attributes:self->_attributes resourceValues:self->_resourceValues];

  return v10;
}

- (id)endPointByAppendingEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  pathComponents = [(PFFileSystemEndpoint *)self pathComponents];
  pathComponents2 = [endpointCopy pathComponents];
  v7 = MEMORY[0x1E696AF20];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", pathComponents, pathComponents2];
  v9 = [v7 componentsWithString:v8];

  v10 = objc_alloc(objc_opt_class());
  attributes = [endpointCopy attributes];
  resourceValues = [endpointCopy resourceValues];

  v13 = [v10 initWithComponents:v9 attributes:attributes resourceValues:resourceValues];

  return v13;
}

- (id)resolveWithBaseURL:(id)l
{
  path = [l path];
  components = [(PFFileSystemEndpoint *)self components];
  path2 = [components path];

  v7 = [path stringByAppendingPathComponent:path2];
  v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
  standardizedURL = [v8 standardizedURL];

  return standardizedURL;
}

- (BOOL)writeData:(id)data relativeTo:(id)to fileManager:(id)manager error:(id *)error
{
  dataCopy = data;
  managerCopy = manager;
  v13 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:to];
  absoluteURL = [v13 absoluteURL];
  uRLByDeletingLastPathComponent = [absoluteURL URLByDeletingLastPathComponent];

  v36 = 0;
  path = [uRLByDeletingLastPathComponent path];
  v17 = [managerCopy fileExistsAtPath:path isDirectory:&v36];

  if ((v17 & 1) == 0)
  {
    if (![managerCopy createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
    {
LABEL_14:
      LOBYTE(error) = 0;
      goto LABEL_20;
    }

    v36 = 1;
    goto LABEL_10;
  }

  if (v36)
  {
LABEL_10:
    uRLByStandardizingPath = [v13 URLByStandardizingPath];
    path2 = [uRLByStandardizingPath path];
    attributes = [(PFFileSystemEndpoint *)self attributes];
    v26 = [managerCopy createFileAtPath:path2 contents:dataCopy attributes:attributes];

    if (v26)
    {
      resourceValues = [(PFFileSystemEndpoint *)self resourceValues];
      v28 = [resourceValues count];

      if (!v28 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v29 = objc_claimAutoreleasedReturnValue(), LODWORD(error) = [v13 setResourceValues:v29 error:error], v29, error))
      {
        LOBYTE(error) = 1;
      }
    }

    else if (error)
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

      *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v34, 0, 0, 1, @"unable to create file at endpoint '%@'", v31, v32, self);

      LOBYTE(error) = 0;
    }

    goto LABEL_20;
  }

  if (error)
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

    *error = PFGeneralErrorFromObjectWithLocalizedFailureReason(self, v22, 0, 0, 1, @"Endpoint '%@' exists but was expecting a directory and not a file. Aborting.", v19, v20, self);

    goto LABEL_14;
  }

LABEL_20:

  return error;
}

- (BOOL)copyURL:(id)l relativeTo:(id)to fileManager:(id)manager error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  v12 = [(PFFileSystemEndpoint *)self resolveWithBaseURL:to];
  absoluteURL = [v12 absoluteURL];
  uRLByDeletingLastPathComponent = [absoluteURL URLByDeletingLastPathComponent];

  v34 = 0;
  path = [uRLByDeletingLastPathComponent path];
  v16 = [managerCopy fileExistsAtPath:path isDirectory:&v34];

  if (v16)
  {
    if ((v34 & 1) == 0)
    {
      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A588];
        v38[0] = @"Endpoint exists but was expecting a directory; aborting.";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v19 = v17;
        v20 = 3;
LABEL_15:
        *error = [v19 pf_errorWithCode:v20 userInfo:v18];

        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else
  {
    if (![managerCopy createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:error])
    {
LABEL_16:
      LOBYTE(error) = 0;
      goto LABEL_17;
    }

    v34 = 1;
  }

  uRLByStandardizingPath = [lCopy URLByStandardizingPath];
  v22 = [managerCopy copyItemAtURL:uRLByStandardizingPath toURL:v12 error:error];

  if (v22)
  {
    attributes = [(PFFileSystemEndpoint *)self attributes];
    v24 = [attributes count];

    if (v24)
    {
      attributes2 = [(PFFileSystemEndpoint *)self attributes];
      path2 = [v12 path];
      v27 = [managerCopy setAttributes:attributes2 ofItemAtPath:path2 error:error];

      if (!v27)
      {
        goto LABEL_16;
      }
    }

    resourceValues = [(PFFileSystemEndpoint *)self resourceValues];
    v29 = [resourceValues count];

    if (!v29 || (-[PFFileSystemEndpoint resourceValues](self, "resourceValues"), v30 = objc_claimAutoreleasedReturnValue(), LODWORD(error) = [v12 setResourceValues:v30 error:error], v30, error))
    {
      LOBYTE(error) = 1;
    }
  }

  else if (error)
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
  return error;
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