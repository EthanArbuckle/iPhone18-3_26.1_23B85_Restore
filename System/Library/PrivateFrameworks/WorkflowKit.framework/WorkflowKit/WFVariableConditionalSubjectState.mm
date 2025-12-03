@interface WFVariableConditionalSubjectState
- (BOOL)isCaseInsensitive;
- (BOOL)isEnumeration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIrrational;
- (Class)contentClassProvidingContentProperty;
- (Class)effectiveContentClass;
- (NSArray)containedVariables;
- (WFContentProperty)effectiveContentProperty;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariable)variable;
- (WFVariableConditionalSubjectState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFVariableConditionalSubjectState)initWithVariable:(id)variable;
- (WFVariableConditionalSubjectState)initWithVariableState:(id)state;
- (id)localizedLabelForEnumerationPossibleState:(id)state;
- (id)supportedComparisonOperators;
- (id)unitType;
- (int64_t)contentType;
- (unint64_t)comparableTimeUnits;
- (unint64_t)displayableTimeUnits;
- (unint64_t)hash;
- (unint64_t)tense;
- (void)getContentWithContext:(id)context completionHandler:(id)handler;
- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)handler;
@end

@implementation WFVariableConditionalSubjectState

- (id)localizedLabelForEnumerationPossibleState:(id)state
{
  stateCopy = state;
  variable = [stateCopy variable];

  if (variable)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [stateCopy value];
      v6 = WFLocalizedContentPropertyPossibleValue(value);
      goto LABEL_11;
    }

LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  effectiveContentClass = [(WFVariableConditionalSubjectState *)self effectiveContentClass];
  if (![(objc_class *)effectiveContentClass isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_2;
  }

  value = [(objc_class *)effectiveContentClass enumMetadata];
  cases = [value cases];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WFVariableConditionalSubjectState_localizedLabelForEnumerationPossibleState___block_invoke;
  v14[3] = &unk_1E837F1B0;
  v15 = stateCopy;
  v11 = [cases if_firstObjectPassingTest:v14];
  displayRepresentation = [v11 displayRepresentation];
  title = [displayRepresentation title];
  v6 = [title localizedStringForLocaleIdentifier:0];

LABEL_11:
LABEL_3:

  return v6;
}

uint64_t __79__WFVariableConditionalSubjectState_localizedLabelForEnumerationPossibleState___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 value];

  v8 = [v3 isEqualToString:v7];
  return v8;
}

- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v6 = effectiveContentProperty;
  if (effectiveContentProperty)
  {
    possibleValues = [effectiveContentProperty possibleValues];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__WFVariableConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E837EC18;
    v13 = handlerCopy;
    [possibleValues getValuesWithCompletionBlock:v12];
  }

  else
  {
    effectiveContentClass = [(WFVariableConditionalSubjectState *)self effectiveContentClass];
    if ([(objc_class *)effectiveContentClass isSubclassOfClass:objc_opt_class()])
    {
      enumMetadata = [(objc_class *)effectiveContentClass enumMetadata];
      cases = [enumMetadata cases];
      v11 = [cases if_map:&__block_literal_global_68722];
      (*(handlerCopy + 2))(handlerCopy, v11);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }
}

void __87__WFVariableConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 if_compactMap:&__block_literal_global_219_68723];
  (*(v2 + 16))(v2, v3);
}

WFStringSubstitutableState *__87__WFVariableConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(WFVariableSubstitutableParameterState *)[WFStringSubstitutableState alloc] initWithValue:v2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [WFStringSubstitutableState alloc];
      v5 = [v2 spokenPhrase];
      v3 = [(WFVariableSubstitutableParameterState *)v4 initWithValue:v5];
    }

    else
    {
      v6 = v2;
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      v9 = [v8 valueType];

      objc_opt_class();
      LOBYTE(v8) = objc_opt_isKindOfClass();

      if (v8)
      {
        v10 = v6;
        if (v6)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        v13 = [WFLinkEnumerationSubstitutableState alloc];
        v14 = [v12 value];

        v3 = [(WFVariableSubstitutableParameterState *)v13 initWithValue:v14];
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3;
}

WFLinkEnumerationSubstitutableState *__87__WFVariableConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WFLinkEnumerationSubstitutableState alloc];
  v4 = [v2 identifier];

  v5 = [(WFVariableSubstitutableParameterState *)v3 initWithValue:v4];

  return v5;
}

- (BOOL)isEnumeration
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v4 = ([effectiveContentProperty hasPossibleValues] & 1) != 0 || -[WFVariableConditionalSubjectState contentType](self, "contentType") == 8;

  return v4;
}

- (unint64_t)comparableTimeUnits
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    comparableUnits = [effectiveContentProperty2 comparableUnits];
  }

  else
  {
    comparableUnits = 8444;
  }

  return comparableUnits;
}

