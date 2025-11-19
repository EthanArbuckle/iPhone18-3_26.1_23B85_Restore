@interface RBContainerManager
- (BOOL)containerRequiredForServiceDict:(id)a3;
- (OptionalUID)_fetchCacheUIDChoice:(id)a3;
- (RBContainerManager)initWithPersonaManager:(id)a3;
- (id)_allowedContainerOverrideIdentifiers;
- (id)_lookupContainerPathForIdentity:(id)a3 context:(id)a4 persona:(id)a5 containerIdentifier:(id)a6 retry:(BOOL)a7 error:(id *)a8;
- (id)_retryLookupAfterCacheMissForIdentity:(id)a3 context:(id)a4 persona:(id)a5 containerIdentifier:(id)a6;
- (id)_sandboxContainerURLForExtensionContext:(id)a3 containerOverrideIdentifier:(id)a4;
- (id)containerPathForIdentity:(id)a3 context:(id)a4 persona:(id)a5 error:(id *)a6;
- (id)sandboxContainerURLForExtensionContext:(id)a3 containerOverrideIdentifier:(id)a4;
- (void)_fetchCache:(id)a3;
- (void)_probeCache:(const void *)a3 withContainerIdentifier:(id)a4 persona:(id)a5 completionHandler:(id)a6;
- (void)_probeCacheSubqueryIterationEvaluate:(container_object_s *)a3 withAccummulatedState:(ProbeCacheSubqueryIterationAccumulatedState *)a4;
- (void)dealloc;
@end

@implementation RBContainerManager

- (RBContainerManager)initWithPersonaManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RBContainerManager;
  v6 = [(RBContainerManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_personaManager, a3);
  }

  return v7;
}

- (OptionalUID)_fetchCacheUIDChoice:(id)a3
{
  if (xpc_user_sessions_enabled())
  {
    v4 = 0;
    return ((xpc_user_sessions_get_foreground_uid() << 32) | 1);
  }

  else
  {
    return 0;
  }
}

- (void)_fetchCache:(id)a3
{
  v4 = [(RBContainerManager *)self _fetchCacheUIDChoice:a3];
  v5 = *&v4.set;
  v6 = 0;
  v7 = HIDWORD(*&v4);
  set = self->_queryUID.set;
  if (set && v4.set)
  {
    v6 = self->_queryUID.uid != v4.uid;
  }

  if (v4.set != set || v6)
  {
    queryForApps = self->_queryForApps;
    container_query_free();
    self->_queryForApps = 0;
    queryForPlugins = self->_queryForPlugins;
    container_query_free();
    self->_queryForPlugins = 0;
    v12 = rbs_job_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Discarded container cache on UID change", v16, 2u);
    }
  }

  if (!self->_queryForApps)
  {
    self->_queryForApps = container_query_create();
    container_query_set_class();
    v13 = self->_queryForApps;
    container_query_operation_set_flags();
    v14 = self->_queryForApps;
    container_query_set_include_other_owners();
    if (v5)
    {
      v15 = self->_queryForApps;
      container_query_set_uid();
    }

    self->_queryUID.set = v5;
    *(&self->_queryUID.set + 3) = HIBYTE(v5);
    *(&self->_queryUID.set + 1) = v5 >> 8;
    self->_queryUID.uid = v7;
  }
}

