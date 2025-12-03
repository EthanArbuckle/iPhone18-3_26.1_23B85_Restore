@interface WFHFTriggerActionSetsBuilderParameterState
- (BOOL)isEqual:(id)equal;
- (HFTriggerActionSetsBuilder)triggerActionSetsBuilder;
- (HMHome)home;
- (NSArray)actionSets;
- (WFHFTriggerActionSetsBuilderParameterState)initWithActionSets:(id)sets homeIdentifier:(id)identifier;
- (WFHFTriggerActionSetsBuilderParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFPropertyListObject)serializedRepresentation;
- (unint64_t)hash;
@end

@implementation WFHFTriggerActionSetsBuilderParameterState

- (unint64_t)hash
{
  v3 = objc_opt_new();
  serializedActionSets = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
  v5 = [v3 combine:serializedActionSets];

  homeIdentifier = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
  v7 = [v3 combine:homeIdentifier];

  v8 = [v3 finalize];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      serializedActionSets = [(WFHFTriggerActionSetsBuilderParameterState *)equalCopy serializedActionSets];
      serializedActionSets2 = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
      if ([serializedActionSets isEqual:serializedActionSets2])
      {
        homeIdentifier = [(WFHFTriggerActionSetsBuilderParameterState *)equalCopy homeIdentifier];
        homeIdentifier2 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
        v9 = [homeIdentifier isEqual:homeIdentifier2];
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
  serializedActionSets = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
  [v3 setObject:serializedActionSets forKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateActionSets"];

  homeIdentifier = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];

  if (homeIdentifier)
  {
    homeIdentifier2 = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
    [v3 setObject:homeIdentifier2 forKeyedSubscript:@"WFHFTriggerActionSetsBuilderParameterStateHome"];
  }

  return v3;
}

- (WFHFTriggerActionSetsBuilderParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = WFHFTriggerActionSetsBuilderParameterState;
  v7 = [(WFHFTriggerActionSetsBuilderParameterState *)&v15 init];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = representationCopy;
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

- (WFHFTriggerActionSetsBuilderParameterState)initWithActionSets:(id)sets homeIdentifier:(id)identifier
{
  setsCopy = sets;
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFHFTriggerActionSetsBuilderParameterState.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"homeIdentifier"}];
  }

  v17.receiver = self;
  v17.super_class = WFHFTriggerActionSetsBuilderParameterState;
  v9 = [(WFHFTriggerActionSetsBuilderParameterState *)&v17 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    homeIdentifier = v9->_homeIdentifier;
    v9->_homeIdentifier = v10;

    v12 = [setsCopy if_compactMap:&__block_literal_global_39033];
    serializedActionSets = v9->_serializedActionSets;
    v9->_serializedActionSets = v12;

    v14 = v9;
  }

  return v9;
}

- (HFTriggerActionSetsBuilder)triggerActionSetsBuilder
{
  v14 = *MEMORY[0x1E69E9840];
  home = [(WFHFTriggerActionSetsBuilderParameterState *)self home];
  if (home)
  {
    actionSets = [(WFHFTriggerActionSetsBuilderParameterState *)self actionSets];
    v5 = [objc_alloc(getHFTriggerActionSetsBuilderClass_39043()) initWithActionSets:actionSets inHome:home];
  }

  else
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      homeIdentifier = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
      v10 = 136315394;
      v11 = "[WFHFTriggerActionSetsBuilderParameterState triggerActionSetsBuilder]";
      v12 = 2114;
      v13 = homeIdentifier;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Failed to find home with identifier: %{public}@", &v10, 0x16u);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSArray)actionSets
{
  home = [(WFHFTriggerActionSetsBuilderParameterState *)self home];
  if (home)
  {
    serializedActionSets = [(WFHFTriggerActionSetsBuilderParameterState *)self serializedActionSets];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__WFHFTriggerActionSetsBuilderParameterState_actionSets__block_invoke;
    v7[3] = &unk_1E8379440;
    v8 = home;
    v5 = [serializedActionSets if_compactMap:v7];
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
  homeIdentifier = [(WFHFTriggerActionSetsBuilderParameterState *)self homeIdentifier];
  v5 = [v3 homeWithIdentifier:homeIdentifier];

  return v5;
}

@end