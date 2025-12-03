@interface WFDeletionAuthorizationState
+ (id)deniedPermissionsErrorForContentItemClass:(Class)class;
+ (id)dontDeleteErrorForContentItemClass:(Class)class;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)stateFromDatabaseData:(id)data;
- (NSString)description;
- (WFDeletionAuthorizationState)initWithCoder:(id)coder;
- (WFDeletionAuthorizationState)initWithStatus:(id)status contentItemClassName:(id)name actionUUID:(id)d count:(unint64_t)count;
- (WFDeletionAuthorizationState)stateWithStatus:(id)status count:(unint64_t)count;
- (id)databaseDataWithError:(id *)error;
- (id)deniedPermissionsError;
- (id)localizedExfiltrationRestrictedError;
- (id)siriActionToolDescription;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)coder;
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

- (WFDeletionAuthorizationState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contentItemClassName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v8 = [coderCopy decodeIntegerForKey:@"count"];

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
    selfCopy = 0;
  }

  else
  {
    self = [(WFDeletionAuthorizationState *)self initWithStatus:v5 contentItemClassName:v6 actionUUID:v7 count:v8];
    selfCopy = self;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  status = [(WFDeletionAuthorizationState *)self status];
  [coderCopy encodeObject:status forKey:@"status"];

  contentItemClassName = [(WFDeletionAuthorizationState *)self contentItemClassName];
  [coderCopy encodeObject:contentItemClassName forKey:@"contentItemClassName"];

  actionUUID = [(WFDeletionAuthorizationState *)self actionUUID];
  [coderCopy encodeObject:actionUUID forKey:@"actionUUID"];

  [coderCopy encodeInteger:-[WFDeletionAuthorizationState count](self forKey:{"count"), @"count"}];
}

- (id)wfSerializedRepresentation
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"ActionUUID";
  actionUUID = [(WFDeletionAuthorizationState *)self actionUUID];
  v11[0] = actionUUID;
  v10[1] = @"Status";
  status = [(WFDeletionAuthorizationState *)self status];
  v11[1] = status;
  v10[2] = @"ContentItemClassName";
  contentItemClassName = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v11[2] = contentItemClassName;
  v10[3] = @"Count";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[WFDeletionAuthorizationState count](self, "count")}];
  v10[4] = @"DataType";
  v11[3] = v6;
  v11[4] = @"DeletionAuthorization";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)databaseDataWithError:(id *)error
{
  v4 = MEMORY[0x1E696AE40];
  wfSerializedRepresentation = [(WFDeletionAuthorizationState *)self wfSerializedRepresentation];
  v6 = [v4 dataWithPropertyList:wfSerializedRepresentation format:200 options:0 error:error];

  return v6;
}

- (id)deniedPermissionsError
{
  v3 = objc_opt_class();
  contentItemClassName = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v5 = [v3 deniedPermissionsErrorForContentItemClass:NSClassFromString(contentItemClassName)];

  return v5;
}

