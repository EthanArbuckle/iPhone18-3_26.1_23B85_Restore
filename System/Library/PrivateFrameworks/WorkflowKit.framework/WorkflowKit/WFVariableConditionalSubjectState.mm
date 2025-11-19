@interface WFVariableConditionalSubjectState
- (BOOL)isCaseInsensitive;
- (BOOL)isEnumeration;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIrrational;
- (Class)contentClassProvidingContentProperty;
- (Class)effectiveContentClass;
- (NSArray)containedVariables;
- (WFContentProperty)effectiveContentProperty;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariable)variable;
- (WFVariableConditionalSubjectState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFVariableConditionalSubjectState)initWithVariable:(id)a3;
- (WFVariableConditionalSubjectState)initWithVariableState:(id)a3;
- (id)localizedLabelForEnumerationPossibleState:(id)a3;
- (id)supportedComparisonOperators;
- (id)unitType;
- (int64_t)contentType;
- (unint64_t)comparableTimeUnits;
- (unint64_t)displayableTimeUnits;
- (unint64_t)hash;
- (unint64_t)tense;
- (void)getContentWithContext:(id)a3 completionHandler:(id)a4;
- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)a3;
@end

@implementation WFVariableConditionalSubjectState

- (id)localizedLabelForEnumerationPossibleState:(id)a3
{
  v4 = a3;
  v5 = [v4 variable];

  if (v5)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v4 value];
      v6 = WFLocalizedContentPropertyPossibleValue(v9);
      goto LABEL_11;
    }

LABEL_2:
    v6 = 0;
    goto LABEL_3;
  }

  v8 = [(WFVariableConditionalSubjectState *)self effectiveContentClass];
  if (![(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
  {
    goto LABEL_2;
  }

  v9 = [(objc_class *)v8 enumMetadata];
  v10 = [v9 cases];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__WFVariableConditionalSubjectState_localizedLabelForEnumerationPossibleState___block_invoke;
  v14[3] = &unk_1E837F1B0;
  v15 = v4;
  v11 = [v10 if_firstObjectPassingTest:v14];
  v12 = [v11 displayRepresentation];
  v13 = [v12 title];
  v6 = [v13 localizedStringForLocaleIdentifier:0];

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

- (void)getEnumerationPossibleStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 possibleValues];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__WFVariableConditionalSubjectState_getEnumerationPossibleStatesWithCompletionHandler___block_invoke_2;
    v12[3] = &unk_1E837EC18;
    v13 = v4;
    [v7 getValuesWithCompletionBlock:v12];
  }

  else
  {
    v8 = [(WFVariableConditionalSubjectState *)self effectiveContentClass];
    if ([(objc_class *)v8 isSubclassOfClass:objc_opt_class()])
    {
      v9 = [(objc_class *)v8 enumMetadata];
      v10 = [v9 cases];
      v11 = [v10 if_map:&__block_literal_global_68722];
      (*(v4 + 2))(v4, v11);
    }

    else
    {
      (*(v4 + 2))(v4, 0);
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
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v4 = ([v3 hasPossibleValues] & 1) != 0 || -[WFVariableConditionalSubjectState contentType](self, "contentType") == 8;

  return v4;
}

- (unint64_t)comparableTimeUnits
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 comparableUnits];
  }

  else
  {
    v5 = 8444;
  }

  return v5;
}

- (unint64_t)displayableTimeUnits
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 timeUnits];
  }

  else
  {
    v5 = 8444;
  }

  return v5;
}

- (unint64_t)tense
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 tense];
  }

  else
  {
    v5 = 3;
  }

  return v5;
}

- (BOOL)isIrrational
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 isIrrational];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)unitType
{
  v3 = [(WFVariableConditionalSubjectState *)self variable];
  v4 = [v3 aggrandizements];
  if ([v4 count])
  {
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v6 = [v3 action];
      v7 = [v6 outputMeasurementUnitType];
LABEL_7:
      v9 = v7;
      goto LABEL_9;
    }
  }

  v8 = [v3 aggrandizements];
  v6 = [v8 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unitType];
    goto LABEL_7;
  }

  v10 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v9 = [v10 measurementUnitType];

LABEL_9:

  return v9;
}

- (BOOL)isCaseInsensitive
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 caseInsensitive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (Class)effectiveContentClass
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];

  if (v3)
  {
    v4 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
    v5 = [v4 propertyClasses];
    v6 = [v5 firstObject];
  }

  else
  {
    v7 = [(WFVariableConditionalSubjectState *)self variable];
    v4 = [v7 possibleAggrandizedContentClasses];

    if ([v4 count] <= 1)
    {
      v6 = [v4 firstObject];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)supportedComparisonOperators
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  v4 = [v3 allowedOperators];

  if ([v4 count])
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = WFVariableConditionalSubjectState;
    v5 = [(WFConditionalSubjectParameterState *)&v8 supportedComparisonOperators];
  }

  v6 = v5;

  return v6;
}

