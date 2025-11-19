@interface WFSmartPromptState
+ (id)localizedDeniedPermissionsErrorWithContentDestination:(id)a3;
+ (id)localizedUnlockedDeviceRequiredError;
+ (id)localizedUnsupportedEnvironmentError;
+ (id)objectWithWFSerializedRepresentation:(id)a3;
+ (id)stateFromDatabaseData:(id)a3;
- (BOOL)matches:(id)a3 ignoringAccountData:(BOOL)a4;
- (NSString)description;
- (WFSmartPromptState)initWithCoder:(id)a3;
- (WFSmartPromptState)initWithMode:(id)a3 sourceContentAttribution:(id)a4 actionUUID:(id)a5 contentDestination:(id)a6 status:(id)a7;
- (WFSmartPromptState)stateWithStatus:(id)a3;
- (WFSmartPromptState)stateWithStatus:(id)a3 actionUUID:(id)a4;
- (id)databaseDataWithError:(id *)a3;
- (id)localizedDeniedPermissionsError;
- (id)localizedExfiltrationRestrictedError;
- (id)siriActionToolDescription;
- (id)stateByReplacingAccountWithAppOrigin;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSmartPromptState

- (id)siriActionToolDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFSmartPromptState;
  v4 = [(WFSmartPromptState *)&v11 description];
  mode = self->_mode;
  v6 = [(WFContentAttribution *)self->_sourceContentAttribution description];
  v7 = [(WFContentLocation *)self->_contentDestination description];
  actionUUID = self->_actionUUID;
  v9 = [v3 stringWithFormat:@"%@ {\n      - Mode: %@\n      - Source: %@\n      - Destination: %@\n      - Action UUID: %@\n      - Status: %@\n}\n\n", v4, mode, v6, v7, actionUUID, self->_status];

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = WFSmartPromptState;
  v4 = [(WFSmartPromptState *)&v11 description];
  mode = self->_mode;
  v6 = [(WFContentAttribution *)self->_sourceContentAttribution description];
  v7 = [(WFContentLocation *)self->_contentDestination description];
  actionUUID = self->_actionUUID;
  v9 = [v3 stringWithFormat:@"%@: mode: %@, source: %@, destination: %@, actionUUID: %@, status: %@", v4, mode, v6, v7, actionUUID, self->_status];

  return v9;
}

- (WFSmartPromptState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v6 = [MEMORY[0x1E6996D78] allContentLocationClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"contentDestination"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceContentAttribution"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];

  v11 = [(WFSmartPromptState *)self initWithMode:v5 sourceContentAttribution:v8 actionUUID:v9 contentDestination:v7 status:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFSmartPromptState *)self mode];
  [v4 encodeObject:v5 forKey:@"mode"];

  v6 = [(WFSmartPromptState *)self sourceContentAttribution];
  [v4 encodeObject:v6 forKey:@"sourceContentAttribution"];

  v7 = [(WFSmartPromptState *)self actionUUID];
  [v4 encodeObject:v7 forKey:@"actionUUID"];

  v8 = [(WFSmartPromptState *)self contentDestination];
  [v4 encodeObject:v8 forKey:@"contentDestination"];

  v9 = [(WFSmartPromptState *)self status];
  [v4 encodeObject:v9 forKey:@"status"];
}

- (id)stateByReplacingAccountWithAppOrigin
{
  v3 = [WFSmartPromptState alloc];
  v4 = [(WFSmartPromptState *)self mode];
  v5 = [(WFSmartPromptState *)self sourceContentAttribution];
  v6 = [v5 attributionByReplacingAccountWithAppOrigin];
  v7 = [(WFSmartPromptState *)self actionUUID];
  v8 = [(WFSmartPromptState *)self contentDestination];
  v9 = [(WFSmartPromptState *)self status];
  v10 = [(WFSmartPromptState *)v3 initWithMode:v4 sourceContentAttribution:v6 actionUUID:v7 contentDestination:v8 status:v9];

  return v10;
}

