@interface PREditingRequestDismissalAction
- (BOOL)userAcceptedChanges;
- (PREditingRequestDismissalAction)initWithUserAcceptedChanges:(BOOL)a3 completion:(id)a4;
- (PRMutablePosterConfiguration)updatedConfiguration;
- (PRPosterConfiguredProperties)updatedConfiguredProperties;
- (id)_initWithUserAcceptedChanges:(BOOL)a3 updatedConfiguration:(id)a4 updatedConfiguredProperties:(id)a5 auditTokenForSandboxExtension:(id)a6 completion:(id)a7;
- (id)keyDescriptionForSetting:(unint64_t)a3;
- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5;
- (void)sendResponseWithSuccess:(BOOL)a3 error:(id)a4;
- (void)updatedConfiguration;
@end

@implementation PREditingRequestDismissalAction

- (id)_initWithUserAcceptedChanges:(BOOL)a3 updatedConfiguration:(id)a4 updatedConfiguredProperties:(id)a5 auditTokenForSandboxExtension:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x1E698E5F8];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __154__PREditingRequestDismissalAction__initWithUserAcceptedChanges_updatedConfiguration_updatedConfiguredProperties_auditTokenForSandboxExtension_completion___block_invoke;
  v34[3] = &unk_1E7844B08;
  v17 = v15;
  v36 = v17;
  v18 = self;
  v35 = v18;
  v19 = [v16 responderWithHandler:v34];
  [v19 setQueue:MEMORY[0x1E69E96A0]];
  v20 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v20 setFlag:BSSettingFlagForBool() forSetting:1];
  [v20 setObject:v13 forSetting:5];
  v21 = [v12 _path];
  [v20 setObject:v21 forSetting:2];
  v22 = [v21 descriptorIdentifier];

  if (v22)
  {
    [PREditingRequestDismissalAction _initWithUserAcceptedChanges:v21 updatedConfiguration:a2 updatedConfiguredProperties:v18 auditTokenForSandboxExtension:? completion:?];
  }

  if (v14)
  {
    v31 = v12;
    v33 = 0;
    v23 = [v21 extendContentsReadAccessToAuditToken:v14 error:&v33];
    v24 = v33;
    if (v23)
    {
      [v20 setObject:v23 forSetting:2];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [v21 extendValidityForReason:v26];
      tempPathValidityExtension = v18->_tempPathValidityExtension;
      v18->_tempPathValidityExtension = v27;
    }

    else
    {
      v26 = PRSLogPosterContents();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PREditingRequestDismissalAction _initWithUserAcceptedChanges:v18 updatedConfiguration:v24 updatedConfiguredProperties:v26 auditTokenForSandboxExtension:? completion:?];
      }
    }

    v12 = v31;
  }

  v32.receiver = v18;
  v32.super_class = PREditingRequestDismissalAction;
  v29 = [(PREditingRequestDismissalAction *)&v32 initWithInfo:v20 responder:v19];

  return v29;
}

void __154__PREditingRequestDismissalAction__initWithUserAcceptedChanges_updatedConfiguration_updatedConfiguredProperties_auditTokenForSandboxExtension_completion___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v5 = [v3 tempPathValidityExtension];
    [v5 invalidate];

    v7 = [v4 info];

    [v7 BOOLForSetting:3];
    v6 = [v7 objectForSetting:4];
    (*(*(a1 + 40) + 16))();
  }
}

- (PREditingRequestDismissalAction)initWithUserAcceptedChanges:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PREditingRequestDismissalAction_initWithUserAcceptedChanges_completion___block_invoke;
    v10[3] = &unk_1E7844B30;
    v11 = v6;
    v8 = [(PREditingRequestDismissalAction *)self _initWithUserAcceptedChanges:v4 updatedConfiguration:0 updatedConfiguredProperties:0 auditTokenForSandboxExtension:0 completion:v10];
  }

  else
  {
    v8 = [(PREditingRequestDismissalAction *)self _initWithUserAcceptedChanges:v4 updatedConfiguration:0 updatedConfiguredProperties:0 auditTokenForSandboxExtension:0 completion:0];
  }

  return v8;
}

- (BOOL)userAcceptedChanges
{
  v2 = [(PREditingRequestDismissalAction *)self info];
  [v2 flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (PRMutablePosterConfiguration)updatedConfiguration
{
  v3 = [(PREditingRequestDismissalAction *)self info];
  v4 = [v3 objectForSetting:2];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PRPosterConfiguration *)[PRMutablePosterConfiguration alloc] _initWithPath:v4];
  }

  else
  {
    v6 = PRSLogPosterContents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PREditingRequestDismissalAction *)self updatedConfiguration];
    }

    v5 = 0;
  }

  return v5;
}

- (PRPosterConfiguredProperties)updatedConfiguredProperties
{
  v2 = [(PREditingRequestDismissalAction *)self info];
  v3 = [v2 objectForSetting:5];

  return v3;
}

- (void)sendResponseWithSuccess:(BOOL)a3 error:(id)a4
{
  v5 = MEMORY[0x1E698E700];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  [v7 setFlag:BSSettingFlagForBool() forSetting:3];
  [v7 setObject:v6 forSetting:4];

  v8 = [MEMORY[0x1E698E600] responseWithInfo:v7];
  v9.receiver = self;
  v9.super_class = PREditingRequestDismissalAction;
  [(PREditingRequestDismissalAction *)&v9 sendResponse:v8];
}

- (id)keyDescriptionForSetting:(unint64_t)a3
{
  v3 = @"updatedConfiguration";
  if (a3 != 2)
  {
    v3 = 0;
  }

  if (a3 == 1)
  {
    return @"userAcceptedChanges";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)a3 object:(id)a4 ofSetting:(unint64_t)a5
{
  v6 = a4;
  v7 = v6;
  if (a5 == 2)
  {
    v8 = [v6 description];
    goto LABEL_5;
  }

  if (a5 == 1)
  {
    v8 = BSSettingFlagDescription();
LABEL_5:
    v9 = v8;
    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)_initWithUserAcceptedChanges:(uint64_t)a3 updatedConfiguration:updatedConfiguredProperties:auditTokenForSandboxExtension:completion:.cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"updatedConfiguration looks to be invalid : %@", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = NSStringFromSelector(a2);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138544642;
    v10 = v6;
    v11 = 2114;
    v12 = v8;
    v13 = 2048;
    v14 = a3;
    v15 = 2114;
    v16 = @"PREditingRequestDismissalAction.m";
    v17 = 1024;
    v18 = 54;
    v19 = 2114;
    v20 = v5;
    _os_log_error_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithUserAcceptedChanges:(NSObject *)a3 updatedConfiguration:updatedConfiguredProperties:auditTokenForSandboxExtension:completion:.cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138543618;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_ERROR, "%{public}@: cannot send updatedConfiguration back to server due to sandbox extension error %@", &v7, 0x16u);
}

- (void)updatedConfiguration
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = 138543874;
  v10 = v6;
  v11 = 2112;
  v12 = v8;
  v13 = 2048;
  v14 = a2;
  _os_log_error_impl(&dword_1A8AA7000, a3, OS_LOG_TYPE_ERROR, "%{public}@: updatedConfiguration is invalid : path=<%@:%p>", &v9, 0x20u);
}

@end