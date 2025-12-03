@interface WFUserDefinedVariable
- (BOOL)isAvailable;
- (BOOL)requiresModernVariableSupport;
- (NSString)name;
- (WFUserDefinedVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider;
- (WFUserDefinedVariable)initWithName:(id)name variableProvider:(id)provider aggrandizements:(id)aggrandizements;
- (id)calculateAvailability;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
- (void)variableProvider:(id)provider variableNameDidChangeTo:(id)to;
- (void)variableProviderDidInvalidateOutputDetails:(id)details;
@end

@implementation WFUserDefinedVariable

- (id)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (void)variableProviderDidInvalidateOutputDetails:(id)details
{
  v10.receiver = self;
  v10.super_class = WFUserDefinedVariable;
  [(WFVariable *)&v10 variableProviderDidInvalidateOutputDetails:details];
  cachedAvailablility = [(WFUserDefinedVariable *)self cachedAvailablility];
  cachedContentClasses = [(WFUserDefinedVariable *)self cachedContentClasses];
  [(WFUserDefinedVariable *)self setCachedAvailablility:0];
  [(WFUserDefinedVariable *)self setCachedContentClasses:0];
  if (cachedAvailablility)
  {
    isAvailable = [(WFUserDefinedVariable *)self isAvailable];
    v7 = isAvailable ^ [cachedAvailablility BOOLValue];
    if (!cachedContentClasses)
    {
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!cachedContentClasses)
    {
      goto LABEL_10;
    }

    LOBYTE(v7) = 0;
  }

  possibleContentClasses = [(WFUserDefinedVariable *)self possibleContentClasses];
  v9 = [possibleContentClasses isEqualToOrderedSet:cachedContentClasses];

  if (!v9 || (v7 & 1) != 0)
  {
LABEL_9:
    [(WFVariable *)self variableUpdated];
  }

LABEL_10:
}

- (void)variableProvider:(id)provider variableNameDidChangeTo:(id)to
{
  toCopy = to;
  providerCopy = provider;
  dictionary = [(WFVariable *)self dictionary];
  v9 = [dictionary mutableCopy];

  if (toCopy)
  {
    v10 = [toCopy copy];
    [v9 setObject:v10 forKey:@"VariableName"];
  }

  else
  {
    [v9 removeObjectForKey:@"VariableName"];
  }

  [(WFVariable *)self setDictionary:v9];
  [(WFVariable *)self variableUpdated];
  v11.receiver = self;
  v11.super_class = WFUserDefinedVariable;
  [(WFVariable *)&v11 variableProvider:providerCopy variableNameDidChangeTo:toCopy];
}

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  handlerCopy = handler;
  sourceCopy = source;
  dictionary = [(WFVariable *)self dictionary];
  v8 = [dictionary objectForKey:@"VariableName"];
  v9 = [sourceCopy contentForVariableWithName:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E6996D40]);
  }

  handlerCopy[2](handlerCopy, v9, 0);
}

