@interface PFServerPosterPath
+ (id)_cachedPathWithContentsURL:(void *)l identity:(void *)identity allocedInstance:;
+ (id)pathWithContainerURL:(id)l identity:(id)identity;
+ (id)pathWithProviderURL:(id)l identity:(id)identity;
+ (id)temporaryServerPathForProvider:(id)provider descriptorIdentifier:(id)identifier role:(id)role;
- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)error;
- (BOOL)ensureScratchURLIsReachableAndReturnError:(id *)error;
- (BOOL)isEqualToPersistable:(id)persistable;
- (NSString)identityPathComponent;
- (NSURL)identifierURL;
- (NSURL)providerURL;
- (NSURL)scratchURL;
- (NSURL)snapshotCacheURL;
- (NSURL)supplementURL;
- (NSURL)typeURL;
- (NSURL)versionsURL;
- (id)containerURL;
- (id)extendInstanceReadAccessToAuditToken:(id)token error:(id *)error;
@end

@implementation PFServerPosterPath

+ (id)_cachedPathWithContentsURL:(void *)l identity:(void *)identity allocedInstance:
{
  v6 = a2;
  lCopy = l;
  identityCopy = identity;
  objc_opt_self();
  if (!v6)
  {
    [PFServerPosterPath _cachedPathWithContentsURL:? identity:? allocedInstance:?];
  }

  if (!lCopy)
  {
    [PFServerPosterPath _cachedPathWithContentsURL:? identity:? allocedInstance:?];
  }

  if (__disableUniquing_0 == 1)
  {
    if (!identityCopy)
    {
      identityCopy = [PFServerPosterPath alloc];
    }

    identityCopy = identityCopy;
    role = [lCopy role];
    [(PFPosterPath *)identityCopy _initWithContentsURL:v6 role:role options:2 serverIdentity:lCopy descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
    v11 = v10;
  }

  else
  {
    os_unfair_lock_lock(&__cachedServerPathsByIdentityByURLLock);
    v12 = [qword_1ED8486E8 objectForKey:v6];
    v11 = [v12 objectForKey:lCopy];

    if (v11)
    {
      [(PFServerPosterPath *)identityCopy _cachedPathWithContentsURL:lCopy identity:&v26 allocedInstance:&v27];
      v14 = v26;
      identity = v27;
    }

    else
    {
      v13 = [qword_1ED8486E8 objectForKey:v6];
      v14 = v13;
      if (v13)
      {
        objectEnumerator = [v13 objectEnumerator];
        nextObject = [objectEnumerator nextObject];

        if (nextObject)
        {
          contentsURL = [nextObject contentsURL];

          v6 = contentsURL;
        }
      }

      if (!identityCopy)
      {
        identityCopy = [PFServerPosterPath alloc];
      }

      identityCopy = identityCopy;
      role2 = [lCopy role];
      [(PFPosterPath *)identityCopy _initWithContentsURL:v6 role:role2 options:2 serverIdentity:lCopy descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
      v11 = v19;

      if (!v14)
      {
        if (!qword_1ED8486E8)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          v21 = qword_1ED8486E8;
          qword_1ED8486E8 = dictionary;
        }

        v14 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:5];
        v22 = qword_1ED8486E8;
        contentsURL2 = [v11 contentsURL];
        [v22 setObject:v14 forKey:contentsURL2];
      }

      identity = [v11 identity];
      [v14 setObject:v11 forKey:identity];
    }

    os_unfair_lock_unlock(&__cachedServerPathsByIdentityByURLLock);
  }

  return v11;
}

+ (id)pathWithContainerURL:(id)l identity:(id)identity
{
  lCopy = l;
  identityCopy = identity;
  v9 = lCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v9)
  {
    [PFServerPosterPath pathWithContainerURL:a2 identity:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterPath pathWithContainerURL:a2 identity:?];
  }

  if (![v9 isFileURL] || (objc_msgSend(v9, "hasDirectoryPath") & 1) == 0)
  {
    [PFServerPosterPath pathWithContainerURL:v9 identity:a2];
  }

  provider = [identityCopy provider];
  v11 = [v9 URLByAppendingPathComponent:provider isDirectory:1];

  v12 = [self pathWithProviderURL:v11 identity:identityCopy];

  return v12;
}

