@interface FBScene(PRScene)
+ (id)_pr_createPosterSceneWithRole:()PRScene path:processIdentity:;
+ (id)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:;
+ (id)pr_createPosterSceneWithRole:()PRScene path:instance:;
+ (id)pr_createPosterSceneWithinCurrentProcessForRole:()PRScene path:;
- (uint64_t)pr_setupSceneExtensionsForSceneRole:()PRScene posterRole:;
- (void)pr_applyPosterPath:()PRScene toSettings:;
- (void)pr_updateWithPath:()PRScene inSettings:;
@end

@implementation FBScene(PRScene)

+ (id)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  pf_defaultInstanceIdentifier = a6;
  v15 = v12;
  NSClassFromString(&cfstr_Pfserverposter_0.isa);
  if (!v15)
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:a2 path:? extension:? instanceIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:a2 path:? extension:? instanceIdentifier:?];
  }

  if (v13)
  {
    goto LABEL_4;
  }

  v18 = MEMORY[0x1E6966CF8];
  v19 = objc_alloc(MEMORY[0x1E6966CE0]);
  v20 = MEMORY[0x1E696AE18];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __83__FBScene_PRScene__pr_createPosterSceneWithRole_path_extension_instanceIdentifier___block_invoke;
  v29[3] = &unk_1E7845898;
  v21 = v15;
  v30 = v21;
  v22 = [v20 predicateWithBlock:v29];
  v23 = [v19 initWithExtensionPointIdentifier:@"com.apple.posterkit.provider" predicate:v22];
  v24 = [v18 executeQuery:v23];

  if ([v24 count])
  {
    v25 = MEMORY[0x1E69C5158];
    firstObject = [v24 firstObject];
    v13 = [v25 extensionWithIdentity:firstObject];

    if (v13)
    {
LABEL_4:
      if (!pf_defaultInstanceIdentifier)
      {
        pf_defaultInstanceIdentifier = [MEMORY[0x1E696AFB0] pf_defaultInstanceIdentifier];
      }

      v16 = [objc_alloc(MEMORY[0x1E69C5160]) initWithExtension:v13 instanceIdentifier:pf_defaultInstanceIdentifier];
      v17 = [self pr_createPosterSceneWithRole:v11 path:v15 instance:v16];
      objc_setAssociatedObject(v17, "instance", v16, 1);

      goto LABEL_16;
    }
  }

  else
  {
    v27 = PRLogCommon();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [FBScene(PRScene) pr_createPosterSceneWithRole:v21 path:? extension:? instanceIdentifier:?];
    }
  }

  v13 = PRLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:v21 path:? extension:? instanceIdentifier:?];
  }

  v17 = 0;
LABEL_16:

  return v17;
}

+ (id)pr_createPosterSceneWithRole:()PRScene path:instance:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:a2 path:? instance:?];
  }

  if (!v10)
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:a2 path:? instance:?];
  }

  v12 = v11;
  if (!v11)
  {
    [FBScene(PRScene) pr_createPosterSceneWithRole:a2 path:? instance:?];
  }

  processIdentity = [v11 processIdentity];
  v14 = [self _pr_createPosterSceneWithRole:v9 path:v10 processIdentity:processIdentity];

  return v14;
}

+ (id)pr_createPosterSceneWithinCurrentProcessForRole:()PRScene path:
{
  v6 = MEMORY[0x1E69C75F0];
  v7 = a4;
  v8 = a3;
  identityOfCurrentProcess = [v6 identityOfCurrentProcess];
  v10 = [self _pr_createPosterSceneWithRole:v8 path:v7 processIdentity:identityOfCurrentProcess];

  return v10;
}

+ (id)_pr_createPosterSceneWithRole:()PRScene path:processIdentity:
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    [FBScene(PRScene) _pr_createPosterSceneWithRole:a2 path:? processIdentity:?];
  }

  if (!v10)
  {
    [FBScene(PRScene) _pr_createPosterSceneWithRole:a2 path:? processIdentity:?];
  }

  v12 = v11;
  if (!v11)
  {
    [FBScene(PRScene) _pr_createPosterSceneWithRole:a2 path:? processIdentity:?];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  pui_posterWorkspace = [MEMORY[0x1E699F7F8] pui_posterWorkspace];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke;
  v53[3] = &unk_1E7844268;
  v43 = uUIDString;
  v54 = v43;
  v44 = v12;
  v55 = v44;
  v16 = [pui_posterWorkspace pui_createScene:v53];

  role = [v10 role];
  [v16 pr_setupSceneExtensionsForSceneRole:v9 posterRole:role];

  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x3032000000;
  v51[3] = __Block_byref_object_copy__7;
  v51[4] = __Block_byref_object_dispose__7;
  v52 = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_434;
  v46[3] = &unk_1E7845910;
  v42 = v9;
  v47 = v42;
  v18 = v10;
  v48 = v18;
  v19 = v16;
  v49 = v19;
  v50 = v51;
  [v19 configureParameters:v46];
  v20 = objc_alloc(MEMORY[0x1E69635D0]);
  serverIdentity = [v18 serverIdentity];
  provider = [serverIdentity provider];
  v23 = [v20 initWithBundleIdentifier:provider error:0];

  infoDictionary = [v23 infoDictionary];
  entitlements = [v23 entitlements];
  serverIdentity2 = [v18 serverIdentity];
  provider2 = [serverIdentity2 provider];
  v27 = [provider2 componentsSeparatedByString:@"."];
  lastObject = [v27 lastObject];

  v29 = MEMORY[0x1E696AEC0];
  identifier = [v19 identifier];
  v31 = [identifier componentsSeparatedByString:@"-"];
  lastObject2 = [v31 lastObject];
  v33 = [v29 stringWithFormat:@"<%@: %p %@>", lastObject, self, lastObject2];;
  [v19 pui_setShortDescription:v33];

  if ([infoDictionary pf_wantsLocation])
  {
    v34 = 2;
  }

  else
  {
    v34 = 0;
  }

  v35 = [entitlements objectForKey:@"com.apple.posterkit.enhanced-memory-limits" ofClass:objc_opt_class()];
  bOOLValue = [v35 BOOLValue];
  v37 = objc_alloc(MEMORY[0x1E69C55A0]);
  bundleIdentifier = [v23 bundleIdentifier];
  v39 = [v37 initWithScene:v19 bundleIdentifier:bundleIdentifier processIdentity:v44 options:v34 | bOOLValue];

  [v19 pui_setPosterComponent:v39];
  v40 = v19;

  _Block_object_dispose(v51, 8);

  return v40;
}

