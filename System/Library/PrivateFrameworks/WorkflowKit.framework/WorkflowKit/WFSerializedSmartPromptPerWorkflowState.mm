@interface WFSerializedSmartPromptPerWorkflowState
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (WFSerializedSmartPromptPerWorkflowState)initWithData:(id)data actionUUID:(id)d;
- (WFSerializedSmartPromptPerWorkflowState)initWithDictionary:(id)dictionary;
@end

@implementation WFSerializedSmartPromptPerWorkflowState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      data = [(WFSerializedSmartPromptPerWorkflowState *)self data];
      v8 = [WFSmartPromptState stateFromDatabaseData:data];
      wfSerializedRepresentation = [v8 wfSerializedRepresentation];

      data2 = [(WFSerializedSmartPromptPerWorkflowState *)v6 data];
      v11 = [WFSmartPromptState stateFromDatabaseData:data2];
      wfSerializedRepresentation2 = [v11 wfSerializedRepresentation];

      v13 = [wfSerializedRepresentation isEqualToDictionary:wfSerializedRepresentation2];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  data = [(WFSerializedSmartPromptPerWorkflowState *)self data];
  [dictionary setObject:data forKey:@"data"];

  actionUUID = [(WFSerializedSmartPromptPerWorkflowState *)self actionUUID];

  if (actionUUID)
  {
    actionUUID2 = [(WFSerializedSmartPromptPerWorkflowState *)self actionUUID];
    [dictionary setObject:actionUUID2 forKey:@"actionUUID"];
  }

  return dictionary;
}

- (WFSerializedSmartPromptPerWorkflowState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"actionUUID"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"data"];

  if (v6)
  {
    self = [(WFSerializedSmartPromptPerWorkflowState *)self initWithData:v6 actionUUID:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (WFSerializedSmartPromptPerWorkflowState)initWithData:(id)data actionUUID:(id)d
{
  dataCopy = data;
  dCopy = d;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSerializedSmartPromptPerWorkflowState.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v17.receiver = self;
  v17.super_class = WFSerializedSmartPromptPerWorkflowState;
  v9 = [(WFSerializedSmartPromptPerWorkflowState *)&v17 init];
  if (v9)
  {
    v10 = [dCopy copy];
    actionUUID = v9->_actionUUID;
    v9->_actionUUID = v10;

    v12 = [dataCopy copy];
    data = v9->_data;
    v9->_data = v12;

    v14 = v9;
  }

  return v9;
}

@end