- (BOOL)matches:(id)a3 ignoringAccountData:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(WFSmartPromptState *)self actionUUID];
  v8 = [v6 actionUUID];
  if ([v7 isEqualToString:v8])
  {
    v9 = [(WFSmartPromptState *)self mode];
    v10 = [v6 mode];
    if ([v9 isEqualToString:v10])
    {
      v11 = [(WFSmartPromptState *)self contentDestination];
      v12 = [v6 contentDestination];
      v13 = [v11 matches:v12];

      if (!v13)
      {
        LOBYTE(v20) = 0;
        goto LABEL_12;
      }

      v14 = [(WFSmartPromptState *)self sourceContentAttribution];
      if (!v14 || (v15 = v14, [v6 sourceContentAttribution], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
      {
        LOBYTE(v20) = 1;
        goto LABEL_12;
      }

      v17 = [(WFSmartPromptState *)self sourceContentAttribution];
      v7 = v17;
      if (v4)
      {
        v8 = [v17 attributionByReplacingAccountWithAppOrigin];
        v9 = [v8 origin];
        v10 = [v6 sourceContentAttribution];
        v18 = [v10 attributionByReplacingAccountWithAppOrigin];
        v19 = [v18 origin];
        LOBYTE(v20) = [v9 isEqual:v19];
      }

      else
      {
        v8 = [v17 origin];
        v9 = [v6 sourceContentAttribution];
        v10 = [v9 origin];
        v20 = [v8 isEqual:v10];
      }
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

LABEL_12:
  return v20;
}

- (id)wfSerializedRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [(WFSmartPromptState *)self contentDestination];
  v4 = [v3 wfSerializedRepresentation];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF90];
    v18[0] = v4;
    v6 = [(WFSmartPromptState *)self status:@"ContentDestination"];
    v18[1] = v6;
    v17[2] = @"Mode";
    v7 = [(WFSmartPromptState *)self mode];
    v17[3] = @"DataType";
    v18[2] = v7;
    v18[3] = @"SmartPrompt";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v9 = [v5 dictionaryWithDictionary:v8];

    v10 = [(WFSmartPromptState *)self sourceContentAttribution];
    v11 = [v10 wfSerializedRepresentation];

    if (v11)
    {
      [v9 setValue:v11 forKey:@"SourceContentAttribution"];
    }

    v12 = [(WFSmartPromptState *)self actionUUID];

    if (v12)
    {
      v13 = [(WFSmartPromptState *)self actionUUID];
      [v9 setValue:v13 forKey:@"ActionUUID"];
    }
  }

  else
  {
    v11 = getWFSecurityLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v14 = [(WFSmartPromptState *)self description];
      *buf = 136315394;
      v20 = "[WFSmartPromptState wfSerializedRepresentation]";
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_FAULT, "%s Couldn't serialize WFSmartPromptState because contentDestination was nil, self: %{public}@", buf, 0x16u);
    }

    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)localizedExfiltrationRestrictedError
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedPluralString(@"This action is trying to share %lu %@ items, which is not allowed.");
  v5 = [(WFSmartPromptState *)self sourceContentAttribution];
  v6 = [v5 count];
  v7 = [(WFSmartPromptState *)self sourceContentAttribution];
  v8 = [v7 origin];
  v9 = [v8 localizedTitle];
  v10 = [v3 stringWithFormat:v4, v6, v9];

  v11 = MEMORY[0x1E696ABC0];
  v12 = *MEMORY[0x1E696A588];
  v20[0] = v10;
  v13 = *MEMORY[0x1E696A578];
  v19[0] = v12;
  v19[1] = v13;
  v14 = WFLocalizedString(@"You can allow this in Settings.");
  v20[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v16 = [v11 errorWithDomain:@"WFSmartPromptErrorDomain" code:1 userInfo:v15];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)localizedDeniedPermissionsError
{
  v3 = objc_opt_class();
  v4 = [(WFSmartPromptState *)self contentDestination];
  v5 = [v3 localizedDeniedPermissionsErrorWithContentDestination:v4];

  return v5;
}

- (id)databaseDataWithError:(id *)a3
{
  v4 = MEMORY[0x1E696AE40];
  v5 = [(WFSmartPromptState *)self wfSerializedRepresentation];
  v6 = [v4 dataWithPropertyList:v5 format:200 options:0 error:a3];

  return v6;
}

- (WFSmartPromptState)stateWithStatus:(id)a3 actionUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [WFSmartPromptState alloc];
  v9 = [(WFSmartPromptState *)self mode];
  v10 = [(WFSmartPromptState *)self sourceContentAttribution];
  v11 = [(WFSmartPromptState *)self contentDestination];
  v12 = [(WFSmartPromptState *)v8 initWithMode:v9 sourceContentAttribution:v10 actionUUID:v6 contentDestination:v11 status:v7];

  return v12;
}

- (WFSmartPromptState)stateWithStatus:(id)a3
{
  v4 = a3;
  v5 = [(WFSmartPromptState *)self actionUUID];
  v6 = [(WFSmartPromptState *)self stateWithStatus:v4 actionUUID:v5];

  return v6;
}