- (id)possibleContentClasses
{
  cachedContentClasses = self->_cachedContentClasses;
  null = [MEMORY[0x1E695DFB0] null];

  if (cachedContentClasses == null)
  {
    v5 = 0;
  }

  else if (cachedContentClasses)
  {
    cachedContentClasses = cachedContentClasses;
    v5 = cachedContentClasses;
  }

  else
  {
    variableProvider = [(WFUserDefinedVariable *)self variableProvider];
    dictionary = [(WFVariable *)self dictionary];
    v8 = [dictionary objectForKey:@"VariableName"];
    v5 = [variableProvider possibleContentClassesForVariableNamed:v8];

    if (v5)
    {
      null2 = v5;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    cachedContentClasses = self->_cachedContentClasses;
    self->_cachedContentClasses = null2;
  }

  return v5;
}

- (NSString)name
{
  dictionary = [(WFVariable *)self dictionary];
  v3 = [dictionary objectForKey:@"VariableName"];
  v4 = v3;
  v5 = &stru_1F4A1C408;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = @"Repeat Item";
  if (([(__CFString *)v6 hasPrefix:@"Repeat Item"]& 1) != 0)
  {
    v8 = @"Repeat Item %d";
  }

  else
  {
    v7 = @"Repeat Index";
    if (![(__CFString *)v6 hasPrefix:@"Repeat Index"])
    {
      goto LABEL_8;
    }

    v8 = @"Repeat Index %d";
  }

  v9 = WFLocalizedString(v7);
  v10 = WFLocalizedString(v8);
  v11 = WFLocalizedRepeatActionVariableName(v6, v9, v10);

  v6 = v11;
LABEL_8:

  return v6;
}

- (id)icon
{
  dictionary = [(WFVariable *)self dictionary];
  v3 = [dictionary objectForKey:@"VariableName"];
  v4 = v3;
  v5 = &stru_1F4A1C408;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if (([(__CFString *)v6 hasPrefix:@"Repeat Item"]& 1) != 0 || [(__CFString *)v6 hasPrefix:@"Repeat Index"])
  {
    v7 = [objc_alloc(MEMORY[0x1E69E0D70]) initWithSymbolName:@"repeat"];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69E0B60]);
    v9 = [MEMORY[0x1E69E0B58] workflowKitImageNamed:@"Variable"];
    v7 = [v8 initWithImage:v9];
  }

  return v7;
}

- (BOOL)requiresModernVariableSupport
{
  aggrandizements = [(WFVariable *)self aggrandizements];
  v3 = [aggrandizements count] != 0;

  return v3;
}

- (id)calculateAvailability
{
  cachedAvailablility = self->_cachedAvailablility;
  null = [MEMORY[0x1E695DFB0] null];

  if (cachedAvailablility == null)
  {
    v5 = 0;
  }

  else if (cachedAvailablility)
  {
    cachedAvailablility = cachedAvailablility;
    v5 = cachedAvailablility;
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    variableProvider = [(WFUserDefinedVariable *)self variableProvider];
    dictionary = [(WFVariable *)self dictionary];
    v9 = [dictionary objectForKey:@"VariableName"];
    v5 = [v6 numberWithBool:{objc_msgSend(variableProvider, "isVariableWithNameAvailable:", v9)}];

    if (v5)
    {
      null2 = v5;
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    cachedAvailablility = self->_cachedAvailablility;
    self->_cachedAvailablility = null2;
  }

  return v5;
}

- (BOOL)isAvailable
{
  calculateAvailability = [(WFUserDefinedVariable *)self calculateAvailability];
  bOOLValue = [calculateAvailability BOOLValue];

  return bOOLValue;
}

- (WFUserDefinedVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v8 = [dictionaryCopy objectForKey:@"VariableName"];
  v9 = objc_opt_class();
  v10 = v8;
  if (v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = getWFGeneralLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v20 = "WFEnforceClass";
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = v9;
      v13 = v24;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", buf, 0x2Au);
    }

    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  if (v11 && (v18.receiver = self, v18.super_class = WFUserDefinedVariable, v14 = [(WFVariable *)&v18 initWithDictionary:dictionaryCopy variableProvider:providerCopy], (self = v14) != 0))
  {
    objc_storeWeak(&v14->_variableProvider, providerCopy);
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFUserDefinedVariable)initWithName:(id)name variableProvider:(id)provider aggrandizements:(id)aggrandizements
{
  nameCopy = name;
  providerCopy = provider;
  aggrandizementsCopy = aggrandizements;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFUserDefinedVariable.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v12 = WFVariableDictionaryWithAggrandizements(aggrandizementsCopy);
  v13 = [v12 mutableCopy];

  [v13 setObject:nameCopy forKey:@"VariableName"];
  v14 = [(WFUserDefinedVariable *)self initWithDictionary:v13 variableProvider:providerCopy];

  return v14;
}

@end