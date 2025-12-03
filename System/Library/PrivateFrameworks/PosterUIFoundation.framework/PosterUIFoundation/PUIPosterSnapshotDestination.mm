@interface PUIPosterSnapshotDestination
+ (id)destinationForCache:(id)cache clientAuditToken:(id)token error:(id *)error;
+ (id)destinationForPosterPath:(id)path clientAuditToken:(id)token error:(id *)error;
+ (id)destinationForSQLiteCacheAtURL:(id)l clientAuditToken:(id)token error:(id *)error;
+ (id)destinationForSandboxExtendedURL:(id)l error:(id *)error;
+ (id)destinationWithTemporaryDirectoryWithAuditToken:(id)token error:(id *)error;
+ (id)destinationWithTemporaryDirectoryWithError:(id *)error;
- (BOOL)checkDestinationIsReachableAndReturnError:(id *)error;
- (NSURL)URL;
- (PUIPosterSnapshotDestination)init;
- (PUIPosterSnapshotDestination)initWithSandboxExtendedURL:(id)l type:(int64_t)type error:(id *)error;
- (PUIPosterSnapshotDestination)initWithURL:(id)l type:(int64_t)type error:(id *)error;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotDestination

+ (id)destinationForSandboxExtendedURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [[self alloc] initWithSandboxExtendedURL:lCopy type:3 error:error];

  return v7;
}

+ (id)destinationForPosterPath:(id)path clientAuditToken:(id)token error:(id *)error
{
  pathCopy = path;
  tokenCopy = token;
  if ([pathCopy ensureScratchURLIsReachableAndReturnError:error])
  {
    snapshotCacheURL = [pathCopy snapshotCacheURL];
    uRLByDeletingLastPathComponent = [snapshotCacheURL URLByDeletingLastPathComponent];

    v12 = [objc_alloc(MEMORY[0x1E69C51D8]) initWithURL:uRLByDeletingLastPathComponent options:4 auditToken:tokenCopy error:error];
    v13 = [self destinationForSandboxExtendedURL:v12 error:error];
    [v13 setType:5];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)destinationForSQLiteCacheAtURL:(id)l clientAuditToken:(id)token error:(id *)error
{
  v8 = MEMORY[0x1E69C51D8];
  tokenCopy = token;
  lCopy = l;
  v11 = [[v8 alloc] initWithURL:lCopy options:4 auditToken:tokenCopy error:error];

  if (v11)
  {
    v12 = [[self alloc] initWithSandboxExtendedURL:v11 type:5 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)destinationForCache:(id)cache clientAuditToken:(id)token error:(id *)error
{
  cacheCopy = cache;
  tokenCopy = token;
  cacheURL = [cacheCopy cacheURL];
  v11 = [objc_alloc(MEMORY[0x1E69C51D8]) initWithURL:cacheURL options:4 auditToken:tokenCopy error:error];

  if (v11)
  {
    v12 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v14 = 5;
LABEL_6:
      v17 = [[self alloc] initWithSandboxExtendedURL:v11 type:v14 error:error];
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

+ (id)destinationWithTemporaryDirectoryWithAuditToken:(id)token error:(id *)error
{
  v6 = [MEMORY[0x1E69C51D8] temporaryReadwriteSandboxExtendedURLForAuditToken:token error:?];
  if (v6)
  {
    v7 = [self destinationForSandboxExtendedURL:v6 error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)destinationWithTemporaryDirectoryWithError:(id *)error
{
  v4 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"PUIPosterSnapshotDestination"];
  v5 = [[PUIPosterSnapshotDestination alloc] initWithURL:v4 type:4 error:error];

  return v5;
}

- (PUIPosterSnapshotDestination)initWithSandboxExtendedURL:(id)l type:(int64_t)type error:(id *)error
{
  lCopy = l;
  if (!lCopy)
  {
    [PUIPosterSnapshotDestination initWithSandboxExtendedURL:a2 type:? error:?];
  }

  if (!type)
  {
    [PUIPosterSnapshotDestination initWithSandboxExtendedURL:a2 type:? error:?];
  }

  v10 = lCopy;
  v14.receiver = self;
  v14.super_class = PUIPosterSnapshotDestination;
  v11 = [(PUIPosterSnapshotDestination *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_sandboxExtendedURL, l);
  }

  return v12;
}

- (PUIPosterSnapshotDestination)initWithURL:(id)l type:(int64_t)type error:(id *)error
{
  lCopy = l;
  if (!lCopy)
  {
    [PUIPosterSnapshotDestination initWithURL:a2 type:? error:?];
  }

  if (!type)
  {
    [PUIPosterSnapshotDestination initWithURL:a2 type:? error:?];
  }

  v11 = lCopy;
  if ([lCopy checkResourceIsReachableAndReturnError:error])
  {
    v16.receiver = self;
    v16.super_class = PUIPosterSnapshotDestination;
    v12 = [(PUIPosterSnapshotDestination *)&v16 init];
    v13 = v12;
    if (v12)
    {
      v12->_type = type;
      objc_storeStrong(&v12->_basicURL, l);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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

- (BOOL)checkDestinationIsReachableAndReturnError:(id *)error
{
  basicURL = self->_basicURL;
  if (basicURL)
  {
    return [(NSURL *)basicURL checkResourceIsReachableAndReturnError:error];
  }

  else
  {
    return [(PFSandboxExtendedURL *)self->_sandboxExtendedURL isValidWithError:error];
  }
}

- (void)invalidate
{
  [(PFSandboxExtendedURL *)self->_sandboxExtendedURL invalidate];
  sandboxExtendedURL = self->_sandboxExtendedURL;
  self->_sandboxExtendedURL = 0;

  if (self->_type == 4)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:self->_basicURL error:0];
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