- (WFSmartPromptState)initWithMode:(id)a3 sourceContentAttribution:(id)a4 actionUUID:(id)a5 contentDestination:(id)a6 status:(id)a7
{
  v21 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = WFSmartPromptState;
  v17 = [(WFSmartPromptState *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mode, a3);
    objc_storeStrong(&v18->_sourceContentAttribution, a4);
    objc_storeStrong(&v18->_actionUUID, a5);
    objc_storeStrong(&v18->_contentDestination, a6);
    objc_storeStrong(&v18->_status, a7);
    v19 = v18;
  }

  return v18;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKey:@"DataType"];
  v6 = v5;
  if (v5 && ![v5 isEqualToString:@"SmartPrompt"])
  {
    v17 = 0;
    goto LABEL_23;
  }

  v7 = [v4 objectForKey:@"ActionUUID"];
  if (!v7)
  {
    v10 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "+[WFSmartPromptState objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to deserialize smart prompt action UUID, returning nil", &v21, 0xCu);
    }

    v17 = 0;
    goto LABEL_22;
  }

  v8 = MEMORY[0x1E6996D78];
  v9 = [v4 valueForKey:@"ContentDestination"];
  v10 = [v8 objectWithWFSerializedRepresentation:v9];

  if (v10)
  {
    v11 = [v4 objectForKey:@"Status"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [v4 objectForKey:@"Mode"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = [v4 objectForKey:@"SourceContentAttribution"];
          if (v13)
          {
            v14 = MEMORY[0x1E6996D30];
            v15 = [v4 objectForKey:@"SourceContentAttribution"];
            v16 = [v14 objectWithWFSerializedRepresentation:v15];
          }

          else
          {
            v16 = 0;
          }

          v17 = [[a1 alloc] initWithMode:v12 sourceContentAttribution:v16 actionUUID:v7 contentDestination:v10 status:v11];
        }

        else
        {

          v12 = getWFWorkflowExecutionLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v21 = 136315138;
            v22 = "+[WFSmartPromptState objectWithWFSerializedRepresentation:]";
            _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Failed to deserialize smart prompt mode, returning nil", &v21, 0xCu);
          }

          v17 = 0;
        }

        goto LABEL_21;
      }
    }

    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "+[WFSmartPromptState objectWithWFSerializedRepresentation:]";
      v18 = "%s Failed to deserialize smart prompt status, returning nil";
LABEL_19:
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_ERROR, v18, &v21, 0xCu);
    }
  }

  else
  {
    v11 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "+[WFSmartPromptState objectWithWFSerializedRepresentation:]";
      v18 = "%s Failed to deserialize smart prompt content destination, returning nil";
      goto LABEL_19;
    }
  }

  v17 = 0;
LABEL_21:

LABEL_22:
LABEL_23:

  v19 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (id)localizedUnlockedDeviceRequiredError
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = WFLocalizedString(@"This shortcut requires privacy permissions that cannot be granted while your device is locked.");
  v3 = WFLocalizedString(@"Please unlock your device to run this shortcut.");
  v4 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A598];
  v10[0] = *MEMORY[0x1E696A588];
  v10[1] = v5;
  v11[0] = v2;
  v11[1] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [v4 errorWithDomain:@"WFSmartPromptErrorDomain" code:2 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)localizedUnsupportedEnvironmentError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = WFLocalizedString(@"This shortcut requires privacy permissions that cannot be granted while running in this environment.");
  v3 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A588];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 errorWithDomain:@"WFSmartPromptErrorDomain" code:2 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)localizedDeniedPermissionsErrorWithContentDestination:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 localizedTitle];

  v5 = MEMORY[0x1E696AEC0];
  if (v4)
  {
    v6 = @"This shortcut can't access “%@”. You can change this in the shortcut’s privacy settings.";
  }

  else
  {
    v6 = @"This shortcut can't access a required resource. You can change this in the shortcut’s privacy settings.";
  }

  v7 = WFLocalizedString(v6);
  v8 = [v3 localizedTitle];

  v9 = [v5 localizedStringWithFormat:v7, v8];

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v10 errorWithDomain:@"WFSmartPromptErrorDomain" code:0 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
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
      v15 = "+[WFSmartPromptState stateFromDatabaseData:]";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error deserializing smart prompt state property list: %@", buf, 0x16u);
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
      v15 = "+[WFSmartPromptState stateFromDatabaseData:]";
      _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_ERROR, "%s Failed to init smart prompt state from database data.", buf, 0xCu);
    }

    v6 = 0;
  }

  v9 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

@end