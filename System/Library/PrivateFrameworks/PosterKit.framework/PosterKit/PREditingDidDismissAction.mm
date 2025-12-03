@interface PREditingDidDismissAction
+ (id)acceptChangesWithCompletion:(id)completion;
+ (id)cancelAction;
- (id)_initWithCompletion:(id)completion;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)sendResponseWithUpdatedConfiguration:(id)configuration updatedProperties:(id)properties;
@end

@implementation PREditingDidDismissAction

+ (id)cancelAction
{
  v2 = [[PREditingDidDismissAction alloc] _initWithCompletion:0];

  return v2;
}

+ (id)acceptChangesWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    [PREditingDidDismissAction acceptChangesWithCompletion:a2];
  }

  v5 = completionCopy;
  v6 = [[PREditingDidDismissAction alloc] _initWithCompletion:completionCopy];

  return v6;
}

- (id)_initWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E698E700]);
    tokenForCurrentProcess = [MEMORY[0x1E698E620] tokenForCurrentProcess];
    [v5 setObject:tokenForCurrentProcess forSetting:2];

    v7 = MEMORY[0x1E698E5F8];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __49__PREditingDidDismissAction__initWithCompletion___block_invoke;
    v12[3] = &unk_1E7844B08;
    v14 = completionCopy;
    selfCopy = self;
    v8 = [v7 responderWithHandler:v12];
    [v8 setQueue:MEMORY[0x1E69E96A0]];
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  v11.receiver = self;
  v11.super_class = PREditingDidDismissAction;
  v9 = [(PREditingDidDismissAction *)&v11 initWithInfo:v5 responder:v8];

  return v9;
}

void __49__PREditingDidDismissAction__initWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:1];
  v6 = [v4 objectForSetting:4];
  v7 = [v4 objectForSetting:3];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [(PRPosterConfiguration *)[PRMutablePosterConfiguration alloc] _initWithPath:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = PRSLogPosterContents();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v16 = NSStringFromClass(v10);
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v3 error];
      *buf = 138544642;
      v18 = v16;
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = v5;
      v23 = 2112;
      v24 = v14;
      v25 = 2048;
      v26 = v7;
      v28 = v27 = 2112;
      v15 = v28;
      _os_log_error_impl(&dword_1A8AA7000, v9, OS_LOG_TYPE_ERROR, "%{public}@: updatedConfiguration or finishedSavingAction in response is invalid : path=<%@:%p> finishedSavingAction=<%@:%p> error=%@", buf, 0x3Eu);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)sendResponseWithUpdatedConfiguration:(id)configuration updatedProperties:(id)properties
{
  configurationCopy = configuration;
  propertiesCopy = properties;
  v9 = configurationCopy;
  NSClassFromString(&cfstr_Prmutableposte.isa);
  if (!v9)
  {
    [PREditingDidDismissAction sendResponseWithUpdatedConfiguration:a2 updatedProperties:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PREditingDidDismissAction sendResponseWithUpdatedConfiguration:a2 updatedProperties:?];
  }

  _path = [v9 _path];
  info = [(PREditingDidDismissAction *)self info];
  v12 = [info objectForSetting:2];
  v13 = objc_opt_class();
  v14 = v12;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  v17 = [_path extendContentsReadAccessToAuditToken:v16 error:0];

  if (v17)
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [_path extendValidityForReason:v19];

    v21 = objc_alloc(MEMORY[0x1E698E5F0]);
    v22 = MEMORY[0x1E698E5F8];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84__PREditingDidDismissAction_sendResponseWithUpdatedConfiguration_updatedProperties___block_invoke;
    v30[3] = &unk_1E7845310;
    v31 = v20;
    v23 = v20;
    v24 = [v22 responderWithHandler:v30];
    v25 = [v21 initWithInfo:0 responder:v24];

    v26 = objc_alloc_init(MEMORY[0x1E698E700]);
    [v26 setObject:v17 forSetting:1];
    [v26 setObject:v25 forSetting:3];
    [v26 setObject:propertiesCopy forSetting:4];
    v27 = [MEMORY[0x1E698E600] responseWithInfo:v26];
    v29.receiver = self;
    v29.super_class = PREditingDidDismissAction;
    [(PREditingDidDismissAction *)&v29 sendResponse:v27];
  }

  else
  {
    v28 = PRSLogPosterContents();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PREditingDidDismissAction sendResponseWithUpdatedConfiguration:v28 updatedProperties:?];
    }

    [(PREditingDidDismissAction *)self invalidate];
  }
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 2)
  {
    return @"serverAuditToken";
  }

  else
  {
    return 0;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  if (setting == 2)
  {
    v7 = [object description];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (void)acceptChangesWithCompletion:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"completion", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendResponseWithUpdatedConfiguration:(const char *)a1 updatedProperties:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRMutablePosterConfigurationClass]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sendResponseWithUpdatedConfiguration:(uint64_t)a1 updatedProperties:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_ERROR, "%{public}@: cannot send updatedConfiguration back to server due to sandbox extension error", &v5, 0xCu);
}

- (void)sendResponseWithUpdatedConfiguration:(const char *)a1 updatedProperties:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end