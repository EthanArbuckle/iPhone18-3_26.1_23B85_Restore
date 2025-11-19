@interface PRUISModalEntryPointEditing
- (BOOL)isEqual:(id)a3;
- (PFServerPosterPath)serverPosterPath;
- (PRUISModalEntryPointEditing)initWithBSXPCCoder:(id)a3;
- (PRUISModalEntryPointEditing)initWithServiceConfiguration:(id)a3;
- (PRUISModalEntryPointEditing)initWithServiceConfiguration:(id)a3 updateSessionInfo:(id)a4;
- (PRUISModalEntryPointEditing)initWithType:(int64_t)a3 extensionIdentifier:(id)a4 configuration:(id)a5 updateSessionInfo:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation PRUISModalEntryPointEditing

- (PRUISModalEntryPointEditing)initWithType:(int64_t)a3 extensionIdentifier:(id)a4 configuration:(id)a5 updateSessionInfo:(id)a6
{
  v25 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = PRUISModalEntryPointEditing;
  v13 = [(PRUISModalEntryPointEditing *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_editingType = a3;
    v15 = [v10 copy];
    extensionIdentifier = v14->_extensionIdentifier;
    v14->_extensionIdentifier = v15;

    objc_storeStrong(&v14->_configuration, a5);
    objc_storeStrong(&v14->_updateSessionInfo, a6);
    v17 = PRUISLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v11 _path];
      v19 = [v18 contentsURL];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEFAULT, "PRUISModalEntryPointEditing: creating with poster path: %@", buf, 0xCu);
    }

    v20 = v14;
  }

  return v14;
}

- (PRUISModalEntryPointEditing)initWithServiceConfiguration:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PRUISModalEntryPointEditing;
  v6 = [(PRUISModalEntryPointEditing *)&v17 init];
  v7 = v6;
  if (v6)
  {
    v6->_editingType = 2;
    v8 = [v5 _path];
    v9 = [v8 serverIdentity];
    v10 = [v9 provider];
    extensionIdentifier = v7->_extensionIdentifier;
    v7->_extensionIdentifier = v10;

    objc_storeStrong(&v7->_serviceConfiguration, a3);
    v12 = PRUISLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 _path];
      v14 = [v13 contentsURL];
      *buf = 138412290;
      v19 = v14;
      _os_log_impl(&dword_1CAE63000, v12, OS_LOG_TYPE_DEFAULT, "PRUISModalEntryPointEditing: editing with poster path: %@", buf, 0xCu);
    }

    v15 = v7;
  }

  return v7;
}

- (PRUISModalEntryPointEditing)initWithServiceConfiguration:(id)a3 updateSessionInfo:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    [PRUISModalEntryPointEditing initWithServiceConfiguration:a2 updateSessionInfo:?];
  }

  v10 = v9;
  if (!v9)
  {
    [PRUISModalEntryPointEditing initWithServiceConfiguration:a2 updateSessionInfo:?];
  }

  v22.receiver = self;
  v22.super_class = PRUISModalEntryPointEditing;
  v11 = [(PRUISModalEntryPointEditing *)&v22 init];
  v12 = v11;
  if (v11)
  {
    v11->_editingType = 3;
    v13 = [v8 _path];
    v14 = [v13 serverIdentity];
    v15 = [v14 provider];
    extensionIdentifier = v12->_extensionIdentifier;
    v12->_extensionIdentifier = v15;

    objc_storeStrong(&v12->_serviceConfiguration, a3);
    objc_storeStrong(&v12->_updateSessionInfo, a4);
    v17 = PRUISLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v8 _path];
      v19 = [v18 contentsURL];
      *buf = 138412290;
      v24 = v19;
      _os_log_impl(&dword_1CAE63000, v17, OS_LOG_TYPE_DEFAULT, "PRUISModalEntryPointEditing: editing with poster path: %@", buf, 0xCu);
    }

    v20 = v12;
  }

  return v12;
}

