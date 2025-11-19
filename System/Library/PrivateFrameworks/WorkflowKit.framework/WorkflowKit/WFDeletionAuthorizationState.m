@interface WFDeletionAuthorizationState
+ (id)deniedPermissionsErrorForContentItemClass:(Class)a3;
+ (id)dontDeleteErrorForContentItemClass:(Class)a3;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (id)stateFromDatabaseData:(id)a3;
- (NSString)description;
- (WFDeletionAuthorizationState)initWithCoder:(id)a3;
- (WFDeletionAuthorizationState)initWithStatus:(id)a3 contentItemClassName:(id)a4 actionUUID:(id)a5 count:(unint64_t)a6;
- (WFDeletionAuthorizationState)stateWithStatus:(id)a3 count:(unint64_t)a4;
- (id)databaseDataWithError:(id *)a3;
- (id)deniedPermissionsError;
- (id)localizedExfiltrationRestrictedError;
- (id)siriActionToolDescription;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFDeletionAuthorizationState

- (id)siriActionToolDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFDeletionAuthorizationState;
  v4 = [(WFDeletionAuthorizationState *)&v8 description];
  status = self->_status;
  v6 = [v3 stringWithFormat:@"%@ {\n      - Action UUID: %@\n      - ContentItemClass: %@\n      - Status: %@\n      - Count: %lu\n}", v4, self->_actionUUID, self->_contentItemClassName, status, self->_count];

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFDeletionAuthorizationState;
  v4 = [(WFDeletionAuthorizationState *)&v8 description];
  status = self->_status;
  v6 = [v3 stringWithFormat:@"%@: actionUUID: %@, contentItemClass: %@, status: %@, count: %lu", v4, self->_actionUUID, self->_contentItemClassName, status, self->_count];

  return v6;
}

- (WFDeletionAuthorizationState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentItemClassName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v8 = [v4 decodeIntegerForKey:@"count"];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    self = [(WFDeletionAuthorizationState *)self initWithStatus:v5 contentItemClassName:v6 actionUUID:v7 count:v8];
    v11 = self;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(WFDeletionAuthorizationState *)self status];
  [v7 encodeObject:v4 forKey:@"status"];

  v5 = [(WFDeletionAuthorizationState *)self contentItemClassName];
  [v7 encodeObject:v5 forKey:@"contentItemClassName"];

  v6 = [(WFDeletionAuthorizationState *)self actionUUID];
  [v7 encodeObject:v6 forKey:@"actionUUID"];

  [v7 encodeInteger:-[WFDeletionAuthorizationState count](self forKey:{"count"), @"count"}];
}

- (id)wfSerializedRepresentation
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"ActionUUID";
  v3 = [(WFDeletionAuthorizationState *)self actionUUID];
  v11[0] = v3;
  v10[1] = @"Status";
  v4 = [(WFDeletionAuthorizationState *)self status];
  v11[1] = v4;
  v10[2] = @"ContentItemClassName";
  v5 = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v11[2] = v5;
  v10[3] = @"Count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFDeletionAuthorizationState count](self, "count")}];
  v10[4] = @"DataType";
  v11[3] = v6;
  v11[4] = @"DeletionAuthorization";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)databaseDataWithError:(id *)a3
{
  v4 = MEMORY[0x1E696AE40];
  v5 = [(WFDeletionAuthorizationState *)self wfSerializedRepresentation];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:a3];

  return v6;
}

- (id)deniedPermissionsError
{
  v3 = objc_opt_class();
  v4 = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v5 = [v3 deniedPermissionsErrorForContentItemClass:NSClassFromString(v4)];

  return v5;
}

- (id)localizedExfiltrationRestrictedError
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v4 = NSClassFromString(v3);

  v5 = [(objc_class *)v4 localizedPluralFilterDescription];
  if ([(objc_class *)v4 canLowercaseTypeDescription])
  {
    v6 = [v5 localizedLowercaseString];

    v5 = v6;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [(objc_class *)v4 localizedCountDescriptionWithValue:[(WFDeletionAuthorizationState *)self count]];
    if (v7)
    {
LABEL_5:
      v8 = MEMORY[0x1E696AEC0];
      v9 = WFLocalizedString(@"This action is trying to delete %@, which is not allowed.");
      [v8 stringWithFormat:v9, v7];
      v17 = LABEL_11:;

      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = [(objc_class *)v4 countDescription];
    v12 = [v10 localizedStringWithFormat:v11, -[WFDeletionAuthorizationState count](self, "count")];
    v7 = [v12 localizedLowercaseString];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v13 = getWFWorkflowExecutionLogObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (v5)
  {
    if (v14)
    {
      v15 = [(WFDeletionAuthorizationState *)self contentItemClassName];
      *buf = 136315394;
      v30 = "[WFDeletionAuthorizationState localizedExfiltrationRestrictedError]";
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Missing countDescription for %@", buf, 0x16u);
    }

    v16 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"This action is trying to delete a large amount of %@, which is not allowed.");
    [v16 stringWithFormat:v9, v5];
    goto LABEL_11;
  }

  if (v14)
  {
    v26 = [(WFDeletionAuthorizationState *)self contentItemClassName];
    *buf = 136315394;
    v30 = "[WFDeletionAuthorizationState localizedExfiltrationRestrictedError]";
    v31 = 2112;
    v32 = v26;
    _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Missing countDescription and typeDescription for %@", buf, 0x16u);
  }

  v17 = WFLocalizedString(@"This action is trying to delete a large amount of data, which is not allowed.");
LABEL_12:
  v18 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A588];
  v28[0] = v17;
  v20 = *MEMORY[0x1E696A578];
  v27[0] = v19;
  v27[1] = v20;
  v21 = WFLocalizedString(@"You can allow this in Settings.");
  v28[1] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v23 = [v18 errorWithDomain:@"WFSmartPromptErrorDomain" code:1 userInfo:v22];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

