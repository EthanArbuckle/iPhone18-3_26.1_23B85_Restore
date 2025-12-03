@interface PREditingRequestDismissalAction
- (BOOL)userAcceptedChanges;
- (PREditingRequestDismissalAction)initWithUserAcceptedChanges:(BOOL)changes completion:(id)completion;
- (PRMutablePosterConfiguration)updatedConfiguration;
- (PRPosterConfiguredProperties)updatedConfiguredProperties;
- (id)_initWithUserAcceptedChanges:(BOOL)changes updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties auditTokenForSandboxExtension:(id)extension completion:(id)completion;
- (id)keyDescriptionForSetting:(unint64_t)setting;
- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting;
- (void)sendResponseWithSuccess:(BOOL)success error:(id)error;
- (void)updatedConfiguration;
@end

@implementation PREditingRequestDismissalAction

- (id)_initWithUserAcceptedChanges:(BOOL)changes updatedConfiguration:(id)configuration updatedConfiguredProperties:(id)properties auditTokenForSandboxExtension:(id)extension completion:(id)completion
{
  configurationCopy = configuration;
  propertiesCopy = properties;
  extensionCopy = extension;
  completionCopy = completion;
  v16 = MEMORY[0x1E698E5F8];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __154__PREditingRequestDismissalAction__initWithUserAcceptedChanges_updatedConfiguration_updatedConfiguredProperties_auditTokenForSandboxExtension_completion___block_invoke;
  v34[3] = &unk_1E7844B08;
  v17 = completionCopy;
  v36 = v17;
  selfCopy = self;
  v35 = selfCopy;
  v19 = [v16 responderWithHandler:v34];
  [v19 setQueue:MEMORY[0x1E69E96A0]];
  v20 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v20 setFlag:BSSettingFlagForBool() forSetting:1];
  [v20 setObject:propertiesCopy forSetting:5];
  _path = [configurationCopy _path];
  [v20 setObject:_path forSetting:2];
  descriptorIdentifier = [_path descriptorIdentifier];

  if (descriptorIdentifier)
  {
    [PREditingRequestDismissalAction _initWithUserAcceptedChanges:_path updatedConfiguration:a2 updatedConfiguredProperties:selfCopy auditTokenForSandboxExtension:? completion:?];
  }

  if (extensionCopy)
  {
    v31 = configurationCopy;
    v33 = 0;
    v23 = [_path extendContentsReadAccessToAuditToken:extensionCopy error:&v33];
    v24 = v33;
    if (v23)
    {
      [v20 setObject:v23 forSetting:2];
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = [_path extendValidityForReason:v26];
      tempPathValidityExtension = selfCopy->_tempPathValidityExtension;
      selfCopy->_tempPathValidityExtension = v27;
    }

    else
    {
      v26 = PRSLogPosterContents();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PREditingRequestDismissalAction _initWithUserAcceptedChanges:selfCopy updatedConfiguration:v24 updatedConfiguredProperties:v26 auditTokenForSandboxExtension:? completion:?];
      }
    }

    configurationCopy = v31;
  }

  v32.receiver = selfCopy;
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

- (PREditingRequestDismissalAction)initWithUserAcceptedChanges:(BOOL)changes completion:(id)completion
{
  changesCopy = changes;
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__PREditingRequestDismissalAction_initWithUserAcceptedChanges_completion___block_invoke;
    v10[3] = &unk_1E7844B30;
    v11 = completionCopy;
    v8 = [(PREditingRequestDismissalAction *)self _initWithUserAcceptedChanges:changesCopy updatedConfiguration:0 updatedConfiguredProperties:0 auditTokenForSandboxExtension:0 completion:v10];
  }

  else
  {
    v8 = [(PREditingRequestDismissalAction *)self _initWithUserAcceptedChanges:changesCopy updatedConfiguration:0 updatedConfiguredProperties:0 auditTokenForSandboxExtension:0 completion:0];
  }

  return v8;
}

- (BOOL)userAcceptedChanges
{
  info = [(PREditingRequestDismissalAction *)self info];
  [info flagForSetting:1];
  IsYes = BSSettingFlagIsYes();

  return IsYes;
}

- (PRMutablePosterConfiguration)updatedConfiguration
{
  info = [(PREditingRequestDismissalAction *)self info];
  v4 = [info objectForSetting:2];

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
  info = [(PREditingRequestDismissalAction *)self info];
  v3 = [info objectForSetting:5];

  return v3;
}

- (void)sendResponseWithSuccess:(BOOL)success error:(id)error
{
  v5 = MEMORY[0x1E698E700];
  errorCopy = error;
  v7 = objc_alloc_init(v5);
  [v7 setFlag:BSSettingFlagForBool() forSetting:3];
  [v7 setObject:errorCopy forSetting:4];

  v8 = [MEMORY[0x1E698E600] responseWithInfo:v7];
  v9.receiver = self;
  v9.super_class = PREditingRequestDismissalAction;
  [(PREditingRequestDismissalAction *)&v9 sendResponse:v8];
}

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  v3 = @"updatedConfiguration";
  if (setting != 2)
  {
    v3 = 0;
  }

  if (setting == 1)
  {
    return @"userAcceptedChanges";
  }

  else
  {
    return v3;
  }
}

- (id)valueDescriptionForFlag:(int64_t)flag object:(id)object ofSetting:(unint64_t)setting
{
  objectCopy = object;
  v7 = objectCopy;
  if (setting == 2)
  {
    v8 = [objectCopy description];
    goto LABEL_5;
  }

  if (setting == 1)
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