- (PFServerPosterPath)serverPosterPath
{
  serviceConfiguration = self->_serviceConfiguration;
  if (serviceConfiguration)
  {
    serviceConfiguration = [serviceConfiguration _path];
    v2 = vars8;
  }

  return serviceConfiguration;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = v4;
  editingType = self->_editingType;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __39__PRUISModalEntryPointEditing_isEqual___block_invoke;
  v31[3] = &unk_1E83A8C70;
  v8 = v6;
  v32 = v8;
  v9 = [v5 appendInteger:editingType counterpart:v31];
  extensionIdentifier = self->_extensionIdentifier;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39__PRUISModalEntryPointEditing_isEqual___block_invoke_2;
  v29[3] = &unk_1E83A8C20;
  v11 = v8;
  v30 = v11;
  v12 = [v5 appendObject:extensionIdentifier counterpart:v29];
  serviceConfiguration = self->_serviceConfiguration;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __39__PRUISModalEntryPointEditing_isEqual___block_invoke_3;
  v27[3] = &unk_1E83A8C98;
  v14 = v11;
  v28 = v14;
  v15 = [v5 appendObject:serviceConfiguration counterpart:v27];
  configuration = self->_configuration;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39__PRUISModalEntryPointEditing_isEqual___block_invoke_4;
  v25[3] = &unk_1E83A8CC0;
  v17 = v14;
  v26 = v17;
  v18 = [v5 appendObject:configuration counterpart:v25];
  updateSessionInfo = self->_updateSessionInfo;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __39__PRUISModalEntryPointEditing_isEqual___block_invoke_5;
  v23[3] = &unk_1E83A8CE8;
  v24 = v17;
  v20 = v17;
  v21 = [v5 appendObject:updateSessionInfo counterpart:v23];
  LOBYTE(updateSessionInfo) = [v5 isEqual];

  return updateSessionInfo;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendInteger:self->_editingType];
  v5 = [v3 appendObject:self->_extensionIdentifier];
  v6 = [v3 appendObject:self->_serviceConfiguration];
  v7 = [v3 appendObject:self->_configuration];
  v8 = [v3 appendObject:self->_updateSessionInfo];
  v9 = [v3 hash];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  editingType = self->_editingType;
  v5 = objc_alloc(objc_opt_class());
  if (editingType == 2)
  {
    serviceConfiguration = self->_serviceConfiguration;

    return [v5 initWithServiceConfiguration:serviceConfiguration];
  }

  else if (editingType == 3)
  {
    v6 = self->_serviceConfiguration;
    updateSessionInfo = self->_updateSessionInfo;

    return [v5 initWithServiceConfiguration:v6 updateSessionInfo:updateSessionInfo];
  }

  else
  {
    v10 = self->_editingType;
    extensionIdentifier = self->_extensionIdentifier;
    configuration = self->_configuration;
    v13 = self->_updateSessionInfo;

    return [v5 initWithType:v10 extensionIdentifier:extensionIdentifier configuration:configuration updateSessionInfo:v13];
  }
}

- (PRUISModalEntryPointEditing)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"editingType"];
  if (v5 == 3)
  {
    v18 = [v4 decodeStringForKey:@"extensionIdentifier"];
    if (!v18)
    {
      v8 = PRUISLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      goto LABEL_44;
    }

    v8 = v18;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterPath"];
    if (!v13)
    {
      v14 = PRUISLogCommon();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    v14 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v13];
    if (v14)
    {
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionInfo"];
      if (v19)
      {
        v20 = v19;
        v21 = [(PRUISModalEntryPointEditing *)self initWithType:3 extensionIdentifier:v8 configuration:0 updateSessionInfo:v19];
        v22 = v21;
        if (v21)
        {
          objc_storeStrong(&v21->_serviceConfiguration, v14);
        }

        self = v22;
        v17 = self;
        goto LABEL_48;
      }

      v20 = PRUISLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PRUISModalEntryPointEditing initWithBSXPCCoder:];
      }
    }

    else
    {
      v20 = PRUISLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [PRUISModalEntryPointEditing initWithBSXPCCoder:];
      }
    }

    v17 = 0;