- (id)_retryLookupAfterCacheMissForIdentity:(id)a3 context:(id)a4 persona:(id)a5 containerIdentifier:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [a5 UTF8String];
  container_query_create();
  container_query_set_class();
  container_query_operation_set_flags();
  container_query_set_include_other_owners();
  if (xpc_user_sessions_enabled())
  {
    *v25 = 0;
    xpc_user_sessions_get_foreground_uid();
    container_query_set_uid();
  }

  v14 = xpc_string_create([v12 UTF8String]);
  container_query_set_identifiers();
  if (v13)
  {
    container_query_set_persona_unique_string();
  }

  [v10 platform];
  container_query_operation_set_platform();
  if (container_query_get_single_result() && (path = container_get_path()) != 0)
  {
    v16 = path;
    queryForApps = self->_queryForApps;
    container_query_free();
    self->_queryForApps = 0;
    queryForPlugins = self->_queryForPlugins;
    container_query_free();
    self->_queryForPlugins = 0;
    v19 = rbs_job_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&dword_262485000, v19, OS_LOG_TYPE_DEFAULT, "Discarded container cache after retry", v25, 2u);
    }

    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
  }

  else
  {
    v21 = rbs_job_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v11 bundleIdentifier];
      *v25 = 138543874;
      *&v25[4] = v10;
      v26 = 2114;
      v27 = v12;
      v28 = 2114;
      v29 = v22;
      _os_log_impl(&dword_262485000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Container path could not be computed for identifier '%{public}@', will not be passed to launch of %{public}@", v25, 0x20u);
    }

    v20 = 0;
  }

  container_query_free();

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_probeCacheSubqueryIterationEvaluate:(container_object_s *)a3 withAccummulatedState:(ProbeCacheSubqueryIterationAccumulatedState *)a4
{
  v31[1] = *MEMORY[0x277D85DE8];
  ++a4->var2;
  if (a4->var0)
  {
LABEL_14:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  path = container_get_path();
  v6 = container_copy_sandbox_token();
  v7 = v6;
  if (!path || !v6)
  {
    if (!a4->var1)
    {
      v14 = "path";
      if (path)
      {
        v14 = "token";
      }

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container did not have a %s", v14];
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA5B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v15;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v19 = [v16 errorWithDomain:v17 code:22 userInfo:v18];

      var1 = a4->var1;
      a4->var1 = v19;
    }

    free(v7);
    goto LABEL_14;
  }

  v8 = sandbox_extension_consume();
  v9 = *__error();
  free(v7);
  if (v8 < 0)
  {
    if (!a4->var1)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Container token could not be consumed: errno %d", v9];
      v23 = MEMORY[0x277CCA9B8];
      v24 = *MEMORY[0x277CCA5B8];
      v30 = *MEMORY[0x277CCA450];
      v31[0] = v22;
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      v26 = [v23 errorWithDomain:v24 code:22 userInfo:v25];

      v27 = a4->var1;
      a4->var1 = v26;
    }

    goto LABEL_14;
  }

  if (!access(path, 0))
  {
    v11 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v11 stringWithFileSystemRepresentation:path length:strlen(path)];
    var0 = a4->var0;
    a4->var0 = v28;
    goto LABEL_18;
  }

  if (*__error() != 2 && !a4->var1)
  {
    v10 = *__error();
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"access test failed while computing process container path"];
    v12 = _posixErrorWithCodeAndDescription(v10, v11);
    var0 = a4->var1;
    a4->var1 = v12;
LABEL_18:
  }

  v29 = *MEMORY[0x277D85DE8];

  MEMORY[0x282204FA0](v8);
}

- (void)_probeCache:(const void *)a3 withContainerIdentifier:(id)a4 persona:(id)a5 completionHandler:(id)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a6;
  container_query_create();
  v11 = xpc_string_create([v8 UTF8String]);
  container_query_set_identifiers();
  if ([v9 UTF8String])
  {
    container_query_set_persona_unique_string();
  }

  v21 = 0;
  if ((container_query_iterate_results_with_subquery_sync() & 1) == 0)
  {
    container_query_get_last_error();
    v12 = container_error_copy_unlocalized_description();
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"container_query_iterate_results_with_subquery_sync failed. Container Manager error = %s", v12];
    v14 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA450];
    v23[0] = v13;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v13;
    v17 = [v15 dictionaryWithObjects:v23 forKeys:&v22 count:1];
    v18 = [v14 errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:v17];

    v21 = v18;
    free(v12);
  }

  container_query_free();
  if (v21)
  {

    v19 = v21;
  }

  else
  {
    v19 = 0;
  }

  v10[2](v10, 0, v19);

  v20 = *MEMORY[0x277D85DE8];
}

