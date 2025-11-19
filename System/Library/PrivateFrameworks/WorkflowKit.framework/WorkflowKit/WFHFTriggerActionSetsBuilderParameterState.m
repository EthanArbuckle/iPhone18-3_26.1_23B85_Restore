@interface WFHFTriggerActionSetsBuilderParameterState
- (BOOL)isEqual:(id)a3;
- (HFTriggerActionSetsBuilder)triggerActionSetsBuilder;
- (HMHome)home;
- (NSArray)actionSets;
- (WFHFTriggerActionSetsBuilderParameterState)initWithActionSets:(id)a3 homeIdentifier:(id)a4;
- (WFHFTriggerActionSetsBuilderParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHFTriggerActionSetsBuilderParameterState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
  v5 = [v3 combine:v4];

  v6 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
  v7 = [v3 combine:v6];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFHFTriggerActionSetsBuilderParameterState *)v4 serializedActionSets];
      v6 = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
      if ([v5 isEqual:v6])
      {
        v7 = [(WFHFTriggerActionSetsBuilderParameterState *)v4 homeIdentifier];
        v8 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (WFPropertyListObject)serializedRepresentation
{
  v3 = objc_opt_new();
  v4 = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
  [v3 setObject:v4 forKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateActionSets"];

  v5 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];

  if (v5)
  {
    v6 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
    [v3 setObject:v6 forKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateHome"];
  }

  return v3;
}

- (WFHFTriggerActionSetsBuilderParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = WFHFTriggerActionSetsBuilderParameterState;
  v7 = [(WFHFTriggerActionSetsBuilderParameterState *)&v15 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v6;
    v9 = [v8 objectForKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateHome"];
    homeIdentifier = v7->_homeIdentifier;
    v7->_homeIdentifier = v9;

    v11 = [v8 objectForKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateActionSets"];

    serializedActionSets = v7->_serializedActionSets;
    v7->_serializedActionSets = v11;

    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (WFHFTriggerActionSetsBuilderParameterState)initWithActionSets:(id)a3 homeIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFHFTriggerActionSetsBuilderParameterState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHFTriggerActionSetsBuilderParameterState;
  v9 = [(WFHFTriggerActionSetsBuilderParameterState *)&v17 init];
  if (v9)
  {
    v10 = [v8 copy];
    homeIdentifier = v9->_homeIdentifier;
    v9->_homeIdentifier = v10;

    v12 = [v7 if_compactMap:&__block_literal_global_39033];
    serializedActionSets = v9->_serializedActionSets;
    v9->_serializedActionSets = v12;

    v14 = v9;
  }

  return v9;
}

- (HFTriggerActionSetsBuilder)triggerActionSetsBuilder
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(WFHFTriggerActionSetsBuilderParameterState *)self home];
  if (v3)
  {
    v4 = [(WFHFTriggerActionSetsBuilderParameterState *)self actionSets];
    v5 = [objc_alloc(getHFTriggerActionSetsBuilderClass_39043()) initWithActionSets:v4 inHome:v3];
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
      v10 = 136315394;
      v11 = "[WFHFTriggerActionSetsBuilderParameterState triggerActionSetsBuilder]";
      v12 = 2114;
      v13 = v7;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to find home with identifier: %{public}@", &v10, 0x16u);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)actionSets
{
  v3 = [(WFHFTriggerActionSetsBuilderParameterState *)self home];
  if (v3)
  {
    v4 = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__WFHFTriggerActionSetsBuilderParameterState_actionSets__block_invoke;
    v7[3] = &unk_1E8379440;
    v8 = v3;
    v5 = [v4 if_compactMap:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __56__WFHFTriggerActionSetsBuilderParameterState_actionSets__block_invoke(uint64_t a1, void *a2)
{
  v3 = getHMActionSetClass;
  v4 = a2;
  v5 = [objc_alloc(v3()) initWithShortcutsDictionaryRepresentation:v4 home:*(a1 + 32)];

  return v5;
}

- (HMHome)home
{
  v3 = +[WFHomeManager sharedManager];
  v4 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
  v5 = [v3 homeWithIdentifier:v4];

  return v5;
}

@end