LABEL_48:

    goto LABEL_49;
  }

  v6 = v5;
  if (v5 == 2)
  {
    v12 = [v4 decodeStringForKey:@"extensionIdentifier"];
    if (!v12)
    {
      v8 = PRUISLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      goto LABEL_44;
    }

    v8 = v12;
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterPath"];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x1E69C5000]) _initWithPath:v13];
      if (v14)
      {
        v15 = [(PRUISModalEntryPointEditing *)self initWithType:2 extensionIdentifier:v8 configuration:0 updateSessionInfo:0];
        v16 = v15;
        if (v15)
        {
          objc_storeStrong(&v15->_serviceConfiguration, v14);
        }

        self = v16;
        v17 = self;
        goto LABEL_49;
      }

      v24 = PRUISLogCommon();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [PRUISModalEntryPointEditing initWithBSXPCCoder:];
      }

      goto LABEL_38;
    }

    v14 = PRUISLogCommon();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_38:
      v17 = 0;
LABEL_49:

      goto LABEL_50;
    }

LABEL_30:
    [PRUISModalEntryPointEditing initWithBSXPCCoder:];
    goto LABEL_38;
  }

  if (v5 != 1)
  {
    v11 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v7 = [v4 decodeStringForKey:@"extensionIdentifier"];
  if (!v7)
  {
    v8 = PRUISLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_28:
      [PRUISModalEntryPointEditing initWithBSXPCCoder:];
    }

LABEL_44:
    v17 = 0;
    goto LABEL_50;
  }

  v8 = v7;
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"posterPath"];
  if (!v9)
  {
    v23 = PRUISLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PRUISModalEntryPointEditing initWithBSXPCCoder:];
    }

    goto LABEL_43;
  }

  v10 = [objc_alloc(MEMORY[0x1E69C52C0]) _initWithPath:v9];
  if (!v10)
  {
    v23 = PRUISLogCommon();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [PRUISModalEntryPointEditing initWithBSXPCCoder:];
    }

LABEL_43:

    goto LABEL_44;
  }

  v11 = v10;

LABEL_22:
  self = [(PRUISModalEntryPointEditing *)self initWithType:v6 extensionIdentifier:v8 configuration:v11 updateSessionInfo:0];

  v17 = self;
LABEL_50:

  return v17;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  editingType = self->_editingType;
  switch(editingType)
  {
    case 3:
      v14 = [(PRSPosterConfiguration *)self->_serviceConfiguration _path];
      v16 = 0;
      v7 = [v14 extendContentsReadAccessToAuditToken:0 error:&v16];
      v8 = v16;

      if (!v7)
      {
        v15 = PRUISLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PRUISModalEntryPointEditing encodeWithBSXPCCoder:];
        }
      }

      [v4 encodeObject:v7 forKey:@"posterPath"];
      updateSessionInfo = self->_updateSessionInfo;
      v11 = @"sessionInfo";
      v12 = v4;
      goto LABEL_17;
    case 2:
      v10 = [(PRSPosterConfiguration *)self->_serviceConfiguration _path];
      v17 = 0;
      v7 = [v10 extendContentsReadAccessToAuditToken:0 error:&v17];
      v8 = v17;

      if (!v7)
      {
        v9 = PRUISLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [PRUISModalEntryPointEditing encodeWithBSXPCCoder:];
        }

        goto LABEL_10;
      }

LABEL_11:
      v11 = @"posterPath";
      v12 = v4;
      updateSessionInfo = v7;
LABEL_17:
      [v12 encodeObject:updateSessionInfo forKey:v11];

      break;
    case 1:
      v6 = [(PRMutablePosterConfiguration *)self->_configuration _path];
      v18 = 0;
      v7 = [v6 extendContentsReadAccessToAuditToken:0 error:&v18];
      v8 = v18;

      if (!v7)
      {
        v9 = PRUISLogCommon();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [PRUISModalEntryPointEditing encodeWithBSXPCCoder:];
        }

LABEL_10:

        goto LABEL_11;
      }

      goto LABEL_11;
  }

  [v4 encodeInt64:self->_editingType forKey:@"editingType"];
  [v4 encodeObject:self->_extensionIdentifier forKey:@"extensionIdentifier"];
}

- (void)initWithServiceConfiguration:(char *)a1 updateSessionInfo:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"sessionInfo != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithServiceConfiguration:(char *)a1 updateSessionInfo:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1CAE63000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"serviceConfiguration != nil", v10, v11);
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

- (void)encodeWithBSXPCCoder:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)encodeWithBSXPCCoder:.cold.3()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end