+ (id)pathWithProviderURL:(id)l identity:(id)identity
{
  lCopy = l;
  identityCopy = identity;
  v9 = lCopy;
  NSClassFromString(&cfstr_Nsurl.isa);
  if (!v9)
  {
    [PFServerPosterPath pathWithProviderURL:a2 identity:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterPath pathWithProviderURL:a2 identity:?];
  }

  if (![v9 isFileURL] || (objc_msgSend(v9, "hasDirectoryPath") & 1) == 0)
  {
    [PFServerPosterPath pathWithProviderURL:v9 identity:a2];
  }

  v10 = identityCopy;
  NSClassFromString(&cfstr_Pfserverposter_5.isa);
  if (!v10)
  {
    [PFServerPosterPath pathWithProviderURL:a2 identity:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterPath pathWithProviderURL:a2 identity:?];
  }

  type = [v10 type];
  version = [v10 version];
  posterUUID = [v10 posterUUID];
  v14 = [MEMORY[0x1E695DFF8] pf_posterPathContentsURLForProviderURL:v9 type:type posterUUID:posterUUID version:version];
  if (v14)
  {
    v15 = v14;
    v16 = [PFServerPosterPath _cachedPathWithContentsURL:v14 identity:v10 allocedInstance:0];

    return v16;
  }

  else
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to construct contentsURL from '%@' and %@", v9, v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(PFServerPosterPath *)a2 pathWithProviderURL:self identity:v18];
    }

    [v18 UTF8String];
    result = _bs_set_crash_log_message();
    __break(0);
  }

  return result;
}

+ (id)temporaryServerPathForProvider:(id)provider descriptorIdentifier:(id)identifier role:(id)role
{
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  if ((PFPosterRoleIsValid(roleCopy) & 1) == 0)
  {
    [PFServerPosterPath temporaryServerPathForProvider:roleCopy descriptorIdentifier:a2 role:?];
  }

  if (!providerCopy)
  {
    [PFServerPosterPath temporaryServerPathForProvider:a2 descriptorIdentifier:? role:?];
  }

  if (!identifierCopy)
  {
    v11 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifierCopy = [v11 stringWithFormat:@"tmpConfiguration-%@", uUIDString];
  }

  uUID2 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [PFServerPosterIdentity configurationIdentityWithProvider:providerCopy identifier:identifierCopy role:roleCopy posterUUID:uUID2 version:0 supplement:0];

  v16 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"com.apple.posterkit.provider.path.generic"];
  v17 = [PFServerPosterPath _cachedPathWithContentsURL:v16 identity:v15 allocedInstance:0];

  return v17;
}

- (id)containerURL
{
  providerURL = [(PFServerPosterPath *)self providerURL];
  uRLByDeletingLastPathComponent = [providerURL URLByDeletingLastPathComponent];

  return uRLByDeletingLastPathComponent;
}

- (NSURL)providerURL
{
  typeURL = [(PFServerPosterPath *)self typeURL];
  uRLByDeletingLastPathComponent = [typeURL URLByDeletingLastPathComponent];

  return uRLByDeletingLastPathComponent;
}

- (NSURL)scratchURL
{
  v2 = MEMORY[0x1E695DFF8];
  instanceURL = [(PFServerPosterPath *)self instanceURL];
  v4 = [v2 pf_posterPathScratchURLForInstanceURL:instanceURL];

  return v4;
}

- (NSURL)snapshotCacheURL
{
  scratchURL = [(PFServerPosterPath *)self scratchURL];
  v3 = [scratchURL URLByAppendingPathComponent:@"SnapshotCache.cachedb" isDirectory:1];

  return v3;
}