- (id)_lookupContainerPathForIdentity:(id)a3 context:(id)a4 persona:(id)a5 containerIdentifier:(id)a6 retry:(BOOL)a7 error:(id *)a8
{
  v9 = a7;
  v45 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v38 = 0;
  v39[0] = &v38;
  v39[1] = 0x3032000000;
  v39[2] = __Block_byref_object_copy__3;
  v39[3] = __Block_byref_object_dispose__3;
  v40 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  queryForApps = self->_queryForApps;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke;
  v31[3] = &unk_279B33730;
  v31[4] = &v32;
  v31[5] = &v38;
  [(RBContainerManager *)self _probeCache:queryForApps withContainerIdentifier:v17 persona:v16 completionHandler:v31];
  v19 = v39[0];
  if (!v33[5] && !*(v39[0] + 40) && self->_queryForPlugins)
  {
    v20 = rbs_job_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v42 = v14;
      v43 = 2114;
      v44 = v17;
      _os_log_impl(&dword_262485000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ Attempting lookup in plugin cache of container path for container identifier (%{public}@)", buf, 0x16u);
    }

    queryForPlugins = self->_queryForPlugins;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke_15;
    v30[3] = &unk_279B33730;
    v30[4] = &v32;
    v30[5] = &v38;
    [(RBContainerManager *)self _probeCache:queryForPlugins withContainerIdentifier:v17 persona:v16 completionHandler:v30];
    v19 = v39[0];
  }

  if (*(v19 + 40))
  {
    v22 = rbs_job_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager _lookupContainerPathForIdentity:v14 context:v39 persona:v22 containerIdentifier:? retry:? error:?];
    }

    v23 = 0;
    goto LABEL_11;
  }

  v28 = v33[5];
  if (v28)
  {
    v23 = v28;
    v22 = rbs_job_log();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 138543618;
    v42 = v14;
    v43 = 2114;
    v44 = v23;
    v29 = "%{public}@ Found container path (%{public}@)";
    goto LABEL_23;
  }

  if (!v9)
  {
    v23 = 0;
    if (!a8)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v23 = [(RBContainerManager *)self _retryLookupAfterCacheMissForIdentity:v14 context:v15 persona:v16 containerIdentifier:v17];
  v22 = rbs_job_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = v14;
    v43 = 2114;
    v44 = v23;
    v29 = "%{public}@ Found container path on retry (%{public}@)";
LABEL_23:
    _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
  }

LABEL_11:

  if (!a8)
  {
    goto LABEL_14;
  }

LABEL_12:
  v24 = *(v39[0] + 40);
  if (v24)
  {
    *a8 = v24;
  }

LABEL_14:
  v25 = v23;
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __102__RBContainerManager__lookupContainerPathForIdentity_context_persona_containerIdentifier_retry_error___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)containerPathForIdentity:(id)a3 context:(id)a4 persona:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 containerIdentifier];
  if (v13 || ([v11 bundleIdentifier], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = v13;
    v15 = rbs_job_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v28 = v10;
      v29 = 2114;
      v30 = *&v12;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Looking up container path with persona %{public}@ using container identifier '%{public}@'", buf, 0x20u);
    }

    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      if (v12 && [(RBPersonaManager *)self->_personaManager isConcretePersona:v12])
      {
        goto LABEL_13;
      }

      v16 = rbs_job_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v28 = v10;
        v29 = 2114;
        v30 = *&v12;
        _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Persona (%{public}@) for launch context is not a concrete persona - converting to Personal", buf, 0x16u);
      }

      v17 = [(RBPersonaManager *)self->_personaManager personalPersonaUniqueString];

      v12 = v17;
    }

    if (!v12)
    {
      v18 = 0;
      v19 = 0;
      if ([(RBPersonaManager *)self->_personaManager personasAreSupported])
      {
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_13:
    Current = CFAbsoluteTimeGetCurrent();
    [(RBContainerManager *)self _fetchCache:v11];
    v26 = 0;
    v19 = [(RBContainerManager *)self _lookupContainerPathForIdentity:v10 context:v11 persona:v12 containerIdentifier:v14 retry:1 error:&v26];
    v18 = v26;
    [(RBContainerManager *)self _clearCache];
    v21 = CFAbsoluteTimeGetCurrent();
    v22 = rbs_job_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v28 = "[RBContainerManager containerPathForIdentity:context:persona:error:]";
      v29 = 2048;
      v30 = v21 - Current;
      _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "%s: containermanager query required %f seconds wall clock time.", buf, 0x16u);
    }

    if (a6 && v18)
    {
      v23 = v18;
      *a6 = v18;
    }

    goto LABEL_18;
  }

  v14 = rbs_job_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v28 = v10;
    v29 = 2114;
    v30 = *&v12;
    _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Missing container identifier during container path look up, persona %{public}@", buf, 0x16u);
  }

  v19 = 0;
