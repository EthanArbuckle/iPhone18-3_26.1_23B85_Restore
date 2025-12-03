@interface WFActionOutputVariable
- (BOOL)isAvailable;
- (BOOL)isRenamed;
- (NSString)name;
- (NSString)outputUUID;
- (WFAction)action;
- (WFActionOutputVariable)initWithAction:(id)action variableProvider:(id)provider aggrandizements:(id)aggrandizements;
- (WFActionOutputVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider;
- (WFActionOutputVariable)initWithOutputUUID:(id)d outputName:(id)name variableProvider:(id)provider aggrandizements:(id)aggrandizements;
- (id)calculatedAvailability;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultName;
- (id)icon;
- (id)possibleContentClasses;
- (id)variableBySettingAggrandizements:(id)aggrandizements;
- (id)variableProvider;
- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler;
- (void)variableProvider:(id)provider variableNameDidChangeTo:(id)to;
- (void)variableProviderDidInvalidateOutputDetails:(id)details;
@end

@implementation WFActionOutputVariable

- (id)variableProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_variableProvider);

  return WeakRetained;
}

- (id)variableBySettingAggrandizements:(id)aggrandizements
{
  v7.receiver = self;
  v7.super_class = WFActionOutputVariable;
  v4 = [(WFVariable *)&v7 variableBySettingAggrandizements:aggrandizements];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = WFActionOutputVariable;
  v4 = [(WFVariable *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_action);
    objc_storeWeak(v4 + 6, WeakRetained);
  }

  return v4;
}

- (void)variableProviderDidInvalidateOutputDetails:(id)details
{
  v16.receiver = self;
  v16.super_class = WFActionOutputVariable;
  detailsCopy = details;
  [(WFVariable *)&v16 variableProviderDidInvalidateOutputDetails:detailsCopy];
  WeakRetained = objc_loadWeakRetained(&self->_action);
  v6 = [(WFActionOutputVariable *)self actionAccessedSinceLastUpdate:v16.receiver];
  cachedAvailablility = [(WFActionOutputVariable *)self cachedAvailablility];
  cachedContentClasses = [(WFActionOutputVariable *)self cachedContentClasses];
  [(WFActionOutputVariable *)self setCachedAvailablility:0];
  [(WFActionOutputVariable *)self setCachedContentClasses:0];
  [(WFActionOutputVariable *)self setActionAccessedSinceLastUpdate:0];
  outputUUID = [(WFActionOutputVariable *)self outputUUID];
  v10 = [detailsCopy actionProvidingVariableWithOutputUUID:outputUUID];

  objc_storeWeak(&self->_action, v10);
  v11 = 0;
  if (v6)
  {
    v12 = objc_loadWeakRetained(&self->_action);
    v11 = v12 != WeakRetained;
  }

  if (cachedAvailablility)
  {
    isAvailable = [(WFActionOutputVariable *)self isAvailable];
    v11 |= isAvailable ^ [cachedAvailablility BOOLValue];
  }

  if (!cachedContentClasses)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  possibleContentClasses = [(WFActionOutputVariable *)self possibleContentClasses];
  v15 = v11 | ~[possibleContentClasses isEqualToOrderedSet:cachedContentClasses];

  if (v15)
  {
LABEL_7:
    [(WFVariable *)self variableUpdated];
  }

LABEL_8:
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
  [(WFVariable *)&v11 variableProvider:providerCopy variableNameDidChangeTo:toCopy];
}