- (NSURL)typeURL
{
  identifierURL = [(PFServerPosterPath *)self identifierURL];
  uRLByDeletingLastPathComponent = [identifierURL URLByDeletingLastPathComponent];

  return uRLByDeletingLastPathComponent;
}

- (NSURL)identifierURL
{
  versionsURL = [(PFServerPosterPath *)self versionsURL];
  uRLByDeletingLastPathComponent = [versionsURL URLByDeletingLastPathComponent];

  return uRLByDeletingLastPathComponent;
}

- (NSURL)versionsURL
{
  instanceURL = [(PFServerPosterPath *)self instanceURL];
  uRLByDeletingLastPathComponent = [instanceURL URLByDeletingLastPathComponent];

  return uRLByDeletingLastPathComponent;
}

- (NSURL)supplementURL
{
  v3 = MEMORY[0x1E695DFF8];
  instanceURL = [(PFServerPosterPath *)self instanceURL];
  v5 = [v3 pf_posterPathSupplementURLForInstanceURL:instanceURL supplement:{-[PFServerPosterIdentity supplement](self->super._serverIdentity, "supplement")}];

  return v5;
}

- (NSString)identityPathComponent
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = self->super._serverIdentity;
  provider = [(PFServerPosterIdentity *)v3 provider];
  v5 = [v2 URLWithString:provider];

  type = [(PFServerPosterIdentity *)v3 type];
  version = [(PFServerPosterIdentity *)v3 version];
  posterUUID = [(PFServerPosterIdentity *)v3 posterUUID];

  v9 = [MEMORY[0x1E695DFF8] pf_posterPathInstanceURLForProviderURL:v5 type:type posterUUID:posterUUID version:version];
  path = [v9 path];

  return path;
}

- (id)extendInstanceReadAccessToAuditToken:(id)token error:(id *)error
{
  tokenCopy = token;
  instanceURL = [(PFServerPosterPath *)self instanceURL];
  v8 = [(PFPosterPath *)&self->super.super.isa _extendReadAccessForURL:instanceURL toAuditToken:tokenCopy error:error];

  return v8;
}

- (BOOL)isEqualToPersistable:(id)persistable
{
  persistableCopy = persistable;
  if (persistableCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(PFPosterPath *)self _isEqualToPersistable:persistableCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)ensureScratchURLIsReachableAndReturnError:(id *)error
{
  v5 = objc_opt_new();
  scratchURL = [(PFServerPosterPath *)self scratchURL];
  if ([scratchURL checkResourceIsReachableAndReturnError:0])
  {
    goto LABEL_4;
  }

  v7 = PFPosterPathFileAttributes();
  v31 = 0;
  v8 = [v5 createDirectoryAtURL:scratchURL withIntermediateDirectories:1 attributes:v7 error:&v31];
  snapshotCacheURL = v31;

  if (v8)
  {

LABEL_4:
    snapshotCacheURL = [(PFServerPosterPath *)self snapshotCacheURL];
    v10 = PFPosterPathFileAttributes();
    v30 = 0;
    v11 = [v5 createDirectoryAtURL:snapshotCacheURL withIntermediateDirectories:1 attributes:v10 error:&v30];
    v12 = v30;

    if (v11)
    {
      v13 = *MEMORY[0x1E695DBA0];
      v29 = 0;
      v14 = [scratchURL setResourceValue:MEMORY[0x1E695E118] forKey:v13 error:&v29];
      v15 = v29;
      if (v14)
      {
        v16 = *MEMORY[0x1E695DB80];
        v28 = 0;
        v17 = [scratchURL setResourceValue:MEMORY[0x1E695E118] forKey:v16 error:&v28];
        v18 = v28;
        if ((v17 & 1) == 0)
        {
          v19 = PFLogPosterContents();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            [PFServerPosterPath ensureScratchURLIsReachableAndReturnError:];
          }

          if (error)
          {
            v20 = v18;
            *error = v18;
          }
        }
      }

      else
      {
        v25 = PFLogPosterContents();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [PFServerPosterPath ensureScratchURLIsReachableAndReturnError:];
        }

        if (error)
        {
          v26 = v15;
          v17 = 0;
          *error = v15;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v21 = PFLogPosterContents();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [PFServerPosterPath ensureScratchURLIsReachableAndReturnError:];
      }

      if (error)
      {
        v22 = v12;
        v17 = 0;
        *error = v12;
      }

      else
      {
        v17 = 0;
      }
    }

    goto LABEL_29;
  }

  v23 = PFLogPosterContents();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [PFServerPosterPath ensureScratchURLIsReachableAndReturnError:];
  }

  if (error)
  {
    v24 = snapshotCacheURL;
    v17 = 0;
    *error = snapshotCacheURL;
  }

  else
  {
    v17 = 0;
  }