- (id)localizedExfiltrationRestrictedError
{
  v33 = *MEMORY[0x1E69E9840];
  contentItemClassName = [(WFDeletionAuthorizationState *)self contentItemClassName];
  v4 = NSClassFromString(contentItemClassName);

  localizedPluralFilterDescription = [(objc_class *)v4 localizedPluralFilterDescription];
  if ([(objc_class *)v4 canLowercaseTypeDescription])
  {
    localizedLowercaseString = [localizedPluralFilterDescription localizedLowercaseString];

    localizedPluralFilterDescription = localizedLowercaseString;
  }

  if (objc_opt_respondsToSelector())
  {
    localizedLowercaseString2 = [(objc_class *)v4 localizedCountDescriptionWithValue:[(WFDeletionAuthorizationState *)self count]];
    if (localizedLowercaseString2)
    {
LABEL_5:
      v8 = MEMORY[0x1E696AEC0];
      v9 = WFLocalizedString(@"This action is trying to delete %@, which is not allowed.");
      [v8 stringWithFormat:v9, localizedLowercaseString2];
      v17 = LABEL_11:;

      goto LABEL_12;
    }
  }

  else
  {
    v10 = MEMORY[0x1E696AEC0];
    countDescription = [(objc_class *)v4 countDescription];
    v12 = [v10 localizedStringWithFormat:countDescription, -[WFDeletionAuthorizationState count](self, "count")];
    localizedLowercaseString2 = [v12 localizedLowercaseString];

    if (localizedLowercaseString2)
    {
      goto LABEL_5;
    }
  }

  v13 = getWFWorkflowExecutionLogObject();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (localizedPluralFilterDescription)
  {
    if (v14)
    {
      contentItemClassName2 = [(WFDeletionAuthorizationState *)self contentItemClassName];
      *buf = 136315394;
      v30 = "[WFDeletionAuthorizationState localizedExfiltrationRestrictedError]";
      v31 = 2112;
      v32 = contentItemClassName2;
      _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_FAULT, "%s Missing countDescription for %@", buf, 0x16u);
    }

    v16 = MEMORY[0x1E696AEC0];
    v9 = WFLocalizedString(@"This action is trying to delete a large amount of %@, which is not allowed.");
    [v16 stringWithFormat:v9, localizedPluralFilterDescription];
    goto LABEL_11;
  }

  if (v14)
  {
    contentItemClassName3 = [(WFDeletionAuthorizationState *)self contentItemClassName];
    *buf = 136315394;
    v30 = "[WFDeletionAuthorizationState localizedExfiltrationRestrictedError]";
    v31 = 2112;
    v32 = contentItemClassName3;
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

- (WFDeletionAuthorizationState)stateWithStatus:(id)status count:(unint64_t)count
{
  statusCopy = status;
  v7 = [WFDeletionAuthorizationState alloc];
  contentItemClassName = [(WFDeletionAuthorizationState *)self contentItemClassName];
  actionUUID = [(WFDeletionAuthorizationState *)self actionUUID];
  v10 = [(WFDeletionAuthorizationState *)v7 initWithStatus:statusCopy contentItemClassName:contentItemClassName actionUUID:actionUUID count:count];

  return v10;
}

- (WFDeletionAuthorizationState)initWithStatus:(id)status contentItemClassName:(id)name actionUUID:(id)d count:(unint64_t)count
{
  statusCopy = status;
  nameCopy = name;
  dCopy = d;
  v15 = dCopy;
  if (nameCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFDeletionAuthorizationState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"contentItemClassName"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFDeletionAuthorizationState.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"actionUUID"}];

LABEL_3:
  v26.receiver = self;
  v26.super_class = WFDeletionAuthorizationState;
  v16 = [(WFDeletionAuthorizationState *)&v26 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_status, status);
    v18 = [nameCopy copy];
    contentItemClassName = v17->_contentItemClassName;
    v17->_contentItemClassName = v18;

    v20 = [v15 copy];
    actionUUID = v17->_actionUUID;
    v17->_actionUUID = v20;

    v17->_count = count;
    v22 = v17;
  }

  return v17;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v28 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"DataType"];
  v6 = v5;
  if (v5 && [v5 isEqualToString:@"DeletionAuthorization"])
  {
    v7 = [representationCopy objectForKey:@"ContentItemClassName"];
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

    v11 = [representationCopy objectForKey:@"Status"];
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

    v14 = [representationCopy objectForKey:@"ActionUUID"];
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

    v17 = [representationCopy objectForKey:@"Count"];
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

    unsignedIntegerValue = [v19 unsignedIntegerValue];
    if (v10 && v13 && v16 && unsignedIntegerValue)
    {
      v9 = [[self alloc] initWithStatus:v13 contentItemClassName:v10 actionUUID:v16 count:unsignedIntegerValue];
    }

    else
    {
      v21 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v24 = 136315394;
        v25 = "+[WFDeletionAuthorizationState objectWithWFSerializedRepresentation:]";
        v26 = 2114;
        v27 = representationCopy;
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

+ (id)stateFromDatabaseData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:data options:0 format:0 error:&v13];
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
    v8 = [self objectWithWFSerializedRepresentation:v4];
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

+ (id)dontDeleteErrorForContentItemClass:(Class)class
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "+[WFDeletionAuthorizationState dontDeleteErrorForContentItemClass:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s User tapped 'Don't Delete'.", buf, 0xCu);
  }

  localizedPluralFilterDescription = [(objc_class *)class localizedPluralFilterDescription];
  if ([(objc_class *)class canLowercaseTypeDescription])
  {
    localizedLowercaseString = [localizedPluralFilterDescription localizedLowercaseString];

    localizedPluralFilterDescription = localizedLowercaseString;
  }

  if (localizedPluralFilterDescription)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = WFLocalizedString(@"You opted not to delete any %@.");
    v9 = [v7 localizedStringWithFormat:v8, localizedPluralFilterDescription];
  }

  else
  {
    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v11 = NSStringFromClass(class);
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

+ (id)deniedPermissionsErrorForContentItemClass:(Class)class
{
  v22 = *MEMORY[0x1E69E9840];
  localizedPluralFilterDescription = [(objc_class *)class localizedPluralFilterDescription];
  if ([(objc_class *)class canLowercaseTypeDescription])
  {
    localizedLowercaseString = [localizedPluralFilterDescription localizedLowercaseString];

    localizedPluralFilterDescription = localizedLowercaseString;
  }

  if (localizedPluralFilterDescription)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = WFLocalizedString(@"This shortcut can’t delete %@. You can change this in the shortcut’s privacy settings.");
    v8 = [v6 localizedStringWithFormat:v7, localizedPluralFilterDescription];
  }

  else
  {
    v9 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v10 = NSStringFromClass(class);
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