LABEL_19:

  v24 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_sandboxContainerURLForExtensionContext:(id)a3 containerOverrideIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RBContainerManager *)self _fetchCacheUIDChoice:v6];
  container_query_create();
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v10 = [v6 identity];
    v9 = [v10 xpcServiceIdentifier];
  }

  v11 = [v6 identity];
  v12 = [v11 personaString];

  if (v12)
  {
    v13 = [v6 identity];
    v14 = [v13 personaString];
    [v14 UTF8String];
    container_query_set_persona_unique_string();
  }

  v15 = xpc_string_create([v9 UTF8String]);
  container_query_set_identifiers();

  container_query_set_class();
  container_query_set_include_other_owners();
  container_query_operation_set_flags();
  dyld_get_active_platform();
  container_query_operation_set_platform();
  if (v8)
  {
    container_query_set_uid();
  }

  if (container_query_get_single_result())
  {
    v16 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
  }

  else
  {
    container_query_get_last_error();
    v17 = container_error_copy_unlocalized_description();
    v18 = rbs_job_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager _sandboxContainerURLForExtensionContext:v17 containerOverrideIdentifier:v18];
    }

    free(v17);
    v16 = 0;
  }

  container_query_free();

  return v16;
}

- (id)_allowedContainerOverrideIdentifiers
{
  if (_allowedContainerOverrideIdentifiers_onceToken != -1)
  {
    [RBContainerManager _allowedContainerOverrideIdentifiers];
  }

  v3 = _allowedContainerOverrideIdentifiers_allowed;

  return v3;
}

uint64_t __58__RBContainerManager__allowedContainerOverrideIdentifiers__block_invoke()
{
  _allowedContainerOverrideIdentifiers_allowed = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_28751B478];

  return MEMORY[0x2821F96F8]();
}

- (id)sandboxContainerURLForExtensionContext:(id)a3 containerOverrideIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && (-[RBContainerManager _allowedContainerOverrideIdentifiers](self, "_allowedContainerOverrideIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, (v9 & 1) == 0))
  {
    v11 = rbs_job_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RBContainerManager sandboxContainerURLForExtensionContext:v7 containerOverrideIdentifier:v11];
    }

    v10 = 0;
  }

  else
  {
    voucher_adopt();
    v10 = [(RBContainerManager *)self _sandboxContainerURLForExtensionContext:v6 containerOverrideIdentifier:v7];
  }

  return v10;
}

- (BOOL)containerRequiredForServiceDict:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_get_value(v3, "_SandboxContainer");
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = xpc_dictionary_get_value(v3, "_MultipleInstances");
    v5 = v6 == 0;
  }

  return v5;
}

- (void)dealloc
{
  queryForApps = self->_queryForApps;
  container_query_free();
  queryForPlugins = self->_queryForPlugins;
  container_query_free();
  v5.receiver = self;
  v5.super_class = RBContainerManager;
  [(RBContainerManager *)&v5 dealloc];
}

- (void)_fetchCacheUIDChoice:(unsigned int *)a1 .cold.1(unsigned int *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  xpc_strerror();
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_11(&dword_262485000, v2, v3, "xpc_user_sessions_get_foreground_uid() failed with error %d - %s", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_lookupContainerPathForIdentity:(os_log_t)log context:persona:containerIdentifier:retry:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(*a2 + 40);
  v5 = 138543618;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "%{public}@ Error during container manager lookup: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_sandboxContainerURLForExtensionContext:(uint64_t)a1 containerOverrideIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Failed to get container path; error = %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sandboxContainerURLForExtensionContext:(uint64_t)a1 containerOverrideIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "container-required entitlement value not allowed (%@) please use a group container instead", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end