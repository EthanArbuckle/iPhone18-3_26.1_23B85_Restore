@interface PRUISModalEntryPointEditHomeScreen
- (BOOL)isEqual:(id)equal;
- (PRUISModalEntryPointEditHomeScreen)initWithBSXPCCoder:(id)coder;
- (PRUISModalEntryPointEditHomeScreen)initWithServiceConfiguration:(id)configuration transitionOverlayRenderId:(unint64_t)id transitionOverlayContextId:(unsigned int)contextId;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation PRUISModalEntryPointEditHomeScreen

- (PRUISModalEntryPointEditHomeScreen)initWithServiceConfiguration:(id)configuration transitionOverlayRenderId:(unint64_t)id transitionOverlayContextId:(unsigned int)contextId
{
  configurationCopy = configuration;
  NSClassFromString(&cfstr_Prsposterconfi.isa);
  if (!configurationCopy)
  {
    [PRUISModalEntryPointEditHomeScreen initWithServiceConfiguration:a2 transitionOverlayRenderId:? transitionOverlayContextId:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRUISModalEntryPointEditHomeScreen initWithServiceConfiguration:a2 transitionOverlayRenderId:? transitionOverlayContextId:?];
  }

  v14.receiver = self;
  v14.super_class = PRUISModalEntryPointEditHomeScreen;
  v10 = [(PRUISModalEntryPointEditHomeScreen *)&v14 init];
  if (v10)
  {
    _path = [configurationCopy _path];
    serverPosterPath = v10->_serverPosterPath;
    v10->_serverPosterPath = _path;

    v10->_transitionOverlayRenderId = id;
    v10->_transitionOverlayContextId = contextId;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = equalCopy;
  serverPosterPath = self->_serverPosterPath;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__PRUISModalEntryPointEditHomeScreen_isEqual___block_invoke;
  v21[3] = &unk_1E83A8D10;
  v8 = v6;
  v22 = v8;
  v9 = [v5 appendObject:serverPosterPath counterpart:v21];
  transitionOverlayRenderId = self->_transitionOverlayRenderId;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __46__PRUISModalEntryPointEditHomeScreen_isEqual___block_invoke_2;
  v19[3] = &unk_1E83A8C70;
  v11 = v8;
  v20 = v11;
  v12 = [v5 appendInt64:transitionOverlayRenderId counterpart:v19];
  transitionOverlayContextId = self->_transitionOverlayContextId;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__PRUISModalEntryPointEditHomeScreen_isEqual___block_invoke_3;
  v17[3] = &unk_1E83A8C70;
  v18 = v11;
  v14 = v11;
  v15 = [v5 appendInt64:transitionOverlayContextId counterpart:v17];
  LOBYTE(transitionOverlayContextId) = [v5 isEqual];

  return transitionOverlayContextId;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_serverPosterPath];
  v5 = [builder appendInt64:self->_transitionOverlayRenderId];
  v6 = [builder appendInt64:self->_transitionOverlayContextId];
  v7 = [builder hash];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:self->_serverPosterPath];
  v6 = [v4 initWithServiceConfiguration:v5 transitionOverlayRenderId:self->_transitionOverlayRenderId transitionOverlayContextId:self->_transitionOverlayContextId];

  return v6;
}

- (PRUISModalEntryPointEditHomeScreen)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverPosterPath"];
  if (v5)
  {
    v6 = [coderCopy decodeUInt64ForKey:@"_transitionOverlayRenderId"];
    v7 = [coderCopy decodeUInt64ForKey:@"_transitionOverlayContextId"];
    v8 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v5];
    self = [(PRUISModalEntryPointEditHomeScreen *)self initWithServiceConfiguration:v8 transitionOverlayRenderId:v6 transitionOverlayContextId:v7];

    selfCopy = self;
  }

  else
  {
    v10 = PRUISLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PRUISModalEntryPointEditing initWithBSXPCCoder:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  serverPosterPath = self->_serverPosterPath;
  v9 = 0;
  coderCopy = coder;
  v6 = [(PFServerPosterPath *)serverPosterPath extendContentsReadAccessToAuditToken:0 error:&v9];
  v7 = v9;
  if (!v6)
  {
    v8 = PRUISLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PRUISModalEntryPointEditHomeScreen encodeWithBSXPCCoder:];
    }
  }

  [coderCopy encodeObject:v6 forKey:@"_serverPosterPath"];
  [coderCopy encodeUInt64:self->_transitionOverlayRenderId forKey:@"_transitionOverlayRenderId"];
  [coderCopy encodeUInt64:self->_transitionOverlayContextId forKey:@"_transitionOverlayContextId"];
}

- (void)initWithServiceConfiguration:(char *)a1 transitionOverlayRenderId:transitionOverlayContextId:.cold.1(char *a1)
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

- (void)initWithServiceConfiguration:(char *)a1 transitionOverlayRenderId:transitionOverlayContextId:.cold.2(char *a1)
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
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end