@interface PFPosterPath
+ (id)debugDescription;
+ (id)temporaryDescriptorPathWithIdentifier:(id)a3 role:(id)a4;
+ (id)temporaryPathForRole:(id)a3;
+ (id)temporaryPathForTask:(id)a3 role:(id)a4;
+ (id)temporaryPathForURL:(id)a3 role:(id)a4;
+ (uint64_t)_reportSandboxExtensionError:(uint64_t)a3 withCode:(void *)a4 reason:(uint64_t)a5;
- (BOOL)_isPersistable;
- (BOOL)copyContentsOfPath:(id)a3 error:(id *)a4;
- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)a3;
- (BOOL)storeUserInfo:(id)a3 error:(id *)a4;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)descriptorIdentifier;
- (NSString)role;
- (PFPosterPath)init;
- (PFPosterPath)initWithBSXPCCoder:(id)a3;
- (PFPosterPath)initWithCoder:(id)a3;
- (id)_issueSandboxExtensionTokenWithContext:(xpc_object_t)a1;
- (id)extendValidityForReason:(id)a3;
- (id)loadUserInfoWithError:(id *)a3;
- (int64_t)compareDescriptorIdentifiers:(id)a3;
- (uint64_t)_initDecodedWithContentsURL:(void *)a3 role:(void *)a4 serverIdentity:(void *)a5 descriptorIdentifier:(uint64_t)a6 sandboxExtensionHandle:;
- (uint64_t)_isEqualToPersistable:(uint64_t)a1;
- (uint64_t)_sandboxExtensionLevel;
- (unsigned)_lock_descriptionWithDebugInfo:(const os_unfair_lock *)a1;
- (void)_extendReadAccessForURL:(void *)a3 toAuditToken:(void *)a4 error:;
- (void)_initWithContentsURL:(void *)a3 role:(char)a4 options:(void *)a5 serverIdentity:(void *)a6 descriptorIdentifier:(uint64_t)a7 sandboxExtensionHandle:(void *)a8 sandboxExtensionURL:(void *)a9 sandboxExtensionAuditToken:;
- (void)_invalidate;
- (void)_lock_purgeIfPossible;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation PFPosterPath

- (NSString)descriptorIdentifier
{
  v3 = [(PFServerPosterIdentity *)self->_serverIdentity descriptorIdentifier];
  descriptorIdentifier = v3;
  if (!v3)
  {
    descriptorIdentifier = self->_descriptorIdentifier;
  }

  v5 = descriptorIdentifier;

  return descriptorIdentifier;
}

- (NSString)role
{
  v3 = [(PFServerPosterIdentity *)self->_serverIdentity role];
  role = v3;
  if (!v3)
  {
    role = self->_role;
  }

  v5 = role;

  return role;
}

- (PFPosterPath)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    v18 = self;
    v19 = 2114;
    v20 = @"PFPosterPath.m";
    v21 = 1024;
    v22 = 126;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)_initWithContentsURL:(void *)a3 role:(char)a4 options:(void *)a5 serverIdentity:(void *)a6 descriptorIdentifier:(uint64_t)a7 sandboxExtensionHandle:(void *)a8 sandboxExtensionURL:(void *)a9 sandboxExtensionAuditToken:
{
  v16 = a2;
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  if (!a1)
  {
LABEL_11:

    return;
  }

  v40.receiver = a1;
  v40.super_class = PFPosterPath;
  v22 = objc_msgSendSuper2(&v40, sel_init);
  if (v22)
  {
    v23 = v22;
    v24 = [v16 copy];
    v25 = *(v23 + 8);
    *(v23 + 8) = v24;

    *(v23 + 76) = a4;
    v26 = [v17 copy];
    v27 = *(v23 + 32);
    *(v23 + 32) = v26;

    v28 = [v18 copy];
    v29 = *(v23 + 16);
    *(v23 + 16) = v28;

    v30 = [v19 copy];
    v31 = *(v23 + 24);
    *(v23 + 24) = v30;

    *(v23 + 72) = 0;
    *(v23 + 64) = a7;
    v32 = [v20 copy];
    v33 = *(v23 + 48);
    *(v23 + 48) = v32;

    v34 = [v21 copy];
    v35 = *(v23 + 56);
    *(v23 + 56) = v34;

    if (*(v23 + 8))
    {
      os_unfair_lock_lock(&__allPathsLock);
      v36 = _MergedGlobals;
      if (!_MergedGlobals)
      {
        v37 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
        v38 = _MergedGlobals;
        _MergedGlobals = v37;

        v36 = _MergedGlobals;
      }

      [v36 addObject:v23];
      os_unfair_lock_unlock(&__allPathsLock);
    }

    if (*(v23 + 76))
    {
      v39 = PFLogPosterContents();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        [PFPosterPath _initWithContentsURL:v23 role:v39 options:? serverIdentity:? descriptorIdentifier:? sandboxExtensionHandle:? sandboxExtensionURL:? sandboxExtensionAuditToken:?];
      }
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [PFPosterPath _initWithContentsURL:? role:? options:? serverIdentity:? descriptorIdentifier:? sandboxExtensionHandle:? sandboxExtensionURL:? sandboxExtensionAuditToken:?];
  }

  __break(0);
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outstanding validityExtensions must be released before dealloc"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    v7 = 138544642;
    v8 = a1;
    OUTLINED_FUNCTION_1_3();
    v9 = @"PFPosterPath.m";
    v10 = 1024;
    v11 = 173;
    v12 = v5;
    v13 = v2;
    OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v7);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (uint64_t)_reportSandboxExtensionError:(uint64_t)a3 withCode:(void *)a4 reason:(uint64_t)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = objc_opt_self();
  if (![v11 length])
  {
    [PFPosterPath _reportSandboxExtensionError:? withCode:? reason:?];
  }

  v13 = NSStringFromClass(v12);
  v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:&a9];
  v15 = PFLogPosterContents();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v23 = v13;
    v24 = 2048;
    v25 = a3;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1C269D000, v15, OS_LOG_TYPE_ERROR, "SandboxExtensionError: domain=%{publid}@ code=%lli reason=%{public}@", buf, 0x20u);
  }

  if (a2)
  {
    v16 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v21 = v14;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    *a2 = [v16 errorWithDomain:v13 code:a3 userInfo:v17];
  }

  v18 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)_extendReadAccessForURL:(void *)a3 toAuditToken:(void *)a4 error:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (!v7)
    {
      [PFPosterPath _extendReadAccessForURL:? toAuditToken:? error:?];
    }

    if (v8 && [v8 isInvalid])
    {
      v14 = [PFPosterPath _reportSandboxExtensionError:a4 withCode:1 reason:@"cannot extend access of %@ with invalid auditToken %@", v10, v11, v12, v13, a1];
    }

    else
    {
      v15 = objc_alloc(objc_opt_class());
      [(PFPosterPath *)v15 _initWithContentsURL:a1[4] role:2 options:a1[2] serverIdentity:a1[3] descriptorIdentifier:-1 sandboxExtensionHandle:v7 sandboxExtensionURL:v9 sandboxExtensionAuditToken:?];
    }

    a1 = v14;
  }

  return a1;
}