- (unint64_t)displayableTimeUnits
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    timeUnits = [effectiveContentProperty2 timeUnits];
  }

  else
  {
    timeUnits = 8444;
  }

  return timeUnits;
}

- (unint64_t)tense
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    tense = [effectiveContentProperty2 tense];
  }

  else
  {
    tense = 3;
  }

  return tense;
}

- (BOOL)isIrrational
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    isIrrational = [effectiveContentProperty2 isIrrational];
  }

  else
  {
    isIrrational = 0;
  }

  return isIrrational;
}

- (id)unitType
{
  variable = [(WFVariableConditionalSubjectState *)self variable];
  aggrandizements = [variable aggrandizements];
  if ([aggrandizements count])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      action = [variable action];
      outputMeasurementUnitType = [action outputMeasurementUnitType];
LABEL_7:
      measurementUnitType = outputMeasurementUnitType;
      goto LABEL_9;
    }
  }

  aggrandizements2 = [variable aggrandizements];
  action = [aggrandizements2 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    outputMeasurementUnitType = [action unitType];
    goto LABEL_7;
  }

  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  measurementUnitType = [effectiveContentProperty measurementUnitType];

LABEL_9:

  return measurementUnitType;
}

- (BOOL)isCaseInsensitive
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    caseInsensitive = [effectiveContentProperty2 caseInsensitive];
  }

  else
  {
    caseInsensitive = 0;
  }

  return caseInsensitive;
}

- (Class)effectiveContentClass
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];

  if (effectiveContentProperty)
  {
    effectiveContentProperty2 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    propertyClasses = [effectiveContentProperty2 propertyClasses];
    firstObject = [propertyClasses firstObject];
  }

  else
  {
    variable = [(WFVariableConditionalSubjectState *)self variable];
    effectiveContentProperty2 = [variable possibleAggrandizedContentClasses];

    if ([effectiveContentProperty2 count] <= 1)
    {
      firstObject = [effectiveContentProperty2 firstObject];
    }

    else
    {
      firstObject = 0;
    }
  }

  return firstObject;
}

- (id)supportedComparisonOperators
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  allowedOperators = [effectiveContentProperty allowedOperators];

  if ([allowedOperators count])
  {
    supportedComparisonOperators = allowedOperators;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFVariableConditionalSubjectState;
    supportedComparisonOperators = [(WFConditionalSubjectParameterState *)&v8 supportedComparisonOperators];
  }

  v6 = supportedComparisonOperators;

  return v6;
}

- (WFContentProperty)effectiveContentProperty
{
  effectiveContentProperty = self->_effectiveContentProperty;
  if (effectiveContentProperty)
  {
    goto LABEL_4;
  }

  variable = [(WFVariableConditionalSubjectState *)self variable];
  aggrandizements = [variable aggrandizements];
  lastObject = [aggrandizements lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    propertyName = [lastObject propertyName];
    v8 = [(objc_class *)[(WFVariableConditionalSubjectState *)self contentClassProvidingContentProperty] propertyForName:propertyName];
    v9 = self->_effectiveContentProperty;
    self->_effectiveContentProperty = v8;

    effectiveContentProperty = self->_effectiveContentProperty;
LABEL_4:
    selectedProperty = effectiveContentProperty;
    goto LABEL_5;
  }

  aggrandizements2 = [variable aggrandizements];
  if ([aggrandizements2 count])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    selectedProperty = 0;
    goto LABEL_11;
  }

  aggrandizements2 = [variable action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    selectedProperty = 0;
  }

  else
  {
    selectedProperty = [aggrandizements2 selectedProperty];
  }

LABEL_11:
LABEL_5:

  return selectedProperty;
}

- (Class)contentClassProvidingContentProperty
{
  v25 = *MEMORY[0x1E69E9840];
  variable = [(WFVariableConditionalSubjectState *)self variable];
  isAvailable = [variable isAvailable];

  if (!isAvailable)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  variable2 = [(WFVariableConditionalSubjectState *)self variable];
  aggrandizements = [variable2 aggrandizements];

  v7 = [aggrandizements countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {

LABEL_15:
    variable3 = [(WFVariableConditionalSubjectState *)self variable];
    possibleContentClasses = [variable3 possibleContentClasses];

    firstObject = [possibleContentClasses firstObject];
    if (firstObject == objc_opt_class())
    {
      coercionItemClass = objc_opt_class();
    }

    else
    {
      coercionItemClass = firstObject;
    }

    goto LABEL_18;
  }

  v8 = v7;
  possibleContentClasses = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(aggrandizements);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;

        possibleContentClasses = v13;
      }
    }

    v8 = [aggrandizements countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);

  if (!possibleContentClasses)
  {
    goto LABEL_15;
  }

  coercionItemClass = [possibleContentClasses coercionItemClass];