- (WFDeletionAuthorizationState)stateWithStatus:(id)a3 count:(unint64_t)a4
{
  v6 = a3;
  v7 = [WFDeletionAuthorizationState alloc];
  v8 = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v9 = [(WFDeletionAuthorizationState *)self actionUUID];
  v10 = [(WFDeletionAuthorizationState *)v7 initWithStatus:v6 contentItemClassName:v8 actionUUID:v9 count:a4];

  return v10;
}

- (WFDeletionAuthorizationState)initWithStatus:(id)a3 contentItemClassName:(id)a4 actionUUID:(id)a5 count:(unint64_t)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v14;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"WFDeletionAuthorizationState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentItemClassName"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:self file:@"WFDeletionAuthorizationState.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"actionUUID"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = WFDeletionAuthorizationState;
  v16 = [(WFDeletionAuthorizationState *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_status, a3);
    v18 = [v13 copy];
    contentItemClassName = v17->_contentItemClassName;
    v17->_contentItemClassName = v18;

    v20 = [v15 copy];
    actionUUID = v17->_actionUUID;
    v17->_actionUUID = v20;

    v17->_count = a6;
    v22 = v17;
  }

  return v17;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"DataType"];
  v6 = v5;
  if (v5 && [v5 isEqualToString:@"DeletionAuthorization"])
  {
    v7 = [v4 objectForKey:@"ContentItemClassName"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v11 = [v4 objectForKey:@"Status"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v4 objectForKey:@"ActionUUID"];
    if (v14)
    {
      objc_opt_class();
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

    v17 = [v4 objectForKey:@"Count"];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    v20 = [v19 unsignedIntegerValue];
    if (v10 && v13 && v16 && v20)
    {
      v9 = [[a1 alloc] initWithStatus:v13 contentItemClassName:v10 actionUUID:v16 count:v20];
    }

    else
    {
      v21 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v24 = 136315394;
        v25 = "+[WFDeletionAuthorizationState objectWithWFSerializedRepresentation:]";
        v26 = 2114;
        v27 = v4;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_FAULT, "%s Failed to deserialize WFDeletionAuthorizationState, returning nil: %{public}@", &v24, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)stateFromDatabaseData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:0 format:0 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 debugDescription];
      *buf = 136315394;
      v15 = "+[WFDeletionAuthorizationState stateFromDatabaseData:]";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error deserializing WFDeletionAuthorizationState property list: %@", buf, 0x16u);
    }
  }

  else
  {
    v8 = [a1 objectWithWFSerializedRepresentation:v4];
    if (v8)
    {
      v6 = v8;
      v9 = v6;
      goto LABEL_10;
    }

    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v15 = "+[WFDeletionAuthorizationState stateFromDatabaseData:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to init WFDeletionAuthorizationState from database data.", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)dontDeleteErrorForContentItemClass:(Class)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "+[WFDeletionAuthorizationState dontDeleteErrorForContentItemClass:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s User tapped 'Don't Delete'.", buf, 0xCu);
  }

  v5 = [(objc_class *)a3 localizedPluralFilterDescription];
  if ([(objc_class *)a3 canLowercaseTypeDescription])
  {
    v6 = [v5 localizedLowercaseString];

    v5 = v6;
  }

  if (v5)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"You opted not to delete any %@.");
    v9 = [v7 localizedStringWithFormat:v8, v5];
  }

  else
  {
    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromClass(a3);
      *buf = 136315394;
      v20 = "+[WFDeletionAuthorizationState dontDeleteErrorForContentItemClass:]";
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s Missing pluralTypeDescription for %@", buf, 0x16u);
    }

    v9 = WFLocalizedString(@"You opted not to delete some content.");
  }

  v12 = MEMORY[0x1E696ABC0];
  v17 = *MEMORY[0x1E696A588];
  v18 = v9;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v14 = [v12 errorWithDomain:@"WFSmartPromptErrorDomain" code:3 userInfo:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)deniedPermissionsErrorForContentItemClass:(Class)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(objc_class *)a3 localizedPluralFilterDescription];
  if ([(objc_class *)a3 canLowercaseTypeDescription])
  {
    v5 = [v4 localizedLowercaseString];

    v4 = v5;
  }

  if (v4)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = WFLocalizedString(@"This shortcut can’t delete %@. You can change this in the shortcut’s privacy settings.");
    v8 = [v6 localizedStringWithFormat:v7, v4];
  }

  else
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = NSStringFromClass(a3);
      *buf = 136315394;
      v19 = "+[WFDeletionAuthorizationState deniedPermissionsErrorForContentItemClass:]";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Missing pluralTypeDescription for %@", buf, 0x16u);
    }

    v8 = WFLocalizedString(@"This shortcut can’t delete this content. You can change this in the shortcut’s privacy settings.");
  }

  v11 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696A588];
  v17 = v8;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v13 = [v11 errorWithDomain:@"WFSmartPromptErrorDomain" code:0 userInfo:v12];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end