uint64_t __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  v8 = [v7 unsignedIntegerValue];

  v9 = [*(a1 + 32) objectForKey:v6];
  v10 = [v9 unsignedIntegerValue];

  if (v8 == v10)
  {
    v11 = [v5 compare:v6];
  }

  else if (v8 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

id __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [v2 stringWithFormat:@"%@:%lu", v4, objc_msgSend(v5, "unsignedIntegerValue")];

  return v6;
}

+ (id)debugDescription
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&__allPathsLock);
  v3 = [MEMORY[0x1E695DFA8] set];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = [qword_1ED8486E8 objectEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v57 + 1) + 8 * i);
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = [v9 objectEnumerator];
        v11 = [v10 countByEnumeratingWithState:&v53 objects:v64 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v54;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v54 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v3 addObject:*(*(&v53 + 1) + 8 * j)];
            }

            v12 = [v10 countByEnumeratingWithState:&v53 objects:v64 count:16];
          }

          while (v12);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v6);
  }

  v15 = [v3 allObjects];
  v16 = [v15 sortedArrayUsingComparator:&__block_literal_global_83];

  v17 = [MEMORY[0x1E695DF70] array];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = _MergedGlobals;
  v19 = [v18 countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v49 + 1) + 8 * k);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 containsObject:v23] & 1) == 0)
        {
          [v17 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v49 objects:v63 count:16];
    }

    while (v20);
  }

  [v17 sortUsingComparator:&__block_literal_global_88];
  os_unfair_lock_unlock(&__allPathsLock);
  v24 = [MEMORY[0x1E696AD60] stringWithFormat:@"cachedServerPaths = %llu {", objc_msgSend(v16, "count")];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = v16;
  v26 = [v25 countByEnumeratingWithState:&v45 objects:v62 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v46;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v46 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v45 + 1) + 8 * m);
        [v24 appendString:@"\n\t"];
        v31 = [v30 debugDescription];
        [v24 appendString:v31];
      }

      v27 = [v25 countByEnumeratingWithState:&v45 objects:v62 count:16];
    }

    while (v27);
  }

  [v24 appendFormat:@"\n}\notherPaths = %llu {", objc_msgSend(v17, "count")];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v32 = v17;
  v33 = [v32 countByEnumeratingWithState:&v41 objects:v61 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v42;
    do
    {
      for (n = 0; n != v34; ++n)
      {
        if (*v42 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v41 + 1) + 8 * n);
        [v24 appendString:@"\n\t"];
        v38 = [v37 debugDescription];
        [v24 appendString:v38];
      }

      v34 = [v32 countByEnumeratingWithState:&v41 objects:v61 count:16];
    }

    while (v34);
  }

  [v24 appendString:@"\n}"];
  objc_autoreleasePoolPop(v2);
  v39 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t __32__PFPosterPath_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identity];
  v6 = [v4 identity];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __32__PFPosterPath_debugDescription__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 serverIdentity];
  v7 = [v5 serverIdentity];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
    v10 = -1;
    if (v4 >= v5)
    {
      v10 = 1;
    }

    if (v4 == v5)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    if (v6)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    if (!(v6 | v7))
    {
      v12 = [v4 contentsURL];
      v13 = [v12 absoluteString];
      v14 = [v5 contentsURL];
      v15 = [v14 absoluteString];
      v11 = [v13 compare:v15];

      if (!v11)
      {
        if (v4 == v5)
        {
          v11 = 0;
        }

        else if (v4 < v5)
        {
          v11 = -1;
        }

        else
        {
          v11 = 1;
        }
      }
    }
  }

  return v11;
}