LABEL_18:
  v15 = coercionItemClass;

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (int64_t)contentType
{
  effectiveContentProperty = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (!effectiveContentProperty)
  {
    variable = [(WFVariableConditionalSubjectState *)self variable];
    possibleAggrandizedContentClasses = [variable possibleAggrandizedContentClasses];

    if (([possibleAggrandizedContentClasses containsObject:objc_opt_class()] & 1) == 0)
    {
      if ([possibleAggrandizedContentClasses count] > 1)
      {
        v4 = 0;
        goto LABEL_27;
      }

      firstObject = [possibleAggrandizedContentClasses firstObject];
      if (([firstObject isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        if (firstObject == objc_opt_class() || ([firstObject isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(firstObject, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(firstObject, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(firstObject, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(firstObject, "isSubclassOfClass:", objc_opt_class()) & 1) != 0)
        {
          v4 = 2;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 9;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 3;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 5;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 6;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 7;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 4;
        }

        else if ([firstObject isSubclassOfClass:objc_opt_class()])
        {
          v4 = 8;
        }

        else
        {
          v4 = 0;
        }

        goto LABEL_27;
      }
    }

    v4 = 1;
LABEL_27:

    goto LABEL_28;
  }

  if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([effectiveContentProperty hasPropertyClassOfKind:objc_opt_class()])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v8 = [effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()];

    if ((v8 & 1) == 0)
    {
      if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(effectiveContentProperty, "hasPropertyClassSubclassingClass:", objc_opt_class()))
      {
        v4 = 2;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 3;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 5;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 6;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 7;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 4;
      }

      else if ([effectiveContentProperty hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 4;
      }

      else
      {
        v4 = 0;
      }
    }
  }

LABEL_28:

  return v4;
}

- (void)getContentWithContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  variable = [(WFVariableConditionalSubjectState *)self variable];
  [variable getContentWithContext:contextCopy completionHandler:handlerCopy];
}

- (NSArray)containedVariables
{
  variableState = [(WFVariableConditionalSubjectState *)self variableState];
  containedVariables = [variableState containedVariables];

  return containedVariables;
}

- (unint64_t)hash
{
  variableState = [(WFVariableConditionalSubjectState *)self variableState];
  v3 = [variableState hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      variableState = [(WFVariableConditionalSubjectState *)self variableState];
      variableState2 = [(WFVariableConditionalSubjectState *)equalCopy variableState];
      v7 = [variableState isEqual:variableState2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFVariable)variable
{
  variableState = [(WFVariableConditionalSubjectState *)self variableState];
  variable = [variableState variable];

  return variable;
}

- (WFPropertyListObject)serializedRepresentation
{
  v8.receiver = self;
  v8.super_class = WFVariableConditionalSubjectState;
  serializedRepresentation = [(WFConditionalSubjectParameterState *)&v8 serializedRepresentation];
  v4 = [serializedRepresentation mutableCopy];

  variableState = [(WFVariableConditionalSubjectState *)self variableState];
  serializedRepresentation2 = [variableState serializedRepresentation];
  [v4 setValue:serializedRepresentation2 forKey:@"Variable"];

  return v4;
}

- (WFVariableConditionalSubjectState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  v29 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  parameterCopy = parameter;
  providerCopy = provider;
  v11 = objc_opt_class();
  v12 = representationCopy;
  if (v12 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = getWFGeneralLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v21 = 136315906;
      v22 = "WFEnforceClass";
      v23 = 2114;
      v24 = v12;
      v25 = 2114;
      v26 = objc_opt_class();
      v27 = 2114;
      v28 = v11;
      v15 = v26;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Warning: %{public}@ is of type %{public}@, not %{public}@! Falling back to nil.", &v21, 0x2Au);
    }

    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v16 = [v13 objectForKey:@"Variable"];
  v17 = [[WFVariableParameterState alloc] initWithSerializedRepresentation:v16 variableProvider:providerCopy parameter:parameterCopy];

  if (v17)
  {
    self = [(WFVariableConditionalSubjectState *)self initWithVariableState:v17];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (WFVariableConditionalSubjectState)initWithVariable:(id)variable
{
  variableCopy = variable;
  if (!variableCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableConditionalSubjectState.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v6 = [[WFVariableParameterState alloc] initWithVariable:variableCopy];
  v7 = [(WFVariableConditionalSubjectState *)self initWithVariableState:v6];

  return v7;
}

- (WFVariableConditionalSubjectState)initWithVariableState:(id)state
{
  stateCopy = state;
  if (!stateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableConditionalSubjectState.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"variableState"}];
  }

  v12.receiver = self;
  v12.super_class = WFVariableConditionalSubjectState;
  v7 = [(WFVariableConditionalSubjectState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variableState, state);
    v9 = v8;
  }

  return v8;
}

@end