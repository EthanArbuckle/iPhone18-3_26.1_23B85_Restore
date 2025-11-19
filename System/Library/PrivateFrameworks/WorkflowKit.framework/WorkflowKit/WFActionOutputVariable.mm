@interface WFActionOutputVariable
- (BOOL)isAvailable;
- (BOOL)isRenamed;
- (NSString)name;
- (NSString)outputUUID;
- (WFAction)action;
- (WFActionOutputVariable)initWithAction:(id)a3 variableProvider:(id)a4 aggrandizements:(id)a5;
- (WFActionOutputVariable)initWithDictionary:(id)a3 variableProvider:(id)a4;
- (WFActionOutputVariable)initWithOutputUUID:(id)a3 outputName:(id)a4 variableProvider:(id)a5 aggrandizements:(id)a6;
- (id)calculatedAvailability;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultName;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableBySettingAggrandizements:(id)a3;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4;
- (void)variableProvider:(id)a3 variableNameDidChangeTo:(id)a4;
- (void)variableProviderDidInvalidateOutputDetails:(id)a3;
@end

@implementation WFActionOutputVariable

- (id)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (id)variableBySettingAggrandizements:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFActionOutputVariable;
  v4 = [(WFVariable *)&v7 variableBySettingAggrandizements:a3];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      WeakRetained = objc_loadWeakRetained(&self->_action);
      objc_storeWeak(v4 + 6, WeakRetained);
    }

    else
    {
      WeakRetained = v4;
      v4 = 0;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = WFActionOutputVariable;
  v4 = [(WFVariable *)&v7 copyWithZone:a3];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_action);
    objc_storeWeak(v4 + 6, WeakRetained);
  }

  return v4;
}

- (void)variableProviderDidInvalidateOutputDetails:(id)a3
{
  v16.receiver = self;
  v16.super_class = WFActionOutputVariable;
  v4 = a3;
  [(WFVariable *)&v16 variableProviderDidInvalidateOutputDetails:v4];
  WeakRetained = objc_loadWeakRetained(&self->_action);
  v6 = [(WFActionOutputVariable *)self actionAccessedSinceLastUpdate:v16.receiver];
  v7 = [(WFActionOutputVariable *)self cachedAvailablility];
  v8 = [(WFActionOutputVariable *)self cachedContentClasses];
  [(WFActionOutputVariable *)self setCachedAvailablility:0];
  [(WFActionOutputVariable *)self setCachedContentClasses:0];
  [(WFActionOutputVariable *)self setActionAccessedSinceLastUpdate:0];
  v9 = [(WFActionOutputVariable *)self outputUUID];
  v10 = [v4 actionProvidingVariableWithOutputUUID:v9];

  objc_storeWeak(&self->_action, v10);
  v11 = 0;
  if (v6)
  {
    v12 = objc_loadWeakRetained(&self->_action);
    v11 = v12 != WeakRetained;
  }

  if (v7)
  {
    v13 = [(WFActionOutputVariable *)self isAvailable];
    v11 |= v13 ^ [v7 BOOLValue];
  }

  if (!v8)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = [(WFActionOutputVariable *)self possibleContentClasses];
  v15 = v11 | ~[v14 isEqualToOrderedSet:v8];

  if (v15)
  {
LABEL_7:
    [(WFVariable *)self variableUpdated];
  }

LABEL_8:
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
    [v9 setObject:v10 forKey:@"OutputName"];
  }

  else
  {
    [v9 removeObjectForKey:@"OutputName"];
  }

  [(WFVariable *)self setDictionary:v9];
  [(WFVariable *)self variableUpdated];
  v11.receiver = self;
  v11.super_class = WFActionOutputVariable;
  [(WFVariable *)&v11 variableProvider:v7 variableNameDidChangeTo:v6];
}