+ (id)temporaryDescriptorPathWithIdentifier:(id)a3 role:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v8)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:a2 role:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:a2 role:?];
  }

  if ((PFPosterRoleIsValid(v7) & 1) == 0)
  {
    [PFPosterPath temporaryDescriptorPathWithIdentifier:v7 role:a2];
  }

  v9 = [PFPosterPath alloc];
  v10 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"com.apple.posterkit.provider.path.descriptor"];
  [(PFPosterPath *)v9 _initWithContentsURL:v10 role:v7 options:1 serverIdentity:0 descriptorIdentifier:v8 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v12 = v11;

  return v12;
}

+ (id)temporaryPathForRole:(id)a3
{
  v3 = a3;
  v4 = [PFPosterPath alloc];
  v5 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:@"com.apple.posterkit.provider.path.generic"];
  [(PFPosterPath *)v4 _initWithContentsURL:v5 role:v3 options:1 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v7 = v6;

  return v7;
}

+ (id)temporaryPathForTask:(id)a3 role:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ((PFPosterRoleIsValid(v7) & 1) == 0)
  {
    [PFPosterPath temporaryPathForTask:v7 role:a2];
  }

  if (![(__CFString *)v6 length])
  {

    v6 = @"com.apple.posterkit.provider.path.task";
  }

  v8 = [PFPosterPath alloc];
  v9 = [MEMORY[0x1E695DFF8] pf_temporaryDirectoryURLWithBasenamePrefix:v6];
  [(PFPosterPath *)v8 _initWithContentsURL:v9 role:v7 options:1 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v11 = v10;

  return v11;
}

+ (id)temporaryPathForURL:(id)a3 role:(id)a4
{
  v5 = a4;
  v6 = a3;
  [[PFPosterPath alloc] _initWithContentsURL:v6 role:v5 options:0 serverIdentity:0 descriptorIdentifier:0 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  v8 = v7;

  return v8;
}

- (BOOL)copyContentsOfPath:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 role];
  v9 = [PFPosterPath temporaryPathForRole:v8];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__PFPosterPath_copyContentsOfPath_error___block_invoke;
  v21[3] = &unk_1E818A328;
  v10 = v7;
  v22 = v10;
  v11 = MEMORY[0x1C691C400](v21);
  v12 = v11[2];
  v20 = 0;
  v13 = v12(v11, v6, v9, &v20);
  v14 = v20;
  v15 = v14;
  if (v13 && !v14)
  {
    v19 = 0;
    LOBYTE(v13) = (v11[2])(v11, v6, self, &v19);
    v15 = v19;
  }

  [v9 invalidate];
  if (a4 && v15)
  {
    v16 = v15;
    *a4 = v15;
  }

  if (v15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  return v17;
}

uint64_t __41__PFPosterPath_copyContentsOfPath_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a4;
  v49 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v33 = a3;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__6;
  v44 = __Block_byref_object_dispose__6;
  v45 = 0;
  v7 = *(a1 + 32);
  v32 = v6;
  v8 = [v6 contentsURL];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __41__PFPosterPath_copyContentsOfPath_error___block_invoke_123;
  v39[3] = &unk_1E818A300;
  v39[4] = &v40;
  v9 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:17 errorHandler:v39];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v11)
  {
    v12 = *v36;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if (v41[5])
        {
          goto LABEL_18;
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = MEMORY[0x1E695DFF8];
        v16 = [v14 relativePath];
        v17 = [v33 contentsURL];
        v18 = [v15 fileURLWithPath:v16 relativeToURL:v17];
        v19 = [v18 absoluteURL];

        if ([v19 checkResourceIsReachableAndReturnError:0])
        {
          [*(a1 + 32) removeItemAtURL:v19 error:0];
        }

        v20 = *(a1 + 32);
        v34 = 0;
        v21 = [v20 copyItemAtURL:v14 toURL:v19 error:{&v34, v31}];
        v22 = v34;
        v23 = v22;
        if ((v21 & 1) == 0)
        {
          if (v22)
          {
            v25 = v22;
            *v31 = v23;
          }

          else
          {
            v26 = MEMORY[0x1E696ABC0];
            v46 = *MEMORY[0x1E696A588];
            v47 = @"Unable to copy files";
            v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
            v28 = [v26 pf_errorWithCode:1 userInfo:v27];
            *v31 = v28;
          }

LABEL_18:
          v24 = 0;
          goto LABEL_19;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v35 objects:v48 count:16];
      v24 = 1;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v24 = 1;
  }

LABEL_19:

  _Block_object_dispose(&v40, 8);
  v29 = *MEMORY[0x1E69E9840];
  return v24;
}