- (void)pr_applyPosterPath:()PRScene toSettings:
{
  v7 = a3;
  v8 = a4;
  v9 = v7;
  NSClassFromString(&cfstr_Pfserverposter_0.isa);
  if (!v9)
  {
    [FBScene(PRScene) pr_applyPosterPath:a2 toSettings:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBScene(PRScene) pr_applyPosterPath:a2 toSettings:?];
  }

  v10 = v8;
  NSClassFromString(&cfstr_Fbsmutablescen.isa);
  if (!v10)
  {
    [FBScene(PRScene) pr_applyPosterPath:a2 toSettings:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [FBScene(PRScene) pr_applyPosterPath:a2 toSettings:?];
  }

  v20 = 0;
  v11 = [v9 extendContentsReadAccessToAuditToken:0 error:&v20];
  v12 = v20;
  if (!v11)
  {
    [(FBScene(PRScene) *)self pr_applyPosterPath:v12 toSettings:a2];
  }

  v13 = [PRPosterPathModelObjectCache modelObjectCacheForPath:v11];
  configuredProperties = [v13 configuredProperties];
  if (configuredProperties)
  {
    v15 = configuredProperties;
    v16 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v19 = 0;
  v15 = [PRPosterPathUtilities loadConfiguredPropertiesForPath:v11 error:&v19];
  v16 = v19;

  if (v16)
  {
    v13 = PRLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(FBScene(PRScene) *)v9 pr_applyPosterPath:v16 toSettings:v13];
    }

    goto LABEL_11;
  }

LABEL_12:
  [v10 pui_setPosterContents:v11];
  [v10 pr_setPosterConfiguredProperties:v15];
  titleStyleConfiguration = [v15 titleStyleConfiguration];
  [v10 pr_setPosterTitleStyleConfiguration:titleStyleConfiguration];

  ambientConfiguration = [v15 ambientConfiguration];
  [v10 pr_setPosterAmbientConfiguration:ambientConfiguration];

  [self pui_setPosterPath:v9];
}

- (void)pr_updateWithPath:()PRScene inSettings:
{
  v13 = a3;
  v7 = a4;
  pui_posterPath = [self pui_posterPath];
  serverIdentity = [pui_posterPath serverIdentity];
  posterUUID = [serverIdentity posterUUID];

  serverIdentity2 = [v13 serverIdentity];
  posterUUID2 = [serverIdentity2 posterUUID];

  if (([posterUUID isEqual:posterUUID2] & 1) == 0)
  {
    [FBScene(PRScene) pr_updateWithPath:a2 inSettings:?];
  }

  [self pr_applyPosterPath:v13 toSettings:v7];
}

- (uint64_t)pr_setupSceneExtensionsForSceneRole:()PRScene posterRole:
{
  v5 = a4;
  [self addExtension:objc_opt_class()];
  v6 = [v5 isEqual:*MEMORY[0x1E69C5208]];

  v7 = objc_opt_class();
  if (v6)
  {

    return [self addExtension:v7];
  }

  else
  {

    return [self removeExtension:v7];
  }
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:.cold.2(void *a1)
{
  v1 = [a1 serverIdentity];
  v2 = [v1 provider];
  OUTLINED_FUNCTION_4_2(&dword_1A8AA7000, v3, v4, "No poster providers were found for %{public}@", v5, v6, v7, v8, 2u);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:.cold.3(void *a1)
{
  v1 = [a1 serverIdentity];
  v2 = [v1 provider];
  OUTLINED_FUNCTION_4_2(&dword_1A8AA7000, v3, v4, "cannot create a scene without a provider %{public}@", v5, v6, v7, v8, 2u);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:extension:instanceIdentifier:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:instance:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"instance", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:instance:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)pr_createPosterSceneWithRole:()PRScene path:instance:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"role", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_pr_createPosterSceneWithRole:()PRScene path:processIdentity:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"identity", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_pr_createPosterSceneWithRole:()PRScene path:processIdentity:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"path", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_pr_createPosterSceneWithRole:()PRScene path:processIdentity:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"role", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:FBSMutableSceneSettingsClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8AA7000, log, OS_LOG_TYPE_ERROR, "Error loading configured properties for %@: %{public}@", &v3, 0x16u);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.4(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create path for scene settings of %@ : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a3);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, a2, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_applyPosterPath:()PRScene toSettings:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)pr_updateWithPath:()PRScene inSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"new path is not the same poster as the current path"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_1();
    v7 = @"PRSceneTypes.m";
    v8 = 1024;
    v9 = 520;
    v10 = v5;
    v11 = v2;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end