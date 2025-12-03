@interface WFSmartPromptState
+ (id)localizedDeniedPermissionsErrorWithContentDestination:(id)destination;
+ (id)localizedUnlockedDeviceRequiredError;
+ (id)localizedUnsupportedEnvironmentError;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (id)stateFromDatabaseData:(id)data;
- (BOOL)matches:(id)matches ignoringAccountData:(BOOL)data;
- (NSString)description;
- (WFSmartPromptState)initWithCoder:(id)coder;
- (WFSmartPromptState)initWithMode:(id)mode sourceContentAttribution:(id)attribution actionUUID:(id)d contentDestination:(id)destination status:(id)status;
- (WFSmartPromptState)stateWithStatus:(id)status;
- (WFSmartPromptState)stateWithStatus:(id)status actionUUID:(id)d;
- (id)databaseDataWithError:(id *)error;
- (id)localizedDeniedPermissionsError;
- (id)localizedExfiltrationRestrictedError;
- (id)siriActionToolDescription;
- (id)stateByReplacingAccountWithAppOrigin;
- (id)wfSerializedRepresentation;
- (void)encodeWithCoder:(id)coder;
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

- (WFSmartPromptState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  allContentLocationClasses = [MEMORY[0x1E6996D78] allContentLocationClasses];
  v7 = [coderCopy decodeObjectOfClasses:allContentLocationClasses forKey:@"contentDestination"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceContentAttribution"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionUUID"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];

  v11 = [(WFSmartPromptState *)self initWithMode:v5 sourceContentAttribution:v8 actionUUID:v9 contentDestination:v7 status:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mode = [(WFSmartPromptState *)self mode];
  [coderCopy encodeObject:mode forKey:@"mode"];

  sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
  [coderCopy encodeObject:sourceContentAttribution forKey:@"sourceContentAttribution"];

  actionUUID = [(WFSmartPromptState *)self actionUUID];
  [coderCopy encodeObject:actionUUID forKey:@"actionUUID"];

  contentDestination = [(WFSmartPromptState *)self contentDestination];
  [coderCopy encodeObject:contentDestination forKey:@"contentDestination"];

  status = [(WFSmartPromptState *)self status];
  [coderCopy encodeObject:status forKey:@"status"];
}

- (id)stateByReplacingAccountWithAppOrigin
{
  v3 = [WFSmartPromptState alloc];
  mode = [(WFSmartPromptState *)self mode];
  sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
  attributionByReplacingAccountWithAppOrigin = [sourceContentAttribution attributionByReplacingAccountWithAppOrigin];
  actionUUID = [(WFSmartPromptState *)self actionUUID];
  contentDestination = [(WFSmartPromptState *)self contentDestination];
  status = [(WFSmartPromptState *)self status];
  v10 = [(WFSmartPromptState *)v3 initWithMode:mode sourceContentAttribution:attributionByReplacingAccountWithAppOrigin actionUUID:actionUUID contentDestination:contentDestination status:status];

  return v10;
}

- (BOOL)matches:(id)matches ignoringAccountData:(BOOL)data
{
  dataCopy = data;
  matchesCopy = matches;
  actionUUID = [(WFSmartPromptState *)self actionUUID];
  actionUUID2 = [matchesCopy actionUUID];
  if ([actionUUID isEqualToString:actionUUID2])
  {
    mode = [(WFSmartPromptState *)self mode];
    mode2 = [matchesCopy mode];
    if ([mode isEqualToString:mode2])
    {
      contentDestination = [(WFSmartPromptState *)self contentDestination];
      contentDestination2 = [matchesCopy contentDestination];
      v13 = [contentDestination matches:contentDestination2];

      if (!v13)
      {
        LOBYTE(v20) = 0;
        goto LABEL_12;
      }

      sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
      if (!sourceContentAttribution || (v15 = sourceContentAttribution, [matchesCopy sourceContentAttribution], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, !v16))
      {
        LOBYTE(v20) = 1;
        goto LABEL_12;
      }

      sourceContentAttribution2 = [(WFSmartPromptState *)self sourceContentAttribution];
      actionUUID = sourceContentAttribution2;
      if (dataCopy)
      {
        actionUUID2 = [sourceContentAttribution2 attributionByReplacingAccountWithAppOrigin];
        mode = [actionUUID2 origin];
        mode2 = [matchesCopy sourceContentAttribution];
        attributionByReplacingAccountWithAppOrigin = [mode2 attributionByReplacingAccountWithAppOrigin];
        origin = [attributionByReplacingAccountWithAppOrigin origin];
        LOBYTE(v20) = [mode isEqual:origin];
      }

      else
      {
        actionUUID2 = [sourceContentAttribution2 origin];
        mode = [matchesCopy sourceContentAttribution];
        mode2 = [mode origin];
        v20 = [actionUUID2 isEqual:mode2];
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
  contentDestination = [(WFSmartPromptState *)self contentDestination];
  wfSerializedRepresentation = [contentDestination wfSerializedRepresentation];

  if (wfSerializedRepresentation)
  {
    v5 = MEMORY[0x1E695DF90];
    v18[0] = wfSerializedRepresentation;
    v6 = [(WFSmartPromptState *)self status:@"ContentDestination"];
    v18[1] = v6;
    v17[2] = @"Mode";
    mode = [(WFSmartPromptState *)self mode];
    v17[3] = @"DataType";
    v18[2] = mode;
    v18[3] = @"SmartPrompt";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
    v9 = [v5 dictionaryWithDictionary:v8];

    sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
    wfSerializedRepresentation2 = [sourceContentAttribution wfSerializedRepresentation];

    if (wfSerializedRepresentation2)
    {
      [v9 setValue:wfSerializedRepresentation2 forKey:@"SourceContentAttribution"];
    }

    actionUUID = [(WFSmartPromptState *)self actionUUID];

    if (actionUUID)
    {
      actionUUID2 = [(WFSmartPromptState *)self actionUUID];
      [v9 setValue:actionUUID2 forKey:@"ActionUUID"];
    }
  }

  else
  {
    wfSerializedRepresentation2 = getWFSecurityLogObject();
    if (os_log_type_enabled(wfSerializedRepresentation2, OS_LOG_TYPE_FAULT))
    {
      v14 = [(WFSmartPromptState *)self description];
      *buf = 136315394;
      v20 = "[WFSmartPromptState wfSerializedRepresentation]";
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_1CA256000, wfSerializedRepresentation2, OS_LOG_TYPE_FAULT, "%s Couldn't serialize WFSmartPromptState because contentDestination was nil, self: %{public}@", buf, 0x16u);
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
  sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
  v6 = [sourceContentAttribution count];
  sourceContentAttribution2 = [(WFSmartPromptState *)self sourceContentAttribution];
  origin = [sourceContentAttribution2 origin];
  localizedTitle = [origin localizedTitle];
  v10 = [v3 stringWithFormat:v4, v6, localizedTitle];

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
  contentDestination = [(WFSmartPromptState *)self contentDestination];
  v5 = [v3 localizedDeniedPermissionsErrorWithContentDestination:contentDestination];

  return v5;
}

- (id)databaseDataWithError:(id *)error
{
  v4 = MEMORY[0x1E696AE40];
  wfSerializedRepresentation = [(WFSmartPromptState *)self wfSerializedRepresentation];
  v6 = [v4 dataWithPropertyList:wfSerializedRepresentation format:200 options:0 error:error];

  return v6;
}

- (WFSmartPromptState)stateWithStatus:(id)status actionUUID:(id)d
{
  dCopy = d;
  statusCopy = status;
  v8 = [WFSmartPromptState alloc];
  mode = [(WFSmartPromptState *)self mode];
  sourceContentAttribution = [(WFSmartPromptState *)self sourceContentAttribution];
  contentDestination = [(WFSmartPromptState *)self contentDestination];
  v12 = [(WFSmartPromptState *)v8 initWithMode:mode sourceContentAttribution:sourceContentAttribution actionUUID:dCopy contentDestination:contentDestination status:statusCopy];

  return v12;
}

- (WFSmartPromptState)stateWithStatus:(id)status
{
  statusCopy = status;
  actionUUID = [(WFSmartPromptState *)self actionUUID];
  v6 = [(WFSmartPromptState *)self stateWithStatus:statusCopy actionUUID:actionUUID];

  return v6;
}

- (WFSmartPromptState)initWithMode:(id)mode sourceContentAttribution:(id)attribution actionUUID:(id)d contentDestination:(id)destination status:(id)status
{
  modeCopy = mode;
  attributionCopy = attribution;
  dCopy = d;
  destinationCopy = destination;
  statusCopy = status;
  v22.receiver = self;
  v22.super_class = WFSmartPromptState;
  v17 = [(WFSmartPromptState *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mode, mode);
    objc_storeStrong(&v18->_sourceContentAttribution, attribution);
    objc_storeStrong(&v18->_actionUUID, d);
    objc_storeStrong(&v18->_contentDestination, destination);
    objc_storeStrong(&v18->_status, status);
    v19 = v18;
  }

  return v18;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v23 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"DataType"];
  v6 = v5;
  if (v5 && ![v5 isEqualToString:@"SmartPrompt"])
  {
    v17 = 0;
    goto LABEL_23;
  }

  v7 = [representationCopy objectForKey:@"ActionUUID"];
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
  v9 = [representationCopy valueForKey:@"ContentDestination"];
  v10 = [v8 objectWithWFSerializedRepresentation:v9];

  if (v10)
  {
    v11 = [representationCopy objectForKey:@"Status"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [representationCopy objectForKey:@"Mode"];
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v13 = [representationCopy objectForKey:@"SourceContentAttribution"];
          if (v13)
          {
            v14 = MEMORY[0x1E6996D30];
            v15 = [representationCopy objectForKey:@"SourceContentAttribution"];
            v16 = [v14 objectWithWFSerializedRepresentation:v15];
          }

          else
          {
            v16 = 0;
          }

          v17 = [[self alloc] initWithMode:v12 sourceContentAttribution:v16 actionUUID:v7 contentDestination:v10 status:v11];
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

+ (id)localizedDeniedPermissionsErrorWithContentDestination:(id)destination
{
  v16[1] = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  localizedTitle = [destinationCopy localizedTitle];

  v5 = MEMORY[0x1E696AEC0];
  if (localizedTitle)
  {
    v6 = @"This shortcut can't access “%@”. You can change this in the shortcut’s privacy settings.";
  }

  else
  {
    v6 = @"This shortcut can't access a required resource. You can change this in the shortcut’s privacy settings.";
  }

  v7 = WFLocalizedString(v6);
  localizedTitle2 = [destinationCopy localizedTitle];

  v9 = [v5 localizedStringWithFormat:v7, localizedTitle2];

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v10 errorWithDomain:@"WFSmartPromptErrorDomain" code:0 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
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
      v15 = "+[WFSmartPromptState stateFromDatabaseData:]";
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Error deserializing smart prompt state property list: %@", buf, 0x16u);
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