- (BOOL)ensureContentsURLIsReachableAndReturnError:(id *)a3
{
  v5 = objc_opt_new();
  contentsURL = self->_contentsURL;
  v16 = 0;
  v7 = [(NSURL *)contentsURL checkResourceIsReachableAndReturnError:&v16];
  v8 = v16;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v10 = self->_contentsURL;
    v11 = PFPosterPathFileAttributes();
    v15 = 0;
    v9 = [v5 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:v11 error:&v15];
    v12 = v15;

    if ((v9 & 1) == 0 && a3)
    {
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v13 = v8;
      }

      *a3 = v13;
    }
  }

  return v9;
}

- (int64_t)compareDescriptorIdentifiers:(id)a3
{
  v4 = [a3 descriptorIdentifier];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F425B6D8;
  }

  v7 = [(PFPosterPath *)self descriptorIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F425B6D8;
  }

  v10 = [(__CFString *)v6 compare:v9];

  return v10;
}

- (id)loadUserInfoWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  userInfo = v4->_userInfo;
  if (userInfo)
  {
    v6 = userInfo;
  }

  else
  {
    v7 = [(NSURL *)v4->_contentsURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];
    v8 = [v7 pf_loadFromPlistWithError:a3];
    v9 = objc_opt_class();
    v10 = v8;
    if (v9)
    {
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = v4->_userInfo;
    v4->_userInfo = v12;

    v6 = v4->_userInfo;
  }

  objc_sync_exit(v4);

  return v6;
}

- (BOOL)storeUserInfo:(id)a3 error:(id *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    NSClassFromString(&cfstr_Nsdictionary.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PFPosterPath storeUserInfo:a2 error:?];
    }
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSURL *)v8->_contentsURL URLByAppendingPathComponent:@"com.apple.posterkit.provider.contents.userInfo" isDirectory:0];
  if (v7)
  {
    if (-[PFPosterPath ensureContentsURLIsReachableAndReturnError:](v8, "ensureContentsURLIsReachableAndReturnError:", a4) && [v9 pf_storeToPlist:v7 error:a4])
    {
      v10 = [v7 copy];
      userInfo = v8->_userInfo;
      v8->_userInfo = v10;

      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    v13 = objc_opt_new();
    v12 = [v13 removeItemAtURL:v9 error:a4];

    v14 = v8->_userInfo;
    v8->_userInfo = 0;

    v15 = PFLogPosterContents();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v16 = *a4;
      }

      else
      {
        v16 = 0;
      }

      v19[0] = 67240706;
      v19[1] = v12;
      v20 = 2114;
      v21 = v16;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_1C269D000, v15, OS_LOG_TYPE_DEFAULT, "erasing userInfo: %{public}i %{public}@ (path=%@)", v19, 0x1Cu);
    }
  }

  objc_sync_exit(v8);
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)extendValidityForReason:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_validityExtensions = self->_lock_validityExtensions;
  if (self->_lock_invalidated && lock_validityExtensions == 0)
  {
    [(PFPosterPath *)self extendValidityForReason:a2];
  }

  if (lock_validityExtensions == 255)
  {
    [(PFPosterPath *)self extendValidityForReason:a2];
  }

  if (self->_lock_sandboxExtensionHandle == -1 && (self->_options & 3) == 2)
  {
    v12 = 0;
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E698E778]);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __40__PFPosterPath_extendValidityForReason___block_invoke;
    v18[3] = &unk_1E818A350;
    v18[4] = self;
    v18[5] = a2;
    v12 = [v9 initWithIdentifier:v11 forReason:v5 invalidationBlock:v18];

    v13 = self->_lock_validityExtensions + 1;
    self->_lock_validityExtensions = v13;
    if (self->_lock_validityExtensionsHigh < v13)
    {
      self->_lock_validityExtensionsHigh = v13;
    }

    lock_allExtensions = self->_lock_allExtensions;
    if (!lock_allExtensions)
    {
      v15 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
      v16 = self->_lock_allExtensions;
      self->_lock_allExtensions = v15;

      lock_allExtensions = self->_lock_allExtensions;
    }

    [(NSHashTable *)lock_allExtensions addObject:v12];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

void __40__PFPosterPath_extendValidityForReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 72));
  if (!*(*(a1 + 32) + 77))
  {
    __40__PFPosterPath_extendValidityForReason___block_invoke_cold_2(*(a1 + 32), a1, (a1 + 32));
  }

  __40__PFPosterPath_extendValidityForReason___block_invoke_cold_1(*(*(a1 + 32) + 77), (*(a1 + 32) + 77), (a1 + 32), v3);
}

- (uint64_t)_sandboxExtensionLevel
{
  if (a1)
  {
    return *MEMORY[0x1E69E9BA8];
  }

  else
  {
    return 0;
  }
}

- (PFPosterPath)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    [(PFPosterPath *)v4 initWithBSXPCCoder:&v9, &v10];
    v6 = v9;
    v7 = v10;
  }

  else
  {
    [(PFPosterPath *)self initWithBSXPCCoder:?];
    v7 = 0;
    v6 = v10;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(PFPosterPath *)self encodeWithCoder:v5, a2];
  }

  [(PFPosterPath *)self encodeWithCoder:v5];
}

