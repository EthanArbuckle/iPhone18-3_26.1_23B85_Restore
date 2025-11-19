@interface PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration
- (BOOL)isEqual:(id)a3;
- (PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration)initWithActiveConfiguration:(id)a3 transitionOverlayRenderId:(unint64_t)a4 transitionOverlayContextId:(unsigned int)a5;
- (PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration

- (PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration)initWithActiveConfiguration:(id)a3 transitionOverlayRenderId:(unint64_t)a4 transitionOverlayContextId:(unsigned int)a5
{
  v9 = a3;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!v9)
  {
    [PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration initWithActiveConfiguration:a2 transitionOverlayRenderId:? transitionOverlayContextId:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration initWithActiveConfiguration:a2 transitionOverlayRenderId:? transitionOverlayContextId:?];
  }

  v14.receiver = self;
  v14.super_class = PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration;
  v10 = [(PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [v9 _path];
    serverPosterPath = v10->_serverPosterPath;
    v10->_serverPosterPath = v11;

    v10->_transitionOverlayRenderId = a4;
    v10->_transitionOverlayContextId = a5;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  serverPosterPath = self->_serverPosterPath;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __77__PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration_isEqual___block_invoke;
  v21[3] = &unk_1E83A8D10;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendObject:serverPosterPath counterpart:v21];
  transitionOverlayRenderId = self->_transitionOverlayRenderId;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __77__PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration_isEqual___block_invoke_2;
  v19[3] = &unk_1E83A8C70;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendInt64:transitionOverlayRenderId counterpart:v19];
  transitionOverlayContextId = self->_transitionOverlayContextId;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration_isEqual___block_invoke_3;
  v17[3] = &unk_1E83A8C70;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendInt64:transitionOverlayContextId counterpart:v17];
  LOBYTE(transitionOverlayContextId) = [v5 isEqual];

  return transitionOverlayContextId;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_serverPosterPath];
  v5 = [v3 appendInt64:self->_transitionOverlayRenderId];
  v6 = [v3 appendInt64:self->_transitionOverlayContextId];
  v7 = [v3 hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:self->_serverPosterPath];
  v6 = [v4 initWithActiveConfiguration:v5 transitionOverlayRenderId:self->_transitionOverlayRenderId transitionOverlayContextId:self->_transitionOverlayContextId];

  return v6;
}

- (PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverPosterPath"];
  if (v5)
  {
    v6 = [v4 decodeUInt64ForKey:@"_transitionOverlayRenderId"];
    v7 = [v4 decodeUInt64ForKey:@"_transitionOverlayContextId"];
    v8 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v5];
    self = [(PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration *)self initWithActiveConfiguration:v8 transitionOverlayRenderId:v6 transitionOverlayContextId:v7];

    v9 = self;
  }

  else
  {
    v10 = PRUISLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration initWithBSXPCCoder:];
    }

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  serverPosterPath = self->_serverPosterPath;
  v9 = 0;
  v5 = a3;
  v6 = [(PFServerPosterPath *)serverPosterPath extendContentsReadAccessToAuditToken:0 error:&v9];
  v7 = v9;
  if (!v6)
  {
    v8 = PRUISLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration encodeWithBSXPCCoder:];
    }
  }

  [v5 encodeObject:v6 forKey:@"_serverPosterPath"];
  [v5 encodeUInt64:self->_transitionOverlayRenderId forKey:@"_transitionOverlayRenderId"];
  [v5 encodeUInt64:self->_transitionOverlayContextId forKey:@"_transitionOverlayContextId"];
}

- (void)initWithActiveConfiguration:(char *)a1 transitionOverlayRenderId:transitionOverlayContextId:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithActiveConfiguration:(char *)a1 transitionOverlayRenderId:transitionOverlayContextId:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)encodeWithBSXPCCoder:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_fault_impl(&dword_1CAE63000, v0, OS_LOG_TYPE_FAULT, "PRUISModalEntryPointAmbientEditingSwitcherWithActiveConfiguration: could not obtain poster path with sandbox extension: %@", v1, 0xCu);
}

@end