@interface PUIPosterSnapshotDestination
+ (id)destinationForCache:(id)a3 clientAuditToken:(id)a4 error:(id *)a5;
+ (id)destinationForPosterPath:(id)a3 clientAuditToken:(id)a4 error:(id *)a5;
+ (id)destinationForSQLiteCacheAtURL:(id)a3 clientAuditToken:(id)a4 error:(id *)a5;
+ (id)destinationForSandboxExtendedURL:(id)a3 error:(id *)a4;
+ (id)destinationWithTemporaryDirectoryWithAuditToken:(id)a3 error:(id *)a4;
+ (id)destinationWithTemporaryDirectoryWithError:(id *)a3;
- (BOOL)checkDestinationIsReachableAndReturnError:(id *)a3;
- (NSURL)URL;
- (PUIPosterSnapshotDestination)init;
- (PUIPosterSnapshotDestination)initWithSandboxExtendedURL:(id)a3 type:(int64_t)a4 error:(id *)a5;
- (PUIPosterSnapshotDestination)initWithURL:(id)a3 type:(int64_t)a4 error:(id *)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotDestination

+ (id)destinationForSandboxExtendedURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithSandboxExtendedURL:v6 type:3 error:a4];

  return v7;
}

+ (id)destinationForPosterPath:(id)a3 clientAuditToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 ensureScratchURLIsReachableAndReturnError:a5])
  {
    v10 = [v8 snapshotCacheURL];
    v11 = [v10 URLByDeletingLastPathComponent];

    v12 = [objc_alloc(MEMORY[0x1E69C51D8]) initWithURL:v11 options:4 auditToken:v9 error:a5];
    v13 = [a1 destinationForSandboxExtendedURL:v12 error:a5];
    [v13 setType:5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)destinationForSQLiteCacheAtURL:(id)a3 clientAuditToken:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x1E69C51D8];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithURL:v10 options:4 auditToken:v9 error:a5];

  if (v11)
  {
    v12 = [[a1 alloc] initWithSandboxExtendedURL:v11 type:5 error:a5];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)destinationForCache:(id)a3 clientAuditToken:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 cacheURL];
  v11 = [objc_alloc(MEMORY[0x1E69C51D8]) initWithURL:v10 options:4 auditToken:v9 error:a5];

  if (v11)
  {
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = 5;
LABEL_6:
      v17 = [[a1 alloc] initWithSandboxExtendedURL:v11 type:v14 error:a5];
      goto LABEL_8;
    }

    v15 = objc_opt_self();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v14 = 6;
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_8:

  return v17;
}

+ (id)destinationWithTemporaryDirectoryWithAuditToken:(id)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E69C51D8] temporaryReadwriteSandboxExtendedURLForAuditToken:a3 error:?];
  if (v6)
  {
    v7 = [a1 destinationForSandboxExtendedURL:v6 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)destinationWithTemporaryDirectoryWithError:(id *)a3
{
  v4 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"PUIPosterSnapshotDestination"];
  v5 = [[PUIPosterSnapshotDestination alloc] initWithURL:v4 type:4 error:a3];

  return v5;
}

- (PUIPosterSnapshotDestination)initWithSandboxExtendedURL:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v9 = a3;
  if (!v9)
  {
    [PUIPosterSnapshotDestination initWithSandboxExtendedURL:a2 type:? error:?];
  }

  if (!a4)
  {
    [PUIPosterSnapshotDestination initWithSandboxExtendedURL:a2 type:? error:?];
  }

  v10 = v9;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotDestination;
  v11 = [(PUIPosterSnapshotDestination *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a4;
    objc_storeStrong(&v11->_sandboxExtendedURL, a3);
  }

  return v12;
}

- (PUIPosterSnapshotDestination)initWithURL:(id)a3 type:(int64_t)a4 error:(id *)a5
{
  v10 = a3;
  if (!v10)
  {
    [PUIPosterSnapshotDestination initWithURL:a2 type:? error:?];
  }

  if (!a4)
  {
    [PUIPosterSnapshotDestination initWithURL:a2 type:? error:?];
  }

  v11 = v10;
  if ([v10 checkResourceIsReachableAndReturnError:a5])
  {
    v16.receiver = self;
    v16.super_class = PUIPosterSnapshotDestination;
    v12 = [(PUIPosterSnapshotDestination *)&v16 init];
    v13 = v12;
    if (v12)
    {
      v12->_type = a4;
      objc_storeStrong(&v12->_basicURL, a3);
    }

    self = v13;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (PUIPosterSnapshotDestination)init
{
  [(PUIPosterSnapshotDestination *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(PUIPosterSnapshotDestination *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotDestination;
  [(PUIPosterSnapshotDestination *)&v3 dealloc];
}

- (NSURL)URL
{
  basicURL = self->_basicURL;
  if (basicURL)
  {
    v3 = basicURL;
  }

  else
  {
    v3 = [(PFSandboxExtendedURL *)self->_sandboxExtendedURL URL];
  }

  return v3;
}

- (BOOL)checkDestinationIsReachableAndReturnError:(id *)a3
{
  basicURL = self->_basicURL;
  if (basicURL)
  {
    return [(NSURL *)basicURL checkResourceIsReachableAndReturnError:a3];
  }

  else
  {
    return [(PFSandboxExtendedURL *)self->_sandboxExtendedURL isValidWithError:a3];
  }
}

- (void)invalidate
{
  [(PFSandboxExtendedURL *)self->_sandboxExtendedURL invalidate];
  sandboxExtendedURL = self->_sandboxExtendedURL;
  self->_sandboxExtendedURL = 0;

  if (self->_type == 4)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    [v4 removeItemAtURL:self->_basicURL error:0];
  }

  basicURL = self->_basicURL;
  self->_basicURL = 0;
}

- (void)initWithSandboxExtendedURL:(char *)a1 type:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"type != PUIPosterSnapshotDestinationTypeNone", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithSandboxExtendedURL:(char *)a1 type:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sandboxExtendedURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 type:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"type != PUIPosterSnapshotDestinationTypeNone", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithURL:(char *)a1 type:error:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"URL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end