- (PFPosterPath)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || v5 == objc_opt_class())
  {
    [(PFPosterPath *)v4 initWithCoder:&v9, &v10];
    v6 = v9;
    v7 = v10;
  }

  else
  {
    [(PFPosterPath *)self initWithBSXPCCoder:?];
    v7 = 0;
    v6 = v10;
  }

  return v7;
}

- (void)invalidate
{
  if ((self->_options & 2) == 0)
  {
    [(PFPosterPath *)self _invalidate];
  }
}

- (void)_invalidate
{
  if (a1)
  {
    v2 = OUTLINED_FUNCTION_12_0(a1);
    os_unfair_lock_lock(v2);
    if ((*(v1 + 79) & 1) == 0)
    {
      *(v1 + 79) = 1;
      [(PFPosterPath *)v1 _lock_purgeIfPossible];
    }

    os_unfair_lock_unlock((v1 + 72));
  }
}

- (void)_lock_purgeIfPossible
{
  v32 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_32;
  }

  v2 = OUTLINED_FUNCTION_12_0(a1);
  os_unfair_lock_assert_owner(v2);
  if ((*(v1 + 80) & 1) != 0 || *(v1 + 79) != 1 || *(v1 + 77))
  {
    goto LABEL_32;
  }

  *(v1 + 80) = 1;
  if (*(v1 + 64) != -1)
  {
    *__error() = 0;
    v3 = *(v1 + 64);
    if (sandbox_extension_release())
    {
      v4 = __error();
      strerror_r(*v4, __strerrbuf, 0x100uLL);
      v5 = PFLogPosterContents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *__error();
        v7 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
        *buf = 67109634;
        v23 = v6;
        v24 = 2082;
        v25 = __strerrbuf;
        v26 = 2114;
        v27 = v7;
        _os_log_error_impl(&dword_1C269D000, v5, OS_LOG_TYPE_ERROR, "failed to release sandboxExtensionHandle with errno=%i (%{public}s) : %{public}@", buf, 0x1Cu);
LABEL_36:
      }
    }

    else
    {
      v5 = PFLogPosterContents();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
        *__strerrbuf = 138543362;
        v29 = v7;
        _os_log_debug_impl(&dword_1C269D000, v5, OS_LOG_TYPE_DEBUG, "released sandboxExtensionHandle : %{public}@", __strerrbuf, 0xCu);
        goto LABEL_36;
      }
    }
  }

  if ((*(v1 + 76) & 1) == 0)
  {
    goto LABEL_18;
  }

  v8 = objc_opt_new();
  v9 = *(v1 + 8);
  v21 = 0;
  v10 = [v8 removeItemAtURL:v9 error:&v21];
  v11 = v21;

  v12 = PFLogPosterContents();
  v13 = v12;
  if (!v10 || v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
      *__strerrbuf = 138543618;
      v29 = v11;
      v30 = 2114;
      v31 = v14;
      _os_log_error_impl(&dword_1C269D000, v13, OS_LOG_TYPE_ERROR, "failed to purge contents with error=%{public}@ : contents=%{public}@", __strerrbuf, 0x16u);
      goto LABEL_34;
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = [(PFPosterPath *)v1 _lock_descriptionWithDebugInfo:?];
    *__strerrbuf = 138543362;
    v29 = v14;
    _os_log_debug_impl(&dword_1C269D000, v13, OS_LOG_TYPE_DEBUG, "purged contents : %{public}@", __strerrbuf, 0xCu);
LABEL_34:
  }

LABEL_18:
  if (*(v1 + 8))
  {
    os_unfair_lock_lock(&__allPathsLock);
    v15 = [_MergedGlobals member:v1];
    v16 = v15;
    if (v15 == v1 || !v15)
    {
      [_MergedGlobals removeObject:v1];
    }

    os_unfair_lock_unlock(&__allPathsLock);
    if (*(v1 + 16))
    {
      os_unfair_lock_lock(&__cachedServerPathsByIdentityByURLLock);
      v17 = [qword_1ED8486E8 objectForKey:*(v1 + 8)];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 objectForKey:*(v1 + 16)];

        if (v19 == v1 || !v19)
        {
          [v18 removeObjectForKey:*(v1 + 16)];
        }

        if (![v18 count])
        {
          [qword_1ED8486E8 removeObjectForKey:*(v1 + 8)];
        }
      }

      else
      {
        v19 = v16;
      }

      os_unfair_lock_unlock(&__cachedServerPathsByIdentityByURLLock);

      v16 = v19;
    }
  }

LABEL_32:
  v20 = *MEMORY[0x1E69E9840];
}

