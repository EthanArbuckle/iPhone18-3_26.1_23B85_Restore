@interface WFUserDefinedVariable
- (BOOL)isAvailable;
- (BOOL)requiresModernVariableSupport;
- (NSString)name;
- (WFUserDefinedVariable)initWithDictionary:(id)a3 variableProvider:(id)a4;
- (WFUserDefinedVariable)initWithName:(id)a3 variableProvider:(id)a4 aggrandizements:(id)a5;
- (id)calculateAvailability;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
- (void)variableProvider:(id)a3 variableNameDidChangeTo:(id)a4;
- (void)variableProviderDidInvalidateOutputDetails:(id)a3;
@end

@implementation WFUserDefinedVariable

- (id)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (void)variableProviderDidInvalidateOutputDetails:(id)a3
{
  v10.receiver = self;
  v10.super_class = WFUserDefinedVariable;
  [(WFVariable *)&v10 variableProviderDidInvalidateOutputDetails:a3];
  v4 = [(WFUserDefinedVariable *)self cachedAvailablility];
  v5 = [(WFUserDefinedVariable *)self cachedContentClasses];
  [(WFUserDefinedVariable *)self setCachedAvailablility:0];
  [(WFUserDefinedVariable *)self setCachedContentClasses:0];
  if (v4)
  {
    v6 = [(WFUserDefinedVariable *)self isAvailable];
    v7 = v6 ^ [v4 BOOLValue];
    if (!v5)
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
    if (!v5)
    {
      goto LABEL_10;
    }

    LOBYTE(v7) = 0;
  }

  v8 = [(WFUserDefinedVariable *)self possibleContentClasses];
  v9 = [v8 isEqualToOrderedSet:v5];

  if (!v9 || (v7 & 1) != 0)
  {
LABEL_9:
    [(WFVariable *)self variableUpdated];
  }

LABEL_10:
}

- (void)variableProvider:(id)a3 variableNameDidChangeTo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFVariable *)self dictionary];
  v9 = [v8 mutableCopy];

  if (v6)
  {
    v10 = [v6 copy];
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
  [(WFVariable *)&v11 variableProvider:v7 variableNameDidChangeTo:v6];
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [(WFVariable *)self dictionary];
  v8 = [v7 objectForKey:@"VariableName"];
  v9 = [v6 contentForVariableWithName:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E6996D40]);
  }

  v10[2](v10, v9, 0);
}

- (id)possibleContentClasses
{
  cachedContentClasses = self->_cachedContentClasses;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (cachedContentClasses == v4)
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
    v6 = [(WFUserDefinedVariable *)self variableProvider];
    v7 = [(WFVariable *)self dictionary];
    v8 = [v7 objectForKey:@"VariableName"];
    v5 = [v6 possibleContentClassesForVariableNamed:v8];

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
    }

    cachedContentClasses = self->_cachedContentClasses;
    self->_cachedContentClasses = v9;
  }

  return v5;
}

- (NSString)name
{
  v2 = [(WFVariable *)self dictionary];
  v3 = [v2 objectForKey:@"VariableName"];
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
  v2 = [(WFVariable *)self dictionary];
  v3 = [v2 objectForKey:@"VariableName"];
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
  v2 = [(WFVariable *)self aggrandizements];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)calculateAvailability
{
  cachedAvailablility = self->_cachedAvailablility;
  v4 = [MEMORY[0x1E695DFB0] null];

  if (cachedAvailablility == v4)
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
    v7 = [(WFUserDefinedVariable *)self variableProvider];
    v8 = [(WFVariable *)self dictionary];
    v9 = [v8 objectForKey:@"VariableName"];
    v5 = [v6 numberWithBool:{objc_msgSend(v7, "isVariableWithNameAvailable:", v9)}];

    if (v5)
    {
      v10 = v5;
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
    }

    cachedAvailablility = self->_cachedAvailablility;
    self->_cachedAvailablility = v10;
  }

  return v5;
}

- (BOOL)isAvailable
{
  v2 = [(WFUserDefinedVariable *)self calculateAvailability];
  v3 = [v2 BOOLValue];

  return v3;
}

- (WFUserDefinedVariable)initWithDictionary:(id)a3 variableProvider:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"VariableName"];
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

  if (v11 && (v18.receiver = self, v18.super_class = WFUserDefinedVariable, v14 = [(WFVariable *)&v18 initWithDictionary:v6 variableProvider:v7], (self = v14) != 0))
  {
    objc_storeWeak(&v14->_variableProvider, v7);
    self = self;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (WFUserDefinedVariable)initWithName:(id)a3 variableProvider:(id)a4 aggrandizements:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFUserDefinedVariable.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v12 = WFVariableDictionaryWithAggrandizements(v11);
  v13 = [v12 mutableCopy];

  [v13 setObject:v9 forKey:@"VariableName"];
  v14 = [(WFUserDefinedVariable *)self initWithDictionary:v13 variableProvider:v10];

  return v14;
}

@end