LABEL_29:

  return v17;
}

- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)error
{
  v7.receiver = self;
  v7.super_class = PFServerPosterPath;
  v5 = [(PFPosterPath *)&v7 ensureContentsURLIsReachableAndReturnError:?];
  if (v5)
  {
    LOBYTE(v5) = [(PFServerPosterPath *)self ensureScratchURLIsReachableAndReturnError:error];
  }

  return v5;
}

+ (void)_cachedPathWithContentsURL:(void *)a3 identity:(uint64_t *)a4 allocedInstance:.cold.1(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = [a2 role];
  *a3 = v8;
  [(PFPosterPath *)v7 _initWithContentsURL:v8 role:2 options:0 serverIdentity:0 descriptorIdentifier:-1 sandboxExtensionHandle:0 sandboxExtensionURL:0 sandboxExtensionAuditToken:?];
  *a4 = v9;

  [(PFPosterPath *)v9 _invalidate];
}

+ (void)_cachedPathWithContentsURL:(char *)a1 identity:allocedInstance:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_cachedPathWithContentsURL:(char *)a1 identity:allocedInstance:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"contentsURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithContainerURL:(char *)a1 identity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithContainerURL:(uint64_t)a1 identity:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"containerURL must be a fileURL directory : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithContainerURL:(char *)a1 identity:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithProviderURL:(char *)a1 identity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSURLClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithProviderURL:(uint64_t)a1 identity:(char *)a2 .cold.2(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"providerURL must be a fileURL directory : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_3();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithProviderURL:(char *)a1 identity:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterIdentityClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithProviderURL:(uint64_t)a3 identity:.cold.4(const char *a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromSelector(a1);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v10 = 138544642;
  v11 = v4;
  OUTLINED_FUNCTION_1_3();
  v12 = @"PFPosterPath.m";
  v13 = 1024;
  v14 = 973;
  v15 = v7;
  v16 = a3;
  OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10);

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)pathWithProviderURL:(char *)a1 identity:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pathWithProviderURL:(char *)a1 identity:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryServerPathForProvider:(uint64_t)a1 descriptorIdentifier:(char *)a2 role:.cold.1(uint64_t a1, char *a2)
{
  v4 = MEMORY[0x1E696AEC0];
  PFPosterRolesSupportedForCurrentDeviceClass();
  v14 = v13 = a1;
  v5 = [v4 stringWithFormat:@"invalid role: %@, supported roles for device class: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_11_0();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryServerPathForProvider:(char *)a1 descriptorIdentifier:role:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"provider", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)ensureScratchURLIsReachableAndReturnError:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_5_3(&dword_1C269D000, v0, v1, "unable to setup scratch url=%{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)ensureScratchURLIsReachableAndReturnError:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_5_3(&dword_1C269D000, v0, v1, "unable to setup scratch snapshot cache url=%{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)ensureScratchURLIsReachableAndReturnError:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_5_3(&dword_1C269D000, v0, v1, "unable to setup scratch url to be excluded from backup=%{public}@: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end