- (WFContentProperty)effectiveContentProperty
{
  effectiveContentProperty = self->_effectiveContentProperty;
  if (effectiveContentProperty)
  {
    goto LABEL_4;
  }

  v4 = [(WFVariableConditionalSubjectState *)self variable];
  v5 = [v4 aggrandizements];
  v6 = [v5 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 propertyName];
    v8 = [(objc_class *)[(WFVariableConditionalSubjectState *)self contentClassProvidingContentProperty] propertyForName:v7];
    v9 = self->_effectiveContentProperty;
    self->_effectiveContentProperty = v8;

    effectiveContentProperty = self->_effectiveContentProperty;
LABEL_4:
    v10 = effectiveContentProperty;
    goto LABEL_5;
  }

  v12 = [v4 aggrandizements];
  if ([v12 count])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v12 = [v4 action];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v10 = 0;
  }

  else
  {
    v10 = [v12 selectedProperty];
  }

LABEL_11:
LABEL_5:

  return v10;
}

- (Class)contentClassProvidingContentProperty
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(WFVariableConditionalSubjectState *)self variable];
  v4 = [v3 isAvailable];

  if (!v4)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = [(WFVariableConditionalSubjectState *)self variable];
  v6 = [v5 aggrandizements];

  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v7)
  {

LABEL_15:
    v16 = [(WFVariableConditionalSubjectState *)self variable];
    v9 = [v16 possibleContentClasses];

    v17 = [v9 firstObject];
    if (v17 == objc_opt_class())
    {
      v14 = objc_opt_class();
    }

    else
    {
      v14 = v17;
    }

    goto LABEL_18;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v21;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v20 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;

        v9 = v13;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v8);

  if (!v9)
  {
    goto LABEL_15;
  }

  v14 = [v9 coercionItemClass];
LABEL_18:
  v15 = v14;

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];

  return v15;
}

- (int64_t)contentType
{
  v3 = [(WFVariableConditionalSubjectState *)self effectiveContentProperty];
  if (!v3)
  {
    v5 = [(WFVariableConditionalSubjectState *)self variable];
    v6 = [v5 possibleAggrandizedContentClasses];

    if (([v6 containsObject:objc_opt_class()] & 1) == 0)
    {
      if ([v6 count] > 1)
      {
        v4 = 0;
        goto LABEL_27;
      }

      v9 = [v6 firstObject];
      if (([v9 isSubclassOfClass:objc_opt_class()] & 1) == 0)
      {
        if (v9 == objc_opt_class() || ([v9 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v9, "isSubclassOfClass:", objc_opt_class()) & 1) != 0)
        {
          v4 = 2;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 9;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 3;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 5;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 6;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 7;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
        {
          v4 = 4;
        }

        else if ([v9 isSubclassOfClass:objc_opt_class()])
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

  if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
  {
    v4 = 8;
  }

  else if ([v3 hasPropertyClassOfKind:objc_opt_class()])
  {
    v4 = 9;
  }

  else
  {
    v4 = 1;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:1];
    v8 = [v3 hasPropertyClassSubclassingClass:objc_opt_class()];

    if ((v8 & 1) == 0)
    {
      if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()) & 1) != 0 || (objc_msgSend(v3, "hasPropertyClassSubclassingClass:", objc_opt_class()))
      {
        v4 = 2;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 3;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 5;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 6;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 7;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
      {
        v4 = 4;
      }

      else if ([v3 hasPropertyClassSubclassingClass:objc_opt_class()])
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

- (void)getContentWithContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFVariableConditionalSubjectState *)self variable];
  [v8 getContentWithContext:v7 completionHandler:v6];
}

- (NSArray)containedVariables
{
  v2 = [(WFVariableConditionalSubjectState *)self variableState];
  v3 = [v2 containedVariables];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WFVariableConditionalSubjectState *)self variableState];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableConditionalSubjectState *)self variableState];
      v6 = [(WFVariableConditionalSubjectState *)v4 variableState];
      v7 = [v5 isEqual:v6];
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
  v2 = [(WFVariableConditionalSubjectState *)self variableState];
  v3 = [v2 variable];

  return v3;
}

- (WFPropertyListObject)serializedRepresentation
{
  v8.receiver = self;
  v8.super_class = WFVariableConditionalSubjectState;
  v3 = [(WFConditionalSubjectParameterState *)&v8 serializedRepresentation];
  v4 = [v3 mutableCopy];

  v5 = [(WFVariableConditionalSubjectState *)self variableState];
  v6 = [v5 serializedRepresentation];
  [v4 setValue:v6 forKey:@"Variable"];

  return v4;
}

- (WFVariableConditionalSubjectState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_class();
  v12 = v8;
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
  v17 = [[WFVariableParameterState alloc] initWithSerializedRepresentation:v16 variableProvider:v10 parameter:v9];

  if (v17)
  {
    self = [(WFVariableConditionalSubjectState *)self initWithVariableState:v17];
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (WFVariableConditionalSubjectState)initWithVariable:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFVariableConditionalSubjectState.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v6 = [[WFVariableParameterState alloc] initWithVariable:v5];
  v7 = [(WFVariableConditionalSubjectState *)self initWithVariableState:v6];

  return v7;
}

- (WFVariableConditionalSubjectState)initWithVariableState:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFVariableConditionalSubjectState.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"variableState"}];
  }

  v12.receiver = self;
  v12.super_class = WFVariableConditionalSubjectState;
  v7 = [(WFVariableConditionalSubjectState *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_variableState, a3);
    v9 = v8;
  }

  return v8;
}

@end