- (unsigned)_lock_descriptionWithDebugInfo:(const os_unfair_lock *)a1
{
  v2 = a1;
  v51 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_28;
  }

  os_unfair_lock_assert_owner(a1 + 18);
  v4 = &stru_1F425B6D8;
  if (v2[80])
  {
    v5 = @":purged";
  }

  else
  {
    v5 = &stru_1F425B6D8;
  }

  v6 = v5;
  v7 = &stru_1F425B6D8;
  if (a2)
  {
    if (*(v2 + 8) == -1)
    {
      if (!*(v2 + 6))
      {
        v7 = &stru_1F425B6D8;
LABEL_9:
        if (v2[78])
        {
          v40 = v7;
          v41 = v6;
          v8 = [MEMORY[0x1E695DF90] dictionary];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v9 = *(v2 + 5);
          v10 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v47;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v47 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [*(*(&v46 + 1) + 8 * i) reason];
                v15 = MEMORY[0x1E696AD98];
                v16 = [v8 objectForKey:v14];
                v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "unsignedIntegerValue") + 1}];
                [v8 setObject:v17 forKey:v14];
              }

              v11 = [v9 countByEnumeratingWithState:&v46 objects:v50 count:16];
            }

            while (v11);
          }

          v18 = [v8 allKeys];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke;
          v44[3] = &unk_1E818A270;
          v19 = v8;
          v45 = v19;
          v20 = [v18 sortedArrayUsingComparator:v44];

          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __47__PFPosterPath__lock_descriptionWithDebugInfo___block_invoke_2;
          v42[3] = &unk_1E818A298;
          v43 = v19;
          v21 = v19;
          v22 = [v20 bs_map:v42];
          v23 = MEMORY[0x1E696AD60];
          v24 = v2[77];
          v25 = v2[78];
          v26 = [v22 componentsJoinedByString:{@", "}];
          v4 = [v23 stringWithFormat:@" eCount=%u(%u) eReasons=%@", v24, v25, v26];

          v7 = v40;
          v6 = v41;
        }

        goto LABEL_18;
      }

      v35 = *(v2 + 7);
      if (v35)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@" sURL=%@ sDest=%@", *(v2 + 6), v35];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@" sURL=%@", *(v2 + 6), v38];
      }
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@" sHandle=%lli", *(v2 + 8), v38];
    }
    v7 = ;
    goto LABEL_9;
  }

LABEL_18:
  if (*(v2 + 2))
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v2 = [v27 stringWithFormat:@"<%@:%p%@ %@%@%@>", v29, v2, v6, *(v2 + 2), v7, v4];
  }

  else
  {
    v29 = [v2 descriptorIdentifier];
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    v33 = *(v2 + 4);
    v34 = [*(v2 + 1) fileSystemRepresentation];
    if (v29)
    {
      [v30 stringWithFormat:@"<%@:%p%@ descriptor='%@' role='%@' contents='%s'%@%@>", v32, v2, v6, v29, v33, v34, v7, v4];
    }

    else
    {
      [v30 stringWithFormat:@"<%@:%p%@ role='%@' contents='%s'%@%@>", v32, v2, v6, v33, v34, v7, v4, v39];
    }
    v2 = ;
  }

LABEL_28:
  v36 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)_isPersistable
{
  if (!a1 || !*(a1 + 8) || !*(a1 + 16) || *(a1 + 76) != 2 || *(a1 + 48) || *(a1 + 56))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 72));
  v2 = (*(a1 + 79) & 1) == 0 && (*(a1 + 80) & 1) == 0 && *(a1 + 64) == -1;
  os_unfair_lock_unlock((a1 + 72));
  return v2;
}

- (uint64_t)_isEqualToPersistable:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    if (![(PFPosterPath *)a1 _isPersistable])
    {
      goto LABEL_10;
    }

    if (a1 == v3)
    {
      a1 = 1;
      goto LABEL_11;
    }

    if (![(PFPosterPath *)v3 _isPersistable])
    {
LABEL_10:
      a1 = 0;
      goto LABEL_11;
    }

    v4 = [a1 contentsURL];
    v5 = [v3 contentsURL];
    if (BSEqualObjects())
    {
      v6 = [a1 role];
      v7 = [v3 role];
      if (BSEqualObjects())
      {
        v8 = [a1 serverIdentity];
        v9 = [v3 serverIdentity];
        if (BSEqualObjects())
        {
          v10 = [a1 descriptorIdentifier];
          v11 = [v3 descriptorIdentifier];
          a1 = BSEqualObjects();
        }

        else
        {
          a1 = 0;
        }
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }
  }

LABEL_11:

  return a1;
}