- (void)retrieveContentCollectionWithVariableSource:(id)source completionHandler:(id)handler
{
  handlerCopy = handler;
  sourceCopy = source;
  outputUUID = [(WFActionOutputVariable *)self outputUUID];
  v9 = [outputUUID stringByAppendingString:@"-output"];
  v10 = [sourceCopy contentForVariableWithName:v9];

  (*(handler + 2))(handlerCopy, v10, 0);
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
    variableProvider = [(WFActionOutputVariable *)self variableProvider];
    outputUUID = [(WFActionOutputVariable *)self outputUUID];
    v5 = [variableProvider possibleContentClassesForVariableWithOutputUUID:outputUUID];

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

- (BOOL)isRenamed
{
  action = [(WFActionOutputVariable *)self action];
  outputIsRenamed = [action outputIsRenamed];

  return outputIsRenamed;
}

- (NSString)name
{
  action = [(WFActionOutputVariable *)self action];
  outputName = [action outputName];
  v5 = outputName;
  if (outputName)
  {
    v6 = outputName;
  }

  else
  {
    dictionary = [(WFVariable *)self dictionary];
    v6 = [dictionary objectForKey:@"OutputName"];
  }

  return v6;
}

- (id)defaultName
{
  action = [(WFActionOutputVariable *)self action];
  localizedDefaultOutputName = [action localizedDefaultOutputName];

  return localizedDefaultOutputName;
}

- (WFAction)action
{
  self->_actionAccessedSinceLastUpdate = 1;
  WeakRetained = objc_loadWeakRetained(&self->_action);
  null = [MEMORY[0x1E695DFB0] null];

  if (WeakRetained == null)
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

  variableProvider = [(WFActionOutputVariable *)self variableProvider];
  outputUUID = [(WFActionOutputVariable *)self outputUUID];
  v5 = [variableProvider actionProvidingVariableWithOutputUUID:outputUUID];

  if (v5)
  {
    objc_storeWeak(&self->_action, v5);
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    objc_storeWeak(&self->_action, null2);

    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (id)icon
{
  action = [(WFActionOutputVariable *)self action];
  outputIcon = [action outputIcon];

  return outputIcon;
}

- (NSString)outputUUID
{
  dictionary = [(WFVariable *)self dictionary];
  v3 = [dictionary objectForKey:@"OutputUUID"];

  return v3;
}

- (id)calculatedAvailability
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
    variableProvider = [(WFActionOutputVariable *)self variableProvider];
    outputUUID = [(WFActionOutputVariable *)self outputUUID];
    v5 = [v6 numberWithBool:{objc_msgSend(variableProvider, "isVariableWithOutputUUIDAvailable:", outputUUID)}];

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
  calculatedAvailability = [(WFActionOutputVariable *)self calculatedAvailability];
  bOOLValue = [calculatedAvailability BOOLValue];

  return bOOLValue;
}

- (WFActionOutputVariable)initWithDictionary:(id)dictionary variableProvider:(id)provider
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v8 = [dictionaryCopy objectForKey:@"OutputUUID"];
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

  if (v11 && (v18.receiver = self, v18.super_class = WFActionOutputVariable, v14 = [(WFVariable *)&v18 initWithDictionary:dictionaryCopy variableProvider:providerCopy], (self = v14) != 0))
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

- (WFActionOutputVariable)initWithOutputUUID:(id)d outputName:(id)name variableProvider:(id)provider aggrandizements:(id)aggrandizements
{
  dCopy = d;
  nameCopy = name;
  providerCopy = provider;
  aggrandizementsCopy = aggrandizements;
  if (!dCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"outputUUID"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"outputName"}];

    goto LABEL_3;
  }

  if (!nameCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v15 = WFVariableDictionaryWithAggrandizements(aggrandizementsCopy);
  v16 = [v15 mutableCopy];

  [v16 setObject:dCopy forKey:@"OutputUUID"];
  [v16 setObject:nameCopy forKey:@"OutputName"];
  v17 = [(WFActionOutputVariable *)self initWithDictionary:v16 variableProvider:providerCopy];

  return v17;
}

- (WFActionOutputVariable)initWithAction:(id)action variableProvider:(id)provider aggrandizements:(id)aggrandizements
{
  actionCopy = action;
  providerCopy = provider;
  aggrandizementsCopy = aggrandizements;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFActionOutputVariable.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"variableProvider"}];
  }

  outputName = [actionCopy outputName];
  v13 = [actionCopy generateUUIDIfNecessaryWithUUIDProvider:0];
  v14 = [(WFActionOutputVariable *)self initWithOutputUUID:v13 outputName:outputName variableProvider:providerCopy aggrandizements:aggrandizementsCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_action, actionCopy);
    v16 = v15;
  }

  return v15;
}

@end