- (void)retrieveContentCollectionWithVariableSource:(id)a3 completionHandler:(id)a4
{
  v7 = a4;
  v8 = a3;
  v11 = [(WFActionOutputVariable *)self outputUUID];
  v9 = [v11 stringByAppendingString:@"-output"];
  v10 = [v8 contentForVariableWithName:v9];

  (*(a4 + 2))(v7, v10, 0);
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
    v6 = [(WFActionOutputVariable *)self variableProvider];
    v7 = [(WFActionOutputVariable *)self outputUUID];
    v5 = [v6 possibleContentClassesForVariableWithOutputUUID:v7];

    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
    }

    cachedContentClasses = self->_cachedContentClasses;
    self->_cachedContentClasses = v8;
  }

  return v5;
}

- (BOOL)isRenamed
{
  v2 = [(WFActionOutputVariable *)self action];
  v3 = [v2 outputIsRenamed];

  return v3;
}

- (NSString)name
{
  v3 = [(WFActionOutputVariable *)self action];
  v4 = [v3 outputName];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(WFVariable *)self dictionary];
    v6 = [v7 objectForKey:@"OutputName"];
  }

  return v6;
}

- (id)defaultName
{
  v2 = [(WFActionOutputVariable *)self action];
  v3 = [v2 localizedDefaultOutputName];

  return v3;
}

- (WFAction)action
{
  self->_actionAccessedSinceLastUpdate = 1;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  v4 = [MEMORY[0x1E695DFB0] null];

  if (WeakRetained == v4)
  {
    v5 = 0;
    goto LABEL_5;
  }

  if (WeakRetained)
  {
    v5 = WeakRetained;
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(WFActionOutputVariable *)self variableProvider];
  v8 = [(WFActionOutputVariable *)self outputUUID];
  v5 = [v7 actionProvidingVariableWithOutputUUID:v8];

  if (v5)
  {
    objc_storeWeak(&self->_action, v5);
  }

  else
  {
    v9 = [MEMORY[0x1E695DFB0] null];
    objc_storeWeak(&self->_action, v9);

    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (id)icon
{
  v2 = [(WFActionOutputVariable *)self action];
  v3 = [v2 outputIcon];

  return v3;
}

- (NSString)outputUUID
{
  v2 = [(WFVariable *)self dictionary];
  v3 = [v2 objectForKey:@"OutputUUID"];

  return v3;
}

- (id)calculatedAvailability
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
    v7 = [(WFActionOutputVariable *)self variableProvider];
    v8 = [(WFActionOutputVariable *)self outputUUID];
    v5 = [v6 numberWithBool:{objc_msgSend(v7, "isVariableWithOutputUUIDAvailable:", v8)}];

    if (v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
    }

    cachedAvailablility = self->_cachedAvailablility;
    self->_cachedAvailablility = v9;
  }

  return v5;
}

- (BOOL)isAvailable
{
  v2 = [(WFActionOutputVariable *)self calculatedAvailability];
  v3 = [v2 BOOLValue];

  return v3;
}

- (WFActionOutputVariable)initWithDictionary:(id)a3 variableProvider:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKey:@"OutputUUID"];
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

  if (v11 && (v18.receiver = self, v18.super_class = WFActionOutputVariable, v14 = [(WFVariable *)&v18 initWithDictionary:v6 variableProvider:v7], (self = v14) != 0))
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

- (WFActionOutputVariable)initWithOutputUUID:(id)a3 outputName:(id)a4 variableProvider:(id)a5 aggrandizements:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"outputUUID"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"outputName"}];

    goto LABEL_3;
  }

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = WFVariableDictionaryWithAggrandizements(v14);
  v16 = [v15 mutableCopy];

  [v16 setObject:v11 forKey:@"OutputUUID"];
  [v16 setObject:v12 forKey:@"OutputName"];
  v17 = [(WFActionOutputVariable *)self initWithDictionary:v16 variableProvider:v13];

  return v17;
}

- (WFActionOutputVariable)initWithAction:(id)a3 variableProvider:(id)a4 aggrandizements:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"variableProvider"}];
  }

  v12 = [v9 outputName];
  v13 = [v9 generateUUIDIfNecessaryWithUUIDProvider:0];
  v14 = [(WFActionOutputVariable *)self initWithOutputUUID:v13 outputName:v12 variableProvider:v10 aggrandizements:v11];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_action, v9);
    v16 = v15;
  }

  return v15;
}

@end