- (uint64_t)_initDecodedWithContentsURL:(void *)a3 role:(void *)a4 serverIdentity:(void *)a5 descriptorIdentifier:(uint64_t)a6 sandboxExtensionHandle:
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (!a1)
  {
    goto LABEL_19;
  }

  v15 = objc_opt_class();
  if ((PFPosterRoleIsValid(v12) & 1) == 0)
  {
    OUTLINED_FUNCTION_4_3();
    [(PFPosterPath *)v28 _initWithContentsURL:v29 role:v30 options:v31 serverIdentity:v32 descriptorIdentifier:v33 sandboxExtensionHandle:a6 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
    v27 = v34;
    [(PFPosterPath *)v34 _invalidate];
    v35 = PFLogPosterContents();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = PFPosterRolesSupportedForCurrentDeviceClass();
      *buf = 138543618;
      v39 = v12;
      v40 = 2114;
      v41 = v36;
      _os_log_error_impl(&dword_1C269D000, v35, OS_LOG_TYPE_ERROR, "Failed to decode PFPosterPath with invalid role: %{public}@, supported roles for device class: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  if (v15 != objc_opt_class())
  {
    if (!v13)
    {
      v16 = OUTLINED_FUNCTION_10_1();
      v20 = 0;
      v21 = v14;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  if (!v13 || v14)
  {
LABEL_14:
    [(PFPosterPath *)a1 _initWithContentsURL:v12 role:2 options:0 serverIdentity:0 descriptorIdentifier:a6 sandboxExtensionHandle:0 sandboxExtensionURL:0 sandboxExtensionAuditToken:?];
    v27 = v26;
    [(PFPosterPath *)v26 _invalidate];
LABEL_18:

LABEL_19:
    v23 = 0;
    goto LABEL_12;
  }

  if (a6 == -1)
  {
    v23 = [PFServerPosterPath _cachedPathWithContentsURL:v11 identity:v13 allocedInstance:a1];

    goto LABEL_12;
  }

  v16 = OUTLINED_FUNCTION_10_1();
  v20 = v13;
  v21 = 0;
LABEL_11:
  [(PFPosterPath *)v16 _initWithContentsURL:v17 role:v18 options:v19 serverIdentity:v20 descriptorIdentifier:v21 sandboxExtensionHandle:a6 sandboxExtensionURL:0 sandboxExtensionAuditToken:v37];
  v23 = v22;
LABEL_12:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_issueSandboxExtensionTokenWithContext:(xpc_object_t)a1
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 6))
    {
      *__error() = 0;
      v4 = *MEMORY[0x1E69E9BA8];
      v5 = *(a1 + 7);
      [*(a1 + 6) fileSystemRepresentation];
      v6 = *MEMORY[0x1E69E9BE0];
      if (v5)
      {
        v7 = *(a1 + 7);
        if (v7)
        {
          [v7 realToken];
        }

        else
        {
          *__strerrbuf = 0u;
          v21 = 0u;
        }

        v9 = sandbox_extension_issue_file_to_process();
      }

      else
      {
        v8 = *MEMORY[0x1E69E9BE0];
        v9 = sandbox_extension_issue_file();
      }

      v10 = v9;
      if (v9)
      {
        a1 = xpc_string_create(v9);
        free(v10);
        goto LABEL_13;
      }

      v11 = __error();
      strerror_r(*v11, __strerrbuf, 0x100uLL);
      v19 = *__error();
      v16 = [PFPosterPath _reportSandboxExtensionError:2 withCode:@"%@: cannot extend access of %@ due to sandbox errno=%i (%s)" reason:v12, v13, v14, v15, v3];
    }

    a1 = 0;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];

  return a1;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 encodeObject:self->_contentsURL forKey:@"c"];
  [v4 encodeObject:self->_serverIdentity forKey:@"i"];
  [v4 encodeObject:self->_descriptorIdentifier forKey:@"d"];
  [v4 encodeObject:self->_role forKey:@"r"];
  v5 = [(PFPosterPath *)self _issueSandboxExtensionTokenWithContext:?];
  if (v5)
  {
    [v4 encodeXPCObject:v5 forKey:@"t"];
    v6 = PFLogPosterContents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_13(&dword_1C269D000, v8, v9, "created and bsxpc encoded sandboxToken %@ : %@", v10, v11, v12, v13, v14);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = OUTLINED_FUNCTION_12_0(self);
  os_unfair_lock_lock(v3);
  v4 = [(PFPosterPath *)v2 _lock_descriptionWithDebugInfo:?];
  os_unfair_lock_unlock(&v2[18]);

  return v4;
}

- (NSString)debugDescription
{
  v3 = OUTLINED_FUNCTION_12_0(self);
  os_unfair_lock_lock(v3);
  v4 = [(PFPosterPath *)v2 _lock_descriptionWithDebugInfo:?];
  os_unfair_lock_unlock(&v2[18]);

  return v4;
}

- (void)_initWithContentsURL:(uint64_t)a1 role:(NSObject *)a2 options:serverIdentity:descriptorIdentifier:sandboxExtensionHandle:sandboxExtensionURL:sandboxExtensionAuditToken:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1C269D000, a2, OS_LOG_TYPE_DEBUG, "created purgeable contents=%{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initWithContentsURL:(const char *)a1 role:options:serverIdentity:descriptorIdentifier:sandboxExtensionHandle:sandboxExtensionURL:sandboxExtensionAuditToken:.cold.2(const char *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromSelector(a1);
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v5 = 138413314;
  v6 = v1;
  v7 = 2112;
  v8 = v3;
  v9 = 2048;
  v10 = 0;
  v11 = 2112;
  v12 = @"PFPosterPath.m";
  v13 = 1024;
  v14 = 163;
  _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %@ of <%@:%p> (%@:%i)", &v5, 0x30u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_reportSandboxExtensionError:(char *)a1 withCode:reason:.cold.1(char *a1)
{
  v2 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromSelector(a1);
  v3 = [v2 stringWithFormat:@"bad format string for %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_11_0();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, v11, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_extendReadAccessForURL:(char *)a1 toAuditToken:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"extensionURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryDescriptorPathWithIdentifier:(char *)a1 role:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)temporaryDescriptorPathWithIdentifier:(uint64_t)a1 role:(char *)a2 .cold.2(uint64_t a1, char *a2)
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

+ (void)temporaryDescriptorPathWithIdentifier:(char *)a1 role:.cold.3(char *a1)
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

+ (void)temporaryPathForTask:(uint64_t)a1 role:(char *)a2 .cold.1(uint64_t a1, char *a2)
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

- (void)storeUserInfo:(char *)a1 error:.cold.1(char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSDictionaryClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)extendValidityForReason:(const os_unfair_lock *)a1 .cold.1(const os_unfair_lock *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v4 = [v3 stringWithFormat:@"validity overflow of %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_11_0();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)extendValidityForReason:(const os_unfair_lock *)a1 .cold.2(const os_unfair_lock *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v4 = [v3 stringWithFormat:@"cannot extend validity after invalidation of %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_11_0();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __40__PFPosterPath_extendValidityForReason___block_invoke_cold_1(char a1, _BYTE *a2, uint64_t *a3, void *a4)
{
  *a2 = a1 - 1;
  [*(*a3 + 40) removeObject:a4];
  if (![*(*a3 + 40) count])
  {
    v5 = *(*a3 + 40);
    *(*a3 + 40) = 0;
  }

  [(PFPosterPath *)*a3 _lock_purgeIfPossible];
  os_unfair_lock_unlock((*a3 + 72));
}

void __40__PFPosterPath_extendValidityForReason___block_invoke_cold_2(const os_unfair_lock *a1, uint64_t a2, uint64_t *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v15 = [(PFPosterPath *)a1 _lock_descriptionWithDebugInfo:?];
  v6 = [v5 stringWithFormat:@"validity underflow of %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(*(a2 + 40));
    v8 = *a3;
    v9 = objc_opt_class();
    v17 = NSStringFromClass(v9);
    v18 = *a3;
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v10, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, v12, v13, v14, v15, v16, 2u);
  }

  [v6 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithBSXPCCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_4_3();
  [(PFPosterPath *)v3 _initWithContentsURL:v4 role:v5 options:v6 serverIdentity:v7 descriptorIdentifier:v8 sandboxExtensionHandle:-1 sandboxExtensionURL:0 sandboxExtensionAuditToken:0];
  *a2 = v9;

  [(PFPosterPath *)v9 _invalidate];
}

- (void)initWithBSXPCCoder:(void *)a3 .cold.2(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  *a3 = v8;
  v18 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v9 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  v11 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"t"];
  v12 = [v18 descriptorIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v9;
  }

  v15 = v14;

  v16 = objc_opt_class();
  v17 = _consumeSandboxExtensionHandleForXPCObject(v11, v15, v8, v16, @"bsxpc");
  *a4 = [(PFPosterPath *)a2 _initDecodedWithContentsURL:v8 role:v10 serverIdentity:v18 descriptorIdentifier:v9 sandboxExtensionHandle:v17];
}

- (BOOL)encodeWithCoder:(const char *)a3 .cold.1(uint64_t a1, uint64_t a2, const char *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  result = [(PFPosterPath *)a1 _isPersistable];
  if (!result)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v7 stringWithFormat:@"<%@:%p> can only be encoded by %@ rather than %@ : %@", v9, a1, v11, v13, a1];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = NSStringFromSelector(a3);
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v19 = 138544642;
      v20 = v15;
      v21 = 2114;
      v22 = v17;
      v23 = 2048;
      v24 = a1;
      v25 = 2114;
      v26 = @"PFPosterPath.m";
      v27 = 1024;
      v28 = 875;
      v29 = 2114;
      v30 = v14;
      OUTLINED_FUNCTION_3_0(&dword_1C269D000, MEMORY[0x1E69E9C10], v18, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v19);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1C26E180CLL);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)encodeWithCoder:(void *)a1 .cold.2(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  [a2 encodeObject:a1[1] forKey:@"c"];
  [a2 encodeObject:a1[2] forKey:@"i"];
  [a2 encodeObject:a1[3] forKey:@"d"];
  [a2 encodeObject:a1[4] forKey:@"r"];
  v4 = [(PFPosterPath *)a1 _issueSandboxExtensionTokenWithContext:?];
  if (v4)
  {
    [a2 encodeXPCObject:v4 forKey:@"t"];
    v5 = PFLogPosterContents();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_9_1();
      OUTLINED_FUNCTION_13(&dword_1C269D000, v7, v8, "created and nsxpc encoded sandboxToken %@ : %@", v9, v10, v11, v12, v13);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a3 .cold.2(void *a1, void *a2, void *a3, uint64_t *a4)
{
  v8 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  *a3 = v8;
  v18 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
  v9 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v10 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"r"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [a1 decodeXPCObjectOfType:MEMORY[0x1E69E9F10] forKey:@"t"];
    v12 = [v18 descriptorIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v9;
    }

    v15 = v14;

    v16 = objc_opt_class();
    v17 = _consumeSandboxExtensionHandleForXPCObject(v11, v15, v8, v16, @"nsxpc");
  }

  else
  {
    v17 = -1;
  }

  *a4 = [(PFPosterPath *)a2 _initDecodedWithContentsURL:v8 role:v10 serverIdentity:v18 descriptorIdentifier:v9 sandboxExtensionHandle:v17];
}

@end