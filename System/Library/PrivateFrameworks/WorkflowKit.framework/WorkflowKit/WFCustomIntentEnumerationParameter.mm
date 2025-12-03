@interface WFCustomIntentEnumerationParameter
- (NSArray)possibleStates;
- (WFCustomIntentEnumerationParameter)initWithDefinition:(id)definition;
- (id)localizedLabelForPossibleState:(id)state;
@end

@implementation WFCustomIntentEnumerationParameter

- (id)localizedLabelForPossibleState:(id)state
{
  value = [state value];
  if (value)
  {
    v5 = value;
    keysToEnumNames = [(WFCustomIntentEnumerationParameter *)self keysToEnumNames];
    v7 = [keysToEnumNames objectForKeyedSubscript:v5];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }

    v10 = v9;

    enumNamesToLabels = [(WFCustomIntentEnumerationParameter *)self enumNamesToLabels];
    v12 = [enumNamesToLabels objectForKeyedSubscript:v10];
    defaultContext = [MEMORY[0x1E69E0BE0] defaultContext];
    v14 = [v12 localizedStringWithContext:defaultContext pluralizationNumber:0];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)possibleStates
{
  v29 = *MEMORY[0x1E69E9840];
  possibleStates = self->_possibleStates;
  if (!possibleStates)
  {
    v4 = objc_opt_new();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    enumAttribute = [(WFCustomIntentEnumerationParameter *)self enumAttribute];
    codableEnum = [enumAttribute codableEnum];
    values = [codableEnum values];

    v8 = [values countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(values);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          if ([v12 index])
          {
            enumNamesToKeys = [(WFCustomIntentEnumerationParameter *)self enumNamesToKeys];
            name = [v12 name];
            v15 = [enumNamesToKeys objectForKeyedSubscript:name];
            v16 = v15;
            if (v15)
            {
              name2 = v15;
            }

            else
            {
              name2 = [v12 name];
            }

            v18 = name2;

            v19 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v18];
            [v4 addObject:v19];
          }
        }

        v9 = [values countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    v20 = [v4 copy];
    v21 = self->_possibleStates;
    self->_possibleStates = v20;

    possibleStates = self->_possibleStates;
  }

  v22 = *MEMORY[0x1E69E9840];

  return possibleStates;
}

- (WFCustomIntentEnumerationParameter)initWithDefinition:(id)definition
{
  definitionCopy = definition;
  v27.receiver = self;
  v27.super_class = WFCustomIntentEnumerationParameter;
  v5 = [(WFEnumerationParameter *)&v27 initWithDefinition:definitionCopy];
  if (v5)
  {
    v6 = [definitionCopy objectForKey:@"EnumAttribute"];
    v7 = objc_opt_class();
    v8 = WFEnforceClass_1501(v6, v7);
    enumAttribute = v5->_enumAttribute;
    v5->_enumAttribute = v8;

    v10 = [definitionCopy objectForKey:@"IntentEnumOverrides"];
    v11 = objc_opt_class();
    v12 = WFEnforceClass_1501(v10, v11);
    enumNamesToKeys = v5->_enumNamesToKeys;
    v5->_enumNamesToKeys = v12;

    v14 = objc_opt_new();
    v15 = v5->_enumNamesToKeys;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __57__WFCustomIntentEnumerationParameter_initWithDefinition___block_invoke;
    v25[3] = &unk_1E837B748;
    v16 = v14;
    v26 = v16;
    [(NSDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v25];
    keysToEnumNames = v5->_keysToEnumNames;
    v5->_keysToEnumNames = v16;
    v18 = v16;

    v19 = [definitionCopy objectForKey:@"EnumNamesToLabel"];
    v20 = objc_opt_class();
    v21 = WFEnforceClass_1501(v19, v20);
    enumNamesToLabels = v5->_enumNamesToLabels;
    v5->_enumNamesToLabels = v21;

    v23 = v5;
  }

  return v5;
}

@end